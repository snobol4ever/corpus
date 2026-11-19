{---------------------------------------------------------------- 1 abc-problem}
program ABC;
{$APPTYPE CONSOLE}

uses SysUtils;

type
  TBlock = set of char;

const
  TheBlocks : array [0..19] of TBlock =
  (
    [ 'B', 'O' ],    [ 'X', 'K' ],    [ 'D', 'Q' ],    [ 'C', 'P' ],    [ 'N', 'A' ],
    [ 'G', 'T' ],    [ 'R', 'E' ],    [ 'T', 'G' ],    [ 'Q', 'D' ],    [ 'F', 'S' ],
    [ 'J', 'W' ],    [ 'H', 'U' ],    [ 'V', 'I' ],    [ 'A', 'N' ],    [ 'O', 'B' ],
    [ 'E', 'R' ],    [ 'F', 'S' ],    [ 'L', 'Y' ],    [ 'P', 'C' ],    [ 'Z', 'M' ]
  );

function SolveABC(Target : string; Blocks : array of TBlock) : boolean;
var
  iChr : integer;
  Used : array [0..19] of boolean;

  function FindUnused(TargetChr : char) : boolean;  // Nested routine
  var
    iBlock : integer;
  begin
    Result := FALSE;
    for iBlock := low(Blocks) to high(Blocks) do
      if (not Used[iBlock]) and ( TargetChr in Blocks[iBlock] ) then
      begin
        Result := TRUE;
        Used[iBlock] := TRUE;
        Break;
      end;
  end;

begin
  FillChar(Used, sizeof(Used), ord(FALSE));
  Result := TRUE;
  iChr := 1;
  while Result and (iChr <= length(Target)) do
    if FindUnused(Target[iChr]) then inc(iChr)
                                else Result := FALSE;
end;

procedure CheckABC(Target : string);
begin
  if SolveABC(uppercase(Target), TheBlocks) then
    writeln('Can make ' + Target)
  else
    writeln('Can NOT make ' + Target);
end;

begin
  CheckABC('A');
  CheckABC('BARK');
  CheckABC('BOOK');
  CheckABC('TREAT');
  CheckABC('COMMON');
  CheckABC('SQUAD');
  CheckABC('CONFUSE');
  readln;
end.
{------------------------------------------------------- 2 abundant-odd-numbers}
program AbundantOddNumbers;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function SumProperDivisors(const N: Cardinal): Cardinal;
var
  I, J: Cardinal;
begin
  Result := 1;
  I := 3;
  while I < Sqrt(N)+1 do begin
    if N mod I = 0 then begin
      J := N div I;
      Inc(Result, I);
      if I <> J then Inc(Result, J);
    end;
    Inc(I, 2);
  end;
end;

var
  C, N: Cardinal;
begin
  N := 1;
  C := 0;
  while C < 25 do begin
    Inc(N, 2);
    if N < SumProperDivisors(N) then begin
      Inc(C);
      WriteLn(Format('%u: %u', [C, N]));
    end;
  end;

  while C < 1000 do begin
    Inc(N, 2);
    if N < SumProperDivisors(N) then Inc(C);
  end;
  WriteLn(Format('The one thousandth abundant odd number is: %u', [N]));

  N := 1000000001;
  while N >= SumProperDivisors(N) do Inc(N, 2);
  WriteLn(Format('The first abundant odd number above one billion is: %u', [N]));

end.
{--------------------------------------------------------------- 3 almost-prime}
program AlmostPrime;

{$APPTYPE CONSOLE}

function IsKPrime(const n, k: Integer): Boolean;
var
  p, f, v: Integer;
begin
  f := 0;
  p := 2;
  v := n;
  while (f < k) and (p*p <= n) do begin
    while (v mod p) = 0 do begin
      v := v div p;
      Inc(f);
    end;
    Inc(p);
  end;
  if v > 1 then Inc(f);
  Result := f = k;
end;

var
  i, c, k: Integer;

begin
  for k := 1 to 5 do begin
    Write('k = ', k, ':');
    c := 0;
    i := 2;
    while c < 10 do begin
      if IsKPrime(i, k) then begin
        Write(' ', i);
        Inc(c);
      end;
      Inc(i);
    end;
    WriteLn;
  end;
end.
{-------------------------------------------------------- 4 anonymous-recursion}
program AnonymousRecursion;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function Fib(X: Integer): integer;

	function DoFib(N: Integer): Integer;
	begin
	if N < 2 then Result:=N
	else Result:=DoFib(N-1) + DoFib(N-2);
	end;

begin
if X < 0 then raise Exception.Create('Argument < 0')
else Result:=DoFib(X);
end;


var I: integer;

begin
for I:=-1 to 15 do
	begin
	try
	WriteLn(I:3,' - ',Fib(I):3);
	except WriteLn(I,' - Error'); end;
	end;
WriteLn('Hit Any Key');
ReadLn;
end.
{----------------------------------------------- 5 apply-a-callback-to-an-array}
// Declare the callback function
procedure callback(const AInt:Integer);
begin
  WriteLn(AInt);
end;

const
  // Declare a static array
  myArray:Array[0..4] of Integer=(1,4,6,8,7);
var
  // Declare interator variable
  i:Integer;
begin
  // Iterate the array and apply callback
  for i:=0 to length(myArray)-1 do
    callback(myArray[i]);
end.
{--------------------------------------------------------- 6 arithmetic-numbers}
{{works with| Delphi-6 or better}}
program ArithmeiticNumbers;

{$APPTYPE CONSOLE}

