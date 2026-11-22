{------------------------------------------------------------- 1 15-puzzle-game}
// Игра в 15 PABCWork.NET\Samples\Games\15.pas
uses GraphABC,ABCObjects,ABCButtons;

const
/// размер поля
  n = 4;
/// размер фишки
  sz = 100;
/// зазор между фишками
  zz = 10;
/// отступ от левого и правого краев
  x0 = 20;
/// отступ от верхнего и нижнего краев
  y0 = 20;

var
  p: array [1..n,1..n] of SquareABC;
  digits: array [1..n*n-1] of integer;

  MeshButton: ButtonABC;
  StatusRect: RectangleABC;

  EmptyCellX,EmptyCellY: integer;
  MovesCount: integer;
  EndOfGame: boolean;  // True если все фишки стоят на своих местах

// Поменять местами две фишки
procedure Swap(var p,p1: SquareABC);
begin
  PABCSystem.Swap(p,p1);
  var i := p.Left;
  p.Left := p1.Left;
  p1.Left := i;
  i := p.Top;
  p.Top := p1.Top;
  p1.Top := i;
end;

// Определить, являются ли клетки соседями
function Neighbours(x1,y1,x2,y2: integer): boolean;
begin
  Result := (Abs(x1-x2)=1) and (y1=y2) or (Abs(y1-y2)=1) and (x1=x2)
end;

// Заполнить вспомогательный массив цифр
procedure FillDigitsArr;
begin
  for var i:=1 to n*n-1 do
    digits[i] := i;
end;

// Перемешать вспомогательный массив цифр. Количество обменов должно быть четным
procedure MixDigitsArr;
var x: integer;
begin
  for var i:=1 to n*n-1 do
  begin
    repeat
      x := Random(15)+1;
    until x<>i;
    Swap(digits[i],digits[x]);
  end;
  if n mod 2=0 then
    Swap(digits[1],digits[2]); // количество обменов должно быть четным
end;

// Заполнить двумерный массив фишек. Вместо пустой ячейки - белая фишка с числом 0
procedure Fill15ByDigitsArr;
begin
  Swap(p[EmptyCellY,EmptyCellX],p[n,n]); // Переместить пустую фишку в правый нижний угол
  EmptyCellX := n;
  EmptyCellY := n;
  var i := 1;
  for var y:=1 to n do
  for var x:=1 to n do
  begin
    if x*y=n*n then exit;
    p[y,x].Number := digits[i];
    i += 1;
  end;
end;

// Перемешать массив фишек
procedure Mix15;
begin
  MixDigitsArr;
  Fill15ByDigitsArr;
  MovesCount := 0;
  EndOfGame := False;
  StatusRect.Text := 'Количество ходов: '+IntToStr(MovesCount);
  StatusRect.Color := RGB(200,200,255);
end;

// Создать массив фишек
procedure Create15;
begin
  EmptyCellX := n;
  EmptyCellY := n;
  for var x:=1 to n do
  for var y:=1 to n do
  begin
    p[y,x] := new SquareABC(x0+(x-1)*(sz+zz),y0+(y-1)*(sz+zz),sz,clMoneyGreen);
    p[y,x].BorderColor := clGreen;
    p[y,x].BorderWidth := 2;
    p[y,x].TextScale := 0.7;
  end;
  p[EmptyCellY,EmptyCellX].Color := clWhite;
  p[EmptyCellY,EmptyCellX].BorderColor := clWhite;
  FillDigitsArr;
  MixDigitsArr;
  Fill15ByDigitsArr;
end;

// Проверить, все ли фишки стоят на своих местах
function IsSolution: boolean;
begin
  Result:=True;
  var i:=1;
  for var y:=1 to n do
  for var x:=1 to n do
  begin
    if p[y,x].Number<>i then
    begin
      Result:=False;
      break;
    end;
    i += 1;
    if i=n*n then i:=0;
  end;
end;

procedure MouseDown(x,y,mb: integer);
begin
  if EndOfGame then // Если все фишки на своих местах, то не реагировать на мышь и ждать нажатия кнопки "Перемешать"
    exit;
  if ObjectUnderPoint(x,y)=nil then // Eсли мы щелкнули не на объекте, то не реагировать на мышь
    exit;
  var fx := (x-x0) div (sz+zz) + 1; // Вычислить координаты на доске для ячейки, на которой мы щелкнули мышью
  var fy := (y-y0) div (sz+zz) + 1;
  if (fx>n) or (fy>n) then
    exit;
  if Neighbours(fx,fy,EmptyCellX,EmptyCellY) then // Если ячейка соседствует с пустой, то поменять их местами
  begin
    Swap(p[EmptyCellY,EmptyCellX],p[fy,fx]);
    EmptyCellX := fx;
    EmptyCellY := fy;
    Inc(MovesCount);
    StatusRect.Text := 'Количество ходов: ' + MovesCount;
    if IsSolution then
    begin
      StatusRect.Text := 'Победа! Сделано ходов: ' + MovesCount;
      StatusRect.Color := RGB(255,200,200);
      EndOfGame := True;
    end
  end;
end;

begin
  SetSmoothingOff;
  Window.Title := 'Игра в 15';
  Window.IsFixedSize := True;
  SetWindowSize(2*x0+(sz+zz)*n-zz,2*y0+(sz+zz)*n-zz+90);

  EndOfGame := False;
  Create15;

  MeshButton := ButtonABC.Create((WindowWidth-200) div 2,2*y0+(sz+zz)*n-zz,200,'Перемешать',clLightGray);
  MeshButton.OnClick := Mix15;
  StatusRect := new RectangleABC(0,WindowHeight-40,WindowWidth,40,RGB(200,200,255));
  StatusRect.TextVisible := True;
  StatusRect.Text := 'Количество ходов: '+IntToStr(MovesCount);
  StatusRect.BorderWidth := 2;
  StatusRect.BorderColor := RGB(80,80,255);

  MovesCount := 0;

  OnMouseDown := MouseDown;
end.


{----------------------------------------------------------- 2 15-puzzle-solver}
// Игра в 15 PABCWork.NET\Samples\Games\15.pas
see
https://rosettacode.org/wiki/15_puzzle_game#PascalABC.NET
{------------------------------------------------------- 3 99-bottles-of-beer-1}
begin
  for var i:=99 to 1 step -1 do
  begin
    Println(i,'bottles of beer on the wall');
    Println(i,'bottles of beer');
    Println('Take one down, pass it around');
    Println(i-1,'bottles of beer on the wall');
    Println
  end;
end.
{------------------------------------------------------- 4 99-bottles-of-beer-2}
begin
  for var i:=99 to 1 step -1 do
  begin
    writeLn($'{i} bottles of beer on the wall');
    writeLn($'{i} bottles of beer');
    writeLn($'Take one down, pass it around');
    writeLn($'{i-1}bottles of beer on the wall');
    writeLn
  end;
end.
{------------------------------------------------------------------------ 5 a_b}
##
var (a,b) := ReadInteger2;
Writeln(a + b);
{--------------------------------------------------------- 6 abbreviations-easy}
begin
  var commands :=
    '''
    Add ALTer BAckup Bottom CAppend Change SCHANGE CInsert CLAst COMPress COpy
    COUnt COVerlay CURsor DELete CDelete Down DUPlicate Xedit EXPand EXTract Find
    NFind NFINDUp NFUp CFind FINdup FUp FOrward GET Help HEXType Input POWerinput
    Join SPlit SPLTJOIN LOAD Locate CLocate LOWercase UPPercase LPrefix MACRO
    MErge MODify MOve MSG Next Overlay PARSE PREServe PURge PUT PUTD Query QUIT
    READ RECover REFRESH RENum REPeat Replace CReplace RESet RESTore RGTLEFT
    RIght LEft SAVE SET SHift SI SORT SOS STAck STATus TOP TRAnsfer Type Up
    '''.ToWords(AllDelimiters);

  var countDict := commands.Each(word -> word.TakeWhile(c -> c.IsUpper).Count);

  var correctedLine := 'riG   rePEAT copies  put mo   rest    types   fup.    6       poweRin'
    .ToWords
    .Select(word ->
      commands.FirstOrDefault(
        cmd -> cmd.ToLower.StartsWith(word.ToLower) and
               (word.Length >= countDict[cmd])
      )?.ToUpper ?? '*error*'
    )
    .JoinToString;

  Print(correctedLine);
end.
{------------------------------------------------------- 7 abbreviations-simple}
{$zerobasedstrings on}

begin
  var commandData :=
    '''
    add 1 alter 3 backup 2 bottom 1 Cappend 2 change 1 Schange Cinsert 2 Clast 3
    compress 4 copy 2 count 3 Coverlay 3 cursor 3 delete 3 Cdelete 2 down 1 duplicate
    3 xEdit 1 expand 3 extract 3 find 1 Nfind 2 Nfindup 6 NfUP 3 Cfind 2 findUP 3 fUP 2
    forward 2 get help 1 hexType 4 input 1 powerInput 3 join 1 split 2 spltJOIN load
    locate 1 Clocate 2 lowerCase 3 upperCase 3 Lprefix 2 macro merge 2 modify 3 move 2
    msg next 1 overlay 1 parse preserve 4 purge 3 put putD query 1 quit read recover 3
    refresh renum 3 repeat 3 replace 1 Creplace 2 reset 3 restore 4 rgtLEFT right 2 left
    2 save set shift 2 si sort sos stack 3 status 4 top transfer 3 type 1 up 1
    '''.ToWords(AllDelimiters);

  var abbrDict := Dict('' to '');

  var i := 0;
  while i < commandData.Length do
  begin
    var cmd := commandData[i];
    i += 1;

    // Если следующего элемента нет или он не число, используем длину команды
    var minLen := cmd.Length;
    if (i < commandData.Length) and commandData[i].All(char.IsDigit) then
    begin
      minLen := commandData[i].ToInteger;
      i += 1;
    end;

    var cmdLower := cmd.ToLower;
    for var len := minLen to cmd.Length do
    begin
      var abbr := cmdLower[:len];
      abbrDict[abbr] := cmd.ToUpper;
    end;
  end;

  var testStr := 'riG   rePEAT copies  put mo   rest    types   fup.    6       poweRin';
  Writeln(' Input: ', testStr);
  Writeln('Output: ', testStr.ToWords()
    .Select(w -> abbrDict.Get(w.Trim.ToLower,'*error*'))
    .JoinToString);

  testStr := '';
  Writeln(' Input: ', testStr);
  Writeln('Output: ', testStr.ToWords()
    .Select(w -> abbrDict.Get(w.Trim.ToLower,'*error*'))
    .JoinToString);
end.
{------------------------------------------------------------ 8 abc-correlation}
// ABC correlation. Nigel Galloway: September 3rd., 2024
function predicate(g:Sequence of (integer,integer);m:integer):boolean;
begin
  result:=false; if g.First[0]<m then exit;
  foreach n:(integer,integer) in g do if n[1]<>n[0] then exit; result:=true;
end;
begin
  foreach s:string in System.IO.File.ReadLines('words_alpha.txt') do if predicate(countChars('abc',s).Values.Pairwise,2) then println(s);
end.

{----------------------------------------------------- 9 abc-incremental-counts}
// ABC incremental counts. Nigel Galloway: August 29th., 2024
function predicate(g:Sequence of (integer,integer);m:integer):boolean;
begin
  result:=false; if g.First[0]<m then exit;
  foreach n:(integer,integer) in g do if n[1]<>n[0]+1 then exit; result:=true;
end;
var
  abc:string->Sequence of (integer,integer):=n->countChars('abc',n).Values.Sorted.Pairwise;
  the:string->Sequence of (integer,integer):=n->countChars('the',n).Values.Sorted.Pairwise;
  cio:string->Sequence of (integer,integer):=n->countChars('cio',n).Values.Sorted.Pairwise;
begin
  println('Results from unixdict.txt:');
  foreach s:string in System.IO.File.ReadLines('unixdict.txt') do
     if predicate(abc(s),1) or predicate(the(s),1) or predicate(cio(s),2) then println(s);
  println; println('Results from words_alpha.txt:');
  foreach s:string in System.IO.File.ReadLines('words_alpha.txt') do
     if predicate(abc(s),2) or predicate(the(s),2) or predicate(cio(s),3) then println(s);
end.
{----------------------------------------------------------------- 10 abc-words}
// ABC words. Nigel Galloway: August 29th., 2024
##
var izABC:string->boolean:=n->System.Text.RegularExpressions.Regex.Match(n,'^[^bc]*a[^c]*b.*c').Value.Length>0;
foreach s:string in System.IO.File.ReadLines('unixdict.txt') do if izABC(s) then println(s);
{----------------------------------------------------------- 11 abstract-type-1}
type
  MyAbstract = abstract class
    public
      procedure Proc1; abstract;
      procedure Proc2;
      begin
      end;
  end;
  MyClass = class(MyAbstract)
    public
      procedure Proc1; override;
      begin
      end;
  end;


begin
  var a := new MyClass;
  a.Proc1;
end.
{----------------------------------------------------------- 12 abstract-type-2}
type
  IMyInterface = interface
    procedure Proc1;
    procedure Proc2;
  end;
  MyClass = class(IMyInterface)
    public
      procedure Proc1;
      begin
        Print(1);
      end;
      procedure Proc2;
      begin
        Print(2);
      end;
  end;

begin
  var a: IMyInterface := new MyClass;
  a.Proc1;
  a.Proc2;
end.
{------------------------------------------------------- 13 accumulator-factory}
function foo(n: real): real -> real :=
  i -> begin
    n += i;
    Result := n;
  end;

begin
  var x := foo(1);
  x(5);
  foo(3);
  print(x(2.3));
end.
{-------------------------------------------------------- 14 ackermann-function}
function Ackermann(m,n: integer): integer;
begin
  if (m < 0) or (n < 0) then
    raise new System.ArgumentOutOfRangeException();
  if m = 0 then
    Result := n + 1
  else if n = 0 then
    Result := Ackermann(m - 1, 1)
  else Result := Ackermann(m - 1, Ackermann(m, n - 1))
end;

begin
  for var m := 0 to 3 do
  for var n := 0 to 4 do
    Println($'Ackermann({m}, {n}) = {Ackermann(m,n)}');
end.
{----------------------------- 15 add-a-variable-to-a-class-instance-at-runtime}
type
  MyClass = class
    private
      dict := new Dictionary<string,object>;
    public
      procedure Add(name: string; value: object) := dict[name] := value;
      property Items[name: string]: object read dict[name]; default;
  end;

begin
  var obj := new MyClass;
  obj.Add('Name','PascalABC.NET');
  obj.Add('Age',16);
  Println(obj['Name'],obj['Age']);
  var obj1 := new MyClass;
  obj1.Add('X',2.3);
  obj1.Add('Y',3.8);
  Println(obj1['X'],obj1['Y']);
end.
{----------------------------------------------------------- 16 additive-primes}
## uses School;//поиск аддитивных простых чисел
var AdditivePrimes := Primes(500).Where(n -> n.Digits.Sum.IsPrime).ToArray;
Print('Additive Primes:'); AdditivePrimes.Println;
Println('Additive Primes Count:', AdditivePrimes.Count);
{----------------------------------------------------- 17 address-of-a-variable}
begin
  var i: integer := 3;
  var p: ^integer := @i;
  p^ += 2;
  Print(p^,i);
end.
{------------------------------------------------------------ 18 amicable-pairs}
function k(n : Integer) := 1.to(n div 2).where(d->n mod d=0).sum;
begin
1.to(20000).Where(n->n=k(k(n)))
.Select(n->
  begin var m:=k(n);
Result:=(min(n,m),max(n,m));
  end).where(v->v[0]<v[1]).Distinct
.Select(v->$'{v[0]}-{v[1]}').Printlines;
end.
{----------------------------------------------------------------- 19 anadromes}
// Anadromes. Nigel Galloway: August 30th., 2022
begin
  var n := ReadLines('words.txt').Where(n -> Length(n) > 6);
  foreach var v in n.Intersect(n.Select(n -> ReverseString(n))) do if v < ReverseString(v) then writeln(v);
end.
{------------------------------------------------------------------ 20 anagrams}
begin
  var s := System.Net.WebClient.Create.DownloadString('http://wiki.puzzlers.org/pub/wordlists/unixdict.txt');
  var words := s.Split;
  var groups := words.GroupBy(word -> word.Order.JoinToString);
  var maxCount := groups.Max(gr -> gr.Count);
  groups.Where(gr -> gr.Count = maxCount).PrintLines;
end.
{------------------------------------- 21 angle-difference-between-two-bearings}
function delta(b1, b2: real): real;
begin
  result := (b2 - b1) - Trunc((b2 - b1) / 360.0) * 360.0;
  if result < -180.0 then result += 360.0
  else if result >= 180.0 then result -= 360.0
end;

begin
  var testVectors :=
  |(20.00, 45.00), (-45.00, 45.00), (-85.00, 90.00),
  (-95.00, 90.00), (-45.00, 125.00), (-45.00, 145.00),
  (29.48, -88.64), (-78.33, -159.04), (-70099.74, 29840.67),
  (-165313.67, 33693.99), (1174.84, -154146.66), (60175.77, 42213.07)|;
  foreach var vector in testVectors do
    writeln(vector[0]:10:2, vector[1]:12:2, delta(vector[0], vector[1]):10:2);
end.
{----------------------------- 22 angles-geometric-normalization-and-conversion}
function fmod(x, y: real): real := x - trunc(x / y) * y;

function d2d(x: real): real := fmod(x, 360);
function g2g(x: real): real := fmod(x, 400);
function m2m(x: real): real := fmod(x, 6400);
function r2r(x: real): real := fmod(x, 2 * Pi);
function d2g(x: real): real := d2d(x) * 10 / 9;
function d2m(x: real): real := d2d(x) * 160 / 9;
function d2r(x: real): real := d2d(x) * Pi / 180;
function g2d(x: real): real := g2g(x) * 9 / 10;
function g2m(x: real): real := g2g(x) * 16;
function g2r(x: real): real := g2g(x) * Pi / 200;
function m2d(x: real): real := m2m(x) * 9 / 160;
function m2g(x: real): real := m2m(x) / 16;
function m2r(x: real): real := m2m(x) * Pi / 3200;
function r2d(x: real): real := r2r(x) * 180 / Pi;
function r2g(x: real): real := r2r(x) * 200 / Pi;
function r2m(x: real): real := r2r(x) * 3200 / Pi;

begin
  var Values: array of real := (-2, -1, 0, 1, 2, 6.2831853, 16, 57.2957795, 359, 399, 6399, 1000000);
  writeln('       Degrees      Normalized       Gradians        Mils          Radians');
  writeln('———————————————————————————————————————————————————————————————————————————');
  foreach var val in Values do
    writeln(val:15:7, d2d(val):15:7, d2g(val):15:7, d2m(val):15:7, d2r(val):15:7);
  writeln;
  writeln( '      Gradians      Normalized       Degrees         Mils          Radians');
  writeln( '———————————————————————————————————————————————————————————————————————————');
  foreach var val in Values do
    writeln( val:15:7, g2g(val):15:7,  g2d(val):15:7,  g2m(val):15:7,  g2r(val):15:7);
  writeln;
  writeln( '        Mils        Normalized       Degrees       Gradians        Radians');
  writeln( '———————————————————————————————————————————————————————————————————————————');
  foreach var val in Values do
    writeln( val:15:7,  m2m(val):15:7,  m2d(val):15:7,  m2g(val):15:7, m2r(val):15:7);
  writeln;
  writeln( '       Radians      Normalized       Degrees       Gradians        Mils');
  writeln( '———————————————————————————————————————————————————————————————————————————');
  foreach var val in Values do
    writeln( val:15:7,  r2r(val):15:7,  r2d(val):15:7,  r2g(val):15:7,  r2m(val):15:7);
end.
{----------------------------------------------------- 23 anonymous-recursion-1}
function Fib(n: integer): integer;
begin
  if n <= 0 then
    raise new System.ArgumentOutOfRangeException('Must be > 0','n');
  var fibHelper: (integer,integer,integer) -> integer;
  fibHelper := (n,a,b) -> n = 1 ? a : fibHelper(n-1, b, a + b);
  Result := fibHelper(n,1,1);
end;

begin
  for var i:=1 to 10 do
    Fib(i).Print;
end.
{----------------------------------------------------- 24 anonymous-recursion-2}
function Fib(n: integer): integer;
  function fibHelper(n,a,b: integer): integer :=
    n = 1 ? a : fibHelper(n-1, b, a + b);
begin
  if n <= 0 then
    raise new System.ArgumentOutOfRangeException('Must be > 0','n');
  Result := fibHelper(n,1,1);
end;

begin
  for var i:=1 to 10 do
    Fib(i).Print;
end.
{--------------------------------------------------------------- 25 anti-primes}
function countdiv(n: integer): integer;
begin
  result := Range(1, n.Sqrt.Trunc).Count(x -> n mod x = 0) * 2;
  if n.Sqrt.Round.sqr = n then result -= 1;
end;

function AntiPrimes(): sequence of integer;
begin
  var maxDiv := 0;
  var i := 1;
  while True do
  begin
    var d := countdiv(i);
    if d > maxDiv then
    begin
      yield i;
      maxDiv := d;
    end;
    i += 1;
  end;
end;

begin
  AntiPrimes.Take(20).Println;
  println;
  AntiPrimes.Take(40).Println;
end.
{---------------------------------------------- 26 apply-a-callback-to-an-array}
begin
  var a := Arr(1..10);
  a := a.Select(x -> x * x).ToArray;
  a.ForEach(x -> Print(x));
end.
{------------------------------------------------------ 27 approximate-equality}
function ApproxEqual(x,y,eps: real): boolean := Abs(x - y) < eps;

begin
  var eps := 1e-18;
  ApproxEqual(100000000000000.01, 100000000000000.011,eps).Println;
  ApproxEqual(100.01, 100.011,eps).Println;
  ApproxEqual(10000000000000.001 / 10000.0, 1000000000.0000001000,eps).Println;
  ApproxEqual(0.001, 0.0010000001,eps).Println;
  ApproxEqual(0.000000000000000000000101, 0.0,eps).Println;
  ApproxEqual(Sqrt(2) * Sqrt(2), 2.0,eps).Println;
  ApproxEqual(-Sqrt(2) * Sqrt(2), -2.0,eps).Println;
  ApproxEqual(3.14159265358979323846, 3.14159265358979324,eps).Println  ;
end.
{------------------------------------ 28 arbitrary-precision-integers-included-}
begin
  var result: string := power(5bi, integer(power(4, power(3, 2)))).tostring;
  result[1:21].Println;
  result[result.Length - 19:].Println;
  result.Length.Println;
end.
{-------------------------------------------------------- 29 archimedean-spiral}
uses PlotWPF,GraphWPF;

begin
  Window.SetSize(600,600);
  var seq := Range(0,20,0.1);
  var xx := seq.Select(t -> t * Cos(t));
  var yy := seq.Select(t -> t * Sin(t));
  LineGraphWPF.Create(xx,yy,Colors.Black);
end.
{-------------------------------------------------------- 30 arithmetic-complex}
begin
  var a := Cplx(1,2);
  var b := Cplx(3,4);
  Println(a + b);
  Println(a - b);
  Println(a * b);
  Println(a / b);
  Println(-a);
  Println(1/a);
  Println(a.Real,a.Imaginary);
  Println(a.Conjugate);
  Println(Abs(a));
  Println(a ** b);
end.
{----------------------------------------------------- 31 arithmetic-evaluation}
type
  IExprNode = interface
    function Evaluate: real;
  end;

  NumberNode = auto class(IExprNode)
  public
    value: real;
    function Evaluate: real := value;
  end;

  BinaryOpNode = auto class(IExprNode)
  public
    op: char;
    left, right: IExprNode;

    function Evaluate: real;
    begin
      case op of
        '+': Result := left.Evaluate + right.Evaluate;
        '-': Result := left.Evaluate - right.Evaluate;
        '*': Result := left.Evaluate * right.Evaluate;
        '/': Result := left.Evaluate / right.Evaluate;
      else
        raise new Exception($'Unknown operator {op}');
      end;
    end;
  end;

  ExpressionParser = class
    s: string;
    pos: integer;

    constructor Create(input: string);
    begin
      s := input;
      pos := 1;
    end;

    function NextChar: char :=
      if pos <= s.Length then s[pos] else #0;

    procedure SkipSpaces :=
      while NextChar = ' ' do pos += 1;

    function ParseNumber: IExprNode;
    begin
      SkipSpaces;
      var start := pos;
      while NextChar.IsDigit do pos += 1;
      if NextChar = '.' then
      begin
        pos += 1;
        while NextChar.IsDigit do pos += 1;
      end;
      var value := s[start:pos].ToReal;
      Result := new NumberNode(value);
    end;

    function ParseFactor: IExprNode;
    begin
      SkipSpaces;
      if NextChar = '(' then
      begin
        pos += 1;
        Result := ParseExpr;
        SkipSpaces;
        if NextChar = ')' then
          pos += 1
        else raise new Exception('Expected )');
      end
      else
        Result := ParseNumber;
    end;

    function ParseTerm: IExprNode;
    begin
      Result := ParseFactor;
      while true do
      begin
        SkipSpaces;
        var ch := NextChar;
        if (ch = '*') or (ch = '/') then
        begin
          pos += 1;
          Result := new BinaryOpNode(ch, Result, ParseFactor);
        end
        else break;
      end;
    end;

    function ParseExpr: IExprNode;
    begin
      Result := ParseTerm;
      while true do
      begin
        SkipSpaces;
        var ch := NextChar;
        if (ch = '+') or (ch = '-') then
        begin
          pos += 1;
          Result := new BinaryOpNode(ch, Result, ParseTerm);
        end
        else break;
      end;
    end;

    function Parse: IExprNode := ParseExpr;

  end;

begin
  var inputs := [
    '2+3*(4-1)',
    '10 + 2 / 3',
    '(7+3)*(2+2)',
    '8*(5+(2-3))',
    '1/3',
    '2.5 + 4.1 * (3 - 1.1/2)'];

  foreach var expr in inputs do
  begin
    var parser := new ExpressionParser(expr);
    var tree := parser.Parse;
    Println($'{expr} = {tree.Evaluate:0.###}');
  end;
end.
{------------------------------------------------- 32 arithmetic-geometric-mean}
function agm(a,g: real; eps: real := 1e-10): real;
begin
  var an := (a + g) / 2;
  var gn := Sqrt(a * g);
  while Abs(an - gn) > eps do
    (an,gn) := ((an + gn) / 2, Sqrt(an * gn));
  Result := an;
end;

begin
  Print(agm(1, 1 / Sqrt(2)))
end.
{-------------------------------------------------------- 33 arithmetic-integer}
begin
  var (a,b) := ReadInteger2;
  Println($'{a} + {b} = {a + b}');
  Println($'{a} - {b} = {a - b}');
  Println($'{a} * {b} = {a * b}');
  Println($'{a} / {b} = {a / b}');
  Println($'{a} div {b} = {a div b}');
  Println($'{a} mod {b} = {a mod b}');
  Println($'{a} ** {b} = {a ** b}');
end.
{-------------------------------------------------------- 34 arithmetic-numbers}
function Factors(n: integer): set of integer;
begin
  Result := SetOf(1, n);
  var i := 2;
  while True do
  begin
    var j := n div i;
    if j < i then
      break;
    if i * j = n then
      Result += SetOf(i,j);
    i += 1;
  end;
end;

begin
  var arithmeticCount := 0;
  var compositeCount := 0;
  var n := 1;

  while arithmeticCount <= 1000000 do
  begin
    var f := Factors(n);
    var avg := f.Average;

    if frac(avg) = 0 then
    begin
      arithmeticCount += 1;

      if f.Count > 2 then
        compositeCount += 1;

      if arithmeticCount <= 100 then
      begin
        Print($'{n,3} ');
        if arithmeticCount mod 10 = 0 then
          Println;
      end;

      if arithmeticCount in [1000, 10000, 100000, 1000000] then
      begin
        Println(NewLine + $'{arithmeticCount}th arithmetic number is {n}');
        Println($'Number of composite arithmetic numbers <= {n}: {compositeCount}');
      end;
    end;

    n += 1;
  end;
end.
{------------------------------------------------------- 35 arithmetic-rational}
uses NumLibABC;

const
  max = 1 shl 19;

begin
  for var candidate := 2 to max - 1 do
  begin
    var sum := frc(1, candidate);
    var max2 := candidate.Sqrt.Trunc;
    for var factor := 2 to max2 do
      if (candidate mod factor) = 0 then
        sum += frc(1, factor) + frc(1, candidate div factor);
    if sum = frc(1) then
      Writeln(candidate, ' is perfect');
  end;
end.
{------------------------------------------------------- 36 array-concatenation}
##
var a := |1,2,3,4|;
var b := Arr(5..8);
var c := a + b;
c.Println;
{------------------------------------------------------------ 37 array-length-1}
// Array length. Nigel Galloway: September 2nd., 2022
var n:array of string:=('apple','orange');
begin
writeln(Length(n));
end.
{------------------------------------------------------------ 38 array-length-2}
// Array length. Mikhalkovich Stanislav: May 16, 2024
##
var a := |'apple','orange'|;
a.Length.Print;
{-------------------------------------------------------------------- 39 arrays}
begin
  // Static old-style arrays
  var a: array [1..3] of integer := (1,2,3);
  Println(a[1]);

  // dynamic arrays - zero based indices
  var a1: array of integer := new integer[3](1,3,5);
  Println(a1[0]);

  // dynamic arrays
  var a2 := |1,3,5|; // literal array
  SetLength(a2,4);
  a2[^1] := 7;       // "push" new value; ^1 - the first element from the end

  // Lists are dynamically resizing arrays
  var lst := new List<integer>(a1);
  lst.Add(7);
  Println(lst[^1]);
end.
{---------------------------------------------------------- 40 ascending-primes}
##
uses School;

function AscendingSeq(n: integer): sequence of integer;
begin
  for var x := n*10 + n mod 10 + 1 to n*10 + 9 do
    yield sequence AscendingSeq(x) + x;
end;

AscendingSeq(0).Order.Where(n -> n.IsPrime).Print;

{---------------------------------------------------------------- 41 assertions}
begin
  var a := 3;
  Assert(a = 3);
  Assert(a = 4, 'Bad assert!');
end.
{------------------------------------------------ 42 associative-array-creation}
begin
  var zoo := new Dictionary<string,integer>;
  zoo['crocodile'] := 2;
  zoo['jiraffe'] := 3;
  zoo['behemoth'] := 1;
  zoo.Println;
end.
{----------------------------------------------- 43 associative-array-iteration}
begin
  var zoo := new Dictionary<string,integer>;
  zoo['crocodile'] := 2;
  zoo['jiraffe'] := 3;
  zoo['behemoth'] := 1;
  foreach var kv in zoo do
    Println(kv.Key, kv.Value);
  Println;
  foreach var key in zoo.Keys do
    Println(key,zoo[key]);
end.
{------------------------------------------------- 44 associative-array-merging}
begin
  var base := Dict(('name','Rocket Skates'),
    ('price','12.75'),
    ('color','yellow'));

  var update := Dict(('price','15.25'),
    ('color','red'),
    ('year','1974'));

  var merged := new Dictionary<string,string>;
  foreach var kv in base.Concat(update) do
    merged[kv.Key] := kv.Value;
  merged.PrintLines
end.
{-------------------------------------------------------- 45 attractive-numbers}
##
uses School;

var attractive :=
  (1..120)
    .Where(n -> IsPrime(n.Factorize.Count))
    .ToList;

Println($'There are {attractive.Count} attractive numbers up to and including 120:');
Println(attractive);
{-------------------------------------------------- 46 averages-arithmetic-mean}
##
|0, 0, 3, 1, 4, 1, 5, 9, 0, 0|.average.println;
{------------------------------------------------------- 47 averages-mean-angle}
##
function meanAngle(deg: array of real): real;
begin
  var c: Complex := 0;
  foreach var d in deg do
    c += CplxFromPolar(1.0, DegToRad(d));
  result := RadToDeg((c / deg.length).phase);
end;

meanAngle(Arr(350.0, 10.0)).println;
meanAngle(Arr(90.0, 180.0, 270.0, 360.0)).println;
meanAngle(Arr(10.0, 20.0, 30.0)).println
{----------------------------------------------------------- 48 averages-median}
##
function median(a: array of real): real;
begin
  var asort := a.Sorted.ToArray;
  var alen := a.Length;
  result := (asort[(alen - 1) div 2] + asort[alen div 2]) / 2;
end;

var a := arr(4.1, 5.6, 7.2, 1.7, 9.3, 4.4, 3.2);
println(a, 'median', median(a));
a := arr(4.1, 7.2, 1.7, 9.3, 4.4, 3.2);
println(a, 'median', median(a));
{------------------------------------------------------------- 49 averages-mode}
##
function modes<T>(s: sequence of T): sequence of T;
begin
  var count := s.EachCount;
  var best := count.Values.Max;
  result := new List<T>;
  foreach var k in count do
    if k.value = best then result := result + k.key;
end;

modes(|1, 3, 6, 6, 6, 6, 7, 7, 12, 12, 17|).Println;
modes(|1, 1, 2, 4, 4|).Println;
modes('sdsvdvddffffs').Println;
var a := new object[] (1, 'blue', 2, 7.5, 5, 'green', 'red', 5, 2, 'blue', 'white');
modes(a).Println;
{------------------------------------------------ 50 averages-pythagorean-means}
##
function gmean(n: sequence of real) :=
   power(n.aggregate((s, x) -> s * x), 1.0 / n.count);

function hmean(n: sequence of real) :=
   n.count / n.sum(x -> 1 / x);

var nums := (1..10).Select( x -> real(x));
nums.average.println;
gmean(nums).Println;
hmean(nums).Println;
{------------------------------------------------- 51 averages-root-mean-square}
##
function rootmeansquare(n: array of integer) :=
   Sqrt(n.Sum(x -> x * x) / n.Length);

rootmeansquare(Arr(1..10)).Println;
{----------------------------------------------------------- 52 babbage-problem}
//the smallest positive integer whose square ends in the digits 269,696
## var k:=269696;
var n:=trunc(sqrt(k));(* Start with n *)
if n mod 2<>0 then n-=1;(* n:=n-1 *)
  repeat
  n += 2 (* Increase n by 2. n:=n+2 *)
  until (n * n) mod 1000000 = 269696;
$'The smallest positive integer is {n} whose square ends in {k}'.println;
$'{n}² = {n*n}'.println;

{--------------------------------------------------------- 53 balanced-brackets}
function GenBracketExpr(n: integer): string;
begin
  var a := Arr('[',']')*n;
  Shuffle(a);
  Result := a.JoinToString
end;

function IsBalanced(s: string): boolean;
begin
  Result := True;
  var st := new Stack<char>;
  foreach var c in s do
    if c = '[' then
      st.Push(c)
    else if (st.Count > 0) and (st.Peek = '[') then
      st.Pop
    else begin
      Result := False;
      exit
    end;
end;

begin
  loop 10 do
  begin
    var s := GenBracketExpr(Random(2,5));
    Println(s, IsBalanced(s));
  end;
end.
{-------------------------------------------------------------- 54 bifid-cipher}
// Bifid cipher. Nigel Galloway: September 18th., 2024
function polybius(alphabet:string;n,g:integer):(Dictionary<char,(integer,integer)>,Dictionary<(integer,integer),char>);
begin
  var ng:=Cartesian(1..n,1..g);
  Result:=(Dict(Zip(alphabet,ng)),Dict(Zip(ng,alphabet)));
end;
function fN(e:Dictionary<char,(integer,integer)>;n:string):(sequence of integer,sequence of integer):=(n.Substring(1).Scan(e[n[1]],(n,g)->e[g])).UnZipTuple;
function encrypt(e:(Dictionary<char,(integer,integer)>,Dictionary<(integer,integer),char>);text:string):string;
begin
  var fG:((sequence of integer,sequence of integer),Dictionary<(integer,integer),char>)->string:=(n,e)->(n[0]+n[1]).Batch(2).Aggregate('',(n,g)->n+e[(g[0],g[1])]);
  Result:=fG(fN(e[0],text),e[1]);
end;
function decrypt(e:(Dictionary<char,(integer,integer)>,Dictionary<(integer,integer),char>);text:string):string;
begin
  var fG:(sequence of (integer,integer),Dictionary<(integer,integer),char>)->string:=(n,e)->n.Aggregate('',(n,g)->n+e[(g[0],g[1])]);
  var t:=fN(e[0],text); var z:=t[0].Interleave(t[1]).SplitAt(t[0].count);
  Result:=fG(z[0].ZipTuple(z[1]),e[1]);
end;
begin
  var p:=polybius('abcdefghiklmnopqrstuvwxyz',5,5); var s,e:string;
  s:='fleeatonce'; e:=encrypt(p,s); println($'{s} -> {e} -> {decrypt(p,e)}');
  s:='attackatdawn'; e:=encrypt(p,s); println($'{s} -> {e} -> {decrypt(p,e)}');
  p:=polybius('bgwkzqpndsioaxefclumthyvr',5,5);
  e:=encrypt(p,s); println($'{s} -> {e} -> {decrypt(p,e)}');
  s:='fleeatonce'; e:=encrypt(p,s); println($'{s} -> {e} -> {decrypt(p,e)}');
  p:=polybius('abcdefghijklmnopqrstuvwxyz0123456789',6,6);
  s:='theinvasionwillstarton1january2025'; e:=encrypt(p,s); println($'{s} -> {e} -> {decrypt(p,e)}');
end.
{------------------------------------------------------------- 55 binary-digits}
begin
  foreach var number in |5, 50, 9000| do
    Writeln($'{number,4} - {Convert.ToString(number,2)}');
end.
{----------------------------------------------------------- 56 binary-search-1}
function BinarySearch(a: array of integer; x: integer): integer;
begin
  var (l,r) := (0, a.Length-1);
  repeat
    var mid := (l + r) div 2;
    if x = a[mid] then
    begin
      Result := mid;
      exit
    end;
    if x > a[mid] then
      l := mid + 1
    else r := mid - 1;
  until l > r;
  Result := -1;
end;

function BinarySearchRecursive(a: array of integer; x: integer): integer;
  function BinarySearchHelper(a: array of integer; x: integer; l,r: integer): integer;
  begin
    if l > r then
      Result := -1
    else begin
      var mid := (l + r) div 2;
      if x = a[mid] then
        Result := mid
      else if x < a[mid] then
        Result := BinarySearchHelper(a, x, l, mid - 1)
      else Result := BinarySearchHelper(a, x, mid + 1, r)
    end;
  end;
begin
  Result := BinarySearchHelper(a,x,0,a.Length-1);
end;

begin
  var a := ArrRandomInteger(10,1,20);
  a.Sort;
  a.Println;
  var x := 10;
  var ind := BinarySearch(a,x);
  if ind >= 0 then
    Println($'{x} found at index {ind}')
  else Println($'{x} not found');

  ind := BinarySearchRecursive(a,x);
  if ind >= 0 then
    Println($'{x} found at index {ind}')
  else Println($'{x} not found');

  x := a.RandomElement;
  ind := BinarySearch(a,x);
  if ind >= 0 then
    Println($'{x} found at index {ind}')
  else Println($'{x} not found');

  ind := BinarySearchRecursive(a,x);
  if ind >= 0 then
    Println($'{x} found at index {ind}')
  else Println($'{x} not found');
end.
{----------------------------------------------------------- 57 binary-search-2}
##
var s := |2,3,4,5,6,7,8,9,10,12,14,16,18,20,22,25,27,30|;
s.binarysearch(10).println;
{------------------------------------------------- 58 bioinformatics-base-count}
## var DNA := '''
CGTAAAAAATTACAACGTCCTTTGGCTATCTCTTAAACTCCTGCTAAATG
CTCGTGCTTTCCAATTATGTAAGCGTTCCGAGACGGGGTGGTCGATTCTG
AGGACAAAGGTCAAGATGGAGCGCATCGAACGCAATAAGGATCATTTGAT
GGGACGTTTCGTCGACAAAGTCTTGTTTCGAGAGTAACGGCTACCGTCTT
CGATTCTGCTTATAACACTATGTTCTTATGAAATGGATGTTCTGAGTTGG
TCAGTCCCAATGTGCGGGGTTTCTTTTAGTACGTCGGGAGTGGTATTATA
TTTAATTTTTCTATATAGCGATCTGTATTTAAGCAATTCATTTAGGTTAT
CGCCGCGATGCTCGGTTCGGACCGCCAAGCATCTGGCTCCACTGCTAGTG
TCCTAAATTTGAATGGCAAACACAAATAAGATTTAGCAATTCGTGTAGAC
GACCGGGGACTTGCATGATGGGAGCAGCTTTGTTAAACTACGAACGTAAT
''';DNA:=DNA.Remove(#13,#10);
var t:=DNA.EachCount.OrderBy(x->x.key).Println.Sum(x->x.value);
Print('total,',t);
{-------------------------------------------------------- 59 bitwise-operations}
begin
  var (a,b) := ReadInteger2;
  Println($'not {a} = {not a}');
  Println($'{a} and {b} = {a and b}');
  Println($'{a} or {b} = {a or b}');
  Println($'{a} xor {b} = {a xor b}');
  Println($'{a} shl {b} = {a shl b}');
  Println($'{a} shr {b} = {a shr b}');
end.
{---------------------------------------------------------- 60 break-oo-privacy}
uses System.Reflection;

type MyClass = class
private
  x: integer := 5;
public
  procedure PrintFields := Print(x);
end;

begin
  var a := new MyClass;
  var fi := a.GetType.GetField('x', BindingFlags.Instance or BindingFlags.NonPublic);
  fi.SetValue(a,777);
  a.PrintFields;
end.
{------------------------------------------------------------- 61 caesar-cipher}
##
function encrypt(msg:string;k:integer):string;
begin
  var big:=('A'..'Z').ToArray;
  var ltl:=('a'..'z').ToArray;
  foreach var c in msg do
    case c of
      'A'..'Z': result+=big[(big.IndexOf(c)+k) mod 26];
      'a'..'z': result+=ltl[(ltl.IndexOf(c)+k) mod 26];
      else result+=c;
    end;
end;
function decrypt(msg:string;k:integer):=encrypt(msg, 26-k);

var (key, message):=(3,'The five boxing wizards jump quickly');
Println('Original:',message);
message:=encrypt(message, 3);
Println('Encrypted:',message);
message:=decrypt(message, 3);
Println('Decrypted:',message);
{------------------------------------------------ 62 calculating-the-value-of-e}
function MyExp(x: real): real;
const eps = 1e-15;
begin
  var y := 1.0;
  var s := y;
  var i := 1;
  while y > eps do
  begin
    y *= x / i;
    s += y;
    i += 1;
  end;
  Result := s;
end;

begin
  Println(MyExp(1));
  Println(Exp(1));
end.
{------------------------------------------- 63 calendar---for-real-programmers}
USES CRT;
BEGIN
  SETWINDOWSIZE(132, 25);
  VAR MNTH:=|'JANUARY', 'FEBRUARY', 'MARCH', 'APRIL', 'MAY', 'JUNE', 'JULY', 'AUGUST', 'SEPTEMBER', 'OCTOBER', 'NOVEMBER', 'DECEMBER'|;
  GOTOXY(57, 1);
  PRINT('[SNOOPY]');
  GOTOXY(65, 2);
  PRINT('1969');
  VAR DW:=2;
  FOREACH VAR M IN MNTH INDEX I DO BEGIN
    VAR (X, Y):=(I MOD 6 * 22, 3 + I DIV 6 * 9);
    GOTOXY(X+1, Y+1);
    PRINT('MO TU WE TH FR SA SU');
    GOTOXY(X + 11 - M.Length DIV 2, Y);
    PRINT(M);
    VAR DAYS:=(I IN |3,5,8,10| ? 30 : I=1 ? 28 : 31);
    Y+=2;
    X+=1;
    FOR VAR D:=1 TO DAYS DO BEGIN
      GOTOXY(X + DW*3, Y);
      WRITE(D:2);
      DW:=(DW+1) MOD 7;
      IF DW=0 THEN Y+=1;
    end;
  end;
  GOTOXY(1,21);
END.
{----------------------------------------------------- 64 call-an-object-method}
type
  Point = auto class // class with autogenerated constructor
    x,y: real;
    static function RandomPoint := new Point(Random(-10..10),Random(-10..10));
    procedure Print;
    begin
      Writeln($'{x} {y}');
    end;
  end;

begin
  var p := new Point(2,3);
  p.Print; // instance method call
  p := Point.RandomPoint; // static method call
  p.Print;
end.
{------------------------------------ 65 cartesian-product-of-two-or-more-lists}
##
var empty := new List<integer>;
println(cartesian(|1, 2|, |3, 4|));
println(cartesian(|3, 4|, |1, 2|));
println(cartesian(|1, 2|, empty));
println(cartesian(empty, |1, 2|));
println(cartesian(|1776, 1789|, |7, 12|, |4, 14, 23|, |0, 1|));
println(cartesian(|1, 2, 3|, |30|, |500, 100|));
println(cartesian(|1, 2, 3|, empty, |500, 100|));
{------------------------------------------- 66 case-sensitivity-of-identifiers}
var
  dog: string;
begin
  dog := 'Benjamin';
  Dog := 'Samba';
  DOG := 'Bernie';
  Writeln('There is just one dog named ' + dog);
end.
{--------------------------------------------------------- 67 casting-out-nines}
##
function co9(x: integer): integer;
begin
  if x = 9 then result := 0
  else if x < 9 then result := x
  else result := co9(x.ToString.select(x -> StrToInt(x)).sum);
end;

var kaprekars := [1, 9, 45, 55, 99, 297, 703, 999];

Print('Checksums: '); (1..20).Select(x -> co9(x)).Println;
Print('co9(k) = co9(k*k): ');
Println((1..1000).Where(x -> co9(x) = co9(x * x)));
var part2 := (1..1000).Where(x -> co9(x) = co9(x * x)).ToSet;
Println('Kaprekars: ', kaprekars);
if kaprekars <= part2 then Println('Kaprekars are included.', part2.Count, 'numbers in range 1000');
{------------------------------------------ 68 catalan-numbers-pascals-triangle}
const
  n = 15;

begin
  var t: array[0..n + 1] of integer;
  t[1] := 1;
  for var i := 1 to n do
  begin
    for var j := i downto 1 do t[j] += t[j - 1];
    t[i + 1] := t[i];
    for var j := i + 1 downto 1 do t[j] += t[j - 1];
    print(t[i + 1] - t[i]);
  end;
end.
{----------------------------------------------------------- 69 catalan-numbers}
##
function binom(n, k: integer): int64;
begin
  result := 1;
  for var i := 1 to k do
    result := result * (n - i + 1) div i
end;

function catalan1(n: integer) := binom(2 * n, n) div (n + 1);

function catalan2(n: integer): integer;
begin
  if n = 0 then begin result := 1; exit end;
  for var i := 0 to n - 1 do
    result += catalan2(i) * catalan2(n - 1 - i)
end;

function catalan3(n: integer): integer;
begin
  if n > 0 then result := 2 * (2 * n - 1) * catalan3(n - 1) div (1 + n)
  else result := 1;
end;

for var i := 0 to 15 do
  writeln(i:2, catalan1(i):9, catalan2(i):9, catalan3(i):9);
{-------------------------------------------------------------- 70 catamorphism}
##
(1..5).Aggregate((a, b) -> a + b).Println;
(1..5).Aggregate((a, b) -> a * b).Println;
(1..5).Aggregate((a, b) -> a - b).Println;
(1..5).Aggregate((a, b) -> min(a, b)).Println;
(1..5).Aggregate((a, b) -> max(a, b)).Println;
(1..5).Aggregate('', (a, b) -> a.tostring + b.tostring).Println;
{--------- 71 centre-and-radius-of-a-circle-passing-through-3-points-in-a-plane}
uses graphwpf;

type
  PointR = record
    x, y: real;
  end;
  CircleR = record
    center: PointR;
    radius: real;
  end;

function FindCircle(p1, p2, p3: PointR): CircleR;
begin
  var x12 := p1.x - p2.x;
  var x13 := p1.x - p3.x;
  var y12 := p1.y - p2.y;
  var y13 := p1.y - p3.y;
  var y31 := p3.y - p1.y;
  var y21 := p2.y - p1.y;
  var x31 := p3.x - p1.x;
  var x21 := p2.x - p1.x;

  var sx13 := p1.x.Sqr - p3.x.Sqr;
  var sy13 := p1.y.Sqr - p3.y.Sqr;
  var sx21 := p2.x.Sqr - p1.x.Sqr;
  var sy21 := p2.y.Sqr - p1.y.Sqr;

  var f := (sx13 * x12 + sy13 * x12 + sx21 * x13 + sy21 * x13)
            / (2.0 * (y31 * x12 - y21 * x13));
  var g := (sx13 * y12 + sy13 * y12 + sx21 * y13 + sy21 * y13)
            / (2.0 * (x31 * y12 - x21 * y13));

  var c := -(p1.x.Sqr) - p1.y.Sqr - 2.0 * g * p1.x - 2.0 * f * p1.y;
  var h := -g;
  var k := -f;
  var r := (h.Sqr + k.Sqr - c).Sqrt;

  Result.center.x := h;
  Result.center.y := k;
  Result.radius := r;
end;

begin
  var p1: PointR := (x: 22.83; y: 2.07);
  var p2: PointR := (x: 14.39; y: 30.24);
  var p3: PointR := (x: 33.65; y: 17.31);
  var solved := FindCircle(p1, p2, p3);
  Println(solved);
  setMathematicCoords(0, 60, 0, true);
  Circle(solved.center.x, solved.center.y, solved.radius);
  Line(p1.x, p1.y, p2.x, p2.y);
  Line(p1.x, p1.y, p3.x, p3.y);
  Line(p2.x, p2.y, p3.x, p3.y);
end.
{-------------------------------------------- 72 change-e-letters-to-i-in-words}
begin
  var words := new HashSet<string>();
  var lines := ReadAllLines('unixdict.txt');

  // Загружаем слова в HashSet для быстрого поиска
  foreach var line in lines do
    words.Add(line.Trim);

  foreach var word in words do
  begin
    if word.Length < 6 then
      continue;

    if not word.Contains('e') then
      continue;

    var iw := word.Replace('e', 'i');

    if words.Contains(iw) then
      Writeln(word, ' => ', iw);
  end;
end.
{----------------------------------------------------------- 73 character-codes}
begin
  var c := 'a';
  var i := c.Code;
  Println(i);
  Println(Chr(i))
end.
{------------------------------------------ 74 check-input-device-is-a-terminal}
##
uses system;
system.Console.IsInputRedirected.println;
{----------------------------------------- 75 check-output-device-is-a-terminal}
##
uses system;
system.Console.IsOutputRedirected.println;
{---------------------------------------------------- 76 check-that-file-exists}
##
uses System.IO;

FileExists('input.txt').Println;
FileExists('\input.txt').Println;
system.IO.Directory.Exists('docs').Println;
system.IO.Directory.Exists('\docs').Println;
{---------------------------------------------------------- 77 cheryls-birthday}
##
var dates := HSet(('May', 15), ('May', 16), ('May', 19), ('June', 17),
                 ('June', 18), ('July', 14), ('July', 16), ('August', 14),
                 ('August', 15), ('August', 17));

var uniqueMonths := dates.GroupBy(d -> d[1]).Where(g -> g.count = 1).Select(g -> g.First()[0]).ToHashSet;
dates.RemoveWhere(d -> uniqueMonths.Contains(d[0]));
println('After first Albert''s sentence:', dates);

dates.IntersectWith(dates.GroupBy(d -> d[1]).Where(g -> g.Count() = 1).Select(g -> g.First()));
println('After Bernard''s sentence:', dates);

dates.IntersectWith(dates.GroupBy(d -> d[0]).Where(g -> g.Count() = 1).Select(g -> g.First()));
println('After second Albert''s sentence:', dates);
{------------------------------------------------- 78 chinese-remainder-theorem}
function GCD(a, b: integer): integer;
begin
  while b > 0 do
    (a, b) := (b, a mod b);
  Result := a;
end;

function ModularMultiplicativeInverse(a, m: integer): integer;
begin
  var b := a Mod m;
  for var x := 1 To m - 1 do
    if (b * x) Mod m = 1 Then begin Result := x; exit end;
  Result := 1;
end;

procedure Solve(n, a: array of integer);
begin
  var coprime := 1;
  foreach var (i, j) in n.combinations(2) do coprime *= GCD(i, j);
  if coprime <> 1 then
  begin println('Not pairwise co-prime'); exit end;

  var prod := n.Aggregate(1, (i, j)-> i * j);
  var sm := 0;
  for var i := 0 To n.Length - 1 do
  begin
    var p := prod div n[i];
    sm += a[i] * ModularMultiplicativeInverse(p, n[i]) * p;
  end;
  var result := sm Mod prod;

  for var counter := 0 to n.Length - 1 do
    WriteLn($'{result} = {a[counter]} (mod {n[counter]})');
end;

begin
  solve(|3, 5, 7|, |2, 3, 2|);
  solve(|10, 4, 9|, |11, 22, 19|);
  solve(|11, 12, 13|, |10, 4, 12|);
  solve(|5, 7, 9, 11|, |1, 2, 3, 4|);
end.
{------------------------------------------------------------ 79 chinese-zodiac}
const
  ANIMALS: array of string = ('Rat', 'Ox', 'Tiger', 'Rabbit', 'Dragon', 'Snake', 'Horse', 'Goat', 'Monkey', 'Rooster', 'Dog', 'Pig');
  ELEMENTS: array of string = ('Wood', 'Fire', 'Earth', 'Metal', 'Water');
  ANIMAL_CHARS: array of char  = ('子', '丑', '寅', '卯', '辰', '巳', '午', '未', '申', '酉', '戌', '亥');
  ELEMENT_CHARS: array of array of char = (('甲', '丙', '戊', '庚', '壬'), ('乙', '丁', '己', '辛', '癸'));

function GetYY(year: Integer) := if year Mod 2 = 0 then 'yang' else 'yin';

begin
  var years := |1935, 1938, 1968, 1972, 1976, 1984, 1985, 2017|;
  foreach var year in years do
  begin
    var ei := ((year - 4) Mod 10) div 2;
    var ai := (year - 4) Mod 12;
    var cycle := (year - 4) Mod 60 + 1;
    WriteLn(year, ' is the year of the ', ELEMENTS[ei], ' ', ANIMALS[ai], ' (', GetYY(year), '). ',
    ELEMENT_CHARS[year Mod 2, ei], ANIMAL_CHARS[(year - 4) Mod 12], ' - year ', cycle,' of the cycle');
  end;
end.
{---------------------------------------------------- 80 cholesky-decomposition}
function Cholesky(a: array of real): array of real;
begin
  var n := Round(Sqrt(a.Length));
  Result := new real[n * n];
  for var i := 0 to n - 1 do
  begin
    for var j := 0 to i do
    begin
      var s := 0.0;
      for var k := 0 to j - 1 do
        s += Result[i * n + k] * Result[j * n + k];
      if i = j then
        Result[i * n + j] := Sqrt(a[i * n + i] - s)
      else Result[i * n + j] := 1 / Result[j * n + j] * (a[i * n + j] - s);
    end;
  end;
end;

procedure ShowMatrix(a: array of real);
begin
  var n := Round(Sqrt(a.Length));
  for var i := 0 to n - 1 do
  begin
    for var j := 0 to n - 1 do
      write(a[i * n + j]:10:5);
    PrintLn('');
  end;
end;

begin
  var m1 := new real[9];
  m1 := |25.0, 15.0, -5.0,
         15.0, 18.0,  0.0,
         -5.0,  0.0, 11.0 |;
  var c1 := Cholesky(m1);
  ShowMatrix(m1);
  println('=>');
  ShowMatrix(c1);

  PrintLn('');

  var m2: array of real :=
  |18.0, 22.0,  54.0,  42.0,
  22.0, 70.0,  86.0,  62.0,
  54.0, 86.0, 174.0, 134.0,
  42.0, 62.0, 134.0, 106.0 |;
  var c2 := Cholesky(m2);
  Showmatrix(m2);
  println('=>');
  ShowMatrix(c2);
end.
{------------------------------------------------------------ 81 chowla-numbers}
function chowla(n: Integer): Integer;
begin
  result := 0;
  var i := 2;
  while i * i <= n do
  begin
    if n mod i = 0 then
      result += i + (if i = n div i then 0 else n div i);
    i += 1
  end;
end;

function sieve(limit: Integer): array of Boolean;
begin
  result := new Boolean[limit];
  for var i := 3 to limit div 3 step 2 do
    if not result[i] and (chowla(i) = 0) Then
      for var j := 3 * i to limit step 2 * i do
        result[j] := true;
end;

begin
  for var i := 1 To 37 do
    WriteLn('chowla(', i, ') = ', chowla(i));

  var count := 1;
  var limit := 10_000_000;
  var power := 100;
  var c := sieve(limit);
  for var i := 3 To limit Step 2 do
  begin
    if not c[i] Then count += 1;
    if i = power - 1 Then begin
      WriteLn('Count of primes up to ', power:8, ' = ', count);
      power *= 10;
    end;
  end;

  count := 0;
  limit := 35_000_000;
  var k := 2; var kk := 3;
  while True do
  begin
    var p := k * kk;
    if p > limit Then break;
    if chowla(p) = p - 1 Then begin
      WriteLn(p:8, ' is a number that is perfect');
      count += 1;
    end;
    k := kk + 1;
    kk += k;
  end;
  WriteLn('There are ', count, ' perfect numbers <= 35,000,000')
end.
{----------------------------------------------------------- 82 circular-primes}
##
function IsPrime(n: integer): boolean;
begin
  result := false;
  for var i := 2 to n.Sqrt.Floor do
    if n mod i = 0 then
      exit;
  result := true;
end;

function rotations(n: integer): sequence of integer;
begin
  var a := n.tostring;
  for var i := 1 to a.Length do
    yield (a[i:] + a[:i]).ToInteger;
end;

function isCircular(n: integer): boolean;
begin
  var rot := rotations(n);
  if rot.first = rot.min then
    result := rot.All(x -> isPrime(x));
end;

(2..1000_000).Where(x -> isCircular(x)).Take(19).Println;
{------------------------------------------------------------------- 83 classes}
type Person = class
  Name: string;
  Age: integer;
public
  constructor (Name: string; Age: integer);
  begin
    Self.Name := Name;
    Self.Age := Age;
  end;
  procedure Output := Print($'{Name} {Age}');
end;

begin
  var p := new Person('John',18);
  p.Output
end.
{------------------------------------------------------ 84 closest-pair-problem}
type Point = auto class
  x,y: real;
  function Distance(p: Point): real := Sqrt((x-p.x)**2 + (y-p.y)**2);
end;

function Pnt(x,y: real) := new Point(x,y);

function RandomPoint: Point := Pnt(RandomReal(0,10),RandomReal(0,10));

function ClosestPair(points: array of Point): (Point,Point);
begin
  var pairs := points.Combinations(2);
  var pair := pairs.MinBy(pair -> pair[0].Distance(pair[1]));
  Result := (pair[0],pair[1]);
end;

begin
  var points := ArrGen(10,i -> RandomPoint);
  points.Println;

  var ClPair := ClosestPair(points);

  Println(ClPair,ClPair[0].Distance(ClPair[1]));
end.
{---------------------------------------------------- 85 closures-value-capture}
type
  Tfuncs = integer-> () -> integer;

begin
  var captor: Tfuncs := x -> () ->x * x;
  var functions := Range(0, 10).Select(captor).ToArray;
  println(functions);
  println(functions[4]());
end.
{--------------------------------------------------------------- 86 code-golf-1}
###
Pr('Code Golf')
{--------------------------------------------------------------- 87 code-golf-2}
###
Pr(#67#111#100#101#32#71#111#108#102)
{--------------------------------------------------------------- 88 collections}
begin
  // build-in array
  var a: array of integer := new integer[5] (1,2,3,4,5);
  // build-in multidimensional array
  var aa: array [,] of integer := new integer[4,3]((1,2,3),(4,5,6),(7,8,9),(1,2,3));
  // List is a resizable array
  var lst := new List<integer>(a);
  lst.Add(1);
  lst.AddRange(|2,3|);
  // HashSet is an unordered set, SortedSet is ordered
  var hs := new HashSet<integer>;
  var ss := new SortedSet<integer>;
  hs.Add(1); ss.Add(2);
  // Dictionary is an unordered map, SortedDictionary is ordered
  var d := new Dictionary<string,integer>;
  d['str1'] := 1; d['str2'] := 3;
  var sd := new SortedDictionary<string,integer>;
  sd['str1'] := 1; sd['str2'] := 3;

  // Stack and Queue
  var s := new Stack<integer>;
  s.Push(1); s.Push(2); s.Push(3);
  var q := new Queue<integer>;
  q.Enqueue(1); q.Enqueue(2); q.Enqueue(3);
end.
{--------------------------------------------------- 89 color-of-a-screen-pixel}
##
uses GraphABC;

var curpos := System.Windows.Forms.Cursor.Position;
var apixel := new System.Drawing.Rectangle(curpos.X, curpos.Y, 1, 1);
var screenpixel := Picture.Create(apixel); //copy pixel from screen
Console.WriteLine(screenpixel.GetPixel(0, 0));
{--------------------------------------------------------------- 90 color-wheel}
uses GraphABC, system;

function fmod(x, y: real): real := x - trunc(x / y) * y;

function HSVToRGB(h, s, v: real): Color;
begin
  var hp := h / 60.0;
  var c := s * v;
  var x := c * (1 - abs(fmod(hp, 2) - 1));
  var m := v - c;
  var (r, g, b) := (0.0, 0.0, 0.0);
  if (hp <= 1) then (r, g) := (c, x)
  else if (hp <= 2) then (r, g) := (x, c)
  else if (hp <= 3) then (g, b) := (c, x)
  else if (hp <= 4) then (g, b) := (x, c)
  else if (hp <= 5) then (r, b) := (x, c)
  else (r, b) := (c, x);
  r += m;
  g += m;
  b += m;
  result := RGB(byte(r * 255), byte(g * 255), byte(b * 255));
end;

procedure ColorWheel(diameter: integer);
begin
  Window.Title := 'ColorWheel';
  SetWindowSize(diameter, diameter);
  var radius := diameter / 2;

  for var x := 0 to diameter do
  begin
    var rx := x - radius;
    for var y := 0 to diameter do
    begin
      var ry := y - radius;
      var r := (rx.Sqr + ry.Sqr).Sqrt / radius;
      if r > 1 then continue;
      var a := 180 + RadToDeg(math.Atan2(ry, -rx));
      SetPixel(x, y, HSVToRGB(a, r, 1));
    end;
  end;
end;

begin
  ColorWheel(300);
end.
{------------------------------------------------------- 91 colour-bars-display}
##
uses GraphABC;

Window.title := 'Color bars';
var colors := |clblack, clred, clgreen, clblue, clmagenta, clcyan, clyellow, clwhite|;
var w := Window.Width div colors.Count;
var h := Window.Height;
for var i := 0 to colors.Count - 1 do
begin
  Brush.Color := colors[i];
  FillRectangle(w * i, 0, w * i + w, h);
end;
{-------------------------------------------------- 92 colour-pinstripe-display}
##
uses GraphABC;

Window.title := 'Color Pinstripe';
var colors := |clblack, clred, clgreen, clblue, clmagenta, clcyan, clyellow, clwhite|;
var w := Window.Width;
var h := Window.Height div 4;
for var b := 1 to 4 do
begin
  var x := 0;
  var ci := 0;
  while (x < w) do
  begin
    var y := h * (b - 1);
    Brush.Color := colors[ci mod 8];
    FillRectangle(x, y, x + b, y + h);
    x += b;
    ci += 1;
  end;
end;
{--------------------------------------------- 93 combinations-with-repetitions}
##
var t:=|'iced', 'jam', 'plain'|;
var p:=t.CartesianPower(2).Where(t->t[0]<=t[1]);
write($'{p.Count}');
Print(':');
p.Println;
write((1..10).CartesianPower(3).Where(t->(t[0]<=t[1])and(t[1]<=t[2])).count);
Print(': Choices of 3 from 10');
{-------------------------------------------------------------- 94 combinations}
##
(0..4).combinations(3).printlines;
{---------------------------------------------------- 95 command-line-arguments}
begin
  for var i:=1 to ParamCount do
    Print(ParamStr(i));
end.
{------------------------------------------------- 96 compare-a-list-of-strings}
function AllEqual(lst: sequence of string)
  := lst.All(x -> lst.First = x);

function IsStrictAscending(lst: sequence of string): boolean
  := lst.Pairwise.All(x -> x[0] < x[1]);

begin
  var strings := |'abc','abc','abc','abc'|;
  Print(AllEqual(strings));
  var strings1 := |'abc','abd','ade','aef'|;
  Print(IsStrictAscending(strings1));
end.
{--------------------------------------------- 97 compare-length-of-two-strings}
begin
  var (s1,s2) := ('Bye','Hello');
  if s1.Length < s2.Length then
    Swap(s1,s2);
  Println(s1,s1.Length);
  Println(s2,s2.Length);
  Println;
  var strArr := |'wolf','cat','crocodile','tiger'|;
  strArr.OrderByDescending(s -> s.Length).PrintLines(s -> $'{s,9} - {s.Length}');
end.
{-------------------------------------------------- 98 compile-time-calculation}
const
  X = 10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1;

begin
  writeln(x);
end.
{- 99 composite-numbers-k-with-no-single-digit-factors-whose-factors-are-all-substrings-of-k}
function Factors(n: integer): List<integer>;
begin
  var lst := new List<integer>;
  if n = 1 then  lst.Add(n);
  var i := 2;
  while i * i <= n  do
  begin
    while n mod i = 0 do
    begin
      lst.Add(i);
      n := n div i;
    end;
    i += 1;
  end;
  if n >= 2 then lst.Add(n);
  Result := lst;
end;

function composite(): sequence of integer;
begin
  var n := 11;
  while true do
  begin
    if (n mod 3 <> 0) and (n mod 5 <> 0) and (n mod 7 <> 0) then
      for var i := 11 to n.Sqrt.floor step 2 do
        if n mod i = 0 then
        begin
          yield n;
          break;
        end;
    n += 2;
  end;
end;

function allprimesubstr(n: integer): boolean;
begin
  result := true;
  foreach var i in factors(n) do
    if not n.tostring.contains(i.tostring) then
    begin
      result := false;
      break;
    end;
end;

begin
  composite.where(x -> allprimesubstr(x)).take(20).Println;
  Println('Seconds:',milliseconds/1000);
end.
{------------------------------------------------------- 100 compound-data-type}
type
  Point = class
    x,y: integer;
    constructor(x,y: integer) := (Self.x,Self.y) := (x,y);
  end;
  PointRec = record
    x,y: integer;
    constructor(x,y: integer) := (Self.x,Self.y) := (x,y);
  end;

begin
  var p := new Point(2,3);
  Println(p.x,p.y);
  var pr := new PointRec(4,5);
  Println(pr.x,pr.y);
end.
{----------------------------------------------------- 101 concurrent-computing}
uses System.Threading.Tasks;

begin
  Task.Run(() -> Print('Enjoy'));
  Task.Run(() -> Print('Rosetta'));
  Task.Run(() -> Print('Code'));
  Sleep(100);
end.
{--------------------------------------------------- 102 conditional-structures}
// if statement
if condition then
  operator;

if condition then
  operator
else operator;

if condition then
  operator
else if condition then
  operator
else operator;

// case statement
case Month of
  3..5: Print('Spring');
  6..8: Print('Summer');
  9..11: Print('Autumn');
  12,1,2: Print('Winter');
  else throw ArgumentException('Bad Month')
end;

// ternary operator
var min := if a < b then a else b;

// ternary operator in C style
var min := a < b ? a : b;
{--------------------------------------------------- 103 conjugate-a-latin-verb}
// Conjugate a Latin verb. Nigel Galloway: September 30th., 2024
##
procedure myLatin(n:string);
begin
  println($'Tu quae conjugate verba {n}');
  if (n.Length<4) or (n[n.Length-2:]<>'are') then begin println('Te adiuvare non possum'); exit; end;
  |'o','as','at','amus','atis','ant'|.ForEach(g->println($'{n[:n.Length-2]}{g}'));
end;

myLatin('amare');
myLatin('creo');
{--------------------------------------------------- 104 constrained-genericity}
function Min<T>(a: array of T): T; where T: IComparable<T>;
begin
  Result := a[0];
  for var i:=1 to a.Length - 1 do
    if a[i].CompareTo(Result) < 0 then
      Result := a[i];
end;

type Point = record(IComparable<Point>)
  x,y: integer;
  constructor (xx,yy: integer) := (x,y) := (xx,yy);
  function CompareTo(p: Point): integer;
  begin
    Result := x.CompareTo(p.x);
    if Result = 0 then
      Result := y.CompareTo(p.y);
  end;
end;

begin
  var a := Arr(new Point(2,3),new Point(1,4), new Point(3,1));
  Print(Min(a));
end.
{------------------------------------ 105 constrained-random-points-on-a-circle}
##
uses Graphwpf;

var count := 0;
while count < 100 do
begin
  var x := random(31) - 16;
  var y := random(31) - 16;
  var r := sqrt(x * x + y * y);
  if (r >= 10) and (r <= 15) then begin
    count += 1;
    fillcircle((x + 30) * 8, (y + 30) * 8, 3, colors.Black);
  end;
end;
{------------- 106 continued-fraction-arithmetic-construct-from-rational-number}
function r2cf(n1, n2: integer): sequence of integer;
begin
  while n2 <> 0 do
  begin
    yield n1 div n2;
    n1 := n1 mod n2;
    swap(n1, n2);
  end;
end;

begin
  foreach var pair in |(1, 2), (3, 1), (23, 8), (13, 11), (22, 7), (-151, 77)| do
    println(pair, ' -> ', r2cf(pair[0], pair[1]));

  println;
  foreach var pair in |(14142, 10000), (141421, 100000), (1414214, 1000000), (14142136, 10000000)| do
    println(pair, ' -> ', r2cf(pair[0], pair[1]));

  println;
  foreach var pair in |(31, 10), (314, 100), (3142, 1000), (31428, 10000), (314285, 100000),
  (3142857, 1000000), (31428571, 10000000), (314285714, 100000000)| do
    println(pair, ' -> ', r2cf(pair[0], pair[1]));
end.
{------------------------------------------------------- 107 continued-fraction}
##
function calc(fun: integer-> (integer, integer); n: integer): decimal;
begin
  var temp := decimal(0.0);
  for var ni := n to 1 step -1 do
  begin
    var (a, b) := fun(ni);
    temp := b / (a + temp);
  end;
  result := fun(0)[0] + temp;
end;

function fsqrt2(n: integer) := (if n > 0 then 2 else 1, 1);

function fnapier(n: integer) := (if n > 0 then n else 2, if n > 1 then n - 1 else 1);

function fpi(n: integer) := (if n > 0 then 6 else 3, (2 * n - 1) * (2 * n - 1));

println(calc(fsqrt2, 200));
println(calc(fnapier, 200));
println(calc(fpi, 10000));
{--------------------------------------- 108 convert-decimal-number-to-rational}
##
uses numlibabc;

function tofraction(s: string): fraction;
begin
  var period := s.IndexOf('.');
  result := Frc(s.Remove(period, 1).ToBigInteger, Power(10bi, s.Length - period - 1));
end;

var decimals := |0.9054054, 0.518518, 0.75|;
foreach var dec in decimals do
begin
  print(dec.ToString,'->');
  println(tofraction(dec.tostring));
end;
{------------------------------------------------------------ 109 copy-a-string}
begin
  var s: string := 'Hello';
  var s1 := s;
end.
{----------------------------------------------------- 110 copy-stdin-to-stdout}
##
Console.OpenStandardInput().CopyTo(Console.OpenStandardOutput());
{------------------- 111 count-how-many-vowels-and-consonants-occur-in-a-string}
// Count how many vowels and consonants occur in a string. Nigel Galloway: September 2nd., 2024
type Ctype = (Vowel,Consonant,Other);
function countCtype(n:string):Dictionary<Ctype,integer>;
begin
  var r:=countChars(Lst('a'..'z'),n.ToLower);
  var vowels:=r['a']+r['e']+r['i']+r['o']+r['u'];
  var consonants:=r.Values.Sum-vowels;
  result:=Dict(Lst((Vowel,vowels),(Consonant,consonants),(Other,n.Length-vowels-consonants)));
end;
begin
  println(countCtype('Now is the time for all good men to come to the aid of their country.'));
end.

{--------------------------------------------------------- 112 count-in-factors}
// https://rosettacode.org/wiki/Count_in_factors#PascalABC.NET

function Factorize(x: integer): List<integer>;
begin
  Result := new List<integer>;
  if x = 1 then
  begin
    Result.Add(1);
    exit
  end;
  var i := 2;
  repeat
    if x.Divs(i) then
    begin
      Result.Add(i);
      x := x div i;
    end
    else i += 1;
  until x = 1;
end;

begin
  var n := 22;
  (1..n).PrintLines(x -> $'{x,3}: {Factorize(x).JoinToString('' * '')}')
end.
{----------------------------------------------------------- 113 count-in-octal}
##
for var i:=0 to 20 do
  Println(Convert.ToString(i,8));
{----------------------------------------- 114 count-occurrences-of-a-substring}
function CountSubstrings(s,subs: string): integer := s.IndicesOf(subs).Count;

begin
  Print(CountSubstrings('the three truths','th'));
  Print(CountSubstrings('ababababab','abab'));
end.
{------------------------------------------------------ 115 count-the-coins-0-1}
function allcombinations(a: array of integer): sequence of array of integer;
begin
  result := a.Combinations(0);
  for var i := 1 to a.length do result := result + a.combinations(i);
end;

procedure coinsum(coins: array of integer; targetsum: integer; verbose: boolean := true);
begin
  println('Coins are', coins, 'target sum is ', targetsum);
  var combos := 0;
  var perms := 0;
  foreach var choice in allcombinations(coins) do
    if choice.sum = targetsum then
    begin
      combos += 1;
      if verbose then println(choice, 'sums to', targetsum);
      foreach var perm in choice.permutations do
      begin
        if verbose then println('    permutation:', perm);
        perms += 1;
      end
    end;
  println(combos, 'combinations', perms, 'permutations.');
  println;
end;

begin
  coinsum(arr(1, 2, 3, 4, 5), 6, true);
  coinsum(arr(1, 1, 2, 3, 3, 4, 5), 6, false);
  coinsum(arr(1, 2, 3, 4, 5, 5, 5, 5, 15, 15, 10, 10, 10, 10, 25, 100), 40, false);
end.
{---------------------------------------------------------- 116 count-the-coins}
##
function changes(amount: integer; coins: array of integer): int64;
begin
  var ways: array of int64;
  setLength(ways, amount + 1);
  ways[0] := 1;
  foreach var coin in coins do
    foreach var j in coin..amount do
      ways[j] += ways[j - coin];
  result := ways[amount]
end;

changes(100, |1, 5, 10, 25|).println;
changes(100000, |1, 5, 10, 25, 50, 100|).println;
{------------------------------------------------------------------- 117 crc-32}
type
  TCrc32 = array[0..255] of longword;

function CreateCrcTable(): TCrc32;
begin
  for var i: longword := 0 to 255 do
  begin
    var rem := i;
    for var j := 0 to 7 do
      if (rem and 1) > 0 then rem := (rem shr 1) xor $edb88320
      else rem := rem shr 1;
    result[i] := rem
  end;
end;

const
  Crc32Table = CreateCrcTable;

function Crc32(s: string): longword;
begin
  result := $ffffffff;
  foreach var c in s do
    result := (result shr 8) xor Crc32Table[(result and $ff) xor byte(c)];
  result := not result
end;

begin
  writeln('crc32 = ', crc32('The quick brown fox jumps over the lazy dog').ToString('X'));
end.
{------------------------------------------------------------ 118 create-a-file}
##
var f: textfile;
assignFile(f, '/output.txt');
rewrite(f);
close(f);
createdir('/docs');
assignFile(f, '/docs/output.txt');
rewrite(f);
close(f);
{-------------------------------- 119 create-a-two-dimensional-array-at-runtime}
begin
  var (m,n) := ReadInteger2;
  var a: array[,] of integer := new integer[m,n];
  a[0,0] := 1; a[m-1,n-1] := 55;
  a.Println;
  var a1 := MatrRandomInteger(m,n);
  a1.Println;
end.
{-------------------------------------- 120 create-an-object-at-a-given-address}
begin
  var pi: ^integer;
  New(pi);
  pi^ := 3;
  Writeln(pi,' ',pi^);
  pi^ := 5;
  Writeln(pi,' ',pi^);
  var pi1: ^integer := pi;
  pi1^ := 666;
  Writeln(pi1,' ',pi1^);
  Writeln(pi,' ',pi^);
end.
{---------------------------------------------------- 121 csv-data-manipulation}
begin
  var lines := ReadLines('data.csv').Select((line,i) -> begin
    if i = 0 then
      Result := line + ',SUM'
    else Result := line + ',' + line.Split(',').Sum(x -> x.ToInteger);
  end);
  WriteLines('outdata.csv',lines);
  lines.PrintLines;
end.
{------------------------------------------------------------- 122 cuban-primes}
const
  cutOff = 200;
  bigUn = 100000;
  chunks = 50;
  little = bigUn div chunks;

begin
  writeln('The first ', cutOff, ' cuban primes:');
  var primes := |int64(3), int64(5)|.ToList;
  var c := 0;
  var u: int64 := 0;
  var v: int64 := 1;
  var showEach := true;
  while true do
  begin
    var found := false;
    u += 6;
    v += u;
    var mx := real(v).sqrt.ceil;
    foreach var item in primes do
    begin
      if item > mx then break;
      if v mod item = 0 then
      begin
        found := true;
        break
      end;
    end;
    if not found then
    begin
      c += 1;
      if showEach then
      begin
        for var z := primes.last + 2 to v - 2 step 2 do
        begin
          var fnd := false;
          foreach var item in primes do
          begin
            if item > mx then break;
            if z mod item = 0 then
            begin
              fnd := true;
              break
            end;
          end;
          if not fnd then primes.Add(z);
        end;
        primes.Add(v);
        write(v:9);
        if c mod 10 = 0 then writeln;
        if c = cutOff then
        begin
          showEach := false;
          write('Progress to the ', bigUn, 'th cuban prime: ')
        end;
      end;
      if c mod little = 0 then
      begin
        write('.');
        if c = bigUn then break;
      end;
    end;
  end;
  writeln();
  writeln('The ', c, 'th cuban prime is ', v);
  writeln('Computation time was ', milliseconds / 1000, ' seconds');
end.
{----------------------------------------------------- 123 cubic-special-primes}
uses School;
begin
  var cubes := new List<integer>();
  for var i := 0 to 25 do
    cubes.Add(i * i * i);

  var lastPrime := 2;
  var limit := 16000;
  var primes := Primes(limit);

  foreach var g in primes do
    if cubes.Contains(g - lastPrime) then
    begin
      lastPrime := g;
      write(g, ' ');
    end;
end.
{----------------------------------------------- 124 cullen-and-woodall-numbers}
##
function cullen(n: integer) := n * power(2bi, n) + 1;

function woodall(n: integer) := n * power(2bi, n) - 1;

(1..20).select(x -> cullen(x)).println;
(1..20).select(x -> woodall(x)).println;
{-------------------------------------------- 125 cumulative-standard-deviation}
##
function sdcreator(): real-> real;
begin
  var Sum := 0.0;
  var Sum2 := 0.0;
  var N := 0;

  result := function(x: real): real ->
  begin
    N += 1;
    Sum += x;
    Sum2 += x * x;
    result := sqrt(Sum2 / N - Sum * Sum / (N * N));
  end;
end;

var sd := sdcreator();

foreach var value in |2, 4, 4, 4, 5, 5, 7, 9| do
  println(value, sd(value));
{----------------------------------------------------------------- 126 currency}
##
var items := dict(arr(('hamburger', (decimal(5.5), decimal(4000000000000000))),
                      ('milkshake', (decimal(2.86), decimal(2)))));
var tax_rate := decimal(0.0765);
var total_before_tax := decimal(0);

foreach var item in items.keys do
begin
  var (price, quant) := items[item];
  var ext := price * quant;
  total_before_tax := total_before_tax + ext;
end;
WritelnFormat('Total before tax {0:f2}', total_before_tax);

var tax := tax_rate * total_before_tax;
WritelnFormat('Tax               {0:f2}', tax);

var total := total_before_tax + tax;
WritelnFormat('Total with tax   {0:f2}', total);
{----------------------------------------------------------- 127 curzon-numbers}
##
function isCurzon(n: integer; k: biginteger) := (Power(k, n) + 1) mod (k * n + 1) = 0;

function curzonnumbers(k: integer): sequence of integer;
begin
  var n := 1;
  while true do
  begin
    if iscurzon(n, k) then yield n;
    n += 1;
  end;
end;

foreach var k in |2, 4, 6, 8, 10| do
begin
  var i := 1;
  println('Curzonnumbers with base', k);
  foreach var n in curzonnumbers(k) do
  begin
    Write(n:5);
    if (i mod 10) = 0 then println;
    if i = 50 then break;
    i += 1;
  end;
  println('1000th Curzon number', curzonnumbers(k).Skip(999).First);
  println;
end;
{-------------------------------------------------------------------- 128 cusip}
function IsCusip(s: string): boolean;
begin
  result := false;
  if (s.Length <> 9) then exit;
  var sum := 0;
  var v := 0;
  for var i := 1 to 8 do
  begin
    var c := s[i];
    if c.isdigit then
      v := c.todigit
    else if (c >= 'A') and (c <= 'Z') then
      v := ord(c) - ord('A') + 10
    else if c = '*' then
      v := 36
    else if c = '@' then
      v := 37
    else if c = '#' then
      v := 38;
    if (i mod 2) = 0 then
      v := v * 2;
    sum += (v div 10) + (v mod 10);
  end;
  var check := (10 - (sum mod 10)) mod 10;
  result := s[9].todigit = check;
end;

begin
  var candidates := |'037833100', '17275R102', '38259P508', '594918104', '68389X106', '68389X105'|;
  foreach var candidate in candidates do
    println(candidate, if IsCusip(candidate) then 'correct' else 'incorrect');
end.
{----------------------------------------------------------- 129 damm-algorithm}
var table := Matr(
  |0, 3, 1, 7, 5, 9, 8, 6, 4, 2|,
  |7, 0, 9, 2, 1, 5, 4, 8, 6, 3|,
  |4, 2, 0, 6, 8, 7, 1, 3, 5, 9|,
  |1, 7, 5, 0, 9, 8, 3, 4, 2, 6|,
  |6, 1, 2, 3, 0, 4, 5, 9, 7, 8|,
  |3, 6, 7, 4, 2, 0, 9, 5, 8, 1|,
  |5, 8, 6, 9, 7, 2, 0, 1, 3, 4|,
  |8, 9, 4, 5, 3, 6, 2, 0, 1, 7|,
  |9, 4, 3, 8, 6, 1, 7, 2, 0, 5|,
  |2, 5, 8, 1, 4, 3, 6, 7, 9, 0|
);

function Damn(s: string): boolean;
begin
  var interim := 0;
  foreach var c in s do
    interim := table[interim, c.ToDigit];
  Result := interim = 0;
end;

begin
  var numbers := Arr(5724, 5727, 112946, 112949);
  foreach var num in numbers do
    if Damn(num.ToString) then
      Println(num, 'is valid')
    else Println(num, 'is invalid')
end.
{-------------------------------------------------------------- 130 date-format}
begin
  var today := DateTime.Now;
  Println(today.ToString('yyyy-MM-dd'));
  Println($'{today:D}');
end.
{---------------------------------------------------------- 131 day-of-the-week}
const Sunday = System.DayOfWeek.Sunday;

begin
  (2008..2121).Where(y -> DateTime.Create(y,12,25).DayOfWeek = Sunday).Println
end.
{-------------------------------------------------------- 132 deceptive-numbers}
uses School;

function Deceptives(num: integer): List<integer>;
begin
  Result := new List<integer>;
  var n := 2;
  var r:BigInteger := 1;
  while Result.Count < num do
  begin
    if not n.IsPrime and (r mod n = 0) then
      Result.Add(n);
    n += 1;
    r := 10*r + 1;
  end;
end;

begin
  Deceptives(25).Println;
end.
{--------------------------------------------------------- 133 deconvolution-1d}
##
function deconv(g, f: array of real): array of real;
begin
  var h: array of real;
  setlength(h, g.length - f.length + 1);
  for var n := 0 to h.length - 1 do
  begin
    h[n] := g[n];
    var lower: integer;
    if n >= f.length then
      lower := n - f.length + 1;
    for var i := lower to n - 1 do
      h[n] -= h[i] * f[n - i];
    h[n] /= f[0];
  end;
  result := h;
end;

var h := |-8.0, -9, -3, -1, -6, 7|;
var f := |-3.0, -6, -1, 8, -6, 3, -1, -9, -9, 3, -2, 5, 2, -2, -7, -1|;
var g := |24.0, 75, 71, -34, 3, 22, -45, 23, 245, 25, 52, 25, -67, -96,
          96, 31, 55, 36, 29, -43, -7|;
h.Println;
deconv(g, f).Println;
f.Println;
deconv(g, h).Println;
{------------------------------------------- 134 decorate-sort-undecorate-idiom}
##
function Schwartzian<T, TKey>(source: sequence of T; decorator: T-> TKey) :=
   source.Select(x -> (x, decorator(x)))
   .orderby(x -> x[1])
   .select(x -> x[0]);

var test: sequence of string := |'Rosetta', 'Code', 'is', 'a', 'programming', 'chrestomathy', 'site'|;
Schwartzian(test, x -> x.length).Println;
{--------------------------------------- 135 decreasing-contiguous-subsequences}
// Decreasing contiguous subsequences. Nigel Galloway: September 11th., 2024
var f: file of integer;
type Tcat=(LT4,LT8,LT12,LT25,GT25);
function cat(n:integer;g:integer):Tcat;
begin
  var t:=100-(g/n)*100;
  Result:=if t<4.0 then LT4 else if t<8.0 then LT8 else if t<12.0 then LT12 else if t<25.0 then LT25 else GT25;
end;
function fN(f:file of integer;n:integer;g:integer):sequence of Tcat;
begin
  if not eof(f) then begin
    var t:= f.read;
    if t<=g then begin yield sequence fN(f,n,t); exit; end;
    if n>g then yield cat(n,g);
    yield sequence fN(f,t,t);
    exit;
  end;
  if n>g then yield cat(n,g);
end;
begin
  assign(f,'test.dat');
  reset(f);
  var t:=f.read;
  print(fN(f,t,t).eachCount);
  close(f);
end.
{--------------------------------------------- 136 define-a-primitive-data-type}
type RangeInt = record
  n: integer;
public
  constructor(nn: integer);
  begin
    if nn not in 1..10 then
      raise new System.ArgumentOutOfRangeException;
    n := nn;
  end;
  function ToString: string; override := n.ToString;
  static function operator implicit (n: integer): RangeInt := new RangeInt(n);
  static function operator+(a,b: RangeInt): RangeInt := a.n + b.n;
  static function operator-(a,b: RangeInt): RangeInt := a.n - b.n;
  static function operator*(a,b: RangeInt): RangeInt := a.n * b.n;
  static function operator/(a,b: RangeInt): real := a.n / b.n;
  static function operator div(a,b: RangeInt): RangeInt := a.n div b.n;
  static function operator mod(a,b: RangeInt): RangeInt := a.n mod b.n;
end;

function RInt(n: integer) := new RangeInt(n);

begin
  var a: RangeInt := 7;
  var b: RangeInt := 3;
  Print(a + b, a - b, a div b, a mod b);
  Print(a * b); // ArgumentOutOfRangeException exception
end.
{----------------------------------------------------------- 137 demings-funnel}
const
  Dxs: array of real =
            (-0.533,  0.270,  0.859, -0.043, -0.205, -0.127, -0.071,  0.275,
              1.251, -0.231, -0.401,  0.269,  0.491,  0.951,  1.150,  0.001,
             -0.382,  0.161,  0.915,  2.080, -2.337,  0.034, -0.126,  0.014,
              0.709,  0.129, -1.093, -0.483, -1.193,  0.020, -0.051,  0.047,
             -0.095,  0.695,  0.340, -0.182,  0.287,  0.213, -0.423, -0.021,
             -0.134,  1.798,  0.021, -1.099, -0.361,  1.636, -1.134,  1.315,
              0.201,  0.034,  0.097, -0.170,  0.054, -0.553, -0.024, -0.181,
             -0.700, -0.361, -0.789,  0.279, -0.174, -0.009, -0.323, -0.658,
              0.348, -0.528,  0.881,  0.021, -0.853,  0.157,  0.648,  1.774,
             -1.043,  0.051,  0.021,  0.247, -0.310,  0.171,  0.000,  0.106,
              0.024, -0.386,  0.962,  0.765, -0.125, -0.289,  0.521,  0.017,
              0.281, -0.749, -0.149, -2.436, -0.909,  0.394, -0.113, -0.598,
              0.443, -0.521, -0.799,  0.087);

  Dys: array of real =
             (0.136,  0.717,  0.459, -0.225,  1.392,  0.385,  0.121, -0.395,
              0.490, -0.682, -0.065,  0.242, -0.288,  0.658,  0.459,  0.000,
              0.426,  0.205, -0.765, -2.188, -0.742, -0.010,  0.089,  0.208,
              0.585,  0.633, -0.444, -0.351, -1.087,  0.199,  0.701,  0.096,
             -0.025, -0.868,  1.051,  0.157,  0.216,  0.162,  0.249, -0.007,
              0.009,  0.508, -0.790,  0.723,  0.881, -0.508,  0.393, -0.226,
              0.710,  0.038, -0.217,  0.831,  0.480,  0.407,  0.447, -0.295,
              1.126,  0.380,  0.549, -0.445, -0.046,  0.428, -0.074,  0.217,
             -0.822,  0.491,  1.347, -0.141,  1.230, -0.044,  0.079,  0.219,
              0.698,  0.275,  0.056,  0.031,  0.421,  0.064,  0.721,  0.104,
             -0.729,  0.650, -1.103,  0.154, -1.720,  0.051, -0.385,  0.477,
              1.537, -0.901,  0.939, -0.411,  0.341, -0.411,  0.106,  0.224,
             -0.947, -1.424, -0.542, -1.032);

function stddev(a: array of real) := a.Sum(x -> Sqr(x - a.average) / a.length).Sqrt;

function funnel(a: array of real; rule: (real, real) -> real): array of real;
begin
  var x := 0.0;
  setlength(result, a.length);
  foreach  var val in a index i do
  begin
    result[i] := x + val;
    x := rule(x, val)
  end;
end;

procedure experiment(lab: string; r: (real, real) -> real);
begin
  var rxs := funnel(Dxs, r);
  var rys := funnel(Dys, r);
  lab.println;
  writeln('Mean x, y:    ', rxs.average:6:4, rys.average:8:4);
  writeln('Std dev x, y: ', stddev(rxs):6:4, stddev(rys):8:4);
  println;
end;

begin
  experiment('Rule 1', (z, dz) -> 0.0);

  experiment('Rule 2', (z, dz) -> -dz);

  experiment('Rule 3', (z, dz) -> -(z + dz));

  experiment('Rule 4', (z, dz) -> z + dz);
end.
{------------------------------------------------------- 138 department-numbers}
begin
  Writeln('Police  Fire    Sanitation');
  for var p := 2 to 6 step 2 do
  for var f := 1 to 7 do
  for var s := 1 to 7 do
    if (p <> f) and (f <> s) and (p <> s) and (p + f + s = 12) then
      Writeln($'{p,-8}{f,-8}{s,-8}');
end.
{-------------------------------------------------------- 139 descending-primes}
##
uses School;

function DescendingSeq(n: integer): sequence of integer;
begin
  if n = 0 then
    for var x := 9 downto 1 do
      yield sequence DescendingSeq(x) + x
  else for var x := n*10 + n mod 10 - 1 downto n*10  + 1 do
    yield sequence DescendingSeq(x) + x;
end;

DescendingSeq(0).Order.Where(n -> n.IsPrime).Print;
{-------------------------------------------------- 140 detect-division-by-zero}
##
var x := 1;
var y := 0;
try
  var z := x div y;
except
  on System.DivideByZeroException do
    writeln('Integer division by 0');
end;
{------------------------ 141 determine-if-a-string-has-all-the-same-characters}
procedure Analyze(s: String);
begin
  writeln('Examining ''', s, ''' which has a length of ', s.Length);
  if s.Length > 1 Then
    foreach var c in s index i do
      if c <> s[1] Then
      begin
        WriteLn('    Not all characters in the string are the same.');
        WriteLn('    ''', c, ''' (0x', ord(c).tostring('x'), ')', ' is different at position ', i + 1);
        exit;
      end;
  WriteLn('    All characters in the string are the same.')
end;

begin
  var strs := |'', '    ', '2', '333', '.55', 'tttTTT', '4444 444k'|;
  foreach var s In strs do
    Analyze(s);
end.
{-------------------------- 142 determine-if-a-string-has-all-unique-characters}
##
var input := |'', '.', 'abcABC', 'XYZ ZYX', '1234567890ABCDEFGHIJKLMN0PQRSTUVWXYZ'|;
foreach var s in input do
  Writeln('''', s, '''', ' (Length ', s.Length, ') ',
     String.Join(', ',
     s.Select((c, i) -> (c, i))
     .GroupBy(t -> t[0])
     .Where(g -> g.Count() > 1)
     .Select(g -> '''' + g.Key + '''(0X' + Ord(g.key).ToString('x') + ') [' +
        String.Join(', ', g.Select(t -> t[1])) + ']')
     .DefaultIfEmpty('All characters are unique.')));
{------------------------------------- 143 determine-if-a-string-is-collapsible}
##
function Collapse(s: String) :=
  if String.IsNullOrEmpty(s) Then ''
  else s[1] +
       new String(Range(2, s.Length)
       .Where(i -> s[i] <> s[i - 1])
       .Select(i -> s[i])
       .ToArray);

var input :=
|'',
'The better the 4-wheel drive, the further you''ll be from help when ya get stuck!',
'headmistressship',
'"If I were two-faced, would I be wearing this one? --- Abraham Lincoln "',
'..1111111111111111111111111111111111111111111111111111111111111117777888',
'I never give ''em hell, I just tell the truth, and they think it''s hell. ',
'                                                    --- Harry S Truman  '|;

foreach var s in input do
begin
  Writeln('old: ', s.Length, ' «««', s, '»»»');
  var c := Collapse(s);
  WriteLn('new: ', c.Length, ' «««', c, '»»»')
end;
{----------------------------------------- 144 determine-if-a-string-is-numeric}
function IsNumeric(s: string): boolean;
begin
  var i: integer;
  Result := integer.TryParse(s,i)
end;

begin
  var s := '123';
  if IsNumeric(s) then
    Print('string is numeric')
end.
{-------------------------------------------------- 145 determine-sentence-type}
function SentenceType(s: string): char;
begin
  case s[^1] of
    '?': Result := 'Q';
    '!': Result := 'E';
    '.': Result := 'S';
    else Result := 'N';
  end;
end;

begin
  var ss := Arr('hi there, how are you today?',
    'I''d like to present to you the washing machine 9001.',
    'You have been nominated to win one of these!',
    'Just make sure you don''t break it');
  foreach var s in ss do
    Println(s,'->',SentenceType(s));
end.
{-------------------------------------------------- 146 dice-game-probabilities}
##
uses numlibabc;

function combos(sides: array of integer; n: integer): array of biginteger;
begin
  if n = 0 then
  begin
    result := |1bi|;
    exit
  end;
  result := arrfill(sides.Max * n + 1, 0bi);
  foreach var v in combos(sides, n - 1) index i do
  begin
    if v = 0 then continue;
    foreach var s in sides do
      result[i + s] += v;
  end;
end;

procedure winning(sides1: array of integer; n1: integer; sides2: array of integer; n2: integer);
begin
  var p1 := combos(sides1, n1);
  var p2 := combos(sides2, n2);
  var (win, loss, tie) := (0bi, 0bi, 0bi);
  foreach var x1 in p1 index i do
  begin
    win += x1 * (p2?[:i]).sum;
    tie += x1 * (p2?[i:i + 1]).sum;
    loss += x1 * (p2?[i + 1:]).sum;
  end;
  var s := p1.Sum * p2.Sum;
  var winrat := Frc(win, s);
  var tierat := Frc(tie, s);
  var lossrat := Frc(loss, s);
  println('P1 win: ', winrat.ToReal, winrat);
  println('tie   : ', tierat.ToReal, tierat);
  println('P2 win: ', lossrat.ToReal, lossrat);
  println;
end;

winning(arr(1..4), 9, arr(1..6), 6);
winning(arr(1..10), 5, arr(1..7), 6);
//winning(|1, 2, 3, 5, 9|, 700, |1, 2, 3, 4, 5, 6|, 800);
{--------------------------------- 147 digital-root-multiplicative-digital-root}
##
function MulDigitalRoot(num: int64): (integer, integer);
begin
  var mulpersistence := 0;
  while num > 9 do
  begin
    num := num.ToString.ToCharArray.Select(x -> x.ToDigit).Aggregate((x, y) -> x * y);
    mulpersistence += 1;
  end;
  result := (mulpersistence, integer(num));
end;

var nums := |123321, 7739, 893, 899998|;
foreach var num in nums do
begin
  var t := MulDigitalRoot(num);
  Writeln(num, ' has multiplicative persistence ', t[0], ' and multiplicative digital root ', t[1])
end;

var twidth := 5;
var table := new List<int64>[10];
for var i := 0 to 9 do
  table[i] := new List<int64>();
var number := -1;
while (table.Any(x -> x.Count < twidth)) do
begin
  number += 1;
  var t := MulDigitalRoot(number);
  if (table[t[1]].Count < twidth) then
    table[t[1]].Add(number);
end;
for var i := 0 to 9 do
  WriteLn(i, ' : [', string.Join(', ', table[i]), ']');
{------------------------------------------------------------- 148 digital-root}
##
function DigitalRoot(num: int64): (integer, integer);
begin
  var additivepersistence := 0;
  while num > 9 do
  begin
    num := num.ToString.ToCharArray.Sum(x -> x.ToDigit);
    additivepersistence += 1;
  end;
  result := (additivepersistence, integer(num));
end;

var nums := |627615, 39390, 588225, 393900588225|;
foreach var num in nums do
begin
  var t := DigitalRoot(num);
  Writeln(num, ' has additive persistence ', t[0], ' and digital root ', t[1])
end;
{------------------------------------------------------ 149 dijkstras-algorithm}
type
  Edge = auto class
    start, &end: char;
    cost: real;
  end;

  Graph = auto class
    edges: array of Edge;
    vertices: HashSet<char>;

    constructor(params edges: array of (char, char, real));
    begin
      Self.edges := edges.Select(e -> new Edge(e[0], e[1], e[2])).ToArray;
      Self.vertices := new HashSet<char>(
        Self.edges.Select(e -> e.start) + Self.edges.Select(e -> e.end)
      );
    end;

    function Dijkstra(source, dest: char): sequence of char;
    begin
      assert(vertices.Contains(source));

      var inf := real.MaxValue;
      var dist := Dict(vertices.Select(v -> (v, inf)));
      var previous := Dict(vertices.Select(v -> (v, ' ')));
      dist[source] := 0;

      var q := vertices.ToHashSet;
      var neighbours := Dict(vertices.Select(v -> (v, new HashSet<(char, real)>)));

      foreach var edge in edges do
      begin
        neighbours[edge.start].Add((edge.end, edge.cost));
        neighbours[edge.end].Add((edge.start, edge.cost));
      end;

      while q.Count > 0 do
      begin
        var u := q.MinBy(v -> dist[v]);
        q.Remove(u);

        if (dist[u] = inf) or (u = dest) then
          break;

        foreach var (v, cost) in neighbours[u] do
        begin
          var alt := dist[u] + cost;
          if alt < dist[v] then
          begin
            dist[v] := alt;
            previous[v] := u;
          end;
        end;
      end;

      var s := new List<char>;
      var u := dest;

      while previous[u] <> ' ' do
      begin
        s.Insert(0, u);
        u := previous[u];
      end;

      s.Insert(0, u);
      Result := s;
    end;
  end;

begin
  var gr := new Graph(
    ('a', 'b', 7.0), ('a', 'c', 9.0), ('a', 'f', 14.0),
    ('b', 'c', 10.0), ('b', 'd', 15.0), ('c', 'd', 11.0),
    ('c', 'f', 2.0), ('d', 'e', 6.0), ('e', 'f', 9.0)
  );

  gr.Dijkstra('a', 'e').Println;
end.
{-------------------------------------- 150 dinesmans-multiple-dwelling-problem}
const
  Baker = 0; Cooper = 1; Fletcher = 2; Miller = 3; Smith = 4;
  names: array of string = ('Baker', 'Cooper', 'Fletcher', 'Miller', 'Smith');

begin
  var floors := arr(1..5);
  repeat
    if (floors[Baker] <> 5) and
       (floors[Cooper] <> 1) and
       (floors[Fletcher] not in [1, 5]) and
       (floors[Miller] > floors[Cooper]) and
       (abs(floors[Smith] - floors[Fletcher]) <> 1) and
       (abs(floors[Fletcher] - floors[Cooper]) <> 1) then
    begin
      foreach var floor in floors index person do
        println(names[person], 'lives on floor', floor);
      exit
    end;
  until not NextPermutation(floors);
  println('No solution found.');
end.
{--------------------------------------------------------- 151 disarium-numbers}
##
function disariums: sequence of integer;
begin
  var n := 0;
  while true do
  begin
    var sum := 0.0;
    foreach var x in n.ToString.ToCharArray index i do
      sum := sum + power((x.todigit), i + 1);
    if sum = n then yield (n);
    n += 1;
  end;
end;

disariums.Take(19).Println;
{----------------------------- 152 distribution-of-0-digits-in-factorial-series}
##
var fact := 1bi;
var sum := 0.0;
println('The mean proportion of zero digits in factorials up to the following are:');
for var n := 1 to 10_000 do
begin
  fact *= n;
  var factstr := fact.toString;
  var zeros  := factstr.count(x -> x = '0');
  sum := sum + zeros / factstr.length;
  if n in |100, 1000, 10000| then
    writeln(n:5, sum / n:20);
end;
{--------------------------------------------- 153 diversity-prediction-theorem}
##
function AverageSquareDiff(a: real; predictions: array of real) :=
   predictions.Select(x -> (x - a).Sqr).Average;

procedure DiversityTheorem(truth: real; predictions: array of real);
begin
  var average := predictions.Average;
  WriteLn('average-error: ', AverageSquareDiff(truth, predictions));
  WriteLn('crowd-error:   ', (truth - average).Sqr);
  WriteLn('diversity:     ', AverageSquareDiff(average, predictions));
end;

DiversityTheorem(49.0, [48.0, 47.0, 51.0]);
DiversityTheorem(49.0, [48.0, 47.0, 51.0, 42.0])
{---------------------------------------------------------------- 154 dns-query}
##
var ip := System.Net.Dns.GetHostEntry('www.kame.net');
foreach var address in ip.AddressList do
  println(address);
{------------------------------------------------------------ 155 doomsday-rule}
const
  days: array of string = ('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');
  dooms: array of array of integer = ((3, 7, 7, 4, 2, 6, 4, 1, 5, 3, 7, 5),
                                      (4, 1, 7, 4, 2, 6, 4, 1, 5, 3, 7, 5));

function isleap(year: integer) := (year mod 4 = 0) and ((year mod 100 <> 0) or (year mod 400 = 0));

function weekday(year, month, day: integer): string;
begin
  var c := year div 100;
  var r := year mod 100;
  var s := r div 12;
  var t := r mod 12;
  var c_anchor := (5 * (c mod 4) + 2) mod 7;
  var doomsday := (s + t + (t div 4) + c_anchor) mod 7;
  var anchorday := dooms[if isleap(year) then 1 else 0][month - 1];
  var weekday := (doomsday + day - anchorday + 7) mod 7;
  result := days[weekday];
end;

begin
  var dates := |(1800, 1, 6), (1875, 3, 29), (1915, 12, 7), (1970, 12, 23),
                (2043, 5, 14), (2077, 2, 12), (2101, 4, 2)|;
  foreach var d in dates do
    writeln(d[0], '-', d[1]:2, '-', d[2]:2, ' -> ', weekday(d[0], d[1], d[2]));
end.
{-------------------------------------------------------------- 156 dot-product}
##
function DotProduct(a, b: array of real) := a.Zip(b, (x, y) -> x * y).Sum;

DotProduct(|1.0, 3, -5|, |4.0, -2, -1|).println;
{-------------------------------------------- 157 doubly-linked-list-definition}
type Node<T> = auto class
  data: T;
  prev,next: Node<T>;
end;

type
  MyLinkedList<T> = class
    first, last: Node<T>;
    procedure AddFirst(x: T);
    begin
      if first = nil then
      begin
        first := new Node<T>(x,nil,nil);
        last := first
      end
      else
      begin
        var p := new Node<T>(x,nil,first);
        first.prev := p;
        first := p;
      end;
    end;
    procedure AddLast(x: T);
    begin
      if first = nil then
      begin
        first := new Node<T>(x,nil,nil);
        last := first
      end
      else
      begin
        var p := new Node<T>(x,last,nil);
        last.next := p;
        last := p;
      end;
    end;
    procedure AddAfter(p: Node<T>; x: T);
    begin
      if last = p then
        AddLast(x)
      else begin
        var pp := new Node<T>(x,p,p.next);
        p.next := pp;
        pp.next.prev := pp;
      end
    end;
    procedure PrintList();
    begin
      var p := first;
      while p<>nil do
      begin
        Print(p.data);
        p := p.next;
      end;
    end;
    procedure PrintBack();
    begin
      var p := last;
      while p<>nil do
      begin
        Print(p.data);
        p := p.prev;
      end;
    end;
  end;

begin
  var lst := new MyLinkedList<integer>;
  lst.AddFirst(2); lst.AddFirst(3);
  lst.AddLast(5);
  lst.AddAfter(lst.first,555);
  lst.PrintList;
  Println;
  lst.PrintBack;
end.
{------------------------------------ 158 doubly-linked-list-element-definition}
type Node<T> = auto class
  data: T;
  prev,next: Node<T>;
end;
{------------------------------------- 159 doubly-linked-list-element-insertion}
type Node<T> = auto class
  data: T;
  prev,next: Node<T>;
end;

type
  MyLinkedList<T> = class
    first, last: Node<T>;
    procedure AddLast(x: T);
    begin
      if first = nil then
      begin
        first := new Node<T>(x,nil,nil);
        last := first
      end
      else
      begin
        var p := new Node<T>(x,last,nil);
        last.next := p;
        last := p;
      end;
    end;
    procedure AddAfter(p: Node<T>; x: T);
    begin
      if last = p then
        AddLast(x)
      else begin
        var pp := new Node<T>(x,p,p.next);
        p.next := pp;
        pp.prev.next := pp;
      end
    end;
  end;
{--------------------------------------------- 160 doubly-linked-list-traversal}
begin
  var lst := new LinkedList<integer>(1..10);
  var current := lst.First;
  while current <> nil do
  begin
    Print(current.Value);
    current := current.Next;
  end;
end.
{------------------------------------------------------------- 161 dragon-curve}
uses Turtle;

var
  Atom,FStr,XStr,YStr: string;
  angle,len,x0,y0: real;
  n: integer;

procedure Init1; // Dragon
begin
  (Atom,FStr,XStr,YStr) := ('fx','f','x+yf+','-fx-y');
  (angle,len,n,x0,y0) := (90,3,15,300,450);
end;

procedure RunStr(s: string; n: integer);
begin
  foreach var c in s do
    case c of
      '+': Turn(angle);
      '-': Turn(-angle);
      'f','F': if n>0 then RunStr(FStr,n-1) else Forw(len);
      'x','X': if n>0 then RunStr(XStr,n-1);
      'y','Y': if n>0 then RunStr(YStr,n-1);
      else Print('error')
    end;
end;

begin
  Init1;
  ToPoint(x0,y0);
  SetWidth(0.5);
  Down;
  RunStr(Atom,n);
  Up;
end.
{------------------------------------------------------------- 162 draw-a-pixel}
uses GraphWPF;

begin
  Window.SetSize(320,240);
  SetPixel(100,100,Colors.Red);
end.
{----------------------------------------------------- 163 draw-a-rotating-cube}
uses Graph3D;

begin
  var Cube := Box(Origin,Sz3D(3,3,3),Colors.Green);
  Cube.AnimRotate(OrtZ,180).Forever.Begin
end.
{-------------------------------------------------------- 164 duffinian-numbers}
uses school;

function is_duffinian(x: integer) :=
    (gcd(x, divisors(x).Sum) = 1) and
    (divisors(x).ToArray.Length > 2);

begin
  var count := 0;
  var i := 0;
  writeln('First 50 Duffinian numbers:');
  while count < 50 do
  begin
    if is_duffinian(i) then
    begin
      write(i:4);
      count += 1;
      if count mod 10 = 0 then writeln;
    end;
    i += 1
  end;

  count := 0;
  i := 0;
  writeln;
  writeln('First 15 Duffinian triplets:');
  while count < 15 do
  begin
    if is_duffinian(i) and is_duffinian(i + 1) and is_duffinian(i + 2) then
    begin
      writeln(i:6, i + 1:6, i + 2:6);
      count += 1;
      i += 3;
    end;
    i += 1;
  end;
end.
{---------------------------------------------- 165 dutch-national-flag-problem}
type
  colors = (red, white, blue);

procedure threeWayPartition(a: array of colors; mid: colors);
begin
  var (i, j) := (0, 0);
  var k := a.High;
  while j <= k do
    if a[j] < mid then
    begin
      swap(a[i], a[j]);
      i += 1;
      j += 1;
    end
    else if a[j] > mid then
    begin
      swap(a[j], a[k]);
      k -= 1;
    end
    else j += 1;
end;

begin
  var balls: array of colors;
  repeat
    balls := ArrGen(10, i -> |red, white, blue|.randomelement);
  until balls <> balls.Sorted;

  println('Original ball order:', balls);
  threewaypartition(balls, white);
  println('Sorted ball order:  ', balls);
  assert(balls <> balls.sorted, 'Not sorted!');
end.
{-------------------------------------------------------- 166 egyptian-division}
function egyptian_divmod(dividend, divisor: integer): (integer, integer);
begin
  assert(divisor <> 0);
  var pwrs := |1|;
  var dbls := |divisor|;
  while dbls.Last <= dividend do
  begin
    pwrs := pwrs + |pwrs.Last * 2|;
    dbls := dbls + |pwrs.last * divisor|;
  end;
  var (ans, accum) := (0, 0);
  for var i := pwrs.Length - 1 to 0 step -1 do
    if accum + dbls[i] <= dividend then
    begin
      accum += dbls[i];
      ans += pwrs[i];
    end;
  result :=  (ans, abs(accum - dividend));
end;

begin
  var (dividend, divisor) := (580, 34);
  var (quotient, remainder) := egyptian_divmod(dividend, divisor);
  println(dividend, 'divided by', divisor, 'using the Egyption method is', quotient, 'remainder', remainder);
end.
{------------------------------------------------------------- 167 emirp-primes}
const
  maxi = maxint.Sqrt.Floor;

function gen_primes: sequence of integer;
begin
  yield 2;
  var D := new Dictionary<integer, integer>;
  var q := 3;
  while True do
  begin
    if q not in D then
    begin
      if q < maxi then // prevent overflow
        D[q * q] := q;
      yield q;
    end
    else
    begin
      var p := D[q];
      D -= q;
      var x := q + p + p;
      while x in D do x += p + p;
      D[x] := p;
    end;
    q += 2;
  end;
end;

function reverse(n: integer) := strtoint(reversestring(n.ToString));

function gen_emirp: sequence of integer;
begin
  var decimals := 2;
  while true do
  begin
    var primes := gen_primes.SkipWhile(x -> x < 10 ** (decimals - 1))
                            .TakeWhile(x -> x < 10 ** decimals)
                            .ToHashSet;
    foreach var prime in primes do
    begin
      var revprime := reverse(prime);
      if (revprime <> prime) and primes.Contains(revprime) then yield (prime);
    end;
    decimals += 1;
  end;
end;

begin
  println('The first 20 emirps are:');
  gen_emirp.Take(20).Println;
  println;
  println('The emirps between 7700 and 8000 are:');
  gen_emirp.SkipWhile(p -> p < 7700).TakeWhile(p -> p < 8000).println;
  println;
  print('The 10,000th emirp is');
  gen_emirp.Skip(10_000 - 1).First.Println;
end.
{------------------------------------------------------------ 168 empty-program}
##
{------------------------------------------------------------- 169 empty-string}
// Empty string. Nigel Galloway: September 27th., 2024
##
var emptyString:=System.string.Empty;
(emptyString=System.string.Empty).Println;
(emptyString<>System.string.Empty).Println;
{---------------------------------------------------------- 170 engel-expansion}
uses numlibabc;

function engel(x: fraction): sequence of biginteger;
begin
  result := new list<biginteger>;
  while x.numerator <> 0 do
  begin
    var a := (x.denominator + x.numerator - 1) div x.numerator;
    result := result + a;
    x := x * a - 1;
  end;
end;

function tofraction(s: string): fraction;
begin
  var period := s.IndexOf('.');
  result := Frc(s.Remove(period, 1).ToBigInteger, Power(10bi, s.Length - period - 1));
end;

function fromEngel(engel: sequence of biginteger): decimal;
begin
  var sum: decimal := 0;
  var prod: decimal := 1;
  foreach var e in engel do
  begin
    var r: decimal := decimal(1 / e);
    prod := prod * r;
    sum := sum + prod;
  end;
  result := sum;
end;

begin
  foreach var val in |'3.14159265358979', '2.71828182845904', '1.414213562373095', '7.59375',
  '3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679821480865132823066470938446095505822317253594081284811174502841027019385211',
  '2.71828182845904523536028747135266249775724709369995957496696762772407663035354759457138217852516642743',
  '1.4142135623730950488016887242096980785696718753769480731766797379907324784621070388503875343276415727350138462309122970249248360558507372126441214970999358314132226659275055927558'| do
  begin
    var e := engel(tofraction(val));
    println('Value: ', val);
    println('Engel expansion: ', e.Take(30));
    println('Number of terms: ', e.count);
    println('Back to rational:', fromengel(e));
    println;
  end;
end.
{------------------------------------------------------------------ 171 entropy}
function entropy(s: string): real;
begin
  result := 0.0;
  foreach var c in s.distinct do
  begin
    var freq := s.count(x -> x = c) / s.length;
    result += -freq * log2(freq);
  end;
end;

begin
  entropy('1223334444').println;
end
{------------------------------------------------------------- 172 enumerations}
type MyEnum = (One, Two = 2, Three = 3);

begin
  var my: MyEnum := One;
  Print(my);
end.
{---------------------------------------------------- 173 environment-variables}
##
system.Environment.GetEnvironmentVariable('TEMP').Println;
{------------------------------------------- 174 equal-prime-and-composite-sums}
function isPrime(n: integer): boolean;
begin
  if (n mod 2 = 0) and (n > 2) then
  begin
    result := false;
    exit
  end;
  var i := 3;
  while i <= sqrt(n) do
  begin
    if n mod i = 0 then
    begin
      result := false;
      exit;
    end;
    i += 2;
  end;
  result := true;
end;

begin
  var count := 0; var n := 2; var m := 1;
  var sumP: int64 := 5; var sumC: int64 := 4;
  var numP := 3; var numC := 4;
  writeln( '            sum    primes  composites');

  repeat
    if sumC > sumP then
    begin
      repeat numP += 2 until isPrime(numP);
      sumP += numP;
      n += 1;
    end;
    if sumP > sumC then
    begin
      repeat numC += 1 until not isPrime(numC);
      sumC += numC;
      m += 1;
    end;
    if sumP = sumC then
    begin
      writeln(sumP:15, n:10, m:12);
      count += 1;
      repeat numC += 1 until not isPrime(numC);
      sumC += numC;
      m += 1;
    end
  until count >= 10
end.
{-------------------------------------------------------- 175 equilibrium-index}
##
function eqindex2Pass(data: array of integer): sequence of integer;
begin
  var (suml, sumr, ddelayed) := (0, data.sum, 0);
  foreach var d in data index i do
  begin
    suml += ddelayed;
    sumr -= d;
    ddelayed := d;
    if suml = sumr then
      yield i
  end;
end;

var d := ||-7, 1, 5, 2, -4, 3, 0|, |2, 4, 6|, |2, 9, 2|, |1, -1, 1, -1, 1, -1, 1||;

foreach var data in d do
  println('d =', data, '->', eqindex2pass(data));
{---------------------------------------------------- 176 erd-s-nicolas-numbers}
const
  max_number = 100_000_000;

begin
  var dsum := arrfill(max_number + 1, 1);
  var dcount := arrfill(max_number + 1, 1);
  for var i := 2 to max_number do
    for var j := i + i to max_number step i do
    begin
      if dsum[j] = j then
        writeln(j:8, ' equals the sum of its first ', dcount[j], ' divisors');
      dsum[j] += i;
      dcount[j] += 1;
    end;
end.
{------------------------------------------------- 177 ethiopian-multiplication}
function halve(x: integer): integer := x div 2;
function double(x: integer): integer := x * 2;
function odd(x: integer): boolean := x mod 2 <> 0;

function ethiopian(x, y: integer): integer;
begin
  while x >= 1 do
  begin
    if odd(x) then result += y;
    x := halve(x);
    y := double(y);
  end;
end;

begin
  ethiopian(17, 34).println;
end.
{--------------------------------------------------- 178 euclid-mullin-sequence}
function smallest_prime_factor(number: biginteger): biginteger;
begin
  var divisor := 3bi;
  repeat
    if (number mod divisor) = 0 then
    begin
      result := divisor;
      exit
    end;
    divisor += 2;
  until divisor * divisor > number;
  result := number;
end;

function euclid_mullin(): sequence of biginteger;
begin
  var product := 2bi;
  yield product;
  while true do
  begin
    var smallest_prime := smallest_prime_factor(product + 1);
    product *= smallest_prime;
    yield smallest_prime;
  end;
end;

begin
  euclid_mullin.take(16).println;
end.
{--------------------------------------------------------- 179 euclidean-rhythm}
##
function E(k, n: integer): string;
begin
  var s := (1..n).Select(i -> (if i <= k then |'1'| else |'0'|)).ToArray;
  var d := n - k;
  n := Max(k, d);
  k := Min(k, d);
  var z := d;

  while (z > 0) or (k > 1) do
  begin
    for var i := 0 to k - 1 do
      s[i] := s[i] + s[s.Length - i - 1];
    s := s[0:s.Length - k];
    z := z - k;
    d := n - k;
    n := Max(k, d);
    k := Min(k, d);
  end;
  result := s.SelectMany(x -> x).JoinToString;
end;

E(5, 13).Println;
E(3, 8).Println;
{------------------------------------------------------------- 180 euler-method}
procedure euler(f: (real) -> real; y0, a, b, h: real);
begin
  var (t, y) := (a, y0);
  write(' Step', h:3, ':');
  while t <= b do
  begin
    if integer(t) mod 10 = 0 then write(y:8:3);
    t += h;
    y += h * f(y);
  end;
  writeln;
end;

procedure analytic();
begin
  write('    Time:');
  for var t := 0 to 100 step 10 do write(t:8);
  writeln;
  write('Analytic:');
  for var t := 0 to 100 step 10 do
    write(20.0 + 80.0 * exp(-0.07 * t):8:3);
  println();
end;

function newtoncooling(temp: real): real := -0.07 * (temp - 20);

begin
analytic;
foreach var i in |2, 5, 10| do
  euler(newtoncooling, 100.0, 0.0, 100.0, i)
end.
{------------------------------------------------ 181 eulers-constant-0.5772...}
const
  n = 1_000_000;

begin
  var result := 1.0;
  for var i := 2 to n do
    result += 1 / i;
  writeln(result - ln(n));
end.
{---------------------------------------------------------- 182 eulers-identity}
##
Println(exp(new Complex(0, pi)) + 1);
{------------------------------------------ 183 eulers-sum-of-powers-conjecture}
##
function eulers_sum_of_powers(): (integer, integer, integer, integer, integer);
begin
  var max_n := 250;
  var pow5_to_n := (0..250).Select(x -> (x ** 5, x)).ToDictionary(x -> x[0], x -> x[1]);
  var pow_5 := pow5_to_n.Select(x -> x.key).ToArray;
  for var x0 := 1 to max_n do
    for var x1 := 1 to x0 do
      for var x2 := 1 to x1 do
        for var x3 := 1 to x2 do
        begin
          var pow_5_sum := pow_5[x0] + pow_5[x1] + pow_5[x2] + pow_5[x3];
          if pow_5_sum in pow5_to_n then
          begin
            var y := pow5_to_n[pow_5_sum];
            result := (x0, x1, x2, x3, y);
            exit;
          end;
        end;
end;

var sol := eulers_sum_of_powers;
writeln(sol[0], '**5 + ', sol[1], '**5 + ', sol[2], '**5 + ', sol[3], '**5 = ', sol[4], '**5');
{------------------------------------------- 184 evaluate-binomial-coefficients}
##
function binomial(n, k: integer): biginteger;
begin
  result := 1bi;
  for var i := 1 to k do
    result := result * (n - i + 1) div i;
end;

Println(binomial(5, 3))
{-------------------------------------------------------------- 185 even-or-odd}
function IsOddRemainder(x: integer) := x mod 2 <> 0;

function IsEvenRemainder(x: integer) := x mod 2 = 0;

function IsOddBitwise(x: integer) := x and 1 = 1;

function IsEvenBitwise(x: integer) := x and 1 = 0;

begin
  var x := 3;
  Println(x.IsEven,x.IsOdd); // Standard Predicates
  Println(IsEvenRemainder(x),IsOddRemainder(x));
  Println(IsEvenBitwise(x),IsOddBitwise(x));
end.
{------------------------------------------------------------------- 186 events}
procedure OnElapsed(sender: object; eventArgs: System.Timers.ElapsedEventArgs);
begin
  Writeln(eventArgs.SignalTime);
  system.Timers.Timer(sender).Stop;
end;

begin
  var timer := System.Timers.Timer.Create(1000);
  timer.Elapsed += OnElapsed;
  Writeln(DateTime.Now);
  timer.Start;
  Console.ReadLine;
end.

{--------------------------------------------------- 187 evolutionary-algorithm}
const
  Target = 'METHINKS IT IS LIKE A WEASEL';
  Alphabet = ' ABCDEFGHIJLKLMNOPQRSTUVWXYZ';
  P = 0.05;
  C = 100;

function negFitness(trial: string) :=
   trial.Zip(Target, (x, y) -> (if x = y then 0 else 1)).Sum;

function mutate(parent: string) :=
   parent.Aggregate('', (mut, ch) -> mut + (if Random(1.0) < P then Alphabet.RandomElement else ch));

begin
  var parent := (1..Target.Length).Aggregate('', (p, x)-> p + Alphabet.RandomElement);
  var i := 0;
  while parent <> Target do
  begin
    var copies := ArrGen(C, x -> mutate(parent));
    parent := copies.Aggregate((p, x) -> (if negFitness(x) < negFitness(p) then x else p));
    if i mod 10 = 0 then Println(i, ' ', parent);
    i += 1;
  end;
  Println(i, ' ', parent)
end.
{------------------------------------------------------------- 188 exceptions-1}
type MyException = class(Exception) end;
{------------------------------------------------------------- 189 exceptions-2}
raise new MyException;
{------------------------------------------------------------- 190 exceptions-3}
try
  ...
except
  on e: MyException do
    statement
end;
{-------------------- 191 exceptions-catch-an-exception-thrown-in-a-nested-call}
type
  U0 = class (Exception) end;
  U1 = class (Exception) end;

procedure baz(i: integer);
begin
  if (i = 0) then raise new U0
  else
    raise new U1;
end;

procedure bar(i: integer) :=  baz(i);

procedure foo;
begin
  for var i := 0 to 1 do
    try
      bar(i);
    except
      on U0 do Writeln('U0 Caught');
    end;
end;

begin
  foo;
end.
{------------------------------------------------- 192 execute-a-system-command}
##
exec('cmd.exe','/c dir /p');
{------------------------------------------------- 193 exponential-digital-sums}
function digitsum(n: biginteger) :=
    n.ToString.select(x -> StrToInt(x)).sum;

procedure expDigitSums(numNeeded, minWays, maxPower: integer);
begin
  var i := 1bi;
  var c := 0;
  while (c < numNeeded) do
  begin
    i += 1;
    var n := i;
    var res: sequence of string := new List<string>;
    for var p :=  2 to maxPower do
    begin
      n *= i;
      var ds := digitSum(n);
      if i = ds then res := res + |' ',i.tostring, '^', p.tostring|.jointostring('');

      if (p > 10) and (i * 2 < ds) then break
    end;
    if (res.Count >= minWays) then
    begin
      println(res);
      c += 1;
    end;
  end;
end;

begin
  println('First twenty-five integers that are equal to the digital sum of that integer raised to some power:');
  expDigitSums(25, 1, 100);
  println;
  println('First thirty that satisfy that condition in three or more ways:');
  expDigitSums(30, 3, 500);
end.
{----------------------------------------------------- 194 exponentiation-order}
##
println('5**3**2 =',5**3**2);
println('(5**3)**2 =',(5**3)**2);
println('5**(3**2) =',5**(3**2));
{---------- 195 exponentiation-with-infix-operators-in-or-operating-on-the-base}
##
foreach var x in |-5, 5|  do
  foreach var p in |2, 3| do
    writeln('x is ', x:2, ', p is ', p:1, ', ',
            '-x**p is ', -x ** p:4,  ', -(x)**p is ',  -(x) ** p:4, ', ',
            '(-x)**p is ', (-x) ** p:4, ', ', '-(x**p) is ', -(x ** p):4);
{----------------------------------------------------- 196 extend-your-language}
const
  ifboth = 0;
  else1 = 1;
  else2 = 2;
  else3 = 3;

function operator **(x, y: boolean): integer; extensionmethod;
begin
  if x and y then result := ifboth
  else
    if x then result := else1
  else
    if y then result := else2
  else result := else3
end;

begin
  case (2 > 1) ** (3 < 2) of
    ifboth: 'both are true'.println;
    else1: 'the first is true'.println;
    else2: 'the second is true'.println;
    else3: 'both are false'.println;
  end;
end.
{----------------------------------------------- 197 extensible-prime-generator}
const
  maxi = maxint.Sqrt.Floor;

function gen_primes: sequence of integer;
begin
  yield 2;
  var D := new Dictionary<integer, integer>;
  var q := 3;
  while True do
  begin
    if q not in D then
    begin
      if q < maxi then // prevent overflow
        D[q * q] := q;
      yield q;
    end
    else
    begin
      var p := D[q];
      D -= q;
      var x := q + p + p;
      while x in D do x += p + p;
      D[x] := p;
    end;
    q += 2;
  end;
end;

begin
  print('The first 20 primes are:');
  gen_primes.Take(20).println;
  print('The primes between 100 and 150 are:');
  gen_primes.SkipWhile(x -> x < 100).TakeWhile(x -> x < 150).Println;
  print('The number of primes between 7700 and 8000 is:');
  gen_primes.SkipWhile(x -> x < 7700).TakeWhile(x -> x < 8000).count.Println;
  print('The 10,000th prime is:');
  gen_primes.Skip(10_000 - 1).First.Println;
  print('The 100,000,000th prime is:');
  gen_primes.Skip(100_000_000 - 1).First.Println;
  print('The sum of the primes to two million is:');
  gen_primes.Takewhile(x -> x < 2_000_000).select(x -> int64(x)).Sum.Println;
end.
{-------------------------------------------- 198 extreme-floating-point-values}
begin
  Println(1.0/real.PositiveInfinity); // 0
  Println(1.0/real.NegativeInfinity); // 0
  Println(0.0/0.0);  // NaN
  Println(1.0/0.0);  // Infinity
  Println(-1.0/0.0); // -Infinity
  Println(real.NegativeInfinity < real.PositiveInfinity); // True
  Println(real.NegativeInfinity + real.PositiveInfinity); // NaN
  Println(real.PositiveInfinity + real.PositiveInfinity); // Infinity
  Println(real.PositiveInfinity / real.PositiveInfinity); // NaN
  Println(Sqrt(-1)); // NaN
  Println(real.NaN = real.NaN); // False
  Println(real.IsNaN(Sqrt(-1))); // True
end.
{--------------------------------------------------------- 199 factorial-primes}
function IsPrime(n: int64): boolean;
begin
  if (n = 2) or (n = 3) then Result := true
  else if (n <= 1) or ((n mod 2) = 0) or ((n mod 3) = 0) then Result := false
  else
  begin
    var i := 5;
    Result := False;
    while i <= trunc(sqrt(n)) do
    begin
      if ((n mod i) = 0) or ((n mod (i + 2)) = 0) then exit;
      i += 6;
    end;
    Result := True;
  end;
end;

function Factorial(n: integer): int64;
begin
  Result := 1;
  for var i := 2 to n do Result *= i;
end;

begin
  var found := 0;
  var i := 1;
  while found < 10 do
  begin
    var fact := Factorial(i);
    if IsPrime(fact - 1) then
    begin
      writeln(i:2, '! - 1 = ', fact - 1);
      found += 1;
    end;
    if IsPrime(fact + 1) then
    begin
      writeln(i:2, '! + 1 = ', fact + 1);
      found += 1;
    end;
    i += 1;
  end;
end.
{---------------------------------------------------------------- 200 factorial}
function FactIter(n: integer): BigInteger;
begin
  Result := 1;
  for var i:=2 to n do
    Result *= i;
end;

function FactRec(n: integer): BigInteger;
begin
  if n = 0 then
    Result := 1
  else Result := n * FactRec(n - 1);
end;


begin
  for var i:=1 to 20 do
    Println(i,FactRec(i),FactIter(i));
end.
{--------------------------------------------------------------- 201 factorions}
##
var fact := |1| * 12;
for var i := 1 to 11 do fact[i] := i * fact[i - 1];

for var b := 9 to 12 do
begin
  write('The factorions for base ', b:2, ' are: ');
  for var i := 1 to 1_500_000 do
  begin
    var fact_sum := 0;
    var j := i;
    while j > 0 do
    begin
      var d := j mod b;
      fact_sum += fact[d];
      j := j div b;
    end;
    if fact_sum = i then
      print(i)
  end;
  println;
end;
{--------------------------------------------- 202 factors-of-a-mersenne-number}
const
  q = 929;

function isPrime(a: integer): boolean;
begin
  if a = 2 then
    begin result := true; exit end;
  if (a < 2) or (a mod 2 = 0) then
    begin result := false; exit end;
  for var i := 3 to sqrt(a).Floor step 2 do
    if a mod i = 0 then
      begin result := false; exit end;
  result := true;
end;

begin
  if not isPrime(q) then exit;
  var r := q;
  while r > 0 do r := r shl 1;
  var d := 2 * q + 1;
  while true do
  begin
    var i := 1;
    var p := r;
    while p <> 0 do
    begin
      i := (i * i) mod d;
      if p < 0 then i *= 2;
      if i > d then i -= d;
      p := p shl 1;
    end;
    if i <> 1 then d += 2 * q
    else break
  end;
  write('2^', q, ' - 1 = 0 (mod ', d, ')');
end.
{---------------------------------------------------- 203 factors-of-an-integer}
function Factors(n: integer): List<integer>;
begin
  var res := HSet(1,n);
  for var i:=2 to n.Sqrt.Trunc do
    if n.Divs(i) then
    begin
      res.Add(i);
      res.Add(n div i);
    end;
  Result := res.Order.ToList;
end;

begin
  foreach var x in |45,53,64| do
    Println(x,Factors(x));
end.
{------------------------------------------- 204 fairshare-between-two-and-more}
function ThueMorseSequence(terms, baseValue: integer): list<integer>;
begin
  result := new List<integer>;
  for var i := 0 to terms - 1 do
  begin
    var sum := 0;
    var n := i;
    while (n > 0) do
    begin
      // Compute the digit sum
      sum += n mod baseValue;
      n := n div baseValue;
    end;
    // Compute the digit sum modulo baseValue.
    result.Add(sum mod baseValue);
  end;
end;

begin
  foreach var baseValue in |2, 3, 5, 11| do
    println('Base', baseValue, '=', ThueMorseSequence(25, baseValue));
end.
{----------------------------------------------------------- 205 farey-sequence}
function Generate(n: integer): list<(integer, integer)>;
begin
  var fractions := new list<(integer, integer)>;
  result := new list<(integer, integer)>;
  for var den := 1 to n do
    for var num := 0 to den do fractions.Add((num, den));
  fractions := fractions.OrderBy(f -> f[0] / f[1]).ToList;

  result.Add(fractions[0]);
  for var i := 0 to fractions.Count - 2 do
    if fractions[i][0] * fractions[i + 1][1] <> fractions[i][1] * fractions[i + 1][0] then
      result.add(fractions[i + 1]);
end;

begin
  for var i := 1 to 11 do
    writeln('F', i, ': ', Generate(i).Select(f -> f[0].ToString + '/' + f[1].tostring));
  for var i := 100 to 1000 step 100 do
    writeln('F', i, ' has ', Generate(i).Count, ' terms.');
end.
{--------------------------------------------------- 206 fast-fourier-transform}
function fft(x: array of complex): array of complex;
begin
  var n := x.length;
  if n = 0 then exit;

  setlength(result, n);

  if n = 1 then
  begin
    result[0] := x[0];
    exit;
  end;

  var evens := x.Where((x, i) -> i mod 2 = 0).ToArray;
  var odds := x.Where((x, i) -> i mod 2 = 1).ToArray;
  var (even, odd) := (fft(evens), fft(odds));

  var halfn := n div 2;

  for var k := 0 to halfn - 1 do
  begin
    var a := exp(new Complex(0.0, -2 * Pi * k / n)) * odd[k];
    result[k] := even[k] + a;
    result[k + halfn] := even[k] - a;
  end;
end;

begin
  var test := |1.0, 1.0, 1.0, 1.0, 0.0, 0.0, 0.0, 0.0|;
  foreach var x in fft(test.select(x -> new Complex(x, 0)).ToArray) do
    println(x)
end.
{------------------------------------------ 207 feigenbaum-constant-calculation}
##
var maxIt := 13;
var maxItJ := 10;
var a1 := 1.0;
var a2 := 0.0;
var d1 := 3.2;
println(' i       d');
for var i := 2 to maxIt do
begin
  var a := a1 + (a1 - a2) / d1;
  for var j := 1 To maxItJ do
  begin
    var x := 0.0;
    var y := 0.0;
    for var k := 1 To 1 shl i do
    begin
      y := 1.0 - 2.0 * y * x;
      x := a - x * x;
    end;
    a -= x / y;
  end;
  var d := (a1 - a2) / (a - a1);
  writeln(i:2, d:14:10);
  d1 := d;
  a2 := a1;
  a1 := a;
end;
{----------------------------------------------------------- 208 fermat-numbers}
##
function IsPrime(n: biginteger): boolean;
begin
  if (n = 2) or (n = 3) then Result := true
  else if (n <= 1) or ((n mod 2) = 0) or ((n mod 3) = 0) then Result := false
  else
  begin
    var i := 5bi;
    Result := False;
    while i * i < n do
    begin
      if (n mod i) = 0 then
      begin
        println(i, n div i);
        exit;
      end
      else if (n mod (i + 2)) = 0 then
      begin
        println(i + 2, n div (i + 2));
        exit;
      end;
      i += 6;
    end;
    Result := True;
  end;
end;

function fermat(n: integer) := power(2bi, int64(power(2, n))) + 1;

for var n := 0 to 9 do writeln('F', n, ' = ', fermat(n));
for var n := 0 to 6 do
begin
  write('F', n, ' = ');
  if isprime(fermat(n)) then println(fermat(n));
end;
{------------------------------------------------------ 209 fermat-pseudoprimes}
function IsPrime(n: int64): boolean;
begin
  if (n = 2) or (n = 3) then Result := true
  else if (n <= 1) or ((n mod 2) = 0) or ((n mod 3) = 0) then Result := false
  else
  begin
    var i := 5;
    Result := False;
    while i <= trunc(sqrt(n)) do
    begin
      if ((n mod i) = 0) or ((n mod (i + 2)) = 0) then exit;
      i += 6;
    end;
    Result := True;
  end;
end;

function powMod(a, n, m: int64): int64;
begin
  a := a mod m;
  if a > 0 then
  begin
    result := 1;
    while n > 0 do
    begin
      if (n and 1) <> 0 then
        result := (result * a) mod m;
      n := n shr 1;
      a := (a * a) mod m;
    end;
  end;
end;

function isFermatPseudoprime(x, a: integer): boolean;
begin
  if isPrime(x) then result := false
  else result := powMod(a, x - 1, x) = 1
end;

begin
  for var a := 1 to 20 do
  begin
    var count := 0;
    var first20 := new List<integer>;
    for var x := 1 to 50_000 do
      if isFermatPseudoprime(x, a) then
      begin
        count += 1;
        if count <= 20 then first20.add(x)
      end;
    println('Base', a, ':');
    println('  Number of Fermat pseudoprimes up to 50_000:', count);
    println('  First 20:', first20);
  end;
end.
{-------------------------------------- 210 fibonacci-n-step-number-sequences-1}
// unfold infinite sequences. Nigel Galloway: September 8th., 2022
function unfold<gN,gG>(n:Func<gG,(gN,gG)>; g:gG): sequence of gN;
begin
  var (x,r):=n(g);
  yield x;
  yield sequence unfold(n,r);
end;
function unfold<gN,gG>(n:Func<array of gG,(gN,array of gG)>;params g:array of gG): sequence of gN := unfold(n,g);
{-------------------------------------- 211 fibonacci-n-step-number-sequences-2}
// Fibonacci n-step number sequences. Nigel Galloway: September 8th., 2022
var nFib:=function(n:array of biginteger): (biginteger,array of biginteger)->(n.First,n[1:].Append(n.Sum).ToArray);
begin
  var fib:=unfold(nFib,1bi,1bi);              fib.Take(20).Println;
  var tri:=unfold(nFib,fib.Take(3).ToArray);  tri.Take(20).Println;
  var tet:=unfold(nFib,tri.Take(4).ToArray);  tet.Take(20).Println;
  var pen:=unfold(nFib,tet.Take(5).ToArray);  pen.Take(20).Println;
  var hex:=unfold(nFib,pen.Take(6).ToArray);  hex.Take(20).Println;
  var hep:=unfold(nFib,hex.Take(7).ToArray);  hep.Take(20).Println;
  var oct:=unfold(nFib,hep.Take(8).ToArray);  oct.Take(20).Println;
  var non:=unfold(nFib,oct.Take(9).ToArray);  non.Take(20).Println;
  var dec:=unfold(nFib,non.Take(10).ToArray); dec.Take(20).Println;
  var luc:=unfold(nFib,2bi,1bi);              luc.Take(20).Println;
end.
{------------------------------------------------------- 212 fibonacci-sequence}
// Fibonacci sequence. Nigel Galloway: August 30th., 2022
begin
  unfold(nFib,0bi,1bi).ElementAt(1000).Println;
end.
{--------------------------------------------------- 213 fibonacci-word-fractal}
uses Turtle;

function fibword(n: integer): string;
begin
  var a := '1'.ToString;
  result := '0';
  loop n - 2 do
  begin
    a := result + a;
    swap(a, result);
  end;
end;

procedure draw_fractal(w: string; step: real);
begin
  foreach var c in w index i do
  begin
    Forw(step);
    if c = '0' then
      if i mod 2 = 0 then TurnLeft(90)
      else TurnRight(90)
  end;
end;

begin
  var w := fibword(20);
  var step := 1;
  SetWidth(2);
  Down;
  TurnRight(90);
  draw_fractal(w, step);
end.
{----------------------------------------------------------- 214 fibonacci-word}
function entropy(str: string): real;
begin
  //  ## return the entropy of a fibword string.
  if str.length <= 1 then begin result := 0.0; exit end;
  var strlen := str.length;
  var count0 := str.where(c -> c = '0').count;
  var count1 := strlen - count0;
  result := -(count0 / strlen * log2(count0 / strlen) + count1 / strlen * log2(count1 / strlen))
end;

function fibword(): sequence of string;
begin
  //  ## Yield the successive fibwords.
  var a := '1'.ToString;
  var b := '0'.ToString;
  yield a;
  yield b;
  while true do
  begin
    a := b + a;
    swap(a, b);
    yield b
  end;
end;

begin
  println(' n    length       entropy');
  println('————————————————————————————————');
  var n := 0;
  foreach var str in fibword do
  begin
    n += 1;
    write(n:2, str.length:10, entropy(str):18:14);
    if n < 10 then writeln('  ', str) else writeln;
    if n = 37 then break
  end;
end.
{-------------------------------------------------------- 215 file-input-output}
begin
  var s := ReadAllText('input.txt');
  WriteAllText('output.txt',s);
end.
{--------------------------------------------------- 216 file-modification-time}
##
Println(System.IO.File.GetLastWriteTime('a.txt'));
System.IO.File.SetLastWriteTime('a.txt', DateTime.Now);
{---------------------------------------------------------------- 217 file-size}
uses System.IO;

begin
  FileInfo.Create('input.txt').Length.Println;
  FileInfo.Create('/input.txt').Length.Println;
end.
{------------------------------------------------------------------- 218 filter}
begin
  var a := Arr(1..10);
  var even := a.Where(x -> x mod 2 = 0);
  even.Print
end.
{----------------------------------------------- 219 find-common-directory-path}
function CommonPrefix(arrs: array of array of string): array of string;
begin
  var min: integer := arrs.Min(a -> a.Length);
  // транспонируем эту часть
  var at := ArrGen(min, j -> ArrGen(arrs.Length, i -> arrs[i][j]));
  Result := at.TakeWhile(x -> x.Skip(1).All(y -> y = x.First)).Select(a -> a[0]).ToArray
end;

function CommonDirectoryPath(paths: array of string; sep: char := '/'): string;
begin
  var arrs := paths.Select(a -> a.Split(sep)).ToArray;
  Result := CommonPrefix(arrs).JoinToString(sep);
end;

begin
  //CommonPrefix(||'ww','ee'|,|'ww','ee','hh'|,|'ww','ee','tt'||).Print
  print(CommonDirectoryPath(|
   '/home/user1/tmp/coverage/test',
   '/home/user1/tmp/covert/operator',
   '/home/user1/tmp/coven/members'|))
end.
{------------------------------------- 220 find-if-a-point-is-within-a-triangle}
type Point = auto class
  x,y: real;
end;

function Sign(pt1,pt2,pt3: Point)
  := (pt1.x - pt3.x) * (pt2.y - pt3.y) - (pt2.x - pt3.x) * (pt1.y - pt3.y);

function InTriangle(p,pt1,pt2,pt3: Point): boolean;
begin
  var val1 := Sign(p, pt1, pt2);
  var val2 := Sign(p, pt2, pt3);
  var val3 := Sign(p, pt3, pt1);
  var notanyneg := (val1 >= 0) and (val2 >= 0) and (val3 >= 0);
  var notanypos := (val1 <= 0) and (val2 <= 0) and (val3 <= 0);
  Result := notanyneg or notanypos;
end;

begin
  var p1 := new Point(1.5, 2.4);
  var p2 := new Point(5.1, -3.1);
  var p3 := new Point(-3.8, 0.5);
  for var x := 0 to 5 do
  begin
    var p := new Point(x,0);
    Println($'{p} is in triangle ({p1},{p2},{p3}): {InTriangle(p,p1,p2,p3)}');
  end
end.
{-------------------------------------------------- 221 find-limit-of-recursion}
procedure Recur(i: integer);
begin
  System.Console.WriteLine(i);
  Recur(i + 1);
end;

begin
  Recur(0);
end.
{---------------- 222 find-palindromic-numbers-in-both-binary-and-ternary-bases}
// https://rosettacode.org/wiki/Find_palindromic_numbers_in_both_binary_and_ternary_bases#Perl#PascalABC.NET

uses School;

function ToBase(n: int64; base: integer): string;
begin
  var sb := new StringBuilder;
  while n>0 do
  begin
    sb.Insert(0,n mod base);
    n := n div base;
  end;
  Result := sb.ToString;
end;

function IsPalindrome(s: string): boolean := s = s.Inverse;

begin
  Println(0,0,0);
  for var i: int64 := 0 to 1000000 do
  begin
    var d3 := ToBase(i,3);
    d3 := d3 + '1' + d3.Inverse;
    var d := Dec(d3,3);
    var d2 := ToBase(d,2);
    if IsPalindrome(d2) then
      Println(d,d3,d2)
  end;
end.

{----------------------------- 223 find-the-intersection-of-a-line-with-a-plane}
type Point = auto class
  x,y,z: real;
  static function operator-(p1,p2: Point): Point := new Point (p1.x-p2.x, p1.y-p2.y, p1.z-p2.z);
  static function operator*(p1,p2: Point): real := p1.x*p2.x + p1.y*p2.y + p1.z*p2.z;
  static function operator*(p: Point; r: real): Point := new Point (p.x*r, p.y*r, p.z*r);
end;

function IntersectionPoint(RayDir, RayPoint, PlaneNormal, PlanePoint: Point): Point
  := RayPoint - RayDir * (((RayPoint - PlanePoint) * PlaneNormal) / (RayDir * PlaneNormal));

begin
  var RayDir := new Point(0.0, -1.0, -1.0);
  var RayPoint := new Point(0.0, 0.0, 10.0);
  var PlaneNormal := new Point(0.0, 0.0, 1.0);
  var PlanePoint := new Point(0.0, 0.0, 5.0);
  Print(IntersectionPoint(RayDir, RayPoint, PlaneNormal, PlanePoint));
end.
{--------------------------------------- 224 find-the-intersection-of-two-lines}
type Point = auto class
  x,y: real;
end;

function Pnt(x,y: real) := new Point(x,y);

function FindIntersection(s1,e1,s2,e2: Point): Point;
begin
  var a1 := e1.Y - s1.Y;
  var b1 := s1.X - e1.X;
  var c1 := a1 * s1.X + b1 * s1.Y;

  var a2 := e2.Y - s2.Y;
  var b2 := s2.X - e2.X;
  var c2 := a2 * s2.X + b2 * s2.Y;

  var delta := a1 * b2 - a2 * b1;

  if delta = 0 then
    Result := Pnt(real.PositiveInfinity,real.PositiveInfinity)
  else
    Result := Pnt((b2 * c1 - b1 * c2) / delta, (a1 * c2 - a2 * c1) / delta)
end;

begin
  Println(FindIntersection(Pnt(4, 0), Pnt(6, 10), Pnt(0, 3), Pnt(10, 7)));
  Println(FindIntersection(Pnt(0, 0), Pnt(1, 1), Pnt(1, 2), Pnt(4, 5)));
end.
{--------------------------------------- 225 find-the-last-sunday-of-each-month}
function LastSunday(month,year: integer): DateTime;
begin
  var date := new DateTime(year,month,DateTime.DaysInMonth(year, month));
  while date.DayOfWeek <> System.DayOfWeek.Sunday do
    date := date.AddDays(-1);
  Result := Date;
end;

begin
  for var month:=1 to 12 do
    Println(LastSunday(month,2024).ToString('yyyy-MM-dd'));
end.

{--------------------------------------------- 226 find-the-missing-permutation}
begin
  var s := '''
  ABCD
  CABD
  ACDB
  DACB
  BCDA
  ACBD
  ADCB
  CDAB
  DABC
  BCAD
  CADB
  CDBA
  CBAD
  ABDC
  ADBC
  BDCA
  DCBA
  BACD
  BADC
  BDAC
  CBDA
  DBCA
  DCAB
  ''';
  var perms := s.ToLines;
  Print(('ABCD'.Permutations.ToHashSet - perms.ToHashSet).First);
end.
{---------------------------------- 227 find-words-which-contain-all-the-vowels}
// Find words which contains all the vowels. Nigel Galloway: September 3rd., 2024
var predicate:Dictionary<char,integer>->boolean:=n->(n['a']=1) and (n['e']=1) and (n['i']=1) and (n['o']=1) and (n['u']=1);
begin
  foreach s:string in System.IO.File.ReadLines('unixdict.txt') do if (s.Length>10) and (predicate(countChars('aeiou',s))) then println(s);
end.

{--------------------------- 228 find-words-which-contains-more-than-3-e-vowels}
// Find words which contains more than 3 e vowels . Nigel Galloway: August 28th., 2024
function countChars(n:Sequence of char;g:string):Dictionary<char,integer>;
begin
  result:=Dict(n.Zip(SeqFill(maxInt,0),(n,g) -> (n,g)));
  foreach c:char in g do if result.ContainsKey(c) then result[c]+=1;
end;
var predicate:Dictionary<char,integer>->boolean:=n->(n['e']>3) and (n['a']+n['i']+n['o']+n['u']=0);
begin
  foreach s:string in System.IO.File.ReadLines('unixdict.txt') do if predicate(countChars('aeiou',s)) then println(s);
end.
{------------------ 229 find-words-whose-first-and-last-three-letters-are-equal}
##
var lines := ReadAllLines('unixdict.txt');
foreach var line in lines do
  if (line.Length > 5) and (line[1:4]=line[^3:])
  then Writeln(line);
{---------------------------- 230 first-class-functions-use-numbers-analogously}
begin
  var x, xi, y, yi, z, zi: real;
  x := 2.0;
  xi := 0.5;
  y := 4.0;
  yi := 0.25;
  z := x + y;
  zi := 1.0 / (x + y);

  var numlist := new real[] ( x, y, z );
  var numlisti := new real[] ( xi, yi, zi );
  var multiplied := numlist.Zip(numlisti, (n1, n2) -> begin
    var multiplier: real -> real := m -> n1 * n2 * m;
    Result := multiplier;
  end);

  foreach var multiplier in multiplied do
    Println(multiplier(0.5));
end.
{---------------------------------------------------- 231 first-class-functions}
function Cube(x: real) := x**3;
function CubeRoot(x: real) := x**(1/3);

function Composition<T>(f1,f2: T -> T): T -> T := x -> f1(f2(x));

begin
  var A := Arr(Sin,Cos,Cube);
  var B := Arr(ArcSin,ArcCos,CubeRoot);
  for var i:=0 to A.Length-1 do
    Println(Composition(A[i],B[i])(0.5));

  // Build-in composition f1 * f2
  foreach var (f1,f2) in A.Zip(B) do
  Println((f1 * f2)(0.5));
end.
{---------------------- 232 first-perfect-square-in-base-n-with-n-unique-digits}
uses School;

const
  valid_chars = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';

function ToBase(number: int64; base: integer): string;
begin
  var sb := new System.Text.StringBuilder('');
  while number > 0 do
  begin
    sb.Insert(0, valid_chars[integer(number mod base) + 1]);
    number := number div base
  end;
  Result := if sb.Length = 0 then '0'
    else sb.ToString
end;

begin
  var n: Int64 := 1;
  for var base := 2 to 15 do
  begin
    while True do
    begin
      var nn: int64 := n * n;
      var dd := ToBase(nn,base);
      if (dd.Length >= base) and (dd.ToHashSet.Count = base) then
      begin
        Println($'{base,2} {ToBase(n,base),8}^2 = {ToBase(n*n,base)}');
        break;
      end;
      n += 1;
    end;
  end;
end.
{------------------- 233 first-power-of-2-that-has-leading-decimal-digits-of-12}
function p(L,n: integer): integer;
begin
  var logof2 := log10(2);
  var places := trunc(log10(L));
  var nfound := 0;
  var i := 1;
  while True do
  begin
    var a := i * logof2;
    var b := trunc(power(10,a-trunc(a)+places));
    if L = b then
    begin
      nfound += 1;
      if nfound = n then break
    end;
    i += 1;
  end;
  Result := i;
end;

begin
  foreach var (L,n) in Arr((12, 1), (12, 2), (123, 45), (123, 12345), (123, 678910)) do
    Println($'p({n},{L}) = {p(n, L)}')
end.
{------------------------------------------------------------ 234 five-weekends}
uses system;

const
  startYear = 1900;
  endYear = 2100;

begin
  var query := new List<datetime>;
  foreach var year in (startyear..endyear) do
    foreach var month in (1..12) do
      if DateTime.DaysInMonth(year, month) = 31 then
        query.Add(new DateTime(year, month, 1));
  query := query.where(d -> d.dayofweek = dayofweek.Friday).ToList;

  println('Count:', query.Count);
  println;
  println('First five:');
  foreach var date in query.Take(5) do
    writeln(date.Year, '-', date.Month);
  println;
  Println('Last five:');
  foreach var date in query.Skip(query.Count - 5) do
    writeln(date.Year, '-', date.Month);
  println;
  println('Years without 5 weekends:');
  (startyear..endyear).except(query.Select(d -> d.year)).Println
end.
{------------------------------------------------------------------ 235 fivenum}
const
  Lists: array of array of real =
        ((15.0, 6.0, 42.0, 41.0, 7.0, 36.0, 49.0, 40.0, 39.0, 47.0, 43.0),
         (36.0, 40.0, 7.0, 39.0, 41.0, 15.0),
         (0.14082834,  0.09748790,  1.73131507,  0.87636009, -1.95059594,
          0.73438555, -0.03035726,  1.46675970, -0.74621349, -0.72588772,
          0.63905160,  0.61501527, -0.98983780, -1.00447874, -0.62759469,
          0.66206163,  1.04312009, -0.10305385,  0.75775634,  0.32566578));

function median(x: array of real; startIndex, endIndex: integer): real;
begin
  var size := endIndex - startIndex + 1;
  assert(size > 0, 'array slice cannot be empty');
  var m := startIndex + size div 2;
  result := if size mod 2 = 1 then x[m] else (x[m - 1] + x[m]) / 2
end;

function fivenum(x: array of real): array of real;
begin
  setlength(result, 5);
  x := x.Sorted.ToArray;
  var m := x.length div 2;
  var lowerEnd := if x.length mod 2 = 1 then m else m - 1;
  result[0] := x[0];
  result[1] := median(x, 0, lowerEnd);
  result[2] := median(x, 0, x.high);
  result[3] := median(x, m, x.high);
  result[4] := x[^1];
end;

begin
  foreach var list in Lists do
  begin
    println(list.toarray);
    println('  →  ', fivenum(list));
  end;
end.
{----------------------------------------------------------------- 236 fizzbuzz}
begin
  for var i:=1 to 100 do
    if i mod 15 = 0 then
      Print('FizzBuzz')
    else if i mod 3 = 0 then
      Print('Fizz')
    else if i mod 5 = 0 then
      Print('Buzz')
    else Print(i)
end.
{----------------------------------------------------------- 237 flatten-a-list}
function Flatten(lst: List<object>): List<object>;
begin
  Result := new List<object>;
  foreach var x in lst do
    if x is List<object> then
      Result.Addrange(Flatten(x as List<object>))
    else Result.Add(x)
end;

function LstObj(params a: array of object): List<Object> := new List<Object>(a);

begin
  var lst := LstObj(1,LstObj(2, LstObj(3,4), LstObj(5,6)), LstObj(LstObj(7,8), 9));
  Println(lst);
  Println(Flatten(lst));
end.
{---------------------------------------------------------- 238 floyds-triangle}
procedure FloydTriangle(rows: integer);
begin
  var r := 1;
  for var i:=1 to rows do
  begin
    for var j:=1 to i do
    begin
      Write(r: (j>8 ? 4 : 3));
      r += 1;
    end;
    Writeln
  end;
end;

begin
  FloydTriangle(5);
  Writeln;
  FloydTriangle(14);
end.
{-------------------------------------------------------- 239 forbidden-numbers}
##
function isforbidden(num: integer): boolean;
begin
  //true if num is a forbidden number
  var fours := num;
  var pow4 := 0;
  while (fours > 1) and (fours mod 4 = 0) do
  begin
    fours := fours div 4;
    pow4 += 1;
  end;
  result := (num div int64(4 ** pow4)) mod 8 = 7;
end;

var f500k := (0..500_001).Where(n -> isforbidden(n));

f500k.Take(50).println;
println;
foreach var fbmax in |500, 5000, 50_000, 500_000| do
  println('There are', f500k.Where(x -> x <= fbmax).Count, 'forbidden numbers <=', fbmax)
{--------------------------------------------------------------------- 240 fork}
uses System.Threading;

procedure Fork;
begin
  WriteLn('Spawned Thread');
end;

begin
  var t := new Thread(ThreadStart(Fork));
  t.Start;

  WriteLn('Main Thread');
  t.Join;
  Readln;
end.
{------------------------------------------------- 241 formatted-numeric-output}
##
var Pi := 3.1415926536;
Println($'{Pi,8:f2}');
Println($'{Pi,-8:f3}!');
{------------------------------------------------------- 242 forward-difference}
function Convert(a: array of integer): array of integer;
begin
  var n := a.Length;
  var res := new integer[n-1];
  for var i:=0 to n-2 do
    res[i] := a[i+1]-a[i];
  Result := res;
end;

begin
  var a := |90, 47, 58, 29, 22, 32, 55, 5, 55, 73|;
  while a.Length > 0 do
  begin
    Println(a);
    a := Convert(a);
  end;
end.
{------------------------------------------------------------- 243 fractal-tree}
uses Turtle,GraphWPF;

procedure FractalTree(n: integer; len,angle: real);
begin
  if n = 0 then exit;
  len := len * 0.8;
  Turn(angle);
  Forw(len);
  FractalTree(n-1,len,angle);
  Turn(180);
  Forw(len);
  Turn(180-2*angle);
  Forw(len);
  FractalTree(n-1,len,angle);
  Turn(180);
  Forw(len);
  Turn(180+angle);
end;

begin
  Window.Title := 'Fractal Tree';
  var len := 100;
  var angle := 22;
  ToPoint(400,500);
  Turn(-90);
  Down;
  Forw(100);
  FractalTree(10,len,angle);
end.
{----------------------------------------------------- 244 function-composition}
function Compose<T,T1,T2>(f: T1 -> T2; g: T -> T1): T -> T2 := x -> f(g(x));

begin
  Compose(Sin,ArcSin)(1.0).Print
end.
{------------------------------------------------------ 245 function-definition}
function multiply(a,b: real): real := a + b;
{------------------------------------------------------------ 246 fusc-sequence}
const maxcalc = 100000000;

var cache := new integer[maxcalc];

function Fusc(n: integer): integer;
begin
  if (n = 0) or (n = 1) then
  begin
    Result := n;
    exit
  end;
  if (n < maxcalc) and (cache[n] > 0) then
  begin
    Result := cache[n];
    exit;
  end;
  if n.IsEven then
    Result := Fusc(n div 2)
  else Result := Fusc((n-1) div 2) + Fusc((n+1) div 2);
  if n < maxcalc then
    cache[n] := Result
end;

function Digits(n: integer): integer;
begin
  Result := 0;
  while n > 0 do
  begin
    Result += 1;
    n := n div 10;
  end;
end;

begin
  (0..60).Select(Fusc).Println;
  var maxdigits := 1;
  var num := 0;
  var prevfun := 0;
  for var i:=1 to integer.MaxValue - 1 do
  begin
    var fun := Fusc(i);
    if fun > prevfun then
    begin
      var dig := Digits(fun);
      if dig > maxdigits then
      begin
        maxdigits := dig;
        Println(fun,i);
        num +=1;
        if num = 6 then exit;
      end;
    end;
    prevfun := fun;
  end;
end.
{----------------------------------------------------------- 247 gamma-function}
const
  g = 7;
  p: array of real =
        (0.99999999999980993, 676.5203681218851, -1259.1392167224028,
	     771.32342877765313, -176.61502916214059, 12.507343278686905,
	     -0.13857109526572012, 9.9843695780195716e-6, 1.5056327351493116e-7);

function Gamma(z: Complex): Complex;
begin
  if (z.Real < 0.5) then
  begin
    result := pi / (Sin(pi * z) * Gamma(1 - z));
    exit;
  end
  else
  begin
    z -= 1;
    var x: Complex := p[0];
    for var i := 1 to g + 1 do x += p[i] / (z + i);
    var t := z + g + 0.5;
    result := Sqrt(2 * pi) * (Power(t, z + 0.5)) * Exp(-t) * x;
  end;
end;

begin
  writeln('z          Lanczos');
  for var i := 1 to 10 do writeln(i / 3:6:4, gamma(i / 3):25);
end.
{----------------------------------------------------------- 248 gapful-numbers}
function IsGapful(n: integer): boolean;
begin
  var first := n.ToString[1].ToDigit;
  var num := first * 10 + n mod 10;
  Result := n.Divs(num);
end;

function FindGapful(from,n: integer): List<integer>;
begin
  Result := new List<integer>;
  var i := from;
  while Result.Count < n do
  begin
    if IsGapful(i) then
      Result.Add(i);
    i += 1
  end;
end;

begin
  Println('First 30 gapful numbers starting at 100:');
  FindGapful(100,30).Println;
  Println('First 15 gapful numbers starting at 1,000,000:');
  FindGapful(1000000,15).Println;
  Println('First 10 gapful numbers starting at 1,000,000,000:');
  FindGapful(1000000000,10).Println;
end.
{-------------------------------------------- 249 gauss-jordan-matrix-inversion}
uses NumLibABC;

begin
  var A := new Matrix(3,3,1,2,3,4,1,6,7,8,9);
  'Original:'.Println;
  A.Println(10,5);
  'Inverse:'.Println;
  A.Inv.Println(10,5);
end.
{----------------------------------------------------- 250 gaussian-elimination}
uses NumLibABC;

begin
  var A := new real[6, 6] ((1.00, 0.00, 0.00,  0.00,  0.00,   0.00),
                          (1.00, 0.63, 0.39,  0.25,  0.16,   0.10),
                          (1.00, 1.26, 1.58,  1.98,  2.49,   3.13),
                          (1.00, 1.88, 3.55,  6.70, 12.62,  23.80),
                          (1.00, 2.51, 6.32, 15.88, 39.90, 100.28),
                          (1.00, 3.14, 9.87, 31.01, 97.41, 306.02));

  var b := new real[6] (-0.01, 0.61, 0.91, 0.99, 0.60, 0.02);

  var oL := new Decomp(A);
  oL.Solve(b);
  b.Println;
end.
{---------------------------------------------------------- 251 gaussian-primes}
uses GraphWPF;

type
  intComplex = record re, im: integer;
  end;

function IsPrime(x: longword): boolean;
begin
  var i := 2;
  while (i * i <= x) and (x mod i <> 0) do
    i += 1;
  Result := i * i > x;
end;

function norm(c: intComplex) := c.re * c.re + c.im * c.im;

function isGaussianPrime(c: intComplex): boolean;
begin
  if c.re = 0 then
  begin
    var x := abs(c.im);
    result := isPrime(x) and ((x - 3) mod 4 = 0);
    exit
  end;
  if c.im = 0 then
  begin
    var x := abs(c.re);
    result := isPrime(x) and ((x - 3) mod 4 = 0);
    exit
  end;
  result := isPrime(norm(c));
end;

function gaussianPrimes(maxNorm: longword): list<intComplex>;
begin
  var gpList := new List<intComplex>;
  var m := Sqrt(maxNorm).Floor;
  var c: intComplex;
  foreach var x in (-m..m) do
    foreach var y in (-m..m) do
    begin
      (c.re, c.im) := (x, y);
      if (norm(c) < maxNorm) and isGaussianPrime(c) then
        gpList.Add(c);
    end;
  result := gpList;
end;

begin
  println('Gaussian primes with a norm less than 100:');
  foreach var gp in gaussianPrimes(10 * 10) index i do
  begin
    write(gp.re:2, if gp.im >= 0 then '+' else '', gp.im, 'i');
    if i mod 10 = 9 then println else print(' ');
  end;

  foreach var gp in gaussianPrimes(50 * 50) do
    fillcircle(gp.re * 4 + 400, gp.im * 4 + 300, 2, colors.Black);
end.
{--------------------------------------------------------- 252 general-fizzbuzz}
##
for var i:=1 to 20 do
begin
  var s := '';
  if i mod 3 = 0 then
    s += 'Fizz';
  if i mod 5 = 0 then
    s += 'Buzz';
  if i mod 7 = 0 then
    s += 'Baxx';
  if s = '' then
    Println(i)
  else Println(s);
end
{-------------------------------------- 253 generate-chess960-starting-position}
##
function random960: string;
begin
  var start := 'RKR';

  foreach var piece in 'QNN' do
    Insert(piece, start, Random(start.length + 1) + 1);

  var bishpos := Random(start.length + 1) + 1;
  Insert('B', start, bishpos);
  Insert('B', start, Range(bishpos + 1, start.Length + 1, 2).ToArray.RandomElement);
  result := start;
end;

random960.Println;
{--------------------------------------- 254 generate-lower-case-ascii-alphabet}
##
var a := Arr('a'..'z');
a.Println;
var s := ('a'..'z').JoinToString(' ');;
s.Println
{---------------------------------------------------- 255 generator-exponential}
##
var ms: integer -> sequence of BigInteger := m -> 0.Step.Select(i -> BigInteger(i)**m);
var squares := ms(2);
var cubes := ms(3);
var filtered := squares.Where(square -> cubes.First(cube -> cube >= square) <> square);
filtered.Skip(20).Take(10).Println;

{------------------------------------------------------------- 256 generic-swap}
procedure Swap<T> (var a,b: T) := (a,b) := (b,a);

begin
  var (i,j) := (1,2);
  Swap(i,j);
  Println(i,j);
  var (s1,s2) := ('PascalABC.NET','Hello');
  Swap(s1,s2);
  Println(s1,s2);
end.
{------------------------------------------------ 257 get-system-command-output}
uses System.Diagnostics;

begin
  var pr := new Process();
  var startInfo := new ProcessStartInfo();
  startInfo.WindowStyle := ProcessWindowStyle.Hidden;
  startInfo.FileName := 'cmd.exe';
  startInfo.Arguments := '/c echo Hello World';
  startInfo.RedirectStandardOutput := true;
  startInfo.UseShellExecute := false;
  pr.StartInfo := startInfo;
  pr.Start;

  var output := pr.StandardOutput.ReadToEnd;
  Print($'Output is {output}');
end.
{------------------------------------------------------------ 258 giuga-numbers}
uses School;

begin
  var n := 1;
  var cnt := 0;
  while cnt < 4 do
  begin
    if n.Factorize.All(f -> (f <> n) and (n div f - 1).Divs(f)) then
    begin
      cnt += 1;
      Print(n);
    end;
    n += 1;
  end;
end.
{----------------------------------- 259 globally-replace-text-in-several-files}
##
foreach var name in EnumerateFiles('.','*.txt') do
  WriteAllText(name,ReadAllText(name).Replace('Goodbye London!', 'Hello, New York!'));
{---------------------------------------------------------- 260 goldbachs-comet}
uses GraphWPF;

const colpick = (Colors.Red, Colors.Green, Colors.Blue);

function IsPrime(x: longword): boolean;
begin
  var i := 2;
  while (i * i <= x) and (x mod i <> 0) do
    i += 1;
  Result := i * i > x;
end;

function g(n: integer): integer;
begin
  assert((n > 2) and (n mod 2 = 0), '“n” must be even and greater than 2.');
  for var i := 2 to (n div 2)  do
    if isPrime(i) and isPrime(n - i) then
      result += 1;
end;

begin
  println('First 100 G numbers:');
  foreach var n in (2..101) index i do
  begin
    write(g( 2 * n):3);
    if (i + 1) mod 10 = 0 then writeln;
  end;
  println;
  println('G(1_000_000) =', g(1_000_000));

  setMathematicCoords(0, 4000, 0, false);
  foreach var x in range(4, 4002, 2) do
  begin
    fillcircle(x, g(x)*15, 10, colpick[(x div 2) mod 3]);
  end;
end.
{------------------------------------------------- 261 golden-ratio-convergence}
begin
  var phi := 1.0;
  var phiprev := 0.0;
  var n := 0;
  var err := 0.0;
  while True do
  begin
    n += 1;
    phi := 1 + 1/phi;
    err := Abs(phi - phiprev);
    if err <= 1e-5 then
      break;
    phiprev := phi;
  end;
  Println($'Result = {phi} after {n} iterations');
  Println($'The error is approximately = {phi - (1+sqrt(5)) / 2}');
end.
{---------------------------------------------------------------- 262 gray-code}
uses School;

function GrayEncode(n: longword): longword := n xor (n shr 1);

function GrayDecode(n: longword): longword;
begin
  Result := 0;
  while n > 0 do
  begin
    Result := Result xor n;
    n := n shr 1;
  end;
end;

begin
  for var i := 0 to 31 do
    Writeln($'{i,-7} {Bin(i),-7} {Bin(grayEncode(i)),-7} {grayDecode(grayEncode(i)),-7}');
end.
{-------------------------------------------------- 263 greatest-common-divisor}
function GCD(a,b: integer): integer;
begin
  while b > 0 do
    (a,b) := (b,a mod b);
  Result := a;
end;

function GCDRec(a,b: integer): integer;
begin
  if b = 0 then
    Result := a
  else Result := GCDRec(b, a mod b);
end;

begin
  Println(GCD(72,30),GCDRec(72,30));
  Println(GCD(49865, 69811),GCDRec(49865, 69811));
end.
{----------------------------------------------- 264 greatest-element-of-a-list}
##
var values := Lst(1,7,4,6,3,5,2,6);
values.Max.Print;
{----------------------------------------------- 265 greatest-subsequential-sum}
function MaxSumSeq(a: array of integer): (integer,integer,integer);
begin
  var (maxSum,thisSum) := (0,0);
  var (f,t) := (0,-1);
  var k := 0;
  for var j:=0 to a.Length-1 do
  begin
    thisSum += a[j];
    if thisSum < 0 then
    begin
      k := j + 1;
      thisSum := 0;
    end
    else if thisSum > maxSum then
    begin
      maxSum := thisSum;
      f := k;
      t := j
    end;
  end;
  Result := (f,t,maxSum);
end;

begin
  var a := Arr(-1 , -2 , 3 , 5 , 6 , -2 , -1 , 4 , -4 , 2 , -1);
  var (f,t,max) := MaxSumSeq(a);
  Print('Subsequence with max sum:', a[f:t+1], 'It''s sum:', max);
end.
{--------------------------------------------------------- 266 guess-the-number}
begin
  var randomNumber := Random(1..10);
  Println('I''m thinking of a number between 1 and 10. Can you guess it?');
  while True do
  begin
    Print('Guess:');
    var x := ReadlnInteger;
    if x = randomNumber then
      break;
    Println('That''s not it. Guess again.');
  end;
  Println('Congrats!! You guessed right!6');
end.
{------------------------------------------------------- 267 hailstone-sequence}
function hailstone(n: Integer): sequence of integer;
begin
  result := seq(n);
  while n > 1 do
  begin
    n := n.IsEven ? n div 2 : 3 * n + 1;
    result := result + seq(n);
  end;
end;

begin
  var a := hailstone(27);
  println(a.Count, a.Take(4), a.TakeLast(4));
  var max := 0;
  var maxi := 0;
  for var i := 1 to 100_000 do
    if hailstone(i).Count > max then
    begin
      max := hailstone(i).Count;
      maxi := i;
    end;
  println(maxi, max);
end.
{------------------------------------------------------ 268 halt-and-catch-fire}
## raise new Exception('');
{---------------------------------------------------------- 269 hamming-numbers}
function Hamming(n: integer): BigInteger;
begin
  var (two,three,five) := (2bi, 3bi, 5bi);
  var h := new BigInteger[n];
  h[0] := 1;
  var (x2,x3,x5) := (2bi, 3bi, 5bi);
  var (i,j,k) := (0, 0, 0);
  for var ind := 1 to n-1 do
  begin
    h[ind] := Min(x2, x3, x5);
    if h[ind] = x2 then
    begin
      i += 1;
      x2 := two * h[i];
    end;
    if h[ind] = x3 then
    begin
      j += 1;
      x3 := three * h[j];
    end;
    if h[ind] = x5 then
    begin
      k += 1;
      x5 := five * h[k];
    end;
  end;
  Result := h[n-1];
end;

begin
  (1..20).Select(x -> Hamming(x)).Println;
  Hamming(1691).Println;
  Hamming(1000000).Println;
end.
{---------------------------------------------------------- 270 handle-a-signal}
begin
  var counter := 0;
  while True do
  begin
    Print(counter);
    counter += 1;
    Sleep(500);
  end;
  Console.CancelKeyPress += (o,e) -> begin
    Println(Milliseconds);
    halt
  end;
end.
{------------------------------------------------------------ 271 happy-numbers}
uses School;

function IsHappy(n: integer): boolean;
begin
  Result := False;
  var cache := new HashSet<integer>;
  while n <> 1 do
  begin
    if n in cache then
      exit;
    cache.Add(n);
    n := n.Digits.Sum(d -> d*d);
  end;
  Result := True;
end;

begin
  var n := 1;
  var happyNums := new List<integer>;
  while happyNums.Count < 8 do
  begin
    if IsHappy(n) then
      happyNums.Add(n);
    n += 1;
  end;
  happyNums.Print
end.
{---------------------------------------------------------- 272 harmonic-series}
function H(n: integer): real := (1..n).Sum(i -> 1/i);

begin
  for var i:=1 to 20 do
    Println($'{i,2}:  {H(i),10:f8}');
  var i := 1;
  var num := 1;
  while num < 11 do
  begin
    if H(i) > num then
    begin
      Println('Position of the first harmonic number >',num,':',i);
      num += 1;
    end;
    i += 1;
  end;
end.
{-------------------------------------------------- 273 harshad-or-niven-series}
##
uses School;

function IsHarshad(n: integer) := n.Divs(n.Digits.Sum);

1.Step.Where(IsHarshad).Take(20).Println;
1.Step.Where(i -> (i > 1000) and IsHarshad(i)).First.Println;
{----------------------------------------------------- 274 hash-from-two-arrays}
begin
  var Keys := Arr('aa','bb','cc');
  var Values := Arr(1..3);
  var dct := Dict(Keys.Zip(Values));
  dct.Println;
end.
{-------------------------------------------------------- 275 haversine-formula}
const
  r = 6372.8;

function haversine(lat1, lon1, lat2, lon2: real): real;
begin
  var  dLat := degToRad(lat2 - lat1);
  var  dLon := degToRad(lon2 - lon1);
  lat1 := degToRad(lat1);
  lat2 := degToRad(lat2);

  var a := sin(dLat / 2) * sin(dLat / 2) + cos(lat1) * cos(lat2) * sin(dLon / 2) * sin(dLon / 2);
  var c := 2 * arcsin(sqrt(a));

  result := r * c;
end;

begin
  haversine(36.12, -86.67, 33.94, -118.40).Println;
end.
{---------------------------------------------------- 276 hello-world-graphical}
// Hello world/Graphical. Nigel Galloway: January 16th., 2023
begin
  System.Windows.Forms.MessageBox.Show('Farewell Cruel World!')
end.
{------------------------------------------------- 277 hello-world-line-printer}
{$reference 'System.Drawing.dll'}

uses System.Drawing;
uses System.Drawing.Printing;

begin
  var doc := new PrintDocument();
  doc.PrintPage += (s,e) -> begin
    e.Graphics.DrawString('Hello World!', new Font('Arial', 14), Brushes.Black, 0, 0);
  end;
  doc.Print;
end.
{--------------------------------------------- 278 hello-world-newline-omission}
##
Write('Goodbye, World!');
{----------------------------------------------- 279 hello-world-standard-error}
##
Console.Error.WriteLine('Goodbye, World!');
{------------------------------------------------------- 280 hello-world-text-1}
// Hello world/Text. Nigel Galloway: January 25th., 2023
begin
  System.Console.WriteLine('Hello World!');
end.
{------------------------------------------------------- 281 hello-world-text-2}
program HelloWorld;
begin
  writeln('Hello World!');
end.
{------------------------------------------------------- 282 hello-world-text-3}
##
println('Hello World!');
{------------------------------------------------------------ 283 here-document}
begin
  var s := '''
  Multiline
  string
  with apostrophes ' and ''
  ''';
  Write(s);
end.
{------------------------------------------------------- 284 heronian-triangles}
uses school;

function hero(a, b, c: integer): real;
begin
  var s := (a + b + c) / 2;
  var a2 := s * (s - a) * (s - b) * (s - c);
  result := if a2 > 0 then a2.sqrt else 0;
end;

function is_heronian(a, b, c: integer):  boolean;
begin
  var h := hero(a, b, c);
  result := (h > 0) and (h = h.Ceil);
end;

function gcd3(x, y, z: integer) := gcd(gcd(x, y), z);

function heronians(n: integer): sequence of (integer, integer, integer);
begin
  for var x := 1 to n do
    for var y := x to n do
      for var z := y to n do
        if (x + y > z) and (gcd3(x, y, z) = 1) and is_heronian(x, y, z) then
          yield (x, y, z);
end;

begin
  var n := 200;
  var hsorted := heronians(n).OrderBy(t -> hero(t[0], t[1], t[2]))
                             .ThenBy(t -> t[0] + t[1] + t[2])
                             .ThenBy(t -> t[2]);

  writeln('Primitive Heronian triangles with sides up to ', n, ': ', hsorted.count);
  writeln;
  writeln('First ten when ordered by increasing area, then perimeter, then maximum sides:');
  foreach var h in hsorted.Take(10) do
    writeln(h:12, ' perim: ', h[0] + h[1] + h[2]:3, ' area: ', hero(h[0], h[1], h[2]):3);
  writeln;
  writeln('All with area 210 subject to the previous ordering:');
  foreach var h in hsorted.Where(t -> hero(t[0], t[1], t[2]) = 210) do
    writeln(h:12, ' perim: ', h[0] + h[1] + h[2]:3, ' area: ', hero(h[0], h[1], h[2]):3);
end.
{---------------------------------------------------------------- 285 hex-words}
uses System.Net, system.Globalization;

function digroot(n: integer): integer;
begin
  while n > 9 do
    n := n.ToString.Select(x -> x.ToDigit).Sum;
  result := n;
end;

begin
  var client := new WebClient();
  var text := client.DownloadString('http://wiki.puzzlers.org/pub/wordlists/unixdict.txt');
  var words: sequence of string := text.ToWords(|#10, #13|);
  words := words.Where(w -> w.length >= 4)
                .Where(w -> w.All(c -> c in 'abcdef'));

  var results := new List<(string, integer, integer)>;
  foreach var w in words do
  begin
    var wnum := integer.Parse(w, NumberStyles.HexNumber);
    results.Add((w, wnum, digroot(wnum)));
  end;

  println('Hex words in unixdict.txt:');
  println('Root  Word      Base 10');
  println('-' * 23);
  foreach var a in results.OrderBy(t -> t[2]) do
    writeln(a[2], a[0]:10, a[1]:11);
  println('Total count of these words:', results.Count);
  println;
  println('Hex words with > 3 distinct letters:');
  println('Root  Word      Base 10');
  println('-' * 23);
  results := results.Where(a -> (hset(a[0].ToCharArray).Count >= 4)).ToList;
  foreach var a in results.OrderByDescending(t -> t[1]) do
    writeln(a[2], a[0]:10, a[1]:11);
  println('Total count of those words:', results.Count)
end.
{-------------------------------------- 286 hickerson-series-of-almost-integers}
##
var ln2: decimal := decimal.Parse('0.693147180559945309417232121458');
var h := decimal(0.5) / ln2;

for var i := 1 to 17 do
begin
  h := h * i / ln2;
  var w := BigInteger(h);
  var d := (h - decimal(w)).ToString.Substring(2, 1);

  Writeln('n: ', i:2, '  h: ', h, '  Nearly integer: ', (d = '0') or (d = '9'));
end;
{--------------------------------------------------- 287 higher-order-functions}
##
function first(f: real-> real) := f(1.0) + 2.0;

function second(x: real) := x / 2.0;

println(first(second));
{------------------------------------------------------------ 288 hilbert-curve}
uses Turtle;

procedure Hilbert(level: integer; angle,step: real);
begin
  if level = 0 then
    exit;
  TurnRight(angle);
  Hilbert(level-1, -angle, step);

  Forw(step);
  TurnLeft(angle);
  Hilbert(level-1, angle, step);

  Forw(step);
  Hilbert(level-1, angle, step);

  TurnLeft(angle);
  Forw(step);
  Hilbert(level-1, -angle, step);
  TurnRight(angle);
end;

begin
  SetWidth(2);
  ToPoint(-9,-9);
  Down;
  Hilbert(6,90,0.3);
end.
{--------------------------------------- 289 hofstadter-conway-_10-000-sequence}
[cache]
function hof(n: integer): integer;
begin
  if n < 3 then result := 1
  else result := hof(hof(n - 1)) + hof(n - hof(n - 1))
end;

begin
  for var nmax := 1 to 19 do
  begin
    var amax := 0.0;
    for var n := 1 shl nmax to 1 shl (nmax + 1) do
      amax := max(amax, hof(n) / n);
    writeln('Maximum between 2^', nmax, ' and 2^', nmax + 1, ' was ', amax);
  end;

  var prize := 1 shl 20;
  repeat
    prize -= 1;
  until (hof(prize) / prize >= 0.55);
  println('Mallows'' number =', prize);
end.
{--------------------------------------- 290 hofstadter-figure-figure-sequences}
function ffs: sequence of integer; forward;

function ffr: sequence of integer;
begin
  var n := 1;
  yield n;
  foreach var s in ffs do
  begin
    n += s;
    yield n;
  end;
end;

function ffs: sequence of integer;
begin
  yield 2;
  yield 4;
  var u := 5;
  foreach var r in ffr do
  begin
    if r <= u then continue;
    foreach var x in (u..r - 1) do yield x;
    u := r + 1;
  end;
end;

begin
  ffr.Take(10).Println;
  var a := ffr.Take(40) + ffs.Take(960);
  (1..1000).SequenceEqual(a.Sorted).Println;
end.
{---------------------------------------------------- 291 hofstadter-q-sequence}
##
var q := |1, 1|.ToList;
for var n := 2 to 100_000 do
  q.add(q[n - q[n - 1]] + q[n - q[n - 2]]);

q.take(10).println;
assert(q.Take(10).SequenceEqual(|1, 1, 2, 3, 3, 4, 5, 5, 6, 6|));

q[999].println;
assert(q[999] = 502);

var lessCount := 0;
for var n := 1 to 100_000 do
  if q[n] < q[n - 1] then
    lessCount += 1;
lessCount.Println;
{----------------------------------------------------------- 292 honaker-primes}
function gen_primes: sequence of integer;
begin
  yield 2;
  var D := new Dictionary<integer, integer>;
  var q := 3;
  while True do
  begin
    if q not in D then
    begin
      if q < maxint.Sqrt.Floor then
        D[q * q] := q;
      yield q;
    end
    else
    begin
      var p := D[q];
      D -= q;
      var x := q + p + p;
      while x in D do x += p + p;
      D[x] := p;
    end;
    q += 2;
  end;
end;

function digitalsum(n: integer) := n.ToString.select(x -> x.ToDigit).Sum;

function honakerPrimes: sequence of (integer, integer);
begin
  foreach var n in gen_primes index i do
    if digitalSum(i + 1) = digitalSum(n) then
      yield (i + 1, n)
end;

begin
  writeln('First 50 Honaker primes (index, prime):');
  foreach var p in honakerPrimes index i do
  begin
    write(p:11);
    if (i + 1) mod 5 = 0 then println;
    if i = 49 then break;
  end;
  println;
  print('Ten thousandth:');
  honakerPrimes.ElementAt(10_000 - 1).Println;
end.
{------------------------------------------ 293 horizontal-sundial-calculations}
##
var lat := readlnreal('Enter latitude       => ');
var lng := readlnreal('Enter longitude      => ');
var med := readlnreal('Enter legal meridian => ');
println;

var slat := sin(degToRad(lat));
writeln('    sine of latitude:    ', slat:5:3);
writeln('    diff longitude:      ', lng - med:5:3);
println;
println('Hour, sun hour angle, dial hour line angle from 6am to 6pm');

for var h := -6 to 6 do
begin
  var hra := 15 * h - lng + med;
  var hla := radtodeg(arctan(slat * tan(degToRad(hra))));
  writeln('HR=', h:2, '; HRA=', hra:8:3, '; HLA=', hla:8:3);
end;
{----------------------------------- 294 horners-rule-for-polynomial-evaluation}
function Horner(coeffs: array of real; x: real): real;
begin
  Result := 0;
  foreach var coeff in coeffs.Reverse do
    Result := Result * x + coeff
end;

begin
  Print(Horner(|-19.0, 7, -4, 6|, 3))
end.
{------------------------------------------------------- 295 host-introspection}
begin
  Println($'Word size in bytes: {sizeof(integer)}');
  if System.BitConverter.IsLittleEndian then
    Println('Little Endian')
  else Println('Big Endian')
end.
{----------------------------------------------------------------- 296 hostname}
## System.Net.Dns.GetHostName.Print
{--------------------------------------------------------------------- 297 http}
##
uses System.Net;

var wc := new WebClient();
var content := wc.DownloadString('http://example.com');
content.Println
{------------------------------------------------------ 298 https-authenticated}
##
uses System.Net;

var wc := new WebClient();
wc.Credentials := new NetworkCredential('admin', 'admin');
var content := wc.DownloadString('https://httpbin.org/basic-auth/admin/admin');
content.Println
{-------------------------------------------------------------------- 299 https}
##
uses System.Net;

var wc := new WebClient();
var content := wc.DownloadString('https://example.com');
content.Println
{----------------------------------------------------------- 300 humble-numbers}
##
function humbles: sequence of uint64;
begin
  var s := hset(uint64(1));
  while True do
  begin
    var m := s.min;
    yield m;
    s -= m;
    foreach var k in |2, 3, 5, 7| do s += k * m;
  end;
end;

println('The first 50 humble numbers are:');
foreach var n in humbles.Take(50) index i do
  write(n:4, if i mod 10 = 9 then #10 else '');

println;
println('Digits Count');
for var dig := 1 to 18 do
begin
  var count := humbles.SkipWhile(x -> x < 10 ** (dig - 1))
                      .TakeWhile(x -> x < 10 ** dig).Count;
  writeln(dig:2, count:10);
end;
{------------------------------------------------ 301 i-before-e-except-after-c}
// I before E except after C. Nigel Galloway: September 30th., 2024
type plausibility=(plausible,implausible);
var fN:string->string->integer:=n->g->System.Text.RegularExpressions.Regex.Matches(n,g).count;
var fG:Func<string,integer>->(array of integer)->array of integer:=n->g->g.Zip(|n('ie'),n('ei'),n('cie'),n('cei')|,(n,g)->n+g).ToArray;
begin
  var n:=System.IO.File.ReadLines('unixdict.txt').Aggregate(|0,0,0,0|,(n,g)->fG(fN(g))(n));
  println($'I before E except after C is {if n[0]-n[2]>2*n[2] then plausible else implausible}');
  println($'E before I except after C is {if n[1]-n[3]>2*n[3] then plausible else implausible}');
  println($'I before E   when after C is {if n[2]>2*n[3] then plausible else implausible}');
  println($'E before I   when after C is {if n[3]>2*n[2] then plausible else implausible}');
end.
{--------------------------------------------------------------------- 302 iban}
var
  countryLen := Dict(
    ('AL', 28), ('AD', 24), ('AT', 20), ('AZ', 28), ('BE', 16), ('BH', 22), ('BA', 20), ('BR', 29),
    ('BG', 22), ('CR', 21), ('HR', 21), ('CY', 28), ('CZ', 24), ('DK', 18), ('DO', 28), ('EE', 20),
    ('FO', 18), ('FI', 18), ('FR', 27), ('GE', 22), ('DE', 22), ('GI', 23), ('GR', 27), ('GL', 18),
    ('GT', 28), ('HU', 28), ('IS', 26), ('IE', 22), ('IL', 23), ('IT', 27), ('KZ', 20), ('KW', 30),
    ('LV', 21), ('LB', 28), ('LI', 21), ('LT', 20), ('LU', 20), ('MK', 19), ('MT', 31), ('MR', 27),
    ('MU', 30), ('MC', 27), ('MD', 24), ('ME', 22), ('NL', 18), ('NO', 15), ('PK', 24), ('PS', 29),
    ('PL', 28), ('PT', 25), ('RO', 24), ('SM', 27), ('SA', 24), ('RS', 22), ('SK', 24), ('SI', 19),
    ('ES', 24), ('SE', 24), ('CH', 21), ('TN', 24), ('TR', 26), ('AE', 23), ('GB', 22), ('VG', 24));

function validIban(iban: string): boolean;
begin
  result := False;
  iban := iban.Replace(' ', '').Replace(#9, '');
  if not iban.All(c -> c.isupper or c.isdigit) then exit;

  if iban.Length <> countryLen.Get(iban[1:3]) then exit;

  iban := iban[5:iban.Length + 1] + iban[1:5];
  var digits: string := '';
  foreach var ch in iban do
    case ch of
      '0'..'9': digits += ch;
      'A'..'Z': digits += (Ord(ch) - Ord('A') + 10).ToString;
    end;
  result := digits.ToBigInteger mod 97 = 1;
end;

begin
  foreach var account in |'GB82 WEST 1234 5698 7654 32', 'GB82 TEST 1234 5698 7654 32'| do
    Println(account, 'validation is:', validIban(account));
end.
{---------------------------------------------------------- 303 identity-matrix}
begin
  var n := ReadInteger;
  var matrix: array [,] of integer := MatrGen(n,n,(i,j) -> i = j ? 1 : 0);
  matrix.Println
end.
{---------------------------------------------------------- 304 idoneal-numbers}
##
function is_idoneal(num: integer): boolean;
begin
  for var a := 1 to num do
    for var b := a + 1 to num do
    begin
      if a * b + a + b > num then break;
      for var c := b + 1 to num do
      begin
        var sum3 := a * b + b * c + a * c;
        if sum3 = num then
        begin
          result := False;
          exit;
        end;
        if sum3 > num then break
      end;
    end;
  result := True;
end;

var idoneals := (1..1000_000).Where(x -> is_idoneal(x)).Take(65);
foreach var n in idoneals index i do
  write(n:5, if i mod 10 = 9 then #10 else '');
{------------------------------------------------- 305 implicit-type-conversion}
type MyInt = class
  i: integer;
  constructor (ii: integer) := i := ii;
  static function operator implicit(i: integer): MyInt := new MyInt(i);
end;

begin
  var ssi: shortint := 1;
  var si: smallint := ssi;
  var i: integer := si;
  var i64: int64 := i;
  var my: MyInt := i;
end.
{--------------------------------------------------------- 306 include-a-file-1}
{$include a.inc}

begin
  Hello
end.
{--------------------------------------------------------- 307 include-a-file-2}
procedure Hello := Print('Hello');
{------------------------ 308 increasing-gaps-between-consecutive-niven-numbers}
function digitsSum(n, sum: int64): int64;
begin
  result := sum + 1;
  while (n > 0) and (n mod 10 = 0) do
  begin
    result -= 9;
    n := n div 10;
  end;
end;

begin
  var niven: int64 := 0;
  var gap: int64 := 0;
  var sum: int64 := 0;
  var nivenIndex: int64 := 0;
  var previous: int64 := 1;
  var gapIndex: int64 := 1;

  println('Gap index  Gap  Niven index  Niven number');

  while gapIndex <= 32 do
  begin
    niven += 1;
    sum := digitsSum(niven, sum);
    if niven mod sum = 0 then
    begin
      if niven > previous + gap then
      begin
        gap := niven - previous;
        writeln(gapIndex:9, gap:5, nivenIndex:13, previous:14);
        gapIndex += 1;
      end;
      previous := niven;
      nivenIndex += 1;
    end;
  end;
end.
{--------------------------------------------- 309 increment-a-numerical-string}
##
var s := '12345';
(s.tointeger + 1).tostring.println;
{----------------------------------------------------------------- 310 infinity}
##
Write(real.PositiveInfinity);
{----------------------------------------------------- 311 inheritance-multiple}
type
  IMy1 = interface
    procedure My1;
  end;
  IMy2 = interface
    procedure My2;
  end;
  MyClass = class(IMy1,IMy2)
  public
    procedure My1 := Writeln('My1');
    procedure My2 := Writeln('My2');
  end;
  MyClassD = class(MyClass,IMy1,IMy2)
  end;

begin
  var my := new MyClassD;
  my.My1; my.My2;
end.
{------------------------------------------------------- 312 inheritance-single}
type
  Animal = class end;
  Dog = class(Animal) end;
  Cat = class(Animal) end;
  Lab = class(Dog) end;
  Collie = class(Dog) end;
{--------------------------------------------------------------- 313 input-loop}
begin
  var f := OpenRead('a.txt');
  while not f.Eof do
    Println(f.ReadString);
  f.Close;
end.
{------------------------------------------------------- 314 integer-comparison}
begin
  var (a,b) := ReadInteger2('Enter a,b:');
  if a < b then
    Println($'{a} is less then {b}')
  else if a > b then
    Println($'{a} is greater then {b}')
  else Println($'{a} is equal to then {b}')
end.
{------------------------------------------------------- 315 integer-sequence-1}
// Integer sequence. Nigel Galloway: September 8th., 2022
function initInfinite(start: integer):=unfold(n->(n,n+1),start);
function initInfinite(start: biginteger):=unfold(n->(n,n+1),start);
begin
  initInfinite(23).Take(10).Println;
  initInfinite(-3).Take(10).Println;
  initInfinite(2bi**70).Take(10).Println;
end.
{------------------------------------------------------- 316 integer-sequence-2}
## 1.Step.Print
{----------------------------------------------- 317 intersecting-number-wheels}
function WheelCreator(wheel: string): () -> char;
begin
  var index := 1;

  result := function(): char ->
  begin
    result := wheel[index];
    index := if index >= wheel.Length then 1 else index + 1;
  end;
end;

function TurnWheels(primary: char; wheels: dictionary<char, () -> char>): sequence of char;
begin
  while true do
  begin
    var turn := wheels.Get(primary)();
    while not turn.IsDigit do
      turn := wheels.Get(turn);
    yield turn;
  end;
end;

begin
  var allwheels :=
  ||('A', '123')|,
  |('A', '1B2'), ('B', '34')|,
  |('A', '1DD'), ('D', '678')|,
  |('A', '1BC'), ('B', '34'), ('C', '5B')||;

  foreach var wheels in allwheels do
  begin
    foreach var w in wheels do
      writeln(w[0], ': ', w[1]);
    println('Generates:');
    var t := TurnWheels(wheels[0][0], wheels.ToDictionary(x -> x[0], x -> WheelCreator(x[1])));
    println(t.Take(20));
    println;
  end;
end.
{------------------------------------------------------- 318 inventory-sequence}
uses PlotWPF;

function inventorySequence(): sequence of integer;
begin
  var counts := new Dictionary<integer, integer>;
  while true do
  begin
    var i := 0;
    while true do
    begin
      var n := counts.Get(i);
      counts[n] := counts.Get(n) + 1;
      yield n;
      if n = 0 then break;
      i += 1;
    end;
  end;
end;

begin
  foreach var element in inventorysequence.Take(100) index i do
    write(element:3, if i mod 20 = 19 then #10 else '');
  println;
  for var n := 1 to 10 do
  begin
    var element := inventorysequence.Select((x, i) -> (i, x)).first(x -> x[1] > n * 1000);
    writeln('First element >= ', n * 1000, ' is ', element[1], ' at index ', element[0]);
  end;

  var x := arrgen(10_000, x -> real(x));
  var y := inventorysequence.Take(10_000).Select(x -> real(x));
  var plot := new MarkerGraphWPF(x, y, Colors.Black, MarkerType.Circle, 3);
end.
{------------------------------------------------------- 319 isbn13-check-digit}
##
function CheckISBN13(code: string): boolean;
begin
  result := false;
  code := code.Replace('-', '').Replace(' ', '');
  if (code.Length <> 13) then exit;
  var sum := 0;
  foreach var digit in code index i do
    if digit.isdigit then
      sum += digit.ToDigit * (if i mod 2 = 0 then 1 else 3)
    else exit;
  result := sum mod 10 = 0;
end;

CheckISBN13('978-0596528126').Println;
CheckISBN13('978-0596528120').Println;
CheckISBN13('978-1788399081').Println;
CheckISBN13('978-1788399083').Println;
{------------------------------------------------- 320 isograms-and-heterograms}
uses System.Net;

function isogram(word: string): integer;
begin
  result := 0;
  var letters := new Dictionary<char, integer>;
  foreach var c in word do
    letters[c] := letters.Get(c) + 1;
  var counts: set of integer;
  foreach var letter in letters do
    counts += [letter.value];
  if counts.Count = 1 then
    result := letters.Get(word[1]);
end;

begin
  var client := new WebClient();
  var text := client.DownloadString('http://wiki.puzzlers.org/pub/wordlists/unixdict.txt');
  var words: sequence of string := text.ToWords(|#10, #13|);
  words.Where(w -> isogram(w) > 1)
       .OrderByDescending(w -> isogram(w))
       .ThenByDescending(w -> w.Length)
       .ThenBy(w -> w).println;
  println;
  words.where(w -> (isogram(w) = 1) and (w.Length > 10))
       .OrderByDescending(w -> w.Length)
       .ThenBy(w -> w).println;
end.
{------------------------------------------- 321 isqrt-integer-square-root-of-x}
function isqrt(x: biginteger): biginteger;
begin
  var q := 1bi;
  result := 0bi;
  while q <= x do
    q := q shl 2;
  while q > 1 do
  begin
    q := q shr 2;
    var t := x - result - q;
    result := result shr 1;
    if t >= 0 Then
    begin
      x := t;
      result += q;
    end;
  end;
end;

begin
  for var n := 0 to 65 do
    write(isqrt(n):2);
  println(#10);
  var n := 7bi;
  for var i := 1 to 73 step 2 do
  begin
    writeln('isqrt(7^', i, ') = ', isqrt(n).ToString('N0'));
    n *= 49;
  end;
end.
{------------------------------------------------- 322 iterated-digits-squaring}
function digits(n: integer): sequence of integer;
begin
  result := new List<integer>;
  repeat
    result := result + n mod 10;
    n := n div 10;
  until n = 0;
end;

function gen(n: integer): integer;
begin
  result := n;
  while (result <> 1) and (result <> 89) do
  begin
    var s := 0;
    foreach var d in digits(result) do s += d * d;
    result := s;
  end;
end;

function chainsEndingWith89(ndigits: integer): int64;
begin
  var prevcount := new Dictionary<integer, int64>;
  var currcount := new Dictionary<integer, int64>;
  for var i := 0 to 9 do prevcount[i * i] := 1;

  loop ndigits - 1 do
  begin
    currcount.Clear;
    foreach var prev in prevcount do
      for var newdigit := 0 to 9 do
      begin
        var nextgen := newdigit * newdigit + prev.key;
        currcount[nextgen] := currcount.get(nextgen) + prev.value;
      end;
    prevcount := new Dictionary<integer, int64>(currcount);
  end;

  foreach var curr in currcount do
    if (curr.key <> 0) and (gen(curr.key) = 89) then
      result += curr.value;
end;

begin
  println('For  8 digits: ', chainsEndingWith89(8));
  println('For 18 digits: ', chainsEndingWith89(18));
  println(milliseconds, 'ms');
end.
{---------------------------------------------------------------- 323 iterators}
type
  DayOfWeek = (Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday);
  Colors = (Red,Green,Blue,Yellow,White);

function Elements145<T>(sq: sequence of T): sequence of T;
begin
  var en := sq.GetEnumerator;
  en.MoveNext;
  yield en.Current;
  en.MoveNext;
  en.MoveNext;
  en.MoveNext;
  yield en.Current;
  en.MoveNext;
  yield en.Current;
end;

function Elements145FromTheEnd<T>(sq: sequence of T): sequence of T
  := Elements145(sq.Reverse);

begin
  var a := Arr(Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday);
  var L := Lst(Red,Green,White,Blue,Yellow);
  a.Println;
  L.Println;
  Elements145(a).Println;
  Elements145(L).Println;
  Elements145FromTheEnd(a).Println;
  Elements145FromTheEnd(L).Println;
end.
{------------------------------------------------------------ 324 jacobi-symbol}
function jacobi(n, k: integer): integer;
begin
  assert((k > 0) and (k mod 2 = 1));
  n := n mod k;
  result := 1;
  while n <> 0 do
  begin
    while n mod 2 = 0 do
    begin
      n := n shr 1;
      if (k and 7) in [3, 5] then
        result := -result;
    end;
    swap(n, k);
    if ((n and 3) = 3) and ((k and 3) = 3) then
      result := -result;
    n := n mod k;
  end;
  if k <> 1 then result := 0;
end;

begin
  write('n/k|');
  for var n := 1 to 20 do write(n:3);
  writeln(#10, '—' * 64);

  for var k := 1 to 21 step 2 do
  begin
    write(k:2, ' |');
    for var n := 1 to 20 do
      write(jacobi(n, k):3);
    writeln;
  end;
end.
{------------------------------------------------------- 325 jacobsthal-numbers}
function IsPrime(n: integer): boolean;
begin
  result := false;
  if n < 2 then exit;
  for var i: integer := 2 to round(sqrt(n)) do
    if n mod i = 0 then exit;
  result := true;
end;

function jacobsthalSequence(prev, curr: int64): sequence of int64;
begin
  yield prev;
  yield curr;
  while true do
  begin
    swap(prev, curr);
    curr += curr + prev;
    yield curr;
  end;
end;

function jacobsthalOblong(): sequence of int64;
begin
  var prev := -1;
  foreach var n in jacobsthalSequence(0, 1) do
  begin
    if prev >= 0 then yield prev * n;
    prev := n;
  end;
end;

function jacobsthalPrimes(): sequence of int64;
begin
  foreach var n in jacobsthalSequence(0, 1) do
    if isPrime(n) then yield n
end;

begin
  writeln('First 30 Jacobsthal numbers:');
  foreach var n in jacobsthalSequence(0, 1).Take(30) index i do
    write(n:11, if i mod 6 = 5 then #10 else '');

  writeln(#10, 'First 30 Jacobsthal-Lucas numbers:');
  foreach var n in jacobsthalSequence(2, 1).Take(30) index i do
    write(n:11, if i mod 6 = 5 then #10 else '');

  writeln(#10, 'First 20 Jacobsthal oblong numbers:');
  foreach var n in jacobsthalOblong().Take(20) index i do
    write(n:13, if i mod 5 = 4 then #10 else '');

  writeln(#10, 'First 10 Jacobsthal prime numbers:');
  foreach var n in jacobsthalPrimes().Take(10) index i do
    write(n:11, if i mod 5 = 4 then #10 else '');
end.
{----------------------------------------------------------- 326 jensens-device}
function Sum(var i: integer; lo, hi: integer; term: ()-> real): real;
begin
  i := lo;
  while i <= hi do
  begin
    result += term();
    i += 1;
  end;
end;

begin
  var i := 0;
  Writeln(Sum(i, 1, 100, () -> 1.0 / i));
end.
{-------------------------------------------------------- 327 jewels-and-stones}
// Jewels and stones. Nigel Galloway: September 27th., 2024
##
var fN:string->string->integer:=jewels->stones->stones.Aggregate(0,(n,g)->n+if jewels.Contains(g) then 1 else 0);
fN('aA')('aAAbbbb').println;
{----------------------------------------------------------------- 328 jortsort}
##
function jortsort<T>(Self: sequence of T): boolean;
extensionmethod;
begin
  result := Self.SequenceEqual(Self.sorted);
end;

(1..10).jortsort.println;
[1,2,3].jortsort.println;
'abcdefgc'.jortsort.Println;
{--------------------------------------------------------- 329 josephus-problem}
procedure j(n, k: integer);
begin
  var p := (0..n - 1).ToList;
  var i := 0;
  var s := new List<integer>;

  while p.Count > 0 do
  begin
    i := (i + k - 1) mod p.Count;
    s.Add(p[i]);
    p.RemoveAt(i);
  end;

  println('Prisoner killing order:', s.SkipLast);
  println('Survivor:', s.Last);
end;

begin
  j(5, 2);
  j(41, 3);
end.
{--------------------------------------------------------------------- 330 json}
{$reference System.Web.Extensions.dll}
uses System.Web.Script.Serialization;

begin
  var serializer := new JavaScriptSerializer;
  var people := new Dictionary<string, object>;
  people.Add('1', 'John');
  people.Add('2', 'Susan');
  var json := serializer.Serialize(people);
  Println(json);
  var res := serializer.Deserialize&<Dictionary<string, object>>(json);
  Println(TypeName(res));
  Println(res);

  var jsonObject := serializer.DeserializeObject('{ "foo": 1, "bar": [10, "apples"] }')
    as Dictionary<string, object>;
  Println(jsonObject);
  var arr := jsonObject['bar'] as array of object;
  arr.Println;
end.
{--------------------------------------------------------- 331 juggler-sequence}
function isqrt(x: biginteger): biginteger;
begin
  var q := 1bi;
  result := 0bi;
  while q <= x do
    q := q shl 2;
  while q > 1 do
  begin
    q := q shr 2;
    var t := x - result - q;
    result := result shr 1;
    if t >= 0 Then
    begin
      x := t;
      result += q;
    end;
  end;
end;

procedure juggler(k: biginteger; countdig: boolean := True);
begin
  var m := k;
  var maxj := k;
  var maxjpos := 0;
  for var i := 1 to 1000 do
  begin
    m := if m mod 2 = 0 then isqrt(m) else isqrt(m * m * m);
    if m >= maxj then
      (maxj, maxjpos) := (m, i);
    if m = 1 then
    begin
      writeln(k:9, i:6, maxjpos:6, ' ', (if countdig then maxj.ToString.Length else maxj):20
              , if countdig then ' digits, ' + milliseconds.ToString + ' ms' else '');
      exit;
    end;
  end;
end;

begin
  writeln('       n    l(n)  i(n)         h(n) or d(n)');
  for var k := 20 to 39 do
    juggler(k, False);

  foreach var k in [113, 173, 193, 2183, 11229, 15065, 15845, 30817] do
    juggler(k)
end.
{---------------------------------------------------------------- 332 julia-set}
uses GraphWPF;

const
  W = 800;
  H = 600;
  Zoom = 1;
  MaxIter = 255;
  MoveX = 0;
  MoveY = 0;
  Cx = -0.7;
  Cy = 0.27015;

begin
  var colors: array [0..255] of color;
  for var n := 0 to 255 do
    colors[n] := RGB(n shr 5 * 36, (n shr 3 and 7) * 36, (n and 3) * 85);

  Window.Title := 'Julia set';
  var image := new Color[W, H];

  for var x := 0 to W - 1 do
    for var y := 0 to H - 1 do
    begin
      var zx := 1.5 * (x - W / 2) / (0.5 * Zoom * W) + MoveX;
      var zy := 1.0 * (y - H / 2) / (0.5 * Zoom * H) + MoveY;
      var i := MaxIter;
      while (zx * zx + zy * zy < 4) and (i > 1) do
      begin
        (zy, zx) := (2.0 * zx * zy + Cy, zx * zx - zy * zy + Cx);
        i -= 1;
      end;
      image[x, y] := colors[i];
    end;
  DrawPixels(0,0,image);
end.
{------------------------------------------------------------ 333 jump-anywhere}
label finish;

begin
  var a := MatrRandomInteger(3,4);
  var found := False;
  for var i:=0 to a.RowCount-1 do
  for var j:=0 to a.ColCount-1 do
    if a[i,j] = 10 then
    begin
      found := True;
      goto finish;
    end;
finish:
  Print(found);
end.
{--------------------------------------------------------- 334 kaprekar-numbers}
##
function iskaprekar(n: int64): boolean;
begin
  if n = 1 then result := true;
  var n2 := (n * n).tostring;
  for var i := 2 to n2.length do
  begin
    var a := StrToInt64(n2[:i]);
    var b := StrToInt64(n2[i:]);
    if (b > 0) and (a + b = n) then result := true;
  end;
end;

(1..10_000).Where(x -> iskaprekar(x)).Println;
(1..1_000_000).Where(x -> iskaprekar(x)).Count.Println;
{-------------------------------------- 335 kernighans-large-earthquake-problem}
##
foreach var s in ReadLines('data.txt') do
  if StrToFloat(s.ToWords(' ')[2]) > 6 then
    s.Println;
{---------------------------------- 336 keyboard-input-obtain-a-y-or-n-response}
begin
  repeat
    var q := console.ReadKey;
    if q.Key in |System.ConsoleKey.Y,System.ConsoleKey.N| then
    begin
      Print($'{q.Key} pressed');
      exit
    end;
  until False;
end.
{---------------------------------------------------- 337 klarner-rado-sequence}
const
  Elements = 10_000_000;

type
  TKlarnerRado = array [1..Elements] of integer;

function initKlarnerRado(): TKlarnerRado;
begin
  var (i2, i3) := (1, 1);
  var (m2, m3) := (1, 1);
  for var i := 1 to result.count do
  begin
    var m := min(m2, m3);
    result[i] := m;
    if m2 = m then
    begin
      m2 := result[i2] shl 1 or 1;
      i2 += 1;
    end;
    if m3 = m then
    begin
      m3 := result[i3] * 3 + 1;
      i3 += 1;
    end;
  end;
end;

begin
  var klarnerRado := initKlarnerRado();

  println('First 100 elements of the Klarner-Rado sequence:');
  for var i := 1 to 100 do
    write(klarnerRado[i]:5, if i mod 10 = 0 then #10 else '');
  writeln;

  for var i := 3 to 7 do
    writeln('The ', 10 ** i, 'th element of Klarner-Rado sequence is ', klarnerrado[(10 ** i).Round]);
end.
{----------------------------------------------------- 338 knapsack-problem-0-1}
type
  item = (string, integer, integer);

const
  wants: array of item =
  |('map', 9, 150),
  ('compass', 13, 35),
  ('water', 153, 200),
  ('sandwich', 50, 160),
  ('glucose', 15, 60),
  ('tin', 68, 45),
  ('banana', 27, 60),
  ('apple', 39, 40),
  ('cheese', 23, 30),
  ('beer', 52, 10),
  ('suntan cream', 11, 70),
  ('camera', 32, 30),
  ('T-shirt', 24, 15),
  ('trousers', 48, 10),
  ('umbrella', 73, 40),
  ('waterproof trousers', 42, 70),
  ('waterproof overclothes', 43, 75),
  ('note-case', 22, 80),
  ('sunglasses', 7, 20),
  ('towel', 18, 12),
  ('socks', 4, 50),
  ('book', 30, 10)|;
  maxweight = 400;

function m(i, w: integer): (List<item>, integer, integer);
begin
  var chosen := new List<item>;
  if (i < 0) or (w = 0) then
    result := (chosen, 0, 0)
  else if (wants[i].Item2 > w) then
    result := m(i - 1, w)
  else
  begin
    var (l0, w0, v0) := m(i - 1, w);
    var (l1, w1, v1) := m(i - 1, w - wants[i].Item2);
    v1 += wants[i].Item3;
    if (v1 > v0) then
    begin
      l1.Add(wants[i]);
      result := (l1, w1 + wants[i].Item2, v1);
    end
    else result := (l0, w0, v0);
  end;
end;

begin
  var (chosenItems, totalWeight, totalValue) := m(wants.Count - 1, maxweight);
  println('Knapsack Item Chosen    Weight Value');
  println('----------------------  ------ -----');
  foreach var it in chosenItems do
    writeln(it.Item1.PadRight(22), it.Item2:7, it.Item3:6);
  println('----------------------  ------ -----');
  writeln('Total ', chosenItems.Count, ' Items Chosen', totalWeight:8, totalValue:6);
end.
{------------------------------------------------------------ 339 knuth-shuffle}
procedure Shuffle<T>(a: array of T);
begin
  for var i := a.Length - 1 downto 1 do
    Swap(a[i], a[Random(i + 1)]);
end;

begin
  var a := Arr(1..9);
  Shuffle(a);
  a.Print;
end.
{------------------------------------------------------- 340 knuths-algorithm-s}
function s_of_n_creator<T>(n: integer): T-> list<T>;
begin
  var sample := new List<T>;
  var i := 0;

  result := function(item: T): list<T> ->
            begin
              i += 1;
              if i <= n then
                sample.add(item)
              else if random(i) < n then
                sample[random(n)] := item;
              result := sample;
            end;
end;

begin
  println('Digits counts for 100_000 runs:');
  var hist: array [0..9] of integer;
  var sample := new List<integer>;
  loop 100_000 do
  begin
    var s_of_n := s_of_n_creator&<integer>(3);
    for var i := 0 to 9 do
      sample := s_of_n(i);
    foreach var val in sample do
      hist[val] += 1;
  end;

  foreach var count in hist index n do
    writeln(n, ': ', count);
end.
{-------------------------------------------------------- 341 knuths-power-tree}
uses NumLibABC;

var
  p := Dict((1, 0));
  lvl := Lst(Lst(word(1)));

function tofraction(s: string): fraction;
begin
  var period := s.IndexOf('.');
  if period = -1 then result := Frc(s.ToBigInteger)
  else result := Frc(s.Remove(period, 1).ToBigInteger, Power(10bi, s.Length - period - 1));
end;

function path(n: word): List<word>;
begin
  result := new List<word>;
  if n = 0 then exit;
  while not p.ContainsKey(n) do
  begin
    var q := new List<word>;
    foreach var x in lvl[0] do
      foreach var y in path(x) do
      begin
        if (x + y) in p then break;
        p[x + y] := x;
        q.add(x + y);
      end;
    lvl[0] := q;
  end;
  result := path(p[n]) + Lst(n);
end;

function treePow(x: real; n: word): Fraction;
begin
  var frac := tofraction(FloatToStr(x));
  var r := Dict((0, Frc(1)), (1, frac));
  var p := 0;
  foreach var i in path(n) do
  begin
    r[i] := r[i - p] * r[p];
    p := i;
  end;
  result := r[n];
end;

procedure showPow(x: real; n: word);
begin
  writeln(n, ': ', path(n));
  writeln(x, '^', n, ' = ', treePow(x, n), #10);
end;

begin
  for var n := 0 to 17 do showPow(2, n);
  showPow(1.1, 81);
  showPow(3, 191);
end.
{------------------------------------------------------- 342 kolakoski-sequence}
function nextInCycle(a: array of integer; index: word) :=  a[index mod a.Length];

function kolakoski(a: array of integer; length: word): array of integer;
begin
  SetLength(result, length);
  var i := 0;
  var k := 0;

  while true do
  begin
    result[i] := nextInCycle(a, k);
    if result[k] > 1 then
      for var j := 1 to result[k] - 1 do
      begin
        i += 1;
        if i = length then exit;
        result[i] := result[i - 1];
      end;
    i += 1;
    if i = length then exit;
    k += 1;
  end;
end;

function possibleKolakoski(a: array of integer): boolean;
begin
  var rle := new List<integer>;
  var prev := a[0];
  var count := 1;
  result := true;

  for var i := 1 to a.Count - 1 do
    if a[i] = prev then
      count += 1
    else
      begin
      rle.Add(count);
      count := 1;
      prev := a[i];
    end;

  foreach var val in rle index i do
    if val <> a[i] then result := false;
end;


begin
  var Ias := |[1, 2], [2, 1], [1, 3, 1, 2], [1, 3, 2, 1]|;
  var Lengths := [20, 20, 30, 30];

  foreach var (length, ia) in Zip(Lengths, Ias) do
  begin
    var kol := kolakoski(ia, length);
    writeln('First ', length, ' members of the sequence generated by ', ia, ':');
    writeln(kol);
    var s := if possibleKolakoski(kol) then 'Yes' else 'No';
    writeln('Possible Kolakoski sequence? ', s, #10);
  end;
end.
{----------------------------------------------------------------- 343 kosaraju}
function kosaraju(g: List<Array of integer>): array of integer;
var
  size := g.Count;
  vis: array of boolean := new boolean[size];
  l: array of integer := new integer[size];
  c: array of integer := new integer[size];
  x := size;
  t: array of List<integer> := new List<integer>[size];

  procedure visit(u: integer);
  begin
    if not vis[u] then
    begin
      vis[u] := true;
      foreach var v in g[u] do
      begin
        visit(v);
        t[v].Add(u);
      end;
      dec(x);
      l[x] := u;
    end;
  end;

  procedure assign(u, root: integer);
  begin
    if vis[u] then
    begin
      vis[u] := false;
      c[u] := root;
      foreach var v in t[u] do assign(v, root);
    end;
  end;

begin
  for var i := 0 to t.Count - 1 do t[i] := new List<integer>;

  foreach var u in [0..size - 1] do visit(u);
  foreach var u in l do assign(u, u);
  result := c;
end;

begin
  var g := Lst(|1|, |2|, |0|, |1, 2, 4|, |3, 5|, |2, 6|, |5|, |4, 6, 7|);
  println(kosaraju(g));
end.
{----------------------------------------- 344 kronecker-product-based-fractals}
type
  Matrix = array [,] of integer;

function kronecker(a, b: Matrix): Matrix;
begin
  SetLength(result, a.RowCount * b.RowCount, a.ColCount * b.ColCount);
  for var i := 0 to a.RowCount - 1 do
    for var j := 0 to a.ColCount - 1 do
      for var k := 0 to b.RowCount - 1 do
        for var l := 0 to b.ColCount - 1 do
          result[b.RowCount * i + k, b.ColCount * j + l] := a[i, j] * b[k, l];
end;

function kroneckerPower(m: Matrix; n: integer): Matrix;
begin
  result := Copy(m);
  foreach var i in 2..n do
    result := kronecker(result, m)
end;

procedure printMatrix(text: String; m: Matrix);
begin
  println(text, 'fractal :');
  for var i := 0 to m.RowCount - 1 do
  begin
    for var j := 0 to m.ColCount - 1 do
      write(if (m[i, j] = 1) then '*' else ' ');
    println();
  end;
  println();
end;

begin
  var a: Matrix := ((0, 1, 0), (1, 1, 1), (0, 1, 0));
  printMatrix('Vicsek', kroneckerPower(a, 4));

  var b: Matrix := ((1, 1, 1), (1, 0, 1), (1, 1, 1));
  printMatrix('Sierpinski carpet', kroneckerPower(b, 4))
end.
{-------------------------------------------------------- 345 kronecker-product}
type
  Matrix = array [,] of integer;

function kronecker(a, b: Matrix): Matrix;
begin
  SetLength(result, a.RowCount * b.RowCount, a.ColCount * b.ColCount);
  for var i := 0 to a.RowCount - 1 do
    for var j := 0 to a.ColCount - 1 do
      for var k := 0 to b.RowCount - 1 do
        for var l := 0 to b.ColCount - 1 do
          result[b.RowCount * i + k, b.ColCount * j + l] := a[i, j] * b[k, l];
end;

begin
  var a1: Matrix := ((1, 2), (3, 4));
  var b1: Matrix := ((0, 5), (6, 7));
  kronecker(a1, b1).Println;
  println;
  var a2: Matrix := ((0, 1, 0), (1, 1, 1), (0, 1, 0));
  var b2: Matrix := ((1, 1, 1, 1), (1, 0, 0, 1), (1, 1, 1, 1));
  kronecker(a2, b2).Println;
end.
{-------------------------------------------------------------- 346 lah-numbers}
function binomial(n, k: integer): biginteger;
begin
  result := 1bi;
  for var i := 1 to k do
    result := result * (n - i + 1) div i;
end;

function factorial(n: integer): biginteger;
begin
  result := 1bi;
  for var i := 2 to n do
    result *= i;
end;

function lah(n, k: integer; signed: boolean := false): biginteger;
begin
  if (n = 0) or (k = 0) or (k > n) then result := 0bi
  else
  if n = k then result := 1bi
  else
  if k = 1 then result := factorial(n)
  else
  begin
    result := binomial(n, k) * binomial(n - 1, k - 1) * factorial(n - k);
    if signed and ((n and 1) <> 0) then result := -result;
  end;
end;

begin
  for var n := 0 to 12 do
  begin
    for var k := 0 to n do
      print(lah(n, k));
    println;
  end;
  println;
  (1..100).Select(k -> lah(100, k)).Max.Println;
end.
{------------------------------------------------------------- 347 langtons-ant}
type
  Direction = (up, right, down, left);
  Color = (white, black);

const
  width = 75;
  height = 52;
  maxSteps = 12_000;

begin
  var m: array [1..height] of array [1..width] of color;
  var dir := up;
  var x := width div 2;
  var y := height div 2;

  var i := 0;
  while (i < maxSteps) and (x in (1..width )) and (y in (1..height )) do
  begin
    var turn := m[y][x] = black;
    m[y][x] := if m[y][x] = black then white else black;

    dir := Direction((4 + integer(dir) + (if turn then 1 else -1)) mod 4);
    case dir of
      up:    dec(y);
      right: dec(x);
      down:  inc(y);
      left:  inc(x);
    end;

    inc(i);
  end;

  for var row := 1 to height do
    m[row].select(x -> (if x = white then '.' else '#')).println;
end.
{--------------------------------------- 348 largest-int-from-concatenated-ints}
##
function maxNum(x: array of integer): string;
begin
  var s := x.select(n -> n.tostring).ToList;
  sort(s, (x, y) -> (x > y));
  result := s.Aggregate((p, x) -> p + x);
end;

maxNum([1, 34, 3, 98, 9, 76, 45, 4]).println;
maxNum([54, 546, 548, 60]).println;
{----------------------------------- 349 largest-number-divisible-by-its-digits}
function digits(n: int64; base: byte): List<byte>;
begin
  result := new List<byte>;
  repeat
    result.Add(byte(n mod base));
    n := n div base;
  until n = 0;
end;

function isLynchBell(num: int64; base: byte) := digits(num, base).All(x -> num mod x = 0);

begin
  for var n := 9876432 downto 1 do
  begin
    var dignum := digits(n, 10);
    if (dignum.Count = dignum.ToSet.Count) and (not dignum.Contains(0)) then
      if islynchbell(n, 10) then
      begin
        Println('Largest decimal number is:', n);
        break;
      end;
  end;

  var magic := 15 * 14 * 13 * 12 * 11;
  var n := $fedcba987654321 div magic * magic;
  while n > 0 do
  begin
    var dignum := digits(n, 16);
    if (dignum.Count = dignum.ToSet.Count) and (not dignum.Contains(0)) then
      if islynchbell(n, 16) then
      begin
        Println('Largest hex number is:', n.ToString('x'));
        break;
      end;
    n -= magic;
  end;
end.
{---------------------------------------------- 350 largest-proper-divisor-of-n}
##
function lpd(n: integer) := range((n / 2).Ceil, 1, -1).First(x -> n mod x = 0);

for var n := 1 to 100 do
  write(lpd(n):3, if n mod 10 = 0 then #10 else '');
{------------------------------------------------ 351 last-friday-of-each-month}
##
uses System;

var year := ReadlnInteger('Enter year:');
var date := new DateTime(year, 12, 31);

var lastfridays :=
     (0..360)
     .Select(x -> date.AddDays(-x))
     .where(x -> x.DayOfWeek = DayOfWeek.friday)
     .GroupBy(x -> x.Month)
     .Select(g -> g.First)
     .Reverse;

foreach var d in lastfridays do
  writeln(d.Year, '-', d.Month, '-', d.Day);
{------------------------------------------------- 352 last-letter-first-letter}
var
  names: array of string := (
      'audino', 'bagon', 'baltoy', 'banette', 'bidoof',
      'braviary', 'bronzor', 'carracosta', 'charmeleon', 'cresselia',
      'croagunk', 'darmanitan', 'deino', 'emboar', 'emolga',
      'exeggcute', 'gabite', 'girafarig', 'gulpin', 'haxorus',
      'heatmor', 'heatran', 'ivysaur', 'jellicent', 'jumpluff',
      'kangaskhan', 'kricketune', 'landorus', 'ledyba', 'loudred',
      'lumineon', 'lunatone', 'machamp', 'magnezone', 'mamoswine',
      'nosepass', 'petilil', 'pidgeotto', 'pikachu', 'pinsir',
      'poliwrath', 'poochyena', 'porygon2', 'porygonz', 'registeel',
      'relicanth', 'remoraid', 'rufflet', 'sableye', 'scolipede',
      'scrafty', 'seaking', 'sealeo', 'silcoon', 'simisear',
      'snivy', 'snorlax', 'spoink', 'starly', 'tirtouga',
      'trapinch', 'treecko', 'tyrogue', 'vigoroth', 'vulpix',
      'wailord', 'wartortle', 'whismur', 'wingull', 'yamask');

var
  maxPathLength := 0;
  maxPathLengthCount := 0;
  maxPathExample := '';

procedure search(part: array of string; offset: integer);
begin
  if (offset > maxPathLength) then
  begin
    maxPathLength := offset;
    maxPathLengthCount := 1;
  end
  else if (offset = maxPathLength) then
  begin
    maxPathLengthCount += 1;
    maxPathExample := '';
    foreach var i in (0..offset - 1) do
      maxPathExample := maxpathexample + (if (i mod 5 = 0) then #10 else ' ') + part[i];
  end;
  var lastChar := part[offset - 1].last;
  foreach var i in (offset..part.Length - 1) do
    if (part[i][1] = lastChar) then
    begin
      Swap(names[offset], names[i]);
      search(names, offset + 1);
      Swap(names[offset], names[i]);
    end;
end;

begin
  foreach var i in (0..names.Length - 1) do
  begin
    Swap(names[0], names[i]);
    search(names, 1);
    Swap(names[0], names[i]);
  end;
  println('Maximum path length         : ', maxPathLength);
  println('Paths of that length        : ', maxPathLengthCount);
  println('Example path of that length : ', maxPathExample);
end.
{------------------------------------------------- 353 law-of-cosines---triples}
##
function issqr(n: integer) := n.Sqrt.Floor.sqr = n;

var alltriples := (1..13).Cartesian(3).Where(x -> (x[0] <= x[1]) and (x[1] <= x[2]));

var tri90 := alltriples.where(x -> x[0].sqr + x[1].sqr = x[2].sqr);
println('For an angle of 90 there are', tri90.count, 'solutions:');
tri90.println;

var tri60 := alltriples.Where(x -> (x[0].sqr + x[1].sqr - x[0] * x[1] = x[2].sqr) or
                                   (x[0].sqr + x[2].sqr - x[0] * x[2] = x[1].sqr));
println(#10, 'For an angle of 60 there are', tri60.count, 'solutions:');
tri60.println;

var tri120 := alltriples.Where(x -> x[0].sqr + x[1].sqr + x[0] * x[1] = x[2].sqr);
println(#10, 'For an angle of 120 there are', tri120.count, 'solutions:');
tri120.println;

var tri60notsame := (1..10_000)
                    .Combinations(2)
                    .Where(x -> issqr(x[0].sqr + x[1].sqr - x[0] * x[1]))
                    .Count;
println(#10, '60 degree triangle where sides are not equal, there are', tri60notsame, 'solutions');
{---------------------------------------------------------------- 354 leap-year}
##
function IsLeapYear(year: word): boolean :=
   if year mod 100 = 0 then year mod 400 = 0
   else year mod 4 = 0;

IsLeapYear(2000).println;
{---------------------------------------------------- 355 least-common-multiple}
function GCD(a,b: integer): integer;
begin
  while b > 0 do
    (a,b) := (b,a mod b);
  Result := a;
end;

function LCM(a,b: integer): integer := a = 0 ? 0 : a div GCD(a,b) * b;

begin
  Println(LCM(12,18));
end.
{---------------------------------------------------------- 356 left-factorials}
function lfact(n: integer): biginteger;
begin
  result := 0;
  var fact := 1bi;
  for var i := 1 to n do
  begin
    result += fact;
    fact *= i;
  end;
end;

begin
  for var n := 0 to 10 do lfact(n).Print;
  println;
  for var n := 2 to 11 do lfact(n * 10).println;
  for var n := 1 to 10 do lfact(n * 1000).tostring.length.print;
end.
{--------------------------------------------------------- 357 leonardo-numbers}
##
function Leonardo(L0: integer; L1: integer; add: integer): sequence of integer;
begin
  while (true) do
  begin
    yield L0;
    (L0, L1) := (L1, L0 + L1 + add);
  end;
end;

Leonardo(1, 1, 1).Take(25).println;
Leonardo(0, 1, 0).Take(25).println;
{----------------------------------------------------- 358 levenshtein-distance}
##
function levenshteinDistance(s1, s2: string): integer;
begin
  if s1.Length > s2.Length then swap(s1, s2);

  var distances := Range(0, s1.Length).ToList;

  foreach var c2 in s2 index i2 do
  begin
    var newDistances := Lst(i2 + 1);
    foreach var c1 in s1 index i1 do
      if c1 = c2 then
        newDistances.Add(distances[i1])
      else
        newDistances.Add(1 + Min(distances[i1], distances[i1 + 1], newDistances[^1]));

    distances := newDistances;
  end;
  result := distances[^1];
end;

levenshteinDistance('kitten', 'sitting').println;
levenshteinDistance('rosettacode', 'raisethysword').println;
{------------------------------------------ 359 linear-congruential-generator-1}
var
  bsdseed, msseed: int64;

function bsdrand: cardinal;
begin
  bsdseed := (1_103_515_245 * bsdseed + 12_345) and $7fffffff;
  bsdrand := bsdseed;
end;

function msrand: cardinal;
begin
  msseed := (214_013 * msseed + 2_531_011) and $ffffffff;
  msrand := msseed shr 16;
end;

begin
  writeln('      BSD            MS');
  bsdseed := 0;
  msseed := 0;
  loop 10 do writeln(bsdrand:12, msrand:12);
end.
{------------------------------------------ 360 linear-congruential-generator-2}
function bsdRand(seed: integer): sequence of integer;
begin
  while true do
  begin
    seed := (1_103_515_245 * seed + 12_345) and $7fffffff;
    yield seed
  end;
end;

function msvcrtRand(seed: integer): sequence of integer;
begin
  while true do
  begin
    seed := (214_013 * seed + 2_531_011) and $7fffffff;
    yield seed shr 16
  end;
end;

begin
  'BSD with seed = 1'.println;
  var iter1 := bsdRand(1);
  foreach var val in iter1.Take(10) do
    println(val);
  println;
  'Microsoft with seed = 0'.Println;
  var iter2 := msvcrtRand(0);
  foreach var val in iter2.Take(10) do
    println(val);
end.
{------------------------------------------------------ 361 list-comprehensions}
##
(1..20).CartesianPower(3).Where(\(x,y,z) -> (x*x + y*y = z*z) and (x < y)).tolist.PrintLines
{-------------------------------------------------- 362 literals-floating-point}
1.0
1e3
2.5E-4
{--------------------------------------------------------- 363 literals-integer}
const
  dec = 16;
  hex = $ff;
  sep = 1_000_000;
  big = 123456789bi; // big integer, unrestricted
{---------------------------------------------------------- 364 literals-string}
##
var s1 := 'Hello';
var s2 := 'quotes ''in'' string';
var s3 := 'chars with a'#13#10'given code in string';
{----------------------------------- 365 logistic-curve-fitting-in-epidemiology}
const
  K = 7.8e9;
  N0 = 27;
  Actual =
  |27.0,      27.0,      27.0,      44.0,      44.0,      59.0,      59.0,
  59.0,      59.0,      59.0,      59.0,      59.0,      59.0,      60.0,
  60.0,      61.0,      61.0,      66.0,      83.0,     219.0,     239.0,
  392.0,     534.0,     631.0,     897.0,    1350.0,    2023.0,    2820.0,
  4587.0,    6067.0,    7823.0,    9826.0,   11946.0,   14554.0,   17372.0,
  20615.0,   24522.0,   28273.0,   31491.0,   34933.0,   37552.0,   40540.0,
  43105.0,   45177.0,   60328.0,   64543.0,   67103.0,   69265.0,   71332.0,
  73327.0,   75191.0,   75723.0,   76719.0,   77804.0,   78812.0,   79339.0,
  80132.0,   80995.0,   82101.0,   83365.0,   85203.0,   87024.0,   89068.0,
  90664.0,   93077.0,   95316.0,   98172.0,  102133.0,  105824.0,  109695.0,
  114232.0,  118610.0,  125497.0,  133852.0,  143227.0,  151367.0,  167418.0,
  180096.0,  194836.0,  213150.0,  242364.0,  271106.0,  305117.0,  338133.0,
  377918.0,  416845.0,  468049.0,  527767.0,  591704.0,  656866.0,  715353.0,
  777796.0,  851308.0,  928436.0, 1000249.0, 1082054.0, 1174652.0|;

function f(r: real): real;
begin
  foreach var i in (0..Actual.length - 1) do
  begin
    var eri := exp(r * i);
    var guess := (N0 * eri) / (1 + N0 * (eri - 1) / K);
    var diff := guess - Actual[i];
    result += diff * diff;
  end;
end;

function solve(fn: (real) -> real; guess: real := 0.5; epsilon: real := 0.0): real;
begin
  result := guess;
  var delta := if result <> 0 then result else 1.0;
  var f0 := fn(result);
  var factor := 2.0;

  while (delta > epsilon) and (result <> result - delta) do
  begin
    var nf := fn(result - delta);
    if nf < f0 then
    begin
      f0 := nf;
      result -= delta;
    end
    else
      nf := fn(result + delta);
    if nf < f0 then
    begin
      f0 := nf;
      result += delta;
    end
    else
      factor := 0.5;
    delta *= factor;
  end;
end;

begin
  var r := solve(f);
  var r0 := exp(12 * r);
  writeln('r = ', r, ', R0 = ', r0);
end.
{----------------------------------------- 366 long-literals-with-continuations}
const
  RevDate = '2024-12-28';

  elementStr = '''
   hydrogen     helium        lithium     beryllium   boron        carbon
   nitrogen     oxygen        fluorine    neon        sodium       magnesium
   aluminum     silicon       phosphorous sulfur      chlorine     argon
   potassium    calcium       scandium    titanium    vanadium     chromium
   manganese    iron          cobalt      nickel      copper       zinc
   gallium      germanium     arsenic     selenium    bromine      krypton
   rubidium     strontium     yttrium     zirconium   niobium      molybdenum
   technetium   ruthenium     rhodium     palladium   silver       cadmium
   indium       tin           antimony    tellurium   iodine       xenon
   cesium       barium        lanthanum   cerium      praseodymium neodymium
   promethium   samarium      europium    gadolinium  terbium      dysprosium
   holmium      erbium        thulium     ytterbium   lutetium     hafnium
   tantalum     tungsten      rhenium     osmium      iridium      platinum
   gold         mercury       thallium    lead        bismuth      polonium
   astatine     radon         francium    radium      actinium     thorium
   protactinium uranium       neptunium   plutonium   americium    curium
   berkelium    californium   einsteinium fermium     mendelevium  nobelium
   lawrencium   rutherfordium dubnium     seaborgium  bohrium      hassium
   meitnerium   darmstadtium  roentgenium copernicium nihonium     flerovium
   moscovium    livermorium   tennessine  oganesson
''';

  elements = elementstr.towords(|#10, #13, ' '|);

begin
  println('Last revision date:   ', RevDate);
  println('Number of elements:   ', Elements.count);
  println('Last element in list: ', Elements[^1]);
end.
{------------------------------------------------------ 367 long-multiplication}
function longmulti(a, b: string): string;
begin
  var i := 0;
  var j := 0;
  var k := false;

  // either is zero, return "0"
  if (a = '0') or (b = '0') then
  begin
    result := '0';
    exit;
  end;

  // see if either a or b is negative
  if a[1] = '-' then
  begin
    i := 2;
    k := not k;
  end;
  if b[1] = '-' then
  begin
    j := 2;
    k := not k;
  end;

  // if yes, prepend minus sign if needed and skip the sign
  if (i > 1) or (j > 1) then
  begin
    result := if k then '-' else '';
    result += longmulti(a[i:a.Length + 1], b[j:b.Length + 1]);
    exit;
  end;

  result := '0' * (a.length + b.length);

  for var ii := a.length downto 1 do
  begin
    var carry := 0;
    var kk := ii + b.length;
    for var jj := b.length downto 1 do
    begin
      var n := a[ii].todigit * b[jj].todigit + result[kk].todigit + carry;
      carry := n div 10;
      result[kk] := chr(n mod 10 + ord('0'));
      dec(kk);
    end;
    result[kk] := chr(ord(result[kk]) + carry);
  end;

  if result[1] = '0' then
    result[1:result.length] := result[2:result.length + 1];
end;

begin
  longmulti('-18446744073709551616', '-18446744073709551616').println;
end.
{-------------------------------------------------------------- 368 long-primes}
function gen_primes_upto(n: integer): sequence of integer;
begin
  if n < 3 then exit;
  var table := |True| * n;
  var sqrtn := n.sqrt.Floor;
  for var i := 2 to sqrtn do
    if table[i] then
      for var j := i * i to n - 1 step i do
        table[j] := False;

  yield 2;
  for var i := 3 to n step 2 do
    if table[i] then yield i
end;

function period(n: integer): integer;
begin
  var r := 1;
  repeat
    r := r * 10 mod n;
    result += 1;
  until r <= 1;
end;

begin
  writeln('The long primes up to 500 are:');
  var primes := Gen_primes_upto(64000).Skip(1);
  primes.Where(x -> (x < 500) and (period(x) = x - 1)).Println;
  writeln;

  writeln('The number of long primes up to:');
  foreach var n in |500, 1000, 2000, 4000, 8000, 16000, 32000, 64000| do
    writeln(n:6, ' is ', primes.Where(x -> (x < n) and (period(x) = x - 1)).Count);
end.
{---------------------------------------------------------------- 369 long-year}
##
uses System;

function islongyear(year: integer): boolean;
begin
  var startdate := new DateTime(year, 1, 1);
  var enddate := new DateTime(year, 12, 31);
  result := (startdate.DayOfWeek = DayOfWeek.Thursday) or (enddate.DayOfWeek = DayOfWeek.Thursday)
end;

(2000..2100).Where(y -> islongyear(y)).Println;
{----------------------------------------------- 370 longest-common-subsequence}
function Lengths(x,y: string): array[,] of integer;
begin
  var (m,n) := (x.Length,y.Length);
  var C := new integer[m+1, n+1]; // filled with zeroes
  for var i:=1 to m do
  for var j:=1 to n do
    if x[i] = y[j] then
      C[i,j] := C[i-1,j-1] + 1
    else C[i,j] := max(C[i,j-1], C[i-1,j]);
  Result := C;
end;

function lcshelper(x,y: string; i,j: integer): string;
begin
  var C := Lengths(x,y);
  if (i = 0) or (j = 0) then
    Result := ''
  else if  X[i] = Y[j] then
    Result := lcshelper(X, Y, i-1, j-1) + X[i]
  else if C[i,j-1] > C[i-1,j] then
    Result := lcshelper(X, Y, i, j-1)
  else Result := lcshelper(X, Y, i-1, j)
end;

function lcs(x,y: string) := lcshelper(x,y,x.Length,y.Length);

begin
  Println(lcs('1234','1224533324'));
  Println(lcs('thisisatest','testing123testing'));
end.
{------------------------------------------------- 371 longest-common-substring}
##
function lcs(s1, s2: string): String;
begin
  var l := 1;
  var r := 0;
  var sub_len := 0;
  for var i := 1 to s1.length do
    foreach var j in (i..s1.length) do
    begin
      if s2.contains(s1[i:j + 1]) then
        if sub_len <= j - i then
        begin
          (l, r) := (i, j);
          sub_len := j - i;
        end
        else break
    end;
  result := s1[l:r + 1];
end;

lcs('thisisatest', 'testing123testing').println;
{------------------------------------------- 372 longest-increasing-subsequence}
function lis(list: array of integer): sequence of array of integer;
begin
  for var len := list.Count downto 1 do
  begin
    var res := new integer[len];
    foreach var sub in (0..list.Count - 1).Combinations(len) do
    begin
      var temp := list[sub[0]];
      for var ind := 1 to len - 1 do
        if list[sub[ind]] > temp then
        begin
          temp := list[sub[ind]];
          if ind = len - 1 then
          begin
            foreach var n in sub index i do
              res[i] := (list[n]);
            yield res;
          end;
        end
        else break;
    end;
  end;
end;

begin
var a := |3, 2, 6, 4, 5, 1|;
lis(a).First.Println;
a := |0, 8, 4, 12, 2, 10, 6, 14, 1, 9, 5, 13, 3, 11, 7, 15|;
lis(a).First.Println;
end.
{---------------------------------------------------- 373 look-and-say-sequence}
##
function lookAndSay(): sequence of string;
begin
  var current: string := '1';
  yield current;

  while true do
  begin
    var ch := current[1];
    var count := 1;
    var next := '';
    foreach var i in 2..current.Length do
      if current[i] = ch then
        inc(count)
      else begin
        next += count.ToString + ch;
        ch := current[i];
        count := 1;
      end;
    current := next + count.ToString + ch;
    yield current;
  end;
end;

foreach var s in lookandsay.Take(12) do
  s.Println;
{--------------------------------- 374 loop-over-multiple-arrays-simultaneously}
begin
  var a1 := Arr('a','b','c');
  var a2 := Arr('A','B','C');
  var a3 := Arr(1,2,3);
  for var i:=0 to a1.Length-1 do
    Writeln(a1[i],a2[i],a3[i]);
  Writeln;
  foreach var (x,y,z) in a1.Zip(a2,a3) do
    Writeln(x,y,z);
  Writeln;
  a1.Zip(a2,a3).PrintLines(t -> t[0]+t[1]+t[2]);
end.
{-------------------------------------------------------------- 375 loops-break}
begin
  while True do
  begin
    var x := Random(0,19);
    Print(x);
    if x = 10 then
      break;
    Print(Random(0,19));
  end;
end.
{----------------------------------------------------------- 376 loops-continue}
begin
  for var i:=1 to 10 do
  begin
    Write(i);
    if i mod 5 = 0 then
    begin
      Writeln;
      continue
    end;
    Write(', ');
  end;
end.
{----------------------------------------------------------- 377 loops-do-while}
begin
  var a := 0;
  repeat
    a += 1;
    Print(a);
  until a mod 6 = 0;
end.
{------------------------------------------------------- 378 loops-downward-for}
##
for var i:=10 downto 0 do
  Print(i);
{------------------------------------------ 379 loops-for-with-a-specified-step}
begin
  for var i:=1 to 10 step 2 do
    Print(i);
  Println;
  for var i:=20 to 1 step -3 do
    Print(i);
end.
{---------------------------------------------------------------- 380 loops-for}
##
for var i:=1 to 5 do
begin
  for var j:=1 to i do
    Write('*');
  Writeln
end;
{------------------------------------------------------------ 381 loops-foreach}
##
foreach var s in ['Pascal','ABC','.NET'] do
  Print(s);
{------------------------------ 382 loops-increment-loop-index-within-loop-body}
function IsPrime(n: BigInteger)
  := (2..n.Sqrt.Round).All(x -> n mod x <> 0);

begin
  var i := 1;
  var n := 42bi;
  while i <= 42 do
  begin
    if IsPrime(n) then
    begin
      Println($'{i,3} {n,15}');
      i += 1;
      n += n - 1;
    end;
    n += 1;
  end;
end.
{---------------------------------------------------- 383 loops-n-plus-one-half}
##
for var i:=1 to 10 do
  Write(i, i = 10 ? '' : ', ');
{------------------------------------------------------------- 384 loops-nested}
label 1;

begin
  var a: array [,] of integer := MatrRandomInteger(3,4,1,10);
  a.Println;

  var found := False;
  for var i:=0 to a.RowCount-1 do
  for var j:=0 to a.ColCount-1 do
    if a[i,j] = 5 then
    begin
      found := True;
      goto 1;
    end;
  1: Println(found);
end.
{-------------------------------------------------------------- 385 loops-while}
##
var n := 1024;
while n > 0 do
begin
  Println(n);
  n := n div 2;
end;
{----------------------------------------------- 386 loops-with-multiple-ranges}
##
var (x,y,z) := (+5,-5,-2);
var (one,three,seven) := (1,3,7);

var seq := (-three .. Round(3 ** 3)).Step(three)
           + (-seven .. +seven).Step(x)
           + (555 .. 550 - y)
           + (22 .. -28).Step(-three)
           + (1927 .. 1939)
           + (x .. y).Step(z)
           + (Round(11 ** x) .. Round(11 ** x) + one);

var sum := seq.Sum(x -> Abs(x));

var prod := 1;
foreach var t in seq do
  if (Abs(prod) < 2bi ** 27) and (t <> 0) then
    prod *= t;
Println('sum =',sum);
Println('prod =',prod);
{------------------------------------------------------- 387 loops-wrong-ranges}
procedure DisplayRange(first, last, step: integer);
begin
  Print($'({first,2}, {last,2}, {step,2}):  ');
  if step = 0 then
    Println('not allowed')
  else Println(Range(first, last, step));
end;

begin
  var ranges := |(-2, 2, 1), (-2, 2, 0), (-2, 2, -1),
                 (-2, 2, 10), (2, -2, 1), (2, 2, 1),
                 (2, 2, -1), (2, 2, 0), (0, 0, 0)|;
  foreach var (f, l, s) in ranges do
    DisplayRange(f,l,s);
end.
{-------------------------------------------------------- 388 lucas-lehmer-test}
function isMersennePrime(p: integer): boolean;
begin
  if (p mod 2 = 0) then result := p = 2
  else begin
    for var i := 3 to p.Sqrt.Floor step 2 do
      if (p mod i = 0) then
      begin
        result := false; //not prime
        exit
      end;
    var m_p := Power(2bi, p) - 1bi;
    var s := 4bi;
    for var i := 3 to p do
      s := (s * s - 2bi) mod m_p;
    result := s = 0bi;
  end;
end;

function GetMersennePrimeNumbers(upTo: integer): sequence of integer;
begin
  var response := new List<integer>;
  {$omp parallel for}
  for var i := 2 to upTo do
    if isMersennePrime(i) then response.Add(i);
  response.Sort;
  result := response;
end;

begin
  foreach var mp in GetMersennePrimeNumbers(11213) do
    Write('M', mp, ' ');
  println(#10, milliseconds / 1000, 's');
end.
{------------------------------------------------------------ 389 ludic-numbers}
function ludic(): sequence of integer;
begin
  yield 1;
  var ludics := new List<integer>;
  while True do
  begin
    var k := 0;
    foreach var j in ludics[::-1] do
      k := (k * j) div (j - 1) + 1;
    ludics.Add(k + 2);
    yield k + 2
  end;
end;

function triplets(): sequence of (integer, integer, integer);
begin
  var (a, b, c, d) := (0, 0, 0, 0);
  foreach var k in ludic do
  begin
    if (k - 4 in [b, c, d]) and (k - 6 in [a, b, c]) then
      yield (k - 6, k - 4, k);
    (a, b, c, d) := (b, c, d, k);
  end;
end;

begin
  writeln('First 25 ludic numbers:');
  ludic.Take(25).Println;

  write(#10, 'Ludic numbers below 1000: ');
  ludic.TakeWhile(x -> x <= 1000).Count.Println;

  writeln(#10, 'Ludic numbers 2000 to 2005: ');
  ludic.Skip(2000 - 1).Take(6).Println;

  writeln(#10, 'all triplets of ludic numbers < 250: ');
  triplets.TakeWhile(x -> x[2] < 250).Println;
end.
{----------------------------------------- 390 luhn-test-of-credit-card-numbers}
function doubleDigit(n: integer) := (n * 2).ToString.Select(c -> c.ToDigit).Sum;

function LuhnCheck(creditCardNumber: string): boolean;
begin
  var checkSum := creditCardNumber
            .Select(c -> c.ToDigit)
            .Reverse
            .Select((digit, index) -> (if odd(index + 1) then digit else doubleDigit(digit)))
            .Sum;

  result := checkSum mod 10 = 0;
end;

begin
  var testNumbers := |49927398716, 49927398717, 1234567812345678, 1234567812345670|;
  foreach var testNumber in testNumbers do
    Writeln(testnumber, ' is ', if LuhnCheck(testNumber.ToString) then '' else 'not ', 'valid');
end.
{---------------------------------------------------------- 391 lychrel-numbers}
const
  iterations = 1000;
  limit = 10_000;

var
  cache := new Dictionary<biginteger, (boolean, biginteger)>;

function rev(n: biginteger) := n.ToString[::-1].ToBigInteger;

function lychrel(n: biginteger): (boolean, biginteger);
begin
  if n in cache then result := cache[n]
  else begin
    var r := rev(n);
    var res := (True, n);
    var seen := new List<biginteger>;
    loop iterations do
    begin
      n += r;
      r := rev(n);
      if n = r then
      begin
        res := (False, 0bi);
        break
      end;
      if n in cache then
      begin
        res := cache[n];
        break
      end;
      seen.Add(n)
    end;

    foreach var x in seen do cache[x] := res;
    result := res;
  end;
end;

begin
  var seeds := new List<integer>;
  var related := new List<integer>;
  var palin := new List<integer>;

  foreach var i in (1..limit) do
  begin
    var (tf, s) := lychrel(i);
    if not tf then continue;
    if i = s then seeds.Add(i) else related.Add(i);
    if i = rev(i) then palin.Add(i);
  end;

  println('There are', seeds.count, 'Lychrel seeds, namely:', seeds);
  println('Lychrel related numbers:', related.count);
  println('There are', palin.count, 'Lychrel palindromes, namely:', palin);
end.
{-------------------------------------------------------------- 392 lyndon-word}
const
  alphabet = '01';

function next_word(n: integer; w: string): string;
begin
  var x := (w * ((n div w.length) + 1))[:n+1];
  while (x <> '') and (x.Last = alphabet.last) do
    x := x[:x.count];
  if x <> '' then
  begin
    var last_char := x.last;
    var next_char_index := alphabet.indexof(last_char) + 1;
    x := x[:x.Count] + alphabet[next_char_index + 1];
  end;
  result := x;
end;

function generate_lyndon_words(n: integer): sequence of string;
begin
  var w:string := alphabet[1];
  while w.count <= n do
  begin
    yield w;
    w := next_word(n, w);
    if w = '' then break;
  end;
end;

begin
  var lyndon_words := generate_lyndon_words(5);
  foreach var word in lyndon_words do
    print(word)
end.
{---------------------------------------------------------- 393 lzw-compression}
function Compress(uncompressed: string): list<integer>;
begin
  // build the dictionary
  var dictionary := new Dictionary<string, integer>;
  for var i := 0 to 255 do
    dictionary[Chr(i).ToString] := i;

  var w := '';
  var compressed := new List<integer>;

  foreach var c in uncompressed do
  begin
    var wc := w + c;
    if wc in dictionary then w := wc
    else begin
      // write w to output
      compressed.Add(dictionary[w]);
      // wc is a new sequence; add it to the dictionary
      dictionary[wc] := dictionary.Count;
      w := c.ToString;
    end;
  end;

  // write remaining output if necessary
  if w <> '' then compressed.Add(dictionary[w]);
  result := compressed;
end;

function Decompress(compressed: list<integer>): string;
begin
  // build the dictionary
  var dictionary := new Dictionary<integer, string>;
  for var i := 0 to 255 do
    dictionary[i] := Chr(i).ToString;

  var w := dictionary[compressed[0]];
  compressed.RemoveAt(0);
  var decompressed := new StringBuilder(w);

  foreach var k in compressed do
  begin
    var entry := '';
    if  k in dictionary then entry := dictionary[k]
    else
      if k = dictionary.Count then entry := w + w[0];

    decompressed.Append(entry);

    // new sequence; add it to the dictionary
    dictionary[dictionary.Count] := w + entry[1];

    w := entry;
  end;

  result := decompressed.ToString;
end;

begin
  var compressed := Compress('TOBEORNOTTOBEORTOBEORNOT');
  Writeln(compressed);
  var decompressed := Decompress(compressed);
  Writeln(decompressed);
end.
{---------------------------------------------------------- 394 m-bius-function}
uses school;

function mobius(n: integer): integer;
begin
  var factors := n.Factorize;
  if factors.Count = factors.ToSet.Count then
    result := if factors.Count.IsEven then 1 else -1
  else result := 0
end;

begin
  println('Mobius numbers from 1..99:');
  for var n := 1 to 99 do
    write(mobius(n):3, if n mod 20 = 0 then #10 else '');
end.
{-------------------------------------------------------- 395 mac-vendor-lookup}
##
uses System.Net;

ServicePointManager.SecurityProtocol := SecurityProtocolType(3072);
var wc := new WebClient;

foreach var mac in |'FC-A1-3E', 'FC:FB:FB:01:FA:21', 'BC:5F:F4'| do
begin
  println(mac, wc.DownloadString('https://api.macvendors.com/' + mac));
  Sleep(1500);
end;
{----------------------------------------------------------- 396 magic-constant}
##
function magic(n: biginteger) := n * (n * n + 1) div 2;

println('The first 20 magic constants:');
(1 + 2..22).Select(x -> magic(x)).Println;
println;

println('The 1,000th magic constant:',magic(1000 + 2),#10);

for var n := 1 to 20 do
begin
  write('10^', n, ': ');
  (1..maxint).Select(x -> biginteger(x))
             .SkipWhile(x -> magic(x) < power(10bi, n))
             .First
             .Println;
end;
{------------------------------------------------------------ 397 magic-numbers}
function magicnumbers(): sequence of biginteger;
begin
  var prevlist := (1..9).Select(x -> biginteger(x)).ToList;
  var newlist := new List<biginteger>;
  var digits := 2;

  yield 0bi;
  while prevlist.Count > 0 do
  begin
    yield sequence prevlist;
    foreach var n in prevlist do
      foreach var j in 0..9 do
      begin
        var number := 10bi * n + j;
        if number mod digits = 0 then
          newlist.Add(number)
      end;

    prevlist := newlist;
    newlist := new list<biginteger>;
    digits += 1;
  end;
end;

begin
  println('There are', magicnumbers.Count, 'magic numbers.');
  Println('The largest magic number is:', magicnumbers.Last);
  println;

  println('Magic number count by digits:');
  var groups := magicnumbers
                .GroupBy(n -> n.tostring.count)
                .Select(g -> (g.key, g.count));
  foreach var group in groups do
    writeln(group[0]:2, group[1]:8);
  println;

  print('Magic numbers that are minimally pandigital in 1-9:');
  magicnumbers.Where(n -> n.ToString.Count = 9)
              .Where(n -> (n.ToString.ToSet.Count = 9)
                          and (not n.ToString.Contains('0')))
              .Println;

  print('Magic numbers that are minimally pandigital in 0-9:');
  magicnumbers.Where(n -> n.ToString.Count = 10)
              .Where(n -> n.Tostring.ToSet.Count = 10)
              .Println;
end.
{--------------------------------------- 398 magic-squares-of-doubly-even-order}
const
  n = 8;

function MagicSquareDoublyEven(n: integer): array [,] of integer;
begin
  assert((n >= 4) and (n mod 4 = 0), 'base must be a positive multiple of 4');

  // pattern of count-up vs count-down zones
  var bits := Convert.ToInt32('1001011001101001', 2);
  var size := n * n;
  var mult := n div 4;  // how many multiples of 4

  result := new integer[n, n];

  var i := 0;
  for var r := 0 to n - 1 do
    for var c := 0 to n - 1 do
    begin
      var bitPos := c div mult + (r div mult) * 4;
      result[r, c] := if (bits and (1 shl bitPos)) <> 0 then i + 1 else size - i;
      i += 1;
    end;
end;

begin
  MagicSquareDoublyEven(n).Println;

  Writeln(#10, 'Magic constant: ', (n * n + 1) * n div 2);
end.
{------------------------------------------------------ 399 magnanimous-numbers}
function IsPrime(n: int64): boolean;
begin
  if (n = 2) or (n = 3) then Result := true
  else if (n <= 1) or ((n mod 2) = 0) or ((n mod 3) = 0) then Result := false
  else
  begin
    var i := 5;
    Result := False;
    while i <= trunc(sqrt(n)) do
    begin
      if ((n mod i) = 0) or ((n mod (i + 2)) = 0) then exit;
      i += 6;
    end;
    Result := True;
  end;
end;

function isMagnanimous(n: int64): boolean;
begin
  var p := 10;
  result := True;
  while True do
  begin
    var a := n div p;
    var b := n mod p;
    if a = 0 then exit;
    if not isPrime(a + b) then break;
    p *= 10;
  end;
  result := false;
end;

function magnanimous(): sequence of int64;
begin
  var n: int64 := 0;
  while true do
  begin
    if isMagnanimous(n) then yield n;
    n += 1;
  end;
end;

begin
  writeln('First 45 magnanimous numbers:');
  magnanimous.Take(45).Println;
  writeln(#10, '241st through 250th magnanimous numbers:');
  magnanimous.Skip(240).Take(10).Println;
  writeln(#10, '391st through 400th magnanimous numbers:');
  magnanimous.Skip(390).Take(10).Println;
end.
{---------------------------------------------------------- 400 man-or-boy-test}
function A(k: integer; x1, x2, x3, x4, x5: function: integer): integer;
begin
  var B: function: integer;
  B := () -> begin
    k := k - 1;
    Result := A(k, B, x1, x2, x3, x4);
  end;
  Result := if k <= 0 then x4() + x5() else B()
end;

begin
  Print(A(10, () -> 1, () -> -1, () -> -1, () -> 1, () -> 0))
end.
{---------------------------------------------------------------- 401 map-range}
##
function maprange(a, b: (real, real); s: real) := b[0] + (s - a[0]) * (b[1] - b[0]) / (a[1] - a[0]);

for var i := 0 to 10 do
  Writeln(i, ' maps to ', maprange((0, 10), (-1, 0), i));
{------------------------------------------- 402 matrix-exponentiation-operator}
uses NumLibABC;

function operator **(m: Matrix; exp: integer): Matrix;
extensionmethod;
begin
  Assert(m.ColCount = m.RowCount, 'Matrix must be square.');
  Assert(exp >= 0, 'Negative exponents not supported');
  result := Matrix.Diag(m.RowCount, 1);
  loop exp do result := result * m;
end;

begin
  var A := new Matrix(2, 2, 1, 1, 1, 0);
  'Original: '.Println;
  A.Println;
  A := A ** 10;
  'Raised to the power of 10: '.Println;
  A.Println;
end.
{---------------------------------------------------- 403 matrix-multiplication}
uses NumLibABC;

begin
  var A := new Matrix(4, 2, 1, 2, 3, 4, 5, 6, 7, 8);
  var B := new Matrix(2, 3, 1, 2, 3, 4, 5, 6);
  var C := A * B;
  'Matrix A:'.Println;
  A.Println(2, 0);
  'Matrix B:'.Println;
  B.Println(2, 0);
  'Matrix A * B:'.Println;
  C.Println(3, 0);
end.
{----------------------------------------------------- 404 matrix-transposition}
uses NumLibABC;

begin
  var A := new Matrix(4, 3,
          1, 2, 3,
          4, 5, 6,
          7, 8, 9,
          10, 11, 12);
  'Original:'.Println;
  A.Println(3, 0);
  'Transposed:'.Println;
  A.Transpose.Println(3, 0);
end.
{------------------------------------------------ 405 maximum-triangle-path-sum}
var
  data := arr(
        |55|,
        |94, 48|,
        |95, 30, 96|,
        |77, 71, 26, 67|,
        |97, 13, 76, 38, 45|,
        |07, 36, 79, 16, 37, 68|,
        |48, 07, 09, 18, 70, 26, 06|,
        |18, 72, 79, 46, 59, 79, 29, 90|,
        |20, 76, 87, 11, 32, 07, 07, 49, 18|,
        |27, 83, 58, 35, 71, 11, 25, 57, 29, 85|,
        |14, 64, 36, 96, 27, 11, 58, 56, 92, 18, 55|,
        |02, 90, 03, 60, 48, 49, 41, 46, 33, 36, 47, 23|,
        |92, 50, 48, 02, 36, 59, 42, 79, 72, 20, 82, 77, 42|,
        |56, 78, 38, 80, 39, 75, 02, 71, 66, 66, 01, 03, 55, 72|,
        |44, 25, 67, 84, 71, 67, 11, 61, 40, 57, 58, 89, 40, 56, 36|,
        |85, 32, 25, 85, 57, 48, 84, 35, 47, 62, 17, 01, 01, 99, 89, 52|,
        |06, 71, 28, 75, 94, 48, 37, 10, 23, 51, 06, 48, 53, 18, 74, 98, 15|,
        |27, 02, 92, 23, 08, 71, 76, 84, 15, 52, 92, 63, 81, 10, 44, 10, 69, 93|);

function solve(triangle: array of array of integer): integer;
begin
  var rows := triangle.Count;
  var sumrow := triangle[rows - 1];
  for var row := rows - 1 downto 1 do
    sumrow := sumrow.Pairwise((x, y) -> Max(x, y))
                    .Zip(triangle[row - 1], (x, y) -> x + y).ToArray;

  result := sumrow[0];
end;

begin
  solve(data).Println;
end.
{---------------------------------------------------------- 406 maze-generation}
const
  w = 14;
  h = 10;

var
  vis := (0..h - 1).Select(x -> [false] * w).ToArray;
  hor := (0..h).select(x -> ['+---'] * w + [string('+')]).ToArray;
  ver := (0..h - 1).select(x -> ['|   '] * w + [string('|')]).ToArray;

procedure walk(x, y: integer);
begin
  vis[y][x] := true;
  foreach var p in ||x - 1, y|, |x, y + 1|, |x + 1, y|, |x, y - 1||.Shuffle do
  begin
    if (p[0] not in (0..w - 1)) or (p[1] not in (0..h - 1)) or vis[p[1]][p[0]] then continue;
    if p[0] = x then hor[max(y, p[1])][x] := '+   ';
    if p[1] = y then ver[y][max(x, p[0])] := '    ';
    walk(p[0], p[1]);
  end;
end;

begin
  walk(random(w), random(h));
  foreach var (a, b) in hor.zip(ver + [''], (x, y) -> (x, y)) do
  begin
    a.println('');
    b.println('');
  end;
end.
{-------------------------------------------------------- 407 mcnuggets-problem}
##
var nuggets := [0..100];
foreach var (x, y, z) in Cartesian(Range(0, 100 div 6), Range(0, 100 div 9), Range(0, 100 div 20)) do
  Exclude(nuggets, 6 * x + 9 * y + 20 * z);

nuggets.Max.println;
{---------------------------------------------------------------------- 408 md5}
##
uses System.Security.Cryptography;

var data := Encoding.ASCII.GetBytes('The quick brown fox jumped over the lazy dog''s back');
foreach var h in MD5.Create().ComputeHash(data) do
  h.ToString('X2').print;
{------------------------------------------------- 409 meissel-mertens-constant}
function gen_primes_upto(n: integer): sequence of integer;
begin
  if n < 3 then exit;
  var table := |True| * n;
  var sqrtn := n.sqrt.Floor;
  for var i := 2 to sqrtn do
    if table[i] then
      for var j := i * i to n - 1 step i do
        table[j] := False;

  yield 2;
  for var i := 3 to n step 2 do
    if table[i] then yield i
end;

begin
  var γ := 0.57721566490153286;
  var sum := 0.0;
  foreach var p in gen_primes_upto(10_000_000_000) index i do
  begin
    var rp := 1 / p;
    sum += ln(1 - rp) + rp;
    //  inc count
    if (i+1) mod 10_000_000 = 0 then
      writeln(i+1, sum + γ:20);
  end;
end.
{-------------------------------------------------------- 410 memory-allocation}
procedure ppp;
begin
  var i,j: integer; // i,j are allocated automatically on the stack when we call procedure
end;

begin
  ppp;
  var p: ^integer;
  New(p); // memory is allocated on the heap
  p^ := 666;
  Dispose(p); // explicit memory deallocation

  var ri := new integer[5]; // memory is allocated on the heap
  ri[0] := 555;
  ri := nil; // memory is controlled by .NET garbage collector
end.
{--------------------------------------------------------- 411 mertens-function}
function mertens(max: integer): list<integer>;
begin
  result := (0..max).select( x -> 1).ToList;
  foreach var n in 2..max do
    foreach var k in 2..n do
      result[n] -= result[n div k];
end;

begin
  println('The first 99 Mertens numbers are:');
  foreach var m in mertens(99) index i do
    if i = 0 then write('   ')
    else write(m:3, if i mod 10 = 9 then #10 else '');

  var zeroes := mertens(1000).Where(x -> x = 0).Count;
  println('M(N) equals zero', zeroes, 'times.');

  var crosses := mertens(1000).Zip(mertens(1000).Skip(1), (x, y) -> (x <> 0) and (y = 0))
                              .Where(x -> x).Count;
  println('M(N) crosses zero', crosses, 'times.');
end.
{---------------------------------------------------------- 412 metallic-ratios}
type
  Metal = (platinum, golden, silver, bronze, copper, nickel, aluminium, iron, tin, lead);

function seq(b: integer): sequence of biginteger;
begin
  // Yield the successive terms if a “Lucas” sequence.
  // The first two terms are ignored.
  var x := 1bi;
  var y := 1bi;
  while true do
  begin
    x += b * y;
    Swap(x, y);
    yield y;
  end;
end;

function plural(n: integer) := if n >= 2 then 's' else '';

procedure computeRatio(b: integer; digits: integer);
begin
  // Compute the ratio for the given "n" with the required number of digits.

  var M := Power(10bi, digits);

  var niter := 0;     // Number of iterations.
  var prevN := 1bi;   // Previous value of "n".
  var ratio := M  ;   // Current value of ratio.

  foreach var n in seq(b) do
  begin
    inc(niter);
    var nextRatio := n * M div prevN;
    if nextRatio = ratio then break;
    prevN := n;
    ratio := nextRatio;
  end;

  var str := ratio.ToString;
  insert('.', str, 2);
  Writeln('Value to ', digits, ' decimal places after ', niter, ' iteration', plural(niter), ': ',str);
end;

begin
  foreach var b in 0..9 do
  begin
    Writeln('“Lucas” sequence for ', Metal(b), ' ratio where b = ', b, ':');
    Write('First 15 elements: 1 1 ');
    var count := 2;
    foreach var n in seq(b) do
    begin
      Write(' ', n);
      Inc(count);
      if count = 15 then break
    end;
    println;
    computeRatio(b, 32);
    Println;
  end;

  Println('Golden ratio where b = 1:');
  computeRatio(1, 256);
end.
{------------------------------------------------------ 413 metered-concurrency}
uses System, System.Threading, System.Threading.Tasks;

procedure Worker(arg: SemaphoreSlim; id: integer);
begin
  var sem: SemaphoreSlim := arg;
  sem.Wait();
  Writeln('Thread ', id, ' has a semaphore & is now working.');
  Thread.Sleep(2 * 1000);
  Writeln('#', id, 'done.');
  sem.Release();
end;

begin
  var semaphore := new SemaphoreSlim(Environment.ProcessorCount * 2, MaxInt);

  Writeln('You have ', Environment.ProcessorCount, ' processors availiabe');
  Writeln('This program will use ', semaphore.CurrentCount, ' semaphores.');

  Parallel.For(0, Environment.ProcessorCount * 3, y -> Worker(semaphore, y));
end.
{----------------------------------------------------- 414 mian-chowla-sequence}
function mian_chowla(): sequence of integer;
label 1;
begin
  var mc := Lst(1);
  yield 1;
  var psums: set of integer := [2];
  var newsums: set of integer := [];
  foreach var trial in 2.Step do
  begin
    foreach var n in (mc + [trial]) do
    begin
      var sum := n + trial;
      if sum in psums then goto 1;
      newsums.add(sum)
    end;
    psums += newsums;
    mc.add(trial);
    yield trial;
    1: newsums := [];
  end;
end;

begin
  println('The first 30 terms of the Mian-Chowla sequence are:');
  mian_chowla.Take(30).Println;
  println;
  println('Terms 91 to 100 of the Mian-Chowla sequence are:');
  mian_chowla.Skip(90).Take(10).Println;
end.
{------------------------------------------------------ 415 middle-three-digits}
type
  ErrOdd = class (Exception) end;
  ErrLen = class (Exception) end;

function middle_three_digits(i: integer): string;
begin
  var s := abs(i).ToString;
  if s.Length < 3 then raise new ErrLen;
  if s.Length mod 2 = 0 then raise new ErrOdd;
  var mid := s.Length div 2;
  result := s[mid:mid + 3];
end;

begin
  var passing := |123, 12345, 1234567, 987654321, 10001, -10001, -123, -100, 100, -12345|;
  var failing := |1, 2, -1, -10, 2002, -2002, 0|;

  foreach var x in passing + failing do
    try
      var answer := middle_three_digits(x);
      writeln(x:10, ' -> ', answer);
    except
      on ErrOdd do
        writeln(x:10, ' -> must have an odd number of digits');
      on ErrLen do
        writeln(x:10, ' -> must have 3 digits or more');
    end;
end.
{---------------------------------------------- 416 miller-rabin-primality-test}
uses System.Security.Cryptography;

function IsProbablePrime(source: biginteger; certainty: integer): boolean;
begin
  if (source = 2) or (source = 3) then
  begin result := true; exit end;

  if (source < 2) or (source mod 2 = 0) then
  begin result := false; exit end;

  var d := source - 1;
  var s := 0;

  while d mod 2 = 0 do
  begin
    d := d div 2;
    s += 1;
  end;

  var rng := RandomNumberGenerator.Create();
  var bytes := new byte[source.ToByteArray.LongLength];
  var a: biginteger;
  loop certainty do
  begin
    repeat
      rng.GetBytes(bytes);
      a := new BigInteger(bytes);
    until (a >= 2) and (a < source - 2);

    var x := BigInteger.ModPow(a, d, source);
    if (x = 1) or (x = source - 1) then continue;

    for var r := 1 to s - 1 do
    begin
      x := BigInteger.ModPow(x, 2, source);
      if x = 1 then
      begin result := false; exit end;
      if x = source - 1 then break;
    end;

    if x <> source - 1 then
    begin result := false; exit end;
  end;

  result := true;
end;

begin
  var data := |'4547337172376300111955330758342147474062293202868155909489',
  '4547337172376300111955330758342147474062293202868155909393'|;

  foreach var candidate in data do
    isprobableprime(candidate.tobiginteger, 10).Println;

  foreach var x in (900..1000) do
    if isprobableprime(x, 10) then print(x);
end.
{------------------------- 417 minimum-multiple-of-m-where-digital-sum-equals-m}
function digitsum(n: integer) := n.ToString.Select(c -> c.ToDigit).Sum;

function a131382(): sequence of integer;
begin
  foreach var n in 1.step do
  begin
    var m := 1;
    while digitsum(m * n) <> n do m += 1;
    yield m;
  end;
end;

begin
  foreach var n in a131382.take(70) index i do
    write(n:9, if i mod 10 = 9 then #10 else '');
end.
{--------------------------------------------- 418 modified-random-distribution}
function modifier(x: real) := if x < 0.5 then 2 * (0.5 - x) else 2 * (x - 0.5);

function modrand(modifier: real-> real): sequence of real;
begin
  repeat
    var r := Random;
    if Random < modifier(r) then yield r;
  until false;
end;

begin
  var data := modrand(modifier).Take(100_000);
  var bins := data.Select(x -> (20 * x).Floor)
                  .Sorted
                  .GroupBy(n -> n)
                  .Select(g -> g.Count);

  writeln('Bin Counts  Histogram');
  foreach var counts in bins index i do
    writeln(i / 20:2:2, counts:6, ': ', '■' * (counts div 125));
end.
{------------------------------------------------- 419 modular-exponentiation-1}
##
var a := '2988348162058574136915891421498819466320163312926952423791023078876139'.ToBigInteger;
var b := '2351399303373464486466122544523690094744975233415544072992656881240319'.ToBigInteger;
var m := Power(10bi, 40);
Writeln(BigInteger.ModPow(a, b, m));
{------------------------------------------------- 420 modular-exponentiation-2}
// Modular exponentiation. Nigel Galloway:August 22nd., 2024
type I=System.Numerics.BigInteger;
var bi:string->I:=n->I.Parse(n);
function expMod(a:I;b:I;n:I):I;
  function fN(a:I;b:I;c:I):I;
  begin
    result:=if b=0 then c else fN(a*(a mod n),b/bi('2'),(if (b mod 2)=0 then c else c*a mod n));
  end;
begin
  result:=fN(a,b,I.One)
end;
begin
  var a := bi('2988348162058574136915891421498819466320163312926952423791023078876139');
  var b := bi('2351399303373464486466122544523690094744975233415544072992656881240319');
  println(expMod(a,b,bi('10')**40).ToString());
end.
{---------------------------------------------------------- 421 modular-inverse}
function ModInverse(a, m: integer): integer;
begin
  result := 1;
  if m = 1 then exit;
  var m0 := m;
  var (x, y) := (1, 0);
  while a > 1 do
  begin
    var q := a div m;
    (a, m) := (m, a mod m);
    (x, y) := (y, x - q * y);
  end;
  result := if x < 0 then x + m0 else x;
end;

begin
  ModInverse(42, 2017).Println;
end.
{------------------------------------------------------ 422 monte-carlo-methods}
##
for var i := 3 to 8 do
begin
  var n := integer(10 ** i);
  var count := 0;
  loop n do
    if random.sqr + random.sqr < 1 then count += 1;
  Writeln(n:10, 4 * count / n:12:8);
end;
{------------------------------------------------------- 423 monty-hall-problem}
function games(n: integer): (integer, integer);
begin
  var stay := 0;
  var switch := 0;
  loop n do
  begin
    var lst := lst(1, 0, 0);  // one car and two goats
    lst.shuffle;              // shuffles the list randomly
    var ran := Random(3);     // gets a random number for the random guess
    var user := lst[ran];     // storing the random guess
    lst.RemoveAt(ran);        // deleting the random guess

    var huh := 0;
    foreach var i in lst do
    begin                     // getting a value 0 and deleting it
      if i = 0 then
      begin
        lst.RemoveAt(huh);    // deletes a goat when it finds it
        break
      end;
      huh += 1;
    end;

    if user = 1 then          // if the original choice is 1 then stay adds 1
      stay += 1;

    if lst[0] = 1 then        // if the switched value is 1 then switch adds 1
      switch += 1;
  end;
  result := (stay, switch);
end;

begin
  var (stay, switch) := games(1000);
  println('Stay = ', stay);
  println('Switch = ', switch);
end.
{--------------------------------------------------------------- 424 morse-code}
const
  Morse =  dict(('A', '.-'),     ('B', '-...'),   ('C', '-.-.'),    ('D', '-..'),    ('E', string('.')),
                 ('F', '..-.'),   ('G', '--.'),    ('H', '....'),    ('I', '..'),     ('J', '.---'),
                 ('K', '-.-'),    ('L', '.-..'),   ('M', '--'),      ('N', '-.'),     ('O', '---'),
                 ('P', '.--.'),   ('Q', '--.-'),   ('R', '.-.'),     ('S', '...'),    ('T', string('-')),
                 ('U', '..-'),    ('V', '...-'),   ('W', '.--'),     ('X', '-..-'),   ('Y', '-.--'),
                 ('Z', '--..'),   ('0', '-----'),  ('1', '.----'),   ('2', '..---'),  ('3', '...--'),
                 ('4', '....-'),  ('5', '.....'),  ('6', '-....'),   ('7', '--...'),  ('8', '---..'),
                 ('9', '----.'),  ('.', '.-.-.-'), (',', '--..--'),  ('?', '..--..'), ('\', '.----.'),
                 ('!', '-.-.--'), ('/', '-..-.'),  ('(', '-.--.'),   (')', '-.--.-'), ('&', '.-...'),
                 (':', '---...'), (';', '-.-.-.'), ('=', '-...-'),   ('+', '.-.-.'),  ('-', '-....-'),
                 ('_', '..--.-'), ('''', '.-..-.'), ('$', '...-..-'), ('@', '.--.-.'));

procedure SayMorse(s: string);
begin
  foreach var c in s do
  begin
    foreach var c2 in Morse.get(c.ToUpper, '') do
      if c2 = '.' then console.Beep(1000, 250)
      else console.Beep(1000, 750);
    sleep(1000);
  end;
end;

begin
  SayMorse('SOS');
end.
{---------------------------------------------------------- 425 motzkin-numbers}
function IsPrime(n: int64): boolean;
begin
  if (n = 2) or (n = 3) then Result := true
  else if (n <= 1) or ((n mod 2) = 0) or ((n mod 3) = 0) then Result := false
  else
  begin
    var i := 5;
    Result := False;
    while i <= trunc(sqrt(n)) do
    begin
      if ((n mod i) = 0) or ((n mod (i + 2)) = 0) then exit;
      i += 6;
    end;
    Result := True;
  end;
end;

function mot(): sequence of biginteger;
begin
  var (a, b, n) := (0bi, 1bi, 1bi);
  repeat
    yield b div n;
    n += 1;
    (a, b) := (b, (3 * (n - 1) * n * a + (2 * n - 1) * n * b) div ((n + 1) * (n - 1)))
  until false;
end;

begin
  foreach var val in mot.Take(42) index i do
    writeln(i:2, val:20, if isprime(int64(val)) then ' is prime' else '');
end.
{----------------------------------------------------------- 426 mouse-position}
##
uses GraphWPF;
Font.Size := 80;
OnMouseMove := (x,y,mb) -> begin
  Window.Clear;
  DrawText(Window.ClientRect,$'{x,0:f0}, {y,0:f0}');
end;
{-------------------------------------------------- 427 move-to-front-algorithm}
const
  SymbolTable = Lst('a'..'z');

function encode(s: string): list<integer>;
begin
  result := new List<integer>;
  var symtable := SymbolTable;
  foreach var c in s do
  begin
    var idx := symtable.IndexOf(c);
    result.add(idx);
    symtable.RemoveAt(idx);
    symtable.Insert(0, c);
  end;
end;

function decode(s: list<integer>): string;
begin
  var symtable := SymbolTable;
  foreach var idx in s do
  begin
    var c := symtable[idx];
    result += c;
    symtable.RemoveAt(idx);
    symtable.Insert(0, c);
  end;
end;

begin
  foreach var word in ['broood', 'babanaaa', 'hiphophiphop'] do
  begin
    var encoded := encode(word);
    var decoded := decode(encoded);
    var status := if decoded = word then 'correctly' else 'incorrectly';
    println(word, 'encodes to', encoded, 'which', status, 'decodes to', decoded);
  end;
end.
{----------------------------------------------------------- 428 multifactorial}
##
function mfac(n, m: integer) := range(n, 1, -m).aggregate(1, (p, x) -> p * x);

function mfac2(n, m: integer): integer := if n <= (m + 1) then n else n * mfac2(n - m, m);

foreach var m in (1..5) do
begin
  write(#10, m, ': ');
  foreach var n in (1..10) do
    mfac2(n, m).Print;
end;
{------------------------------------------------------ 429 multiple-regression}
uses NumLibABC;

function multipleRegression(y, x: Matrix): Matrix;
begin
  var cy := y.Transpose;
  var cx := x.Transpose;
  result := ((x * cx).Inv * x * cy).Transpose;
end;

begin
  var y := new Matrix(1, 5, 1, 2, 3, 4, 5);
  var x := new Matrix(1, 5, 2, 1, 3, 4, 5);
  multipleRegression(y, x).println(18, 15);

  y := new Matrix(1, 3, 3, 4, 5);
  x := new Matrix(2, 3, 1, 2, 1, 1, 1, 2);
  multipleRegression(y, x).Println(4, 1);

  y := new Matrix(1, 15, 52.21, 53.12, 54.48, 55.84, 57.20, 58.57, 59.93, 61.29,
                         63.11, 64.47, 66.28, 68.10, 69.92, 72.19, 74.46);
  var a := |1.47, 1.5, 1.52, 1.55, 1.57, 1.6, 1.63, 1.65, 1.68, 1.7, 1.73, 1.75, 1.78, 1.8, 1.83|;
  var aa := a.Select(x -> x.Sqr).ToArray;
  var c := |1.0| * a.Length + a + aa;
  x := new Matrix(3, a.Length, c);
  multipleRegression(y, x).Println(18, 12);
end.
{---------------------------------------------------- 430 multiplication-tables}
##
write('  x|');
for var i := 1 to 12 do write(i:4);
writeln(#13, '---+', '-' * 48);
for var i := 1 to 12 do
begin
  write(i:3, '|', ' ' * (4 * i - 4));
  for var j := i to 12 do write(i * j:4);
  writeln;
end;
{--------------------------------------------------------------- 431 multisplit}
// Multisplit. Nigel Galloway: August 16th., 2024
## print('a!===b=!=c'.Split(|'==','!=','='|,System.StringSplitOptions.None))
{------------------------------------------------------- 432 munchausen-numbers}
##
(1..5000).Where(x -> x = x.ToString.Select(c -> (if c = '0' then 0 else c.ToDigit ** c.ToDigit)).Sum).Println;
{------------------------------------------------------------ 433 musical-scale}
##
foreach var note in [261.63, 293.66, 329.63, 349.23, 392.00, 440.00, 493.88, 523.25] do
  Console.Beep(note.Round, 500)
{--------------------------------------------------------- 434 mutual-recursion}
##
function M(n: integer): integer; forward;
function F(n: integer): integer := if n < 1 then 1 else n - M(F(n - 1));
function M(n: integer): integer := if n < 1 then 0 else n - F(M(n - 1));

(0..19).select(x -> F(x)).println;
(0..19).select(x -> M(x)).println;
{--------------------------------------------------------- 435 n-queens-problem}
const
  N = 8;

begin
  var cols := (1..N);
  var solutions := 0;
  foreach var vec in cols.Permutations do
    if (N = cols.Select(n -> vec[n - 1] + n).ToSet.Count) and
       (N = cols.Select(n -> vec[n - 1] - n).ToSet.Count) then
    begin
      solutions += 1;
//      foreach var col in ('a'..'h') index i do
//        write(col, vec[i], ' ');
//      write(if solutions mod 4 = 0 then #10 else '    ');
    end;
  writeln('Solutions: ', solutions);
end.
{--------------------------------------------------------- 436 named-parameters}
##
procedure test(first: integer; second: integer := 2; third: integer := 3);
begin
end;

test(5);
test(5, 5);
test(5, third := 5, second := 5);
{------------------------------------------------------- 437 naming-conventions}
Dictionary<TKey, TValue>
{---------------------------------------------- 438 narcissistic-decimal-number}
function narc(): sequence of integer;
begin
  var power := |0, 1, 2, 3, 4, 5, 6, 7, 8, 9|;
  var limit := 10;
  var x := 0;
  repeat
    if x >= limit then
    begin
      foreach var i in (0..9) do power[i] := power[i] * i;
      limit := limit * 10;
    end;
    var sum := 0;
    var xx := x;
    while (xx > 0) do
    begin
      sum := sum + power[xx mod 10];
      xx := (xx / 10).floor;
    end;
    if sum = x then yield x;
    x += 1;
  until false;
end;

begin
  narc.Take(25).println;
end.
{---------------------------------------------------------- 439 nested-function}
procedure MakeList(separator: string);
  var counter := 1;
  procedure MakeItem;
  begin
    Write(counter, separator);
    case counter of
      1: Writeln('first');
      2: Writeln('second');
      3: Writeln('third');
    end;
    counter += 1;
  end;
begin
	MakeItem;
	MakeItem;
	MakeItem;
end;

begin
  MakeList('. ');
end.
{--------------------------------------------- 440 next-highest-int-from-digits}
function digits(n: biginteger): list<byte>;
begin
  // Return the list of digits of "n" in reverse order.
  result := new list<byte>;
  if n = 0 then result.add(0);
  while n <> 0 do
  begin
    result.add(byte(n mod 10));
    n := n div 10;
  end;
end;

function nextHighest(n: biginteger): biginteger;
begin
  // Find the next highest integer of "n".
  // If none is found, "n" is returned.
  var d := digits(n); // Warning: in reverse order.
  var m := d[0];
  foreach var i in 1..d.Count - 1 do
    if d[i] < m then
    begin
      // Find the digit greater then d[i] and closest to it.
      var delta := m - d[i] + 1;
      var best: integer;
      foreach var j in 0..i - 1 do
      begin
        var diff := d[j] - d[i];
        if (diff > 0) and (diff < delta) then
        begin
          // Greater and closest.
          delta := diff;
          best := j;
        end;
      end;
      // Exchange digits.
      (d[i], d[best]) := (d[best], d[i]);
      // Sort previous digits.
      var (d1, d2) := d.SplitAt(i);
      d := d1.SortedDescending.ToList + d2.ToList;
      break;
    end
    else m := d[i];
  // Compute the value from the digits.
  foreach var val in d[::-1] do
    result := 10 * result + val;
end;

begin
  foreach var n in [0, 9, 12, 21, 12453, 738440, 45072010, 95322020] do
    println(n, ' → ', nextHighest(n));
  var n := '9589776899767587796600'.ToBigInteger;
  println(n, '→', nextHighest(n));
end.
{----------------------------------------------------------------- 441 nim-game}
##
writeln('There are twelve tokens.');
writeln('You can take 1, 2, or 3 on your turn.');
writeln('Whoever takes the last token wins.');

var tokens := 12;

while (tokens > 0) do
begin
  writeln('There are ' + tokens + ' remaining.');
  writeln('How many do you take?');
  var playertake := ReadInteger;

  if (playertake < 1) or (playertake > 3) then
    writeln('1, 2 or 3 only.')
  else
          begin
    tokens -= playertake;
    writeln('I take ' + (4 - playertake) + '.');
    tokens -= (4 - playertake);
  end;
end;

writeln('I win again.');
{---------------------------------------------- 442 non-continuous-subsequences}
function AllSubSets<T>(a: List<T>; i: integer; lst: List<T>): sequence of List<T>;
begin
  if i = a.Count then yield lst
  else
  begin
    lst.Add(a[i]);
    yield sequence AllSubSets(a, i + 1, lst);
    lst.RemoveAt(lst.Count - 1);
    yield sequence AllSubSets(a, i + 1, lst);
  end;
end;

function IsContinuous(lst: List<integer>) :=
if lst.Count > 0 then lst[^1] - lst[0] + 1 = lst.Count else true;

function ncsub<T>(seq: list<T>) :=
Allsubsets(Lst(1..seq.Count), 0, new List<integer>)
                                   .Where(s -> not iscontinuous(s))
                                   .Select(s -> s.Select(i -> seq[i - 1]).ToList);

begin
  var seq := |'C', 'D', 'A', 'E', 'B'|.ToList;
  println('Non-continuous subsequences for', seq, ':');
  ncsub(seq).Println;
  println;
  println('Non-continuous subsequences:');
  for var n := 1 to 20 do
    println([1..n], '=', ncsub([1..n].ToList).Count);
end.
{---------------------------------------------------------------- 443 nonoblock}
function genSequence(ones: list<string>; numZeros: integer): list<string>;
begin
  result := new list<string>;
  if ones.Count = 0 then result := Lst('0' * (numZeros +1))
  else
    foreach var x in 1..(numZeros - ones.Count + 2) do
    begin
      var skipOne := ones.Skip(1).ToList;
      foreach var tail in genSequence(skipOne, numZeros - x) do
        result.add(('0' * x) + ones[0] + tail);
    end;
end;

procedure printBlock(data: string; length: integer);
begin
  var a := data.select(c -> ord(c) - ord('0')).ToList;
  var sumBytes := a.sum;

  writeln(#10, 'blocks ', a, ' cells ', length);
  if length - sumBytes <= 0 then
    println('No solution')
  else
  begin
    var prep := a.Select(n -> '1' * n).ToList;

    foreach var r in genSequence(prep, length - sumBytes) do
      r[2:].println;
  end;
end;

begin
  printBlock('21', 5);
  printBlock('', 5);
  printBlock('8', 10);
  printBlock('2323', 15);
  printBlock('23', 5);
end.
{---------------------------------------------------------------------- 444 nth}
var suffix := |'th', 'st', 'nd', 'rd'| + |'th'| * 6;

function Nth(n: integer)
  := $'{n}''' + if n mod 100 not in 11..19 then suffix[n mod 10] else 'th';

begin
  ((0..24) + (500..524) + (700..724) + (1000..1024))
    .Select(Nth).Println;
end.
{-------------------------------------------------------------- 445 null-object}
begin
  var a := new integer[](1,2,3);
  if Random(2) = 0 then
    a := nil;
  Print(a);
end.
{------------------------ 446 numbers-which-are-not-the-sum-of-distinct-squares}
function soms(n: integer; f: list<integer>): boolean;
begin
  if (n <= 0) then result := false
  else
  if n in f then result := true
  else
    case n.CompareTo(f.Sum) of
      1: result := false;
      0: result := true;
    else
      var rf := f[::-1].Skip(1).ToList;
      result := soms(n - f.Last, rf) or soms(n, rf);
    end;
end;

begin
  var i := 1;
  var g := 1;
  var s := new List<integer>;
  var a := new List<integer>;

  repeat
    if i.Sqrt.Floor.Sqr = i then s.Add(i);
    if not soms(i, s) then
    begin
      g := i;
      a.Add(g)
    end;
    i += 1;
  until g < (i shr 1);

  println('Numbers which are not the sum of distinct squares:');
  a.println;
  println;
  println('Stopped checking after finding', i - g, 'sequential non-gaps after the final gap of', g);
  println('Found', a.count, 'total.');
end.
{- 447 numbers-which-are-the-cube-roots-of-the-product-of-their-proper-divisors}
function ProperDivisorsProduct(n: int64): int64;
begin
  result := 1;
  var d := 2;
  repeat
    if n mod d = 0 then
    begin
      result *= d;
      var q := n div d;
      if q <> d then result *= q;
    end;
    d += 1;
  until d * d > n;
end;

function a111398(): sequence of int64;
begin
  foreach var n: int64 in 1.step do
    if n * n * n = ProperDivisorsProduct(n) then yield n;
end;

begin
  foreach var n in a111398.Take(50) index i do
    write(n:4, if (i + 1) mod 10 = 0 then #10 else '');
  writeln;
  foreach var n in |500, 5000, 50000| do
    writeln(n:5, ' ', a111398.ElementAt(n - 1));
end.
{--------------------------------------- 448 numbers-with-equal-rises-and-falls}
function a296712(): sequence of integer;
begin
  foreach var n in 1.step do
    if n.ToString
        .Pairwise((x, y) -> (if x > y then 1 else if x < y then -1 else 0))
        .Sum = 0 then
      yield n;
end;

begin
  println('The first 200 numbers are:');
  a296712.Take(200).Print;
  println;
  println;
  println('The 10,000,000th number is:');
  a296712.ElementAt(10_000_000 - 1).Println;
end.
{------------------------------------------------ 449 numeric-error-propagation}
type
  Approx = record
  private
    value, sigma: real;
  public
    constructor(v, s: real);
    begin
      value := v;
      sigma := s;
    end;

    class function operator-(a: Approx) := new Approx(-a.value, a.sigma);
    class function operator+(a: Approx) := a;

    class function operator+(a, b: Approx) := new Approx(a.value + b.value, (a.sigma.Sqr + b.sigma.Sqr).Sqrt);
    class function operator+(a: Approx; b: real) := new Approx(a.value + b, a.sigma);
    class function operator+(b: real; a: Approx) := a + b;

    class function operator-(a, b: Approx) := a + (-b);
    class function operator-(a: Approx; b: real) := a + (-b);
    class function operator-(b: real; a: Approx) := (-a) + b;

    class function operator*(a, b: Approx): Approx;
    begin
      var v := a.value * b.value;
      Result := new Approx(v, v * ((a.sigma / a.value).Sqr + (b.sigma / b.value).Sqr).Sqrt)
    end;

    class function operator*(a: Approx; b: real) := new Approx(a.value * b, abs(a.sigma * b));
    class function operator*(b: real; a: Approx) := a * b;

    class function operator/(a, b: Approx): Approx;
    begin
      var v := a.value / b.value;
      Result := new Approx(v, v * ((a.sigma / a.value).Sqr + (b.sigma / b.value).Sqr).Sqrt);
    end;

    class function operator/(a: Approx; b: real) := new Approx(a.value / b, abs(a.sigma * b));
    class function operator/(b: real; a: Approx) := a / b;

    class function operator**(a: Approx; b: real): Approx;
    begin
      var v := power(a.value, b);
      Result := new Approx(v, abs(v * b * a.sigma / a.value));
    end;

    function ToString: string; override;
    begin
      Result := Format('{0} ± {1}', value, sigma);
    end;
  end;

function Sqrt(Self: Approx): Approx; extensionmethod;
begin
  result := Self ** 0.5;
end;

begin
  var x1 := new Approx(100, 1.1);
  var y1 := new Approx(50, 1.2);
  var x2 := new Approx(200, 2.2);
  var y2 := new Approx(100, 2.3);
  println(((x1 - x2) ** 2 + (y1 - y2) ** 2).Sqrt);
end.
{---------------------------------------------------- 450 numerical-integration}
function integrate(a, b: real; n: integer; f: real-> real): real;
begin
  var h := (b - a) / n;
  var sum: array [0..4] of real;
  for var i := 0 to n - 1 do
  begin
    var x := a + i * h;
    sum[0] += f(x);
    sum[1] += f(x + h / 2.0);
    sum[2] += f(x + h);
    sum[3] += (f(x) + f(x + h)) / 2.0;
    sum[4] += (f(x) + 4.0 * f(x + h / 2.0) + f(x + h)) / 6.0;
  end;
  var methods := |'LeftRect ', 'MidRect  ', 'RightRect', 'Trapezium', 'Simpson  '|.tolist;
  for var i := 0 to 4 do
    println(methods[i], ' = ', sum[i] * h);
  println;
end;

begin
  integrate(0.0, 1.0, 100, x -> x * x * x);
  integrate(1.0, 100.0, 1_000, x -> 1 / x);
  integrate(0.0, 5000.0, 5_000_000, x -> x);
  integrate(0.0, 6000.0, 6_000_000, x -> x);
end.
{----------------------------------------------------- 451 object-serialization}
type
  [Serializable]
  Base = class
  public
    fb: integer;
    constructor (fb: integer) := Self.fb := fb;
    function ToString: string; override := fb.ToString;
  end;

  [Serializable]
  Derived = class(Base)
  public
    fd: real;
    constructor (fb: integer; fd: real);
    begin
      inherited Create(fb);
      Self.fd := fd;
    end;
    function ToString: string; override := inherited ToString + ',' + fd.ToString;
  end;

begin
  var lst := new List<Base>;
  lst.Add(new Base(3));
  lst.Add(new Derived(4,5.5));
  lst.Add(new Base(6));
  lst.Add(new Derived(7,8.8));
  lst.Println;
  Serialize('objects.dat',lst);
  var lst1 := DeSerialize('objects.dat') as List<Base>;
  lst1.Println;
end.
{--------------------------------------------------------- 452 odd-word-problem}
var
  alpha := ('a'..'z') + ('A'..'Z');

procedure reverseWord(var ch: char);
begin
  var nextch := readChar();
  if nextch in alpha then reverseWord(nextch);
  write(ch);
  ch := nextch;
end;

procedure normalWord(var ch: char);
begin
  write(ch);
  ch := readChar();
  if ch in alpha then normalWord(ch);
end;

begin
  var ch := readChar();

  while ch <> '.' do
  begin
    normalWord(ch);
    if ch <> '.' then
    begin
      write(ch);
      ch := readChar();
      reverseWord(ch);
    end;
  end;
  write(ch)
end.
{---------------------------------------------------------------- 453 odd-words}
function GetOdd(const w: string): string;
begin
  Result := '';
  for var i := 1 to w.Length do
    if i mod 2 = 1 then // нечётные
      Result += w[i];
end;

begin
  var words := ReadAllLines('unixdict.txt');

  // HashSet Для быстрого поиска
  var wordSet := new HashSet<string>(words);

  foreach var word in words do
  begin
    var ow := GetOdd(word);
    if (ow.Length > 4) and wordSet.Contains(ow) then
      Writeln(word, ' => ', ow);
  end;
end.
{-------------------------------------------------------- 454 ohalloran-numbers}
const
  M = 1000;      // Maximum area.
  N = M div 2;   // Maximum half area.

var
  isOHalloran := (0..N).Select(n -> true).ToArray;

begin
  foreach var length in 1..N do
    foreach var width in 1..length do
    begin
      var plw := length * width;
      if plw > N then break;
      var slw := length + width;
      foreach var height in 1..width do
      begin
        var halfArea := plw + height * slw;
        if halfArea > N then break;
        isOHalloran[halfArea] := false;
      end;
    end;

  println('All known O''Halloran numbers:');
  foreach var i in 3..N do
    if isOHalloran[i] then
      write(2 * i, ' ');
end.
{---------------------------------------- 455 one-dimensional-cellular-automata}
##
var gen := '_###_##_#_#_#_#__#__'.Select(ch -> (if ch = '#' then 1 else 0)).ToList;
loop 10 do
begin
  gen.Select(n -> (if n = 1 then '#' else '_')).println;
  gen := (0 + gen + 0).ToList;
  gen := (1..gen.Count - 2).Select(m -> (if gen[m - 1:m + 2].Sum = 2 then 1 else 0)).ToList;
end;
{------------------------------------------------- 456 one-of-n-lines-in-a-file}
##
function oneOfN(n: integer): integer;
begin
  result := 0;
  for var x := 0 to n-1  do
    if random(x+1) = 0 then
      result := x;
end;

function oneOfNTest(n: integer := 10; trials: integer := 1_000_000): array of integer;
begin
  result := new integer[n];
  if n >= 0 then
    foreach var i in 1..trials do
      result[oneOfN(n)] += 1;
end;

oneOfNTest.println;
{------------------------------------------------------ 457 openwebnet-password}
const
  INT_BITS = 32;

function rotateLeft(n, d: longword) := (n shl d) or (n shr (INT_BITS - d));

function rotateRight(n, d: longword) := (n shr d) or (n shl (INT_BITS - d));

function ownCalcPass(password, nonce: string): longword;
begin
  var start := true;

  foreach var c in nonce do
  begin
    if (c <> '0') and start then
    begin
      result := password.tointeger;
      start := false;
    end;
    case c of
      '0': ;
      '1': result := rotateRight(result, 7);
      '2': result := rotateRight(result, 4);
      '3': result := rotateRight(result, 3);
      '4': result := rotateLeft(result, 1);
      '5': result := rotateLeft(result, 5);
      '6': result := rotateLeft(result, 12);
      '7': result := (result and $0000FF00) or result shl 24
                     or (result and $00FF0000) shr 16 or (result and $FF000000) shr 8;
      '8': result := result shl 16 or result shr 24 or (result and $00FF0000) shr 8;
      '9': result := not result;
    else raise new Exception('non-digit in nonce.');
    end;
  end;
end;

procedure testPasswordCalc(password, nonce: string; expected: longword);
begin
  var res := ownCalcPass(password, nonce);
  print(if res = expected then 'PASS ' else 'FAIL ');
  println(password, nonce, res, expected);
end;

begin
  testPasswordCalc('12345', '603356072', 25280520);
  testPasswordCalc('12345', '410501656', 119537670);
  testPasswordCalc('12345', '630292165', 4269684735);
end.
{------------------------------------------------------ 458 operator-precedence}
Table of operations priorities:

**                                     1 (highest)
@, not,  L , +, - (unary), new         2
*, /, div, mod, and, shl, shr, as, is  3
+, - (binary), or, xor                 4
..                                     5
= , <> , < , > , <=, >=, in            6
?:                                     7 (lowest)

Brackets are used to change the order of operations in expressions.
{------------------------------------------------ 459 order-two-numerical-lists}
##
function operator <<T>(a, b: List<T>): boolean;
extensionmethod; where T: IComparable<T>;
begin
  foreach var (x, y) in Zip(a, b) do
  begin
    if x = y then continue;
    result := x.CompareTo(y) < 0;
    exit;
  end;
  result := a.Count < b.Count;
end;

println(Lst(1, 2, 1, 3, 2) < Lst(1, 2, 0, 4, 4, 0, 0, 0));
println(Lst(1, 2, 0, 4, 4, 0, 0, 0) < Lst(1, 2, 1, 3, 2));
{------------------------------------------------------------ 460 ordered-words}
uses System.Net;

function IsOrderedWord(w: string): boolean;
begin
  result := true;
  for var i := 2 to w.Length do
  begin
    if w[i] < w[i - 1] then result := false
  end;
end;

begin
  var client := new WebClient();
  var text := client.DownloadString('http://wiki.puzzlers.org/pub/wordlists/unixdict.txt');
  var words: sequence of string := text.ToWords(|#10, #13|);
  words := words.Where(x -> IsOrderedWord(x));
  var maxlen := words.Max(x -> x.Length);
  words.Where(x -> x.length = maxlen).Println;
end.
{------------------------------------------ 461 padovan-n-step-number-sequences}
##
function rn(n, k: integer): list<integer>;
begin
  assert(k >= 2);
  result := if n = 2 then Lst(1, 1, 1) else rn(n - 1, n + 1);
  while result.Count <> k do
    result.Add(result[^(n + 1):^1].Sum);
end;

for var n := 2 to 8 do
  println(n, ': ', rn(n, 15));
{--------------------------------------------------------- 462 padovan-sequence}
const
  PP = 1.324717957244746025960908854;
  S = 1.0453567932525329623;

var
  Rules := dict(('A', string('B')), ('B', string('C')), ('C', 'AB'));

function padovan1(n: integer): sequence of integer;
begin
  //  ## Yield the first 'n' Padovan values using recurrence relation.
  loop min(n, 3) do yield 1;
  var (a, b, c) := (1, 1, 1);
  var count := 3;
  while count < n do
  begin
    (a, b, c) := (b, c, a + b);
    yield c;
    count += 1;
  end;
end;

function padovan2(n: integer): sequence of integer;
begin
  //  ## Yield the first 'n' Padovan values using formula.
  if n > 1 then yield 1;
  var p := 1.0;
  var count := 1;
  while count < n do
  begin
    yield (p / S).Round;
    p *= PP;
    count += 1;
  end;
end;

function padovan3(n: integer): sequence of string;
begin
  //  ## Yield the strings produced by the L-system.
  var s: string := 'A';
  var count := 0;
  while count < n do
  begin
    yield s;
    var next := string('');
    foreach var ch in s do
      next += Rules[ch];
    s := next;
    count += 1;
  end;
end;

begin
  println('First 20 terms of the Padovan sequence:');
  println(padovan1(20));

  var list1 := padovan1(64).ToList;
  var list2 := padovan2(64).ToList;
  println('The first 64 iterative and calculated values',
       if list1.SequenceEqual(list2) then 'are the same.' else 'differ.');

  println;
  println('First 10 L-system strings:');
  println(padovan3(10));
  println;
  println('Lengths of the 32 first L-system strings:');
  var list3 := padovan3(32).select(it -> it.Length).ToList;
  list3.println;
  writeln('These lengths are ',
  if list3.SequenceEqual(list1[0:32]) then '' else 'not ',
  'the 32 first terms of the Padovan sequence.');
end.
{--------------------------------------------------------- 463 palindrome-dates}
uses system;

function Reverse(x: integer) := x mod 10 * 10 + x div 10;

function IsValidDate(y, m, d: integer; var date: datetime) :=
  DateTime.TryParse(y.tostring + '-' + m.tostring + '-' + d.tostring, date);

function PalindromicDates(startYear: integer): sequence of datetime;
begin
  var y := startyear;
  repeat
    var m := Reverse(y mod 100);
    var d := Reverse(y div 100);
    var date: datetime;
    if (IsValidDate(y, m, d, date)) then yield date;
    y += 1;
  until false;
end;

begin
  foreach var date in PalindromicDates(2021).Take(15) do
    Writeln(date.ToString('yyyy-MM-dd'));
end.
{----------------------------------------------------- 464 palindrome-detection}
function IsPalindrome(s: string) := s = s[::-1];

begin
  Println(IsPalindrome('arozaupalanalapuazora'));
  Println(IsPalindrome('abcd'));
end.
{----------------------------------------------- 465 palindromic-gapful-numbers}
function pal_gen(): sequence of BigInteger;
begin
  var o := 10;
  var e := 10;
  repeat
    var fwd_o := o.ToString;
    var fwd_e := e.ToString;
    var rev_o := fwd_o[^2:0:-1];
    var rev_e := fwd_e[::-1];
    var pal := Min((fwd_o + rev_o).ToBigInteger, (fwd_e + rev_e).ToBigInteger);
    yield pal;
    if pal.ToString.Length.IsEven then e += 1 else o += 1;
  until false;
end;

function is_gapful(n: BigInteger) := n mod (n.ToString[1].ToDigit * 10 + (n mod 10)) = 0;

begin
  writeln('palindromic gapful numbers from 1 to 20:');
  for var i := 1 to 9 do
    writeln(i, ': ', pal_gen.Where(n -> is_gapful(n)).Where(n -> n mod 10 = i).Take(20));
  writeln;
  writeln('palindromic gapful numbers from 86 to 100:');
  for var i := 1 to 9 do
    writeln(i, ': ', pal_gen.Where(n -> is_gapful(n)).Where(n -> n mod 10 = i).Skip(85).Take(15));
  writeln;
  writeln('palindromic gapful numbers from 991 to 1000:');
  for var i := 1 to 9 do
    writeln(i, ': ', pal_gen.Where(n -> is_gapful(n)).Where(n -> n mod 10 = i).Skip(990).Take(10));
end.
{-------------------------------------------- 466 palindromic-primes-in-base-16}
##
uses School;

1.step.Where(n -> n.IsPrime)
      .TakeWhile(p -> p < 500)
      .Select(p -> p.ToString('X'))
      .Where(s -> s = s[::-1])
      .Println;
{------------------------------------------------------ 467 pan-base-non-primes}
function isPrime(n: int64): boolean;
const
  Wheel = |4, 2, 4, 2, 4, 6, 2, 6|;
begin
  if n < 2 then result := false
  else if (n and 1) = 0 then result := n = 2
  else if n mod 3 = 0 then result := n = 3
  else if n mod 5 = 0 then result := n = 5
  else begin
    var p: int64 := 7;
    while True do
      foreach var w in Wheel do
      begin
        if p * p > n then begin result := true; exit end
        else if n mod p = 0 then begin result := false; exit end
        else p += w
      end;
  end;
end;

function Digits(n: int64): list<byte>;
begin
  result := new List<byte>;
  while n <> 0 do
  begin
    result.add(n mod 10);
    n := n div 10
  end;
end;

function fromDigits(a: list<byte>; base: integer): int64;
begin
  for var i := a.Count - 1 downto 0 do
    result := result * base + a[i];
end;

function isPanBaseNonPrime(n: int64): boolean;
begin
  result := True;
  if n < 10 then begin result := not isPrime(n); exit end;
  if (n > 10) and (n mod 10 = 0) then exit;
  var d := Digits(n);
  var maxDigit := d.Max;
  foreach var base in (maxDigit + 1..n) do
    if isPrime(fromDigits(d, base)) then
      result := False;
end;

begin
  println('First 50 prime pan-base composites:');
  2.Step.Where(n -> isPanBaseNonPrime(n)).Take(50).println;
  println;
  println('First 20 odd prime pan-base composites:');
  3.Step(2).Where(n -> isPanBaseNonPrime(n)).Take(20).println;
  println;
  var panbase := (2..2500).Where(n -> isPanBaseNonPrime(n)).ToList;
  println('Count of pan-base composites up to and including 2500:', panbase.Count);
  var odd_panbase := panbase.Where(n -> n.isodd).ToList;
  writeln('Percent odd up to and including 2500: ', 100 * odd_panbase.count / panbase.Count:2:2);
  writeln('Percent even up to and including 2500: ', 100 - 100 * odd_panbase.count / panbase.Count:2:2);
end.
{---------------------------------------------------------- 468 pancake-numbers}
function pancake(n: integer): (integer, string);
begin
  var goalstack := '123456789abcd'[:n + 1];
  var stacks := Dict((goalstack, 0));
  var newstacks := Dict((goalstack, 0));
  var numstacks := 1;
  foreach var flip in 1..100 do
  begin
    var nextstacks := new Dictionary<string, integer>;
    foreach var nstack in newstacks do
      foreach var pos in 2..n do
      begin
        var newstack := nstack.key[pos::-1] + nstack.key?[pos + 1:];
        if newstack not in stacks then
          nextstacks[newstack] := flip;
      end;
    newstacks := nextstacks;
    foreach var nstack in newstacks do stacks[nstack.key] := nstack.value;
    var perms := stacks.Count;
    if perms = numstacks then
    begin
      result := stacks.Where(x -> x.value = flip - 1)
                      .Select(k -> (k.value, k.key))
                      .First;
      exit
    end;
    numstacks := perms
  end;
end;

begin
  foreach var n in 1..11 do
  begin
    var (steps, example) := pancake(n);
    writeln('pancake(', n:2, ') = ', steps:2, '  example: ', example);
  end;
end.
{---------------------------------------------------------- 469 pangram-checker}
const
  alphabet = 'abcdefghijklmnopqrstuvwxyz';

function ispangram(text: string) := alphabet.All(c -> text.Contains(c));

begin
  ispangram('The quick brown fox jumps over the lazy dog').Println;
end.
{---------------------------------------------------------------- 470 paraffins}
const
  nMax = 250;
  nBranches = 4;

var
  rooted := (0..nMax).Select(n -> 0bi).ToArray;
  unrooted := (0..nMax).Select(n -> 0bi).ToArray;

function choose(m: biginteger; k: integer): biginteger;
begin
  result := m;
  if k = 1 then exit
  else
    for var i := 1 to k - 1 do
      result := result * (m + i) div (i + 1)
end;

procedure tree(br, n, l, sum: integer; cnt: biginteger);
begin
  var s := 0;
  foreach var b in (br + 1.. nBranches) do
  begin
    s := sum + (b - br) * n;
    if s > nMax then exit;

    var c := choose(rooted[n], b - br) * cnt;

    if l * 2 < s then unrooted[s] += c;
    if b = nBranches then exit;
    rooted[s] += c;
    for var m := n - 1 downto 1 do
      tree(b, m, l, s, c);
  end;
end;

procedure bicenter(s: integer);
begin
  if (s and 1) = 0 then
    unrooted[s] += rooted[s div 2] * (rooted[s div 2] + 1) div 2;
end;

begin
  (rooted[0], rooted[1], unrooted[0], unrooted[1]) := (1bi, 1bi, 1bi, 1bi);
  for var n := 1 to nMax do
  begin
    tree(0, n, n, 1, 1bi);
    bicenter(n);
    writeln(n, ': ', unrooted[n]);
  end;
end.
{---------------------------------------------------- 471 parallel-calculations}
uses school;

const
  n = |12757923, 12878611, 12757923, 15808973, 15780709, 197622519|;

begin
  var j := 0;
  var m := 0;
  var l := new list<integer>[n.Length];
  {$omp parallel for}
  for var i := 0 to n.Length - 1 do
    l[i] := primefactors(n[i]);

  for var i := 0 to n.Length - 1 do
    if l[i].Min > m then
    begin
      m := l[i].Min;
      j := i;
    end;

  WriteLn('Number ', n[j], ' has largest minimal factor:');
  foreach var list in l[j] do
    Write(' ' + list);
end.
{-------------------------------------------------- 472 parametric-polymorphism}
type Node<T> = auto class
  data: T;
  left,right: Node<T>;
end;

function CreateTree(n: integer): Node<integer>;
begin
  if n = 0 then
    Result := nil
  else
    Result := new Node<integer>(
      Random(100),
      CreateTree((n-1) div 2),
      CreateTree(n-1 - (n-1) div 2)
    );
end;

procedure InfixTraverse<T>(root: Node<T>; act: T -> ());
begin
  if root = nil then
    exit;
  InfixTraverse(root.left,act);
  act(root.data);
  InfixTraverse(root.right,act);
end;

begin
  var tree := CreateTree(10);
  Println(tree);
  InfixTraverse(tree, x -> Print(x));
end.
{----------------------------------------- 473 parsing-rpn-calculator-algorithm}
##
var a := new Stack<real>;
var b := new Dictionary<string, (real, real) -> real>;
b['+'] := (x, y) -> y + x;
b['-'] := (x, y) -> y - x;
b['*'] := (x, y) -> y * x;
b['/'] := (x, y) -> y / x;
b['^'] := (x, y) -> y ** x;

foreach var c in '3 4 2 * 1 5 - 2 3 ^ ^ / +'.Split do
begin
  if c in b then a.Push(b[c](a.Pop, a.Pop))
  else a.Push(c.ToReal);
  println(c, a);
end;
{------------------------------------- 474 partition-an-integer-x-into-n-primes}
uses School;

function primepartition(x, n: Integer): List<integer>;
begin
  result := new List<integer>;
  foreach var combo in Primes(x).Combinations(n) do
    if combo.Sum = x then
    begin
      result := combo.ToList;
      exit
    end;
end;

begin
  foreach var (x, n) in |(18, 2), (19, 3), (20,  4), (99807, 1), (99809, 1),
  (2017, 24), (22699, 1), (22699, 2), (22699,  3), (22699, 4), (40355, 3)| do
  begin
    var ans := primepartition(x, n);
    writeln('Partitioned', x:6, ' with', n:3, ' primes: ',
        if ans.Count = 0 then 'impossible' else ans.JoinToString('+'));
  end
end.
{----------------------------------------------------- 475 partition-function-p}
const
  n = 6666;

var
  p: array of biginteger;
  pd: array of integer;

function PartiDiffDiff(n: Integer): Integer;
begin
  if (n and 1) = 1 then result := ((n + 1) div 2)
  else Result := n + 1;
end;

function partDiff(n: Integer): Integer;
begin
  if n < 2 then result := 1
  else begin
    pd[n] := pd[n - 1] + PartiDiffDiff(n - 1);
    Result := pd[n];
  end;
end;

procedure partitionP(n: Integer);
begin
  if n < 2 then exit;
  var psum := 0bi;
  for var i := 1 to n do
  begin
    var pdi := partDiff(i);
    if pdi > n then Break;
    var sign := -1bi;
    if (i - 1) mod 4 < 2 then sign := 1;
    psum += p[n - pdi] * sign;
  end;
  p[n] := psum;
end;

begin
  SetLength(p, n + 1);
  SetLength(pd, n + 1);
  p[0] := 1bi;
  pd[0] := 1;
  p[1] := 1bi;
  pd[1] := 1;
  for var i := 2 to n do partitionP(i);
  println(p[n]);
  println('Took', milliseconds, 'milliseconds');
end.
{------------------------------------------------- 476 pascal-matrix-generation}
##
function binomial(n, k: integer): biginteger;
begin
  result := 1bi;
  for var i := 1 to k do
    result := result * (n - i + 1) div i;
end;

var m := (0..4).Select(i -> (0..4).Select(j -> binomial(i, j)));
MatrByCol(m).println;
println;
m := (0..4).Select(i -> (0..4).Select(j -> binomial(j, i)));
MatrByCol(m).println;
println;
m := (0..4).Select(i -> (0..4).Select(j -> binomial(j + i, j)));
MatrByCol(m).println;
{-------------------------------------------------- 477 pascals-triangle-puzzle}
function pascal(a, b, mid, top: Integer): (integer, integer, integer);
begin
  var yd := (top - 4 * (a + b)) / 7;
  if yd <> yd.Round then
  begin
    result := (0, 0, 0);
    exit
  end;
  var y  := yd.Round;
  var x  := mid - 2 * a - y;
  result := (x, y, y - x);
end;

begin
  var (x, y, z) := pascal(11, 4, 40, 151);
  if x <> 0 then
    println('Solution: x =', x, 'y =', y, 'z =', z)
  else
    println('There is no solution.')
end.
{--------------------------------------------------------- 478 pascals-triangle}
procedure Pascal(r: Integer);
var
  triangle: array of array of Integer; // Зубчатый массив

begin
  SetLength(triangle, r);
  for var i := 0 to r - 1 do
  begin
    SetLength(triangle[i], i + 1);
    triangle[i][0] := 1;
    triangle[i][i] := 1;

    if i > 1 then
      for var j := 1 to i - 1 do
        triangle[i][j] := triangle[i - 1][j - 1] + triangle[i - 1][j];
  end;

  for var i := 0 to r - 1 do
  begin
    write(StringOfChar(' ', (r - i) * 2));
    for var j := 0 to i do
      write(triangle[i][j]:4);
    writeln;
  end;
end;
begin
  Pascal(13); // Генерация треугольника Паскаля
end.
{------------------------------------- 479 pathological-floating-point-problems}
uses numlibabc;

function muller_seq(n: integer): real;
begin
  var seq := Lst(Frc(0), Frc(2), Frc(-4));
  foreach var i in range(3, n + 1) do
  begin
    var next_value := 111 - 1130 / seq[i - 1] + 3000 / (seq[i - 1] * seq[i - 2]);
    seq.Add(next_value);
  end;
  result := seq[n].ToReal
end;

function tofraction(s: string): Fraction;
begin
  var period := s.IndexOf('.');
  result := Frc(s.Remove(period, 1).ToBigInteger, Power(10bi, s.Length - period - 1));
end;

function bank(years: integer): real;
const
  e = '2.71828182845904523536028747135266249775724709369995';
begin
  var bigE := ToFraction(e);
  var balance := bigE - 1;
  for var year := 1 to years do
    balance := balance * year - 1;
  result := balance.ToReal;
end;

function rump(a, b: biginteger): real;
begin
  var f := ToFraction('333.75') * b ** 6
  + a ** 2 * (11 * a ** 2 * b ** 2 - b ** 6 - 121 * b ** 4 - 2)
  + ToFraction('5.5') * b ** 8 + Frc(a, 2 * b);
  result := f.ToReal;
end;

begin
  println('Task 1:');
  foreach var n in [3, 4, 5, 6, 7, 8, 20, 30, 50, 100] do
    println(n, muller_seq(n));
  println('Task 2: ', bank(25));
  println('Task 3: ', rump(77617, 33096));
end.
{----------------------------------------------------------- 480 pells-equation}
function solvePell(n: integer): (biginteger, biginteger);
begin
  var x: biginteger := n.sqrt.floor;
  var (y, z, r) := (x, 1bi, x shl 1);
  var (e1, e2) := (1bi, 0bi);
  var (f1, f2) := (0bi, 1bi);

  repeat
    y := r * z - y;
    z := (n - y * y) div z;
    r := (x + y) div z;

    (e1, e2) := (e2, e1 + e2 * r);
    (f1, f2) := (f2, f1 + f2 * r);

    var (a, b) := (f2 * x + e2, f2);
    if a * a - n * b * b = 1 then
    begin
      result := (a, b);
      exit
    end;
  until false;
end;

begin
  foreach var n in |61, 109, 181, 277| do
  begin
    var (x, y) := solvePell(n);
    writeln('x² - ', n:3, ' * y² = 1 for (x, y) = (', x:21, ',',y:20, ')');
  end;
end.
{---------------------------------------------------------- 481 perfect-shuffle}
function shuffle(deck: list<integer>) := deck[:deck.Count div 2].Interleave(deck[deck.Count div 2:]);

function number(size: integer): integer;
begin
  assert(size mod 2 = 0, 'size must be even');
  var start := Range(1, size).ToList;
  var deck := Range(1, size).ToList;
  var counter := 0;
  repeat
    deck := shuffle(deck).ToList;
    counter += 1;
  until deck.SequenceEqual(start);
  result := counter;
end;

begin
  foreach var size in |8, 24, 52, 100, 1020, 1024, 10_000| do
    writeln(size:5, ': ', number(size):4);
end.
{-------------------------------------------------- 482 perfect-totient-numbers}
uses school;

function totient(n: int64) := (1..n).Select(k -> (if gcd(n, k) = 1 then 1 else 0)).Sum;

function perfect(): sequence of integer;
begin
  var n := 1;
  repeat
    var tot := n;
    var sum := 0;
    while tot <> 1 do
    begin
      tot := totient(tot);
      sum += tot;
    end;
    if sum = n then yield n;
    n += 2;
  until false;
end;

begin
  perfect.Take(20).Println;
end.
{--------------------------------------------------------- 483 permutation-test}
function permutationTest(a, b: array of integer): real;
begin
  var ab := a + b;
  var Tobs := a.Sum;
  var under := 0;
  var count := 0;
  foreach var perm in ab.Combinations(a.Length) do
  begin
    if perm.Sum <= Tobs then under += 1;
    count += 1;
  end;
  result := under * 100 / count;
end;

begin
  var treatmentGroup := [85, 88, 75, 66, 25, 29, 83, 39, 97];
  var controlGroup := [68, 41, 10, 49, 16, 65, 32, 92, 28, 98];
  var under := permutationTest(treatmentGroup, controlGroup);
  write('under= ', under:2:2, '%, over= ', (100 - under):2:2, '%');
end
{------------------------------------------------ 484 permutations-derangements}
function derangements<T>(a: array of T) :=
    a.Permutations.where(p -> p.where((x, i) -> x = a[i]).Count = 0);

function subFactorial(n: integer): int64;
begin
  if n <= 1 then result := 1 - n
  else result := (n - 1) * (subfactorial(n - 1) + subfactorial(n - 2));
end;

begin
  println('Derangements of 1 2 3 4:');
  foreach var d in derangements(|1, 2, 3, 4|) do
    d.println;

  println(#10, 'Number of derangements:');
  println('n   counted   calculated');
  println('-   -------   ----------');
  for var n := 1 to 10 do
    writeln(n:2, derangements(range(1, n).ToArray).count:9, subfactorial(n):10);

  println;
    println('!20 = ', subfactorial(20));
end.
{------------------------------------------------------------- 485 permutations}
##
var a: array of integer := (1, 2, 3);
writeln(a);
while nextpermutation(a) do writeln(a);
{------------------------------------------------------ 486 pick-random-element}
begin
  var a := Arr('cat','dog','wolf','zebra');
  a.RandomElement.Print
end.
{---------------------------------------------------- 487 plot-coordinate-pairs}
uses PlotWPF;

begin
  var x := |0.0, 1, 2, 3, 4, 5, 6, 7, 8, 9|;
  var y := |2.7, 2.8, 31.4, 38.1, 58.0, 76.2, 100.5, 130.0, 149.3, 180.0|;
  var plot := new MarkerGraphWPF(x, y);
  plot.addlinegraph(x, y);
end.
{-------------------------------------------------- 488 pointers-and-references}
type MyClass = class
public
  x: integer := 555;
end;

begin
  var pi: ^integer;
  New(pi);
  pi^ := 1023;
  var pb: ^byte;
  //pb := pi; // compiler error
  var p: pointer;
  p := pi;
  pb := p;
  Print(pb^); // byte representation of integer
  loop 3 do
  begin
    pb := pointer(integer(pb)+1); // analog of pb++
    Print(pb^);
  end;
  Println;
  var obj := new MyClass; // obj is a reference to object
  // All regferences in .NET are under control of garbage collection
  Println(obj);
  var obj1 := obj; // another reference to the same object
  obj1.x := 666;
  Println(obj);
  obj := nil; // zero reference
end.
{--------------------------------------------------------- 489 polymorphic-copy}
type
  Base = class
  public
    fb: integer;
    constructor (fb: integer) := Self.fb := fb;
    function ToString: string; override := fb.ToString;
    function Clone: Base; virtual := new Base(fb);
  end;

  Derived = class(Base)
  public
    fd: real;
    constructor (fb: integer; fd: real);
    begin
      inherited Create(fb);
      Self.fd := fd;
    end;
    function ToString: string; override := inherited ToString + ',' + fd.ToString;
    function Clone: Base; override := new derived(fb,fd);
  end;

begin
  var lst := new List<Base>;
  lst.Add(new Base(3));
  lst.Add(new Derived(4,5.5));
  lst.Add(new Base(6));
  lst.Add(new Derived(7,8.8));
  lst.Println;
  var lst1 := new List<Base>;
  foreach var obj in lst do
    lst1.Add(obj.Clone);
  lst1.Println;
end.
{------------------------------------------------------------- 490 polymorphism}
type
  Point = class
  public
    auto property x: real;
    auto property y: real;
    constructor (x,y: real);
    begin
      Self.x := x; Self.y := y;
    end;
    procedure Print; virtual;
    begin
      PABCSystem.Print(x,y);
    end;
  end;
  Circle = class(Point)
  public
    auto property r: real;
    constructor (x,y,r: real);
    begin
      inherited Create(x,y);
      Self.r := r;
    end;
    procedure Print; override;
    begin
      inherited Print;
      PABCSystem.Print(r);
    end;
  end;

begin
  var p: Point := new Point(3,5);
  var c: Circle := new Circle(10,8,4);
  p.Print;
  Println;
  c.Print;
end.
{--------------------------------------------------------- 491 population-count}
function popcount(n: int64) := Convert.ToString(n, 2).Count(x -> x = '1');

begin
  Print('pow3:   ');
  (0..29).Select(x -> popcount(int64(3 ** x))).Println;
  Print('evil:   ');
  (0..99).Where(x -> popcount(x).Iseven).Take(30).Println;
  Print('odious: ');
  (0..99).Where(x -> popcount(x).Isodd).Take(30).Println;
end.
{---------------------------------------------------------------- 492 power-set}
function AllSubSets<T>(a: array of T; i: integer; lst: List<T>): sequence of List<T>;
begin
  if i = a.Length then
  begin
    yield lst;
    exit;
  end;
  lst.Add(a[i]);
  yield sequence AllSubSets(a, i + 1, lst);
  lst.RemoveAt(lst.Count-1);
  yield sequence AllSubSets(a, i + 1, lst);
end;

begin
  AllSubSets(Arr(1..4),0,new List<integer>).Print;
end.
{---------------------------------------------- 493 primality-by-trial-division}
function IsPrime(N: integer): boolean;
begin
  if N = 1 then
    Result := False
  else Result := True;
  for var i:=2 to N.Sqrt.Trunc do
    if N.Divs(i) then
    begin
      Result := False;
      exit
    end;
end;

begin
  for var i:=1 to 1000 do
    if IsPrime(i) then
      Print(i)
end.
{------------------------------------------------------ 494 prime-decomposition}
function Factors(N: BigInteger): List<BigInteger>;
begin
  var lst := new List<BigInteger>;
  if N = 1 then
    lst.Add(N);
  var i := 2bi;
  while i * i <= N do
  begin
    while N mod i = 0 do
    begin
      lst.Add(i);
      N := N div i;
    end;
    i += 1;
  end;
  if N >= 2 then
    lst.Add(N);
  Result := lst;
end;
{------------------------------------------------------ 495 product-of-divisors}
##
uses school;

for var n := 1 to 50 do divisors(n).Aggregate(1,(p,x) -> p*x).Print;
{------------------------------------------------------------- 496 program-name}
begin
  Print(GetEXEFileName);
end.
{------------------------------------------------------ 497 program-termination}
begin
  if True then
    Halt;
  Print(1);
end.
{--------------------------------------------------- 498 quadrat-special-primes}
uses School;

function IsPerfectSquare(x: integer): boolean;
var r := Round(Sqrt(x));
begin
  exit(r*r = x);
end;

begin
  var limit := 16000;
  var q := 2;
  Print(q);

  while true do
  begin
    var found := false;
    var p := q + 1;
    while p < limit do
    begin
      if IsPrime(p) and IsPerfectSquare(p - q) then
      begin
        Print(p);
        q := p;
        found := true;
        break;
      end;
      p += 1;
    end;
    if not found then break;
  end;
end.

{--------------------------------------------------------- 499 queue-definition}
type
  Node<T> = auto class
    data: T;
    next: Node<T>;
  end;
  MyQueue<T> = class
    head,tail: Node<T>;
  public
    procedure Enqueue(x: T);
    begin
      if tail = nil then
      begin
        tail := new Node<T>(x,nil);
        head := tail;
      end
      else
      begin
        tail.next := new Node<T>(x,nil);
        tail := tail.next;
      end;
    end;
    function Dequeue(): T;
    begin
      Result := head.data;
      head := head.Next;
      if head = nil then
        tail := nil;
    end;
    function IsEmpty: boolean := head = nil;
  end;

begin
  var q := new MyQueue<integer>;
  for var i:=1 to 5 do
    q.Enqueue(i);
  while not q.IsEmpty do
    Print(q.Dequeue);
  Print(q.IsEmpty);
end.
{-------------------------------------------------------------- 500 queue-usage}
begin
  var q := new Queue<integer>;
  for var i:=1 to 5 do
    q.Enqueue(i);
  while q.Count > 0 do
    Print(q.Dequeue);
end.
{-------------------------------------------------------------------- 501 quine}
## var a:='## var a:='';print(2*a[:12]+2*a[11:])';print(2*a[:12]+2*a[11:])
{----------------------------------------------------- 502 quoting-constructs-1}
var s := 'Hello';
{----------------------------------------------------- 503 quoting-constructs-2}
var s := 'd''Artagnan'; // d'Artagnan
{----------------------------------------------------- 504 quoting-constructs-3}
var (a,b) := (3,5);
var s := $'{a} + {b} = {a + b}';
{----------------------------------------------------- 505 quoting-constructs-4}
var s := '''
  This is a
  multiline
  string
  ''';
{---------------------------------------------------- 506 radical-of-an-integer}
function Factors(N: integer): List<integer>;
begin
  var lst := new List<integer>;
  var i := 2;
  while i * i <= N do
  begin
    while N.Divs(i) do
    begin
      if i not in lst then
        lst.Add(i);
      N := N div i;
    end;
    i += 1;
  end;
  if N >= 2 then
    lst.Add(N);
  Result := lst;
end;

function Radical(x: integer) := Factors(x).Product;

begin
  for var i:=1 to 50 do
  begin
    Write(Radical(i):3);
    if i mod 10 = 0 then
      Writeln;
  end;
  Writeln;

  Writeln('Radical(99999) = ',Radical(99999));
  Writeln('Radical(499999) = ',Radical(499999));
  Writeln('Radical(999999) = ',Radical(999999));
  Writeln;

  var a := |0| *8;
  for var i:=1 to 1000000 do
    a[Factors(i).Count] += 1;
  for var i:=0 to 7 do
    Writeln($'{i}: {a[i]}');
end.
{-------------------------------- 507 ramer-douglas-peucker-line-simplification}
type
  Point = (real, real);

function PerpendicularDistance(pt, lineStart, lineEnd: Point): real;
begin
  var dx := lineEnd[0] - lineStart[0];
  var dy := lineEnd[1] - lineStart[1];
  var mag := sqrt(dx * dx + dy * dy);
  if mag > 0 then begin
    dx /= mag;
    dy /= mag;
  end;
  var pvx := pt[0] - linestart[0];
  var pvy := pt[1] - linestart[1];
  var pvdot := dx * pvx + dy * pvy;
  var ax := pvx - pvdot * dx;
  var ay := pvy - pvdot * dy;
  result := sqrt(ax * ax + ay * ay);
end;

function rdp(Pointlist: list<Point>; ε: real): list<Point>;
begin
  if Pointlist.Count < 2 then exit;
  var dmax := 0.0;
  var index := 0;
  var endindex := Pointlist.Count - 1;
  for var i := 1 to endindex do
  begin
    var d := PerpendicularDistance(Pointlist[i], Pointlist[0], Pointlist[endindex]);
    if d > dmax then begin
      index := i;
      dmax := d;
    end;
  end;
  var output := new list<point>;
  if dmax > ε then begin
    var firstline := Pointlist.Take(index + 1).ToList;
    var lastline := Pointlist.Skip(index).ToList;
    var recresults1 := rdp(firstline, ε);
    var recresults2 := rdp(lastline, ε);
    output.AddRange(recresults1.Take(recresults1.Count - 1));
    output.AddRange(recresults2);
  end
  else begin
    output.Clear();
    output.Add(Pointlist[0]);
    output.Add(Pointlist[pointlist.Count - 1]);
  end;
  result := output;
end;

begin
  var pointlist: List<Point> :=
    Lst((0.0, 0.0), (1.0, 0.1), (2.0, -0.1), (3.0, 5.0), (4.0, 6.0),
        (5.0, 7.0), (6.0, 8.1), (7.0, 9.0),	(8.0, 9.0), (9.0, 9.0));
  Println(rdp(pointlist, 1.0));
end.
{----------------------------------------------------------- 508 random-numbers}
const
  n = 1000;

function randnormal(n: integer; mean, sd: real): array of real;
begin
  var uniform1 := ArrRandomReal(n, 0, 1, 10);
  var uniform2 := ArrRandomReal(n, 0, 1, 10);
  result := uniform1.Zip(uniform2, (x, y) -> Cos(2 * PI * x) * Sqrt(-2 * Ln(y)) * sd + mean).ToArray;
end;

begin
  var numbers := randnormal(n, 1, 0.5);
  var mean := numbers.Average;
  var std := numbers.Sum(x -> Sqr(x - mean) / n).Sqrt;
  println('mean:', mean, 'stddev:', std);
end.
{---------------------------------- 509 read-a-file-character-by-character-utf8}
begin
  var f := OpenRead('a.txt',Encoding.UTF8);
  while not f.Eof do
    Print(f.ReadChar);
  f.Close
end.
{------------------------------------------------- 510 read-a-file-line-by-line}
begin
  var f := OpenRead('_a.pas');
  while not f.Eof do
    Println(f.ReadString);
  f.Close
end.
{----------------------------------------- 511 read-a-specific-line-from-a-file}
begin
  var linenum := 4;
  ReadLines('_a.pas').Skip(linenum-1).First.Print;
end.
{--------------------------------------------------------- 512 read-entire-file}
##
var text := ReadAllText('_a.pas',Encoding.UTF8);
Print(text);
{--------------------------------------------- 513 real-constants-and-functions}
##
Println(E);
Println(Pi);
var x := 2.5;
Println(Sqrt(x));
Println(Ln(x)); // natural logarithm
Println(LogN(10,x)); // logarithm with base
Println(Exp(x));
Println(Abs(-x));
Println(Floor(x));
Println(Ceil(x));
var y := 4.1;
Println(x ** y);
{-------------------------------------------------- 514 reflection-list-methods}
##
uses System, System.Reflection;

var flags := BindingFlags.Instance or BindingFlags.Static
            or BindingFlags.Public or BindingFlags.DeclaredOnly;

typeof(integer).GetMethods(flags).PrintLines;
{----------------------------------------------- 515 reflection-list-properties}
uses System, System.Reflection;

type
  MyClass = class
  private
    auto property NumberPrivate: integer := 666;
  public
    auto property Number: integer := 3;
  end;

begin
  var flags := BindingFlags.Instance or BindingFlags.Static
            or BindingFlags.Public or BindingFlags.NonPublic
            or BindingFlags.DeclaredOnly;

  var obj := new MyClass;

  typeof(MyClass).GetProperties(flags).Select(p -> (p.Name,p.GetValue(obj))).PrintLines;
end.
{------------------------------------------------------ 516 regular-expressions}
begin
  // text in tag (lazy quantification)
  var s := '<tag>abc</tag> def <tag>ghi</tag>';
  foreach var m in s.Matches('(?<=<tag>)(.*?)(?=</tag>)') do
    Println(m.Value, m.Index);

  // take words in parentheses
  s := 'one two three four five';
  Regex.Replace(s,'\w+','<$0>').Println;
end.
{------------------------------------------------ 517 remove-duplicate-elements}
begin
  // By algorithm
  var nums := Arr(1, 1, 2, 3, 4, 4);
  var unique := new List<integer>;
  foreach var x in nums do
    if x not in unique then
      unique.Add(x);
  unique.Println;

  // By method
  var unique2 := nums.Distinct;
  unique2.Println;

  // Using hash set
  var unique3 := HSet(nums);
  unique3.Println;
end.
{------------------------------------------------- 518 remove-lines-from-a-file}
procedure RemoveLines(fname: string; start: integer; count: integer := 1);
begin
  WriteAllLines(fname,
    ReadAllLines(fname).Where((s,ind) -> ind not in start - 1 .. start + count - 2).ToArray)
end;

begin
  RemoveLines('a2.pas',3,2);
end.
{------------------------------------------------------------ 519 rename-a-file}
uses System.IO;

begin
  &File.Move('input.txt','output.txt');
  &File.Move('\input.txt','\output.txt');

  Directory.Move('docs','mydocs');
  Directory.Move('\docs','\mydocs');
end.
{---------------------------------------------------------- 520 repeat-a-string}
##
Print('ha' * 5)
{------------------------------------------------------------------- 521 repeat}
procedure Rep(n: integer; p: procedure) := (p * n);

procedure p := Print('Hello');

begin
  Rep(3,p);
end.
{--------------------------------------------------- 522 return-multiple-values}
function AddSub(x,y: real): (real,real) := (x + y, x - y);

begin
  var (a,s) := AddSub(5,3);
  Print(a,s);
end.
{--------------------------------------------------------- 523 reverse-a-string}
##
var s:='asdf';//ReadLnString;
ReverseString(s).Print;

{------------------------------------------- 524 reverse-the-gender-of-a-string}
var words := Arr('She', 'she', 'Her',  'her',  'hers', 'He',   'he',   'His',  'his',  'him');
var repls := Arr('He_', 'he_', 'His_', 'his_' ,'his_', 'She_', 'she_', 'Her_', 'her_', 'her_');

function ReverseGender(s: string): string;
begin
  foreach var (w,r) in words.Zip(repls) do
    s := Regex.Replace(s,'\b'+w+'\b',r);
  Result := s.Replace('_','');;
end;

begin
  var sentences := Arr(
  'She was a soul stripper. She took his heart!',
  'He was a soul stripper. He took her heart!',
  'She wants what''s hers, he wants her and she wants him!',
  'Her dog belongs to him but his dog is hers!'
  );
  foreach var sentence in sentences do
    Println(ReverseGender(sentence));
end.
{------------------------------------------------ 525 reverse-words-in-a-string}
begin
  var lines := new string[]
  (
    '---------- Ice and Fire ------------',
    '',
    'fire, in end will world the say Some',
    'ice. in say Some',
    'desire of tasted I''ve what From',
    'fire. favor who those with hold I',
    '',
    '... elided paragraph last ...',
    '',
    'Frost Robert -----------------------'
  );

  foreach var line in lines do
  begin
    // Разбиваем строку на слова (по пробелам), фильтруем пустые
    var words := line.Split(' ').Where(w -> w <> '').ToArray();

    // Меняем порядок слов на обратный
    words := words.Reverse().ToArray();

    // Собираем обратно в строку через пробел
    var reversedLine := String.Join(' ', words);

    Writeln(reversedLine);
  end;
end.

{-------------------------------------------------- 526 roman-numerals-decode-1}
function romanDecode(roman: string): integer;
begin
  var values := Dict('I' to 1, 'V' to 5, 'X' to 10, 'L' to 50, 'C' to 100, 'D' to 500, 'M' to 1000);
  Result := 0;
  var prev := 0;
  for var i := roman.Length downto 1 do
  begin
    var curr := values[roman[i]];
    if curr < prev
    then Result -= curr
    else Result += curr;
    prev := curr;
  end;
end;
begin
  var romans := |'I', 'III', 'IV', 'VIII', 'XLIX', 'CCII',
                 'CDXXXIII', 'MCMXC', 'MMVIII', 'MDCLXVI'|;
  foreach var roman in romans do
    writeln(roman:8, romanDecode(roman):7);
end.
{-------------------------------------------------- 527 roman-numerals-decode-2}
function romanDecode(roman: String): Integer;
begin
  result := 0;
  if roman = '' then exit;
  var n := 0;
  var last := 'O';
  foreach var c in roman do
  begin
    case c of
      'I': n += 1;
      'V': if (last = 'I') then n += 3   else n += 5;
      'X': if (last = 'I') then n += 8   else n += 10;
      'L': if (last = 'X') then n += 30  else n += 50;
      'C': if (last = 'X') then n += 80  else n += 100;
      'D': if (last = 'C') then n += 300 else n += 500;
      'M': if (last = 'C') then n += 800 else n += 1000;
    end;
    last := c;
  end;
  result := n;
end;

begin
  var romans := |'I', 'III', 'IV', 'VIII', 'XLIX', 'CCII',
                 'CDXXXIII', 'MCMXC', 'MMVIII', 'MDCLXVI'|;
  foreach var roman in romans do
    writeln(roman:10, romanDecode(roman):10);
end.
{---------------------------------------------------- 528 roman-numerals-encode}
var anums := |1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1|;
var rnums := 'M CM D CD C XC L XL X IX V IV I'.split;

function ToRoman(x: integer): string;
begin
  Result := '';
  foreach var (a,r) in anums.Zip(rnums) do
  begin
    var n := x div a;
    x := x mod a;
    Result += r * n;
  end;
end;

begin
  var test := |1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 25, 30, 40,
          50, 60, 69, 70, 80, 90, 99, 100, 200, 300, 400, 500, 600, 666, 700, 800, 900, 1000,
          1009, 1444, 1666, 1945, 1997, 1999, 2000, 2008, 2010, 2011, 2500, 3000, 3999|;
  foreach var x in test do
    Println($'{x} - {ToRoman(x)}')
end.
{----------------------------------------------------------- 529 roots-of-unity}
function RootsOfUnity(n: integer)
  := (0..n-1).Select(x -> Complex.FromPolarCoordinates(1, 2 * PI * x / n));

begin
  RootsOfUnity(3).PrintLines
end.
{-------------------------------- 530 rosetta-code-rank-languages-by-popularity}
uses System.Net;

begin
  ServicePointManager.SecurityProtocol := SecurityProtocolType(3072);
  var wc := new WebClient;
  wc.Encoding := Encoding.UTF8;
  var s := wc.DownloadString('https://rosettacode.org/wiki/Special:Categories?limit=5000');
  s.Matches('([^><]+)</a>.+\(([\d,]+) member')
    .Select(x -> KV(x.Groups[1].Value,x.Groups[2].Value.Replace(',','').ToInteger))
    .Where(x -> not x.Key.StartsWith('Pages'))
    .OrderByDescending(pair -> pair.Value).Numerate.Take(10)
    .PrintLines(x -> $'Rank: {x[0],3} ({x[1].Value} entries)  {x[1].Key}')
end.
{------------------------------------------------------------------- 531 rot-13}
function Rot13(s: string): string;
begin
  var sb := new StringBuilder;
  foreach var c in s do
  begin
    var c1 := c;
    if c in 'a'..'z' then
      c1 := Chr((c.Code - 'a'.Code + 13) mod 26 + 'a'.Code)
    else if c in 'A'..'Z' then
      c1 := Chr((c.Code - 'A'.Code + 13) mod 26 + 'A'.Code);
    sb.Append(c1)
  end;
  Result := sb.ToString;
end;

begin
  Println(rot13('foo'));
  Println(rot13('sbb'))
end.
{------------------------------------------------- 532 rpg-attributes-generator}
begin
  repeat
    var a := ArrGen(6, i -> ArrRandomInteger(4,1,6).Order.Skip(1).Sum);
    var cnt := a.Count(x -> x >= 15);
    if (a.Sum < 75) or (cnt < 2) then
      continue;
    a.Println;
    Println($'Sum: {a.Sum}. Count of elements >= 15: {cnt}');
    break;
  until False;
end.
{------------------------------------------- 533 safe-and-sophie-germain-primes}
##
uses school;

var primenumbers := firstprimes(1000);
primes(3000).where(x -> 2 * x + 1 in primenumbers).take(50).println;
{------------------------------------------------------------ 534 sattolo-cycle}
uses System;

function SattoloShuffle(ar: array of integer): array of integer;
var
  n := Length(ar);
  res: array of integer;
  rnd := new Random();
begin
  if n <= 1 then
  begin
    Result := ar;
    exit;
  end;

  res := Copy(ar); // копируем массив

  for var i := n - 1 downto 1 do
  begin
    var j := rnd.Next(i); // j < i
    Swap(res[i], res[j]);
  end;

  Result := res;
end;

var
  m, shuffled: array of integer;

begin
  var Cases:= [[],     [10],     [10, 20],     [10, 20, 30],
               [11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22]];
   foreach var x in Cases do begin
  Write('Исходный массив: ');
  Println(x);

  shuffled := SattoloShuffle(x);
  Write('Перемешанный массив: ');
  Println(shuffled);

  // Проверка, что ни один элемент не на месте
  var isDerangement := true;
  if x.Length<2 then Writeln('нужно минимум два элемента')
    else begin
  for var i := 0 to Length(x) - 1 do
    if x[i] = shuffled[i] then
      isDerangement := false;

  if isDerangement then
    Writeln('Проверка: элементы на разных местах.')
  else
    Writeln('есть не перемещённые элементы - это ошибка.');
    end;
  Writeln;end;
end.
{-------------------------------------------------------- 535 scope-modifiers-1}
private
{-------------------------------------------------------- 536 scope-modifiers-2}
protected
{-------------------------------------------------------- 537 scope-modifiers-3}
public
{-------------------------------------------------------- 538 scope-modifiers-4}
internal
{------------------------------------------------- 539 search-a-list-of-records}
type
  TCity = record
    name: string;
    population: real;
  end;

const
  Cities: array of TCity = (
    (name: 'Lagos'; population: 21.0),
    (name: 'Cairo'; population: 15.2),
    (name: 'Kinshasa-Brazzaville'; population: 11.3),
    (name: 'Greater Johannesburg'; population: 7.55),
    (name: 'Mogadishu'; population: 5.85),
    (name: 'Khartoum-Omdurman'; population: 4.98),
    (name: 'Dar Es Salaam'; population: 4.7),
    (name: 'Alexandria'; population: 4.58),
    (name: 'Abidjan'; population: 4.4),
    (name: 'Casablanca'; population: 3.98));

begin
  cities.FindIndex(x -> x.name = 'Dar Es Salaam').Println;
  cities.Find(x -> x.population < 5).name.Println;
  cities.Find(x -> x.name[1] = 'A').population.Println;
end.
{---------------------------------------------- 540 send-an-unknown-method-call}
type MyClass = class
public
  procedure Hello := Write('Hello');
end;

begin
  var obj := new MyClass;
  var mi := typeof(MyClass).GetMethod('Hello');
  mi.Invoke(obj,new object[0])
end.
{------------------------------------- 541 sequence-of-primes-by-trial-division}
##
function IsPrime(n: integer) := (2..n.Sqrt.Trunc).All(i -> n.NotDivs(i));

(2..100).Where(IsPrime).Println
{------------------------------------------------------------ 542 shape-machine}
begin
  var count := 0;
  var n := ReadInteger;
  var next: real := n;
  var prev: real;
  repeat
    Writeln(next);
    prev := next;
    next := (prev + 3) * 0.86;
    count += 1;
  until prev = next;
  Writeln(count);
end.
{------------------------------------------------- 543 short-circuit-evaluation}
function a(x:boolean): boolean;
begin
  'a called'.Println;
  result := x
end;

function b(x:boolean): boolean;
begin
  'b called'.Println;
  result := x
end;

begin
 var x := a(false) and b(true); // a called
 var y := a(true) or b(true)    // a called
end.
{------------------------------------------------------ 544 sierpinski-triangle}
const
  order = 4;

begin
  var size := 1 shl order - 1;
  for var y := size downto 0 do
  begin
    write(' ' * y);
    for var x := 0 to size - y do
      if (x and y) <> 0 then write('  ')
      else write('* ');
    writeln
  end;
end.
{---------------------------------------------------- 545 sieve-of-eratosthenes}
function Eratosthenes(N: integer): List<integer>;
type primetype = (nonprime,prime);
begin
  var sieve := |nonprime|*2 + |prime|*(N-1);
  for var i:=2 to N.Sqrt.Trunc do
    if sieve[i] = prime then
      for var j := i*i to N step i do
        sieve[j] := nonprime;
  Result := new List<integer>;
  for var i:=2 to N do
    if sieve[i] = prime then
      Result.Add(i);
end;

begin
  Eratosthenes(1000).Println
end.
{---------------------------------------------- 546 simple-windowed-application}
uses WPF;

begin
  var mainpanel := Panels.StackPanel(200).AsMainContent;
  var b := CreateButton('Click me!');
  var lb := CreateLabel('0');
  mainpanel.AddElements(b,lb);
  var clicks := 0;
  b.Click += (o,e) -> begin
    clicks += 1;
    lb.Content := clicks;
  end;
end.
{------------------------------------ 547 singly-linked-list-element-definition}
type Node<T> = auto class
  data: T;
  next: Node<T>;
end;
{------------------------------------- 548 singly-linked-list-element-insertion}
type Node<T> = auto class
  data: T;
  next: Node<T>;
end;

type
  SinglyLinkedList<T> = class
    first: Node<T>;
    procedure AddFirst(x: T);
    begin
      first := new Node<T>(x,first);
    end;
    procedure AddAfter(p: Node<T>; x: T);
    begin
      p.next := new Node<T>(x,p.next);
    end;
    procedure PrintList();
    begin
      var p := first;
      while p<>nil do
      begin
        Print(p.data);
        p := p.next;
      end;
    end;
  end;

begin
  var lst := new SinglyLinkedList<integer>;
  lst.AddFirst(2); lst.AddFirst(3);
  lst.AddAfter(lst.first,555);
  lst.PrintList;
end.
{-------------------------------------------------------------------- 549 sleep}
begin
  var ms := ReadInteger;
  Print('Sleeping...');
  Sleep(ms);
  Print('Awake!');
end.
{------------------------------------ 550 sort-an-array-of-composite-structures}
type
  Pair = auto class
    Name,Value: string;
  end;

begin
  var a: array of Pair := (new Pair('ZZZ','333'),new Pair('XXX','222'),new Pair('YYY','111'));
  a.OrderBy(p -> p.Name).Println;
  a.OrderBy(p -> p.Value).Println;
end.
{---------------------------------------------------- 551 sort-an-integer-array}
##
var a := Arr(5,1,4,2,3);
Sort(a);
Print(a);
{----------------------------------------------------- 552 sort-three-variables}
procedure SortThree(var x,y,z: integer);
begin
  if x > y then Swap(x, y);
  if x > z then Swap(x, z);
  if y > z then Swap(y, z);
end;

begin
  var (x,y,z) := Random3(1,10);
  Println(x,y,z);
  SortThree(x,y,z);
  Assert((x <= y) and (y <= z));
  Println(x,y,z);
end.
{------------------------------------------- 553 sort-using-a-custom-comparator}
type
  Pair = auto class
    Name,Value: string;
  end;

begin
  var a: array of Pair := (new Pair('ZZZ','333'),new Pair('XXX','222'),new Pair('YYY','111'));
  Sort(a, (p1,p2) -> p1.Name < p2.Name);
  Print(a);
end.
{------------------------------------------- 554 sorting-algorithms-bubble-sort}
procedure bubbleSort<T>(a: array of T); where T: IComparable<T>;
begin
  var swapped: boolean;
  repeat
    swapped := False;
    for var i := 0 to a.Count - 2 do
      if a[i].CompareTo(a[i + 1]) > 0 then
      begin
        swap(a[i], a[i + 1]);
        swapped := True;
      end;
  until not swapped;
end;

begin
  var a := |4, 65, 2, -31, 0, 99, 2, 83, 782|;
  bubbleSort(a);
  writeln(a);
  var b := 'gcdbafeb'.toarray;
  bubblesort(b);
  writeln(b);
end.
{--------------------------------------------- 555 sorting-algorithms-quicksort}
function Partition(a: array of integer; l,r: integer): integer;
begin
  var i := l - 1;
  var j := r + 1;
  var x := a[l];
  while True do
  begin
    repeat
      i += 1;
    until a[i]>=x;
    repeat
      j -= 1;
    until a[j]<=x;
    if i<j then
      Swap(a[i],a[j])
    else
    begin
      Result := j;
      exit;
    end;
  end;
end;

procedure QuickSort(a: array of integer; l,r: integer);
begin
  if l>=r then exit;
  var j := Partition(a,l,r);
  QuickSort(a,l,j);
  QuickSort(a,j+1,r);
end;

const n = 20;

begin
  var a := ArrRandom(n);
  Println('Before: ');
  Println(a);
  QuickSort(a,0,a.Length-1);
  Println('After sorting: ');
  Println(a);
end.
{------------------------------------------------------ 556 special-variables-1}
function Add(a,b: integer): integer;
begin
  Result := a + b
end;
{------------------------------------------------------ 557 special-variables-2}
type A = class
  n: integer;
  constructor (n: integer);
  begin
    Self.n := n
  end;
end;
{------------------------------------------------------ 558 special-variables-3}
type A = class
  n: integer;
  property pn: integer write n := value;
end;
{-------------------- 559 split-a-character-string-based-on-change-of-character}
##
var s := 'gHHH5YY++///\';
s.AdjacentGroup.Select(a -> a.JoinToString).JoinToString(', ').Print
{------------------------------------------------------------- 560 stack-traces}
procedure qqq;
begin
  var st := new System.Diagnostics.StackTrace();
  Print(st);
end;

procedure ppp;
begin
  qqq;
end;

begin
  ppp
end.
{-------------------------------------------------------------------- 561 stack}
begin
  var st := new Stack<integer>;
  var st1 := new Stack<integer>;
  st.Push(1);
  st.Push(2);
  st.Push(3);
  Println(st1,st);
  while st.Count <> 0 do
    st1.Push(st.Pop);
  Println(st1,st);
end.
{--------------------------------------------------------- 562 statistics-basic}
procedure hist(numbers: array of real);
begin
  var h := arrfill(10, 0);
  foreach var n in numbers do h[floor(10 * n)] += 1;
  for var i := 0 to 9 do
    Writeln(i / 10:1:1, '+  ', '+' * floor(h[i] / h.Max * 50));
end;

begin
  foreach var n in |100, 1_000, 10_000, 1_000_000| do
  begin
    var numbers := ArrRandomReal(n, 0, 1, 10);
    var mean := numbers.Average;
    var std := numbers.Sum(x -> Sqr(x - mean) / n).Sqrt;
    println('numbers:', n, 'mean:', mean, 'stddev:', std);
    hist(numbers);
    Println;
  end;
end.
{------------------------------------------------------------ 563 string-append}
begin
  var s := 'Pascal';
  s += 'ABC';
  s += '.NET';
  s.Println;
end.
{-------------------------------------------------------------- 564 string-case}
##
var s := 'exAmpLe sTrinG';
s.ToLower.Println;
s.ToUpper.Println;
{----------------------------------------------------- 565 string-concatenation}
##
var s := 'Pascal';
s := s + 'ABC' + '.NET';
Print(s);
{------------------------------------------- 566 string-interpolation-included-}
## var extra := 'little';
var formatted := $'Mary has a {extra} lamb.';
Print(formatted);
{------------------------------------------------------------ 567 string-length}
##
var s := 'møøse';
// Byte Length
Print(s.Length);
// Character Length
Print(System.Text.Encoding.Utf8.GetByteCount(s));
{---------------------------------------------------------- 568 string-matching}
##
Println('abcd'.StartsWith('ab'));
Println('abcd'.EndsWith('cd'));
var abra := 'abracadabra';
Println('bra' in abra);
var ind := abra.IndexOf('bra');
var ind1 := abra.IndexOf('bra', ind + 1);
Println(ind,ind1);
abra.Matches('bra').Select(m -> m.Index).Println
{----------------------------------------------------------- 569 string-prepend}
##
var s := '12345678';
s := '0' + s;
Print(s);
{---------------------------------- 570 strip-a-set-of-characters-from-a-string}
function StripChars(s,chars: string): string
  := s.Where(c -> c not in chars).JoinToString;

begin
  Print(StripChars('She was a soul stripper. She took my heart!','aei'));
end.
{----------------------------------------------------- 571 strip-block-comments}
begin
  var s := '''
  /**
   * Some comments
   * longer comments here that we can parse.
   *
   * Rahoo
   */
   function subroutine() {
    a = /* inline comment */ b + c ;
   }
   /*/ <-- tricky comments */

   /**
    * Another comment.
    */
    function something() {
    }
  ''';
  Regex.Replace(s,'/\*(\n|\r|\r\n|.)*?\*/','').Print
end.
{--------------------------------------------- 572 strip-comments-from-a-string}
function RemoveComments(s,delim: string): string
  := Regex.Replace(s, delim + '.+', '');

begin
  Writeln(RemoveComments('apples, pears # and bananas','#'));
  Writeln(RemoveComments('apples, pears ; and bananas',';'));
end.
{---------------- 573 strip-control-codes-and-extended-characters-from-a-string}
function StripControlCodes(s: string): string
  := s.Where(c -> c.Code in 32..126).JoinToString;

begin
  var s := #127'abc'#1#15#31'def'#12;
  Print(StripControlCodes(s));
end.
{------------------------------ 574 strip-whitespace-from-a-string-top-and-tail}
begin
  var s := #9'  abc  '#9;         // #9 = TAB
  Writeln('|', s.TrimStart,'|');
  Writeln('|', s.TrimEnd,'|');
  Writeln('|', s.Trim,'|');
end.
{------------------------------------------------------ 575 substitution-cipher}
{$zerobasedstrings}

var key := ']kYV}(!7P$n5_0i R:?jOWtF/=-pe''AD&@r6%ZXs"v*N[#wSl9zq2^+g;LoB`aGh{3.HIu4fbK)mU8|dMET><,Qc\C1yxJ';

function Encode(s: string): string := s.Select(c -> key[c.code - 32]).JoinToString;

function Decode(s: string): string := s.Select(c -> Char(key.IndexOf(c) + 32)).JoinToString;

begin
  var s := 'The quick brown fox jumps over the lazy dog, who barks VERY loudly!';
  var enc := Encode(s);
  Println('Encoded:  ' + enc);
  Println('Decoded:  ' + Decode(enc))
end.
{--------------------------------------------------- 576 substring-top-and-tail}
{$zerobasedstrings}
begin
  var s := '0123456789';
  Writeln(s[1:]);
  Writeln(s[:^1]);
  Writeln(s[1:^1]);
end.
{---------------------------------------------------------------- 577 substring}
{$zerobasedstrings}
const
  n = 3;
  m = 2;

begin
  var s := '0123456789';
  Writeln(s.Substring(n, m));
  Writeln(s[n:]);
  Writeln(s[:^1]);
  Writeln(s.Substring(s.IndexOf('3'), m));
  Writeln(s.Substring(s.IndexOf('456'), m));
end.
{----------------------------------------------------------- 578 sudan-function}
function F(n,x,y: integer): integer;
begin
  if n = 0 then
    Result := x + y
  else if y = 0 then
    Result := x
  else Result := F(n - 1, F(n, x, y - 1), F(n, x, y - 1) + y);
end;

begin
  F(1,3,3).Println;
end.
{---------------------------------------------- 579 sum-and-product-of-an-array}
##
var a := Arr(1..9);
Print(a.Sum,a.Product);
{------------------------------------------------------------ 580 sum-data-type}
type
  [StructLayout(LayoutKind.Explicit)]
  Union = record
    [FieldOffset(0)]
    i: integer;
    [FieldOffset(0)]
    r: real;
    [FieldOffset(0)]
    d: DateTime;
  end;

begin
  var x: Union;
  x.i := 1;
  Println(x.i);
  x.r := 2.5;
  Println(x.r);
  x.d := DateTime.Now;
  Println(x.d);
  Println(sizeof(Union));
end.
{----------------------------------------------- 581 sum-digits-of-an-integer-1}
function SumDigits(n, base: integer): integer;
begin
  var sum := 0;
  while n > 0 do
  begin
    sum += n mod base;
    n := n div base;
  end;
  Result := sum;
end;

begin
  Print(SumDigits(1, 10));
  Print(SumDigits(1234, 10));
  Print(SumDigits($FE, 16));
  Print(SumDigits($F0E, 16));
end.
{----------------------------------------------- 582 sum-digits-of-an-integer-2}
//Modern way:
uses School;
begin
    1.digits.Sum.print;
 1234.digits.Sum.print;
  $FE.digits(16).Sum.print;
 $F0E.digits(16).Sum.print;
end.
{------------------------------------------------- 583 sum-multiples-of-3-and-5}
##
var n := 1000;
(3..n-1).Where(i -> i.Divs(3) or i.Divs(5)).Sum.Println
{---------------------------------------------------------- 584 sum-of-a-series}
##
(1..1000).Sum(k -> 1/k**2).Println
{---------------------------------------------------------- 585 sum-of-divisors}
##
uses school;

for var n := 1 to 100 do divisors(n).Aggregate(0,(p,x) -> p+x).Print;
{---------------------------- 586 sum-of-elements-below-main-diagonal-of-matrix}
function SumBelowDiagonal(a: array [,] of integer): integer;
begin
  var sum := 0;
  for var i:=1 to a.RowCount-1 do
  for var j:=0 to i-1 do
    sum += a[i,j];
  Result := sum;
end;

begin
  var a := MatrGen(5,5,(i,j) -> Random(1,5));
  a.Println;
  Print(SumBelowDiagonal(a));
end.
{----------------------------------------------------------- 587 sum-of-squares}
##
var vector := Arr(1,2,3,4,5,6,7);
vector.Sum(x -> x * x).Println
{----------------------------------------------------- 588 symmetric-difference}
begin
  var s1: HashSet<string> := HSet('John', 'Serena', 'Bob', 'Mary', 'Serena');
  var s2 := HSet('Jim', 'Mary', 'John', 'Jim', 'Bob');
  Println((s1 - s2) + (s2 - s1));
  Println(s1 - s2);
  Println(s2 - s1);
end.
{-------------------------------------------------------------- 589 system-time}
##
Print(DateTime.Now)
{------------------------------------------- 590 take-notes-on-the-command-line}
begin
  //Print(ParamStr(1));
  if ParamCount = 0 then
    System.IO.File.ReadAllText('Notes.txt').Print
  else begin
    System.IO.File.AppendAllText('Notes.txt',DateTime.Now.ToString);
    var s := (1..ParamCount).Select(i -> ParamStr(i)+NewLine).JoinToString;
    s := #9 + NewLine + s;
    System.IO.File.AppendAllText('Notes.txt',s);
  end;
end.
{------------------------------------------------------------- 591 tau-function}
##
function DivisorsCount(n: integer) := Range(1,n).Count(i -> n.Divs(i));

Range(1,100).Select(n -> DivisorsCount(n)).Println
{--------------------------------------------------------------- 592 tau-number}
##
function DivisorsCount(n: integer) := Range(1,n).Count(i -> n.Divs(i));

var lst := new List<integer>;
var n := 1;
while lst.Count < 100 do
begin
  if n.Divs(DivisorsCount(n)) then
    lst.Add(n);
  n += 1;
end;
lst.Println;
{-------------------------------------------------------- 593 teacup-rim-text-1}
// Teacup rim text. Nigel Galloway: September 26th., 2024
##
function fG(n:string;g:integer):sequence of string;
begin
  yield n;
  foreach var i in 1..g-1 do begin
    n:=n.Cycle.Take(g+1).Skip(1).JoinIntoString;
    yield n;
  end;
end;
function fN(g:string):sequence of string;
begin
  foreach var n in System.IO.File.ReadLines(g) do if n.Length>2 then yield n;
end;
function fI(n:HashSet<string>;g:integer):sequence of sequence of string;
begin
  while n.Count>0 do begin
    var c:=fG(n.First,g);
    if (c.ElementAt(0)<>c.ElementAt(1)) and c.All(g->n.Contains(g)) then yield c;
    n:=n-c.ToHashSet;
  end;
end;

foreach var n in fN('unixdict.txt').GroupBy(n->n.length) do begin
  var g:= fI(n.ToHashSet,n.First.Length);
  if g.Count>0 then println(g);
end;
{-------------------------------------------------------- 594 teacup-rim-text-2}
foreach var n in fN('words_alpha.txt').GroupBy(n->n.length) do begin
  var g:= fI(n.ToHashSet,n.First.Length);
  if g.Count>0 then println(g);
end;
{--------------------------------------------------- 595 temperature-conversion}
##
var k := ReadReal('Enter Kelvin Temperature:');
Println('Celsius:',k - 273.15);
Println('Fahrenheit:',k * 1.8 - 459.67);
Println('Rankine:',k * 1.8);
{---------------------------------------- 596 terminal-control-clear-the-screen}
##
Console.Clear;
{------------------------------------------- 597 terminal-control-coloured-text}
##
uses System;
Console.ForegroundColor := ConsoleColor.Red;
Console.BackgroundColor := ConsoleColor.Yellow;
Console.WriteLine('Red on Yellow');
Console.ForegroundColor := ConsoleColor.Black;
Console.BackgroundColor := ConsoleColor.White;
Console.WriteLine('Black on White');
{----------------------------------------- 598 terminal-control-cursor-movement}
uses CRT;

begin
  GotoXY(60,15);
  Sleep(1000);
  GotoXY(WhereX + 1,WhereY);
  Sleep(1000);
  GotoXY(WhereX - 1,WhereY);
  Sleep(1000);
  GotoXY(WhereX,WhereY - 1);
  Sleep(1000);
  GotoXY(WhereX,WhereY + 1);
  Sleep(1000);
  GotoXY(1,WhereY + 1);
  Sleep(1000);
  GotoXY(WindowWidth,WhereY + 1);
  Sleep(1000);
  GotoXY(1,1);
  Sleep(1000);
  GotoXY(WindowWidth,WindowHeight);
  Sleep(10000);
end.
{-------------------------------------- 599 terminal-control-cursor-positioning}
uses CRT;

begin
  GotoXY(3,6);
  Write('Hello')
end.
{---------------------------------------------- 600 terminal-control-dimensions}
uses CRT;

begin
  Println(WindowWidth,WindowHeight)
end.
{--------------------------- 601 terminal-control-display-an-extended-character}
uses CRT;

begin
  Print('£')
end.
{--------------------------------------- 602 terminal-control-hiding-the-cursor}
uses CRT;

begin
  GotoXY(60,15);
  Print('PascalABC.NET');
  HideCursor;
  Sleep(1000);
  ShowCursor;
  Sleep(1000);
end.
{------------------------------- 603 terminal-control-ringing-the-terminal-bell}
##
Console.Beep(440,1000);
{---------------------------------------------------------- 604 test-a-function}
uses NUnitABC;

function IsPalindrome(s: string) := s = s[::-1];

[Test]
procedure Test1;
begin
  Assert.AreEqual(IsPalindrome('abba'),True);
  Assert.AreNotEqual(IsPalindrome('abcd'),True);
end;

begin
end.
{---------------------------------------------------------- 605 time-a-function}
function LongTimeCalc(n: integer): real;
begin
  var sum := 0.0;
  for var i:=1 to n do
    for var j := 1 to n do
      sum += 1/i/j;
  Result := sum;
end;

begin
  MillisecondsDelta;
  LongTimeCalc(10000).Println;
  MillisecondsDelta.Println;
end.
{-------------------------------------------------------- 606 tokenize-a-string}
begin
  var s := 'Hello,How,Are,You,Today';
  var strings := s.Split(',');
  Print(strings.JoinToString('.'));
end.
{------------------------------------------------------- 607 top-rank-per-group}
begin
  var data := |('Tyler Bennett', 'E10297', 32000, 'D101'),
        ('John Rappl', 'E21437', 47000, 'D050'),
        ('George Woltman', 'E00127', 53500, 'D101'),
        ('Adam Smith', 'E63535', 18000, 'D202'),
        ('Claire Buckman', 'E39876', 27800, 'D202'),
        ('David McClellan', 'E04242', 41500, 'D101'),
        ('Rich Holcomb', 'E01234', 49500, 'D202'),
        ('Nathan Adams', 'E41298', 21900, 'D050'),
        ('Richard Potter', 'E43128', 15900, 'D101'),
        ('David Motsinger', 'E27002', 19250, 'D202'),
        ('Tim Sampair', 'E03033', 27000, 'D101'),
        ('Kim Arlich', 'E10001', 57000, 'D190'),
        ('Timothy Grove', 'E16398', 29900, 'D190')|;

  var N := 3;
  foreach var group in data.GroupBy(rec -> rec[3]).OrderBy(gr -> gr.Key) do
  begin
    Println('Department',group.Key);
    Println($'  Employee Name       Employee ID     Salary');
    foreach var rec in group.OrderByDescending(x -> x[2]).Take(3) do
      Println($'  {rec[0],-18}  {rec[1],-14}  {rec[2]}');
    Println;
  end;
end.
{--------------------------------------------------------- 608 totient-function}
uses school;

function totient(n: int64) := (1..n).Select(k -> (if gcd(n, k) = 1 then 1 else 0)).Sum;

function is_prime(n: int64) := totient(n) = n - 1;

begin
  foreach var n in 1..25 do
    writeln('φ(', n, ') = ', totient(n), if is_prime(n) then ', is prime' else '');
  var count := 0;
  foreach var n in 1..100_000 do
  begin
    count += if is_prime(n) then 1 else 0;
    if n in |100, 1000, 10_000, 100_000| then
      writeln('Primes up to ', n, ': ', count);
  end;
end.
{---------------------------------------------------------- 609 towers-of-hanoi}
## procedure Hanoi(n,rfrom,rto,rwork: integer);
begin
  if n = 0 then
    exit;
  Hanoi(n-1,rfrom,rwork,rto);
  Print($'{rfrom}→{rto} ');
  Hanoi(n-1,rwork,rto,rfrom);
end;
Hanoi(5,1,3,2);
{---------------------------------------------- 610 trabb-pardo-knuth-algorithm}
function f(x:real) := Sqrt(x) + 5 *x ** 3;

begin
  var seq := ReadArrInteger(11).Reverse;
  foreach var x in seq do
  begin
    var fx := f(x);
    Println($'f({x}): {fx > 400 ? ''overflow'' : fx.ToString}');
  end;
end.
{---------------------- 611 transliterate-english-text-using-the-greek-alphabet}
var repl := Dict(
    ('ch', 'χ'), ('th', 'θ'), ('ps', 'ψ'), ('ph', 'f'), ('Ch', 'Χ'),
    ('Th', 'Θ'), ('Ps', 'Ψ'), ('Ph', 'F'), ('ee', 'h'), ('ck', 'κ'), ('rh', 'r'), ('kh', 'χ'),
    ('Kh', 'Χ'), ('oo', 'w'),
    ($'a', 'α'), ($'b', 'β'), ($'c', 'κ'), ($'d', 'δ'), ($'e', 'ε'),
    ($'f', 'φ'), ($'g', 'γ'), ($'h', 'η'), ($'i', 'ι'), ($'j', 'ι'), ($'k', 'κ'), ($'l', 'λ'),
    ($'m', 'μ'), ($'n', 'ν'), ($'o', 'ο'), ($'p', 'π'), ($'q', 'κ'), ($'r', 'ρ'), ($'s', 'σ'),
    ($'t', 'τ'), ($'u', 'υ'), ($'v', 'β'), ($'w', 'ω'), ($'x', 'ξ'), ($'y', 'υ'), ($'z', 'ζ'),
    ($'D', 'Δ'), ($'F', 'Φ'), ($'G', 'Γ'), ($'J', 'I'), ($'L', 'Λ'), ($'P', 'Π'), ($'Q', 'Κ'),
    ($'R', 'Ρ'), ($'S', 'Σ'), ($'Y', 'U'), ($'W', 'Ω'), ($'X', 'Ξ')
);

var texts := Arr(
  'The quick brown fox jumped over the lazy dog.',

  '''
  I was looking at some rhododendrons in my back garden,
  dressed in my khaki shorts, when the telephone rang.

  As I answered it, I cheerfully glimpsed that the July sun
  caused a fragment of black pine wax to ooze on the velvet quilt
  laying in my patio.
  ''',

  'sphinx of black quartz, judge my vow.'
);

begin
  foreach var txt in texts do
  begin
    Println(txt); Println('=>');
    var txt1 := txt;
    foreach var pair in repl do
      txt1 := txt1.Replace(pair.Key,pair.Value);
    Println(txt1 + NewLine);
  end;
end.
{------------------------------------------------------ 612 tree-datastructures}
{$zerobasedstrings}
function NestedToIndented(nested: string): string;
begin
  var lst := new List<string>;
  foreach var line in Regex.Split(nested,NewLine) do
  begin
    var ind := Regex.Match(line,'[^\.]').Index;
    lst.Add($'{ind div 4} {line[ind:]}');
  end;
  Result := lst.JoinToString(NewLine);
end;

function IndentedToNested(indented: string): string;
begin
  var lst := new List<string>;
  foreach var line in Regex.Split(indented,NewLine) do
  begin
    var ind := line.IndexOf(' ');
    var level := line[:ind].ToInteger;
    lst.Add((level*4) * '.' + line[ind+1:]);
  end;
  Result := lst.JoinToString(NewLine);
end;

begin
  var initialNested := '''
    Rosetta Code
    ....rocks
    ........code
    ........comparison
    ........wiki
    ....mocks
    ........trolling
    ''';
	Writeln(initialNested,NewLine);
	var indented := NestedToIndented(initialNested);
	Writeln(indented,NewLine);
	var nested := IndentedToNested(indented);
	Writeln(nested,NewLine);
	Writeln($'Initial = Restored: {initialNested = nested}');
end.
{----------------------------------------------------------- 613 tree-traversal}
type
  Node<T> = auto class
    data: T;
    left,right: Node<T>;
  end;

function ND<T>(data: T; left: Node<T> := nil; right: Node<T> := nil)
  := new Node<T>(data,left,right);

procedure Prefix<T>(r: Node<T>);
begin
  if r = nil then
    exit;
  Print(r.data);
  Prefix(r.left);
  Prefix(r.right);
end;

procedure Infix<T>(r: Node<T>);
begin
  if r = nil then
    exit;
  Infix(r.left);
  Print(r.data);
  Infix(r.right);
end;

procedure Postfix<T>(r: Node<T>);
begin
  if r = nil then
    exit;
  Postfix(r.left);
  Postfix(r.right);
  Print(r.data);
end;

procedure LevelOrder<T>(r: Node<T>);
begin
  if r = nil then
    exit;
  var q := new Queue<Node<T>>;
  q.Enqueue(r);
  while q.Count > 0 do
  begin
    var x := q.Dequeue;
    Print(x.data);
    if x.left <> nil then
      q.Enqueue(x.Left);
    if x.Right <> nil then
      q.Enqueue(x.Right);
  end;
end;

begin
  var root := ND(1,ND(2,ND(4,ND(7)),ND(5)),ND(3,ND(6,ND(8),ND(9))));
  Println(root);
  Prefix(root); Println;
  Infix(root); Println;
  Postfix(root); Println;
  LevelOrder(root); Println;
end.
{-------------------------------------------------- 614 trigonometric-functions}
begin
  var rad := Pi/3;
  var deg := RadToDeg(rad);
  Println('=== Radians ===');
  var (Si,Co,Ta) := (Sin(rad),Cos(rad),Tan(rad));
  Println($'Sin({rad}) = {Si}');
  Println($'Cos({rad}) = {Co}');
  Println($'Tan({rad}) = {Ta}');
  Println($'ArcSin({Si}) = {ArcSin(Si)}');
  Println($'ArcCos({Co}) = {ArcCos(Co)}');
  Println($'ArcTan({Ta}) = {ArcTan(Ta)}');
  Println('=== Degrees ===');
  var (SiD,CoD,TaD) := (Sin(DegToRad(deg)),Cos(DegToRad(deg)),Tan(DegToRad(deg)));
  Println($'Sin({deg}) = {SiD}');
  Println($'Cos({deg}) = {CoD}');
  Println($'Tan({deg}) = {TaD}');
  Println($'ArcSin({SiD}) = {RadToDeg(ArcSin(SiD))}');
  Println($'ArcCos({CoD}) = {RadToDeg(ArcCos(CoD))}');
  Println($'ArcTan({TaD}) = {RadToDeg(ArcTan(TaD))}');
end.
{---------------------------------------------------------- 615 truncate-a-file}
procedure TruncateFile(name: string; length: integer);
begin
  var f: file of byte;
  Reset(f,name);
  if f.Size < length then
    raise new System.ArgumentOutOfRangeException('length','The specified length is greater than length of the file');
  f.Position := length;
  f.Truncate;
  f.Close;
end;

begin
  TruncateFile('aaa.txt',3);
end.
{---------------------------------------------------------- 616 twos-complement}
begin
  var x := 56;
  x := not x + 1;
  Print(x);
end.
{--------------------------------------------------------- 617 undefined-values}
function Gen: integer? := Random(2)=0 ? 777 : nil;

begin
  var i: integer?;
  i := Gen();
  if i.HasValue then
    Print(i.Value)
  else Print('No value')
end.
{-------------------------------------------------------- 618 unescape-a-string}
// Unescape a string. Nigel Galloway: October 10th., 2024
##
var tests := |'abc', 'a☺c', 'a\"c', '\u0061\u0062\u0063', 'a\\c', 'a\\u263Ac', 'a\uD834\uDD1Ec', 'a\ud834\udd1ec', 'a\u263', 'a\u263Xc', 'a\uDD1Ec', 'a\uD834c', 'a\uD834c', 'a\uD834\u263Ac'|;
foreach var n in tests do try
    println(System.Text.RegularExpressions.Regex.Unescape(n))except
    on e:Exception do writeln(e.Message); end;

{---------------------------------------------------------- 619 unicode-strings}
begin
  var κοστούμι := '♥♦♣♠';
  Print(κοστούμι);
  var 数学 := '∂∉∑∜';
  Print(数学);
end.
{--------------------------------------------------- 620 unicode-variable-names}
begin
  var Δ := 1;
  Δ += 1;
  Print(Δ);
end.
{------------------------------------------------------------- 621 url-decoding}
uses System;

function URLDecode(s: string) := Uri.UnescapeDataString(s);

begin
  Println(URLDecode('http%3A%2F%2Ffoo%20bar%2F'));
  Println(URLDecode('google.com/search?q=%60Abdu%27l-Bah%C3%A1'));
  Println(URLDecode('%25%32%35'));
end.
{------------------------------------------------------------- 622 url-encoding}
##
function URLEncode(s: string) := System.Uri.EscapeDataString(s);

Println(URLEncode('http://foo bar/'));
{---------------------------------------------------------- 623 user-input-text}
##
var s := ReadString('Input a string:');
var n := ReadInteger('Input an integer:');
{-------------------------------------------------------------- 624 variables-1}
var i,j: integer;
{-------------------------------------------------------------- 625 variables-2}
var n: integer := 5;
{-------------------------------------------------------------- 626 variables-3}
var n := 5;
{-------------------------------------------------------------- 627 variables-4}
var (m,x) := (5,4.3);
{-------------------------------------------------------------- 628 variables-5}
var i: integer;

procedure p;
begin
  var i: integer;
end;
{-------------------------------------------------------------- 629 variables-6}
var i: integer;
begin
  for var i:=1 to 10 do // Error!
    Print(i)
end;
{-------------------------------------------------------- 630 variadic-function}
procedure Output(params arr: array of object);
begin
  foreach var obj in arr do
    Println(obj);
end;

begin
  Output(1,2.5,'z','PascalABC.NET');
  var a: array of object := (1,2.5,'z','PascalABC.NET');
  Output(a);
end.
{---------------------------------------------------------- 631 vector-products}
uses System.Numerics;

function DotProduct(v1,v2: Vector3): real
  := v1.x * v2.x + v1.y * v2.y + v1.z * v2.z;

function CrossProduct(v1,v2: Vector3): Vector3
  := new Vector3(v1.y * v2.z - v1.z * v2.y,
                 v1.z * v2.x - v1.x * v2.z,
                 v1.x * v2.y - v1.y * v2.x);

function ScalarTripleProduct(a,b,c: Vector3): real
  := DotProduct(a, CrossProduct(b, c));

function VectorTripleProduct(a,b,c: Vector3): Vector3
  := CrossProduct(a, CrossProduct(b, c));


begin
  var a := new Vector3(3,4,5);
  var b := new Vector3(4,3,5);
  var c := new Vector3(-5,-12,-13);
  Writeln(DotProduct(a, b));
  Writeln(CrossProduct(a, b));
  Writeln(ScalarTripleProduct(a, b, c));
  Writeln(VectorTripleProduct(a, b, c));
end.
{------------------------------------------------------------------- 632 vector}
type
  Vector = class
    x,y: real;
  public
    constructor (xx,yy: real) := (x,y) := (xx,yy);
    function ToString: string; override := $'({x},{y})';
  end;

function operator+(v1,v2: Vector): Vector; extensionmethod
  := new Vector(v1.x + v2.x, v1.y + v2.y);

function operator-(v1,v2: Vector): Vector; extensionmethod
  := new Vector(v1.x - v2.x, v1.y - v2.y);

function operator*(v: Vector; n: real): Vector; extensionmethod
  := new Vector(v.x * n, v.y * n);

function operator*(n: real; v: Vector): Vector; extensionmethod
  := v * n;

function operator/(v: Vector; n: real): Vector; extensionmethod
  := new Vector(v.x / n, v.y / n);

begin
  var v1 := new Vector(1,2);
  var v2 := new Vector(3,4);
  Println(v1 + v2);
  Println(v1 - v2);
  Println(v1 * 2.5, 2.5 * v1);
  Println(v1 / 2);
end.
{----------------------------------------- 633 walk-a-directory-non-recursively}
begin
  var path := 'C:\PABCWork.NET';
  EnumerateFiles(path,'*.pas').PrintLines;
end.
{--------------------------------------------- 634 walk-a-directory-recursively}
begin
  var path := 'C:\PABCWork.NET';
  EnumerateAllFiles(path,'*.pas').PrintLines;
end.
{---------------------------------------------------------- 635 window-creation}
uses GraphWPF;

begin

end.
{----------------------------------------------------------- 636 word-frequency}
##
ReadAllText('135-0.txt').ToLower.MatchValues('\w+').EachCount
  .OrderByDescending(w -> w.Value).Take(10).PrintLines
{---------------------------------------------------------------- 637 word-wrap}
function Wrap(words: sequence of string; lineWidth: integer): sequence of string;
begin
  var currentWidth := 0;
  foreach var word in words do
  begin
    if currentWidth <> 0 then
      if currentWidth + word.Length < lineWidth then
      begin
        currentWidth += 1;
        yield ' ';
      end
      else
      begin
        currentWidth := 0;
        yield NewLine;
      end;
    currentWidth += word.Length;
    yield word;
  end;
end;

function Wrap(text: string; lineWidth: integer): string
  := Wrap(text.ToWords(' '#13#10),lineWidth).JoinToString('');

begin
  var text := '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas varius sapien
vel purus hendrerit vehicula. Integer hendrerit viverra turpis, ac sagittis arcu
pharetra id. Sed dapibus enim non dui posuere sit amet rhoncus tellus
consectetur. Proin blandit lacus vitae nibh tincidunt cursus. Cum sociis natoque
penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam tincidunt
purus at tortor tincidunt et aliquam dui gravida. Nulla consectetur sem vel
felis vulputate et imperdiet orci pharetra. Nam vel tortor nisi. Sed eget porta
tortor. Aliquam suscipit lacus vel odio faucibus tempor. Sed ipsum est,
condimentum eget eleifend ac, ultricies non dui. Integer tempus, nunc sed
venenatis feugiat, augue orci pellentesque risus, nec pretium lacus enim eu
nibh.
''';
  Wrap(text,50).Println;
end.
{------------------------------------------- 638 words-containing-the-substring}
uses System.IO;

begin
  var lines := File.ReadAllLines('unixdict.txt');

  foreach var line in lines do
  begin
    if (line.Length > 11) and line.Contains('the') then
      Writeln(line);
  end;
end.
{-------------------------------------------------------- 639 write-entire-file}
##
WriteAllText('a.txt','string');
{----------------------------------------------- 640 write-to-windows-event-log}
uses System.Diagnostics;

begin
  if not EventLog.SourceExists('MyApp') then
    EventLog.CreateEventSource('MyApp', 'Application');
  EventLog.WriteEntry('MyApp', 'Hello from PABC!');
end.
{---------------------------------------------------- 641 xml-dom-serialization}
{$reference System.Xml.Serialization.dll}
{$reference System.Xml.dll}
uses System.Xml;
uses System.Xml.Serialization;

type
  [XmlRoot('root')]
  ExampleXML = class
  public
    [XmlElementAttribute('element')]
    element := 'My text';
  end;

begin
  var xmlnamespace := new XmlSerializerNamespaces();
  xmlnamespace.Add('', '');
  var writer := XmlWriter.Create('output.xml');
  (new XmlSerializer(typeof(ExampleXML))).Serialize(writer, new ExampleXML(), xmlnamespace);
end.
{---------------------------------------------------------------- 642 xml-input}
{$reference System.Xml.Linq.dll}
{$reference System.Xml.XDocument.dll}
uses System.Xml.Linq;

begin
  var XMLText := '''
  <Students>
  <Student Name="April" Gender="F" DateOfBirth="1989-01-02" />
  <Student Name="Bob" Gender="M"  DateOfBirth="1990-03-04" />
  <Student Name="Chad" Gender="M"  DateOfBirth="1991-05-06" />
  <Student Name="Dave" Gender="M"  DateOfBirth="1992-07-08">
    <Pet Type="dog" Name="Rover" />
  </Student>
  <Student DateOfBirth="1993-09-10" Gender="F" Name="&#x00C9;mily" />
  </Students>
  ''';
  var xmlDoc := XDocument.Parse(XMLText);
  var q := xmlDoc.Descendants('Student').Select(p -> p.Attribute('Name'));
  q.PrintLines(item -> item.Value);
end.
{--------------------------------------------------------------- 643 xml-output}
{$reference System.Xml.Linq.dll}
{$reference System.Xml.XDocument.dll}
uses System.Xml.Linq;

function CreateXML(characterRemarks: Dictionary<string, string> ): string;
begin
  var remarks := characterRemarks.Select(r -> new XElement('Character', r.Value, new XAttribute('Name', r.Key)));
  var xml := new XElement('CharacterRemarks', remarks);
  Result := xml.ToString;
end;

begin
  var characterRemarks := Dict(
    ('April', 'Bubbly: I''m > Tam and <= Emily' ),
    ( 'Tam O''Shanter', 'Burns: "When chapman billies leave the street ..."' ),
    ( 'Emily', 'Short & shrift' )
  );
  var xml := CreateXML(characterRemarks);
  Writeln(xml);
end.
{--------------------------------------------------- 644 zero-to-the-zero-power}
##
print(0 ** 0)