procedure ArithmeticNumbers;
var N, ArithCnt, CompCnt, DDiv: integer;
var DivCnt, Sum, Quot, Rem: integer;
begin
N:= 1;  ArithCnt:= 0;  CompCnt:= 0;
repeat
	begin
	DDiv:= 1;  DivCnt:= 0;  Sum:= 0;
	while true do
		begin
		Quot:= N div DDiv;
		Rem:=N mod DDiv;
		if Quot < DDiv then break;
		if (Quot = DDiv) and (Rem = 0) then //N is a square
			begin
			Sum:= Sum+Quot;
			DivCnt:= DivCnt+1;
			break;
			end;
		if Rem = 0 then
			begin
			Sum:= Sum + DDiv + Quot;
			DivCnt:= DivCnt+2;
			end;
		DDiv:= DDiv+1;
		end;
	if (Sum mod DivCnt) = 0 then //N is arithmetic
		begin
		ArithCnt:= ArithCnt+1;
		if ArithCnt <= 100 then
			begin
			Write(N:4);
			if (ArithCnt mod 20) = 0 then WriteLn;
			end;
		if DivCnt > 2 then CompCnt:= CompCnt+1;
		case ArithCnt of 1000, 10000, 100000, 1000000:
			begin
			Writeln;
			Write(N, #9 {tab} );
			Write(CompCnt);
			end;
	 	 end;
	 	end;
        N:= N+1;
        end
until   ArithCnt >= 1000000;
WriteLn;
end;

begin
ArithmeticNumbers;
WriteLn('Hit Any Key');
ReadLn;
end.
{------------------------------------------------------ 7 array-concatenation-1}
// This example works on stuff as old as Delphi 5 (maybe older)
// Modern Delphi / Object Pascal has both
//   • generic types
//   • the ability to concatenate arrays with the '+' operator
// So I could just say:
//   myarray := [1] + [2, 3];
// But if you do not have access to the latest/greatest, then:
{$apptype console}

type
  // Array types must be declared in order to return them from functions
  // They can also be used with open array parameters.
  TArrayOfString = array of string;

function Concat( a, b : array of string ): TArrayOfString; overload;
{
  Every array type needs its own 'Concat' function:
    function Concat( a, b : array of integer ): TArrayOfInteger; overload;
    function Concat( a, b : array of double  ): TArrayOfDouble;  overload;
    etc
  Also, dynamic and open array types ALWAYS start at 0. No need to complicate indexing here.
}
var
  n : Integer;
begin
  SetLength( result, Length(a)+Length(b) );
  for n := 0 to High(a) do result[          n] := a[n];
  for n := 0 to High(b) do result[Length(a)+n] := b[n]
end;

// Example time!
function Join( a : array of string; sep : string = ' ' ): string;
var
  n : integer;
begin
  if Length(a) > 0 then result := a[0];
  for n := 1 to High(a) do result := result + sep + a[n]
end;

var
  names : TArrayOfString;
begin
  // Here we use the open array parameter constructor as a convenience
  names := Concat( ['Korra', 'Asami'], ['Bolin', 'Mako'] );
  WriteLn( Join(names) );

  // Also convenient: open array parameters are assignment-compatible with our array type!
  names := Concat( names, ['Varrick', 'Zhu Li'] );
  WriteLn( #13#10, Join(names, ', ') );

  names := Concat( ['Tenzin'], names );
  Writeln( #13#10, Join(names, #13#10 ) );
end.
{--------------------------------------------- 8 averages-simple-moving-average}
program Simple_moving_average;

{$APPTYPE CONSOLE}

type
  TMovingAverage = record
  private
    buffer: TArray<Double>;
    head: Integer;
    Capacity: Integer;
    Count: Integer;
    sum, fValue: Double;
  public
    constructor Create(aCapacity: Integer);
    function Add(Value: Double): Double;
    procedure Reset;
    property Value: Double read fValue;
  end;

{ TMovingAverage }

function TMovingAverage.Add(Value: Double): Double;
begin
  head := (head + 1) mod Capacity;
  sum := sum + Value - buffer[head];
  buffer[head] := Value;

  if count < capacity then
  begin
    inc(Count);
    fValue := sum / count;
    exit(fValue);
  end;
  fValue := sum / Capacity;
  Result := fValue;
end;

constructor TMovingAverage.Create(aCapacity: Integer);
begin
  Capacity := aCapacity;
  SetLength(buffer, aCapacity);
  Reset;
end;

procedure TMovingAverage.Reset;
var
  i: integer;
begin
  head := -1;
  Count := 0;
  sum := 0;
  fValue := 0;
  for i := 0 to High(buffer) do
    buffer[i] := 0;
end;

var
  avg3, avg5: TMovingAverage;
  i: Integer;

begin
  avg3 := TMovingAverage.Create(3);
  avg5 := TMovingAverage.Create(5);

  for i := 1 to 5 do
  begin
    write('Inserting ', i, ' into avg3 ', avg3.Add(i): 0: 4);
    writeln(' Inserting ', i, ' into avg5 ', avg5.Add(i): 0: 4);
  end;

  for i := 5 downto 1 do
  begin
    write('Inserting ', i, ' into avg3 ', avg3.Add(i): 0: 4);
    writeln(' Inserting ', i, ' into avg5 ', avg5.Add(i): 0: 4);
  end;

  avg3.Reset;
  for i := 1 to 100000000 do
    avg3.Add(i);
  writeln('100''000''000 insertions ', avg3.Value: 0: 4);

  Readln;
end.
{--------------------------------------------------------------- 9 bell-numbers}
program BellNumbers;

// For Rosetta Code.
// Delphi console application to display the Bell numbers B_0, ..., B_25.
// Uses signed 64-bit integers, the largest integer type available in Delphi.

{$APPTYPE CONSOLE}

uses SysUtils; // only for the display

const
  MAX_N = 25; // maximum index of Bell number within the limits of int64
var
  n : integer; // index of Bell number
  j : integer; // loop variable
  a : array [0..MAX_N - 1] of int64; // working array to build up B_n

  { Subroutine to display that a[0] is the Bell number B_n }
  procedure Display();
  begin
    WriteLn( SysUtils.Format( 'B_%-2d = %d', [n, a[0]]));
  end;

(* Main program *)
begin
  n := 0;
  a[0] := 1;
  Display(); // some programmers would prefer Display;
  while (n < MAX_N) do begin // and give begin a line to itself
    a[n] := a[0];
    for j := n downto 1 do inc( a[j - 1], a[j]);
    inc(n);
    Display();
  end;
end.
{------------------------------------------------------------- 10 binary-digits}
program BinaryDigit;
{$APPTYPE CONSOLE}
uses
  sysutils;

function IntToBinStr(AInt : LongWord) : string;
begin
  Result := '';
  repeat
    Result := Chr(Ord('0')+(AInt and 1))+Result;
    AInt := AInt div 2;
  until (AInt = 0);
end;

Begin
  writeln('   5: ',IntToBinStr(5));
  writeln('  50: ',IntToBinStr(50));
  writeln('9000: '+IntToBinStr(9000));
end.
{-------------------------------------------------------- 11 bitwise-operations}
program Bitwise;

{$APPTYPE CONSOLE}

begin
  Writeln('2 and 3 = ', 2 and 3);
  Writeln('2 or 3 = ', 2 or 3);
  Writeln('2 xor 3 = ', 2 xor 3);
  Writeln('not 2 = ', not 2);
  Writeln('2 shl 3 = ', 2 shl 3);
  Writeln('2 shr 3 = ', 2 shr 3);
// there are no built-in rotation operators in Delphi
  Readln;
end.
{---------------------------------------------------------------- 12 cantor-set}
program Cantor_set;

{$APPTYPE CONSOLE}

const
  WIDTH: Integer = 81;
  HEIGHT: Integer = 5;

var
  Lines: TArray<TArray<Char>>;

procedure Init;
var
  i, j: Integer;
begin
  SetLength(lines, HEIGHT, WIDTH);
  for i := 0 to HEIGHT - 1 do
    for j := 0 to WIDTH - 1 do
      lines[i, j] := '*';
end;

procedure Cantor(start, len, index: Integer);
var
  seg, i, j: Integer;
begin
  seg := len div 3;
  if seg = 0 then
    Exit;
  for i := index to HEIGHT - 1 do
    for j := start + seg to start + seg * 2 - 1 do
      lines[i, j] := ' ';
  Cantor(start, seg, index + 1);
  Cantor(start + seg * 2, seg, index + 1);
end;

var
  i, j: Integer;

begin
  Init;
  Cantor(0, WIDTH, 1);
  for i := 0 to HEIGHT - 1 do
  begin
    for j := 0 to WIDTH - 1 do
      Write(lines[i, j]);
    Writeln;
  end;
  Readln;
end.
{------------------------------------------- 13 case-sensitivity-of-identifiers}
program CaseSensitiveIdentifiers;

{$APPTYPE CONSOLE}

var
  dog: string;
begin
  dog := 'Benjamin';
  Dog := 'Samba';
  DOG := 'Bernie';
  Writeln('There is just one dog named ' + dog);
end.
{----------------------------------------------------------- 14 character-codes}
program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  aChar:Char;
  aCode:Byte;
  uChar:WideChar;
  uCode:Word;
begin
  aChar := Chr(97);       Writeln(aChar);
  aCode := Ord(aChar);    Writeln(aCode);
  uChar := WideChar(97);  Writeln(uChar);
  uCode := Ord(uChar);    Writeln(uCode);

  Readln;
end.
{---------------------------------------------------- 15 check-that-file-exists}
program EnsureFileExists;

{$APPTYPE CONSOLE}

uses
  SysUtils;

begin
  if FileExists('input.txt') then
    Writeln('File "input.txt" exists.')
  else
    Writeln('File "input.txt" does not exist.');

  if FileExists('\input.txt') then
    Writeln('File "\input.txt" exists.')
  else
    Writeln('File "\input.txt" does not exist.');

  if DirectoryExists('docs') then
    Writeln('Directory "docs" exists.')
  else
    Writeln('Directory "docs" does not exists.');

  if DirectoryExists('\docs') then
    Writeln('Directory "\docs" exists.')
  else
    Writeln('Directory "\docs" does not exists.');
end.
{----------------------------------------------------------------- 16 code-golf}
program Project1;
{$APPTYPE CONSOLE}
begin
WriteLn('code golf');
WriteLn(#67,#111,#100,#101,#32,#71,#111,#108,#102);
end.
{------------------------------------------------------------- 17 copy-a-string}
program CopyString;

{$APPTYPE CONSOLE}

var
  s1: string;
  s2: string;
begin
  s1 := 'Goodbye';
  s2 := s1; // S2 points at the same string as S1
  s2 := s2 + ', World!'; // A new string is created for S2

  Writeln(s1);
  Writeln(s2);
end.
{------------------------------------------------------------ 18 count-in-octal}
program CountingInOctal;

{$APPTYPE CONSOLE}

uses SysUtils;

function DecToOct(aValue: Integer): string;
var
  lRemainder: Integer;
begin
  Result := '';
  repeat
    lRemainder := aValue mod 8;
    Result := IntToStr(lRemainder) + Result;
    aValue := aValue div 8;
  until aValue = 0;
end;

var
  i: Integer;
begin
  for i := 0 to 20 do
    WriteLn(DecToOct(i));
end.
{------------------------------------------ 19 count-occurrences-of-a-substring}
program OccurrencesOfASubstring;

{$APPTYPE CONSOLE}

uses StrUtils;

function CountSubstring(const aString, aSubstring: string): Integer;
var
  lPosition: Integer;
begin
  Result := 0;
  lPosition := PosEx(aSubstring, aString);
  while lPosition <> 0 do
  begin
    Inc(Result);
    lPosition := PosEx(aSubstring, aString, lPosition + Length(aSubstring));
  end;
end;

begin
  Writeln(CountSubstring('the three truths', 'th'));
  Writeln(CountSubstring('ababababab', 'abab'));
end.
{----------------------------------------------------------- 20 count-the-coins}
program Count_the_coins;

{$APPTYPE CONSOLE}

function Count(c: array of Integer; m, n: Integer): Integer;
var
  table: array of Integer;
  i, j: Integer;
begin
  SetLength(table, n + 1);
  table[0] := 1;
  for i := 0 to m - 1 do
    for j := c[i] to n do
      table[j] := table[j] + table[j - c[i]];
  Exit(table[n]);
end;

var
  c: array of Integer;
  m, n: Integer;

begin
  c := [1, 5, 10, 25];

  m := Length(c);
  n := 100;
  Writeln(Count(c, m, n));  //242
  Readln;
end.
{--------------------------------------- 21 create-an-object-at-a-given-address}
program Create_an_object_at_a_given_address;

{$APPTYPE CONSOLE}

var
  origem: Integer;
  copy: Integer absolute origem;   // This is old the trick

begin
  writeln('The "origem" adress is: ', cardinal(@origem));
  writeln('The "copy" adress is: ', cardinal(@copy));
  writeln;

  origem := 10;
  writeln('Assign 10 to "origem" ');
  writeln('The value of "origem" é ', origem);
  writeln('The value of "copy" é ', copy);
  writeln;

  copy := 2;
  writeln('Assign 2 to "copy" ');

  writeln('The value of "origem" é ', origem);
  writeln('The value of "copy" é ', copy);

  Readln;

end.
{--------------------------------------------- 22 cumulative-standard-deviation}
program prj_CalcStdDerv;

{$APPTYPE CONSOLE}

uses
  Math;

var Series:Array of Extended;
    UserString:String;


function AppendAndCalc(NewVal:Extended):Extended;

begin
  setlength(Series,high(Series)+2);
  Series[high(Series)] := NewVal;
  result := PopnStdDev(Series);
end;

const data:array[0..7] of Extended =
  (2,4,4,4,5,5,7,9);

var rr: Extended;
begin
  setlength(Series,0);
  for rr in data do
    begin
      writeln(rr,' -> ',AppendAndCalc(rr));
    end;
  Readln;
end.
{--------------------------------------------------------- 23 date-manipulation}
program DateManipulation;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  DateUtils;

function MonthNumber(aMonth: string): Word;
begin
  //Convert a string value representing the month
  //to its corresponding numerical value
  if aMonth = 'January' then Result:= 1
  else if aMonth = 'February' then Result:= 2
  else if aMonth = 'March' then Result:= 3
  else if aMonth = 'April' then Result:= 4
  else if aMonth = 'May' then Result:= 5
  else if aMonth = 'June' then Result:= 6
  else if aMonth = 'July' then Result:= 7
  else if aMonth = 'August' then Result:= 8
  else if aMonth = 'September' then Result:= 9
  else if aMonth = 'October' then Result:= 10
  else if aMonth = 'November' then Result:= 11
  else if aMonth = 'December' then Result:= 12
  else Result:= 12;
end;

function ParseString(aDateTime: string): TDateTime;
var
  strDay,
  strMonth,
  strYear,
  strTime: string;
  iDay,
  iMonth,
  iYear: Word;
  TimePortion: TDateTime;
begin
  //Decode the month from the given string
  strMonth:= Copy(aDateTime, 1, Pos(' ', aDateTime) - 1);
  Delete(aDateTime, 1, Pos(' ', aDateTime));
  iMonth:= MonthNumber(strMonth);

  //Decode the day from the given string
  strDay:= Copy(aDateTime, 1, Pos(' ', aDateTime) - 1);
  Delete(aDateTime, 1, Pos(' ', aDateTime));
  iDay:= StrToIntDef(strDay, 30);

  //Decode the year from the given string
  strYear:= Copy(aDateTime, 1, Pos(' ', aDateTime) -1);
  Delete(aDateTime, 1, Pos(' ', aDateTime));
  iYear:= StrToIntDef(strYear, 1899);

  //Decode the time value from the given string
  strTime:= Copy(aDateTime, 1, Pos(' ', aDateTime) -1);

  //Encode the date value and assign it to result
  Result:= EncodeDate(iYear, iMonth, iDay);

  //Encode the time value and add it to result
  if TryStrToTime(strTime, TimePortion) then
    Result:= Result + TimePortion;
end;

function Add12Hours(aDateTime: string): string;
var
  tmpDateTime: TDateTime;
begin
  //Adding 12 hours to the given
  //date time string value
  tmpDateTime:= ParseString(aDateTime);
  tmpDateTime:= IncHour(tmpDateTime, 12);

  //Formatting the output
  Result:= FormatDateTime('mm/dd/yyyy hh:mm AM/PM', tmpDateTime);
end;

begin
  Writeln(Add12Hours('March 7 2009 7:30pm EST'));
  Readln;
end.
{--------------------------------------------------- 24 detect-division-by-zero}
program DivideByZero;

{$APPTYPE CONSOLE}

uses SysUtils;

var
  a, b: Integer;
begin
  a := 1;
  b := 0;
  try
    WriteLn(a / b);
  except
    on e: EZeroDivide do
      Writeln(e.Message);
  end;
end.
{------------------------------------------------------- 25 dijkstras-algorithm}
program Rosetta_Dijkstra_Console;

{$APPTYPE CONSOLE}

uses SysUtils; // for printing the result

// Conventional values (any negative values would do)
const
  INFINITY  = -1;
  NO_VERTEX = -2;

const
  NR_VERTICES = 6;

// DISTANCE_MATRIX[u, v] = length of directed edge from u to v, or -1 if no such edge exists.
// A simple way to represent a directed graph with not many vertices.
const DISTANCE_MATRIX : array [0..(NR_VERTICES - 1), 0..(NR_VERTICES - 1)] of integer
= ((-1,  7,  9, -1, -1, -1),
   (-1, -1, 10, 15, -1, -1),
   (-1, -1, -1, 11, -1,  2),
   (-1, -1, -1, -1,  6, -1),
   (-1, -1, -1, -1, -1,  9),
   (-1, -1, -1, -1, -1, -1));

type TVertex = record
  Distance : integer; // distance from vertex 0; infinity if a path has not yet been found
  Previous : integer; // previous vertex in the path from vertex 0
  Visited  : boolean; // as defined in the algorithm
end;

// For distances x and y, test whether x < y, using the convention that -1 means infinity.
function IsLess( x, y : integer) : boolean;
begin
  result := (x <> INFINITY)
        and ( (y = INFINITY) or (x < y) );
end;

// Main routine
var
  v : array [0..NR_VERTICES - 1] of TVertex; // array of vertices
  c : integer; // index of current vertex
  j : integer; // loop counter
  trialDistance : integer;
  minDistance : integer;
  // Variables for printing the result
  p : integer;
  lineOut : string;
begin
  // Initialize the vertices
  for j := 0 to NR_VERTICES - 1 do begin
    v[j].Distance := INFINITY;
    v[j].Previous := NO_VERTEX;
    v[j].Visited  := false;
  end;

  // Start with vertex 0 as the current vertex
  c := 0;
  v[c].Distance := 0;

  // Main loop of Dijkstra's algorithm
  repeat

    // Work through unvisited neighbours of the current vertex, updating them where possible.
    // "Neighbour" means the end of a directed edge from the current vertex.
    // Note that v[c].Distance is always finite.
    for j := 0 to NR_VERTICES - 1 do begin
      if (not v[j].Visited) and (DISTANCE_MATRIX[c, j] >= 0) then begin
        trialDistance := v[c].Distance + DISTANCE_MATRIX[c, j];
        if IsLess( trialDistance, v[j].Distance) then begin
          v[j].Distance := trialDistance;
          v[j].Previous := c;
        end;
      end;
    end;

    // When all neighbours have been tested, mark the current vertex as visited.
    v[c].Visited := true;

    // The new current vertex is the unvisited vertex with the smallest finite distance.
    // If there is no such vertex, the algorithm is finished.
    c := NO_VERTEX;
    minDistance := INFINITY;
    for j := 0 to NR_VERTICES - 1 do begin
      if (not v[j].Visited) and IsLess( v[j].Distance, minDistance) then begin
        minDistance := v[j].Distance;
        c := j;
      end;
    end;
  until (c = NO_VERTEX);

  // Print the result
  for j := 0 to NR_VERTICES - 1 do begin
    if (v[j].Distance = INFINITY) then begin
      // The algorithm never found a path to v[j]
      lineOut := SysUtils.Format( '%2d: inaccessible', [j]);
    end
    else begin
      // Build up the path of vertices, working backwards from v[j]
      lineOut := SysUtils.Format( '%2d', [j]);
      p := v[j].Previous;
      while (p <> NO_VERTEX) do begin
        lineOut := SysUtils.Format( '%2d --> ', [p]) + lineOut;
        p := v[p].Previous;
      end;
      // Print the path of vertices, preceded by distance from vertex 0
      lineOut := SysUtils.Format( '%2d: distance = %3d, ', [j, v[j].Distance]) + lineOut;
    end;
    WriteLn( lineOut);
  end;
end.
{--------------------------------------------------------------- 26 dot-product}
program Project1;

{$APPTYPE CONSOLE}

type
  doublearray = array of Double;

function DotProduct(const A, B : doublearray): Double;
var
I: integer;
begin
  assert (Length(A) = Length(B), 'Input arrays must be the same length');
  Result := 0;
  for I := 0 to Length(A) - 1 do
    Result := Result + (A[I] * B[I]);
end;

var
  x,y: doublearray;
begin
  SetLength(x, 3);
  SetLength(y, 3);
  x[0] := 1; x[1] := 3; x[2] := -5;
  y[0] := 4; y[1] :=-2; y[2] := -1;
  WriteLn(DotProduct(x,y));
  ReadLn;
end.
{------------------------------------------------------------- 27 draw-a-sphere}
program DrawASphere;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Math;

type
  TDouble3  = array[0..2] of Double;
  TChar10 = array[0..9] of Char;

var
  shades: TChar10 = ('.', ':', '!', '*', 'o', 'e', '&', '#', '%', '@');
  light: TDouble3 = (30, 30, -50 );

  procedure normalize(var v: TDouble3);
  var
    len: Double;
  begin
    len:= sqrt(v[0]*v[0] + v[1]*v[1] + v[2]*v[2]);
    v[0] := v[0] / len;
    v[1] := v[1] / len;
    v[2] := v[2] / len;
  end;

  function dot(x, y: TDouble3): Double;
  begin
    Result:= x[0]*y[0] + x[1]*y[1] + x[2]*y[2];
    Result:= IfThen(Result < 0, -Result, 0 );
  end;

  procedure drawSphere(R, k, ambient: Double);
  var
    vec: TDouble3;
    x, y, b: Double;
    i, j,
    intensity: Integer;
  begin
    for i:= Floor(-R) to Ceil(R) do
    begin
      x := i + 0.5;
      for j:= Floor(-2*R) to Ceil(2 * R) do
      begin
        y:= j / 2 + 0.5;
        if(x * x + y * y <= R * R) then
        begin
          vec[0]:= x;
          vec[1]:= y;
          vec[2]:= sqrt(R * R - x * x - y * y);
          normalize(vec);
          b:= Power(dot(light, vec), k) + ambient;
          intensity:= IfThen(b <= 0,
                             Length(shades) - 2,
                             Trunc(max( (1 - b) * (Length(shades) - 1), 0 )));
          Write(shades[intensity]);
        end
        else
          Write(' ');
      end;
      Writeln;
    end;
  end;

begin
  normalize(light);
  drawSphere(19, 4, 0.1);
  drawSphere(10, 2, 0.4);
  Readln;
end.
{-------------------------------------------------------------- 28 empty-string}
program EmptyString;

{$APPTYPE CONSOLE}

uses SysUtils;

function StringIsEmpty(const aString: string): Boolean;
begin
  Result := aString = '';
end;

var
  s: string;
begin
  s := '';
  Writeln(StringIsEmpty(s)); // True

  s := 'abc';
  Writeln(StringIsEmpty(s)); // False
end.
{------------------------------------------------------------------- 29 entropy}
program Entropytest;

uses
  StrUtils,
  Math;

type
  FArray = array of CARDINAL;

var
  strng: string = '1223334444';

// list unique characters in a string
function uniquechars(str: string): string;
var
  n: CARDINAL;
begin
  Result := '';
  for n := 1 to length(str) do
    if (PosEx(str[n], str, n) > 0) and (PosEx(str[n], Result, 1) = 0) then
      Result := Result + str[n];
end;

// obtain a list of character-frequencies for a string
//  given a string containing its unique characters
function frequencies(str, ustr: string): FArray;
var
  u, s, p, o: CARDINAL;
begin
  SetLength(Result, Length(ustr) + 1);
  p := 0;
  for u := 1 to length(ustr) do
    for s := 1 to length(str) do
    begin
      o := p;
      p := PosEx(ustr[u], str, s);
      if (p > o) then
        INC(Result[u]);
    end;
end;

// Obtain the Shannon entropy of a string
function entropy(s: string): EXTENDED;
var
  pf: FArray;
  us: string;
  i, l: CARDINAL;
begin
  us := uniquechars(s);
  pf := frequencies(s, us);
  l := length(s);
  Result := 0.0;
  for i := 1 to length(us) do
    Result := Result - pf[i] / l * log2(pf[i] / l);
end;

begin
  Writeln('Entropy of "', strng, '" is ', entropy(strng): 2: 5, ' bits.');
  readln;
end.
{----------------------------------------------------- 30 environment-variables}
program EnvironmentVariable;

{$APPTYPE CONSOLE}

uses SysUtils;

begin
  WriteLn('Temp = ' + GetEnvironmentVariable('TEMP'));
end.
{-------------------------------------------- 31 evaluate-binomial-coefficients}
program Binomial;

{$APPTYPE CONSOLE}

function BinomialCoff(N, K: Cardinal): Cardinal;
var
  L: Cardinal;

begin
  if N < K then
    Result:= 0      // Error
  else begin
    if K > N - K then
      K:= N - K;    // Optimization
    Result:= 1;
    L:= 0;
    while L < K do begin
      Result:= Result * (N - L);
      Inc(L);
      Result:= Result div L;
    end;
  end;
end;

begin
  Writeln('C(5,3) is ', BinomialCoff(5, 3));
  ReadLn;
end.
{--------------------- 32 exceptions-catch-an-exception-thrown-in-a-nested-call}
program ExceptionsInNestedCall;

{$APPTYPE CONSOLE}

uses SysUtils;

type
  U0 = class(Exception)
  end;
  U1 = class(Exception)
  end;

procedure Baz(i: Integer);
begin
  if i = 0 then
    raise U0.Create('U0 Error message')
  else
    raise U1.Create('U1 Error message');
end;

procedure Bar(i: Integer);
begin
  Baz(i);
end;

procedure Foo;
var
  i: Integer;
begin
  for i := 0 to 1 do
  begin
    try
      Bar(i);
    except
      on E: U0 do
        Writeln('Exception ' + E.ClassName + ' caught');
    end;
  end;
end;

begin
  Foo;
end.
{--------------------------------------------- 33 extreme-floating-point-values}
program Floats;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  PlusInf, MinusInf, NegZero, NotANum: Double;

begin
  PlusInf:= 1.0/0.0;
  MinusInf:= -1.0/0.0;
  NegZero:= -1.0/PlusInf;
  NotANum:= 0.0/0.0;

  Writeln('Positive Infinity: ', PlusInf);      // +Inf
  Writeln('Negative Infinity: ', MinusInf);     // -Inf
  Writeln('Negative Zero: ', NegZero);          // -0.0
  Writeln('Not a Number: ', NotANum);           // Nan

// allowed arithmetic
  Writeln('+Inf + 2.0 = ', PlusInf + 2.0);      // +Inf
  Writeln('+Inf - 10.1 = ', PlusInf - 10.1);    // +Inf
  Writeln('NaN + 1.0 = ', NotANum + 1.0);       // Nan
  Writeln('NaN + NaN = ', NotANum + NotANum);   // Nan

// throws exception
  try
    Writeln('+inf + -inf = ', PlusInf + MinusInf);  // EInvalidOp
    Writeln('0.0 * +inf = ', 0.0 * PlusInf);        // EInlalidOp
    Writeln('1.0/-0.0 = ', 1.0 / NegZero);          // EZeroDivide
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;

  Readln;
end.
{--------------------------------------------------------------- 34 factorial-1}
program Factorial1;

{$APPTYPE CONSOLE}

function FactorialIterative(aNumber: Integer): Int64;
var
  i: Integer;
begin
  Result := 1;
  for i := 1 to aNumber do
    Result := i * Result;
end;

begin
  Writeln('5! = ', FactorialIterative(5));
end.
{--------------------------------------------------------------- 35 factorial-2}
program Factorial2;

{$APPTYPE CONSOLE}

function FactorialRecursive(aNumber: Integer): Int64;
begin
  if aNumber < 1 then
    Result := 1
  else
    Result := aNumber * FactorialRecursive(aNumber - 1);
end;

begin
  Writeln('5! = ', FactorialRecursive(5));
end.
{--------------------------------------------------------------- 36 factorial-3}
program Factorial3;

{$APPTYPE CONSOLE}

function FactorialTailRecursive(aNumber: Integer): Int64;

  function FactorialHelper(aNumber: Integer; aAccumulator: Int64): Int64;
  begin
    if aNumber = 0 then
      Result := aAccumulator
    else
      Result := FactorialHelper(aNumber - 1, aNumber * aAccumulator);
    end;

begin
  if aNumber < 1 then
    Result := 1
  else
    Result := FactorialHelper(aNumber, 1);
end;

begin
  Writeln('5! = ', FactorialTailRecursive(5));
end.
{----------------------------------------------------------------- 37 file-size}
program SizeOfFile;

{$APPTYPE CONSOLE}

uses SysUtils;

function CheckFileSize(const aFilename: string): Integer;
var
  lFile: file of Byte;
begin
  AssignFile(lFile, aFilename);
  FileMode := 0; {Access file in read only mode}
  Reset(lFile);
  Result := FileSize(lFile);
  CloseFile(lFile);
end;

begin
  Writeln('input.txt ', CheckFileSize('input.txt'));
  Writeln('\input.txt ', CheckFileSize('\input.txt'));
end.
{------------------------------------------------------------------ 38 filter-1}
program FilterEven;

{$APPTYPE CONSOLE}

uses SysUtils, Types;

const
  SOURCE_ARRAY: array[0..9] of Integer = (0,1,2,3,4,5,6,7,8,9);
var
  i: Integer;
  lEvenArray: TIntegerDynArray;
begin
  for i in SOURCE_ARRAY do
  begin
    if not Odd(i) then
    begin
      SetLength(lEvenArray, Length(lEvenArray) + 1);
      lEvenArray[Length(lEvenArray) - 1] := i;
    end;
  end;

  for i in lEvenArray do
    Write(i:3);
  Writeln;
end.
{------------------------------------------------------------- 39 five-weekends}
program FiveWeekends;

{$APPTYPE CONSOLE}

uses SysUtils, DateUtils;

var
  lMonth, lYear: Integer;
  lDate: TDateTime;
  lFiveWeekendCount: Integer;
  lYearsWithout: Integer;
  lFiveWeekendFound: Boolean;
begin
  for lYear := 1900 to 2100 do
  begin
    lFiveWeekendFound := False;
    for lMonth := 1 to 12 do
    begin
      lDate := EncodeDate(lYear, lMonth, 1);
      if (DaysInMonth(lDate) = 31) and (DayOfTheWeek(lDate) = DayFriday) then
      begin
        Writeln(FormatDateTime('mmm yyyy', lDate));
        Inc(lFiveWeekendCount);
        lFiveWeekendFound := True;
      end;
    end;
    if not lFiveWeekendFound then
      Inc(lYearsWithout);
  end;

  Writeln;
  Writeln(Format('Months with 5 weekends: %d', [lFiveWeekendCount]));
  Writeln(Format('Years with no 5 weekend months: %d', [lYearsWithout]));
end.
{------------------------------------------------------------------ 40 fizzbuzz}
program FizzBuzz;

{$APPTYPE CONSOLE}

uses SysUtils;

var
  i: Integer;
begin
  for i := 1 to 100 do
  begin
    if i mod 15 = 0 then
      Writeln('FizzBuzz')
    else if i mod 3 = 0 then
      Writeln('Fizz')
    else if i mod 5 = 0 then
      Writeln('Buzz')
    else
      Writeln(i);
  end;
end.
{-------------------------------------------------- 41 formatted-numeric-output}
program FormattedNumericOutput;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  fVal = 7.125;

begin
  Writeln(FormatFloat('0000#.000',fVal));
  Writeln(FormatFloat('0000#.0000000',fVal));
  Writeln(FormatFloat('##.0000000',fVal));
  Writeln(FormatFloat('0',fVal));
  Writeln(FormatFloat('#.#E-0',fVal));
  Writeln(FormatFloat('#,##0.00;;Zero',fVal));
  Readln;
end.
{---------------------------------------- 42 generate-lower-case-ascii-alphabet}
program atoz;

var
  ch : char;

begin
  for ch in ['a'..'z'] do
  begin
    write(ch);
  end;
end.
{------------------------------------------------------------ 43 generic-swap-2}
program GenericSwap;

type
  TSwap = class
    class procedure Swap<T>(var left, right: T);
  end;

class procedure TSwap.Swap<T>(var left, right: T);
var
  temp : T;
begin
  temp := left;
  left := right;
  right := temp;
end;

var
  a, b : integer;

begin
  a := 5;
  b := 3;
  writeln('Before swap: a=', a, ' b=', b);
  TSwap.Swap<integer>(a, b);
  writeln('After swap: a=', a, ' b=', b);
end.
{----------------------------------------------------------------- 44 gray-code}
program GrayCode;

{$APPTYPE CONSOLE}

uses SysUtils;

function Encode(v: Integer): Integer;
begin
  Result := v xor (v shr 1);
end;

function Decode(v: Integer): Integer;
begin
  Result := 0;
  while v > 0 do
  begin
    Result := Result xor v;
    v := v shr 1;
  end;
end;

function IntToBin(aValue: LongInt; aDigits: Integer): string;
begin
  Result := StringOfChar('0', aDigits);
  while aValue > 0 do
  begin
    if (aValue and 1) = 1 then
      Result[aDigits] := '1';
    Dec(aDigits);
    aValue := aValue shr 1;
  end;
end;

var
  i, g, d: Integer;
begin
  Writeln('decimal  binary   gray    decoded');

  for i := 0 to 31 do
  begin
    g := Encode(i);
    d := Decode(g);
    Writeln(Format('  %2d     %s   %s   %s  %2d', [i, IntToBin(i, 5), IntToBin(g, 5), IntToBin(d, 5), d]));
  end;
end.
{------------------------------------------------ 45 greatest-element-of-a-list}
program GElemLIst;
{$IFNDEF FPC}
  {$Apptype Console}
{$ENDIF}

uses
  math;
const
  MaxCnt = 10000;
var
  IntArr : array of integer;
  fltArr : array of double;
  i: integer;
begin
  setlength(fltArr,MaxCnt); //filled with 0
  setlength(IntArr,MaxCnt); //filled with 0.0
  randomize;
  i := random(MaxCnt);      //choose a random place
  IntArr[i] := 1;
  fltArr[i] := 1.0;
  writeln(Math.MaxIntValue(IntArr)); // Array of Integer
  writeln(Math.MaxValue(fltArr));
end.
{--------------------------------------------------------- 46 haversine-formula}
program HaversineDemo;
uses Math;

function HaversineDist(th1, ph1, th2, ph2:double):double;
const diameter = 2 * 6372.8;
var   dx, dy, dz:double;
begin
  ph1    := degtorad(ph1 - ph2);
  th1    := degtorad(th1);
  th2    := degtorad(th2);

  dz     := sin(th1) - sin(th2);
  dx     := cos(ph1) * cos(th1) - cos(th2);
  dy     := sin(ph1) * cos(th1);
  Result := arcsin(sqrt(sqr(dx) + sqr(dy) + sqr(dz)) / 2) * diameter;
end;

begin
  Writeln('Haversine distance: ', HaversineDist(36.12, -86.67, 33.94, -118.4):7:2, ' km.');
end.
{---------------------------------------------- 47 hello-world-newline-omission}
program Project1;

{$APPTYPE CONSOLE}

begin
  Write('Goodbye, World!');
end.
{---------------------------------------------------------- 48 hello-world-text}
program ProjectGoodbye;
{$APPTYPE CONSOLE}
begin
  WriteLn('Hello world!');
end.
{-------------------------------------------------------- 49 host-introspection}
program HostIntrospection ;

{$APPTYPE CONSOLE}

uses SysUtils;

begin
  Writeln('word size: ', SizeOf(Integer));
  Writeln('endianness: little endian'); // Windows is always little endian
end.
{----------------------------------------------------------- 50 identity-matrix}
program IdentityMatrix;

// Modified from the Pascal version

{$APPTYPE CONSOLE}

var
  matrix: array of array of integer;
  n, i, j: integer;

begin
  write('Size of matrix: ');
  readln(n);
  setlength(matrix, n, n);

  for i := 0 to n - 1 do
    matrix[i,i] := 1;

  for i := 0 to n - 1 do
  begin
    for j := 0 to n - 1 do
      write (matrix[i,j], ' ');
    writeln;
  end;
end.
{---------------------------------------------- 51 increment-a-numerical-string}
program IncrementNumericalString;

{$APPTYPE CONSOLE}

uses SysUtils;

const
  STRING_VALUE = '12345';
begin
  WriteLn(Format('"%s" + 1 = %d', [STRING_VALUE, StrToInt(STRING_VALUE) + 1]));

  Readln;
end.
{----------------------------------------------------------- 52 jump-anywhere-1}
var
  x: Integer = 5;

label
  positive, negative, both;

begin
  if (x > 0) then
    goto positive
  else
    goto negative;

positive:
  writeln('pos');
  goto both;

negative:
  writeln('neg');
both:
  readln;
end.
{----------------------------------------------------------------- 53 leap-year}
program TestLeapYear;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  Year: Integer;

begin
  Write('Enter the year: ');
  Readln(Year);
  if IsLeapYear(Year) then
    Writeln(Year, ' is a Leap year')
  else
    Writeln(Year, ' is not a Leap year');
  Readln;
end.
{---------------------------------- 54 loop-over-multiple-arrays-simultaneously}
program LoopOverArrays;

{$APPTYPE CONSOLE}

uses SysUtils;

const
  ARRAY1: array [1..3] of string = ('a', 'b', 'c');
  ARRAY2: array [1..3] of string = ('A', 'B', 'C');
  ARRAY3: array [1..3] of Integer = (1, 2, 3);
var
  i: Integer;
begin
  for i := 1 to 3 do
    Writeln(Format('%s%s%d', [ARRAY1[i], ARRAY2[i], ARRAY3[i]]));

  Readln;
end.
{------------------------------------------------------------ 55 loops-continue}
program DoLoop(output);
var
  i: integer;
begin
  for i := 1 to 10 do
  begin
    write(i);
    if i mod 5 = 0 then
    begin
      writeln;
      continue;
    end;
    write(', ');
  end;
end.
{------------------------------------------------------------ 56 loops-do-while}
program Loop;

{$APPTYPE CONSOLE}

var
  I: Integer;

begin
  I:= 0;
  repeat
    Inc(I);
    Write(I:2);
  until I mod 6 = 0;
  Writeln;
  Readln;
end.
{------------------------------------------- 57 loops-for-with-a-specified-step}
program LoopWithStep;

{$APPTYPE CONSOLE}

var
  i: Integer;
begin
  i:=2;
  while i <= 8 do begin
    WriteLn(i);
    Inc(i, 2);
  end;
end.
{----------------------------------------------------------------- 58 loops-for}
program LoopFor;

{$APPTYPE CONSOLE}

var
  i, j: Integer;
begin
  for i := 1 to 5 do
  begin
    for j := 1 to i do
      Write('*');
    Writeln;
  end;
end.
{------------------------------------------------------------- 59 loops-foreach}
program LoopForEach;

{$APPTYPE CONSOLE}

var
  s: string;
begin
  for s in 'Hello' do
    Writeln(s);
end.
{----------------------------------------------------- 60 loops-n-plus-one-half}
program LoopsNPlusOneHalf;

{$APPTYPE CONSOLE}

var
  i: integer;
const
  MAXVAL = 10;
begin
  for i := 1 to MAXVAL do
  begin
    Write(i);
    if i < MAXVAL then
      Write(', ');
  end;
  Writeln;
end.
{----------------------------------------------------- 61 multiplication-tables}
program MultiplicationTables;

{$APPTYPE CONSOLE}

uses SysUtils;

const
  MAX_COUNT = 12;
var
  lRow, lCol: Integer;
begin
  Write('  | ');
  for lRow := 1 to MAX_COUNT do
    Write(Format('%4d', [lRow]));
  Writeln('');
  Writeln('--+-' + StringOfChar('-', MAX_COUNT * 4));
  for lRow := 1 to MAX_COUNT do
  begin
    Write(Format('%2d', [lRow]));
    Write('| ');
    for lCol := 1 to MAX_COUNT do
    begin
      if lCol < lRow then
        Write('    ')
      else
        Write(Format('%4d', [lRow * lCol]));
    end;
    Writeln;
  end;
end.
{-------------------------------------------------------------- 62 number-names}
program Number_names;

{$APPTYPE CONSOLE}

const
  smallies: array[1..19] of string = ('one', 'two', 'three', 'four', 'five',
    'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen',
    'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen');
  tens: array[2..9] of string = ('twenty', 'thirty', 'forty', 'fifty', 'sixty',
    'seventy', 'eighty', 'ninety');

function domaxies(number: int64): string;
const
  maxies: array[0..5] of string = (' thousand', ' million', ' billion',
    ' trillion', ' quadrillion', ' quintillion');
begin
  domaxies := '';
  if number >= 0 then
    domaxies := maxies[number];
end;

function doHundreds(number: int64): string;
begin
  Result := '';
  if number > 99 then
  begin
    Result := smallies[number div 100];
    Result := Result + ' hundred';
    number := number mod 100;
    if number > 0 then
      Result := Result + ' and ';
  end;
  if number >= 20 then
  begin
    Result := Result + tens[number div 10];
    number := number mod 10;
    if number > 0 then
      Result := Result + '-';
  end;
  if (0 < number) and (number < 20) then
    Result := Result + smallies[number];
end;

function spell(number: int64): string;
var
  scaleFactor: int64;
  maxieStart, h: int64;
begin
  Result := '';
  if number < 0 then
  begin
    number := -number;
    Result := 'negative ';
  end;
  scaleFactor := 1000000000000000000;
  maxieStart := 5;
  if number < 20 then
     exit(Result+smallies[number]);
  while scaleFactor > 0 do
  begin
    if number > scaleFactor then
    begin
      h := number div scaleFactor;
      Result := Result + doHundreds(h) + domaxies(maxieStart);
      number := number mod scaleFactor;
      if number > 0 then
        Result := Result + ', ';
    end;
    scaleFactor := scaleFactor div 1000;
    dec(maxieStart);
  end;
end;

begin
  writeln(99, ': ', spell(99));
  writeln(234, ': ', spell(234));
  writeln(7342, ': ', spell(7342));
  writeln(32784, ': ', spell(32784));
  writeln(234345, ': ', spell(234345));
  writeln(2343451, ': ', spell(2343451));
  writeln(23434534, ': ', spell(23434534));
  writeln(234345456, ': ', spell(234345456));
  writeln(2343454569, ': ', spell(2343454569));
  writeln(2343454564356, ': ', spell(2343454564356));
  writeln(2345286538456328, ': ', spell(2345286538456328));
  Readln;
end.
{--------------------------- 63 numerical-integration-gauss-legendre-quadrature}
program Legendre;

{$APPTYPE CONSOLE}

const Order   = 5;
      Epsilon = 1E-12;

var Roots   : array[0..Order-1] of double;
    Weight  : array[0..Order-1] of double;
    LegCoef : array [0..Order,0..Order] of double;

function F(X:double) : double;
begin
  Result := Exp(X);
end;

procedure PrepCoef;
var I, N : integer;
begin
  for I:=0 to Order do
    for N := 0 to Order do
      LegCoef[I,N] := 0;
  LegCoef[0,0] := 1;
  LegCoef[1,1] := 1;
  For N:=2 to Order do
    begin
      LegCoef[N,0] := -(N-1) * LegCoef[N-2,0] / N;
      For I := 1 to Order do
        LegCoef[N,I] := ((2*N-1) * LegCoef[N-1,I-1] - (N-1)*LegCoef[N-2,I]) / N;
    end;
end;

function LegEval(N:integer; X:double) : double;
var I : integer;
begin
  Result := LegCoef[n][n];
  for I := N-1 downto 0 do
    Result := Result * X + LegCoef[N][I];
end;

function LegDiff(N:integer; X:double) : double;
begin
  Result := N * (X * LegEval(N,X) - LegEval(N-1,X)) / (X*X-1);
end;

procedure LegRoots;
var I     : integer;
    X, X1 : double;
begin
  for I := 1 to Order do
    begin
      X := Cos(Pi * (I-0.25) / (Order+0.5));
        repeat
          X1 := X;
          X := X - LegEval(Order,X) / LegDiff(Order, X);
        until Abs (X-X1) < Epsilon;
      Roots[I-1] := X;
      X1 := LegDiff(Order,X);
      Weight[I-1] := 2 / ((1-X*X) * X1*X1);
    end;
end;

function LegInt(A,B:double) : double;
var I      : integer;
    C1, C2 : double;
begin
  C1 := (B-A)/2;
  C2 := (B+A)/2;
  Result := 0;
  For I := 0 to Order-1 do
    Result := Result + Weight[I] * F(C1*Roots[I] + C2);
  Result := C1 * Result;
end;

var I : integer;

begin
  PrepCoef;
  LegRoots;

  Write('Roots:  ');
  for I := 0 to Order-1 do
    Write (' ',Roots[I]:13:10);
  Writeln;

  Write('Weight: ');
  for I := 0 to Order-1 do
    Write (' ', Weight[I]:13:10);
  writeln;

  Writeln('Integrating Exp(x) over [-3, 3]: ',LegInt(-3,3):13:10);
  Writeln('Actual value: ',Exp(3)-Exp(-3):13:10);
  Readln;
end.
{----------------------------------------------------------- 64 pangram-checker}
program PangramChecker;

{$APPTYPE CONSOLE}

uses StrUtils;

function IsPangram(const aString: string): Boolean;
var
  c: char;
begin
  for c := 'a' to 'z' do
    if not ContainsText(aString, c) then
      Exit(False);

  Result := True;
end;

begin
  Writeln(IsPangram('The quick brown fox jumps over the lazy dog')); // true
  Writeln(IsPangram('Not a panagram')); // false
end.
{---------------------------------------------------------- 65 pascals-triangle}
program PascalsTriangle;

procedure Pascal(r:Integer);
var
  i, c, k:Integer;
begin
  for i := 0 to r - 1 do
  begin
    c := 1;
    for k := 0 to i do
    begin
      Write(c:3);
      c := c * (i - k) div (k + 1);
    end;
    Writeln;
  end;
end;

begin
  Pascal(9);
end.
{-------------------------------------------------------------- 66 permutations}
program TestPermutations;

{$APPTYPE CONSOLE}

type
  TItem = Integer;                // declare ordinal type for array item
  TArray = array[0..3] of TItem;

const
  Source: TArray = (1, 2, 3, 4);

procedure Permutation(K: Integer; var A: TArray);
var
  I, J: Integer;
  Tmp: TItem;

begin
  for I:= Low(A) + 1 to High(A) + 1 do begin
    J:= K mod I;
    Tmp:= A[J];
    A[J]:= A[I - 1];
    A[I - 1]:= Tmp;
    K:= K div I;
  end;
end;

var
  A: TArray;
  I, K, Count: Integer;
  S, S1, S2: ShortString;

begin
  Count:= 1;
  I:= Length(A);
  while I > 1 do begin
    Count:= Count * I;
    Dec(I);
  end;

  S:= '';
  for K:= 0 to Count - 1 do begin
    A:= Source;
    Permutation(K, A);
    S1:= '';
    for I:= Low(A) to High(A) do begin
      Str(A[I]:1, S2);
      S1:= S1 + S2;
    end;
    S:= S + '  ' + S1;
    if Length(S) > 40 then begin
      Writeln(S);
      S:= '';
    end;
  end;

  if Length(S) > 0 then Writeln(S);
  Readln;
end.
{-------------------------------------------------------- 67 polymorphic-copy-1}
program PolymorphicCopy;

type
  T = class
    function Name:String; virtual;
    function Clone:T; virtual;
  end;

  S = class(T)
    function Name:String; override;
    function Clone:T; override;
  end;

function T.Name :String; begin Exit('T')     end;
function T.Clone:T;      begin Exit(T.Create)end;

function S.Name :String; begin Exit('S')     end;
function S.Clone:T;      begin Exit(S.Create)end;

procedure Main;
var
  Original, Clone :T;
begin
  Original := S.Create;
  Clone    := Original.Clone;

  WriteLn(Original.Name);
  WriteLn(Clone.Name);
end;

begin
  Main;
end.
{------------------------------------------------------------ 68 random-numbers}
program Randoms;

{$APPTYPE CONSOLE}

uses
  Math;

var
  Values: array[0..999] of Double;
  I: Integer;

begin
//  Randomize;   Commented to obtain reproducible results
  for I:= Low(Values) to High(Values) do
    Values[I]:= RandG(1.0, 0.5);  // Mean = 1.0, StdDev = 0.5
  Writeln('Mean          = ', Mean(Values):6:4);
  Writeln('Std Deviation = ', StdDev(Values):6:4);
  Readln;
end.
{---------------------------------------------------- 69 return-multiple-values}
program ReturnMultipleValues;

{$APPTYPE CONSOLE}

procedure GetTwoValues(var aParam1, aParam2: Integer);
begin
  aParam1 := 100;
  aParam2 := 200;
end;

var
  x, y: Integer;
begin
  GetTwoValues(x, y);
  Writeln(x);
  Writeln(y);
end.
{----------------------------------------------------- 70 roman-numerals-decode}
program RomanNumeralsDecode;

{$APPTYPE CONSOLE}

function RomanToInteger(const aRoman: string): Integer;
  function DecodeRomanDigit(aChar: Char): Integer;
  begin
    case aChar of
      'M', 'm': Result := 1000;
      'D', 'd': Result := 500;
      'C', 'c': Result := 100;
      'L', 'l': Result := 50;
      'X', 'x': Result := 10;
      'V', 'v': Result := 5;
      'I', 'i': Result := 1
    else
      Result := 0;
    end;
  end;

var
  i: Integer;
  lCurrVal: Integer;
  lLastVal: Integer;
begin
  Result := 0;

  lLastVal := 0;
  for i := Length(aRoman) downto 1 do
  begin
    lCurrVal := DecodeRomanDigit(aRoman[i]);
    if lCurrVal < lLastVal then
      Result := Result - lCurrVal
    else
      Result := Result + lCurrVal;
    lLastVal := lCurrVal;
  end;
end;

begin
  Writeln(RomanToInteger('MCMXC'));    // 1990
  Writeln(RomanToInteger('MMVIII'));   // 2008
  Writeln(RomanToInteger('MDCLXVI'));  // 1666
end.
{----------------------------------------------------- 71 roman-numerals-encode}
program RomanNumeralsEncode;

{$APPTYPE CONSOLE}

function IntegerToRoman(aValue: Integer): string;
var
  i: Integer;
const
  WEIGHTS: array[0..12] of Integer = (1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1);
  SYMBOLS: array[0..12] of string = ('M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I');
begin
  for i := Low(WEIGHTS) to High(WEIGHTS) do
  begin
    while aValue >= WEIGHTS[i] do
    begin
      Result := Result + SYMBOLS[i];
      aValue := aValue - WEIGHTS[i];
    end;
    if aValue = 0 then
      Break;
  end;
end;

begin
  Writeln(IntegerToRoman(1990)); // MCMXC
  Writeln(IntegerToRoman(2008)); // MMVIII
  Writeln(IntegerToRoman(1666)); // MDCLXVI
end.
{-------------------------------------------------------------------- 72 sedols}
program Sedol;

{$APPTYPE CONSOLE}

uses
  SysUtils;


const
  SEDOL_CHR_COUNT = 6;
  DIGITS = ['0'..'9'];
  LETTERS = ['A'..'Z'];
  VOWELS = ['A', 'E', 'I', 'O', 'U'];
  ACCEPTABLE_CHRS = DIGITS + LETTERS - VOWELS;
  WEIGHTS : ARRAY [1..SEDOL_CHR_COUNT] of integer = (1, 3, 1, 7, 3, 9);
  LETTER_OFFSET = 9;


function AddSedolCheckDigit(Sedol : string) : string;
var
  iChr : integer;
  Checksum : integer;
  CheckDigit : char;
begin
  if Sedol <> uppercase(Sedol) then
    raise ERangeError.CreateFmt('%s contains lower case characters',[Sedol]);
  if length(Sedol) <> SEDOL_CHR_COUNT then
    raise ERangeError.CreateFmt('"%s" length is invalid. Should be 6 characters',[Sedol]);

  Checksum := 0;
  for iChr := 1 to SEDOL_CHR_COUNT do
  begin

    if Sedol[iChr] in Vowels then
      raise ERangeError.CreateFmt('%s contains a vowel (%s) at chr %d',[Sedol, Sedol[iChr], iChr]);
    if not (Sedol[iChr] in ACCEPTABLE_CHRS) then
      raise ERangeError.CreateFmt('%s contains an invalid chr (%s) at position %d',[Sedol, Sedol[iChr], iChr]);

    if Sedol[iChr] in DIGITS then
      Checksum := Checksum + (ord(Sedol[iChr]) - ord('0')) * WEIGHTS[iChr]
    else
      Checksum := Checksum + (ord(Sedol[iChr]) - ord('A') + 1 + LETTER_OFFSET) * WEIGHTS[iChr];

  end;

  Checksum := (Checksum mod 10);
  if Checksum <> 0 then
    Checksum := 10 - Checksum;
  CheckDigit := chr(CheckSum + ord('0'));

  Result := Sedol + CheckDigit;
end;


procedure Test(First6 : string);
begin
  writeln(First6, ' becomes ', AddSedolCheckDigit(First6));
end;


begin
  try
    Test('710889');
    Test('B0YBKJ');
    Test('406566');
    Test('B0YBLH');
    Test('228276');
    Test('B0YBKL');
    Test('557910');
    Test('B0YBKR');
    Test('585284');
    Test('B0YBKT');
    Test('B00030');
  except
    on E : Exception do
      writeln(E.Message);
  end;
  readln;
end.
{-------------------------------------------------- 73 short-circuit-evaluation}
program ShortCircuitEvaluation;

{$APPTYPE CONSOLE}

uses SysUtils;

function A(aValue: Boolean): Boolean;
begin
  Writeln('a');
  Result := aValue;
end;

function B(aValue: Boolean): Boolean;
begin
  Writeln('b');
  Result := aValue;
end;

var
  i, j: Boolean;
begin
  for i in [False, True] do
  begin
    for j in [False, True] do
    begin
      Writeln(Format('%s and %s = %s', [BoolToStr(i, True), BoolToStr(j, True), BoolToStr(A(i) and B(j), True)]));
      Writeln;
      Writeln(Format('%s or %s = %s', [BoolToStr(i, True), BoolToStr(j, True), BoolToStr(A(i) or B(j), True)]));
      Writeln;
    end;
  end;
end.
{---------------------------------------------------------- 74 show-ascii-table}
program Show_Ascii_table;

{$APPTYPE CONSOLE}

var
  i, j: Integer;
  k: string;

begin
  for i := 0 to 15 do
  begin
    j := 32 + i;
    while j < 128 do
    begin
      case j of
        32:
          k := 'Spc';
        127:
          k := 'Del';
      else
        k := chr(j);
      end;
      Write(j: 3, ' : ', k: 3, '   ');
      inc(j, 16);
    end;
    Writeln;
  end;
  Readln;
end.

{------------------------------------------------------------ 75 show-the-epoch}
program ShowEpoch;

{$APPTYPE CONSOLE}

uses SysUtils;

begin
  Writeln(FormatDateTime('yyyy-mm-dd hh:nn:ss.zzz', 0));
end.
{------------------------------------------------------- 76 sierpinski-triangle}
program SierpinskiTriangle;

{$APPTYPE CONSOLE}

procedure PrintSierpinski(order: Integer);
var
  x, y, size: Integer;
begin
  size := (1 shl order) - 1;
  for y := size downto 0 do
  begin
    Write(StringOfChar(' ', y));
    for x := 0 to size - y do
    begin
      if (x and y) = 0 then
        Write('* ')
      else
        Write('  ');
    end;
    Writeln;
  end;
end;

begin
  PrintSierpinski(4);
end.
{--------------------------------------------------------------------- 77 sleep}
program SleepOneSecond;

{$APPTYPE CONSOLE}

uses SysUtils;

var
  lTimeToSleep: Integer;
begin
  if ParamCount = 0 then
    lTimeToSleep := 1000
  else
    lTimeToSleep := StrToInt(ParamStr(1));
  WriteLn('Sleeping...');
  Sleep(lTimeToSleep); // milliseconds
  WriteLn('Awake!');
end.
{---------------------------------------------- 78 sorting-algorithms-bead-sort}
program BeadSortTest;

{$APPTYPE CONSOLE}

uses
  SysUtils;

procedure BeadSort(var a : array of integer);
var
  i, j, max, sum : integer;
  beads : array of array of integer;
begin
  max := a[Low(a)];
  for i := Low(a) + 1 to High(a) do
    if a[i] > max then
      max := a[i];

  SetLength(beads, High(a) - Low(a) + 1, max);

  // mark the beads

  for i := Low(a) to High(a) do
    for j := 0 to a[i] - 1 do
      beads[i, j] := 1;

  for j := 0 to max - 1 do
  begin
    // count how many beads are on each post
    sum := 0;
    for i := Low(a) to High(a) do
    begin
      sum := sum + beads[i, j];
      beads[i, j] := 0;
    end;
    //mark bottom sum beads
    for i := High(a) + 1 - sum to High(a) do
      beads[i, j] := 1;
  end;

  for i := Low(a) to High(a) do
  begin
    j := 0;
    while (j < max) and (beads[i, j] <> 0) do
      inc(j);
    a[i] := j;
  end;

  SetLength(beads, 0, 0);
end;

const
  N = 8;
var
  i : integer;
  x : array[1..N] of integer = (5, 3, 1, 7, 4, 1, 1, 20);
begin
  for i := 1 to N do
    writeln(Format('x[%d] = %d', [i, x[i]]));

  BeadSort(x);

  for i := 1 to N do
    writeln(Format('x[%d] = %d', [i, x[i]]));

  readln;
end.
{------------------------------------------------------ 79 sparkline-in-unicode}
program Sparkline_in_unicode;

{$APPTYPE CONSOLE}

//Translated from: https://www.arduino.cc/reference/en/language/functions/math/map/
function map(x, in_min, in_max, out_min, out_max: Double): Double;
begin
  Result := ((x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min);
end;

procedure Normalize(var Values: TArray<Double>; outMin, outMax: Double);
var
  i: Integer;
  inMax, inMin, value: Double;
begin
  if Length(Values) = 0 then
    Exit;

  inMin := Values[0];
  inMax := Values[0];

  for value in Values do
  begin
    if value > inMax then
      inMax := value;
    if value < inMin then
      inMin := value;
  end;

  for i := 0 to High(Values) do
    Values[i] := map(Values[i], inMin, inMax, outMin, outMax);
end;

function Sparkline(Values: TArray<Double>): UnicodeString;
var
  value: Double;
const
  CHARS: UnicodeString = #$2581#$2582#$2583#$2584#$2585#$2586#$2587#$2588;
begin
  Result := '';
  Normalize(Values, 1, 8);
  for value in Values do
    Result := Result + CHARS[Trunc(value)];
end;

begin
  writeln(Sparkline([1, 2, 3, 4, 5, 6, 7, 8, 7, 6, 5, 4, 3, 2, 1]));
  writeln(Sparkline([1.5, 0.5, 3.5, 2.5, 5.5, 4.5, 7.5, 6.5]));
  Readln;
end.
{---------------------------------------------------------- 80 special-divisors}
program Special_Divisors;
{$IFDEF FPC}
  {$MODE DELPHI}
 uses
    SysUtils,
    StrUtils;
{$ELSE}
  {$APPTYPE CONSOLE}
 uses
    System.SysUtils,
    System.StrUtils;
{$ENDIF}

const
  limit1 = 200;

var
  row, num, revNum, revDiv: Integer;
  flag: boolean;

procedure Main();
var
  n,m: NativeUint;
begin
  writeln('Working...'#10);
  row := 0;
  num := 0;

  for n := 1 to limit1 do
  begin
    flag := True;
    revNum := reversestring(n.ToString).ToInteger;
    for m := 1 to n div 2 do
    begin
      revDiv := reversestring(m.ToString).ToInteger;
      if n mod m = 0 then
        if revNum mod revDiv = 0 then
          flag := True
        else
        begin
          flag := False;
          Break;
        end;
    end;

    if flag then
    begin
      inc(num);
      inc(row);
      write(n: 4);
      if row mod 10 = 0 then
        Writeln;
    end;
  end;

  writeln(#10#10'Found ', num,
    ' special divisors N that reverse(D) divides reverse(N) for all divisors D of N, where  N  <  200');

  writeln('Done...');
end;

begin
  Main;
 {$IFNDEF UNIX} readln; {$ENDIF}
end.
{---------------------------------------------------- 81 strange-plus-numbers-2}
program StrangePlusNumbers;

const
    m = 18;

var
    pr: array [0..m] of Boolean;
    n, k, a, b: Integer;
    q: Boolean;

begin
    // prime sieve
    for n := 0 to m do
    begin
        q := n > 1;
        for k := 2 to n - 1 do
            if n mod k = 0 then q := False;
        pr[n] := q
    end;

    k := 0;
    for n := 101 to 499 do
    begin
        a := n div 10;  // first two digits
        b := n mod 100; // last two digits
        if pr[a div 10 + a mod 10] and
           pr[b div 10 + b mod 10] then
        begin
            Write(n);
            Inc(k);
            if k mod 10 = 0 then Writeln else Write(' ')
        end
    end
end.
{------------------------------------------------------ 82 string-concatenation}
program Concat;

{$APPTYPE CONSOLE}

var
  s1, s2: string;
begin
  s1 := 'Hello';
  s2 := s1 + ' literal';
  WriteLn(s1);
  WriteLn(s2);
end.
{----------------------------------------------------------- 83 string-matching}
program CharacterMatching;

{$APPTYPE CONSOLE}

uses StrUtils;

begin
  WriteLn(AnsiStartsText('ab', 'abcd')); // True
  WriteLn(AnsiEndsText('zn', 'abcd')); // False
  WriteLn(AnsiContainsText('abcd', 'bb')); // False
  Writeln(AnsiContainsText('abcd', 'ab')); // True
  WriteLn(Pos('ab', 'abcd')); // 1
end.
{----------------------------------- 84 strip-a-set-of-characters-from-a-string}
program StripCharacters;

{$APPTYPE CONSOLE}

uses SysUtils;

function StripChars(const aSrc, aCharsToStrip: string): string;
var
  c: Char;
begin
  Result := aSrc;
  for c in aCharsToStrip do
    Result := StringReplace(Result, c, '', [rfReplaceAll, rfIgnoreCase]);
end;

const
  TEST_STRING = 'She was a soul stripper. She took my heart!';
begin
  Writeln(TEST_STRING);
  Writeln(StripChars(TEST_STRING, 'aei'));
end.
{---------------------------------------------- 85 strip-comments-from-a-string}
program StripComments;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function DoStripComments(const InString: string; const CommentMarker: Char): string;
begin
  Result := Trim(Copy(InString,1,Pos(CommentMarker,InString)-1));
end;

begin
  Writeln('apples, pears # and bananas --> ' + DoStripComments('apples, pears # and bananas','#'));
  Writeln('');
  Writeln('apples, pears ; and bananas --> ' + DoStripComments('apples, pears ; and bananas',';'));
  Readln;
end.
{------------------------------- 86 strip-whitespace-from-a-string-top-and-tail}
program StripWhitespace;

{$APPTYPE CONSOLE}

uses SysUtils;

const
  TEST_STRING = '     String with spaces     ';
begin
  Writeln('"' + TEST_STRING + '"');
  Writeln('"' + TrimLeft(TEST_STRING) + '"');
  Writeln('"' + TrimRight(TEST_STRING) + '"');
  Writeln('"' + Trim(TEST_STRING) + '"');
end.
{---------------------------------------------------- 87 substring-top-and-tail}
program TopAndTail;

{$APPTYPE CONSOLE}

const
  TEST_STRING = '1234567890';
begin
  Writeln(TEST_STRING);                                    // full string
  Writeln(Copy(TEST_STRING, 2, Length(TEST_STRING)));      // first character removed
  Writeln(Copy(TEST_STRING, 1, Length(TEST_STRING) - 1));  // last character removed
  Writeln(Copy(TEST_STRING, 2, Length(TEST_STRING) - 2));  // first and last characters removed

  Readln;
end.
{----------------------------------------------------------------- 88 substring}
program ShowSubstring;

{$APPTYPE CONSOLE}

uses SysUtils;

const
  s = '0123456789';
  n = 3;
  m = 4;
  c = '2';
  sub = '456';
begin
  Writeln(Copy(s, n, m));             // starting from n characters in and of m length;
  Writeln(Copy(s, n, Length(s)));     // starting from n characters in, up to the end of the string;
  Writeln(Copy(s, 1, Length(s) - 1)); // whole string minus last character;
  Writeln(Copy(s, Pos(c, s), m));     // starting from a known character within the string and of m length;
  Writeln(Copy(s, Pos(sub, s), m));   // starting from a known substring within the string and of m length.
end.
{----------------------------------------------- 89 sum-and-product-of-an-array}
program SumAndProductOfArray;

{$APPTYPE CONSOLE}

var
  i: integer;
  lIntArray: array [1 .. 5] of integer = (1, 2, 3, 4, 5);
  lSum: integer = 0;
  lProduct: integer = 1;
begin
  for i := 1 to length(lIntArray) do
  begin
    Inc(lSum, lIntArray[i]);
    lProduct := lProduct * lIntArray[i]
  end;

  Write('Sum: ');
  Writeln(lSum);
  Write('Product: ');
  Writeln(lProduct);
end.
{-------------------------------------------------- 90 sum-multiples-of-3-and-5}
program sum35;

{$APPTYPE CONSOLE}

var
  sum: integer;
  i: integer;

function isMultipleOf(aNumber, aDivisor: integer): boolean;
begin
  result := aNumber mod aDivisor = 0
end;

begin
  sum := 0;
  for i := 3 to 999 do
  begin
    if isMultipleOf(i, 3) or isMultipleOf(i, 5) then
      sum := sum + i;
  end;
  writeln(sum);
end.
{---------------------------------------------------- 91 symmetric-difference-2}
program SymmetricDifference;

type
    charSet = set of Char;

var
    s1, s2, s3: charSet;
    ch: char;

begin
    s1 := ['a', 'b', 'c', 'd'];
    s2 := ['c', 'd', 'e', 'f'];
    s3 := s1 >< s2;

    for ch in s3 do
        write(ch, ' ');
    writeLn;
end.
{---------------------------------------------------- 92 temperature-conversion}
program Temperature;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TTemp = class
  private
    fCelsius, fFahrenheit, fRankine: double;
  public
    constructor Create(aKelvin: double);
    property AsCelsius: double read fCelsius;
    property AsFahrenheit: double read fFahrenheit;
    property AsRankine: double read fRankine;
  end;

  { TTemp }

constructor TTemp.Create(aKelvin: double);
begin
  fCelsius := aKelvin - 273.15;
  fRankine := aKelvin * 9 / 5;
  fFahrenheit := fRankine - 459.67;
end;

var
  kelvin: double;
  temp: TTemp;

begin
  write('Kelvin: ');
  readln(kelvin);
  temp := TTemp.Create(kelvin);
  writeln(Format('Celsius: %.2f', [temp.AsCelsius]));
  writeln(Format('Fahrenheit: %.2f', [temp.AsFahrenheit]));
  writeln(Format('Rankine: %.2f', [temp.AsRankine]));
  temp.Free;
  readln;
end.
{-------------------------------- 93 terminal-control-ringing-the-terminal-bell}
program TerminalBell;

{$APPTYPE CONSOLE}

begin
  Writeln(#7);
end.
{---------------------------------------------------------- 94 the-isaac-cipher}
{$apptype console}
PROGRAM RosettaIsaac;
USES SysUtils;

// TASK globals
VAR msg : STRING = 'a Top Secret secret';
VAR key : STRING = 'this is my secret key';
VAR xctx: STRING = ''; // XOR ciphertext
VAR mctx: STRING = ''; // MOD ciphertext
	
// ISAAC globals
// external results
VAR randrsl: ARRAY[0..256] OF CARDINAL;
VAR randcnt: cardinal;
// internal state
VAR mm: ARRAY[0..256] OF CARDINAL;
VAR aa: CARDINAL=0; bb: CARDINAL=0; cc: CARDINAL=0;


PROCEDURE Isaac;
VAR i,x,y: CARDINAL;
BEGIN
   cc := cc + 1;    // cc just gets incremented once per 256 results
   bb := bb + cc;   // then combined with bb

   FOR i := 0 TO 255 DO BEGIN
     x := mm[i];
     CASE (i mod 4) OF
		0: aa := aa xor (aa shl 13);
		1: aa := aa xor (aa shr 6);
		2: aa := aa xor (aa shl 2);
		3: aa := aa xor (aa shr 16);
     END;
     aa := mm[(i+128) mod 256] + aa;
	 y  := mm[(x shr 2) mod 256] + aa + bb;
     mm[i] := y; 	
     bb := mm[(y shr 10) mod 256] + x;
     randrsl[i]:= bb;
   END;
   // this reset was not in original readable.c!
   randcnt:=0;  // prepare to use the first set of results
END; {Isaac}


// if (flag==TRUE), then use the contents of randrsl[] to initialize mm[].
PROCEDURE mix(VAR a,b,c,d,e,f,g,h: CARDINAL);
BEGIN
	a := a xor b shl 11; d:=d+a; b:=b+c;
	b := b xor c shr  2; e:=e+b; c:=c+d;
	c := c xor d shl  8; f:=f+c; d:=d+e;
	d := d xor e shr 16; g:=g+d; e:=e+f;
	e := e xor f shl 10; h:=h+e; f:=f+g;
	f := f xor g shr  4; a:=a+f; g:=g+h;
	g := g xor h shl  8; b:=b+g; h:=h+a;
	h := h xor a shr  9; c:=c+h; a:=a+b;
END; {mix}


PROCEDURE iRandInit(flag: BOOLEAN);
VAR i,a,b,c,d,e,f,g,h: CARDINAL;
BEGIN
   aa:=0; bb:=0; cc:=0;
   a:=$9e3779b9; 	// the golden ratio

   b:=a; c:=a; d:=a; e:=a; f:=a; g:=a; h:=a;

   FOR i := 0 TO 3 DO          // scramble it
        mix(a,b,c,d,e,f,g,h);

   i:=0;
   REPEAT  // fill in mm[] with messy stuff
	IF flag THEN BEGIN     // use all the information in the seed
       a:=a+randrsl[i  ]; b:=b+randrsl[i+1]; c:=c+randrsl[i+2]; d:=d+randrsl[i+3];
       e:=e+randrsl[i+4]; f:=f+randrsl[i+5]; g:=g+randrsl[i+6]; h:=h+randrsl[i+7];
    END;

    mix(a,b,c,d,e,f,g,h);
    mm[i  ]:=a; mm[i+1]:=b; mm[i+2]:=c; mm[i+3]:=d;
    mm[i+4]:=e; mm[i+5]:=f; mm[i+6]:=g; mm[i+7]:=h;
	i:=i+8;
   UNTIL i>255;

   IF (flag) THEN BEGIN
   // do a second pass to make all of the seed affect all of mm
     i:=0;
     REPEAT
      a:=a+mm[i  ]; b:=b+mm[i+1]; c:=c+mm[i+2]; d:=d+mm[i+3];
      e:=e+mm[i+4]; f:=f+mm[i+5]; g:=g+mm[i+6]; h:=h+mm[i+7];
      mix(a,b,c,d,e,f,g,h);
      mm[i  ]:=a; mm[i+1]:=b; mm[i+2]:=c; mm[i+3]:=d;
      mm[i+4]:=e; mm[i+5]:=f; mm[i+6]:=g; mm[i+7]:=h;
      i:=i+8;
     UNTIL i>255;
   END;
   isaac();           // fill in the first set of results
   randcnt:=0;       // prepare to use the first set of results
END; {randinit}


{ Seed ISAAC with a given string.
  The string can be any size. The first 256 values will be used.}
PROCEDURE iSeed(seed: STRING; flag: BOOLEAN);
VAR i,m: CARDINAL;
BEGIN
	FOR i:= 0 TO 255 DO mm[i]:=0;
	m := Length(seed)-1;
	FOR i:= 0 TO 255 DO BEGIN
	// in case seed has less than 256 elements
        IF i>m THEN randrsl[i]:=0
			// Pascal strings are 1-based
			ELSE randrsl[i]:=ord(seed[i+1]);
	END;
	// initialize ISAAC with seed
	iRandInit(flag);
END; {iSeed}


{ Get a random 32-bit value 0..MAXINT }
FUNCTION iRandom : Cardinal;
BEGIN
	result := randrsl[randcnt];
	inc(randcnt);
	IF (randcnt >255) THEN BEGIN
		Isaac();
		randcnt := 0;
	END;
END; {iRandom}


{ Get a random character in printable ASCII range }
FUNCTION iRandA: BYTE;
	BEGIN
		result := iRandom mod 95 + 32;
	END;

	
{ convert an ASCII string to a hexadecimal string }
FUNCTION ascii2hex(s: STRING): STRING;
	VAR i,l: CARDINAL;
	BEGIN
		result := '';
			l := Length(s);
			FOR i := 1 TO l DO
				result := result + IntToHex(ord(s[i]),2);
	END;


{ XOR encrypt on random stream. Output: string of hex chars }
FUNCTION Vernam(msg: STRING): STRING;
	VAR	i: CARDINAL;
	BEGIN
		result := '';
		FOR i := 1 to length(msg) DO
			result := result + chr(iRandA xor ord(msg[i]));
	result := ascii2hex(result);
	END;

	
{ Get position of the letter in chosen alphabet }
FUNCTION letternum(letter, start: CHAR): byte;
	BEGIN
		result := (ord(letter)-ord(start));
	END;


{ Caesar-shift a character <shift> places: Generalized Vigenere }
FUNCTION Caesar(ch: CHAR; shift, modulo: INTEGER; start: CHAR): CHAR;
	VAR n: INTEGER;
	BEGIN
		n := letternum(ch,start) + shift;
		n := n MOD modulo;
		result := chr(ord(start)+n);
	END;

{ Vigenere mod 95 encryption. Output: string of hex chars }
FUNCTION Vigenere(msg: STRING): STRING;
	VAR i: CARDINAL;
	BEGIN
		result := '';
		FOR i := 1 to length(msg) DO
			result := result + Caesar(msg[i],iRandA,95,' ');
		result := ascii2hex(result);
	END;

	
BEGIN
	// 1) seed ISAAC with the key
	iSeed(key,true);
	// 2) Vernam XOR encryption
	xctx := Vernam(msg);
	// 3) MOD encryption
	mctx := Vigenere(msg);
	// program output
	Writeln('Message: ',msg);
	Writeln('Key    : ',key);
	Writeln('XOR    : ',xctx);
	Writeln('MOD    : ',mctx);
END.
