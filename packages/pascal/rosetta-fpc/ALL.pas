{------------------------------------------------------------------ 1 100-doors}
program OneHundredIsOpen;

const
  DoorCount = 100;

var
  IsOpen: array[1..DoorCount] of boolean;
  Door, Jump: integer;

begin
  // Close all doors
  for Door := 1 to DoorCount do
    IsOpen[Door] := False;
  // Iterations
  for Jump := 1 to DoorCount do
  begin
    Door := Jump;
    repeat
      IsOpen[Door] := not IsOpen[Door];
      Door := Door + Jump;
    until Door > DoorCount;
  end;
  // Show final status
  for Door := 1 to DoorCount do
  begin
    Write(Door, ' ');
    if IsOpen[Door] then
      WriteLn('open')
    else
      WriteLn('closed');
  end;
  // Wait for <enter>
  Readln;
end.
{-------------------------------------------------------------- 2 10001th-prime}
Program nth_prime;

Function nthprime(x : uint32): uint32;
Var primes : array Of uint32;
  i,pr,count : uint32;
  found : boolean;
Begin
  setlength(primes, x);
  primes[1] := 2;
  count := 1;
  i := 3;
  Repeat
    found := FALSE;
    pr := 0;
    Repeat
      inc(pr);
      found := i Mod primes[pr] = 0;
    Until (primes[pr]*primes[pr] > i) Or found;
    If Not found Then
      Begin
        inc(count);
        primes[count] := i;
      End;
    inc(i,2);
  Until count = x;
  nthprime := primes[x];
End;

Begin
  writeln(nthprime(10001));
End.
{------------------------------------------------------------------------ 3 a_b}
program SUMA;
uses
  SysUtils;
var
  s1, s2:integer;
begin
  ReadLn(s1);
  Readln(s2);
  WriteLn(IntToStr(s1 + s2));
end.
{--------------------------------------------------------- 4 abbreviations-easy}
program Abbreviations_Easy;
{$IFDEF WINDOWS}
  {$APPTYPE CONSOLE}
{$ENDIF}
{$IFDEF FPC}
  {$MODE DELPHI}
  uses
    SysUtils;
{$ELSE}
 uses
    System.SysUtils;
{$ENDIF}

const
  _TABLE_ =
    'Add ALTer  BAckup Bottom  CAppend Change SCHANGE  CInsert CLAst COMPress COpy ' +
    'COUnt COVerlay CURsor DELete CDelete Down DUPlicate Xedit EXPand EXTract Find ' +
    'NFind NFINDUp NFUp CFind FINdup FUp FOrward GET Help HEXType Input POWerinput ' +
    'Join SPlit SPLTJOIN  LOAD  Locate CLocate  LOWercase UPPercase  LPrefix MACRO ' +
    'MErge MODify MOve MSG Next Overlay PARSE PREServe PURge PUT PUTD  Query  QUIT ' +
    'READ  RECover REFRESH RENum REPeat  Replace CReplace  RESet  RESTore  RGTLEFT ' +
    'RIght LEft  SAVE  SET SHift SI  SORT  SOS  STAck STATus  TOP TRAnsfer Type Up ';

function validate(commands, words: TArray<string>; minLens: TArray<Integer>):
  TArray<string>;
var
  wd,c,command,w : String;
  wdIdx,wlen,i : integer;
  matchFound : boolean;

begin
  SetLength(result, 0);
  if Length(words) = 0 then
    exit;
  for wdIdx := Low(words) to High(words) do
  begin
    wd := words[wdIdx];
    matchFound := false;
    wlen := wd.Length;
    for i := 0 to High(commands) do
    begin
      command := commands[i];
      if (minLens[i] = 0) or (wlen < minLens[i]) or (wlen > length(command)) then
        continue;

      c := command.ToUpper;
      w := wd.ToUpper;
      if c.StartsWith(w) then
      begin
        SetLength(result, Length(result) + 1);
        result[High(result)] := c;
        matchFound := True;
        Break;
      end;
    end;

    if not matchFound then
    begin
      SetLength(result, Length(result) + 1);
      result[High(result)] := 'error*';
    end;
  end;
end;
var
  results,commands,words :TArray<string>;
  table,sentence :String;
  minLens: TArray<integer>;
  cLen,i,j,count : integer;
  c:char;
begin
  table := _TABLE_.Trim;
  commands := table.Split([' '], TStringSplitOptions.ExcludeEmpty);
  clen := Length(commands);
  SetLength(minLens, clen);
  for i := 0 to clen - 1 do
  begin
    count := 0;
    For j := length(commands[i]) downto 1 do
    begin
      c := commands[i][j];
      if (c >= 'A') and (c <= 'Z') then
        inc(count);
    end;
    minLens[i] := count;
  end;

  sentence := 'riG   rePEAT copies  put mo   rest    types   fup.    6       poweRin';
  words := sentence.Split([' '], TStringSplitOptions.ExcludeEmpty);
  results := validate(commands, words, minLens);
  Write('user words: ');
  for j := 0 to Length(words) - 1 do
    Write(words[j].PadRight(1 + length(results[j])));
  Write(#10, 'full words: ');
// FOr fpc 3.0.4 on TIO.RUN
  for j := 0 to Length(words) - 1 do
    Write(results[j],' ');
// fpc 3.2.2 will do
//  Writeln(string.Join(' ', results));
  {$IFDEF WINDOWS}
  Readln;
  {$ENDIF}
end.
{------------------------------------------------------------ 5 abstract-type-1}
program abstracts;
// this code also compiles in delphi
{$ifdef fpc}{$mode objfpc}{$endif}
type
  // Pure Abstract Class. In cs theory also known as an interface,
  // because it has no implementation
  TAbstractClass = class abstract
  protected
    function noise:string;virtual;abstract;
  end;
  // classic inheritance
  Tdog = class(TAbstractClass)
  public
    function noise:string;override;
  end;

  Tcat = class(TAbstractClass)
  public
    function noise:string;override;
  end;

  // unrelated class that matches the interface of TAbstractClass, the VMT.
  Tbird = class
  strict private
    FField:string;
    function noise:string;virtual;
    property field:string read FField write FField;
  end;

  function Tdog.Noise:string;
  begin
    Result := 'Woof';
  end;

  function Tcat.Noise:string;
  begin
    Result := 'Miauw';
  end;

  function TBird.Noise:string;
  begin
    Result := 'Tjirpp';
  end;

var
  cat, dog: TAbstractClass;
  bird:Tbird;
begin
  cat := Tcat.Create;
  dog := Tdog.Create;
  bird := TBird.Create;
  writeln(cat.noise,dog.noise);
  // even this works, because the layout is the same
  // This is similar to C++, where pure abstract classes are interfaces.
  writeln(TAbstractClass(bird).noise);
  bird.free;
  dog.free;
  cat.free;
  readln;
end.
{------------------------------------------------------------ 6 abstract-type-2}
program justasabstract;
{$ifdef fpc}{$mode objfpc}{$endif}
type
  IAnimalInterface = interface
  ['{BD40E312-36AD-4F8B-A3EF-727F2474E494}']
    function noise:string;
    function move:string;
 end;

  Tbird = class(TInterfacedObject,IAnimalInterface)
  strict private
    function noise:string;virtual;
    function move:string;virtual;
  end;

  function TBird.Noise:string;
  begin
    Result := 'Tjirpp';
  end;

 function TBird.move:string;
  begin
    Result := 'I fly';
  end;

var
  bird:IAnimalInterface; // as interface, this unhides the strict private methods too.
begin
  bird := TBird.Create;
  writeln(bird.noise);
  writeln(bird.move);
end.
{------------------------------------------------------- 7 abundant-odd-numbers}
program AbundantOddNumbers;
{$IFDEF FPC}
   {$MODE DELPHI}{$OPTIMIZATION ON,ALL}{$CODEALIGN proc=16}{$ALIGN 16}
{$ELSE}
  {$APPTYPE CONSOLE}
{$ENDIF}
{geeksforgeeks
*    1100 = 2^2*5^2*11^1
    (2^0 + 2^1 + 2^2) * (5^0 + 5^1 + 5^2) * (11^0 + 11^1)
    (upto the power of factor in factorization i.e. power of 2 and 5 is 2 and 11 is 1.)
    = (1 + 2 + 2^2) * (1 + 5 + 5^2) * (1 + 11)
    = 7 * 31 * 12
    = 2604
    So, sum of all factors of 1100 = 2604 }
uses
  SysUtils;
var
  //all primes < 2^16=65536
  primes : array[0..6541] of Word;

procedure InitPrimes;
//sieve of erathotenes
var
  p : array[word] of byte;
  i,j : NativeInt;
Begin
  fillchar(p,SizeOf(p),#0);
  p[0] := 1;
  p[1] := 1;
  For i := 2 to high(p) do
    if p[i] = 0 then
    begin
      j := i*i;
      IF j>high(p) then
        BREAK;
      while j <= High(p) do
      begin
        p[j] := 1;
        inc(j,i);
      end;
    end;
  j := 0;
  For i := 2 to high(p) do
    IF p[i] = 0 then
    Begin
      primes[j] := i;
      inc(j);
    end;
end;

function PotToString(N: NativeUint):String;
var
  pN,pr,PowerPr,rest : NativeUint;
begin
  pN := 0; //starting at 2;
  Result := '';
  repeat
    pr := primes[pN];
    rest := N div pr;
    if rest < pr then
      BREAK;
    //same as N MOD PR = 0
    if rest*pr = N then
    begin
      result := result+IntToStr(pr);
      N := rest;
      rest := N div pr;
      PowerPr := 1;
      while rest*pr = N do
      begin
        inc(PowerPr);
        N := rest;
        rest := N div pr;
      end;
      if PowerPr > 1 then
        result := result+'^'+IntToStr(PowerPr);
      if N > 1 then
        result := result +'*';
    end;
    inc(pN);
  until pN > High(Primes);
  //is there a last prime factor of N
  if N <> 1 then
    result := result+IntToStr(N);
end;

function OutNum(N: NativeUint):string;
Begin
  result := Format('%10u= %s', [N,PotToString(N)]);
end;

function SumProperDivisors(N: NativeUint): NativeUint;
var
  pN,pr,PowerPr,SumOfPower,rest,N0 : NativeUint;
begin
  N0 := N;
  pN := 0; //starting at 2;
  Result := 1;
  repeat
    pr := primes[pN];
    rest := N div pr;
    if rest < pr then
      BREAK;
    //same as N MOD PR = 0
    if rest*pr = N then
    begin
//      IF pr=5 then break;
//      IF pr=7 then break;
      PowerPr := 1;
      SumOfPower:= 1;
      repeat
        PowerPr := PowerPr*pr;
        inc(SumOfPower,PowerPr);
        N := rest;
        rest := N div pr;
      until N <> rest*pr;
      result := result*SumOfPower;
    end;
    inc(pN);
  until pN > High(Primes);
  //is there a last prime factor of N
  if N <> 1 then
    result := result*(N+1);
  result := result-N0;
end;

var
  C, N,N0,k: Cardinal;
begin
  InitPrimes;

  k := High(k);
  N := 1;
  N0 := N;
  C := 0;
  while C < 25 do begin
    inc(N, 2);
    if N < SumProperDivisors(N) then begin
      Inc(C);
      WriteLn(Format('%5u: %s', [C,OutNum(N)]));
      IF k > N-N0 then
        k := N-N0;
      N0 := N;
    end;
  end;
  Writeln(' Min Delta ',k);
  writeln;

  while C < 1000 do begin
    Inc(N, 2);
    if N < SumProperDivisors(N) then
    Begin
      Inc(C);
      IF k > N-N0 then
        k := N-N0;
      N0 := N;
    end;
  end;
  WriteLn(' 1000: ',OutNum(N));
  Writeln(' Min Delta ',k);
  writeln;

  while C < 10000 do begin
    Inc(N, 2);
    if N < SumProperDivisors(N) then
    Begin
      Inc(C);
      IF k > N-N0 then
        k := N-N0;
      N0 := N;
    end;
  end;
  WriteLn('10000: ',OutNum(N));
  Writeln(' Min Delta ',k);

  N := 1000000001;
  while N >= SumProperDivisors(N) do
    Inc(N, 2);
  WriteLn('The first abundant odd number above one billion is: ',OutNum(N));
end.
{------------------------------------------------------------ 8 additive-primes}
Program AdditivePrimes;
Const max_number = 500;

Var is_prime : array Of Boolean;

Procedure sieve(Var arr: Array Of boolean );
{use Sieve of Eratosthenes to find all primes to max number}
Var i,j : NativeUInt;

Begin
  For i := 2 To high(arr) Do
    arr[i] := True;  // set all bits to be True
  For i := 2 To high(arr) Do
    Begin
      If (arr[i]) Then
        For j := 2 To (high(arr) Div i) Do
          arr[i * j] := False;
    End;
End;

Function GetSumOfDigits(num: NativeUInt): longint;
{calcualte the sum of digits of a number}
Var
  sum  : longint = 0;
  dummy: NativeUInt;
Begin
  Repeat
    dummy := num;
    num := num Div 10;
    Inc(sum, dummy - (num SHL 3 + num SHL 1));
  Until num < 1;
  GetSumOfDigits := sum;
End;

Var x : NativeUInt = 2; {first prime}
  counter : longint = 0;
Begin
  setlength(is_prime,max_number); //set length of array to max_number
  Sieve(is_prime); //apply Sieve

  {since 2 is the only even prime, let's do it separate}
  If is_prime[x] And is_prime[GetSumOfDigits(x)] Then
    Begin
      write(x:4);
      inc(counter);
    End;
  inc(x);
  While x < max_number Do
    Begin
      If is_prime[x] And is_prime[GetSumOfDigits(x)] Then
        Begin
          if counter mod 10 = 0 then writeln();
          write(x:4);
          inc(counter);
        End;
      inc(x,2);
    End;
  writeln();
  writeln();
  writeln(counter,' additive primes found.');
End.
{------------------------------------------------------------------ 9 anaprimes}
program AnaPrimes;
{$IFDEF FPC}
  {$MODE DELPHI}
  {$OPTIMIZATION ON,ALL}
{$ELSE}
  {$APPLICATION CONSOLE}
{$ENDIF}
uses
  sysutils;
const
  Limit= 100*1000*1000;

type
  tPrimesSieve = array of boolean;
  tElement = Uint64;
  tarrElement = array of tElement;
  tpPrimes = pBoolean;

const
  cTotalSum = 16;
  cMaxCardsOnDeck = cTotalSum;
  CMaxCardsUsed   = cTotalSum;

type
  tDeckIndex     = 0..cMaxCardsOnDeck-1;
  tSequenceIndex = 0..CMaxCardsUsed;
  tDiffCardCount = Byte;

  tSetElem     = packed record
                   Elemcount : tDeckIndex;
                   Elem  : tDiffCardCount;
                 end;
  tSetRange  = low(tDeckIndex)..High(tDeckIndex);
  tRemSet = array [low(tDeckIndex)..High(tDeckIndex)] of tSetElem;
  tpRemSet = ^tRemSet;
  tRemainSet      = array [tSequenceIndex] of tRemSet;
  tCardSequence   = array [tSequenceIndex] of tDiffCardCount;

  tChain = record
             StartNum,
             EndNum,
             chainLength : Int64;
           end;
var
  PrimeSieve : tPrimesSieve;
  gblTestChain : tChain;
//*********** Sieve of erathostenes
  procedure ClearAll;
  begin
    setlength(PrimeSieve,0);
  end;

  function BuildWheel(pPrimes:tpPrimes;lmt:Uint64): Uint64;
  var
    wheelSize, wpno, pr, pw, i, k: NativeUint;
    wheelprimes: array[0..15] of byte;
  begin
    pr := 1;//the mother of all numbers 1 ;-)
    pPrimes[1] := True;
    WheelSize := 1;

    wpno := 0;
    repeat
      Inc(pr);
      //pw = pr projected in wheel of wheelsize
      pw := pr;
      if pw > wheelsize then
        Dec(pw, wheelsize);
      if pPrimes[pw] then
      begin
        k := WheelSize + 1;
        //turn the wheel (pr-1)-times
        for i := 1 to pr - 1 do
        begin
          Inc(k, WheelSize);
          if k < lmt then
            move(pPrimes[1], pPrimes[k - WheelSize], WheelSize)
          else
          begin
            move(pPrimes[1], pPrimes[k - WheelSize], Lmt - WheelSize * i);
            break;
          end;
        end;
        Dec(k);
        if k > lmt then
          k := lmt;
        wheelPrimes[wpno] := pr;
        pPrimes[pr] := False;
        Inc(wpno);

        WheelSize := k;//the new wheelsize
        //sieve multiples of the new found prime
        i := pr;
        i := i * i;
        while i <= k do
        begin
          pPrimes[i] := False;
          Inc(i, pr);
        end;
      end;
    until WheelSize >= lmt;

    //re-insert wheel-primes 1 still stays prime
    while wpno > 0 do
    begin
      Dec(wpno);
      pPrimes[wheelPrimes[wpno]] := True;
    end;
    result := pr;
  end;

  procedure Sieve(pPrimes:tpPrimes;lmt:Uint64);
  var
    sieveprime, fakt, i: UInt64;
  begin
    sieveprime := BuildWheel(pPrimes,lmt);
    repeat
      repeat
        Inc(sieveprime);
      until pPrimes[sieveprime];
      fakt := Lmt div sieveprime;
      while Not(pPrimes[fakt]) do
        dec(fakt);
      if fakt < sieveprime then
        BREAK;
      i := (fakt + 1) mod 6;
      if i = 0 then
        i := 4;
      repeat
        pPrimes[sieveprime * fakt] := False;
        repeat
          Dec(fakt, i);
          i := 6 - i;
        until pPrimes[fakt];
        if fakt < sieveprime then
          BREAK;
      until False;
    until False;
    pPrimes[1] := False;//remove 1
  end;

procedure InitAndGetPrimes;
begin
  setlength(PrimeSieve,Limit+1);
  Sieve(@PrimeSieve[0],Limit);
end;
//*********** End Sieve of erathostenes
{$ALIGN 32}
type
  tCol = Int32;
  tFreeCol =  Array[0..CMaxCardsUsed] of tCol;
var

  RemainSets    : tRemainSet;
  PrmDgts :tFreeCol;
  maxDgt,
  gblMaxCardsUsed,
  gblMaxUsedIdx,
  gblPermCount : NativeInt;

//**************** Permutator
procedure EvaluatePerm;
var
  j,k : NativeUint;
Begin
  j := PrmDgts[0];
  for k := 1 to maxDgt do
    j := 10*j+PrmDgts[k];
  If PrimeSieve[j] then
  begin
    PrimeSieve[j] := false;
    with gblTestChain do
    begin
      EndNum := j;
      inc(ChainLength);
    end;
  end;
end;

function shouldSwap(var PrmDgts:tFreeCol;start,curr :int32):boolean;
begin
  for start := start to curr-1 do
    if PrmDgts[start] = PrmDgts[curr] then
      EXIT(false);
  result := true;
end;

procedure Permutate(var PrmDgts:tFreeCol;index:Int32);
const
  mask = (1 shl 1) OR (1 shl 3) OR (1 shl 7) OR (1 shl 9);
var
  i : Int32;
  tmp : tCol;
begin
   if index < maxDgt then
   begin
     for i := index to maxDgt do
       if shouldSwap(PrmDgts, index, i) then
       begin
         tmp:= PrmDgts[i];PrmDgts[i] := PrmDgts[index];PrmDgts[index]:= tmp;
         Permutate(PrmDgts, index+1);
         tmp:= PrmDgts[i];PrmDgts[i] := PrmDgts[index];PrmDgts[index]:= tmp;
       end;
  end
  else
    if PrmDgts[0] <> 0 then
      if (1 shl PrmDgts[maxDgt]) AND mask <> 0 then
      Begin
        inc(gblpermCount);
        EvaluatePerm;
      end;
end;

procedure CheckChain(n,dgtcnt:Uint64);
var
  dgts : array[0..9] of Uint32;
  i,k,idx : Int32;
begin
  gblTestChain.StartNum := n;
  gblTestChain.chainLength := 0;
  fillChar(dgts,SizeOF(dgts),#0);
  fillChar(PrmDgts,SizeOF(PrmDgts),#0);
  For i := 1 to dgtcnt do
  Begin
    inc(dgts[n MOD 10]);
    n := n div 10;
  end;
  idx := 0;
  For i := 0 to 9 do
    For k := dgts[i] downto 1  do
    begin
      PrmDgts[idx]:= i;
      inc(idx);
    end;
  Permutate(PrmDgts,0);
end;

var
  T1,T0: TDateTime;
  MaxChain : tChain;
  dgtCount : LongInt;
  pr,lmt :nativeInt;

Begin
  T0 := now;
  InitAndGetPrimes;
  T1 := now;
  Writeln('time for sieving ',FormatDateTime('NN:SS.ZZZ',T1-T0));
  dgtCount := 2;
  lmt := 99;
  pr := 10;
  repeat
    write(dgtCount:2);
    maxDgt := dgtCount-1;
    MaxChain.Chainlength := 0;
    gblpermCount := 0;
    repeat
      while (pr<lmt) AND Not primeSieve[pr] do
        inc(pr);
      if pr >lmt then
        BREAK;
      CheckChain(pr,dgtCount);
      If gblTestChain.chainLength > MaxChain.chainLength then
        MaxChain := gblTestChain;
      inc(pr);
    until pr>lmt;
    with MaxChain do
      writeln(StartNUm:12,EndNum:12,ChainLength:8);
    inc(dgtCount);
    lmt := lmt*10+9;
  until lmt>LIMIT;

end.
{-------------------------------------------------------- 10 arithmetic-complex}
Program ComplexDemo;

uses
  ucomplex;

var
  a, b, absum, abprod, aneg, ainv, acong: complex;

function complex(const re, im: real): ucomplex.complex; overload;
  begin
    complex.re := re;
    complex.im := im;
  end;

begin
  a      := complex(5, 3);
  b      := complex(0.5, 6.0);
  absum  := a + b;
  writeln ('(5 + i3) + (0.5 + i6.0): ', absum.re:3:1, ' + i', absum.im:3:1);
  abprod := a * b;
  writeln ('(5 + i3) * (0.5 + i6.0): ', abprod.re:5:1, ' + i', abprod.im:4:1);
  aneg   := -a;
  writeln ('-(5 + i3): ', aneg.re:3:1, ' + i', aneg.im:3:1);
  ainv   := 1.0 / a;
  writeln ('1/(5 + i3): ', ainv.re:3:1, ' + i', ainv.im:3:1);
  acong  := cong(a);
  writeln ('conj(5 + i3): ', acong.re:3:1, ' + i', acong.im:3:1);
end.
{------------------------------------------------------ 11 arithmetic-numbers-1}
program ArithmeticNumbers;
{$OPTIMIZATION ON,ALL}
type
  tPrimeFact = packed record
                 pfSumOfDivs,
                 pfRemain  : Uint64;
                 pfDivCnt  : Uint32;
                 pfMaxIdx  : Uint32;
                 pfpotPrimIdx : array[0..9] of word;
                 pfpotMax  : array[0..11] of byte;//11 instead of 9 for alignment
               end;
var
  SmallPrimes : array[0..6541] of word;

procedure InitSmallPrimes;
var
  testPrime,j,p,idx:Uint32;
begin
  SmallPrimes[0] := 2;
  SmallPrimes[1] := 3;
  idx := 1;
  testPrime := 5;
  repeat
    For j := 1 to idx do
    begin
      p := SmallPrimes[j];
      if p*p>testPrime then
        BREAK;
      if testPrime mod p = 0 then
      Begin
        p := 0;
        BREAK;
      end;
    end;
    if p <> 0 then
    begin
      inc(idx);
      SmallPrimes[idx]:= testPrime;
    end;
    inc(testPrime,2);
  until testPrime >= 65535;
end;

procedure smplPrimeDecomp(var PrimeFact:tPrimeFact;n:Uint32);
var
  pr,i,pot,fac,q :NativeUInt;
Begin
  with PrimeFact do
  Begin
    pfDivCnt := 1;
    pfSumOfDivs := 1;
    pfRemain := n;
    pfMaxIdx := 0;
    pfpotPrimIdx[0] := 1;
    pfpotMax[0] := 0;

    i := 0;
    while i < High(SmallPrimes) do
    begin
      pr := SmallPrimes[i];
      q := n DIV pr;
      //if n < pr*pr
      if pr > q then
         BREAK;
      if n = pr*q then
      Begin
        pfpotPrimIdx[pfMaxIdx] := i;
        pot := 0;
        fac := pr;
        repeat
          n := q;
          q := n div pr;
          pot+=1;
          fac *= pr;
        until n <> pr*q;
        pfpotMax[pfMaxIdx] := pot;
        pfDivCnt *= pot+1;
        pfSumOfDivs *= (fac-1)DIV(pr-1);
        inc(pfMaxIdx);
      end;
      inc(i);
    end;
    pfRemain := n;
    if n > 1 then
    Begin
      pfDivCnt *= 2;
      pfSumOfDivs *= n+1
    end;
  end;
end;

function IsArithmetic(const PrimeFact:tPrimeFact):boolean;inline;
begin
  with PrimeFact do
    IsArithmetic := pfSumOfDivs mod pfDivCnt = 0;
end;

var
  pF :TPrimeFact;
  i,cnt,primeCnt,lmt : Uint32;
begin
  InitSmallPrimes;

  writeln('First 100 arithemetic numbers');
  cnt := 0;
  i := 1;
  repeat
    smplPrimeDecomp(pF,i);
    if IsArithmetic(pF) then
    begin
      write(i:4);
      inc(cnt);
      if cnt MOD 20 =0 then
        writeln;
    end;
    inc(i);
  until cnt = 100;
  writeln;

  writeln('   Arithemetic numbers');
  writeln('   Index   number composite');
  cnt := 0;
  primeCnt := 0;
  lmt := 10;
  i := 1;
  repeat
    smplPrimeDecomp(pF,i);
    if IsArithmetic(pF) then
    begin
      inc(cnt);
      if pF.pfRemain = i then
        inc(primeCnt);
    end;
    if cnt = lmt then
    begin
      writeln(lmt:8,i:9,lmt-primeCnt:10);
      lmt := lmt*10;
    end;
    inc(i);
  until lmt>1000000;
  {$IFdef WINDOWS}
  WriteLn('Hit <ENTER>');ReadLn;
  {$ENDIF}
end.
{----------------------------------------------------- 12 array-concatenation-3}
Program arrayConcat;

{$mode delphi}

type
    TDynArr = array of integer;

var
  i: integer;
  arr1, arr2, arrSum : TDynArr;

begin
  arr1 := [1, 2, 3];
  arr2 := [4, 5, 6];

  arrSum := arr1 + arr2;

  for i in arrSum do
    write(i, ' ');
  writeln;
end.
{----------------------------------------------- 13 associative-array-iteration}
program AssociativeArrayIteration;
{$mode delphi}{$ifdef windows}{$apptype console}{$endif}
uses Generics.Collections;

type
  TlDictionary =  TDictionary<string, Integer>;
  TlPair = TPair<string,integer>;

var
  i: Integer;
  s: string;
  lDictionary: TlDictionary;
  lPair: TlPair;
begin
  lDictionary := TlDictionary.Create;
  try
    lDictionary.Add('foo', 5);
    lDictionary.Add('bar', 10);
    lDictionary.Add('baz', 15);
    lDictionary.AddOrSetValue('foo',6);
    for lPair in lDictionary do
      Writeln('Pair: ',Lpair.Key,' = ',lPair.Value);
    for s in lDictionary.Keys do
      Writeln('Key: ' + s);
    for i in lDictionary.Values do
      Writeln('Value: ', i);
  finally
    lDictionary.Free;
  end;
end.
{-------------------------------------------------------------- 14 bacon-cipher}
program BaconCipher;

type
  TCode = string[5];
  TLetterCodes = array['a' .. 'z'] of TCode;

const
  LetterCodes: TLetterCodes = (
    'AAAAA', 'AAAAB', 'AAABA', 'AAABB', 'AABAA',
    'AABAB', 'AABBA', 'AABBB', 'ABAAA', 'ABAAB',
    'ABABA', 'ABABB', 'ABBAA', 'ABBAB', 'ABBBA',
    'ABBBB', 'BAAAA', 'BAAAB', 'BAABA', 'BAABB',
    'BABAA', 'BABAB', 'BABBA', 'BABBB', 'BBAAA',
    'BBAAB');
  SpaceCode = 'BBBAA';

  function GetCode(C: char): TCode;
  begin
    if (C >= 'a') and (C <= 'z') then
      Result := LetterCodes[C]
    else
      Result := SpaceCode;
  end;

  function GetChar(Code: TCode): char;
  var
    C: char;
  begin
    if SpaceCode = Code then
      Result := ' '
    else
    begin
      for C := 'a' to 'z' do
        if LetterCodes[C] = Code then
        begin
          Result := C;
          Exit;
        end;
      WriteLn;
      WriteLn('Code ''', Code, ''' is invalid');
      Halt;
    end;
  end;

  function BaconEncode(PlainText, Message: string): string;
  var
    I, Count, ELen, MLen: cardinal;
    C: char;
    ET: string;
  begin
    ELen := 5 * Length(PlainText);
    MLen := Length(Message);
    LowerCase(PlainText);
    ET := '';
    for I := 1 to Length(PlainText) do
      ET := Concat(ET, GetCode(PlainText[I]));

    { 'A's to be in lower case, 'B's in upper case }
    LowerCase(Message);
    Result := Message;
    Count := 1;
    I := 1;
    while I <= MLen do
    begin
      C := Message[I];
      if (C >= 'a') and (C <= 'z') then
      begin
        if ET[Count] = 'A' then
          Result[I] := C
        else
          Result[I] := UpCase(C);
        Inc(Count);
        if Count > ELen then
          Break;
      end
      else
        Result[I] := C;
      Inc(I);
    end;
    Result := Copy(Result, 1, I);
  end;

  function BaconDecode(CipherText: string): string;
  var
    I, IP, Count, PLen: cardinal;
    C: char;
    CT: string;
  begin
    Count := 1;
    CT := CipherText;
    for I := 1 to Length(CipherText) do
    begin
      C := CipherText[I];
      if (C >= 'a') and (C <= 'z') then
      begin
        CT[Count] := 'A';
        Inc(Count);
      end
      else if (C >= 'A') and (C <= 'Z') then
      begin
        CT[Count] := 'B';
        Inc(Count);
      end;
    end;
    CT := Copy(CT, 1, Count);
    PLen := Length(CT) div 5;
    IP := 1;
    for I := 1 to PLen do
    begin
      Result[I] := GetChar(Copy(CT, IP, 5));
      Inc(IP, 5);
    end;
    Result := Copy(Result, 1, PLen);
  end;

var
  PlainText, HiddenText: string;
  Message, CipherText: string;
begin
  PlainText := 'the quick brown fox jumps over the lazy dog';
  Message := 'bacon''s cipher is a method of steganography created by ' +
    'francis bacon. this task is to implement a program for encryption and ' +
    'decryption of plaintext using the simple alphabet of the baconian ' +
    'cipher or some other kind of representation of this alphabet (make ' +
    'anything signify anything). the baconian alphabet may optionally be ' +
    'extended to encode all lower case characters individually and/or ' +
    'adding a few punctuation characters such as the space.';
  CipherText := BaconEncode(PlainText, Message);
  WriteLn('Cipher text:');
  WriteLn(CipherText);
  HiddenText := BaconDecode(CipherText);
  WriteLn;
  WriteLn('Hidden text:');
  WriteLn(HiddenText);
  {ReadLn;}
end.
{------------------------------------------------------- 15 bernoullis-triangle}
program BernoulliTriangle;
const
  colSize = 6;
  rowSize = 15;
type
  tmyRow = array of Uint64;
  tpmyRow = pUint64;

  procedure RowOut(pRow0:tpmyRow;lmt,mid:int32);
  //format output to triangle
  begin
    mid := (colSize*mid) Div 2;
    write('':mid);
   for mid := 0 to lmt do
     write(pRow0[mid]:colSize);
   writeln;
  end;

var
  row : tmyRow;
  pRow : tpmyRow;
  prv1,prv2: Uint64;
  idx,col :NativeInt;
begin
  setlength(row,rowSize);
  //using pointer, because
  //dynamic arrays are slow (check always limits )
  pRow := @row[0];
  prv1 := 0;
  prv2 := 0;

  for col := 0 to rowSize-1 do
  begin
    for idx := 1 to col-1 do
    begin
      prv1 := prv2;
      prv2 := pRow[idx];
      pRow[idx] := prv1+prv2;
    end;
    pRow[col] := prv1+prv2+1;
    prv2 := pRow[0]; //first place always 1
    if rowSize < 16 then
      RowOut(pRow,col,rowSize-col);
  end;
  setlength(row,0);
end.
{---------------------------------------------------------- 16 bin-given-limits}
Program bin_given_limits;

const
  limits1: array of integer = (23, 37, 43, 53, 67, 83);
  data1: array of integer = (95, 21, 94, 12, 99, 4, 70, 75, 83, 93, 52, 80, 57,
     5, 53, 86, 65, 17, 92, 83, 71, 61, 54, 58, 47, 16, 8, 9, 32, 84, 7, 87, 46,
    19, 30, 37, 96, 6, 98, 40, 79, 97, 45, 64, 60, 29, 49, 36, 43, 55);
  limits2: array of integer = (14, 18, 249, 312, 389, 392, 513, 591, 634, 720);
  data2: array of integer = (445, 814, 519, 697, 700, 130, 255, 889, 481, 122,
    932, 77, 323, 525, 570, 219, 367, 523, 442, 933, 416, 589, 930, 373, 202,
    253, 775, 47, 731, 685, 293, 126, 133, 450, 545, 100, 741, 583, 763, 306,
    655, 267, 248, 477, 549, 238, 62, 678, 98, 534, 622, 907, 406, 714, 184,
    391, 913, 42, 560, 247, 346, 860, 56, 138, 546, 38,985, 948, 58, 213, 799,
    319, 390, 634, 458, 945, 733, 507, 916, 123, 345, 110, 720, 917, 313, 845,
    426, 9, 457, 628, 410, 723, 354, 895, 881, 953, 677, 137, 397, 97, 854, 740,
    83, 216, 421, 94, 517, 479, 292, 963, 376, 981, 480, 39, 257, 272, 157, 5,
    316, 395, 787, 942, 456, 242, 759, 898, 576, 67, 298, 425, 894, 435, 831,
    241, 989, 614, 987, 770, 384, 692, 698, 765, 331, 487, 251, 600, 879, 342,
    982, 527, 736, 795, 585, 40, 54, 901, 408, 359, 577, 237, 605, 847, 353,
    968, 832, 205, 838, 427, 876, 959, 686, 646, 835, 127, 621, 892, 443, 198,
    988, 791, 466, 23, 707, 467, 33, 670, 921, 180, 991, 396, 160, 436, 717,
    918, 8, 374, 101, 684, 727, 749);

  procedure print_bins(bins, limits: array of integer);
  var
    i: integer;
  begin
    writeln('          < ', limits[0]: 3, ' := ', bins[0]: 2);
    for i := 0 to high(bins) - 2 do
      writeln('>= ', limits[i]: 3, ' .. < ', limits[i + 1]: 3, ' := ', bins[i + 1]: 2);
    writeln('>= ', limits[high(limits)]: 3, '          := ', bins[high(bins)]: 2);
  end;

  procedure do_bins(limits, Data: array of integer);
  var
    bins: array of integer;
    i, b: integer;
  begin
    setlength(bins, high(limits) + 2);
    for i in Data do
      if i < limits[0] then Inc(bins[0])
      else
      begin
        for b := 1 to high(limits) do
          if ((i >= limits[b - 1]) and (i < limits[b])) then Inc(bins[b]);
        if i >= limits[high(limits)] then
          Inc(bins[high(bins)]);
      end;
    print_bins(bins, limits);
  end;

begin
  do_bins(limits1, data1);
  writeln;
  do_bins(limits2, data2);
end.
{------------------------------------------------------ 17 binary-coded-decimal}
program CheckBCD;
// See https://wiki.freepascal.org/BcdUnit
{$IFDEF FPC}  {$MODE objFPC}{$ELSE} {$APPTYPE CONSOLE} {$ENDIF}
uses
  sysutils,fmtBCD {$IFDEF WINDOWS},Windows{$ENDIF}  ;

{type
  TBcd  = packed record
   Precision: Byte;
   SignSpecialPlaces: Byte;
   Fraction: packed array [0..31] of Byte;
 end;}
var
  Bcd0,Bcd1,BcdOut : tBCD;
Begin
  Bcd1 := IntegerToBcd(1);
//         0x19 + 1 = 0x20
  Bcd0 := IntegerToBcd(19);
  BcdAdd(Bcd0,Bcd1,BcdOut);
  writeln(BcdToStr(Bcd0),'+',BcdToStr(Bcd1),' =',BcdToStr(BcdOut));
//      0x30 - 1 = 0x29
  Bcd0 := IntegerToBcd(29);
  BcdAdd(Bcd0,Bcd1,BcdOut);
  writeln(BcdToStr(Bcd0),'+',BcdToStr(Bcd1),' =',BcdToStr(BcdOut));
//      0x99 + 1 = 0x100
  Bcd0 := IntegerToBcd(99);
  BcdAdd(Bcd0,Bcd1,BcdOut);
  writeln(BcdToStr(Bcd0),'+',BcdToStr(Bcd1),' =',BcdToStr(BcdOut));
  BcdMultiply(Bcd0,Bcd0,BcdOut);
  writeln(BcdToStr(Bcd0),'*',BcdToStr(Bcd0),' =',BcdToStr(BcdOut));
end.
{------------------------------------------------------------- 18 binary-digits}
program binaryDigits(input, output, stdErr);
{$mode ISO}

function binaryNumber(const value: nativeUInt): shortString;
const
	one = '1';
var
	representation: shortString;
begin
	representation := binStr(value, bitSizeOf(value));
	// strip leading zeroes, if any; NB: mod has to be ISO compliant
	delete(representation, 1, (pos(one, representation)-1) mod bitSizeOf(value));
	// traditional Pascal fashion:
	// assign result to the (implicitely existent) variable
	// that is named like the function’s name
	binaryNumber := representation;
end;

begin
	writeLn(binaryNumber(5));
	writeLn(binaryNumber(50));
	writeLn(binaryNumber(9000));
end.
{------------------------------------------------------------ 19 binary-strings}
uses sysutils;
var
  { declaration is creation }
  a,b:string;
  { creation with default value }
  c:string = 'this is a string';
begin
  { assignment }
  a := 'test';
  b := 'test';
  writeln(a:6, b:6);
  { comparison }
  writeln('equal? ', a = b );
  { empty string }
  writeln('empty? ', a = '');
  { cloning, copying }
  a := c;
  writeln('copy c to a, a is now: ', a);
  { append }
  b := b +'W';
  writeln('append W to b: ',b);
  { extract substring }
  b := copy(a,6,2);
  writeln('this should be is": ',b);
  { replace }
  a := stringreplace(a,'i','I',[rfReplaceAll]);
  writeln('replace i with I: ',a);
  { join }
  a:= concat(b,c);
  writeln('join b and c; ',a);
end.
{-------------------------------------------------------- 20 binomial-transform}
program BinomialTransforms;
{$mode objfpc}{$H+}

uses
  SysUtils;

type
  Int64Array = array[0..19] of Int64;

const
  facs: array[1..20] of UInt64 = (
    1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800,
    39916800, 479001600, 6227020800, 87178291200, 1307674368000,
    20922789888000, 355687428096000, 6402373705728000, 121645100408832000,
    2432902008176640000
  );

  Seqs: array[0..3] of Int64Array = (
    (1, 1, 2, 5, 14, 42, 132, 429, 1430, 4862, 16796, 58786, 208012, 742900,
    2674440, 9694845, 35357670, 129644790, 477638700, 1767263190),
    (0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0),
    (0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181),
    (1, 0, 0, 1, 0, 1, 1, 1, 2, 2, 3, 4, 5, 7, 9, 12, 16, 21, 28, 37)
  );

  Names: array[0..3] of string = (
    'Catalan number sequence:',
    'Prime flip-flop sequence:',
    'Fibonacci number sequence:',
    'Padovan number sequence:'
  );

function Factorial(N: Integer): UInt64;
begin
  if (N > 20) or (N < 2) then
    Exit(1);
  Result := facs[N];
end;

function Binomial(N, K: Integer): UInt64;
begin
  Result := Factorial(N) div (Factorial(N - K) * Factorial(K));
end;

procedure BtForward(var B: Int64Array; const A: Int64Array; C: Integer);
var
  N, K: Integer;
begin
  for N := 0 to C - 1 do
  begin
    B[N] := 0;
    for K := 0 to N do
      B[N] := B[N] + Binomial(N, K) * A[K];
  end;
end;

procedure BtInverse(var A: Int64Array; const B: Int64Array; C: Integer);
var
  N, K, Sign: Integer;
begin
  for N := 0 to C - 1 do
  begin
    A[N] := 0;
    for K := 0 to N do
    begin
      Sign := Ord((N - K) and 1 <> 0) * -2 + 1;
      A[N] := A[N] + Binomial(N, K) * B[K] * Sign;
    end;
  end;
end;

procedure BtSelfInverting(var B: Int64Array; const A: Int64Array; C: Integer);
var
  N, K, Sign: Integer;
begin
  for N := 0 to C - 1 do
  begin
    B[N] := 0;
    for K := 0 to N do
    begin
      Sign := Ord(K and 1 <> 0) * -2 + 1;
      B[N] := B[N] + Binomial(N, K) * A[K] * Sign;
    end;
  end;
end;

function LeastSquareDiff(Limit: UInt32): UInt32;
var
  N: UInt32;
begin
  N := Trunc(Sqrt(Limit)) + 1;
  while (N * N) - ((N - 1) * (N - 1)) <= Limit do
    Inc(N);
  Result := N;
end;

var
  I, J: Integer;
  Fwd, Res: Int64Array;

begin

  for I := 0 to 3 do
  begin
    WriteLn(Names[I]);
    for J := 0 to 19 do
      Write(Seqs[I][J], ' ');
    WriteLn;

    WriteLn('Forward binomial transform:');
    BtForward(Fwd, Seqs[I], 20);
    for J := 0 to 19 do
      Write(Fwd[J], ' ');
    WriteLn;

    WriteLn('Inverse binomial transform:');
    BtInverse(Res, Seqs[I], 20);
    for J := 0 to 19 do
      Write(Res[J], ' ');
    WriteLn;

    WriteLn('Round trip:');
    BtInverse(Res, Fwd, 20);
    for J := 0 to 19 do
      Write(Res[J], ' ');
    WriteLn;

    WriteLn('Self-inverting:');
    BtSelfInverting(Fwd, Seqs[I], 20);
    for J := 0 to 19 do
      Write(Fwd[J], ' ');
    WriteLn;

    WriteLn('Re-inverted:');
    BtSelfInverting(Res, Fwd, 20);
    for J := 0 to 19 do
      Write(Res[J], ' ');

  end;
end.


{-------------------------------------------------------- 21 bitwise-operations}
program Bitwise;
{$mode objfpc}
var
  // Pascal uses a native int type as a default literal type
  // Make sure the operants work on an exact type.
  x:shortint = 2;
  y:ShortInt = 3;
begin
  Writeln('2 and 3 = ', x and y);
  Writeln('2 or 3 = ', x or y);
  Writeln('2 xor 3 = ', x xor y);
  Writeln('not 2 = ', not x);
  Writeln('2 shl 3 = ', x >> y);
  Writeln('2 shr 3 = ', x << y);
  writeln('2 rol 3 = ', rolbyte(x,y));
  writeln('2 ror 3 = ', rorbyte(x,y));
  writeln('2 sar 3 = ', sarshortint(x,y));
  Readln;
end.
{-------------------------------------------------------------- 22 blum-integer}
program BlumInteger;
{$IFDEF FPC}  {$MODE DELPHI}{$Optimization ON,ALL} {$ENDIF}
{$IFDEF WINDOWS}{$APPTYPE CONSOLE}{$ENDIF}
{
// for commatize = Numb2USA(IntToStr(n))
uses
  sysutils, //IntToStr
  strutils; //Numb2USA
}
const
  LIMIT = 10*1000*1000;// >750
type
  tP4n3 = array of Uint32;

function CommaUint(n : Uint64):AnsiString;
//commatize only positive Integers
var
  fromIdx,toIdx :Int32;
  pRes : pChar;
Begin
  str(n,result);
  fromIdx := length(result);
  toIdx := fromIdx-1;
  if toIdx < 3 then
    exit;

  toIdx := 4*(toIdx DIV 3)+toIdx MOD 3 +1 ;
  setlength(result,toIdx);
  pRes := @result[1];
  dec(pRes);
  repeat
    pRes[toIdx]   := pRes[FromIdx];
    pRes[toIdx-1] := pRes[FromIdx-1];
    pRes[toIdx-2] := pRes[FromIdx-2];
    pRes[toIdx-3] := ',';
    dec(toIdx,4);
    dec(FromIdx,3);
  until FromIdx<=3;
  while fromIdx>=1 do
  Begin
    pRes[toIdx] := pRes[FromIdx];
    dec(toIdx);
    dec(fromIdx);
  end;
end;

procedure Sieve4n_3_Primes(Limit:Uint32;var P4n3:tP4n3);
var
  sieve : array of byte;
  BlPrCnt,idx,n,j: Uint32;
begin
  //DIV 3 -> smallest factor of Blum Integer
  n := (LIMIT DIV 3 -3) DIV 4+ 1;
  setlength(sieve,n);
  setlength(P4n3,n);

  BlPrCnt:= 0;
  idx := 0;
  repeat
    if sieve[idx]= 0 then
    begin
      n := idx*4+3;
      P4n3[BlPrCnt] := n;
      inc(BlPrCnt);
      j := idx+n;
      if j > High(sieve) then
        break;
      while j <= High(sieve) do
      begin
        sieve[j] := 1;
        inc(j,n);
      end;
    end;
    inc(idx);
  until idx>High(sieve);
  //collect the rest
  for idx := idx+1 to High(sieve) do
    if sieve[idx]=0 then
    Begin
      P4n3[BlPrCnt] := idx*4+3;
      inc(BlPrCnt);
    end;
  setlength(P4n3,BlPrCnt);
  setlength(sieve,0);
end;

var
  BlumField : array[0..LIMIT] of boolean;
  BlumPrimes : tP4n3;
  EndDigit : array[0..9] of Uint32;
  k : Uint64;
  n,idx,j,P4n3Cnt : Uint32;
begin
  Sieve4n_3_Primes(Limit,BlumPrimes);
  P4n3Cnt := length(BlumPrimes);
  writeln('There are ',CommaUint(P4n3Cnt),' needed primes 4*n+3 to Limit ',CommaUint(LIMIT));
  dec(P4n3Cnt);
  writeln;

  //generate Blum-Integers
  For idx := 0 to P4n3Cnt do
  Begin
    n := BlumPrimes[idx];
    For j := idx+1 to P4n3Cnt do
    Begin
      k := n*BlumPrimes[j];
      if k>LIMIT then
        BREAK;
      BlumField[k] := true;
    end;
  end;

  writeln('First 50 Blum-Integers ');
  idx :=0;
  j := 0 ;
  repeat
    while (idx<LIMIT) AND Not(BlumField[idx]) do
      inc(idx);
    if idx = LIMIT then
      BREAK;
    if j mod 10 = 0 then
      writeln;
    write(idx:5);
    inc(j);
    inc(idx);
  until j >= 50;
  Writeln(#13,#10);

  //count and calc and summate decimal digit
  writeln('                               relative occurence of digit');
  writeln('     n.th  |Blum-Integer|Digit: 1          3          7          9');
  idx :=0;
  j := 0 ;
  n := 0;
  k := 26828;
  repeat
    while (idx<LIMIT) AND Not(BlumField[idx]) do
      inc(idx);
    if idx = LIMIT then
      BREAK;
    //count last decimal digit
    inc(EndDigit[idx MOD 10]);
    inc(j);
    if j = k then
    begin
      write(CommaUint(j):10,' | ',CommaUint(idx):11,'| ');
      write(EndDigit[1]/j*100:7:3,'%  |');
      write(EndDigit[3]/j*100:7:3,'%  |');
      write(EndDigit[7]/j*100:7:3,'%  |');
      writeln(EndDigit[9]/j*100:7:3,'%');
      if k < 100000 then
        k := 100000
      else
        k += 100000;
    end;
    inc(idx);
  until j >= 400000;
  Writeln;
end.
{------------------------------------------------------------ 23 boolean-values}
{$mode objfpc}{$ifdef mswindows}{$apptype console}{$endif}
const
  true = 'true';
  false = 'false';
begin
  writeln(true);
  writeln(false);
end.

[ EDIT ]

See https://wiki.freepascal.org/Boolean

While you can assign values to true and false, it has now nothing to do with the boolean values....
Try with this function:

FUNCTION IsNatural ( CONST num: VARIANT ): BOOLEAN;

    BEGIN

	IsNatural := ( num > 0 );

    END;

{------------------------------------------------- 24 boyer-moore-string-search}
{$mode objfpc}{$H+}
uses strutils, classes;
const s:string = 'GCTAGCTCTACGAGTCTA'+ LineEnding +
		'GGCTATAATGCGTA'+  LineEnding +
		'there would have been a time for such a word'+  LineEnding +
		'needle need noodle needle'+  LineEnding +
		'DKnuthusesandprogramsanimaginarycomputertheMIXanditsassociatedmachinecodeandassemblylanguages'+  LineEnding +
		'Nearby farms grew an acre of alfalfa on the dairy''s behalf, with bales of that alfalfa exchanged for milk.';

var
  List:TStringlist;
  matches:SizeIntArray;
  i:SizeInt;
begin
  List := TStringlist.Create;
  try
	  List.Text := s;
	  if FindMatchesBoyerMooreCaseSensitive(List[0],'TCTA',matches,true) then
	  begin
	    write('TCTA found at index: ');
	    for i in matches do write(i:4);
	    writeln;
	  end else writeln('no matches found');
	
	  if FindMatchesBoyerMooreCaseSensitive(List[1],'TAATAAA',matches,true) then
	  begin
	    write('TAATAAA found at index: ');
	    for i in matches do write(i:4);
	    writeln;
	  end else writeln('no matches found for TAATAAA');
	
	  if FindMatchesBoyerMooreCaseSensitive(List[2],'word',matches,true) then
	  begin
	    write('word found at index: ');
	    for i in matches do write(i:4);
	    writeln;
	  end else writeln('no matches found for word');
	
	  if FindMatchesBoyerMooreCaseSensitive(List[3],'needle',matches,true) then
	  begin
	    write('needle found at index: ');
	    for i in matches do write(i:4);
	    writeln;
	  end else writeln('no matches found for needle');
	
	  if FindMatchesBoyerMooreCaseSensitive(List[4],'and',matches,true) then
	  begin
	    write('and found at index: ');
	    for i in matches do write(i:4);
	    writeln;
	  end else writeln('no matches found for and');
	
	  if FindMatchesBoyerMooreCaseSensitive(List[5],'alfalfa',matches,true) then
	  begin
	    write('alfalfa found at index: ');
	    for i in matches do write(i:4);
	    writeln;
	  end else writeln('no matches found for alfalfa');
  finally
    List.Free;
  end;
end.

{--------------------------------------------------------- 25 casting-out-nines}
program castout9;
{$ifdef fpc}{$mode delphi}{$endif}
uses generics.collections;
type
  TIntegerList = TSortedList<integer>;

procedure co9(const start,base,lim:integer;kaprekars:array of integer);
var
  C1:integer = 0;
  C2:integer = 0;
  S:TIntegerlist;
  k,i:integer;
begin
  S:=TIntegerlist.Create;
  for k := start to lim do
  begin
    inc(C1);
    if k mod (base-1) = (k*k) mod (base-1) then
    begin
      inc(C2);
      S.Add(k);
    end;
  end;
  writeln('Valid subset: ');
  for i in Kaprekars do
    if not s.contains(i) then
      writeln('invalid ',i);

  for i in s do write(i:4);
  writeln;
  write('The Kaprekars in this range [');
  for i in kaprekars do write(i:4);
  writeln('] are included');
  writeln('Trying ',C2, ' numbers instead of ', C1,' saves ',100-(C2 * 100 /C1):3:2,',%.');
  writeln;
  S.Free;
end;

begin
  co9(1, 10, 99, [1,9,45,55,99]);
  co9(1, 10, 1000, [1,9,45,55,99,297,703,999]);
end.
{--------------------------------------------------------- 26 circular-primes-1}
program circularprimes;
{$mode objfpc}
  function IsPrime(n: Cardinal): Boolean;inline;
  var
    i, limit: Cardinal;
  begin
    if (n = 2) or (n = 3) then Exit(True);
    if (n <= 1) or (n mod 2 = 0) or (n mod 3 = 0) then Exit(False);

    i := 5;
    limit := Trunc(Sqrt(n));
    while i <= limit do
    begin
      if (n mod i = 0) or (n mod (i + 2) = 0) then Exit(False);
      Inc(i, 6);
    end;
    Result := True;
  end;

  function cycle(const n:Cardinal):Cardinal;inline;
  var
    m:Cardinal;
    p:Cardinal = 1;
  begin
    m := n;
    while m >= 10 do
    begin
        p := p * 10;
        m := m div 10;
    end;
    result := m + 10 * (n mod p);
  end;

  function IsCircularPrime(N: Cardinal): boolean;inline;
  var
    p:Cardinal;
  begin
    p := n;
    repeat
      if not IsPrime(p) or (p<n) then exit(false);
      p := Cycle(p);
    until p = n;
	Result:=True;
  end;

var
  i,c: Cardinal;
  s: string = '';
begin
  c := 0;
  for i := 0 to High(i) do
  if IsPrime(i) then
    if IsCircularPrime(i) then
    begin
     Inc(c);
    writestr(s,s,i:7);
    if c >= 19 then break;
    If c mod 5 = 0 then s:=s+lineEnding;
    end;
  writeln(s,' Count = ',c);
end.
{------------------------------------------------------- 27 cistercian-numerals}
program CistercianNumerals;

type
  TSignVals = -1 .. 1;

  TCanvas = object
  public
    procedure Init(GridSize: integer);
    procedure Clear;
    procedure DrawLine(R0, C0, Dist: integer; DR, DC: TSignVals);
    procedure Show;
    function Size: integer;
  private
    Cells: array of array of char;
    MaxCoord: integer;
  end;

  procedure TCanvas.Init(GridSize: integer);
  begin
    SetLength(Cells, GridSize, GridSize);
    MaxCoord := GridSize - 1;
  end;

  procedure TCanvas.Clear;
  var
    I, J: integer;
  begin
    for I := 0 to MaxCoord do
      for J := 0 to MaxCoord do
        Cells[I, J] := ' ';
  end;

  procedure TCanvas.DrawLine(R0, C0, Dist: integer; DR, DC: TSignVals);
  { Draws a straight (vertical, horizontal, or diagonal) line
    from Cells[R0, C0] to Cells[R0 + DR * Dist, C0 + DC * Dist]. }
  var
    C, R, I: integer;
  begin
    R := R0;
    C := C0;
    for I := 0 to Dist do
    begin
      Cells[R, C] := '*';
      R := R + DR;
      C := C + DC;
    end;
  end;

  procedure TCanvas.Show;
  var
    I, J: integer;
  begin
    for I := 0 to MaxCoord do
    begin
      for J := 0 to MaxCoord do
        Write(Cells[I, J]);
      WriteLn;
    end;
  end;

  function TCanvas.Size: integer;
  begin
    Result := MaxCoord + 1;
  end;

  procedure DrawNumber(var Canvas: TCanvas; V: integer);
  { DrawDigit is part of the algorithm, so it is nested in DrawNumber. }
  type
    TDigits = 0 .. 9;
  var
    Thousands, Hundreds, Tens, Ones: integer;
    RAxis, CAxis: integer;

    procedure DrawDigit(V: TDigits; RS, CS: TSignVals);
    { RS, CS are signs of rows and cols in in relation to the axis.
      They decide in which quadrant a digit is located. }
    begin
      case V of
        1: Canvas.DrawLine(RAxis + RS * 7, CAxis + CS, 4, 0, CS);
        2: Canvas.DrawLine(RAxis + RS * 3, CAxis + CS, 4, 0, CS);
        3: Canvas.DrawLine(RAxis + RS * 7, CAxis + CS,
            4, -RS, CS);
        4: Canvas.DrawLine(RAxis + RS * 3, CAxis + CS, 4, RS, CS);
        5:
        begin
          DrawDigit(1, RS, CS);
          DrawDigit(4, RS, CS);
        end;
        6: Canvas.DrawLine(RAxis + RS * 3, CAxis + CS * 5, 4, RS, 0);
        7:
        begin
          DrawDigit(1, RS, CS);
          DrawDigit(6, RS, CS);
        end;
        8:
        begin
          DrawDigit(2, RS, CS);
          DrawDigit(6, RS, CS);
        end;
        9:
        begin
          DrawDigit(1, RS, CS);
          DrawDigit(8, RS, CS);
        end
      end;
    end; {DrawDigit}

  begin {DrawNumber}
    RAxis := (Canvas.Size - 1) div 2;
    CAxis := 5;
    Canvas.DrawLine(0, CAxis, Canvas.Size - 1, 1, 0);
    {Draw 0 (or vertical axis)}
    Thousands := V div 1000;
    V := V mod 1000;
    Hundreds := V div 100;
    V := V mod 100;
    Tens := V div 10;
    Ones := V mod 10;
    if Thousands > 0 then
      DrawDigit(Thousands, 1, -1);
    if Hundreds > 0 then
      DrawDigit(Hundreds, 1, 1);
    if Tens > 0 then
      DrawDigit(Tens, -1, -1);
    if Ones > 0 then
      DrawDigit(Ones, -1, 1);
  end; {DrawNumber}

  procedure Test(N: integer);
  var
    Canvas: TCanvas;
  begin
    WriteLn(N, ':');
    Canvas.Init(15);
    Canvas.Clear;
    DrawNumber(Canvas, N);
    Canvas.Show;
    WriteLn;
  end;

begin
  Test(0);
  Test(1);
  Test(20);
  Test(300);
  Test(4000);
  Test(5555);
  Test(6789);
  Test(9999);
  // ReadLn;
end.
{----------------------------------------------------------------- 28 code-golf}
var a:QWord=$006F472065646F43;b:DWord=$0000666C;BEGIN write(pChar(@a),pChar(@b));END.
{------- 29 collect-and-sort-square-numbers-in-ascending-order-from-three-lists}
Program SortedSquares;
{$mode ObjFPC}{$H+}

Uses sysutils,fgl;

Type
  tmap = specialize TFPGList<integer>;

Const List1: array Of integer = (3,4,34,25,9,12,36,56,36);
Const List2: array Of integer = (2,8,81,169,34,55,76,49,7);
Const List3: array Of integer = (75,121,75,144,35,16,46,35);

Var list : specialize TFPGList<integer>;

Procedure addtolist(arr : Array Of integer);
Var i : integer;
Begin
  For i In arr Do
    If ((frac(sqrt(i)) = 0) {check if a square, there will be no fraction}
       And (list.indexof(i) = -1)) {make sure number isn't in list already}
      Then list.add(i);
End;

Function CompareInt(Const Item1,Item2: Integer): Integer;
Begin
  result := item1 - item2;
End;

Var i : integer;
Begin
  list := specialize TFPGList<integer>.create;
  addtolist(list1);
  addtolist(list2);
  addtolist(list3);
  List.Sort(@CompareInt); {quick sort the list}
  For i In list Do
    write(i:4);
  list.destroy;
End.
{-------------------------------------------------------- 30 common-sorted-list}
Program CommonSortedList;
{$mode ObjFPC}{$H+}

Uses sysutils,fgl;

Type
  tarr = array Of array Of integer;

Const List1: tarr = ((5,1,3,8,9,4,8,7), (3,5,9,8,4), (1,3,7,9));

Var list : specialize TFPGList<integer>;

Procedure addtolist(arr : tarr);
Var i : integer;
  arr2 : array Of integer;
Begin
  For arr2 In arr Do
    For i In arr2 Do
      If (list.indexof(i) = -1) {make sure number isn't in list already}
        Then list.add(i);
End;

Function CompareInt(Const Item1,Item2: Integer): Integer;
Begin
  result := item1 - item2;
End;

Var i : integer;
Begin
  list := specialize TFPGList<integer>.create;
  addtolist(list1);
  List.Sort(@CompareInt); {quick sort the list}
  For i In list Do
    write(i:4);
  list.destroy;
End.
{----------------------------------- 31 count-the-occurrence-of-each-digit-in-e}
//calculate the decimal digits of e and count how many times each #
//digit occurs - based on the B code on the Wikipedia page:       #
//https://en.wikipedia.org/wiki/B_(programming_language) #
program  DigitCntOfE;
uses
  sysutils;
const
  MaxIDx = 2000;
  base = 10;
var
  dcount : array[0..Base-1] of integer = ( 0, 0, 1, 0, 0, 0, 0, 0, 0, 0 );
  v : array[0..MaxIdx-1] of integer;
  n : integer = MaxIdx;
  i,col,
  c, a : Integer;

BEGIN
//# this counts the digits in the fractional part of e so the initial  #
//   # count for 2 is 1, to include the non-fractional digit              #
   FOR i  := Low(v) to High(v) do
     v[i] := 1;

   FOR col := 0 to 2*n do
   Begin
    a := n+1;
    c := 0;
    FOR i  := Low(v) to High(v) do
    Begin
      c += v[i]*10;
      v[i] := c MOD a;
      c := c DIV a;
      a -= 1
    end;
    dcount[ c ] += 1
  end;
  For i := low(dcount) to High(dCount) do
    write(dcount[i]:5);
  writeln;
END.
{-------------------------------------------------------------------- 32 crc-32}
Program CheckCRC;
{$IFDEF fpc}{$mode Delphi}{$ENDIF}
{$IFDEF WINDOWS}{$APPTYPE CONSOLE}{$ENDIF}
uses
  sysutils,crc;

function CrcString(const mystring: string) : longword;
var
  crcvalue: longword;
begin
  crcvalue := crc32(0,nil,0);
  result := crc32(crcvalue, @mystring[1], length(mystring));
end;

var
  mytext: string;
begin
  myText := 'The quick brown fox jumps over the lazy dog';
  writeln('crc32 = ', IntToHex(CrcString(mytext), 8));
end.
{--------------------------------------------------------------- 33 date-format}
program Format_Date_Time;
uses
  SysUtils;
begin
  WriteLn(FormatDateTime('yyyy-mm-dd', Now) +#13#10+ FormatDateTime('dddd, mmmm dd, yyyy', Now));
end.
{--------------------------------- 34 day-of-the-week-of-christmas-and-new-year}
Program daysofweek;
Uses sysutils;

Const Years : array Of integer = (1578, 1590, 1642, 1957, 2020, 2021, 2022, 2242, 2245, 2393);

Var christmasday, newyearsday : tdatetime;
  year : integer;
Begin
  For year In years Do
    Begin
      christmasday := encodeDate(year,12,25);
      newyearsday := encodeDate(year,1,1);
      writeln('in ',year,' New Years day is on ',DefaultFormatSettings.LongDayNames[DayOfWeek(
              newyearsday)],', and Christmas day on a ',DefaultFormatSettings.LongDayNames[DayOfWeek(
                                                                                        christmasday
      )]);
    End;
End.
{-------------------------------------------------------- 35 days-between-dates}
Program DaysBetweenDates;
{$mode ObjFPC}{$H+}

Uses dateutils,strutils;

Type Tarr = array of array Of string;

Const lst : Tarr = (('1902-01-01','1968-12-25'),('2019-01-01','2019-01-02'),
                    ('2019-01-02','2019-01-01'),('2019-01-01','2019-03-01'),
                    ('2020-01-01','2020-03-01'),('1995-11-21','1995-11-21'),
                    ('2090-01-01','2098-12-25'),('1967-02-23','2024-03-21'));

Function strtodate(str : String) : tdatetime;
Begin
  result := ScanDateTime('YYYYMMDD', DelChars(str, '-'));
End;

Var arr : array of string;
  DaysBetw : integer;
Begin
  For arr In lst Do
    Begin
      DaysBetw := DaysBetween(strtodate(arr[0]),strtodate(arr[1]));
      writeln(arr[0],' - ',arr[1],' -> ',DaysBetw);
    End;
End.
{------------------------------------------------------- 36 deceptive-numbers-1}
program DeceptiveNumbers;
{$IfDef FPC} {$Optimization ON,ALL} {$ENDIF}
{$IfDef Windows} {$APPTYPE CONSOLE} {$ENDIF}
uses
  sysutils;
const
  LIMIT = 100000;//1E6 at home takes over (5 min) now 1m10s
  RepInitLen = 13; //Uint64 19 decimal digits -> max 6 digits divisor
  DecimalDigits = 10*1000*1000*1000*1000;//1E13
  RepLimit = (DecimalDigits-1)DIV 9;//RepInitLen '1'

type
  tmyUint64 = array[0..Limit DIV RepInitLen+1] of Uint64;
var
  {$Align 32}
  K: tmyUint64;
  {$Align 32}
  MaxKIdx : Int32;

procedure OutK(const K:tmyUint64);
var
  i : Uint32;
begin
  For i := MaxKidx downto 0 do
  begin
    write(k[i]:13);
  end;
  writeln;
end;

function isPrime(n: UInt64):boolean;
var
 p: Uint64;
begin
  if n in [2,3,5,7,11,13,17,19,23,29] then
    EXIT(true);

  if Not ODD(n) OR ( n MOD 3 = 0) then
    EXIT(false);
  p := 5;
  repeat
    if (n mod p=0)or(n mod(p+2)=0) then
      EXIT(false);
    p +=6;
  until p*p>n;
  Exit(true);
end;

procedure ExtendRep(var K:tmyUint64;n:NativeUint);
var
  q : Uint64;
  i : Int32;
begin
  n -= MaxKidx*RepInitLen;
  i := MaxKidx;
  while RepInitLen<=n do
  begin
    K[i] := RepLimit;
    inc(i);
    dec(n,RepInitLen);
  end;
  if n = 0 then
    Exit;
  MaxKidx := i;
  q := 1;
  while n<RepInitLen do
  begin
    q *= 10;
    inc(n);
  end;
  K[i] := RepLimit DIV q;
end;

function GetModK(const K:tmyUint64;n:Uint64):NativeUint;
var
  r,q : Uint64;
  i : Uint32;
Begin
  r := 0;
  For i := MaxKidx downto 0 do
  begin
    q := K[i]+r*DecimalDigits;
    r := q MOD n;
  end;
  Exit(r)
end;

const
  NextNotMulOF35 : array[0..7] of byte = (6,4,2,4,2,4,6,2);
var
  i,cnt,idx35 : UInt64;
BEGIN
  fillchar(K,SizeOF(K),#0);
  MaxKIdx:= 0;
  cnt := 0;
  i := 1;
  idx35 := 0;
  repeat
    inc(i,NextNotMulOF35[idx35]);
    IF i > LIMIT then
      BREAK;
    idx35 := (idx35+1) AND 7;
    if isprime(i) then
      continue;
    ExtendRep(k,i-1);
    IF GetModK(K,i)=0 then
    Begin
      inc(cnt);
      write(i:6,',');
      if cnt Mod 10 = 0 then
        writeln;
    end;
  until false;
 {$IfDef Windows}
 readln;
 {$ENDIF}
END.
{------------------------------------------------------- 37 deceptive-numbers-2}
program DeceptiveNumbers;
{$IfDef FPC} {$MODE DELPHI}{$Optimization ON,ALL} {$ENDIF}
{$IfDef Windows} {$APPTYPE CONSOLE} {$ENDIF}
uses
  sysutils;
const
  LIMIT = 1000;

function OutN(n,count:Uint64):Uint64;
begin
  result := count;
  If result mod  8 = 0 then
    write(#13#10,count:6);
  write(n:10);
  inc(result);
end;

function isPrime(n: UInt64):boolean;
var
 p: Uint64;
begin
  if n <32 then
    if n in [2,3,5,7,11,13,17,19,23,29,31] then
      EXIT(true);

  if Not ODD(n) OR ( n MOD 3 = 0) then
    EXIT(false);
  p := 5;
  repeat
    if (n mod p=0)or(n mod(p+2)=0) then
      EXIT(false);
    p +=6;
  until p*p>n;
  Exit(true);
end;

function powMod(n,pow,rest: Uint64): Uint64;
begin
  result := 1;
  while pow > 0 do
  begin
    if pow mod 2 <> 0 then
      result := (result * n) mod rest;
    pow := pow div 2;
    n := sqr(n) mod rest;
  end;
end;

const
  NextNotMulOf235 : array[0..7] of Uint32 = (6,4,2,4,2,4,6,2);
var
   n,count,idx235:Uint64;
begin
  idx235 := 0;
  n := 1;
  count := 0;
   writeln(' count        +1         2         3         4         5         6         7         8');
  repeat
    //simple isprime takes mostly more time than powMod
    if  (powMod(10, n-1, n) = 1) AND Not(isPrime(n)) then
      count := OutN(n,count);
    inc(n,NextNotMulOf235[idx235]);
    idx235 :=(idx235+1) AND 7;
  until count >=LIMIT;

  writeln;
END.
{---------------------------------------- 38 determine-if-a-string-is-numeric-2}
program IsNumeric;

type
    TDynamicArrayItem = record
    StrValue: string;
  end;

var
  myDynamicArray: array of TDynamicArrayItem;
  i: Integer;
  Value: Extended;
  Code: Integer;

begin
  // Initialize the dynamic array with different data types
  SetLength(myDynamicArray, 7);
  myDynamicArray[0].StrValue := 'Hello';
  myDynamicArray[1].StrValue := '42';
  myDynamicArray[2].StrValue := '3.14159';
  myDynamicArray[3].StrValue := 'World';
  myDynamicArray[4].StrValue := '99';
  myDynamicArray[5].StrValue := '0777'; // Octal representation for 511
  myDynamicArray[6].StrValue := '$A1';  // Hexadecimal representation for 161

  // Iterate through the dynamic array and determine data type
  for i := Low(myDynamicArray) to High(myDynamicArray) do
  begin
    Val(myDynamicArray[i].StrValue, Value, Code);
    if Code = 0 then // The value 0 for Code indicates that the conversion was successful.
        Writeln('Element ', i, ': Numeric Value ', Chr(9),' - ', Value) // Chr(9) = tab
    else
        Writeln('Element ', i, ': Non-Numeric Value ', Chr(9), ' - ', myDynamicArray[i].StrValue);
  end;
end.
{ Val converts the value represented in the string 'StrValue' to a numerical value or an enumerated value, and stores this value in the variable 'Value', which can be of type Longint, Real and Byte or any enumerated type. If the conversion isn't successful, then the parameter 'Code' contains the index of the character in 'StrValue' which prevented the conversion. }

{---------------------------------- 39 digital-root-multiplicative-digital-root}
program MultRoot;
{$IFDEF FPC}
  {$MODE DELPHI}{$OPTIMIZATION ON,ALL}{$CODEALIGN proc=16}
{$ENDIF}
{$IFDEF WINDOWS}
  {$APPTYPE CONSOLE}
{$ENDIF}
uses
  sysutils;
type
  tMul3Dgt = array[0..999] of Uint32;
  tMulRoot = record
               mrNum,
               mrMul,
               mrPers : Uint64;
             end;
const
  Testnumbers : array[0..16] of Uint64 =(123321,7739,893,899998,
                                        18446743999999999999,
    //first occurence of persistence 0..11
                                    0,10,25,39,77,679, 6788, 68889, 2677889,
                                        26888999, 3778888999, 277777788888899);

var
  Mul3Dgt : tMul3Dgt;

procedure InitMulDgt;
var
  i,j,k,l : Int32;
begin
  l := 999;
  For i := 9 downto 0 do
    For j := 9 downto 0 do
      For k := 9 downto 0 do
      Begin
        Mul3Dgt[l] := i*j*k;
        dec(l);
      end;
end;

function GetMulDigits(n:Uint64):UInt64;inline;
var
  pMul3Dgt :^tMul3Dgt;
  q :Uint64;
begin
  pMul3Dgt := @Mul3Dgt[0];
  result := 1;
  while n >= 1000 do
  begin
    q := n div 1000;
    result *= pMul3Dgt^[n-1000*q];
    n := q;
  end;
  If n>=100 then
    result *= pMul3Dgt^[n]
  else
    if n>=10 then
       result *= pMul3Dgt^[n+100]
    else
      result *= n;//Mul3Dgt[n+110]
end;

procedure GetMulRoot(var MulRoot:tMulRoot);
var
  mr,
  pers : UInt64;
Begin
  pers := 0;
  mr := MulRoot.mrNum;
  while mr >=10 do
  Begin
    mr := GetMulDigits(mr);
    inc(pers);
  end;
  MulRoot.mrMul:= mr;
  MulRoot.mrPers:= pers;
end;

const
  MaxDgtCount = 9;
var
  //all initiated with 0
  MulRoot:tMulRoot;
  Sol    : array[0..9,0..MaxDgtCount-1] of tMulRoot;
  SolIds : array[0..9] of Int32;
  i,idx,mr,AlreadyDone : Int32;

BEGIN
  InitMulDgt;

  AlreadyDone := 10;//0..9
  MulRoot.mrNum := 0;
  repeat
    GetMulRoot(MulRoot);
    mr := MulRoot.mrMul;
    idx := SolIds[mr];
    If idx<MaxDgtCount then
    begin
      Sol[mr,idx]:= MulRoot;
      inc(idx);
      SolIds[mr]:= idx;
      if idx =MaxDgtCount then
        dec(AlreadyDone);
    end;
    inc(MulRoot.mrNum);
  until AlreadyDone = 0;
  writeln('MDR: First');
  For i := 0 to 9 do
  begin
    write(i:3,':');
    For idx := 0 to MaxDgtCount-1 do
      write(Sol[i,idx].mrNum:MaxDgtCount+1);
    writeln;
  end;
  writeln;
  writeln('number':20,' mulroot   persitance');
  For i := 0 to High(Testnumbers) do
  begin
    MulRoot.mrNum := Testnumbers[i];
    GetMulRoot(MulRoot);
    With MulRoot do
      writeln(mrNum:20,mrMul:8,mrPers:8);
  end;
  {$IFDEF WINDOWS}
  readln;
  {$ENDIF}
END.
{---------------------------------------------------------- 40 dividuus-numbers}
program Dividuus;
{$MODE DELPHI}{$OPTIMIZATION ON,ALL}{$CODEALIGN proc=32,loop=8}

//{$DEFINE TestAll} //like https://oeis.org/A118575/b118575.txt
type
  //number in base 10 only used digits 1..9
  tnumdgts = array[0..23] of byte;
  tpnumdgts = pByte;
  tnum9 = record
            nmdgts : tnumdgts;
            nmNum  : UInt64;
            nmNum9  : UInt64;
            nmSumDgt : UInt64;
            nmMulDgt : UInt64;
            nmDgtRoot  :Uint32;
            nmDgtMulRoot  :Uint32;
            nmMaxDgtIdx :byte;
          end;

var
  Mul3Dgt : array[0..999] of UInt32;
  DgtRootTbl : array[0..21*9] of Uint32;

procedure InitMulDgt;
var
  i,j,k,l : Int32;
begin
  l := 999;
  For i := 9 downto 0 do
    For j := 9 downto 0 do
      For k := 9 downto 0 do
      Begin
        Mul3Dgt[l] := i*j*k;
        dec(l);
      end;
end;

procedure InitDgtRootTable;
var
  i : Uint32;
begin
  DgtRootTbl[0] := 0;
  for i := 1 to 21*9 do
    DgtRootTbl[i]:= (i-1) MOD 9 +1;
end;

procedure OutNum(const n:tnum9;i :Uint32);
begin
  with n do
    writeln(i:6,nmNum:12,nmMulDgt:10,nmSumDgt:4,nmDgtRoot:4,nmDgtMulRoot:4,nmNum9:12);
end;

procedure InitNum(var num:tnum9;n:Uint64);
//convert number to tNum9
var
  s : string[31];
  digitsMul,newN,newN9 : Uint64;
  digitsSum,
  idx,l,dgt : integer;
begin
  str(n,s);
  newN := 0;
  newN9 := 0;
  digitsSum := 0;
  digitsMul := 1;
  with num do
  begin
    l := length(s);
    For idx := 1 to l do
    begin
      dgt := Ord(s[idx])-Ord('0');
      if dgt = 0 then
        dgt := 1;
      nmdgts[l-idx] := dgt;
      newN  := newN*10+dgt;
      newN9 := newN9*9+dgt;
      digitsSum += dgt;
      digitsMul *= dgt;
    end;
    nmSumDgt := digitsSum;
    nmMulDgt := digitsMul;
    nmNum := newN;
    nmNum9 := newN9;
    nmdgtRoot := 128;
    nmdgtMulroot := 128;
    nmMaxDgtIdx := l-1;
  end;
end;

function GetMulDigits(n:Uint64):UInt64;inline;
var
  q :Uint64;
  pMul3Dgt : pUInt32;
begin
  pMul3Dgt := @Mul3Dgt[0];
  result := 1;
  while n >= 1000 do
  begin
    q := n div 1000;
    result *= pMul3Dgt[n-1000*q];
    n := q;
  end;
  If n>=100 then
    result *= pMul3Dgt[n]
  else
    if n>=10 then
       result *= pMul3Dgt[n+100]
    else
      result *= n;//Mul3Dgt[n+110]
end;

function GetMulRoot(n : UInt64):Uint64;
Begin
  result := n;
  while result >=10 do
    result := GetMulDigits(result);
end;

function CheckDividuus(var num:tnum9):Boolean;inline;
var
  n : Uint64;
  dgtRoot : Uint32;
begin
  result := false;
  with num do
  begin
    n := nmNum;
    if n mod nmSumDgt <> 0 then
      EXIT;

    if n mod nmMulDgt <> 0 then
      EXIT;

    dgtRoot := DgtRootTbl[nmSumDgt];
    nmDgtRoot := dgtRoot;
    if dgtRoot = 0 then
      EXIT
    else
      if n mod dgtRoot <> 0 then
        EXIT;

    dgtRoot := GetMulRoot(nmMulDgt);
    nmDgtMulRoot :=  dgtRoot;
    if dgtRoot = 0 then
      EXIT
    else
      if n mod dgtRoot <> 0 then
        EXIT;
  end;
  result := true;
end;

procedure IncNum9(var tn:tNum9);
var
  fac : UInt64;
  idx,dgt : UInt32;
begin
  idx := 0;
  with tn do
  Begin
    fac := 1;
    inc(nmNum9,fac);
    inc(nmNum,fac);
    repeat
      dgt := nmdgts[idx];
      nmMulDgt := nmMulDgt DIV dgt;
      dec(nmSumDgt,dgt);
      inc(dgt);
      if dgt < 10 then
      begin
        nmdgts[idx]:= dgt;
        nmMulDgt := nmMulDgt * dgt;
        inc(nmSumDgt,dgt);
        break;
      end;
      dgt:= 1;
      inc(nmNum,fac);
      fac := fac*10;
      nmdgts[idx] :=dgt;
      inc(nmSumDgt,dgt);
      inc(idx);
    until idx > nmMaxDgtIdx;

    If idx > High(nmdgts) then
      EXIT;
    if nmMaxDgtIdx<Idx then
    begin
      nmMaxDgtIdx := Idx;
      nmdgts[idx] := 1;
      inc(nmSumDgt);
    end;
    nmdgtRoot := 128;
    nmdgtMulroot := 128;
  end;
end;

var
  num : tnum9;
  i : integer;
Begin
  InitDgtRootTable;
  InitMulDgt;
  with num do
  begin
    nmdgts[0] := 1;
    nmNum     := 1;
    nmNum9    := 1;
    nmSumDgt  := 1;
    nmMulDgt  := 1;
    nmDgtRoot := 1;
    nmDgtMulRoot := 1;
    nmMaxDgtIdx := 0;
  end;

  writeln('First fifty Dividuus numbers:');
  i := 0;
  repeat
    if CheckDividuus(num) then
    Begin
      inc(i);
      write(num.nmNum:6);
      if i mod 10 = 0 then
        writeln;
    end;
    IncNum9(num);
  until i >= 50;
{$IFDEF TestAll}
  repeat
    if CheckDividuus(num) then
      inc(i);
    IncNum9(num);
  until num.nmNum>=990*1000*1000-1;
{$ELSE}
  InitNum(num,990*1000*1000);
{$ENDIF}
  writeln;
  writeln(' index   number   digits Mul Sum rtS rtM   base9 Idx');
  repeat
    if CheckDividuus(num) then
    Begin
      inc(i);
      OutNum(num,i);
    end;
    IncNum9(num);
  until num.nmNum>=1000*1000*1000-1;
  writeln('Test transit');
  i := 0;
  OutNum(num,i);
  IncNum9(num);
  OutNum(num,i);
  writeln;
end.
{----------------------------------------------------------------- 41 dns-query}
program DNSQuery;
uses netdb,sysutils;
const
  DOMAIN_NAME = 'www.kame.net';

var
host: THostEntry;
host6: THostEntry6;
i : integer;
begin
  if ResolveHostByName(DOMAIN_NAME, host) then
  begin
    writeln('IPv4 : ',host.Addr.s_bytes[1],'.',host.Addr.s_bytes[2],'.',host.Addr.s_bytes[3],'.',host.Addr.s_bytes[4]);
  end else
  begin
    writeln(DOMAIN_NAME,' did not resolve');
    halt(0);
  end;

  if ResolveHostByName6(DOMAIN_NAME, host6) then
  begin
    i := 0;
    write('IPv6 : ');
    while i <14 do
    begin
      write(inttohex(host6.Addr.u6_addr8[i]),inttohex(host6.Addr.u6_addr8[i+1]),':');
      inc(i,2);
    end;
    writeln(inttohex(host6.Addr.u6_addr8[i]),inttohex(host6.Addr.u6_addr8[i+1]));
  end else
  begin
    writeln(DOMAIN_NAME,' did not resolve');
    halt(0);
  end;
end.

{---------------------------------------- 42 doubly-linked-list-element-removal}
program doublylinkedlist;

type
  pDbllist = ^tDbllist;
  tDbllist = record
    data: integer;
    prev, next: pDbllist;
  end;

procedure add(var tail: pDbllist; data: integer);
var
  cur: pDbllist;
begin
  new(cur);
  cur^.data := data;
  cur^.prev := tail;
  cur^.next := nil;
  if tail <> nil then
    tail^.next := cur;
  tail := cur;
end;

procedure delete(var head, tail: pDbllist; data: integer);
var
  cur: pDbllist;
begin
  cur := head;
  while (cur <> nil) and (cur^.data <> data) do
    cur := cur^.next;

  if cur = nil then
    exit; // data not found

  if cur^.prev = nil then // cur is the head
  begin
    head := cur^.next;
    if head <> nil then
      head^.prev := nil
    else
      tail := nil; // list becomes empty
  end
  else if cur^.next = nil then // cur is the tail
  begin
    tail := cur^.prev;
    tail^.next := nil;
  end
  else // cur is in the middle
  begin
    cur^.prev^.next := cur^.next;
    cur^.next^.prev := cur^.prev;
  end;

  dispose(cur);
end;

procedure destroyList(var head: pDbllist);
var
  cur, next: pDbllist;
begin
  cur := head;
  while cur <> nil do
  begin
    next := cur^.next;
    dispose(cur);
    cur := next;
  end;
  head := nil;
end;

procedure display(head: pDbllist);
var
  cur: pDbllist;
begin
  cur := head;
  while cur <> nil do
  begin
    writeln(cur^.data);
    cur := cur^.next;
  end;
end;

var
  head, tail: pDbllist;
  i: integer;
begin
  head := nil;
  tail := nil;

  // Initial list setup
  for i := 1 to 5 do
  begin
    if tail = nil then
    begin
      new(head);
      head^.data := i;
      head^.prev := nil;
      head^.next := nil;
      tail := head;
    end
    else
    begin
      add(tail, i);
    end;
  end;

  writeln('Original list:');
  display(head);

  writeln('Deleting 3:');
  delete(head, tail, 3);
  display(head);

  writeln('Deleting 1 (head):');
  delete(head, tail, 1);
  display(head);

  writeln('Deleting 5 (tail):');
  delete(head, tail, 5);
  display(head);

  writeln('Destroying list!');
  destroyList(head);
  display(head); // should display nothing as the list is destroyed
end.

{--------------------------------------------------------- 43 duffinian-numbers}
program DuffinianNumbers;

CONST
  MaxSigma = 10000;

VAR
    seen, cur: CARDINAL;
    sigma: ARRAY [1..MaxSigma] OF CARDINAL;

PROCEDURE CalculateSigmaTable;
    VAR i, j: CARDINAL;
BEGIN
  FOR i := 1 TO MaxSigma DO
  BEGIN
    sigma[i] := 0
  END;
  FOR i := 1 TO MaxSigma DO
  BEGIN
    j := i;//2*i -> sigma(n)-n
    WHILE j <= MaxSigma DO
    Begin
      INC(sigma[j], i);
      INC(j, i);
    END
  END
END;// CalculateSigmaTable;

FUNCTION GCD(a, b: CARDINAL): CARDINAL;
VAR c: CARDINAL;
BEGIN
  WHILE b <>0 DO
  Begin
    c := a MOD b;
    a := b;
    b := c
  END;
  EXIT(A)
END;// GCD;

function IsDuffinian(n: CARDINAL): BOOLEAN;
BEGIN
  EXIT( (sigma[n] > n+1) AND (GCD(n, sigma[n]) = 1))
END;// IsDuffinian;

FUNCTION IsDuffinianTriple(n: CARDINAL): BOOLEAN;
BEGIN
  EXIT(IsDuffinian(n) AND IsDuffinian(n+1) AND IsDuffinian(n+2));
END;// IsDuffinianTriple;

BEGIN
  CalculateSigmaTable;
  Writeln('First 50 Duffinian numbers:');
  WriteLn;
  cur := 0;
  FOR seen := 1 TO 50 DO
  Begin
    REPEAT
      INC(cur)
    UNTIL IsDuffinian(cur);
    Write(cur:4);
    IF seen MOD 10 = 0 THEN
      WriteLn;
  END;

  WriteLn;
  WriteLn('First 15 Duffinian triples:');
  WriteLn;
  cur := 0;
  FOR seen := 1 TO 15 DO
  BEGIN
    REPEAT
      INC(cur)
    UNTIL IsDuffinianTriple(cur);
    Write(cur:6);
    Write(cur+1:6);
    Write(cur+2:6);
    WriteLn;
  END
END.// DuffinianNumbers.
{-------------------------------------------------- 44 ethiopian-multiplication}
program EthiopianMultiplication;
  {$IFDEF FPC}
    {$MODE DELPHI}
  {$ENDIF}
  function Double(Number: Integer): Integer;
  begin
    Result := Number * 2
  end;

  function Halve(Number: Integer): Integer;
  begin
    Result := Number div 2
  end;

  function Even(Number: Integer): Boolean;
  begin
    Result := Number mod 2 = 0
  end;

  function Ethiopian(NumberA, NumberB: Integer): Integer;
  begin
    Result := 0;
    while NumberA >= 1 do
    begin
      if not Even(NumberA) then
        Result := Result + NumberB;
      NumberA := Halve(NumberA);
      NumberB := Double(NumberB)
    end
  end;

begin
  Write(Ethiopian(17, 34))
end.
{-------------------------------------------------------------- 45 execute-hq9_}
program HQ9;

procedure runCode(code: string);
var
  c_len, i, bottles: Integer;
  accumulator: Cardinal;
begin
  c_len := Length(code);
  accumulator := 0;
  for i := 1 to c_len do
  begin
    case code[i] of
      'Q','q':
        writeln(code);
      'H','h':
        Writeln('Hello, world!');
      '9':
        begin
          bottles := 99;
          repeat
            writeln(bottles,' bottles of beer on the wall');
            writeln(bottles,' bottles of beer');
            Writeln('Take one down, pass it around');
            dec(bottles);
            writeln(bottles,' bottles of beer on the wall',#13#10);
          until (bottles <= 0);
        end;
      '+':
        inc(accumulator);
    end;
  end;
end;
BEGIN
  runCode('QqQh');
  //runCode('HQ9+');// output to long
END.
{-------------------------------------------------- 46 exponential-digital-sums}
program NumberExpDgtSum;
{$IFDEF FPC} {$MODE DELPHI} {$OPTIMIZATION ON,ALL} {$ENDIF}
uses
  sysutils;
const
  LongWordDec = 1000*1000*1000;
  ElemCount = 8000;
  DgtCount =9*ElemCount;
type
  tElem = 0..LongWordDec-1;
  tNum = array of Uint32;

var
  DgtSum999 : array[0..999] of byte;
  foundPot : array[0..15] of Uint32;

procedure InitDgtSum;
var
  pDgtSUm :  pByte;
  i,j,k,sumij : Int32;
Begin
  pDgtSUm := @DgtSum999[0];
  For i := 0 to 9 do
    for j := 0 to 9 do
    begin
      sumij := i+j;
      for k := 0 to 9 do
      begin
        pDgtSum^:= sumij;
        inc(pDgtSum);
        inc(sumij);
      end
    end
end;

procedure OutFound(n,found:INt32);
var
  i : Int32;
Begin
  if found >0 then
  begin
    dec(found);
    write(' max pot diff: ',foundPot[found]-foundPot[0]:4);
    write(n:7,'^ ');
    For i := 0 to found do
      write(foundPot[i]:4);
    writeln;
  end;
end;

procedure OutNum(const Num:tNum;MaxIdx:NativeInt);
var
  i : NativeInt;
Begin
  writeln(#13#10,MaxIdx);
  write(Num[MaxIdx]);
  For i := MaxIdx-1 downto 0 do
    write(Format('%.9d',[Num[i]]));
  writeln;
end;

function GetDgtSum(const Num:tNum;MaxIdx:NativeInt):Int32;
var
  n,q: UInt32;
begin
  result := 0;
  repeat
    n := num[MaxIdx];
    q := n div 1000;
    result += DgtSum999[n-q*1000];
    n := q;
    q := n div 1000;
    result += DgtSum999[n-q*1000];
    result += DgtSum999[q];
    dec(MaxIdx);
  until MaxIdx<0;
end;

function getNextPot(n:tElem;MaxIdx:Uint32;var Num:tNum):Integer;
// const LongWordDec = 1000*1000*1000;
var
  pNum : pUint32;
  prod: Uint64;
  idx : NativeInt;
  carry : Uint32;
begin
  carry := 0;
  pNum :=@Num[0];
  For idx := 0 to MaxIdx do
  Begin
    prod  := n*pNum[idx]+Carry;
    Carry := prod Div LongWordDec;
    pNum[idx] := Prod - Carry*LongWordDec;
  end;
  IF Carry <> 0 then
  Begin
    inc(MaxIdx);
    Num[MaxIdx] := Carry;
  End;
  result := MaxIdx;
end;

function CheckOneN(n : tElem;var num:tNUm):Int32;
var
  MaxIdx,DgtSum,i,lmt,lmt_n: Uint32;
begin
  result := 0;
  MaxIdx := 0;
  Num[0] := n;
  //power of 10 -> always stays 1
  if GetDgtSum(Num,MaxIdx) = 1  then
    EXIT;
  //check stop limits by count of decimal places
  lmt := trunc(ln(n)/ln(10))+1;
  case lmt of
    1: lmt := 9*n;
    2: lmt := 3*n;
    3: lmt := 2*n;
    4: lmt := 5*n DIV 4;
  else
    lmt := 9*n DIV 8;
  end;
  lmt_n := n;
  i := 2;
  repeat
    MaxIdx := getNextPot(n,MaxIdx,num);
    if MaxIDx >= ElemCount then
      BREAK;
    DgtSum := GetDgtSum(num,MaxIDx);
    if DgtSum = n  then
    begin
      foundPot[result] := i;
      result += 1;
      lmt_n := foundPot[0] +144;// til 90000
    end;
    if DgtSum> lmt  then
      BREAK;
    inc(i);
  until i> lmt_n;
  if MaxIDx >= ElemCount then
    writeln(n,' too small');
end;

var
  num : tNum;
  cnt,found: NativeInt;
  n : tElem;
Begin
  InitDgtSum;
  setlength(Num,ElemCount+1);

  writeln('First twenty-five integers that are equal to the digital sum of that integer raised to some power: ');
  cnt := 0;
  n := 2;
  repeat
    inc(n);
    found:= CheckOneN(n,num);
    if found >0 then
    begin
      OutFound(n,found);
      inc(cnt);
    end;
  until cnt>25;

  writeln;
  writeln('First 100 that satisfy that condition in three or more ways:');
  cnt := 0;
  n := 2;
  repeat
    inc(n);
    found:= CheckOneN(n,num);
    if found >=3 then
    begin
      OutFound(n,found);
      inc(cnt);
    end;
  until cnt>=32;//cnt>=100;
end.
{-------------------------------------------------------------- 47 extra-primes}
program SpecialPrimes;
// modified smarandache
{$IFDEF FPC}{$MODE DELPHI}{$OPTIMIZATION ON,ALL}{$ENDIF}
{$IFDEF WINDOWS}{$APPTYPE CONSOLE}{$ENDIF}
uses
  sysutils;
const
  Digits : array[0..3] of Uint32 = (2,3,5,7);

var
//circular buffer
  Last64 : array[0..63] of Uint64;
  cnt,Limit : NativeUint;
  LastIdx: Int32;

procedure OutLast(i:Int32);
var
  idx: Int32;
begin
  idx := LastIdx-i;
  If idx < Low(Last64) then
    idx += High(Last64)+1;
  For i := i downto 1 do
  begin
    write(Last64[idx]:12);
    inc(idx);
    if idx > High(Last64) then
      idx := Low(Last64);
  end;
  writeln;
end;

function isSmlPrime64(n:UInt32):boolean;inline;
//n must be >=0 and <=180 = 20 times digit 9, uses 80x86 BIT TEST
begin
  EXIT(n in [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,
             79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,
             157,163,167,173,179])
end;

function isPrime(n:UInt64):boolean;
const
  deltaWheel : array[0..7] of byte =( 2, 6, 4, 2, 4, 2, 4, 6);
var
  p : NativeUint;
  WheelIdx : Int32;
begin
  if n < 180 then
    EXIT(isSmlPrime64(n));

  result := false;

  if n mod 2 = 0 then EXIT;
  if n mod 3 = 0 then EXIT;
  if n mod 5 = 0 then EXIT;

  p := 1;
  WheelIdx := High(deltaWheel);
  repeat
    inc(p,deltaWheel[WheelIdx]);
    if p*p > n then
      BREAK;
    if n mod p = 0 then
      EXIT;
    dec(WheelIdx);
    IF WheelIdx< Low(deltaWheel) then
      wheelIdx := High(deltaWheel);
  until false;
  result := true;
end;

procedure Check(n:NativeUint);

Begin
  if isPrime(n) then
  begin
    Last64[LastIdx] := n;
    inc(LastIdx);
    If LastIdx>High(Last64) then
      LastIdx := Low(Last64);
    inc(cnt);
    IF (n < 10000) then
    Begin
      write(n:5,',');
      if cnt mod 10 = 0 then
        writeln;
      if cnt = 36 then
        writeln;
    end
    else
      IF n > Limit then
      Begin
        OutLast(7);
        Limit *=10;
      end;
   end;
end;

var
  i,j,pot10,DgtLimit,n,DgtCnt,v : NativeUint;
  dgt,
  dgtsum : Int32;
Begin
  Limit := 100000;
  cnt := 0;
  LastIdx := 0;
//Creating the numbers not the best way but all upto 11 digits take 0.05s
//here only 9 digits
  i := 0;
  pot10 := 1;
  DgtLimit := 1;
  v := 4;
  repeat
    repeat
     j := i;
     DgtCnt := 0;
     pot10 := 1;
     n := 0;
     dgtsum := 0;
     repeat
       dgt := Digits[j MOD 4];
       dgtsum += dgt;
       n += pot10*Dgt;
       j := j DIV 4;
       pot10 *=10;
       inc(DgtCnt);
     until DgtCnt = DgtLimit;
     if isPrime(dgtsum) then   Check(n);
     inc(i);
   until i=v;
   //one more digit
   v *=4;
   i :=0;
   inc(DgtLimit);
 until DgtLimit= 12;
 inc(LastIdx);
 OutLast(7);
 writeln('count: ',cnt);
end.
{---------------------------------------------------- 48 extract-file-extension}
Program Extract_file_extension;

{FreePascal has the built-in function ExtractFileExt which returns the file extension.
* it does need charachters before the period to return the proper extension and it returns
* the extension including the period}

Uses character,sysutils;

Const arr : array of string = ('http://example.com/download.tar.gz','CharacterModel.3DS','.desktop',
                               'document','document.txt_backup','/etc/pam.d/login');

Function extractextension(fn: String): string;
Var
  i: integer;
Begin
  fn := 'prefix' + fn; {add charachters before the period}
  fn := ExtractFileExt(fn);
  For i := 2 to length(fn) Do {skip the period}
    If Not IsLetterOrDigit(fn[i]) Then exit('');
 extractextension := fn;
End;

Var i : string;
Begin
  For i In arr Do
    writeln(i:35,' -> ',extractextension(i))
End.

{-------------------------------------------- 49 fairshare-between-two-and-more}
program Fairshare;
{$IFDEF FPC}{$MODE Delphi}{$Optimization ON,ALL}{$ENDIF}
{$IFDEF WINDOWS}{$APPTYPE CONSOLE}{$ENDIF}
uses
  sysutils;
const
  maxDigitCnt = 32;
type
  tdigit  = Uint32;
  tDgtSum = record
              dgts   : array[0..maxDigitCnt-1] of tdigit;
              dgtNum : Uint64;
              dgtsum : Uint64;//maxValue maxDigitCnt*(dgtBase-1)
              dgtBase,
              dgtThue : tDigit;
            end;
procedure OutDgtSum(const ds:tDgtSum);
var
  i : NativeInt;
Begin
  with ds do
  Begin
    writeln(' base ',dgtBase,' sum of digits :  ',dgtSum,' dec number ',dgtNum);
    i := Low(dgts);
    repeat
      write(dgts[i],'|');
      inc(i);
    until i > High(dgts);
    writeln;
  end;
end;

function IncDgtSum(var ds:tDgtSum):boolean;
//add 1 to dgts and corrects sum of Digits
//return false if overflow happens
var
  i,base_1 : NativeInt;
Begin
  with ds do
  begin
    i := High(dgts);
    base_1 := dgtBase-1;
    inc(dgtNum);
    repeat
      IF dgts[i] < base_1 then
      //add one and done
      Begin
        inc(dgts[i]);
        inc(dgtSum);
        BREAK;
      end
      else
      Begin
        dgts[i] := 0;
        dec(dgtSum,base_1);
      end;
      dec(i);
    until i < Low(dgts);
    dgtThue := dgtSum MOD (base_1+1);
    result := i < Low(dgts)
  end;
end;

procedure CheckBase_N_Turns( base:tDigit;turns:NativeUInt);
var
  actualNo :tDgtSum;
  slots : array of Uint32;
  pSlots : pUint32;
  i : NativeUInt;
Begin
  fillchar(actualNo,SizeOf(actualNo),#0);
  setlength(slots,base);
  pSlots := @slots[0];
  actualNo.dgtBase := Base;
  Write(base:3,' [');
  while turns>0 do
  Begin
    inc(pSlots[actualNo.dgtThue],turns);
    IncDgtSum(actualNo);
    dec(turns);
  end;
  For i := 0 to Base-1 do
    write(pSlots[i],' ');
  writeln(']');
end;

procedure SumBase_N_Turns( base:tDigit;turns:NativeUInt);
var
  actualNo :tDgtSum;
Begin
  fillchar(actualNo,SizeOf(actualNo),#0);
  actualNo.dgtBase := Base;
  Write(base:3,' [');
  while turns>1 do
  Begin
    write(actualNo.dgtThue,',');
    IncDgtSum(actualNo);
    dec(turns);
  end;
  writeln(actualNo.dgtThue,']');
end;

var
  turns : NativeInt;
Begin
  turns := 25;
  SumBase_N_Turns(2,turns);  SumBase_N_Turns(3,turns);
  SumBase_N_Turns(5,turns);  SumBase_N_Turns(11,turns);

  Writeln;
  writeln('Summing up descending numbers from turns downto 0');;
  turns := 2*3*5*11;
  Writeln(turns,' turns = 2*3*5*11');
  CheckBase_N_Turns(2,turns); CheckBase_N_Turns(3,turns);
  CheckBase_N_Turns(5,turns); CheckBase_N_Turns(11,turns);

  turns := sqr(2)*sqr(3)*sqr(5)*sqr(11);
  Writeln(turns,' turns = sqr(2)*sqr(3)*sqr(5)*sqr(11)');
  CheckBase_N_Turns(2,turns); CheckBase_N_Turns(3,turns);
  CheckBase_N_Turns(5,turns); CheckBase_N_Turns(11,turns);
end.
{------------------------------------------------------------ 50 fibonacci-heap}
program FibonacciHeap;
{$mode objfpc}

type
  // A pointer to a node in the heap
  PNode = ^TNode;

  // The node structure containing key, degree, parent, child, and linked nodes
  TNode = record
    Key: integer;      // The key value of the node
    Degree: integer;   // The degree of the node (number of children)
    Parent, Child, Left, Right: PNode;  // Pointers for the doubly linked circular list
    Marked: boolean;   // Whether the node is marked
  end;

  // Fibonacci Heap class definition
  TFibonacciHeap = class
  private
    MinNode: PNode;    // Points to the node with the minimum key in the heap
    NodeCount: integer; // The number of nodes in the heap
    function FindNode(Root: PNode; Key: integer): PNode; // Finds a node by key in the heap
    procedure PrintHeapRecursive(Node: PNode; Indent: integer); // Recursively prints the heap structure
  public
    constructor Create; // Constructor to initialize the heap
    procedure Insert(Key: integer); // Inserts a new key into the heap
    function FindMin: integer; // Returns the minimum key in the heap
    procedure DecreaseKey(Node: PNode; NewKey: integer); // Decreases the key of a given node
    function ExtractMin: integer; // Extracts the minimum key node from the heap
    procedure Delete(Key: integer); // Deletes a node with the specified key
    procedure Union(OtherHeap: TFibonacciHeap); // Unites the current heap with another heap
    procedure PrintHeap; // Prints the entire heap structure
  end;

  // Constructor: Initializes an empty Fibonacci heap
  constructor TFibonacciHeap.Create;
  begin
    MinNode := nil;  // No nodes initially
    NodeCount := 0;  // Node count is 0 initially
  end;

  // Inserts a new key into the Fibonacci heap
  procedure TFibonacciHeap.Insert(Key: integer);
  var
    NewNode: PNode;
  begin
    // Create a new node
    New(NewNode);
    NewNode^.Key := Key;
    NewNode^.Degree := 0;
    NewNode^.Parent := nil;
    NewNode^.Child := nil;
    NewNode^.Marked := False;
    NewNode^.Left := NewNode;
    NewNode^.Right := NewNode;

    // If the heap is empty, the new node becomes the MinNode
    if MinNode = nil then
      MinNode := NewNode
    else
    begin
      // Insert the new node into the root list
      NewNode^.Right := MinNode^.Right;
      NewNode^.Left := MinNode;
      MinNode^.Right^.Left := NewNode;
      MinNode^.Right := NewNode;

      // Update the MinNode if necessary
      if NewNode^.Key < MinNode^.Key then
        MinNode := NewNode;
    end;

    // Increase the node count
    Inc(NodeCount);
  end;

  // Finds the minimum key in the heap (returns -1 if empty)
  function TFibonacciHeap.FindMin: integer;
  begin
    if MinNode <> nil then
      Result := MinNode^.Key
    else
      Result := -1; // Return -1 for an empty heap
  end;

  // Decreases the key of a given node
  procedure TFibonacciHeap.DecreaseKey(Node: PNode; NewKey: integer);
  begin
    if Node = nil then Exit;

    // Check if the new key is smaller than the current key
    if NewKey > Node^.Key then
    begin
      Writeln('Error: New key is greater than current key.');
      Exit;
    end;

    // Update the key
    Node^.Key := NewKey;

    // If the node violates the heap property, move it to the root list
    if (Node^.Parent <> nil) and (Node^.Key < Node^.Parent^.Key) then
      Node^.Parent := nil;

    // Update the minimum node if necessary
    if Node^.Key < MinNode^.Key then
      MinNode := Node;
  end;

  // Extracts and returns the minimum key node from the heap
  function TFibonacciHeap.ExtractMin: integer;
  begin
    if MinNode = nil then
    begin
      Result := -1;
      Exit;
    end;

    Result := MinNode^.Key; // Return the key of the minimum node

    // If there is only one node, set MinNode to nil
    if MinNode^.Right = MinNode then
      MinNode := nil
    else
    begin
      // Remove the minimum node from the root list
      MinNode^.Left^.Right := MinNode^.Right;
      MinNode^.Right^.Left := MinNode^.Left;
      MinNode := MinNode^.Right; // Update MinNode to the next node
    end;

    // Decrease the node count
    Dec(NodeCount);
  end;

  // Finds a node by key starting from the root node
  function TFibonacciHeap.FindNode(Root: PNode; Key: integer): PNode;
  var
    Temp, ResultNode: PNode;
  begin
    Result := nil;
    if Root = nil then Exit;

    Temp := Root;
    repeat
      if Temp^.Key = Key then
      begin
        Result := Temp;
        Exit;
      end;

      // Recursively search children
      if Temp^.Child <> nil then
      begin
        ResultNode := FindNode(Temp^.Child, Key);
        if ResultNode <> nil then
        begin
          Result := ResultNode;
          Exit;
        end;
      end;

      // Move to the next node in the root list
      Temp := Temp^.Right;
    until Temp = Root;
  end;

  // Deletes a node by key by first decreasing its key to a very small value and then extracting it
  procedure TFibonacciHeap.Delete(Key: integer);
  var
    NodeToDelete: PNode;
  begin
    NodeToDelete := FindNode(MinNode, Key);
    if NodeToDelete <> nil then
    begin
      DecreaseKey(NodeToDelete, -MaxInt);  // Decrease key to the smallest possible value
      ExtractMin;  // Extract the node from the heap
    end;
  end;

  // Unites two Fibonacci heaps by merging their root lists
  procedure TFibonacciHeap.Union(OtherHeap: TFibonacciHeap);
  var
    Temp: PNode;
  begin
    if OtherHeap = nil then Exit;
    if OtherHeap.MinNode = nil then Exit;
    if MinNode = nil then
    begin
      MinNode := OtherHeap.MinNode;  // If current heap is empty, adopt the other heap's MinNode
      NodeCount := OtherHeap.NodeCount;
      Exit;
    end;

    // Merge the root lists of both heaps
    Temp := MinNode^.Right;
    MinNode^.Right := OtherHeap.MinNode^.Right;
    MinNode^.Right^.Left := MinNode;
    OtherHeap.MinNode^.Right := Temp;
    Temp^.Left := OtherHeap.MinNode;

    // Update the MinNode if necessary
    if OtherHeap.MinNode^.Key < MinNode^.Key then
      MinNode := OtherHeap.MinNode;

    // Adjust the node count
    Inc(NodeCount, OtherHeap.NodeCount);

    // Clear the other heap
    OtherHeap.MinNode := nil;
    OtherHeap.NodeCount := 0;
  end;

  // Recursive function to print the heap's structure
  procedure TFibonacciHeap.PrintHeapRecursive(Node: PNode; Indent: integer);
  var
    StartNode, Current: PNode;
    I: integer;
  begin
    if Node = nil then Exit;

    StartNode := Node;
    Current := Node;

    repeat
      // Indent and print the node key
      for I := 1 to Indent do
        Write('  ');
      Writeln(Current^.Key);

      // Print the children recursively
      if Current^.Child <> nil then
      begin
        for I := 1 to Indent do
          Write('  ');
        Writeln('Children of ', Current^.Key, ':');
        PrintHeapRecursive(Current^.Child, Indent + 2);
      end;

      // Move to the next node in the root list
      Current := Current^.Right;
    until Current = StartNode;
  end;

  // Prints the entire heap using recursion
  procedure TFibonacciHeap.PrintHeap;
  begin
    if MinNode = nil then
    begin
      Writeln('Heap is empty.');
      Exit;
    end;

    Writeln('Fibonacci Heap:');
    PrintHeapRecursive(MinNode, 0);  // Start printing from the MinNode
    writeln;
  end;

var
  Heap1, Heap2: TFibonacciHeap;
  node: PNode;
begin
  // Create two Fibonacci heaps
  Heap1 := TFibonacciHeap.Create;
  Heap2 := TFibonacciHeap.Create;

  // Insert nodes into Heap1
  Heap1.Insert(10);
  Heap1.Insert(5);
  Heap1.Insert(20);
  Heap1.Insert(99);

  writeln('Heap 1 minimum = ', Heap1.FindMin);
  Heap1.PrintHeap;

  writeln('Heap 1 extract minimum = ', Heap1.ExtractMin);
  Heap1.PrintHeap;

  // Decrease key in Heap1
  node := Heap1.FindNode(Heap1.MinNode, 20);
  Heap1.DecreaseKey(node, 3);
  writeln('Heap 1 after changing key 20 to 3');
  Heap1.PrintHeap;

  // Insert nodes into Heap2
  Heap2.Insert(15);
  Heap2.Insert(2);

  writeln('Heap 2 before union:');
  Heap2.PrintHeap;

  // Perform union of Heap1 and Heap2
  Heap1.Union(Heap2);

  writeln('Heap after union:');
  Heap1.PrintHeap;

  // Free the heaps
  Heap1.Free;
  Heap2.Free;
end.


{------------------------------------------------ 51 find-common-directory-path}
Program CommonPaths;
{$mode ObjFPC}{$H+}
uses
  Classes, Math;

const
  Paths: array of string = ('/home/user1/tmp/coverage/test',
                            '/home/user1/tmp/covert/operator',
                            '/home/user1/tmp/coven/members');

function FindShortestCommonPath(arr: array of TStringList; shortestPath: Integer): string;
var
  i, j: Integer;
  commonStr: string;
begin
  Result := '/';
  if Length(arr) = 0 then
    Exit;
  for j := 0 to shortestPath - 1 do
  begin
    commonStr := arr[0][j];
    for i := 1 to High(arr) do
    begin
      if arr[i][j] <> commonStr then
        Exit(Result);
    end;
    Result := Result + commonStr + '/';
  end;
end;
var
  arr: array of TStringList;
  i, shortestpath: uint32;

begin
  shortestpath := High(uint32);
  SetLength(arr, Length(paths));

  for i := 0 to High(paths) do
  begin
    arr[i] := TStringList.Create;
    arr[i].AddDelimitedText(paths[i], '/', false);
    arr[i].Delete(0);
    shortestpath := Min(shortestpath, arr[i].Count);
  end;

  Writeln(FindShortestCommonPath(arr, shortestpath));

  for i := 0 to High(paths) do
    arr[i].Free;
end.
{----------------------- 52 find-largest-left-truncatable-prime-in-a-given-base}
program TruncatablePrimes;
//https://rosettacode.org/wiki/Find_largest_left_truncatable_prime_in_a_given_base
{$IFDEF FPC}{$MODE DELPHI}{$OPTIMIZATION ON,ALL}{$ENDIF}
{$IFDEF Windows}{$APPTYPE CONSOLE}{$ENDIF}
uses
  sysutils,gmp;// http://rosettacode.org/wiki/Extensible_prime_generator#Pascal
const
  DgtToChar : array[0..10+26+26-1] of char =
  '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  MaxDgtCnt = 50;
var
  pot_Base : array[0..MaxDgtCnt] of mpz_t;
  Numbers  : array[0..MaxDgtCnt] of mpz_t;
  MAX_Found  : mpz_t;
  Digits,
  Digits_Found: array[0..MaxDgtCnt] of byte;
  gbl_Count,
  Max_Pot : Uint32;

procedure InitAll;
var
  pot : mpz_t;
  MaxBase,
  i : integer;
begin
  MaxBase := MaxDgtCnt;
  mpz_init_set_ui(pot,1);
  For i := 0 to High(pot_Base) do
  begin
    mpz_mul_ui(pot,pot,MaxBase);
    mpz_init_set(pot_Base[i],Pot);
    mpz_init_set(Numbers[i],Pot);
  end;
  mpz_init_set(MAX_Found,pot);
  mpz_set_ui(MAX_Found,0);
  mpz_clear(pot);
end;

procedure ClearAll;
var
  i : integer;
begin
  For i := High(pot_Base) downto 0  do
  begin
    mpz_clear(pot_Base[i]);
    mpz_clear(Numbers[i]);
  end;
  mpz_clear(MAX_Found);
end;

procedure InitPot(Base : byte);
var
  pot : mpz_t;
  i : integer;
begin
  mpz_init_set_ui(pot,1);
  For i := 0 to High(pot_Base) do
  begin
    mpz_set(pot_Base[i],Pot);
    mpz_mul_ui(pot,pot,base);
  end;
  mpz_clear(pot);
  mpz_set_ui(MAX_Found,0);
  Fillchar(Digits,SizeOf(Digits),#0);
end;

procedure Next_Number(Base,pot : byte);
var
  i : integer;
begin
  inc(gbl_Count);
  if pot = 0 then
    mpz_set_ui(Numbers[pot],0)
  else
    mpz_set(Numbers[pot],Numbers[pot-1]);
  For i := 1 to Base-1 do
  begin
    Digits[pot] := i;
    mpz_add(Numbers[pot],Numbers[pot],pot_Base[pot]);
    if mpz_probab_prime_p(Numbers[pot],5)>0 then
    Begin
      IF mpz_cmp(MAX_Found,Numbers[pot])<0 then
      Begin
        mpz_set(Max_Found,Numbers[pot]);
        Max_pot := pot;
        Digits_Found := Digits;
      end;
      Next_Number(Base,pot+1);
    end;
  end;
end;

var
  base,i : NativeUint;
  sol : pChar;
Begin
  GetMem(sol,10000);
  InitAll;
  try
  For base := 3 to 31 do
  begin
    IF (Base>17) AND Not(Odd(Base)) then
      continue;
    InitPot(base);
    gbl_Count := 0;
    write('Base ',base:2,' digits ');
    Next_Number(base,0);
    write(Max_Pot+1:4,' checks ',gbl_Count:8,' ');
    if mpz_fits_ulong_p(Max_Found)<> 0 then
      write(mpz_get_ui(Max_Found),'  ')
    else
    Begin
      mpz_get_str(Sol,10,Max_Found);
      write(Sol,'  ');
    end;
    For i := Max_Pot downto 0 do
      write(DgtToChar[Digits_Found[i]]);
    writeln;
  end;
  except
    ClearAll;
  end;
  ClearAll;
  FreeMem(sol);
end.
{--------------------------- 53 find-prime-n-such-that-reversed-n-is-also-prime}
Type Tboolarr = array Of boolean;

Const MAX = 1000;
Function SieveOfEratosthenes(limit: Integer): Tboolarr;
Var
  sieve: Tboolarr;
  i, j: Integer;
Begin
  SetLength(sieve, limit + 1);
  sieve[2] := True;
  For i := 3 To limit Do
    sieve[i] := (i Mod 2 <> 0);
  For i := 3 To Trunc(Sqrt(limit)) Do
    Begin
      If sieve[i] Then
        Begin
          j := i * i;
          While j <= limit Do
            Begin
              sieve[j] := False;
              Inc(j, 2 * i);
            End;
        End;
    End;
  SieveOfEratosthenes := sieve;
End;

Function ReverseNumber(number: Integer): Integer;
Var
  reversed: Integer;
Begin
  reversed := 0;
  While number <> 0 Do
    Begin
      reversed := reversed * 10 + (number Mod 10);
      number := number Div 10;
    End;
  ReverseNumber := reversed;
End;

Var
  primes: Tboolarr;
  i: Integer;
Begin
  primes := SieveOfEratosthenes(MAX);
  For i := 2 To 500 Do
    Begin
      If primes[i] And Primes[ReverseNumber(i)] Then
        Write(i,' ');
    End;
End.
{--------------------------------------------------------- 54 forbidden-numbers}
program ForbiddenNumbers;
{$IFDEF FPC}{$MODE DELPHI}{$OPTIMIZATION ON,ALL}{$ENDIF}
{$IFDEF WINDOWS}{$APPTYPE CONSOLE}{$ENDIF}
uses
  sysutils,strutils;

function isForbidden(n:NativeUint):boolean;inline;
// no need for power or div Only shr & AND when using Uint
// n > 7 => if n <= 7 -> only 4/0 would div 4 -> no forbidden number
Begin
  while (n > 7) AND (n MOD 4 = 0) do
    n := n DIV 4;
  result := n MOD 8 = 7;
end;

function CntForbiddenTilLimit(lmt:NativeUint):NativeUint;
//forNmb = 4^i * (8*j + 7) | i,j >= 0
//forNmb = Power4 *  8*j + Power4 * 7
//forNmb =  delta* j     + n
var
  Power4,delta,n : NativeUint;
begin
 result := 0;
 power4 := 1;
 repeat
   delta := Power4*8;// j = 1
   n := Power4*7;
   if n > lmt then
     Break;
   //max j to reach limit
   inc(result,(lmt-n) DIV delta+1);
   Power4 *= 4;
 until false;
end;

var
  lmt,n,cnt: NativeUint;
BEGIN
  writeln('First fifty forbidden numbers:');
  n := 1;
  lmt := 0;
  repeat;
    if isForbidden(n) then
    Begin
      write(n:4);
      inc(lmt);
      if LMT MOD 20 = 0 THEN
        writeln;
    end;
    n +=1;
  until lmt >= 50;
  writeln;
  writeln;

  writeln('count of forbidden numbers below iterative');
  n := 1;
  cnt := 0;
  lmt := 5;
  repeat
    repeat;
      //if isForbidden(n) then cnt+=1 takes to long  100% -> 65% of time
      inc(cnt,ORD(isForbidden(n)));
      n += 1;
    until n >= lmt;
    writeln(Numb2USA(IntToStr(lmt)):30,Numb2USA(IntToStr(Cnt)):25);
    lmt *= 10;
  until lmt > 500*1000*1000;
  writeln;

  writeln('count of forbidden numbers below ');
  lmt := 5;
  repeat
    writeln(Numb2USA(IntToStr(lmt)):30,Numb2USA(IntToStr(CntForbiddenTilLimit(lmt))):25);
    lmt *= 10;
  until lmt > High(lmt) DIV 4;
END.
{------------------------------------------------------------ 55 gamma-function}
program GammaTest;
{$mode objfpc}{$H+}
uses SysUtils;

function Gamma( x : extended) : extended;
const COF : array [0..14] of extended =
(  0.999999999999997092, // may as well include this in the array
  57.1562356658629235,
 -59.5979603554754912,
  14.1360979747417471,
 -0.491913816097620199,
  0.339946499848118887e-4,
  0.465236289270485756e-4,
 -0.983744753048795646e-4,
  0.158088703224912494e-3,
 -0.210264441724104883e-3,
  0.217439618115212643e-3,
 -0.164318106536763890e-3,
  0.844182239838527433e-4,
 -0.261908384015814087e-4,
  0.368991826595316234e-5);
const
  K = 2.5066282746310005;
  PI_OVER_K = PI / K;
var
  j : integer;
  tmp, w, ser : extended;
  reflect : boolean;
begin
  reflect := (x < 0.5);
  if reflect then w := 1.0 - x else w := x;
  tmp := w + 5.2421875;
  tmp := (w + 0.5)*Ln(tmp) - tmp;
  ser := COF[0];
  for j := 1 to 14 do ser := ser + COF[j]/(w + j);
  try
    if reflect then
      result := PI_OVER_K * w * Exp(-tmp) / (Sin(PI*x) * ser)
    else
      result := K * Exp(tmp) * ser / w;
  except
    raise SysUtils.Exception.CreateFmt(
        'Gamma(%g) is undefined or out of floating-point range', [x]);
  end;
end;

// Main routine for testing the Gamma function
var
    x, k : extended;
begin
  WriteLn( 'Is it seamless at x = 1/2 ?');
  x := 0.49999999999999;
  WriteLn( SysUtils.Format( 'Gamma(%g) = %g', [x, Gamma(x)]));
  x := 0.50000000000001;
  WriteLn( SysUtils.Format( 'Gamma(%g) = %g', [x, Gamma(x)]));
  WriteLn( 'Test a few values:');
  WriteLn( SysUtils.Format( 'Gamma(1)   = %g', [Gamma(1)]));
  WriteLn( SysUtils.Format( 'Gamma(2)   = %g', [Gamma(2)]));
  WriteLn( SysUtils.Format( 'Gamma(3)   = %g', [Gamma(3)]));
  WriteLn( SysUtils.Format( 'Gamma(10)  = %g', [Gamma(10)]));
  WriteLn( SysUtils.Format( 'Gamma(101) = %g', [Gamma(101)]));
  WriteLn( '      100! = 9.33262154439442E157');
  WriteLn( SysUtils.Format( 'Gamma(1/2) = %g', [Gamma(0.5)]));
  WriteLn( SysUtils.Format( 'Sqrt(pi)   = %g', [Sqrt(PI)]));
  WriteLn( SysUtils.Format( 'Gamma(-7/2)       =  %g', [Gamma(-3.5)]));
(*
  Note here a bug or misfeature in Lazarus (doesn't occur in Delphi):
  Putting (16.0/105.0)*Sqrt(PI) does not give the required precision.
  We have to explicitly define the integers as extended floating-point.
*)
  k := extended(16.0)/extended(105.0);
  WriteLn( SysUtils.Format( ' (16/105)Sqrt(pi) =  %g', [k*Sqrt(PI)]));
  WriteLn( SysUtils.Format( 'Gamma(-9/2)       = %g', [Gamma(-4.5)]));
  k := extended(32.0)/extended(945.0);
  WriteLn( SysUtils.Format( '-(32/945)Sqrt(pi) = %g', [-k*Sqrt(PI)]));
end.
{--------------------------------------------- 56 gauss-jordan-matrix-inversion}
program MatrixInverse;
{$mode ObjFPC}{$H+}

const
  MATRIX_1: array of array of Real = ((1, 2, 3),
                                      (4, 1, 6),
                                      (7, 8, 9));

  MATRIX_2: array of array of Real = ((3.0, 1.0, 5.0, 9.0, 7.0),
                                      (8.0, 2.0, 8.0, 0.0, 1.0),
                                      (1.0, 7.0, 2.0, 0.0, 3.0),
                                      (0.0, 1.0, 7.0, 0.0, 9.0),
                                      (3.0, 5.0, 6.0, 1.0, 1.0));

type
  Matrix = array of array of Real;

function PopulateMatrix(A: Matrix; Order: Integer): Matrix;
var
  i, j: Integer;
begin
  SetLength(Result, Succ(Order), Succ(Order * 2));
  for i := 0 to Pred(Order) do
    for j := 0 to Pred(Order) do
      Result[i + 1, j + 1] := A[i, j];
end;

procedure PrintMatrix(const A: Matrix);
var
  i, j, Order: Integer;
begin
  Order := Length(A);
  for i := 0 to Pred(Order) do
  begin
    for j := 0 to Pred(Order) do
      Write(A[i, j]:8:4);
    WriteLn;
  end;
  WriteLn;
end;

procedure InterchangeRows(var A: Matrix; Order: Integer; Row1, Row2: Integer);
var
  j: Integer;
  temp: Real;
begin
  for j := 1 to 2 * Order do
  begin
    temp := A[Row1, j];
    A[Row1, j] := A[Row2, j];
    A[Row2, j] := temp;
  end;
end;

procedure DivideRow(var A: Matrix; Order: Integer; Row: Integer; Divisor: Real);
var
  j: Integer;
begin
  for j := 1 to 2 * Order do
    A[Row, j] := A[Row, j] / Divisor;
end;

procedure SubtractRows(var A: Matrix; Order: Integer; Row1, Row2: Integer; Multiplier: Real);
var
  j: Integer;
begin
  for j := 1 to 2 * Order do
    A[Row1, j] := A[Row1, j] - Multiplier * A[Row2, j];
end;

function GaussJordan(B: Matrix): Matrix;
var
  i, j, Order: Integer;
  Pivot, Multiplier: Real;
  A: Matrix;
begin
  Order := Length(B);
  SetLength(Result, Order, Order);
  A := PopulateMatrix(B, Order);

  // Create the augmented matrix
  for i := 1 to Order do
    for j := Order + 1 to 2 * Order do
      if j = (i + Order) then
        A[i, j] := 1;

  // Interchange rows if needed
  for i := Order downto 2 do
    if A[i - 1, 1] < A[i, 1] then
      InterchangeRows(A, Order, i - 1, i);

  // Perform Gauss-Jordan elimination
  for i := 1 to Order do
  begin
    Pivot := A[i, i];
    DivideRow(A, Order, i, Pivot);
    for j := 1 to Order do
      if j <> i then
      begin
        Multiplier := A[j, i];
        SubtractRows(A, Order, j, i, Multiplier);
      end;
  end;

  for i := 0 to Pred(Order) do
    for j := 0 to Pred(Order) do
      Result[i, j] := A[Succ(i), Succ(j) + Order];
end;

begin
  writeln('== Original Matrix ==');
  PrintMatrix(MATRIX_1);
  writeln('== Inverse Matrix ==');
  PrintMatrix(GaussJordan(MATRIX_1));

  writeln('== Original Matrix ==');
  PrintMatrix(MATRIX_2);
  writeln('== Inverse Matrix ==');
  PrintMatrix(GaussJordan(MATRIX_2));
end.
{-------------------------------------------------------------- 57 generic-swap}
{$ifdef fpc}{$mode delphi}{$H+}{$endif}
{ note this is compiled with delphi mode but will only compile in Free Pascal }
{ Delphi doesn't support this syntax                                          }
procedure swap<T>(var left,right:T);
var
  temp:T;
begin
  temp:=left;
  left:=right;
  right:=temp;
end;
var
  a:string = 'Test';
  b:string = 'me';
begin
  writeln(a:6,b:6);
  swap<string>(a,b);
  writeln(a:6,b:6);
end.
{-------------------------------------------------------------- 58 gospers-hack}
program Gosper;

function NextGosper(mySet:int32):int32;
var
  c,r:Int32;
begin
  c := mySet AND (- mySet);
  r := mySet + c;
  NextGosper := (((r XOR mySet) shr 2)DIV c) OR r;
end;

const
  MAXCnt = 10;
var
  BitCnt,
  mySet,
  cnt :Int32;
BEGIN
  For BitCnt := 1 to 4 do
  Begin
    //minimal number with BitCnt bits set
    mySet := (1 shl BitCnt)-1;
    write(myset : 3,': ');
    For Cnt := 1 to MAXCnt-1 do
    Begin
      mySet := NextGosper(mySet);
      write(mySet,',');
    End;
    mySet := NextGosper(mySet);
    writeln(mySet);
  End;
END.
{--------------------------------------------------------- 59 haversine-formula}
program HaversineDemo;
uses
  Math;

function HaversineDistance(const lat1, lon1, lat2, lon2:double):double;inline;
const
  rads = pi / 180;
  dia  = 2 * 6372.8;
begin
  HaversineDistance := dia * arcsin(sqrt(sqr(cos(rads * (lon1 - lon2)) * cos(rads * lat1)
                     - cos(rads * lat2)) + sqr(sin(rads * (lon1 - lon2))
                     * cos(rads * lat1)) + sqr(sin(rads * lat1) - sin(rads * lat2))) / 2);
end;

begin
  Writeln('Haversine distance between BNA and LAX: ', HaversineDistance(36.12, -86.67, 33.94, -118.4):7:2, ' km.');
end.
{---------------------------------------------------------- 60 hello-world-text}
PROGRAM HelloWorld ;

{$APPTYPE CONSOLE}

(*)

        https://www.freepascal.org/advantage.var

(*)

USES

    crt;

BEGIN

  WriteLn ( 'Hello world!' ) ;

END.
{------------------------------------------------------------------ 61 hex-dump}
program HEXDUMP;
{$MODE DELPHI}{$OPTIMIZATION ON,ALL}

type
  tByteToHexTbl = array[0..256*2-1] of AnsiChar;
  tByteToBinTbl = Array[0..256-1] of Uint64;
  tOutChar = array[0..255] of AnsiChar;
const
    TestUTF8STring = 'Rosettacode is a programming crestomathy site 😀.    🍨 👨‍👩‍👦 ⚽ ¯\_(ツ)_/¯';
//  Hex_NUl_Format = ' 00000000 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|';
    Hex_NUl_Format = '                                                            |                |';
    cHexOfsText = 61; //                                                           ^
    cOneRowHexBlock = 16;

//  Bin_NUl_Format = ' 00000000  00000000 00000000 00000000 00000000 00000000 00000000   |      |';
    Bin_NUl_Format = '                                                                   |      |';
    cBinOfsText = 68; //                                                                  ^
    cOneRowBinBlock = 6;

    LCM_BinHex = cOneRowBinBlock*cOneRowHexBlock DIV 2;
    cWantedSize = 256;
    cBufBlockSize = cWantedSize;//((cWantedSize -1) DIV LCM_BinHex)*LCM_BinHex;

var
  FileBuf: array[0..cBufBlockSize-1] of byte;
  ByteToBinTbl :tByteToBinTbl;
  ByteToHexTbl : tByteToHexTbl;

  OutChar :tOutChar;
  OutHexString : AnsiString;
  OutBinString : AnsiString;
  StartHex,EndHex:AnsiString;
  FileToView: file;

  procedure InitOutChar(var tbl:tOutChar);
  var
    i: Int32;
  begin
    fillchar(tbl,SizeOf(tbl),'.');
    For i := 32 to 127 do
      tbl[i] := AnsiChar(i);
  end;

  procedure InitByteToBin(var tbl:tByteToBinTbl);
  var
//  Test: String[8];
    Lmt,Mask,idx,idx1 : Uint64;
  begin
    Mask := Ord('0');
    idx := 8;
    repeat
      Mask := Mask shl idx + Mask;
      idx +=idx;
    until idx >= 64;
    TBL[0] := Mask;
//  TBL[0] = '00000000'
    Lmt := 1;
    //little endian
    Mask := 1 shl 56;
    //big endian  Mask := 1;
    repeat
      idx := 0;
      idx1 := Lmt;
      repeat
        Tbl[idx1] := tbl[idx] OR Mask;// set Bit "0" ->"1"
        inc(idx);
        inc(idx1);
      until idx = Lmt;
      //little endian
      Mask := Mask shr 8;
      //big endian  Mask := Mask shl 8;
      Lmt += Lmt;
   until Lmt >= 256;
  end;

  procedure InitByteToHexTbl(var tbl:tByteToHexTbl);
  const
    ConvTbl : array[0..15] of AnsiChar =
      ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F');
  var
    ch : AnsiChar;
    i,j,idx : Int32;
  begin
    idx := 0;
    For i := 0 to 15 do
    Begin
      ch := ConvTbl[i];
      For j := 0 to 15 do
      begin
        tbl[idx] := ch;
        tbl[idx+1] := ConvTbl[j];
        inc(idx,2);
      end;
    end;
  end;

  procedure Init;
  Begin
    InitByteToHexTbl(ByteToHexTbl);
    InitByteToBin(ByteToBinTbl);
    InitOutChar(OutChar);

    OutHexString := Hex_NUl_Format;
    uniquestring(OutHexString);

    OutBinString := Bin_NUl_Format;
    uniquestring(OutBinString);

    setlength(StartHex,8);
    uniquestring(StartHex);
    setlength(EndHex,8);
    uniquestring(EndHex);
  end;

  function InitFIle(var FileName:String):Boolean;
  var
    i : integer;
  Begin
    if FileName = '' then
    begin
      For i:=1 to ParamCount do
        FileName := ParamStr(1);
      if FileName = '' then
        EXIT(false);
    end;
    {$I-}
    Assign(FileToView, FileName);
    Reset(FileToView, 1);
    {$I+}
    if IoResult <> 0 then
       EXIT(false);
    Exit(true);
  end;

  procedure ByteHex2Str(value:NativeInt;p: pAnsiChar);inline;
  begin
    value := value AND $FF;
    value += value;
    p[0] := ByteToHexTbl[value];
    inc(value);
    p[1] := ByteToHexTbl[value];
  end;

  procedure LongHex2Str(Value: Int32;p: pAnsiChar);
  var
    val: byte;
  begin
    val := (Value AND $FF000000) shr 24;
    ByteHex2Str(Val,p);
    val := (Value AND $00FF0000) shr 16;
    ByteHex2Str(Val,@p[2]);
    val := (Value AND $0000FF00) shr  8;
    ByteHex2Str(Val,@p[4]);
    val := (Value AND $00000FF);
    ByteHex2Str(Val,@p[6]);
  end;

  procedure  OutOneHexRow(pB : pByte;currpos,readed: NativeInt);
  var
    pOutString : pAnsiChar;
    i,idx : Int32;
  Begin
    if readed<= 0 then
      EXIT;
//  OutHexString := Hex_NUl_Format;  uniquestring(OutHexString);
    move(Hex_NUl_Format[1],OutHexString[1],Length(Hex_NUl_Format));
    pOutString := @OutHexString[1];

    idx := 1;
    LongHex2Str(CurrPos,@pOutString[idx]);
    idx += 9;

    for I := 0 to cOneRowHexBlock-1 do
    begin
      if I < readed then
      begin
        ByteHex2Str(pB[I],@pOutString[idx]);
        idx+= 3;
      end
      else
        BREAK;
      if I = 7 then
        inc(idx);
    end;

    idx := cHexOfsText;
    for I := 0 to cOneRowHexBlock-1 do
    begin
      if I < readed then
        pOutString[idx+i] := OutChar[pB[i]]
      else
        BREAK;
     end;
   end;

  procedure OutHex(const pB : pByte;Ofs,StartIdx,ByteReaded: NativeINt);
  begin
    LongHex2Str(Ofs,pAnsiChar(StartHex));
    LongHex2Str(Ofs+ByteReaded,pAnsiChar(EndHex));
    writeln('From ',StartHex,' to ',EndHex);

    while byteReaded - StartIdx >= cOneRowHexBlock do
    begin
      OutOneHexRow(@pB[StartIdx],Ofs,cOneRowHexBlock);
      writeln(OutHexString);
      Inc(Ofs,cOneRowHexBlock);
      inc(StartIdx,cOneRowHexBlock);
    end;
    IF ByteReaded-StartIdx > 0 then
    begin
      OutOneHexRow(@pB[StartIdx],Ofs,ByteReaded-StartIdx);
      writeln(OutHexString);
    end;
  end;

 procedure  OutOneBinRow(pB : pByte;currpos,readed: NativeInt);
  var
    pOutString : pAnsiChar;
    i,idx : Int32;
  Begin
    if readed<= 0 then
      EXIT;
    move(Bin_NUl_Format[1],OutBinString[1],Length(Bin_NUl_Format));
    pOutString := @OutBinString[1];

    idx := 1;
    LongHex2Str(CurrPos,@pOutString[idx]);
    idx += 10;

    for I := 0 to cOneRowBinBlock-1 do
    begin
      if I < readed then
      begin
//      move(ByteToBinTbl[pB[I]],pOutString[idx],8);
        pUint64(@pOutString[idx])^ := ByteToBinTbl[pB[I]];
        idx+= 9;
      end
    end;

    idx := cBinOfsText;
    for I := 0 to cOneRowBinBlock-1 do
    begin
      if I < readed then
        pOutString[idx+i] := OutChar[pB[i]]
      else
        BREAK;
    end;
  end;

  procedure OutBin(const pB : pByte;Ofs,StartIdx,ByteReaded: NativeInt);
  begin
    LongHex2Str(Ofs,pAnsiChar(StartHex));
    LongHex2Str(Ofs+ByteReaded,pAnsiChar(EndHex));
    writeln('From ',StartHex,' to ',EndHex);

    while byteReaded - StartIdx >= cOneRowBinBlock do
    begin
      OutOneBinRow(@pB[StartIdx],Ofs,cOneRowBinBlock);
      writeln(OutBinString);
      Inc(Ofs,cOneRowBinBlock);
      inc(StartIdx,cOneRowBinBlock);
    end;
    IF ByteReaded-StartIdx > 0 then
    begin
      OutOneBinRow(@pB[StartIdx],Ofs,ByteReaded-StartIdx);
      writeln(OutBinString);
    end;
  end;

var
  TestString : UTF8String;
  FileName: string;
  currPos,ByteReaded,StartOfs: NativeInt;
begin
  Init;
// 'Rosettacode is a programming crestomathy site 😀.    🍨 👨‍👩‍👦 ⚽ ¯\_(ツ)_/¯';
  TestSTring := TestUTF8STring;
  uniquestring(TestString);
  ByteReaded := Length(TestString)+4;

  OutHex(@TestSTring[1],0,0,ByteReaded);
  writeln;
  OutHex(@TestSTring[1],17,17,28);
  writeln;
  OutBin(@TestSTring[1],0,0,ByteReaded);
  writeln;
  OutBin(@TestSTring[1],17,17,28);
  writeln;

  StartOfs:= 0;
  FileName := '';
  If InitFile(FileName) then
  Begin
    CurrPos :=StartOfs;
    while not EOF(FileToView) do
    begin
      BlockRead(FileToView, FileBuf, cBufBlockSize, ByteReaded);
      OutBin(@FileBuf,CurrPos,0,ByteReaded);
      Inc(CurrPos,cBufBlockSize);
    end;
    LongHex2Str(StartOfs,pAnsiChar(StartHex));
    LongHex2Str(FileSize(FileToView),pAnsiChar(EndHex));
    writeln('From ',StartHex,' to ',EndHex,' total');
    writeln;

    reset(FileToView,1);
    CurrPos :=StartOfs;
    while not EOF(FileToView) do
    begin
      BlockRead(FileToView, FileBuf, cBufBlockSize, ByteReaded);
      OutHex(@FileBuf,CurrPos,0,ByteReaded);
      Inc(CurrPos,cBufBlockSize);
    end;
    LongHex2Str(StartOfs,pAnsiChar(StartHex));
    LongHex2Str(FileSize(FileToView),pAnsiChar(EndHex));
    writeln('From ',StartHex,' to ',EndHex,' total');
    Close(FileToView);
  end;
end.
{--------------------------------------- 62 hickerson-series-of-almost-integers}
{$mode ObjFPC} {$H+}

Uses sysutils,math;

Function fact(n : integer): qword;
Begin
  If n <= 1 Then
    result := 1
  Else
    result := n * fact(n-1);
End;

Function hickerson(n : integer): extended;
Begin
  result := fact(n) / (2*power(ln(2),n+1));
End;

Function AlmostInteger(n : extended): boolean;

Var firstdec : integer;
Begin
  firstdec := trunc(n * 10) Mod 10;
  result := (firstdec = 0) Or (firstdec = 9);
End;

Var i : integer;
  hick : extended;

Begin
  For i := 1 To 17 Do
    Begin
      hick := hickerson(i);
      writeln('H(',i:2,') = ',hick:25:4,almostinteger(hick): 7);
    End;
End.
{---------------------------------------------------------------------- 63 iban}
{$mode objFPC}

uses
	// for delSpace function
	strUtils,
	// GNU multiple-precision library
	GMP;

var
	/// this trie contains the correct IBAN length depending on the country code
	IBANLengthInCountry: array['A'..'Z', 'A'..'Z'] of integer;

type
	/// Human-readable representation of an IBAN without spaces
	IBANRepresentation = string[34];

{
	determines whether an IBANRepresentation is technically potentially correct
	
	\param sample the human-readable IBAN representation
	\return \param sample constains less than the most detectable errors
}
function isLegal(sample: IBANRepresentation): Boolean;
	function checksumCorrect(sample: IBANRepresentation): Boolean;
		type
			digitSequence = string[68];
		function convertLetters(const sequence: IBANRepresentation): digitSequence;
		var
			i: integer;
			transliteration: string[2];
		begin
			// initialize length to zero
			result := '';
			
			for i := 1 to length(sequence) do
			begin
				// by default assume it is a Western-Arabic digit
				transliteration := sequence[i];
				
				// otherwise we’ll need to transliterate the Latin alphabet character
				if not (sequence[i] in ['0'..'9']) then
				begin
					writeStr(transliteration, ord(sequence[i]) - ord('A') + 10);
				end;
				
				// appending transliteration to result also changes the length field
				result := result + transliteration;
			end;
		end;
		var
			i, k: MPInteger;
		begin
			k := 97;
			
			// put first four characters toward end
			writeStr(sample, sample[5..length(sample)], sample[1..4]);
			// interpret converted string as integer to base 10
			Z_set_str(i, convertLetters(sample), 10);
			
			i := Z_mod(i, k);
			k := 1;
			checksumCorrect := Z_cmp(i, k) = 0;
		end;
	begin
		sample := upCase(sample);
		{$push}
			// just for emphasis: by default the FPC performs lazy evaluation
			{$boolEval off}
			isLegal := (length(sample) = IBANLengthInCountry[sample[1], sample[2]])
				and checksumCorrect(sample);
		{$pop}
	end;

// === MAIN ==============================================================
begin
	// for the sake of merely achieving the Rosetta Code Task
	IBANLengthInCountry['G', 'B'] := 22;
	
	// note, strings longer than 34 characters will be silently clipped
	writeLn(isLegal(delSpace('GB82 WEST 1234 5698 7654 32')));
end.
{------------------------------------------- 64 inconsummate-numbers-in-base-10}
program Inconsummate;
{$IFDEF FPC}
  {$MODE DELPHI}{$OPTIMIZATION ON,ALL}{$CODEALIGN proc=8,loop=1}
{$ENDIF}
uses
  sysutils;
const
  base = 10;
  DgtSumLmt = base*base*base*base*base;
type
  tDgtSum = array[0..DgtSumLmt-1] of byte;
var
  DgtSUm : tDgtSum;
  max: Uint64;
procedure Init(var ds:tDgtSum);
var
  i,l,k0,k1: NativeUint;
Begin
  For i := 0 to base-1 do
    ds[i] := i;
  k0 := base;
  repeat
    k1 := k0-1;
    For i := 1 to base-1 do
      For l := 0 to k1 do
      begin
        ds[k0] := ds[l]+i;
        inc(k0);
      end;
  until k0 >= High(ds);
end;


function GetSumOfDecDigits(n:Uint64):NativeUint;
var
  r,d: NativeUint;
begin
  result := 0;
  repeat
    r := n DIv DgtSumLmt;
    d := n-r* DgtSumLmt;
    result +=DgtSUm[d];
    n := r;
  until r = 0;
end;

function OneTest(n:Nativeint):Boolean;
var
  i,d : NativeInt;
begin
  result := true;
  d := n;
  For i := 1 TO 121 DO
  begin
    IF GetSumOfDecDigits(n)= i then
    Begin
      if i > max then
        max := i;
      Exit(false);
    end;
    n +=d;
  end;
end;

var
  d,
  cnt,lmt: Uint64;
begin
  Init(DgtSUm);
  cnt := 0;
  For d := 1 to 527 do//5375540350 do
  begin
    if OneTest(d) then
    begin
      inc(cnt);
      write(d:5);
      if cnt mod 10 = 0 then writeln;
    end;
  end;
  writeln;
  writeln('Count      Number(count) Maxfactor needed');
  cnt := 0;
  max := 0;
  lmt := 10;
  For d := 1 to 50332353 do // 5260629551 do
  begin
    if OneTest(d) then
    begin
      inc(cnt);
      if cnt = lmt then
      begin
       writeln(cnt:10,d:12,max:5);
       lmt *=10;
      end;
    end;
  end;
  writeln(cnt);
end.
{--------------------------------------------------- 65 integer-long-division-1}
PROGRAM Periode;
{$IFDEF FPC}  {$MODE Delphi} {$OPTIMIZATION ON,ALL} {$ENDIF}
{$IFDEF WINDOWS}{$Apptype Console}{$ENDIF}
uses
  sysutils;

const
  cTestVal : array[0..11] of LongInt = (2,5,3,7,13,17,60,149,555,625,5261,high(longInt));
  // don't try cBase= 7 for high(longInt) length of period=2147483647 -1
  cBase = 10;
  cLen = 80;// 1 shl 14 is much faster for high(longInt) 2.9 s -> 2.0 s

var
  pS : pAnsiChar;
  s : array of AnsiString;
  idxS,
  idxP : integer;

  function CheckMaxStartOfPeriod(dom:LongInt):longInt;
  var
    n : Int64;
    quot : longInt;
  Begin
    n := 1;
    result := 1;
    repeat
      n *=cbase;
      quot := n DIV dom;
      n -= dom*quot;
      if (n = 0) OR (quot<>0) then
        BREAK;
      inc(result);
    until false;
  end;

  procedure Xtend;
  begin
    idxS += 1;
    setlength(s,idxS+1);
    setlength(s[idxS],cLen);
    pS := @s[idxS][1];
    idxP := 0;
  end;

  procedure WritePeriod(nom:Int64;dom:LongInt);
  var
    remind  : Int64;
    quot,i : longInt;
  begin
    write(nom,'/',dom);
    quot := 0;
    if nom > dom then
    Begin
      quot := nom DIV dom;
      nom := nom -quot*dom;
    end;
    setlength(s,1);
    idxS := 0;
    s[idxS] := IntToStr(quot)+'.';
    idxP := length(s[idxS]);
    setlength(s[idxS],cLen);
    pS := @s[idxS][1];
    i := CheckMaxStartOfPeriod(dom);
    write(' Max start idx after "." = ',i);
    while i > 0 do
    Begin
      nom *=cbase;
      quot := nom DIV dom;
      nom -= dom*quot;
      pS[idxP] := chr(quot+Ord('0'));
      inc(idxP);// always < cLen
      dec(i);
      if (nom = 0)then
        BREAK;
    end;
    remind := nom;

    i := 0;
    while (nom<>0) do
    begin
      inc(i);
      nom *=cbase;
      quot := nom DIV dom;
      nom -= dom*quot;
      pS[idxP] := chr(quot+Ord('0'));
      inc(idxP);
      if idxP = cLen then
        Xtend;
      if (nom = remind) then
        BREAK;
    end;
    if nom <> 0 then
      write('  length of period : ',i);
    writeln;
    setlength(s[idxS],idxP);
    if idxS > 0 then
    Begin
      writeln(s[0]);
      if idxS>1 then
      begin
        s[idxS-1] += s[idxS];
        s[idxS] := copy(s[idxS-1],length(s[idxS-1])-cLen+1,cLen);
        writeln('..');
      end;
    end;
    writeln(s[idxS]);

    //delete
    for i := idxs downto 0 do
      setlength(s[i],0);
    setlength(s,0);
  end;

var
  i : longint;
BEGIN
  For i := Low(cTestVal) to High(cTestVal) do
  Begin
    WritePeriod(1,cTestVal[i]);
    writeln;
  end;
END.
{--------------------------------------------------- 66 integer-long-division-2}
PROGRAM Periode;
//https://entwickler-ecke.de/viewtopic.php?t=108866
//checking lenght and start period of 1/value
//using Euler Phi
{$IFDEF FPC}
  {$MODE Delphi}
  {$OPTIMIZATION ON,ALL}
{$else}
  {$Apptype Console}
{$ENDIF}
uses
  sysutils;

const
  cTestVal : array[0..11] of LongInt = (2,5,3,7,13,17,60,149,555,625,5261,High(longint));
  cBase = 10;
  PRIMFELDOBERGRENZE = 6542;
  {Das sind alle Primzahlen bis 2^16}
  {Das reicht fuer alle Primzahlen bis 2^32}
type
   tPrimFeld = array [1..PRIMFELDOBERGRENZE] of Word;
   tFaktorPotenz = record
                     Faktor,
                     Potenz  : DWord;
                   end;
   //2*3*5*7*11*13*17*19*23  *29 > DWord also maximal 9 Faktoren
   tFaktorFeld =  array [1..9] of TFaktorPotenz;//DWord
// tFaktorFeld =  array [1..15] of TFaktorPotenz;//QWord
   tFaktorisieren = class(TObject)
                      private
                        fFakZahl   : DWord;
                        fNominator : DWord;
                        fFakBasis  : DWord;
                        fFakAnzahl : Dword;
                        fAnzahlMoeglicherTeiler : Dword;
                        fEulerPhi  : DWORD;
                        fStartPeriode : DWORD;
                        fPeriodenLaenge  : DWORD;
                        fTeiler    : array of DWord;
                        fFaktoren  : tFaktorFeld;
                        fBasFakt   : tFaktorFeld;
                        fPrimfeld  : tPrimFeld;

                        procedure PrimFeldAufbauen;
                        procedure Fakteinfuegen(var Zahl:Dword;inFak:Dword);
                        function  BasisPeriodeExtrahieren(var inZahl:Dword):DWord;
                        procedure NachkommaPeriode(var OutText: String);
                      public
                        constructor create; overload;
                        function  Prim(inZahl:Dword):Boolean;
                        procedure AusgabeFaktorfeld(n : DWord);
                        procedure Faktorisierung (inZahl: DWord);
                        procedure TeilerErmitteln;
                        procedure PeriodeErmitteln(inZahl:Dword);
                        function BasExpMod( b, e, m : Dword) : DWord;

                     property
                        EulerPhi : Dword read fEulerPhi;
                     property
                        PeriodenLaenge: DWord read fPeriodenLaenge ;
                     property
                        StartPeriode: DWord read fStartPeriode ;
                    end;

constructor tFaktorisieren.create;
begin
  inherited;
  PrimFeldAufbauen;

  fFakZahl  := 0;
  fNominator := 1;
  fFakBasis := cBase;
  Faktorisierung(fFakBasis);
  fBasFakt := fFaktoren;

  fFakZahl := 0;
  fEulerPhi := 1;
  fPeriodenLaenge :=0;
  fFakZahl := 0;
  fFakAnzahl := 0;
  fAnzahlMoeglicherTeiler := 0;
end;

function tFaktorisieren.Prim(inZahl:Dword):Boolean;
{Testet auf PrimZahl}
var
  Wurzel,
  pos       : Dword;
Begin
  if fFakZahl = inZahl then
    begin
    result := (fAnzahlMoeglicherTeiler = 2);
    exit;
    end;
  result := false;
  if inZahl >1 then
    begin
    result := true;
    Pos := 1;
    Wurzel:= trunc(sqrt(inZahl));
    While fPrimFeld[Pos] <= Wurzel do
      begin
      if (inZahl mod fPrimFeld[Pos])=0 then
        begin
        result := false;
        break;
        end;
      inc(Pos);
      IF Pos > High(fPrimFeld) then
        break;
      end;
    end;
end;

Procedure tFaktorisieren.PrimFeldAufbauen;
{genearating list of primes}
const
  MAX = 65536;
var
  TestaufPrim,
  Zaehler,delta : Dword;

begin
Zaehler := 1;
fPrimFeld[Zaehler] := 2;
inc(Zaehler);
fPrimFeld[Zaehler] := 3;

delta := 2;
TestAufPrim:=5;
repeat
  if prim(TestAufPrim) then
    begin
    inc(Zaehler);
    fPrimFeld[Zaehler] := TestAufPrim;
    end;
  inc(TestAufPrim,delta);
  delta := 6-delta; // 2,4,2,4,2,4,2,
until (TestAufPrim>=MAX);

end; {PrimfeldAufbauen}

procedure tFaktorisieren.Fakteinfuegen(var Zahl:Dword;inFak:Dword);
var
  i : DWord;
begin
  inc(fFakAnzahl);
  with fFaktoren[fFakAnzahl] do
    begin
      fEulerPhi := fEulerPhi*(inFak-1);
    Faktor :=inFak;
    Potenz := 0;
    while (Zahl mod inFak) = 0 do
      begin
      Zahl := Zahl div inFak;
      inc(Potenz);
      end;
    For i := 2 to Potenz do
      fEulerPhi := fEulerPhi*inFak;
    end;
  fAnzahlMoeglicherTeiler:=fAnzahlMoeglicherTeiler*(1+fFaktoren[fFakAnzahl].Potenz);
end;

procedure tFaktorisieren.Faktorisierung (inZahl: DWord);
var
  j,
  og : longint;
begin
if fFakZahl = inZahl then
  exit;

fPeriodenLaenge := 0;
fFakZahl   := inZahl;
fEulerPhi  := 1;
fFakAnzahl := 0;
fAnzahlMoeglicherTeiler :=1;
setlength(fTeiler,0);

If inZahl < 2 then
  exit;
og := round(sqrt(inZahl)+1.0);
{Suche Teiler von inZahl}
for j := 1 to High(fPrimfeld) do
  begin
  If fPrimfeld[j]> OG then
    Break;
  if (inZahl mod fPrimfeld[j])= 0 then
    Fakteinfuegen(inZahl,fPrimfeld[j]);
  end;
If inZahl>1 then
  Fakteinfuegen(inZahl,inZahl);
TeilerErmitteln;
end; {Faktorisierung}

procedure tFaktorisieren.AusgabeFaktorfeld(n : DWord);
var
  i :integer;
begin
  if fFakZahl <> n then
    Faktorisierung(n);
  write(fAnzahlMoeglicherTeiler:5,' Faktoren ');

  For i := 1 to fFakAnzahl-1 do
    with fFaktoren[i] do
      IF potenz >1 then
        write(Faktor,'^',Potenz,'*')
      else
        write(Faktor,'*');
  with fFaktoren[fFakAnzahl] do
    IF potenz >1 then
      write(Faktor,'^',Potenz)
    else
      write(Faktor);
  writeln('  Euler Phi: ',fEulerPhi:12,PeriodenLaenge:12);
end;

procedure tFaktorisieren.TeilerErmitteln;
var
  Position : DWord;
  i,j : DWord;
  procedure FaktorAufbauen(Faktor: DWord;n: DWord);
  var
    i,
    Pot : DWord;
  begin
    Pot := 1;
    i := 0;
    repeat
      IF n > Low(fFaktoren) then
        FaktorAufbauen(Pot*Faktor,n-1)
      else
        begin
        FTeiler[Position] := Pot*Faktor;
        inc(Position);
        end;
      Pot := Pot*fFaktoren[n].Faktor;
      inc(i);
    until  i > fFaktoren[n].Potenz;
  end;

begin
  Position:= 0;
  setlength(FTeiler,fAnzahlMoeglicherTeiler);
  FaktorAufbauen(1,fFakAnzahl);
  //Sortieren
  For i := Low(fTeiler) to fAnzahlMoeglicherTeiler-2 do
    begin
    j := i;
    while (j>=Low(fTeiler)) AND (fTeiler[j]>fTeiler[j+1]) do
      begin
      Position := fTeiler[j];
      fTeiler[j] := fTeiler[j+1];
      fTeiler[j+1]:= Position;
      dec(j);
      end;
    end;
end;

function tFaktorisieren.BasisPeriodeExtrahieren(var inZahl:Dword):DWord;
var
 i,cnt,
 Teiler: Dword;
begin
  cnt := 0;
  result := 0;
  For i := Low(fBasFakt) to High(fBasFakt) do
    begin
    with fBasFakt[i] do
      begin
      IF Faktor = 0 then
        BREAK;
      Teiler := Faktor;
      For cnt := 2 to Potenz do
        Teiler := Teiler*Faktor;
      end;
    cnt := 0;
    while (inZahl<> 0) AND (inZahl mod Teiler = 0) do
      begin
      inZahl := inZahl div Teiler;
      inc(cnt);
      end;
    IF cnt > result then
      result := cnt;
    end;
end;

procedure tFaktorisieren.PeriodeErmitteln(inZahl:Dword);
var
  i,
  TempZahl,
  TempPhi,
  TempPer,
  TempBasPer: DWord;
begin
  Faktorisierung(inZahl);
  TempZahl := inZahl;
  //Die Basis_Nicht_Periode ermitteln
  TempBasPer := BasisPeriodeExtrahieren(TempZahl);
  TempPer := 0;
  IF TempZahl >1 then
    begin
    Faktorisierung(TempZahl);
    TempPhi := fEulerPhi;
    IF (TempPhi > 1) then
      begin
      Faktorisierung(TempPhi);
      i := 0;
      repeat
        TempPer := fTeiler[i];
        IF BasExpMod(fFakBasis,TempPer,TempZahl)= 1 then
          Break;
        inc(i);
      until i >= Length(fTeiler);
      IF i >= Length(fTeiler) then
        TempPer := inZahl-1;
      end;
    end;

  Faktorisierung(inZahl);
  fPeriodenlaenge := TempPer;
  fStartPeriode   := TempBasPer;
end;

procedure tFaktorisieren.NachkommaPeriode(var OutText: String);
var
  Rest,
  Rest1,
  Divi,
  base: Int64;
  i,
  limit : integer;

  pText : pChar;

  procedure Ziffernfolge(Ende: longint);
  //generate the digits in Base
  var
    j : longint;
  begin
    j := i-Ende;

    while j < 0 do
      begin
      Rest := Rest *base;
      Rest1:= Rest Div Divi;
      Rest := Rest-Rest1*Divi;//== Rest1 Mod Divi

      pText^ := chr(Rest1+Ord('0'));
      inc(pText);

      inc(j);
	  end;
	
	i := Ende;
  end;

begin
  limit:= fStartPeriode+fPeriodenlaenge;

  setlength(OutText,limit+2+2+5);
  OutText[1]:='0';
  OutText[2]:='.';
  pText := @OutText[3];

  Rest := fNominator;//1;
  Divi := fFakZahl;
  base := fFakBasis;

  i := 0;
  Ziffernfolge(fStartPeriode);
  if fPeriodenlaenge = 0 then
  begin
    setlength(OutText,fStartPeriode+2);
    EXIT;
  end;

  pText^ := '_'; inc(pText);
  Ziffernfolge(limit);
  pText^ := '_'; inc(pText);

  Ziffernfolge(limit+5);
end;

type
   tZahl   = integer;
   tRestFeld = array[0..31] of integer;

VAR
    F : tFaktorisieren;

function tFaktorisieren.BasExpMod( b, e, m : Dword) : DWord;
begin
  Result := 1;
  IF m = 0 then
    exit;
  Result := 1;
  while ( e > 0 ) do
    begin
    if (e AND 1) <> 0 then
      Result :=  (Result * int64(b)) mod m;
    b := (int64(b) * b ) mod m;
    e := e shr 1;
    end;
end;

procedure start;
VAR
  i,
  Divisor : DWord;
  Zeile : AnsiString;
  t1,t0: TDateTime;
BEGIN
  t0 := time;
  writeln('Calculate the length of period of 1/value');
  write('     value  start of   length of period     ');
  For i := low(cTestVal) to High(cTestVal) do
  begin
    writeln;
    Divisor := cTestVal[i];
    F.PeriodeErmitteln(Divisor);
	write(Divisor:10);
	if F.PeriodenLaenge > 0 then
      write(F.StartPeriode:10,F.PeriodenLaenge:12)
    else
      write(F.StartPeriode:10,'--':12);
    //only create small strings
    IF F.PeriodenLaenge < 1053 then
    begin
      F.NachkommaPeriode(Zeile);
      write('  ',Zeile);
    end;
    Zeile :='';
  end;
  t1 := time;
  writeln;
  writeln(FormatDateTime('HH:NN:SS.ZZZ',T1-T0),' time taken');
END;

BEGIN
  F := tFaktorisieren.create;
  start;
  writeln('Done');
  F.free;
  {$IFDEF WINDOWS}
  readln;
  {$ENDIF}
end.
{------------------------------------------------------ 67 jordan-p-lya-numbers}
program Jordan_Polya_Num;
{$IFDEF FPC}{$MODE DELPHI}{$OPTIMIZATION ON,ALL}{$COPERATORS ON}{$ENDIF}
{$IFDEF Windows}{$APPTYPE CONSOLE}{$ENDIF}
uses
  sysutils;
const
  MaxIdx = 3800;//7279 < 2^62
  maxFac = 25;//21!> 2^63
type
  tnum = Uint64;
  tpow= set of 0..31;// 1==2!^? ,2=3!^? 3=2!^?*3!^?
  tFac_mul = packed record
               fm_num : tnum;
               fm_pow : tpow;
               fm_high_idx : word;
               fm_high_pow : word;
             end;
  tpFac_mul = ^tFac_mul;
  tFacMulPow = array of tFac_mul;
  tFactorial = array[0..maxFac-2] of tnum;

var
  FacMulPowGes : tFacMulPow;
  Factorial: tFactorial;
  LastSearchFor :tFac_mul;
  dblLimit : tnum;

function CommatizeUint64(num:Uint64):AnsiString;
var
   fromIdx,toIdx :Int32;
Begin
  str(num,result);
  fromIdx := length(result);
  toIdx := fromIdx-1;
  if toIdx < 3 then
    exit;

  toIdx := 4*(toIdx DIV 3)+toIdx MOD 3 +1 ;
  setlength(result,toIdx);
  repeat
    result[toIdx]   := result[FromIdx];
    result[toIdx-1] := result[FromIdx-1];
    result[toIdx-2] := result[FromIdx-2];
    result[toIdx-3] := ',';
    dec(toIdx,4);
    dec(FromIdx,3);
  until FromIdx<=3;
end;

procedure Out_MulFac(idx:Uint32;const fm:tFac_mul);
var
  fac,
  num : tNum;
  FacIdx,pow : integer;
begin
  num := fm.fm_num;
  FacIdx := fm.fm_high_idx;
  write(CommatizeUint64(num):25,' = ');

  repeat
    pow := 0;
    fac := Factorial[FacIdx];
    while (num>=fac) AND (num mod Fac = 0) do
    Begin
      num := num DIV Fac;
      inc(pow);
    end;
    if pow = 0 then
      write(' 1')
    else
      if pow = 1 then
        write(' ',FacIdx+2,'!')
      else
        write(' (',FacIdx+2,'!)^',pow);
    if num = 1 then
      BREAK;
    repeat
      dec(FacIdx);
    until(FacIdx<0) OR (FacIdx in fm.fm_pow);
  until FacIdx < 0;
  writeln;

end;

procedure Out_I_th(i: integer);
begin
  if i < 0 then
    write(i:8,' too small');
  if i <= High(FacMulPowGes) then
  begin
    write(i:6,'-th : ');
    Out_MulFac(i,FacMulPowGes[i-1])
  end
  else
    writeln('Too big');
end;

procedure Out_First_N(n: integer);
var
  s,fmt : AnsiString;
  i,tmp : integer;
Begin
  if n<1 then
    EXIT;
  writeln('The first ',n,' Jordan-Polia numbers');
  s := '';
  If n > Length(FacMulPowGes) then
    n := Length(FacMulPowGes);
  dec(n);
  tmp := length(CommatizeUint64(FacMulPowGes[n].fm_num))+1;
  fmt := '%'+IntToStr(tmp)+'s';
  tmp := 72 DIV tmp;
  For i := 0 to n do
  Begin
    s += Format(fmt,[CommatizeUint64(FacMulPowGes[i].fm_num)]);
    if (i+1) mod tmp = 0 then
    Begin
      writeln(s);
      s := '';
    end;
  end;
  if s <>'' then
    writeln(s);
  writeln;
end;

procedure Initfirst;
var
  fac: tnum;
  i,j,idx: integer;
Begin
  fac:= 1;
  j := 1;
  idx := 0;
  For i := 2 to maxFac do
  Begin
    repeat
      inc(j);
      fac *= j;
    until j = i;
    Factorial[idx] := fac;
    inc(idx);
  end;
  Fillchar(LastSearchFor,SizeOf(LastSearchFor),#0);
  LastSearchFor.FM_NUM := 0;
//  dblLimit := 1 shl 53;
  dblLimit := 1 shl 5;
end;

procedure ResetSearch;
Begin
  setlength(FacMulPowGes,0);
end;

procedure GenerateFirst(idx:NativeInt;var res:tFacMulPow);
//generating the first entry with (2!)^n
var
  Fac_mul :tFac_mul;
  facPow,Fac : tnum;
  i,MaxPowOfFac : integer;
begin
  fac := Factorial[idx];
  MaxPowOfFac := trunc(ln(dblLimit)/ln(Fac))+1;
  setlength(res,MaxPowOfFac);

  with Fac_Mul do
  begin
    fm_num := 1;
    fm_pow := [0];
    fm_high_idx := 0;
  end;

  res[0] := Fac_Mul;
  facPow := 1;
  i := 1;
  repeat
    facPow *= Fac;
    if facPow >dblLimit then
      BREAK;
    with Fac_Mul do
    begin
      fm_num := facPow;
      fm_high_pow := i;
    end;
    res[i] := Fac_Mul;
    inc(i);
  until i = MaxPowOfFac;
  setlength(res,i);
end;

procedure DelDoublettes(var FMP:tFacMulPow);
//throw out doublettes,
var
  pNext,pCurrent : tpFac_mul;
  i, len,idx : integer;
begin
  len := 0;
  pCurrent := @FMP[0];
  pNext := pCurrent;
  For i := 0 to High(FMP)-1 do
  begin
    inc(pNext);
    // don't increment pCurrent if equal
    // pCurrent gets or stays the highest Value in n!^high_pow
    if pCurrent^.fm_num = pNext^.fm_num then
    Begin
      idx := pCurrent^.fm_high_idx;
      if idx < pNext^.fm_high_idx then
        pCurrent^  := pNext^
      else
        if idx = pNext^.fm_high_idx then
          if pCurrent^.fm_high_pow < pNext^.fm_high_pow then
            pCurrent^  := pNext^;
    end
    else
    begin
      inc(len);
      inc(pCurrent);
      pCurrent^  := pNext^;
    end;
  end;
  setlength(FMP,len);
end;

procedure QuickSort(var AI: tFacMulPow; ALo, AHi: Int32);
var
  Tmp :tFac_mul;
  Pivot : tnum;
  Lo, Hi : Int32;
begin
  Lo := ALo;
  Hi := AHi;
  Pivot := AI[(Lo + Hi) div 2].fm_num;
  repeat
    while AI[Lo].fm_num < Pivot do
      Inc(Lo);
    while AI[Hi].fm_num > Pivot do
      Dec(Hi);
    if Lo <= Hi then
    begin
      Tmp := AI[Lo];
      AI[Lo] := AI[Hi];
      AI[Hi] := Tmp;
      Inc(Lo);
      Dec(Hi);
    end;
  until Lo > Hi;
  if Hi > ALo then
    QuickSort(AI, ALo, Hi) ;
  if Lo < AHi then
    QuickSort(AI, Lo, AHi) ;
end;

function InsertFacMulPow(var res:tFacMulPow;Facidx:integer):boolean;
var
  Fac,FacPow,NewNum,limit : tnum;
  l_res,l_NewMaxPow,idx,i,j : Integer;
begin
  fac := Factorial[Facidx];
  if fac>dblLimit then
    EXIT(false);

  if length(res)> 0 then
  begin
    l_NewMaxPow := trunc(ln(dblLimit)/ln(Fac))+1;
    l_res := length(res);
    //calc new length, reduces allocation of big memory chunks
    //first original length + length of the new to insert
    j := l_res+l_NewMaxPow;
    //find the maximal needed elements which stay below  dbllimit
    // for every Fac^i
    idx := High(res);
    FacPow := Fac;
    For i := 1 to l_NewMaxPow do
    Begin
      limit := dblLimit DIV FacPow;
      if limit < 1 then
        BREAK;
      //search for the right position
      repeat
        dec(idx);
      until res[idx].fm_num<=limit;
      inc(j,idx);
      FacPow *= fac;
    end;
    j += 2;
    setlength(res,j);

    idx := l_res;
    FacPow := fac;
    For j := 1 to l_NewMaxPow do
    begin
      For i := 0 to l_res do
      begin
        NewNum := res[i].fm_num*FacPow;
        if NewNum>dblLimit then
          Break;
        res[idx]:= res[i];
        with res[idx] do
        Begin
          fm_num := NewNum;
          include(fm_pow,Facidx);
          fm_high_idx := Facidx;
          fm_high_pow := j;
        end;
        inc(idx);
      end;
      FacPow *= fac;
    end;
    setlength(res,idx);
    QuickSort(res,Low(res),High(res));
    DelDoublettes(res);
  end
  else
    GenerateFirst(Facidx,res);
  Exit(true);
end;

var
  i : integer;
BEGIn
  InitFirst;

  repeat
    ResetSearch;
    i := 0;
    repeat
      if Not(InsertFacMulPow(FacMulPowGes,i)) then
        BREAK;
      inc(i);
    until i > High(Factorial);
    //check if MaxIdx is found
    if (Length(FacMulPowGes) > MaxIdx) then
    begin
      if (LastSearchFor.fm_num<> FacMulPowGes[MaxIdx-1].fm_num) then
      Begin
        LastSearchFor := FacMulPowGes[MaxIdx-1];
        //the next factorial is to big, so search is done
        if LastSearchFor.fm_num < Factorial[i] then
          break;
      end
      else
        Break;
    end;
    if dblLimit> HIGH(tNUm) DIV 256 then
      BREAK;
    dblLimit *= 256;
  until false;

  write('Found ',length(FacMulPowGes),' Jordan-Polia numbers ');
  writeln('up to ',CommatizeUint64(dblLimit));
  writeln;

  Out_First_N(50);

  write('The last < 1E8 ');
  for i := 0 to High(FacMulPowGes) do
    if FacMulPowGes[i].fm_num > 1E8 then
    begin
      Out_MulFac(i,FacMulPowGes[i-1]);
      BREAK;
    end;
  writeln;

  Out_I_th(1);
  Out_I_th(100);
  Out_I_th(800);
  Out_I_th(1050);
  Out_I_th(1800);
  Out_I_th(2800);
  Out_I_th(3800);
END.
{---------------------------------------------------------- 68 kaprekar-numbers}
program Kaprekar;
{$COPERATORS ON}{$OPTIMIZATION ON,ALL}{$MODE Delphi}
uses
  sysutils;
function IsKaprekar(N,base: integer;doOutPut:Boolean): boolean;
{Return true if N is a Kaperkar number}
//see wikipedia for kaprekar numbers
//A =  frontdigits of n*n , B = remainig digits
var
  A,B,N2,BasePow: Uint64;
  SplitPos: Int32;
begin
  if N=1 then
  begin
    if doOutPut then
      write(1:12,1:20,'':33);
    exit(true);
  end;
  if n MOD (Base-1) in [0,1] then
  Begin
    N2 := n*n;
    A  := n2;
    SplitPos := 0;
    BasePow := Base;
    while BasePow <n2 do
    begin
      inc(SplitPos);
      //remove last digit in Base
      A := A div base;
      B := n2-A*BasePow;//B := n*n MOD BasePow;
      If (A*B <> 0) AND (B+A = N) then
      begin
        if doOutPut then
          write(n:12,N2:20,A:12,b:12,SplitPos:9);
        EXIT(true);
      end;
      BasePow *= Base;
    end;
  end;
  Exit(false);
end;

procedure ShowKaprekarNumbers;
{Find all Kaprekar numbers less than 10,000}
var
  I,cnt: integer;
begin
  writeln('           n|                n*n|          A|   +      B| SplitPos    ');
  cnt := 0;
  for I:=1 to 1000*10 do
  begin
    if IsKaprekar(I,10,true) then
    begin
      inc(cnt);
      writeln(' cnt ',cnt);
    end;
  end;
  cnt := 0;
  for I:=1 to 1000*1000 do
    if IsKaprekar(I,10,false) then
      inc(cnt);
   writeln('Found ',cnt,' kaprekar numbers below ',i);
  cnt := 0;
  for I:=1 to 100*1000*1000 do
    if IsKaprekar(I,10,false) then
      inc(cnt);
   writeln('Found ',cnt,' kaprekar numbers below ',i);
end;

Begin
 ShowKaprekarNumbers;
end.
{------------------------------------------------------ 69 knapsack-problem-0-1}
program Knapsack01;
{$mode objfpc}{$j-}
uses
  Math;

type
  TItem = record
    Name: string;
    Weight, Value: Integer;
  end;

const
  NUM_ITEMS = 22;
  ITEMS: array[0..NUM_ITEMS-1] of TItem = (
    (Name: 'map';                    Weight:   9; Value: 150),
    (Name: 'compass';                Weight:  13; Value:  35),
    (Name: 'water';                  Weight: 153; Value: 200),
    (Name: 'sandwich';               Weight:  50; Value: 160),
    (Name: 'glucose';                Weight:  15; Value:  60),
    (Name: 'tin';                    Weight:  68; Value:  45),
    (Name: 'banana';                 Weight:  27; Value:  60),
    (Name: 'apple';                  Weight:  39; Value:  40),
    (Name: 'cheese';                 Weight:  23; Value:  30),
    (Name: 'beer';                   Weight:  52; Value:  10),
    (Name: 'suntan cream';           Weight:  11; Value:  70),
    (Name: 'camera';                 Weight:  32; Value:  30),
    (Name: 'T-shirt';                Weight:  24; Value:  15),
    (Name: 'trousers';               Weight:  48; Value:  10),
    (Name: 'umbrella';               Weight:  73; Value:  40),
    (Name: 'waterproof trousers';    Weight:  42; Value:  70),
    (Name: 'waterproof overclothes'; Weight:  43; Value:  75),
    (Name: 'note-case';              Weight:  22; Value:  80),
    (Name: 'sunglasses';             Weight:   7; Value:  20),
    (Name: 'towel';                  Weight:  18; Value:  12),
    (Name: 'socks';                  Weight:   4; Value:  50),
    (Name: 'book';                   Weight:  30; Value:  10)
  );
  MAX_WEIGHT = 400;

var
  D: array of array of Integer;
  I, W, V, MaxWeight: Integer;
begin
  SetLength(D, NUM_ITEMS + 1, MAX_WEIGHT + 1);
  for I := 0 to High(ITEMS) do
    for W := 0 to MAX_WEIGHT do
      if ITEMS[I].Weight > W then
        D[I+1, W] := D[I, W]
      else
        D[I+1, W] := Max(D[I, W], D[I, W - ITEMS[I].Weight] + ITEMS[I].Value);

  W := MAX_WEIGHT;
  V := D[NUM_ITEMS, W];
  MaxWeight := 0;
  WriteLn('bagged:');
  for I := High(ITEMS) downto 0 do
    if (D[I+1, W] = V)and(D[I, W - ITEMS[I].Weight] = V - ITEMS[I].Value)then begin
      WriteLn('  ', ITEMS[I].Name);
      Inc(MaxWeight, ITEMS[I].Weight);
      Dec(W, ITEMS[I].Weight);
      Dec(V, ITEMS[I].Value);
    end;
  WriteLn('value  = ', D[NUM_ITEMS, MAX_WEIGHT]);
  WriteLn('weight = ', MaxWeight);
end.
{----------------------------------------------------------------- 70 leap-year}
program LeapYear;
uses
  sysutils;//includes isLeapYear

procedure TestYear(y: word);
begin
  if IsLeapYear(y) then
    writeln(y,' is a leap year')
  else
    writeln(y,' is NO leap year');
end;
Begin
  TestYear(1900);
  TestYear(2000);
  TestYear(2100);
  TestYear(1904);
end.
{---------------------------------------------------------- 71 leonardo-numbers}
program LeonardoNumbers;

  procedure WriteLeonardoNums(L0, L1: longint; Sum: integer;
    Lmt: integer; What: string);
  var
    I: integer;
    Tmp: longint;
  begin
    WriteLn(What, ' (', L0, ', ', L1, ', ', Sum, '):');
    if Lmt >= 1 then
      Write(L0, ' ');
    if Lmt >= 2 then
      Write(L1, ' ');
    for I := 3 to Lmt do
    begin
      Write(L0 + L1 + Sum, ' ');
      Tmp := L0;
      L0 := L1;
      L1 := Tmp + L1 + Sum;
    end;
    WriteLn;
  end;

begin
  WriteLeonardoNums(1, 1, 1, 25, 'Leonardo numbers');
  WriteLeonardoNums(0, 1, 0, 25, 'Fibonacci numbers');
  ReadLn;
end.
{------------------------------------------------------ 72 levenshtein-distance}
program LevenshteinDistanceDemo(Output);

uses
  Math;

  function LevenshteinDistance(S, T: string): longint;
  var
    D: array of array of integer;
    I, J, N, M: integer;
  begin
    N := Length(T);
    M := Length(S);
    SetLength(D, M + 1, N + 1);

    for I := 0 to M do
      D[I, 0] := I;
    for J := 0 to N do
      D[0, J] := J;
    for J := 1 to N do
      for I := 1 to M do
        if S[I] = T[J] then
          D[I, J] := D[I - 1, J - 1]
        else
          D[I, J] := Min(D[I - 1, J] + 1, Min(D[I, J - 1] + 1, D[I - 1, J - 1] + 1));
    LevenshteinDistance := D[M, N];
  end;

var
  S1, S2: string;

begin
  S1 := 'kitten';
  S2 := 'sitting';
  WriteLn('The Levenshtein distance between "', S1, '" and "',
    S2, '" is: ', LevenshteinDistance(S1, S2));
  S1 := 'rosettacode';
  S2 := 'raisethysword';
  WriteLn('The Levenshtein distance between "', S1, '" and "',
    S2, '" is: ', LevenshteinDistance(S1, S2));
end.
{------------------------------------------ 73 long-literals-with-continuations}
program longStringLiteralDemo(output);

{$mode objFPC}
{$longStrings on}

uses
	// for `format`
	sysUtils,
	// for `wordCount` and `extractWord`
	strUtils;

const
	elementString = 'hydrogen helium lithium beryllium boron carbon nitrogen oxy' +
		'gen fluorine neon sodium magnesium aluminum silicon phosphorous sulfur chl' +
		'orine argon potassium calcium scandium titanium vanadium chromium manganes' +
		'e iron cobalt nickel copper zinc gallium germanium arsenic selenium bromin' +
		'e krypton rubidium strontium yttrium zirconium niobium molybdenum techneti' +
		'um ruthenium rhodium palladium silver cadmium indium tin antimony telluriu' +
		'm iodine xenon cesium barium lanthanum cerium praseodymium neodymium prome' +
		'thium samarium europium gadolinium terbium dysprosium holmium erbium thuli' +
		'um ytterbium lutetium hafnium tantalum tungsten rhenium osmium iridium pla' +
		'tinum gold mercury thallium lead bismuth polonium astatine radon francium ' +
		'radium actinium thorium protactinium uranium neptunium plutonium americium' +
		' curium berkelium californium einsteinium fermium mendelevium nobelium law' +
		'rencium rutherfordium dubnium seaborgium bohrium hassium meitnerium darmst' +
		'adtium roentgenium copernicium nihonium flerovium moscovium livermorium te' +
		'nnessine oganesson';
	elementRevision = '2020‑11‑11';

resourcestring
	revisionNotice = 'Last update: %0:s';

begin
	writeLn(format(revisionNotice, [elementRevision]));
	writeLn(wordCount(elementString, stdWordDelims));
	writeLn(extractWord(wordCount(elementString, stdWordDelims),
		elementString, stdWordDelims));
end.
{----------------------------------------------------------------- 74 long-year}
program Long_year;

uses
  SysUtils,
  DateUtils;

  procedure PrintLongYears(StartYear, EndYear: Uint32);
  var
    Year, Count: Uint32;
    DateSep: char;
  begin
    DateSep := FormatSettings.DateSeparator;
    Writeln('Long years between ', StartYear, ' and ', EndYear);
    Count := 0;
    for Year := StartYear to EndYear do
      if WeeksInYear(StrToDate('01' + DateSep + '01' + DateSep + IntToStr(Year))) = 53 then
      begin
        if Count mod 10 = 0 then
          Writeln;
        Write(Year, ' ');
        Inc(Count);
      end;
    if Count mod 10 <> 0 then
      Writeln;
    writeln('Found ', Count, ' long years between ', StartYear, ' and ', EndYear);
  end;

begin
  PrintLongYears(1800, 2100);
  {$IFDEF WINDOWS}
  Readln;
  {$ENDIF}
end.
{-------------------------------------------- 75 longest-palindromic-substrings}
program FindLongestPalindrome;

uses
  SysUtils,strutils;

const
  arr: array of string = ('three old rotators', 'never reverse', 'stable was I ere I saw elbatrosses', 'abracadabra', 'drome', 'the abbatial palace', '');

var
  st, longestPalindrome, dummy: string;
  i, j, longest: integer;

begin
  for st in arr do
  begin
    longest := 0;
    longestPalindrome := '';
    for i := 1 to Length(st) do
    begin
      for j := Length(st) downto i do
      begin
        dummy := Copy(st, i, j - i + 1);
        if (j - i + 1 > longest) and (dummy = ReverseString(dummy)) then
        begin
          longest := j - i + 1;
          longestPalindrome := dummy;
        end;
      end;
    end;
    WriteLn(Format('%-35s -> %s', [st, longestPalindrome]));
  end;
end.

{------------------------------------------ 76 luhn-test-of-credit-card-numbers}
program luhn;

  function lunh(arg: string): boolean;
  var
    i, sum: integer;
    temp: byte;
  begin
    sum := 0;
    for i:= length(arg) downto 1 do begin  // Run the characters backwards
      temp := byte(arg[i])-48;             // Convert from ASCII to byte
      if (length(arg)-i) mod 2 = 0
        then sum := sum + temp             // Odd characters just add
        else if temp < 5
           then sum := sum + 2*temp        // Even characters add double
           else sum := sum + (2*temp)-9;   // or sum the digits of the doubling
    end;
    result := sum mod 10 = 0;              // Return true if sum ends in a 0
  end;

begin
  writeln('     49927398716: ', lunh('49927398716'));
  writeln('     49927398717: ', lunh('49927398717'));
  writeln('1234567812345678: ', lunh('1234567812345678'));
  writeln('1234567812345670: ', lunh('1234567812345670'));
end.
{------------------------------------------------------------- 77 magic-numbers}
program MagicNUmbers;
{$IFDEF FPC}{$MODE DELPHI}{$Optimization ON,All}{$ENDIF}
{$IFDEF Windows}{$APPTYPE CONSOLE}{$ENDIF}
uses
  sysutils;// TDatetime
const
  CntMagicNUmbers = 2492;
var
  MagicNumbs : array[0..CntMagicNUmbers] of Uint64;
  MagicCnt : Int32;
function checkpanX_9(MinDigit : Int32):UInt64;
var
  n,q : Uint64;
  idx: Uint32;
  testDigits,
  AllDigits : set of 0..9;
begin
  AllDigits := [];
  For idx := 9 downto MinDigit do
    include(AllDigits,idx);
  For idx := 1 to MagicCnt do
  begin
    n := MagicNumbs[idx];
    testDigits := [];
    repeat
      q := n DIV 10;
      include(TestDigits,n-10*q);
      n:= q;
    until q = 0;
    if TestDigits = AllDigits then
      EXIT(MagicNumbs[idx]);
  end;
end;

function ExtendMagic(dgtcnt:Int32):Boolean;
var
  newMg : Uint64;
  i,j,k : Int32;
begin
  i := 1;
  j := CntMagicNUmbers-MagicCnt+1;
  Move(MagicNumbs[i],MagicNumbs[j],SizeOf(MagicNumbs[0])*MagicCnt);
  if dgtcnt = 2 then //Jump over zero
    inc(j);
  repeat
    newMg := MagicNumbs[j]*10;
    k := newMg MOD dgtcnt;
    IF k > 0 then
      k := dgtCnt-k;
    newMg += k;
    while k in [0..9] do
    Begin
      MagicNumbs[i] := newMg;
      k += dgtCnt;
      newMg +=dgtcnt;
      inc(i);
    end;
    inc(j);
  until j > CntMagicNUmbers;
  MagicCnt := i-1;
  result := true;
end;

var
 PAN1_9,PAN0_9: Int64;
 i,sum : Int32;
Begin
  MagicNumbs[1] := 0;
  MagicCnt := 0;
  sum := 0;
  writeln('Magic number counts by number of digits and max value: ');
  For i := 1 to 18 do
  begin
    ExtendMagic(i);
    IF i = 9 then
      PAN1_9 := checkpanX_9(1);
    IF i = 10 then
      PAN0_9 :=  checkpanX_9(0);
    inc(sum,MagicCnt);
    writeln(i:4,MagicCnt:10,MagicNumbs[MagicCnt]:19);
  end;
  Writeln(' Sum of MagicCnt: ',sum);
  Writeln(' Pandigital number with 1..9: ', PAN1_9);
  Writeln(' Pandigital number with 0..9: ', PAN0_9);
end.
{--------------------------------------------------------------- 78 map-range-1}
Program Map(output);
  function MapRange(fromRange, toRange: array of real; value: real): real;
  begin
    MapRange := (value - fromRange[0]) * (toRange[1] - toRange[0]) /
      (fromRange[1] - fromRange[0]) + toRange[0];
  end;

var
  i: integer;
begin
  for i := 0 to 10 do
    writeln(i: 2, ' maps to: ', MapRange([0.0, 10.0], [-1.0, 0.0], i): 5: 2);
end.
{--------------------------------------------------------------- 79 map-range-2}
Program Map(output);

type
  real = double;
  tRange = array [0..1] of real;

  tMapRec = record
    mrFrom,
    mrTo: tRange;
    mrScale: real
  end;

  function InitRange(rfrom, rTo: real): tRange;
  begin
    InitRange[0] := rfrom;
    InitRange[1] := rTo;
  end;

  function InitMapRec(const fromRange, toRange: tRange): tMapRec;
  begin
    with InitMapRec do
    begin
      mrFrom := fromRange;
      mrTo := toRange;
      mrScale := (toRange[1] - toRange[0]) / (fromRange[1] - fromRange[0]);
    end;
  end;

  function MapRecRange(const value: real; var MR: tMapRec): real;
  begin
    with MR do
      MapRecRange := (value - mrFrom[0]) * mrScale + mrTo[0];
  end;

  function MapRange(const value: real; const fromRange, toRange: tRange): real;
  begin
    MapRange := (value - fromRange[0]) * (toRange[1] - toRange[0]) /
      (fromRange[1] - fromRange[0]) + toRange[0];
  end;

var
  value: real;
  rFrom, rTo: tRange;
  mr: tMapRec;
  i: longint;

begin
  rFrom := InitRange(0, 10);
  rTo := InitRange(-1, 0);
  mr := InitMapRec(rFrom, rTo);

  for i := 0 to 10 do
  begin
    value := i;
    writeln(i: 4, ' maps to: ', MapRange(value, rFrom, rTo): 10: 6,
      MapRecRange(value, mr): 10: 6);
  end;
end.
{---------------------- 80 maximum-difference-between-adjacent-elements-of-list}
program maximumDifferenceBetweenAdjacentElementsOfList(output);
type
  tmyReal = extended;
  tmyList = array of tmyReal;
const
  input: tmyList = (1, 8, 2, -3, 0, 1, 1, -2.3, 0, 5.5, 8, 6, 2, 9, 11, 10, 3);
  procedure  OutSameDistanceInList(Dist:tmyReal;const list: tmyList);
  var
    currentDistance : tmyReal;
    i : integer;
  begin
    for i := 0 to High(List) - 1 do
    begin
      currentDistance := abs(list[i] - list[succ(i)]);
      if currentDistance = dist then
         writeln('idx : ',i:4,' values ',list[i],' ',list[i+1]);
    end;
    writeln;
  end;

  function internalDistance(const list: tmyList): tmyReal;
  var
    i: integer;
    maximumDistance, currentDistance: tmyReal;
  begin
    maximumDistance := 0.0;
    for i := 0 to High(List) - 1 do
    begin
      currentDistance := abs(list[i] - list[succ(i)]);
      if currentDistance > maximumDistance then
      begin
        maximumDistance := currentDistance;
      end;
    end;
    internalDistance := maximumDistance;
  end;

var
  list: tmyList;
  foundDistance : tmyReal;
begin
  list := input;
  if length(list) > 0 then
  Begin
    foundDistance := internalDistance(list);
    OutSameDistanceInList(foundDistance,list);
  end;
  {$IFDEF WINDOWS}
  readln;
  {$ENDIF}
end.
{----------------------------------------- 81 memory-layout-of-a-data-structure}
program rs232(input, output, stdErr);
type
	{$packEnum 2}{$scopedEnums off}
	pin = (carrierDetect, receivedData, transmittedData, dataTerminalReady,
		signalGround, dataSetReady, requestToSend, clearToSend, ringIndicator);
	{$packSet 2}
	pins = set of pin;
var
	signal: pins;
	// for demonstration purposes, in order to reveal the memory layout
	signalMemoryStructure: word absolute signal;
	{$if sizeOf(signal) <> sizeOf(word)} // just as safe-guard
		{$fatal signal size}
	{$endIf}
begin
	signal := [];
	include(signal, signalGround); // equivalent to signal := signal + [signalGround];
	// for demonstration purposes: obviously we know this is always `true`
	if signalGround in signal then
	begin
		writeLn(binStr(signalMemoryStructure, bitSizeOf(signal)));
	end;
end.
{-------------------------- 82 minimum-multiple-of-m-where-digital-sum-equals-m}
program m_by_n_sumofdgts_m;
//Like https://oeis.org/A131382/b131382.txt
{$IFDEF FPC} {$MODE DELPHI} {$OPTIMIZATION ON,ALL} {$ENDIF}
uses
  sysutils;
const
   BASE = 10;
   BASE4 = BASE*BASE*BASE*BASE;
   MAXDGTSUM4 = 4*(BASE-1);
var
  {$ALIGN 32}
  SoD: array[0..BASE4-1] of byte;
  {$ALIGN 32}
  DtgBase4 :array[0..7] of Uint32;
  DtgPartSums :array[0..7] of Uint32;
  DgtSumBefore :array[0..7] of Uint32;


procedure Init_SoD;
var
  d0,d1,i,j : NativeInt;
begin
  i := 0;
  For d1 := 0 to BASE-1 do
    For d0 := 0 to BASE-1 do
      begin SoD[i]:= d1+d0;inc(i); end;

  j := Base*Base;
  For i := 1 to Base*Base-1 do
    For d1 := 0 to BASE-1 do
      For d0 := 0 to BASE-1 do
      begin
        SoD[j] := SoD[i]+d1+d0;
        inc(j);
      end;
end;

procedure OutDgt;
var
   i : integer;
begin
  for i := 5 downto 0 do
    write(DtgBase4[i]:4);
  writeln;
  for i := 5 downto 0 do
    write(DtgPartSums[i]:4);
  writeln;
  for i := 5 downto 0 do
    write(DgtSumBefore[i]:4);
  writeln;
end;

procedure InitDigitSums(m:NativeUint);
var
  n,i,s: NativeUint;
begin
  //constructing minimal number with sum of digits = m ;k+9+9+9+9+9+9
  //21 -> 299
  n := m;
  if n>BASE then
  begin
    i := 1;
    while n>BASE-1 do
    begin
      i *= BASE;
      dec(n,BASE-1);
    end;
    n := i*(n+1)-1;
    //make n multiple of m
    n := (n div m)*m;
    //m ending in 0
    i := m;
    while i mod BASE = 0 do
    begin
      n *= BASE;
      i := i div BASE;
    end;
  end;

  For i := 0 to 4 do
  begin
    s := n MOD BASE4;
    DtgBase4[i] := s;
    DtgPartSums[i] := SoD[s];
    n := (n-s) DIV BASE4;
  end;

  s := 0;
  For i := 3 downto 0 do
  begin
    s += DtgPartSums[i+1];
    DgtSumBefore[i]:= s;
  end;
end;


function CorrectSums(sum:NativeUint):NativeUint;
var
i,q,carry : NativeInt;
begin
  i := 0;
  q := sum MOD Base4;
  sum := sum DIV Base4;
  result := q;

  DtgBase4[i] := q;
  DtgPartSums[i] := SoD[q];

  carry := 0;
  repeat
    inc(i);
    q := sum MOD Base4+DtgBase4[i]+carry;
    sum := sum DIV Base4;
    carry := 0;
    if q >= BASE4 then
    begin
      carry := 1;
      q -= BASE4;
    end;
    DtgBase4[i]:= q;
    DtgPartSums[i] := SoD[q];
  until (sum =0) AND( carry = 0);

  sum := 0;
  For i := 3 downto 0 do
  begin
    sum += DtgPartSums[i+1];
    DgtSumBefore[i]:= sum;
  end;
end;

function TakeJump(dgtSum,m:NativeUint):NativeUint;
var
  n,i,j,carry : nativeInt;
begin
  i := dgtsum div MAXDGTSUM4-1;
  n := 0;
  j := 1;
  for i := i downto 0 do
  Begin
    n:= n*BASE4+DtgBase4[i];
    j:= j*BASE4;
  end;
  n := ((j-n) DIV m)*m;
//  writeln(n:10,DtgBase4[i]:10);
  i := 0;
  carry := 0;
  repeat
    j := DtgBase4[i]+ n mod BASE4 +carry;
    n := n div BASE4;
    carry := 0;
    IF j >=BASE4 then
    begin
      j -= BASE4;
      carry := 1;
    end;
    DtgBase4[i] := j;
    DtgPartSums[i]:= SoD[j];
    inc(i);
  until (n= 0) AND (carry=0);
  j := 0;
  For i := 3 downto 0 do
  begin
    j += DtgPartSums[i+1];
    DgtSumBefore[i]:= j;
  end;
  result := DtgBase4[0];
end;

procedure CalcN(m:NativeUint);
var
  dgtsum,sum: NativeInt;
begin
  InitDigitSums(m);

  sum := DtgBase4[0];
  dgtSum:= m-DgtSumBefore[0];
  //  while dgtsum+SoD[sum] <> m do
  while dgtsum<>SoD[sum] do
  begin
    inc(sum,m);
    if sum >= BASE4 then
    begin
      sum := CorrectSums(sum);
      dgtSum:= m-DgtSumBefore[0];
      if dgtSum > MAXDGTSUM4 then
      begin
        sum := TakeJump(dgtSum,m);
        dgtSum:= m-DgtSumBefore[0];
      end;
    end;
  end;
  DtgBase4[0] := sum;
end;

var
  T0:INt64;
  i : NativeInt;
  m,n: NativeUint;
Begin
  T0 := GetTickCount64;
  Init_SoD;
  for m := 1 to 70 do
  begin
    CalcN(m);
    //Check sum of digits
    n := SoD[DtgBase4[4]];
    For i := 3 downto 0 do
      n += SoD[DtgBase4[i]];
    If n<>m then
    begin
      writeln('ERROR at ',m);
      HALT(-1);
    end;

    n := DtgBase4[4];
    For i := 3 downto 0 do
      n := n*BASE4+DtgBase4[i];
    write(n DIV m :15);
    if m mod 10 = 0 then
      writeln;
  end;
  writeln;
  writeln('Total runtime  ',GetTickCount64-T0,' ms');
  {$IFDEF WINDOWS} readln{$ENDIF}
end.
{---------------------------------- 83 n-queens-minimum-and-knights-and-bishops}
program TestMinimalQueen;
{$MODE DELPHI}{$OPTIMIZATION ON,ALL}

uses
  sysutils;
type
  tDeltaKoor = packed record
                        dRow,
                        dCol : Int8;
                      end;
const
  cKnightAttacks : array[0..7] of tDeltaKoor =
                   ((dRow:-2;dCol:-1),(dRow:-2;dCol:+1),
                    (dRow:-1;dCol:-2),(dRow:-1;dCol:+2),
                    (dRow:+1;dCol:-2),(dRow:+1;dCol:+2),
                    (dRow:+2;dCol:-1),(dRow:+2;dCol:+1));

  KoorCOUNT = 16;

type
  tLimit = 0..KoorCOUNT-1;

  tPlayGround = array[tLimit,tLimit] of byte;
  tCheckPG = array[0..2*KoorCOUNT] of tplayGround;
  tpPlayGround = ^tPlayGround;

var
{$ALIGN 32}
  CPG :tCheckPG;
  Qsol,BSol,KSol :tPlayGround;
  pgIdx,minIdx : nativeInt;

procedure pG_Out(pSol:tpPlayGround;ConvChar : string;lmt: NativeInt);
var
  row,col: NativeInt;
begin
  iF length(ConvChar)<>3 then
    EXIT;
  for row := lmt downto 0 do
  Begin
    for col := 0 to lmt do
      write(ConvChar[1+pSol^[row,col]],' ');
    writeln;
  end;
  writeln;
end;

procedure LeftAscDia(row,col,lmt: NativeInt);
var
  pPG :tpPlayGround;
  j: NativeInt;
begin
  pPG := @CPG[pgIdx];
  if row >= col then
  begin
    j := row-col;
    col := lmt-j;
    row := lmt;
    repeat
      pPG^[row,col] := 1;
      dec(col);
      dec(row);
    until col < 0;
  end
  else
  begin
    j := col-row;
    row := lmt-j;
    col := lmt;
    repeat
      pPG^[row,col] := 1;
      dec(row);
      dec(col);
   until row < 0;
  end;
end;

procedure RightAscDia(row,col,lmt: NativeInt);
var
  pPG :tpPlayGround;
  j: NativeInt;
begin
  pPG := @CPG[pgIdx];
  j := row+col;
  if j <= lmt then
  begin
    col := j;
    row := 0;
    repeat
      pPG^[row,col] := 1;
      dec(col);
      inc(row);
    until col < 0;
  end
  else
  begin
    col := lmt;
    row := j-lmt;
    repeat
      pPG^[row,col] := 1;
      inc(row);
      dec(col);
   until row > lmt;
  end;
end;

function check(lmt:nativeInt):boolean;
//check, if all fields are attacked
var
  pPG :tpPlayGround;
  pRow : pByte;
  row,col: NativeInt;
Begin
  pPG := @CPG[pgIdx];
  For row := lmt downto 0 do
  begin
    pRow := @pPG^[row,0];
    For col := lmt downto 0 do
      if pRow[col] = 0 then
        EXIT(false);
  end;
  exit(true);
end;

procedure SetQueen(row,lmt: NativeInt);
var
  pPG :tpPlayGround;
  i,col,t: NativeInt;
begin
  t := pgIdx+1;
  if t = minIDX then
    EXIT;
  pgIdx:= t;
  //use state before
//  CPG[pgIdx]:=CPG[pgIdx-1];
  move(CPG[t-1],CPG[t],SizeOf(tPlayGround));
  col := lmt;
  //first row only check one half -> symmetry
  if row = 0 then
    col := col shr 1;

  //check every column
  For col := col downto 0 do
  begin
    pPG := @CPG[pgIdx];
    if pPG^[row,col] <> 0 then
      continue;
    //set diagonals
    RightAscDia(row,col,lmt);
    LeftAscDia(row,col,lmt);
    //set row and column as attacked
    For i := 0 to lmt do
    Begin
      pPG^[row,i] := 1;
      pPG^[i,col] := 1;
    end;
    //now set position of queen
    pPG^[row,col] := 2;

    if check(lmt) then
    begin
      if minIdx> pgIdx then
      begin
        minIdx := pgIdx;
        Qsol := pPG^;
      end;
    end
    else
      if row > lmt then
        BREAK
      else
        //check next rows
        For t := row+1 to lmt do
          SetQueen(t,lmt);
    //copy last state
    t := pgIdx;
    move(CPG[t-1],CPG[t],SizeOf(tPlayGround));
//    CPG[pgIdx]:=CPG[pgIdx-1];
  end;
  dec(pgIdx);
end;

procedure SetBishop(row,lmt: NativeInt);
var
  pPG :tpPlayGround;
  col,t: NativeInt;
begin
  if pgIdx = minIDX then
    EXIT;
  inc(pgIdx);
  move(CPG[pgIdx-1],CPG[pgIdx],SizeOf(tPlayGround));
  col := lmt;
  if row = 0 then
    col := col shr 1;
  For col := col downto 0 do
  begin
    pPG := @CPG[pgIdx];
    if pPG^[row,col] <> 0 then
      continue;

    RightAscDia(row,col,lmt);
    LeftAscDia(row,col,lmt);

    //set position of bishop
    pPG^[row,col] := 2;

    if check(lmt) then
    begin
      if minIdx> pgIdx then
      begin
        minIdx := pgIdx;
        Bsol := pPG^;
      end;
    end
    else
      if row > lmt then
        BREAK
      else
      begin
        //check same row
        SetBishop(row,lmt);
        //check next row
        t := row+1;
        if (t <= lmt) then
          SetBishop(t,lmt);
      end;
    move(CPG[pgIdx-1],CPG[pgIdx],SizeOf(tPlayGround));
  end;
  dec(pgIdx);
end;

var
  lmt,max : NativeInt;

BEGIN
  max := 10;
  write(' nxn  n=:');
  For lmt := 1 to max do
    write(lmt:3);
  writeln;

  write(' Queens :');
  For lmt := 0 to max-1 do
  begin
    pgIdx := 0;
    minIdx := lmt;
    setQueen(0,lmt);
    write(minIDX:3);
  end;
  writeln;

  write(' Bishop :');
  For lmt := 0 to max-1 do
  begin
    pgIdx := 0;
    minIdx := 2*lmt+1;
    setBishop(0,lmt);
    write(minIDX:3);
  end;
  writeln;

  pG_Out(@Qsol,'_.Q',max-1);
  writeln;

  pG_Out(@Bsol,'_.B',max-1);
END.
{---------------------------------------------------------- 84 n-smooth-numbers}
program HammNumb;
{$IFDEF FPC} {$MODE DELPHI} {$OPTIMIZATION ON,ALL}{$ENDIF}
{$IFDEF WINDOWS}{$APPTYPE CONSOLE}{$ENDIF}
type
 tHamNum = record
              hampot : array[0..167] of Word;
              hampotmax,
              hamNum : NativeUint;
            end;
const
 primes : array[0..167] of word =
          (2, 3, 5, 7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71
          ,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151
          ,157,163,167,173,179,181,191,193,197,199,211,223,227,229,233
          ,239,241,251,257,263,269,271,277,281,283,293,307,311,313,317
          ,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419
          ,421,431,433,439,443,449,457,461,463,467,479,487,491,499,503
          ,509,521,523,541,547,557,563,569,571,577,587,593,599,601,607
          ,613,617,619,631,641,643,647,653,659,661,673,677,683,691,701
          ,709,719,727,733,739,743,751,757,761,769,773,787,797,809,811
          ,821,823,827,829,839,853,857,859,863,877,881,883,887,907,911
          ,919,929,937,941,947,953,967,971,977,983,991,997);
var
  HNum:tHamNum;

procedure OutHamNum(const HNum:tHamNum);
var
 i : NativeInt;
Begin
 with Hnum do
 Begin
   write(hamNum:12,' : ');
   For i := 0 to hampotmax-1 do
   Begin
     if hampot[i] >0 then
       if hampot[i] = 1 then
         write(primes[i],'*')
       else
         write(primes[i],'^',hampot[i],'*');
   end;
   if hampot[hampotmax] >0 then
   begin
     write(primes[hampotmax]);
     if hampot[hampotmax] > 1 then
       write('^',hampot[hampotmax]);
   end;
 end;
 writeln;
end;

procedure NextHammNum(var HNum:tHamNum;maxP:NativeInt);
var
 q,p,nr,n,pIdx,momPrime : NativeUInt;
begin
 //special case prime = 2
 IF maxP = 0 then
 begin
   IF HNum.hampot[0] <> 0 then
     HNum.hamNum *= 2
   else
     HNum.hamNum := 1;
   inc(HNum.hampot[0]);
   EXIT;
 end;

 n := HNum.hamNum;
 repeat
   inc(n);
   nr := n;
   pIdx := 0;
   repeat
     momPrime := primes[pIdx];
     q := nr div momPrime;
     p := 0;
     While q*momPrime=nr do
     Begin
       inc(p);
       nr := q;
       q := nr div momPrime;
     end;
     HNum.hampot[pIdx] := p;
     inc(pIdx);
   until (nr=1) OR (pIdx > maxp)
   //found one, than finished
 until nr = 1;

 With HNum do
 Begin
   hamNum := n;
   hamPotmax := pIdx-1;
 end;
end;

procedure OutXafterYSmooth(X,Y,SmoothIdx: NativeUInt);
var
 i: NativeUint;
begin
 IF SmoothIdx> High(primes) then
   EXIT;
 fillChar(HNum,SizeOf(HNum),#0);


 i := 0;
 While HNum.HamNum < Y do
   NextHammNum(HNum,SmoothIdx);

 write('first ',X,' after ',Y,' ',primes[SmoothIdx]:3,'-smooth numbers : ');
 IF x >10 then
   writeln;

 for i := 1 to X-1 do
 begin
   write(HNum.HamNum,' ');
   NextHammNum(HNum,SmoothIdx);
 end;
 writeln(HNum.HamNum,' ');
end;

var
 j: NativeUint;
Begin
 j := 0;
 while primes[j] <= 29 do
 Begin
   OutXafterYSmooth(25,1,j);
   inc(j);
 end;
 writeln;

 j := 1;
 while primes[j] <= 29 do
 Begin
   OutXafterYSmooth(3,3000,j);
   inc(j);
 end;
 writeln;

 while primes[j] < 503 do
   inc(j);
 while primes[j] <= 521 do
 Begin
   OutXafterYSmooth(20,30000,j);
   OutHamNum(Hnum);
   inc(j);
 end;
 writeln;
End.
{--------------------------------------------- 85 narcissistic-decimal-number-1}
program NdN;
//Narcissistic decimal number
const
  Base = 10;
  MaxDigits = 16;
type
  tDigit = 0..Base-1;
  tcntDgt= 0..MaxDigits-1;
var
  powDgt   : array[tDigit]  of NativeUint;
  PotdgtPos: array[tcntDgt] of NativeUint;
  UpperSum : array[tcntDgt] of NativeUint;

  tmpSum,
  tmpN,
  actPot  : NativeUint;

procedure InitPowDig;
var
  i,j : NativeUint;
Begin
  j := 1;
  For i := 0 to High(tDigit) do
  Begin
    powDgt[i] := i;
    PotdgtPos[i] := j;
    j := j*Base;
  end;
  actPot := 0;
end;

procedure NextPowDig;
var
  i,j : NativeUint;
Begin
  // Next power of digit =  i ^ actPot,always 0 = 0 , 1 = 1
  For i := 2 to High(tDigit) do
    powDgt[i] := powDgt[i]*i;
  // number of digits times 9 ^(max number of digits)
  j := powDgt[High(tDigit)];
  For i := 0 to High(UpperSum) do
    UpperSum[i] := (i+1)*j;
  inc(actPot);
end;
procedure OutPutNdN(n:NativeUint);
Begin
  write(n,' ');
end;

procedure NextDgtSum(dgtPos,i,sumPowDgt,n:NativeUint);
begin
  //unable to reach sum
  IF (sumPowDgt+UpperSum[dgtPos]) < n then
    EXIT;
  repeat
    tmpN   := n+PotdgtPos[dgtPos]*i;
    tmpSum := sumPowDgt+powDgt[i];
    //unable to get smaller
    if tmpSum > tmpN then
      EXIT;
    IF tmpSum = tmpN then
      OutPutNdN(tmpSum);
    IF dgtPos>0 then
      NextDgtSum(dgtPos-1,0,tmpSum,tmpN);
    inc(i);
  until i >= Base;
end;

var
  i : NativeUint;
Begin
  InitPowDig;
  For i := 1 to 9 do
  Begin
    write(' length ',actPot+1:2,': ');
    //start with 1 in front, else you got i-times 0 in front
    NextDgtSum(actPot,1,0,0);
    writeln;
    NextPowDig;
  end;
end.
{- 86 numbers-divisible-by-their-individual-digits-but-not-by-the-product-of-their-digits-1}
program DivByDgtsNotByProdOfDgts;

function ProdDigits(n:cardinal):cardinal;
// returns product of Digits if n is divisible by digits
var
  p,q,r,dgt : cardinal;
begin
  q := n;
  p := 1;
  repeat
    r := q DIV 10;
    dgt := q-10*r;
    if (dgt= 0)OR(n mod dgt <> 0) then
      EXIT(0);
    p := p*dgt;
    q := r;
  until q = 0;
  Exit(p)
end;

const
  LimitLow  =    1;
  LimitHigh = 1000;
var
  i,mul,cnt : Cardinal;
BEGIN
  cnt := 0;
  writeln('Limits ',LimitLow,'..',LimitHigh);
  For i := LimitLow to LimitHigh do
  begin
    mul := ProdDigits(i);
    if (mul <> 0)  AND (i MOD MUL<>0) then
    Begin
      write(i:4);
      inc(cnt);
      if cnt AND 15= 0 then
        writeln;
    end;
  end;
  if cnt AND 15 <> 0 then
    writeln;
  writeln(' count : ',cnt);
END.
{- 87 numbers-divisible-by-their-individual-digits-but-not-by-the-product-of-their-digits-2}
program DivByDgtsNotByProdOfDgts;
{$MODE DELPHI}
const
  LimitLow  = 1;// must start within 1..9
  LimitHigh = 100*1000*1000;//4000*1000*1000;
var
  d :array[0..16] of NativeUInt;

function JmpOvZero(i: Cardinal):NativeUInt;
var
 idx,delta :NativeUInt;
begin
  result := i;
  idx := 0;
  delta := 1;
  repeat
    inc(result,delta);
    d[idx]:= 9;
    delta *= 10;
    inc(idx);
    dec(d[idx]);
  until d[idx] <> 0;
end;

function ProdDigits(n:NativeUInt):NativeUInt;inline;
// returns product of Digits if n is divisible by digits
var
  q,r,dgt : Uint32;
begin
  q := n;
  result := 1;
  repeat
    r := q DIV 10;
    dgt := q-10*r;
    if (n mod dgt <> 0) then
      EXIT(0);
    result *= dgt;
    q := r;
  until r = 0;
end;

var
  i,mul,cnt : Cardinal;
BEGIN
  cnt := 0;
  For i := Low(d) to High(d) do
    d[i] := 10;
  d[0]:= 10-LimitLow;
  writeln('Limits ',LimitLow,'..',LimitHigh);
  i := limitLow;
  repeat
    dec(d[0]);
    mul := ProdDigits(i);
    if (mul <> 0) AND (i MOD MUL<>0) then
      inc(cnt);
    if (d[0]) = 0 then
      i := JmpOvZero(i);
    inc(i);
  until i > LimitHigh;
  writeln('count : ',cnt);
END.
{------------------------- 88 numbers-which-are-not-the-sum-of-distinct-squares}
program practicalnumbers;
{$IFDEF Windows}  {$APPTYPE CONSOLE} {$ENDIF}
var
  HasSum: array of byte;
function FindLongestContiniuosBlock(startIdx,MaxIdx:NativeInt):NativeInt;
var
  hs0 : pByte;
  l : NativeInt;
begin
  l := 0;
  hs0 := @HasSum[0];
  for startIdx := startIdx to MaxIdx do
  Begin
    IF hs0[startIdx]=0 then
      BREAK;
    inc(l);
  end;
  FindLongestContiniuosBlock := l;
end;

function SumAllSquares(Limit: Uint32):NativeInt;
//mark sum and than shift by next summand == add
var
  hs0, hs1: pByte;
  idx, j, maxlimit, delta,MaxContiniuos,MaxConOffset: NativeInt;
begin
  MaxContiniuos := 0;
  MaxConOffset := 0;
  maxlimit := 0;
  hs0 := @HasSum[0];
  hs0[0] := 1; //has sum of 0*0
  idx := 1;

  writeln('number offset  longest  sum of');
  writeln('                block  squares');
  while idx <= Limit do
  begin
    delta := idx*idx;
    //delta is within the continiuos range than break
    If (MaxContiniuos-MaxConOffset) > delta then
      BREAK;

    //mark oldsum+ delta with  oldsum
    hs1 := @hs0[delta];
    for j := maxlimit downto 0 do
      hs1[j] := hs1[j] or hs0[j];

    maxlimit := maxlimit + delta;

    j := MaxConOffset;
    repeat
      delta := FindLongestContiniuosBlock(j,maxlimit);
      IF delta>MaxContiniuos then
      begin
        MaxContiniuos:= delta;
        MaxConOffset := j;
      end;
      inc(j,delta+1);
    until j > (maxlimit-delta);
    writeln(idx:4,MaxConOffset:7,MaxContiniuos:8,maxlimit:8);
    inc(idx);
  end;
  SumAllSquares:= idx;
end;

var
  limit,
  sumsquare,
  n: NativeInt;
begin
  Limit := 25;
  sumsquare := 0;
  for n := 1 to Limit do
    sumsquare := sumsquare+n*n;
  writeln('sum of square [1..',limit,'] = ',sumsquare) ;
  writeln;

  setlength(HasSum,sumsquare+1);
  n := SumAllSquares(Limit);
  writeln(n);
  for Limit := 1 to n*n do
    if HasSum[Limit]=0 then
      write(Limit,',');
  setlength(HasSum,0);
 {$IFNDEF UNIX}  readln; {$ENDIF}
end.
{-- 89 numbers-which-are-the-cube-roots-of-the-product-of-their-proper-divisors}
program Root3rd_divs_n.pas;
{$IFDEF FPC}
  {$MODE DELPHI}  {$OPTIMIZATION ON,ALL}  {$COPERATORS ON}
{$ENDIF}
{$IFDEF WINDOWS}
  {$APPTYPE CONSOLE}
{$ENDIF}
uses
  sysutils
{$IFDEF WINDOWS},Windows{$ENDIF}
  ;
const
  limit = 110*1000 *1000;
var
  sol : array [0..limit] of byte;
  primes : array of Uint32;
  gblCount: Uint64;

procedure SievePrimes(lmt:Uint32);
var
  sieve : array of byte;
  p,i,delta : NativeInt;
Begin
  setlength(sieve,lmt DIV 2);
  //estimate count of prime
  i := trunc(lmt/(ln(lmt)-1.1));
  setlength(primes,i);
  p := 1;
  repeat
    delta := 2*p+1;
    // ((2*p+1)^2 ) -1)/ 2 = ((4*p*p+4*p+1) -1)/2 = 2*p*(p+1)
    i := 2*p*(p+1);
    if i>High(sieve) then
      BREAK;
    while i <= High(sieve) do
    begin
      sieve[i] := 1;
      i += delta;
    end;
    repeat
      inc(p);
    until sieve[p] = 0;
  until false;

  primes[0] := 2;
  i := 1;
  For p := 1 to High(sieve) do
    if  sieve[p] = 0 then
    begin
      primes[i] := 2*p+1;
      inc(i);
    end;
  setlength(primes,i);
end;

procedure Get_a7;
var
  q3,n : UInt64;
  i : nativeInt;
begin
  sol[1] := 1;
  gblCount +=1;
  For i := 0 to High(primes) do
  begin
    q3 := primes[i];
    n := sqr(sqr(sqr(q3))) DIV q3;
    if n > limit then
      break;
    sol[n] := 1;
    gblCount +=1;
  end;
end;

procedure Get_a3_b;
var
  i,j,q3,n : nativeInt;
begin
  For i := 0 to High(primes) do
  begin
    q3 := primes[i];
    q3 := q3*q3*q3;
    if q3 > limit then
      BREAK;
    For j := 0 to High(primes) do
    begin
      if j = i then
        continue;
      n := Primes[j]*q3;
      if n > limit then
        BREAK;
      sol[n] := 1;
      gblCount +=1;
    end;
  end;
end;

procedure Get_a_b_c;
var
  i,j,k,q1,q2,n : nativeInt;
begin
  For i := 0 to High(primes)-2 do
  begin
    q1 := primes[i];
    For j := i+1 to High(primes)-1 do
    Begin
      q2:= q1*Primes[j];
      if q2 > limit then
        BREAK;
      For k := j+1 to High(primes) do
      Begin
        n:= q2*Primes[k];
        if n > limit then
          BREAK;
        sol[n] := 1;
        gblCount +=1;
      end;
    end;
  end;
end;

var
  i,cnt,lmt : Int32;
begin
  SievePrimes(limit DIV 6);// 2*3*c * (c> 3 prime)

  gblCount := 0;
  Get_a7;
  Get_a3_b;
  Get_a_b_c;

  Writeln('First 50 numbers which are the cube roots of the products of their proper divisors:');
  cnt := 0;
  i := 1;

  while cnt < 50 do
  begin
    if sol[i] <> 0 then
    begin
      write(i:5);
      cnt +=1;
      if cnt mod 10 = 0 then writeln;
    end;
    inc(i);
  end;
  dec(i);
  lmt := 500;
  repeat
    while cnt < lmt do
    begin
      inc(i);
      if sol[i] <> 0 then
        cnt +=1;
      if i > limit then
        break;
    end;
    if i > limit then
      break;
    writeln(lmt:8,'.th:',i:12);
    lmt *= 10;
  until lmt> limit;
  writeln('Total found: ', gblCount, ' til ',limit);
end.
{---------------------------------------- 90 numbers-with-equal-rises-and-falls}
program NumEqualRiseAndFalls;
{$MODE DELPHI}{$CODEALIGN proc=32}
const
  BASE = 10;

type
  tdigitsOfNum =  record
                   digit : array[0..23] of Uint8;
//                 risefall : array[0..23] of Uint8;
                   Num : Uint64;
                   risefall,
                   cntDigits:NativeInt;
                 end;
  tpdigitsOfNum = ^tdigitsOfNum;

function Numb2USA(n:Uint64):Ansistring;
var
  pI :pChar;
  i,j : NativeInt;
Begin
  str(n,result);
  i := length(result);
 //extend s by the count of comma to be inserted
  j := i+ (i-1) div 3;
  if i<> j then
  Begin
    setlength(result,j);
    pI := @result[1];
    dec(pI);
    while i > 3 do
    Begin
       //copy 3 digits
       pI[j] := pI[i];pI[j-1] := pI[i-1];pI[j-2] := pI[i-2];
       //insert comma
       pI[j-3] := ',';
       dec(i,3);
       dec(j,4);
    end;
  end;
end;
procedure IncDigits(res:tpdigitsOfNum;carry:NativeInt = 1);inline;
//carry must be in the range of 0..BASE-1
var
  dgt,idx,sgn: NativeInt;
Begin
  with res^ do
  begin
    num += carry;
    idx := 0;
    repeat
      dgt := digit[idx];
      dgt += carry;
      //IF dgt>= BASE then Begin carry:=1; dgt -= BASE;end;
      //version without IF
      carry := ORD(dgt>=Base);// [0,1]
      dgt -= BASE AND (-carry);// [0,BASE], BASE AND -1 = BASE

      digit[idx] := dgt;
      inc(idx);
    until (carry=0) OR (idx >= cntDigits);

    If carry <> 0 then
    begin
      digit[idx] := carry;
      inc(cntDigits);
    end;

    idx:= cntDigits-1;
    dgt :=0;
    while idx>0 do
    begin
      sgn := digit[idx];//digit[idx]-digit[idx-1];
      dec(idx);
      sgn -= digit[idx];
      sgn := Ord(sgn>0)-Ord(sgn<0);
      dgt += sgn;
//      risefall[idx]:= dgt;
    end;
    risefall := dgt;
  end;

end;

var
  cnt,lmt : Cardinal;
  myNum : tdigitsOfNum;
BEGIN
  writeln('Find numbers with rise and falls');

  lmt := 200;
  writeln('Limit ',Lmt);
  myNum.cntDigits := 1;
  cnt :=0;
  While cnt < lmt do
  begin
    IncDigits(@myNum);
    with mynum do
    begin
      if risefall = 0 then
      begin
        inc(cnt);
        write(num:4);
        if cnt Mod 20 = 0 then
          writeln;
      end;
    end;
  end;

  lmt := 1000*1000;
  while lmt <= 100*1000*1000 do
  begin
    While cnt < lmt do
    begin
      IncDigits(@myNum);
      with mynum do
        if risefall = 0 then
          inc(cnt);
    end;
    writeln('Limit ',Numb2USA(lmt):12,' -> ',Numb2USA(myNum.num):12);
    lmt *=10;
  end;
END.
{-------------------------------------------------- 91 old-lady-swallowed-a-fly}
(* A mixture of the lyrics found in Wikipedia and the Ada version
   in Rosetta Code. It formats the lyrics like the Wikipedia one  *)
program OldLady;

uses
  SysUtils;

const
  MaxLadies = 9; //Number of iterations and array items
  Animals: array[1..MaxLadies + 1] of shortstring = (  //Add one for the song's end
    'fly',
    'spider',
    'bird',
    'cat',
    'dog',
    'pig',
    'goat',
    'cow',
    'donkey',
    'horse'
    );

  Verse1 = 'There was an old lady who swallowed a %s;';
  //Verse 2 variations
  Verse2Var1 = '   %s'; //Doubles as a spacing formatter
  Verse2Var2 = '   %s to swallow a %s;';
  Verse2Var3 = '   %s and swallowed a %s';
  Verse2Var4 = '   %s she swallowed a %s';
  Verse3 = '   She swallowed the %s to catch the %s;';
  VerseEnd = 'I don''t know why she swallowed a fly - perhaps she''ll die!';
  SongEnd = '   ...She''s dead of course!';

  SwallowResult: array[1..MaxLadies] of shortstring = (
    VerseEnd,
    'That wiggled and jiggled and tickled inside her!',
    'Quite absurd',
    'Fancy that',
    'What a hog,',
    'Her mouth was so big',
    'She just opened her throat',
    'I don''t know how',
    'It was rather wonky'
    );

  procedure PrintSong;
  var
    i, j: byte;
    SwallowStr: shortstring;

  begin
    for i := 1 to MaxLadies do
    begin
      WriteLn(Format(Verse1, [Animals[i]]));
      case i of
        1..2: SwallowStr := Verse2Var1;
        3..5: SwallowStr := Verse2Var2;
        6, 8..9: SwallowStr := Verse2Var4;
        else
          SwallowStr := Verse2Var3;
      end;
      WriteLn(Format(SwallowStr, [SwallowResult[i], Animals[i]]));
      if i >= 2 then
      begin
        for j := i downto 2 do
        begin
          WriteLn(Format(Verse3, [Animals[j], Animals[j - 1]]));
          if (j - 1 = 2) and (i >= 3) then
            WriteLn(Format(Verse2Var1, [SwallowResult[2]]));
        end;
        if j >= 2 then
          WriteLn(Format(Verse2Var1, [VerseEnd]));
      end;
    end;
    WriteLn(Format(Verse1, [Animals[MaxLadies + 1]]));
    WriteLn(SongEnd);
  end;

begin
  PrintSong;
end.
{------------------------------------------------------------ 92 ormiston-pairs}
program Ormiston;
{$IFDEF FPC}{$MODE DELPHI} {$OPTIMIZATION ON,ALL}{$ENDIF}
{$IFDEF WINDOWS}{$APPLICATION CONSOLE}{$ENDIF}

uses
  sysutils,strUtils;

//********* segmented sieve of erathostenes *********
{segmented sieve of Erathostenes using only odd numbers}
{using presieved sieve of small primes, to reduce the most time consuming}
const
  smlPrimes :array [0..10] of Byte = (2,3,5,7,11,13,17,19,23,29,31);
  maxPreSievePrimeNum = 8;
  maxPreSievePrime = 19;//smlPrimes[maxPreSievePrimeNum];
  cSieveSize = 2*16384;//<= High(Word)+1 // Level I Data Cache
type
  tSievePrim = record
                 svdeltaPrime:word;//diff between actual and new prime
                 svSivOfs:word;    //Offset in sieve
                 svSivNum:LongWord;//1 shl (1+16+32) = 5.6e14
               end;
  tpSievePrim = ^tSievePrim;

var
//sieved with primes 3..maxPreSievePrime.here about 255255 Byte
{$ALIGN 32}
  preSieve :array[0..3*5*7*11*13*17*19-1] of Byte;//must be > cSieveSize
{$ALIGN 32}
  Sieve :array[0..cSieveSize-1] of Byte;
{$ALIGN 32}
//prime = FoundPrimesOffset + 2*FoundPrimes[0..FoundPrimesCnt]
  FoundPrimes : array[0..12252] of Word;
{$ALIGN 32}
  sievePrimes : array[0..1077863] of tSievePrim;
  FoundPrimesOffset : Uint64;
  FoundPrimesCnt,
  FoundPrimesIdx,
  FoundPrimesTotal,
  SieveNum,
  SieveMaxIdx,
  preSieveOffset,
  LastInsertedSievePrime :NativeUInt;

procedure CopyPreSieveInSieve; forward;
procedure CollectPrimes; forward;
procedure sieveOneSieve; forward;
procedure Init0Sieve; forward;
procedure SieveOneBlock; forward;

procedure preSieveInit;
var
  i,pr,j,umf : NativeInt;
Begin
  fillchar(preSieve[0],SizeOf(preSieve),#1);
  i := 1;
  pr := 3;// starts with pr = 3
  umf := 1;
  repeat
    IF preSieve[i] =1 then
    Begin
      pr := 2*i+1;
      j := i;
      repeat
        preSieve[j] := 0;
        inc(j,pr);
      until j> High(preSieve);
      umf := umf*pr;
    end;
    inc(i);
  until (pr = maxPreSievePrime)OR(umf>High(preSieve)) ;
  preSieveOffset := 0;
end;

function InsertSievePrimes(PrimPos:NativeInt):NativeInt;
var
  j    :NativeUINt;
  i,pr : NativeUInt;
begin
  i := 0;
  //ignore first primes already sieved with
  if SieveNum = 0 then
    i := maxPreSievePrimeNum;
  pr :=0;
  j := Uint64(SieveNum)*cSieveSize*2-LastInsertedSievePrime;
  with sievePrimes[PrimPos] do
  Begin
    pr := FoundPrimes[i]*2+1;
    svdeltaPrime := pr+j;
    j := pr;
  end;
  inc(PrimPos);
  for i := i+1 to FoundPrimesCnt-1 do
  Begin
    IF PrimPos > High(sievePrimes) then
      BREAK;
    with sievePrimes[PrimPos] do
    Begin
      pr := FoundPrimes[i]*2+1;
      svdeltaPrime := (pr-j);
      j := pr;
    end;
    inc(PrimPos);
  end;
  LastInsertedSievePrime :=Uint64(SieveNum)*cSieveSize*2+pr;
  result := PrimPos;
end;

procedure CalcSievePrimOfs(lmt:NativeUint);
//lmt High(sievePrimes)
var
  i,pr : NativeUInt;
  sq : Uint64;
begin
  pr := 0;
  i := 0;
  repeat
    with sievePrimes[i] do
    Begin
      pr := pr+svdeltaPrime;
      IF sqr(pr)  < (cSieveSize*2) then
      Begin
        svSivNum := 0;
        svSivOfs := (pr*pr-1) DIV 2;
      end
      else
      Begin
        SieveMaxIdx := i;
        pr := pr-svdeltaPrime;
        BREAK;
      end;
    end;
    inc(i);
  until i > lmt;

  for i := i to lmt do
  begin
    with sievePrimes[i] do
    Begin
      pr := pr+svdeltaPrime;
      sq := sqr(pr);
      svSivNum := sq DIV (2*cSieveSize);
      svSivOfs := ( (sq - Uint64(svSivNum)*(2*cSieveSize))-1)DIV 2;
    end;
  end;
end;

procedure sievePrimesInit;
var
  i,j,pr,PrimPos:NativeInt;
Begin
  LastInsertedSievePrime := 0;
  preSieveOffset := 0;
  SieveNum :=0;
  CopyPreSieveInSieve;
  //normal sieving of first sieve
  i := 1; // start with 3
  repeat
    while Sieve[i] = 0 do
      inc(i);
    pr := 2*i+1;
    inc(i);
    j := ((pr*pr)-1) DIV 2;
    if j > High(Sieve) then
      BREAK;
    repeat
      Sieve[j] := 0;
      inc(j,pr);
    until j > High(Sieve);
  until false;

  CollectPrimes;
  PrimPos := InsertSievePrimes(0);
  LastInsertedSievePrime := FoundPrimes[PrimPos]*2+1;

  IF PrimPos < High(sievePrimes) then
  Begin
    Init0Sieve;
    sieveOneBlock;
    repeat
      sieveOneBlock;
      dec(SieveNum);
      PrimPos := InsertSievePrimes(PrimPos);
      inc(SieveNum);
   until PrimPos > High(sievePrimes);
  end;
  Init0Sieve;
end;

procedure Init0Sieve;
begin
  FoundPrimesTotal :=0;
  preSieveOffset := 0;
  SieveNum :=0;
  CalcSievePrimOfs(High(sievePrimes));
end;

procedure CopyPreSieveInSieve;
var
  lmt : NativeInt;
Begin
  lmt := preSieveOffset+cSieveSize;
  lmt := lmt-(High(preSieve)+1);
  IF lmt<= 0 then
  begin
    Move(preSieve[preSieveOffset],Sieve[0],cSieveSize);
    if lmt <> 0 then
      inc(preSieveOffset,cSieveSize)
    else
      preSieveOffset := 0;
  end
  else
  begin
    Move(preSieve[preSieveOffset],Sieve[0],cSieveSize-lmt);
    Move(preSieve[0],Sieve[cSieveSize-lmt],lmt);
    preSieveOffset := lmt
  end;
end;

procedure sieveOneSieve;
var
  sp:tpSievePrim;
  pSieve :pByte;
  i,j,pr,sn,dSievNum :NativeUint;
Begin
  pr := 0;
  sn := sieveNum;
  sp := @sievePrimes[0];
  pSieve := @Sieve[0];
  For i := SieveMaxIdx downto 0 do
    with sp^ do
    begin
      pr := pr+svdeltaPrime;
      IF svSivNum = sn then
      Begin
        j := svSivOfs;
        repeat
          pSieve[j] := 0;
          inc(j,pr);
        until j > High(Sieve);
        dSievNum := j DIV cSieveSize;
        svSivOfs := j-dSievNum*cSieveSize;
        svSivNum := sn+dSievNum;
      end;
      inc(sp);
    end;
  i := SieveMaxIdx+1;
  repeat
    if i > High(SievePrimes) then
      BREAK;
    with sp^ do
    begin
      if svSivNum > sn then
      Begin
        SieveMaxIdx := I-1;
        Break;
      end;
      pr := pr+svdeltaPrime;
      j := svSivOfs;
      repeat
        Sieve[j] := 0;
        inc(j,pr);
      until j > High(Sieve);
      dSievNum := j DIV cSieveSize;
      svSivOfs := j-dSievNum*cSieveSize;
      svSivNum := sn+dSievNum;
    end;
    inc(i);
    inc(sp);
  until false;
end;

procedure CollectPrimes;
//extract primes to FoundPrimes
var
   pSieve : pbyte;
   pFound : pWord;
   i,idx : NativeUint;
Begin
  FoundPrimesOffset := SieveNum*2*cSieveSize;
  FoundPrimesIdx := 0;
  pFound :=@FoundPrimes[0];
  i := 0;
  idx := 0;
  IF SieveNum = 0 then
  //include small primes used to pre-sieve
  Begin
    repeat
      pFound[idx]:= (smlPrimes[idx]-1) DIV 2;
      inc(idx);
    until smlPrimes[idx]>maxPreSievePrime;
    i := (smlPrimes[idx] -1) DIV 2;
  end;
  //grabbing the primes without if then -> reduces time extremly
  //primes are born to let branch-prediction fail.
  pSieve:= @Sieve[Low(Sieve)];
  repeat
    //store every value until a prime aka 1 is found
    pFound[idx]:= i;
    inc(idx,pSieve[i]);
    inc(i);
  until i>High(Sieve);
  FoundPrimesCnt:= idx;
  inc(FoundPrimesTotal,Idx);
end;

procedure SieveOneBlock;
begin
  CopyPreSieveInSieve;
  sieveOneSieve;
  CollectPrimes;
  inc(SieveNum);
end;

function Nextprime:Uint64;
Begin
  result := FoundPrimes[FoundPrimesIdx]*2+1+FoundPrimesOffset;
  if (FoundPrimesIdx=0) AND (sievenum = 1) then
    inc(result);
  inc(FoundPrimesIdx);
  If FoundPrimesIdx>= FoundPrimesCnt then
    SieveOneBlock;
end;

function PosOfPrime: Uint64;inline;
Begin
  result := FoundPrimesTotal-FoundPrimesCnt+FoundPrimesIdx;
end;

function TotalCount :Uint64;inline;
begin
  result := FoundPrimesTotal;
end;

function SieveSize :LongInt;inline;
Begin
  result := 2*cSieveSize;
end;

function SieveStart:Uint64;inline;
Begin
  result := (SieveNum-1)*2*cSieveSize;
end;

procedure InitPrime;
Begin
  Init0Sieve;
  SieveOneBlock;
end;
//********* segmented sieve of erathostenes *********

const
  Limit= 10*1000*1000*1000;
type
  tDigits10 = array[0..15] of byte;
  td10_UsedDgts2 = array[0..3] of  Uint32;
  td10_UsedDgts3 = array[0..1] of  Uint64;
  tpd10_UsedDgts3 = ^td10_UsedDgts3;

procedure OutIn(cnt,p1,p2:NativeInt);
Begin
  write('[',Numb2USA(IntToStr(p1)):6,'|',Numb2USA(IntToStr(p2)):6,']');
  if cnt MOD 5 = 0 then
     writeln;
end;

function OutByPot10(cnt,prLimit:NativeInt):NativeInt;
Begin
  writeln(Numb2USA(IntToStr(cnt)):12,' Ormiston pairs before ',Numb2USA(IntToStr(prLimit)):14);
  result := 10*prLimit;
end;

procedure Convert2Digits10(p:NativeUint;var outP:tDigits10);
var
  r : NativeUint;
begin
 // fillchar(outP,SizeOf(outP),#0);//takes longer
  td10_UsedDgts3(outP)[0]:=0;td10_UsedDgts3(outP)[1]:=0;
  repeat
    r := p DIV 10;
    inc(outP[p-10*r]);
    p := r;
  until r = 0;
end;

function CheckOrmiston(const d1,d2:tpd10_UsedDgts3):boolean;inline;
begin
  result := (d1^[0]=d2^[0]) AND (d1^[1]=d2^[1]);
end;

var
{$align 16}
  p1,p2 :tDigits10;
  pr,pr1,prLimit :nativeInt;
  cnt : NativeUint;
Begin
  preSieveInit;
  sievePrimesInit;
  InitPrime;

  prLimit := 100*1000;
  cnt := 0;
  pr1 := nextprime;
  repeat
    pr := nextprime;
    if pr > limit then
      BREAK;
    if (pr-pr1) mod 18 = 0  then
    begin
      Convert2Digits10(pr1,p1);
      Convert2Digits10(pr,p2);
      if CheckOrmiston(@p1,@p2) then
      begin
        inc(cnt);
        IF cnt <= 30 then
          OutIn(cnt,pr1,pr);
      end;
    end;
    if pr >=prLimit then
      prlimit:= OutByPot10(cnt,prlimit);
    pr1:= pr;
  until false;
  OutByPot10(cnt,prlimit);
end.
{---------------------------------------------------------- 93 ormiston-triples}
program Ormiston;
{$IFDEF FPC}{$MODE DELPHI} {$OPTIMIZATION ON,ALL}{$ENDIF}
{$IFDEF WINDOWS}{$APPLICATION CONSOLE}{$ENDIF}

uses
  sysutils,strUtils;

//********* segmented sieve of erathostenes *********
{segmented sieve of Erathostenes using only odd numbers}
{using presieved sieve of small primes, to reduce the most time consuming}
const
  smlPrimes :array [0..10] of Byte = (2,3,5,7,11,13,17,19,23,29,31);
  maxPreSievePrimeNum = 7;
  maxPreSievePrime = 17;//smlPrimes[maxPreSievePrimeNum];
  cSieveSize = 4*16384;//<= High(Word)+1 // Level I Data Cache
type
  tSievePrim = record
                 svdeltaPrime:word;//diff between actual and new prime
                 svSivOfs:word;    //Offset in sieve
                 svSivNum:LongWord;//1 shl (1+16+32) = 5.6e14
               end;
  tpSievePrim = ^tSievePrim;

var
//sieved with primes 3..maxPreSievePrime.here about 255255 Byte
{$ALIGN 32}
  preSieve :array[0..3*5*7*11*13*17-1] of Byte;//must be > cSieveSize
{$ALIGN 32}
  Sieve :array[0..cSieveSize-1] of Byte;
{$ALIGN 32}
//prime = FoundPrimesOffset + 2*FoundPrimes[0..FoundPrimesCnt]
  FoundPrimes : array[0..12252] of Word;
{$ALIGN 32}
  sievePrimes : array[0..1077863] of tSievePrim;
  FoundPrimesOffset : Uint64;
  FoundPrimesCnt,
  FoundPrimesIdx,
  FoundPrimesTotal,
  SieveNum,
  SieveMaxIdx,
  preSieveOffset,
  LastInsertedSievePrime :NativeUInt;

procedure CopyPreSieveInSieve; forward;
procedure CollectPrimes; forward;
procedure sieveOneSieve; forward;
procedure Init0Sieve; forward;
procedure SieveOneBlock; forward;

procedure preSieveInit;
var
  i,pr,j,umf : NativeInt;
Begin
  fillchar(preSieve[0],SizeOf(preSieve),#1);
  i := 1;
  pr := 3;// starts with pr = 3
  umf := 1;
  repeat
    IF preSieve[i] =1 then
    Begin
      pr := 2*i+1;
      j := i;
      repeat
        preSieve[j] := 0;
        inc(j,pr);
      until j> High(preSieve);
      umf := umf*pr;
    end;
    inc(i);
  until (pr = maxPreSievePrime)OR(umf>High(preSieve)) ;
  preSieveOffset := 0;
end;

function InsertSievePrimes(PrimPos:NativeInt):NativeInt;
var
  j    :NativeUINt;
  i,pr : NativeUInt;
begin
  i := 0;
  //ignore first primes already sieved with
  if SieveNum = 0 then
    i := maxPreSievePrimeNum;
  pr :=0;
  j := Uint64(SieveNum)*cSieveSize*2-LastInsertedSievePrime;
  with sievePrimes[PrimPos] do
  Begin
    pr := FoundPrimes[i]*2+1;
    svdeltaPrime := pr+j;
    j := pr;
  end;
  inc(PrimPos);
  for i := i+1 to FoundPrimesCnt-1 do
  Begin
    IF PrimPos > High(sievePrimes) then
      BREAK;
    with sievePrimes[PrimPos] do
    Begin
      pr := FoundPrimes[i]*2+1;
      svdeltaPrime := (pr-j);
      j := pr;
    end;
    inc(PrimPos);
  end;
  LastInsertedSievePrime :=Uint64(SieveNum)*cSieveSize*2+pr;
  result := PrimPos;
end;

procedure CalcSievePrimOfs(lmt:NativeUint);
//lmt High(sievePrimes)
var
  i,pr : NativeUInt;
  sq : Uint64;
begin
  pr := 0;
  i := 0;
  repeat
    with sievePrimes[i] do
    Begin
      pr := pr+svdeltaPrime;
      IF sqr(pr)  < (cSieveSize*2) then
      Begin
        svSivNum := 0;
        svSivOfs := (pr*pr-1) DIV 2;
      end
      else
      Begin
        SieveMaxIdx := i;
        pr := pr-svdeltaPrime;
        BREAK;
      end;
    end;
    inc(i);
  until i > lmt;

  for i := i to lmt do
  begin
    with sievePrimes[i] do
    Begin
      pr := pr+svdeltaPrime;
      sq := sqr(pr);
      svSivNum := sq DIV (2*cSieveSize);
      svSivOfs := ( (sq - Uint64(svSivNum)*(2*cSieveSize))-1)DIV 2;
    end;
  end;
end;

procedure sievePrimesInit;
var
  i,j,pr,PrimPos:NativeInt;
Begin
  LastInsertedSievePrime := 0;
  preSieveOffset := 0;
  SieveNum :=0;
  CopyPreSieveInSieve;
  //normal sieving of first sieve
  i := 1; // start with 3
  repeat
    while Sieve[i] = 0 do
      inc(i);
    pr := 2*i+1;
    inc(i);
    j := ((pr*pr)-1) DIV 2;
    if j > High(Sieve) then
      BREAK;
    repeat
      Sieve[j] := 0;
      inc(j,pr);
    until j > High(Sieve);
  until false;

  CollectPrimes;
  PrimPos := InsertSievePrimes(0);
  LastInsertedSievePrime := FoundPrimes[PrimPos]*2+1;

  IF PrimPos < High(sievePrimes) then
  Begin
    Init0Sieve;
    sieveOneBlock;
    repeat
      sieveOneBlock;
      dec(SieveNum);
      PrimPos := InsertSievePrimes(PrimPos);
      inc(SieveNum);
   until PrimPos > High(sievePrimes);
  end;
  Init0Sieve;
end;

procedure Init0Sieve;
begin
  FoundPrimesTotal :=0;
  preSieveOffset := 0;
  SieveNum :=0;
  CalcSievePrimOfs(High(sievePrimes));
end;

procedure CopyPreSieveInSieve;
var
  lmt : NativeInt;
Begin
  lmt := preSieveOffset+cSieveSize;
  lmt := lmt-(High(preSieve)+1);
  IF lmt<= 0 then
  begin
    Move(preSieve[preSieveOffset],Sieve[0],cSieveSize);
    if lmt <> 0 then
      inc(preSieveOffset,cSieveSize)
    else
      preSieveOffset := 0;
  end
  else
  begin
    Move(preSieve[preSieveOffset],Sieve[0],cSieveSize-lmt);
    Move(preSieve[0],Sieve[cSieveSize-lmt],lmt);
    preSieveOffset := lmt
  end;
end;

procedure sieveOneSieve;
var
  sp:tpSievePrim;
  pSieve :pByte;
  i,j,pr,sn,dSievNum :NativeUint;
Begin
  pr := 0;
  sn := sieveNum;
  sp := @sievePrimes[0];
  pSieve := @Sieve[0];
  For i := SieveMaxIdx downto 0 do
    with sp^ do
    begin
      pr := pr+svdeltaPrime;
      IF svSivNum = sn then
      Begin
        j := svSivOfs;
        repeat
          pSieve[j] := 0;
          inc(j,pr);
        until j > High(Sieve);
        dSievNum := j DIV cSieveSize;
        svSivOfs := j-dSievNum*cSieveSize;
        svSivNum := sn+dSievNum;
      end;
      inc(sp);
    end;
  i := SieveMaxIdx+1;
  repeat
    if i > High(SievePrimes) then
      BREAK;
    with sp^ do
    begin
      if svSivNum > sn then
      Begin
        SieveMaxIdx := I-1;
        Break;
      end;
      pr := pr+svdeltaPrime;
      j := svSivOfs;
      repeat
        Sieve[j] := 0;
        inc(j,pr);
      until j > High(Sieve);
      dSievNum := j DIV cSieveSize;
      svSivOfs := j-dSievNum*cSieveSize;
      svSivNum := sn+dSievNum;
    end;
    inc(i);
    inc(sp);
  until false;
end;

procedure CollectPrimes;
//extract primes to FoundPrimes
var
   pSieve : pbyte;
   pFound : pWord;
   i,idx : NativeUint;
Begin
  FoundPrimesOffset := SieveNum*2*cSieveSize;
  FoundPrimesIdx := 0;
  pFound :=@FoundPrimes[0];
  i := 0;
  idx := 0;
  IF SieveNum = 0 then
  //include small primes used to pre-sieve
  Begin
    repeat
      pFound[idx]:= (smlPrimes[idx]-1) DIV 2;
      inc(idx);
    until smlPrimes[idx]>maxPreSievePrime;
    i := (smlPrimes[idx] -1) DIV 2;
  end;
  //grabbing the primes without if then -> reduces time extremly
  //primes are born to let branch-prediction fail.
  pSieve:= @Sieve[Low(Sieve)];
  repeat
    //store every value until a prime aka 1 is found
    pFound[idx]:= i;
    inc(idx,pSieve[i]);
    inc(i);
  until i>High(Sieve);
  FoundPrimesCnt:= idx;
  inc(FoundPrimesTotal,Idx);
end;

procedure SieveOneBlock;
begin
  CopyPreSieveInSieve;
  sieveOneSieve;
  CollectPrimes;
  inc(SieveNum);
end;

function Nextprime:Uint64;
Begin
  result := FoundPrimes[FoundPrimesIdx]*2+1+FoundPrimesOffset;
  if (FoundPrimesIdx=0) AND (sievenum = 1) then
    inc(result);
  inc(FoundPrimesIdx);
  If FoundPrimesIdx>= FoundPrimesCnt then
    SieveOneBlock;
end;

function PosOfPrime: Uint64;inline;
Begin
  result := FoundPrimesTotal-FoundPrimesCnt+FoundPrimesIdx;
end;

function TotalCount :Uint64;inline;
begin
  result := FoundPrimesTotal;
end;

function SieveSize :LongInt;inline;
Begin
  result := 2*cSieveSize;
end;

function SieveStart:Uint64;inline;
Begin
  result := (SieveNum-1)*2*cSieveSize;
end;

procedure InitPrime;
Begin
  Init0Sieve;
  SieveOneBlock;
end;
//********* segmented sieve of erathostenes *********

const
  Limit= 10*1000*1000*1000;
type
  tDigits10 = array[0..15] of byte;
  td10_UsedDgts2 = array[0..3] of  Uint32;
  td10_UsedDgts3 = array[0..1] of  Uint64;
  tpd10_UsedDgts3 = ^td10_UsedDgts3;

procedure OutIn(cnt,p1:NativeInt);
Begin
  write(Numb2USA(IntToStr(p1)):13,' ');
  if cnt MOD 5 = 0 then
     writeln;
end;

function OutByPot10(cnt,prLimit:NativeInt):NativeInt;
Begin
  writeln(Numb2USA(IntToStr(cnt)):12,' Ormiston triples before ',Numb2USA(IntToStr(prLimit)):14);
  result := 10*prLimit;
end;

function Convert2Digits10(p:NativeUint):Uint64;inline;
const
  smlPrimes : array[0..9] of integer = (2,3,5,7,11,13,17,19,23,29);
var
  r : NativeUint;
begin
  result := 1;
  repeat
    r := p DIV 10;
    result := result*smlPrimes[p-10*r];
    p := r;
  until r = 0;
end;
{$align 32}
var
  IsMod18 : array[0..(1000 DIV 18)*18] of boolean;
procedure OneRun;
var
{$align 32}
  p1 : Uint64;
  pr1,pr2,pr3,prLimit :nativeUInt;
  cnt,prCnt : NativeUint;
begin
  pr1 := 0;
  pr2 := 0;
  prCnt := 0;
  prLimit := 10*1000*1000;
  repeat
    inc(prCnt);
    pr3 := pr2;
    pr2 := pr1;
    pr1 := nextprime;
  until pr1 > prLimit;
  prLimit *= 10;

  cnt := 0;
  repeat
    inc(prCnt);
    if IsMod18[pr2-pr3] then
    begin
      p1 := Convert2Digits10(pr3);
      if Convert2Digits10(pr2) = p1 then
        if IsMod18[pr1-pr2] then
        begin
          if Convert2Digits10(pr1) =p1 then
          begin
            inc(cnt);
            IF cnt <= 25 then
              OutIn(cnt,pr1);
          end
        end
    end;
    if pr1 >=prLimit then
      prlimit:= OutByPot10(cnt,prlimit);
    pr3 := pr2;
    pr2 := pr1;
    pr1 := nextprime;
  until pr2 > limit;
  writeln(' prime count ',prCnt);
  writeln(' last primes ',pr3:12,pr2:12,pr1:12);
end;

var
  j :Int32;
Begin
  preSieveInit;
  sievePrimesInit;
  InitPrime;

  j := 0;
  while j < High(IsMod18)do
  Begin
    IsMod18[j] := true;
    j += 18;
  end;

  OneRun;
end.
{------------------------------------------------- 94 pairs-with-common-factors}
program PairsWithCommonFactors;
{$IFdef FPC} {$MODE DELPHI} {$Optimization ON,ALL}{$IFEND}
{$IFdef Windows} {$APPTYPE CONSOLE}{$IFEND}
const
  cLimit = 1000*1000*1000;
//global
type
  TElem= Uint64;
  tpElem = pUint64;

  myString = String[31];

var
  TotientList : array of TElem;
  Sieve : Array of byte;

function Numb2USA(n:Uint64):myString;
const
//extend s by the count of comma to be inserted
  deltaLength : array[0..24] of byte =
    (0,0,0,0,1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,6,6,6,7,7,7);
var
  pI :pChar;
  i,j : NativeInt;
Begin
  str(n,result);
  i := length(result);
 //extend s by the count of comma to be inserted
// j := i+ (i-1) div 3;
  j := i+deltaLength[i];
  if i<> j then
  Begin
    setlength(result,j);
    pI := @result[1];
    dec(pI);
    while i > 3 do
    Begin
       //copy 3 digits
       pI[j] := pI[i];
       pI[j-1] := pI[i-1];
       pI[j-2] := pI[i-2];
       // insert comma
       pI[j-3] := ',';
       dec(i,3);
       dec(j,4);
    end;
  end;
end;

procedure SieveInit(svLimit:NativeUint);
var
  pSieve:pByte;
  i,j,pr :NativeUint;
Begin
  svlimit := (svLimit+1) DIV 2;
  setlength(sieve,svlimit+1);
  pSieve := @Sieve[0];
  For i := 1 to svlimit do
  Begin
    IF pSieve[i]= 0 then
    Begin
      pr := 2*i+1;
      j := (sqr(pr)-1) DIV 2;
      IF  j> svlimit then
        BREAK;
      repeat
        pSieve[j]:= 1;
        inc(j,pr);
      until j> svlimit;
    end;
  end;
  pr := 0;
  j := 0;
  For i := 1 to svlimit do
  Begin
    IF pSieve[i]= 0 then
    Begin
      pSieve[j] := i-pr;
      inc(j);
      pr := i;
    end;
  end;
  setlength(sieve,j);
end;

procedure TotientInit(len: NativeUint);
var
  pTotLst : tpElem;
  pSieve  : pByte;
  i: NativeInt;
  p,j,k,svLimit : NativeUint;
Begin
  SieveInit(len);
  setlength(TotientList,len+12);
  pTotLst := @TotientList[0];

//Fill totient with simple start values for odd and even numbers
//and multiples of 3
  j := 1;
  k := 1;// k == j DIV 2
  p := 1;// p == j div 3;
  repeat
    pTotLst[j] := j;//1
    pTotLst[j+1] := k;//2 j DIV 2; //2
    inc(k);
    inc(j,2);
    pTotLst[j] := j-p;//3
    inc(p);
    pTotLst[j+1] := k;//4  j div 2
    inc(k);
    inc(j,2);
    pTotLst[j] := j;//5
    pTotLst[j+1] := p;//6   j DIV 3 <=  (div 2) * 2 DIV/3
    inc(j,2);
    inc(p);
    inc(k);
  until j>len+6;

//correct values of totient by prime factors
  svLimit := High(sieve);
  p := 3;// starting after 3
  pSieve := @Sieve[svLimit+1];
  i := -svlimit;
  repeat
    p := p+2*pSieve[i];
    j := p;
    while j <= cLimit do
    Begin
      k:= pTotLst[j];
      pTotLst[j]:= k-(k DIV p);
      inc(j,p);
    end;
    inc(i);
  until i=0;
  //primes not needed anymore
  setlength(sieve,0);
end;

procedure CountOfPairs(len: NativeUint);
var
  pTotLst : tpElem;
  i,a_n,sum,Totient: tElem;
Begin
  pTotLst := @TotientList[0];
  sum := 1;
  a_n := 2; // sums to i*(i-1)/2 +1
  For i := 2 to len do
  Begin
    Totient := pTotLst[i];// relict for print data
    sum += Totient;
    pTotLst[i] := a_n-sum;
    a_n += i;
  end;
  TotientList[1] := 0;
end;

var
  i,k : NativeUint;
Begin
  TotientInit(climit);
  CountOfPairs(climit);
  i := 1;
  Repeat
    For k := 9 downto 0 do
    begin
      write(TotientList[i]:6);
      inc(i);
    end;
    writeln;
  until i>99;
  writeln;
  writeln('Some values #');
  i := 10;
  repeat
    writeln(Numb2USA(i):13,Numb2USA(TotientList[i]):25);
    i *= 10;
  until i > climit;
end.
{------------------------------------------------------- 95 pan-base-non-primes}
program PanBaseNonPrime;
  // Check Pan-Base Non-Prime
  {$IFDEF FPC}{$MODE DELPHI}{$OPTIMIZATION ON,ALL}{$ENDIF}
  {$IFDEF WINDOWS}{$APPTYPE CONSOLE}{$ENDIF}
// MAXLIMIT beyond 10000 gets really slow 5 digits, depends on isPrime
//10004 checked til base 10003 -> 10003⁴+3 = 1.0012e16, takes >1 s longer
//real   0m1,307s
// 9999 checked til base  9998 -> 8,99555E12 much smaller
//real   0m0,260s
type
  tDgts = 0..31;// Int32 is faster than 0..9 -> word
  tUsedDgts = set of tDgts;
  tDecDigits = packed record
                 decdgts   :array[0..20] of byte;
                 decmaxIdx :byte;
                 decmaxDgt :byte;
                 decUsedDgt :tUsedDgts;
               end;
const
  MAXLIMIT = 2500;
  WithGCDNotOne : array[0..24] of tUsedDgts =
      //all the same digits
     ([0],[2],[3],[4],[5],[6],[7],[8],[9],
      //all even
      [2,4],[2,6],[2,8],
      [2,4,6],[2,4,8],[2,6,8],
      [2,4,6,8],
      [4,6],[4,8],
      [4,6,8],[2,4,6,8],
      [6,8],
      //all divible 3
      [3,6],[3,9],
      [3,6,9],
      [6,9]);
var
  gblCnt,
  gblOddCnt :NativeINt;

procedure OutDecDigits(var Dgts:tDecDigits);
var
  idx : nativeInt;
begin
  with Dgts do
  begin
    idx := decMaxIDx;
    repeat
      dec(idx);
      write(decdgts[idx]);
    until idx <= 0;
    write(decmaxdgt:3);
    writeln;
  end;
end;

procedure CountOne(n:NativeInt);inline;
Begin
  inc(gblCnt);
  If odd(n) then
    inc(gblOddCnt);
end;

procedure OutCountOne(n:NativeInt);
begin
  CountOne(n);
  write(n:5);
  if gblCnt mod 10 = 0 then
    writeln;
end;

function CheckGCD(var Dgts:tDecDigits):boolean;
var
  idx: NativeInt;
  UsedDgts:tUsedDgts;
begin
  UsedDgts := Dgts.decUsedDgt;
  For idx := Low(WithGCDNotOne) to High(WithGCDNotOne) do
    if UsedDgts = WithGCDNotOne[idx] then
      Exit(true);
  Exit(false);
end;

procedure ConvToDecDgt(n : NativeUint;out Dgts:tDecDigits);//inline;
var
  dgt,maxdgt,idx,q :NativeInt;
  UsedDgts : tUsedDgts;
begin
  UsedDgts := [];
  maxdgt := 0;
  idx := 0;
  repeat
    q := n div 10;
    dgt := n-q*10;
    Dgts.decdgts[idx]:= dgt;
    include(UsedDgts,dgt);
    IF maxdgt<dgt then
      maxdgt := dgt;
    inc(idx);
    n := q;
  until n = 0;

  with Dgts do
  Begin
    decMaxIDx := idx;
    decMaxdgt := maxDgt;
    decUsedDgt := UsedDgts;
  end;
end;

function ConvDgtToBase(var Dgts:tDecDigits;base:NativeInt):NativeUInt;
var
  idx :NativeInt;
begin
  result := 0;
  if base<= Dgts.decMaxdgt then
    EXIT;

  with Dgts do
  Begin
    idx := decMaxIDx;
    repeat
      dec(idx);
      result := result*base+decdgts[idx];
    until idx <= 0;
  end;
end;

function isPrime(n: NativeInt):boolean;
//simple trial division
var
  j : nativeInt;
begin
  if n in [2,3,5,7,11,13,17,19,23,29,31] then
    EXIT(true);
  if n<32 then
    EXIT(false);
  if not(odd(n)) then
    EXIT(false);
  if n mod 3 = 0 then
    EXIT(false);
  if n mod 5 = 0 then
    EXIT(false);
  j := 7;
  while j*j<=n do
  begin
    if n mod j = 0 then
      EXIT(false);
    inc(j,4);
    if n mod j = 0 then
      EXIT(false);
    inc(j,2);
  end;
  EXIT(true);
end;

function CheckPanBaseNonPrime(n: NativeUint):boolean;
var
  myDecDgts:tDecDigits;
  b,num : NativeInt;
Begin
  result := true;
  ConvToDecDgt(n,myDecDgts);
  if (n>10) then
  Begin
    if (myDecDgts.decdgts[0] = 0) then
      Exit;
    if CheckGCD(myDecDgts) then
      Exit;
  end;

  b := myDecDgts.decmaxdgt+1;
  if b >= n then
  Begin
    if isPrime(n) then
      Exit(false);
  end
  else
  begin
    while b < n do
    begin
      num := ConvDgtToBase(myDecDgts,b);
      if isPrime(num) then
        EXIT(false);
      inc(b);
    end;
  end;
end;
var
  i : NativeInt;

BEGIN
  writeln('First 50 pan-base non-prime numbers ');
  gblCnt := 0;
  gblOddCnt := 0;
  For i := 3 to MAXLIMIT do
  Begin
    if CheckPanBaseNonPrime(i) then
      OutCountOne(i);
    if gblCnt = 50 then
      break;
  end;
  writeln;

  writeln('First 20 pan-base non-prime odd numbers ');
  gblCnt := 0;
  gblOddCnt := 0;
  For i := 3 to MAXLIMIT do
  Begin
    if ODD(i) then
    Begin
      if CheckPanBaseNonPrime(i) then
         OutCountOne(i);
      if gblOddCnt = 20 then
        break;
    end;
  end;
  writeln;

  gblCnt := 0;
  gblOddCnt := 0;
  For i := 3 to MAXLIMIT do
    if CheckPanBaseNonPrime(i) then
      CountOne(i);
  writeln('Count of pan-base composites up to and including ',MAXLIMIT,' : ',gblCnt);
  writeln('odd  up to and including ',MAXLIMIT,' = ',gblOddCnt:4,' equals ',gblOddCnt/gblCnt*100:10:6,'%');
  writeln('even up to and including ',MAXLIMIT,' = ',gblCnt-gblOddCnt:4,' equals ',(gblCnt-gblOddCnt)/gblCnt*100:10:6,'%');

END.
{----------------------------------------------------------- 96 pancake-numbers}
program pc;

function pancake(n:integer):integer;
var
  gap, sum, adj:integer;
begin
  gap := 2;
  sum := 2;
  adj := -1;
  while sum < n do
  begin
    inc(adj);
    gap := gap*2 - 1;
    sum := sum + gap;
  end;
  pancake := n + adj;
end;

var
  i,j,n:integer;
begin
    for i := 0 to 3 do
    begin
        for j := 1 to 5 do
        begin
            n := i*5 + j;
            writeln('p',n:2,pancake(n):5);
        end;
        writeln;
    end
end.
{---------------------------------------------------------- 97 pandigital-prime}
program PandigitalPrime;
uses
  SysUtils;
type
  tDigits = set of 0..7;
const
  cPanDigits : array['0'..'1'] of string=('76543210','7654321');
  cDigits : array['0'..'1'] of tDigits  =([0..7],[1..7]);
var
  s : String;
  x,i,l : NativeInt;
  check,myCheck : tDigits;
  sp : char;
begin
  for sp := '0' to '1' do
  Begin
    myCheck := cDigits[sp];
    val(cPanDigits[sp],x,i);
    l := length(cPanDigits[sp]);
    //only odd numbers
    IF Not(Odd(x)) then
      dec(x);
    inc(x,2);

    repeat
      dec(x,2);
      //early checking
      if x mod 3 = 0 then
        continue;

      str(x,s);
      if length(s)<l then
        BREAK;

      //check pandigital
      check := myCheck;
      For i := 1 to l do
        Exclude(check,Ord(s[i])-Ord('0'));
      if check <> [] then
        continue;

      //rest of prime check
      i := 5;
      repeat
        if x mod i = 0 then BREAK;
        Inc(i, 2);
        if x mod i = 0 then BREAK;
        Inc(i, 4);
      until i * i >= x;

      if i*i> x then
      Begin
        Writeln(Format('%s..7: %d', [sp, x]));
        Break;
      end;
    until x <= 2;

  end;
end.
{----------------------------------------------------- 98 parallel-calculations}
program FactorialPrimes;
{$mode ObjFPC}{$H+}
uses
  {$ifdef unix} cthreads, {$endif} SysUtils, Math;

type
  TArr = array of UInt32;

const
  Numbers: array[0..5] of UInt32 = (12757923, 197622519, 12878611, 12757923, 15808973, 15780709);

var
  Finished: UInt32;
  PrimeFactors: array[0..5] of TArr;

function GetPrimes(n: UInt32): TArr;
var
  Divisor, Next, Rest: UInt32;
begin
  Divisor := 2;
  Next := 3;
  Rest := n;
  while (Rest <> 1) do
  begin
    while (Rest mod Divisor = 0) do
    begin
      SetLength(Result, Length(Result) + 1);
      Result[High(Result)] := Divisor;
      Rest := Rest div Divisor;
    end;
    Divisor := Next;
    Next := Next + 2;
  end;
end;

function FindPrimeFactors(p: Pointer): PtrInt;   {threaded function}
var
  Index: UInt32;
begin
  Index := UInt32(p);
  PrimeFactors[Index] := GetPrimes(Numbers[Index]);
  InterLockedIncrement(Finished);
  Result := 0;
end;

function LowestFactor(factors: TArr): UInt32;
var
  Factor: UInt32;
begin
  Result := factors[0];
  for Factor in factors do
    Result := Min(Result, Factor);
end;

var
  ThreadCount, i, MinFactorIndex, MaxMinFactor, Factor: UInt32;
begin
  Finished := 0;
  ThreadCount := Length(Numbers);

  for i := 0 to High(Numbers) do
    BeginThread(@FindPrimeFactors, Pointer(i));

  while Finished < ThreadCount do;

  MaxMinFactor := 0;
  MinFactorIndex := 0;

  for i := 0 to High(Numbers) do
  begin
    Factor := LowestFactor(PrimeFactors[i]);
    if Factor > MaxMinFactor then
    begin
      MaxMinFactor := Factor;
      MinFactorIndex := i;
    end;
  end;

  Writeln('Number ', Numbers[MinFactorIndex], ' has the largest minimal factor:');
  for Factor in PrimeFactors[MinFactorIndex] do
    Write(' ', Factor);
end.

{---------------------------------------------------- 99 penholodigital-squares}
program PenHoloLaz;
{$COPERATORS ON}
{$OPTIMIZATION ON,ALL}
{$MODE Delphi}
{$INLINE ON}
//{$R+,O+}
uses
  sysutils;
const
  CnvChar = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
type
  tByteToBinTbl = Array[0..256-1] of Uint64;


  tDigits = array[0..31] of byte;
  tmyString = string[31];
  tmySet = Uint32;
  tLowSqrMasks = array of  tMySet;
  tmyCompound = record
                  mcLower_n2,
                  mcUpper_n2,
                  mcStartN,
                  mcEndN,
                  mcSteps,
                  mcSplitFact,
                  mcCheckLimit : Uint64;
                  mcbase,
                  mcStepSize,
                  mcSplitDgtPos,
                  mcPreTestDgtPos  : Uint32;
                  mcMaskUpper : tMySet;
                  mcMaskUpperOK  :boolean;
                end;

  Function CheckSqrPenholo(n:Uint64;base: Uint32):tmySet;forward;

var
  ByteToBinTbl : tByteToBinTbl;
  LowSqrMasks:tLowSqrMasks;
  FirstSol,LastSol,
  FirstSol_u,LastSol_u,
  SolCnt:Uint64;
  dgtInBase:tDigits;
  StepSize : Uint32;
  myMaskAll: tmySet;


  procedure InitByteToBin(var tbl:tByteToBinTbl);
  var
//  Test: String[8];
    Lmt,Mask,idx,idx1 : Uint64;
  begin
    Mask := Ord('0');
    idx := 8;
    repeat
      Mask := Mask shl idx + Mask;
      idx +=idx;
    until idx >= 64;
    TBL[0] := Mask;
//  TBL[0] = '00000000'
    Lmt := 1;
    //little endian
    Mask := 1 shl 56;
    //big endian  Mask := 1;
    repeat
      idx := 0;
      idx1 := Lmt;
      repeat
        Tbl[idx1] := tbl[idx] OR Mask;// set Bit "0" ->"1"
        inc(idx);
        inc(idx1);
      until idx = Lmt;
      //little endian
      Mask := Mask shr 8;
      //big endian  Mask := Mask shl 8;
      Lmt += Lmt;
   until Lmt >= 256;
  end;

function Numb2Bin(n:Uint64;dgts:Byte):Ansistring;
var
  idx: NativeInt;
begin
  dgts := (dgts-1) AND 7;
  idx := (dgts+1)*9;
  setlength(result,idx);
  fillchar(result[1],idx,#32);

  idx -= 8;
  For dgts := dgts downto 0 do
  begin
    pUint64(@Result[idx])^ := ByteToBinTbl[n and 255];
    idx -= 9;
    n := n shr 8;
  end;
end;

function Numb2USA(n:Uint64):Ansistring;
var
  pI :pChar;
  i,j : NativeInt;
Begin
  str(n,result);
  i := length(result);
 //extend s by the count of comma to be inserted
  j := i+ (i-1) div 3;
  if i<> j then
  Begin
    setlength(result,j);
    pI := @result[1];
    dec(pI);
    while i > 3 do
    Begin
       //copy 3 digits
       pI[j] := pI[i];pI[j-1] := pI[i-1];pI[j-2] := pI[i-2];
       // insert comma
       pI[j-3] := ',';
       dec(i,3);
       dec(j,4);
    end;
  end;
end;

function CalcStepSize(Base:Uint32):Uint32;
var
  dgtSqrRoot : array[0..31] of Uint32;
  dgtRoot,i,j,StepSize:Uint32;
begin
  fillchar(dgtSqrRoot,SizeOf(dgtSqrRoot),#0);
  // make Base to Base-1
  Base := Base-1;
  For i := 1 to Base do
    dgtSqrRoot[i] := sqr(i) MOD Base;
  dgtRoot :=(((Base+1)*Base) DIV 2) MOD Base;
//calc step size i
  i := 0;
  For j := 1 to Base do
    if dgtSqrRoot[j] = dgtRoot then
      inc(i);
  if i <> 0 then
    StepSize := Base DIV i
  else
    StepSize := 1;//pandigital/penholodigital for bases > 2 not possible
  exit(StepSize);
end;

function AdjustN(n: UInt64;Base:Uint32):Uint64;
//increment n til it fits (n*n) MOD b1 = dgtroot
var
  dgtroot,nm,i:Uint64;
begin
  Base := Base-1;
  nm := n MOD Base;
  //sum of digits (0..Base-1) mod (Base-1)
  dgtRoot :=(((Base+1)*Base) DIV 2) MOD Base;
  For i := 1 to Base do
  Begin
    if sqr(nm) MOD Base = dgtroot then
      BREAK;
    inc(nm);
    if nm >= Base then
      nm -= Base;
    inc(n);
  end;
  Exit(n);
end;

function CalcStartNStepSize(Base:Uint32):Uint64;
var
  j : Uint32;
  n : UInt64;
begin
  StepSize := CalcStepSize(Base);
  // square number containing 1,2..,base-1
  // now estimate root for  1234..Base-1
  // if base is even then root = 111...1 in Base
  n := 0;
  For j := Base DIV 2 downto 1 do
    n := n*base+1;
  // if base is  odd then root = sqrt(base)*(111...1) in Base
  if ODD(BASE) then
    n := trunc(n*Sqrt(base));
  Exit(AdjustN(n,base));
end;

function SetLimit(Base:Uint32):Uint64;
//create max penholo square. ex: Base 10 => 987,654,321
//neglectible against '999,999,999'
var
  lmt_f,Base_f : double;
  i : Int32;
begin
  If Base = 2 then
    EXIT(1);
  lmt_f := 0.0;
  Base_f := Base;
  i := Base-1;
  while i>0 do
  Begin
    lmt_f := lmt_f*Base_f+i;
    dec(i);
  end;
  Exit(trunc(sqrt(lmt_f)));
end;

Function DigitsInBase(n:UInt64;base:Uint32):Uint32;
var
  q : UInt64;
  r,idx  : UInt32;
Begin
  fillchar(dgtInBase,SizeOf(DgtInBase),#0);
  idx := 0;
  repeat
    q := n div Base;
    r := n-q*Base;
    dgtInBase[idx] := r;
    inc(idx);
    n := q;
  until q = 0;
  exit(idx-1);
end;

function OutNInBase(n:UInt64;base:Uint32):tmyString;
var
  l : Int32;
Begin
  l := DigitsInBase(n,Base);
  setlength(result,l+1);
  Base := 1;
  repeat
    result[Base]:= CnvChar[dgtInBase[l]+1];
    inc(Base);
    dec(l);
  until l < 0;
end;

procedure OutFromToSol(Base:Uint32);
var
  Outs,Outn : tmyString;
begin
  OutS := OutNInBase(Sqr(FirstSol),Base);
  Outn := OutNInBase(FirstSol,Base);
  write(OutN:Base SHR 1+1,'^2 =',OutS:Base,' .... ');
  OutS := OutNInBase(sqr(LastSol),Base);
  Outn := OutNInBase(LastSol,Base);
  writeln(OutN:Base SHR 1+1,'^2 =',OutS:Base);
end;

procedure OutSolution(n:Uint64;Base:Uint32);
var
  Outs,Outn : tmyString;
begin
  OutS := OutNInBase(sqr(n),Base);
  Outn := OutNInBase(n,Base);
  write(OutN:Base SHR 1+1,'^2 =',OutS:Base,'|');
  if SolCnt mod 4 = 0 then
    writeln;
end;

procedure OutSol(n:Uint64;Base:Uint32);
var
  sc : Uint32;
begin
  sc := SolCnt;
  SolCnt:= sc+1;
  if Base > 10 then
  begin
    if sc <> 0 then
      LastSol := n
    else
      FirstSol := n;
   end
 else
   OutSolution(n,Base);
end;

procedure OutHeader(n,Lmt:Uint64;base:Uint32);
var
  steps : Uint64;
Begin
  steps := (LMT-N) div StepSize;
  write('Base ',base:2,' test from  ',OutNInBase(n,base),' to ');
  writeln(OutNInBase(Lmt,base),' with step size ',StepSize,' -> ',steps,' steps');
end;

 function NewUpperMask(n_u:Uint64;base:Uint32):Uint32;
var
  q : Uint64;
  msk,
  StartMask:UInt32;
begin
  StartMask := 1;
  repeat
    q := n_u div Base;
    msk := 1 shl (n_u - q* base);//dgt;
    if (msk AND StartMask) <> 0 then
      EXIT(0);
    StartMask:= StartMask OR msk;
    n_u := q;
  until q = 0;
  Exit(StartMask);
end;

Procedure OutNewSolHighBase(n:Uint64;base:Uint32);
var
  OutU,OutL : tmyString;
begin
  OutU := OutNInBase(FirstSol_u,Base);
  OutL := OutNInBase(FirstSol,Base);
  write('From ',OutU,OutL,' to ');
  OutU := OutNInBase(LastSol_u,Base);
  OutL := OutNInBase(LastSol,Base);
  writeln(OutU,OutL);
end;

Procedure OutNewSol(n:Uint64;base:Uint32);
var
  OutU,OutL,Outn : tmyString;
begin
  Outn := OutNInBase(n,Base);
  OutU := OutNInBase(LastSol_u,Base);
  OutL := OutNInBase(LastSol,Base);
  write(OutN:Base SHR 1+1,'^2 =',OutU,OutL,'|');
  if SolCnt mod 2 = 0 then
    writeln;
end;

procedure OutSol2(n,n_u,n_l:Uint64;base:Uint32);
var
  sc : Uint32;
begin
  sc := SolCnt;
  LastSol := n_l;
  LastSol_u := n_u;
  if sc = 0 then
  begin
    FirstSol := n_l;
    FirstSol_u := n_u;
  end;
  if base < 11 then
    OutNewSol(n,base);
  SolCnt := sc+1;
end;


Function CheckNewPenholo(n:Uint64;mask:tmySet;base: Uint32):tmySet;inline;
var
  q : UInt64;
  msk  : UInt32;
Begin
  repeat
    q := n div Base;
    msk := 1 shl (n-q*Base);
    if (msk AND mask) <> 0 then
    begin
      mask := 0;
      break;
    end;
    mask := mask XOR msk;
    n := q;
  until q = 0;
  exit(mask);
end;

procedure TestSplitVersion(var myCp:tmyCompound);
var
  dSqr,ddSqr,n2_l,SplitFact: Uint64;
  steps : Int64;
  mask,Base,LowSqrIdx : UInt32;
begin
  If StepSize=1 then
    EXIT;
  with myCp do
  Begin
    SolCnt := 0;
    base := mcbase;
    n2_l := mcLower_n2;
    steps := mcSteps;
    SplitFact := mcSplitFact;
    mcMaskUpper := NewUpperMask(mcUpper_n2,base);
    LowSqrIdx := 0;
    dSqr := (2*mcStartN+StepSize)*Stepsize;
    ddSqr := sqr(StepSize)*2;
    myMaskAll :=(1 shl Base)-1;//b1...11;

    repeat
      repeat
        mask := LowSqrMasks[LowSqrIdx];
        //check if mask of upper digits has no same elemnt of lowSqrDigits
        if mcMaskUpper AND mask = 1 then
        begin
          mask := mcMaskUpper OR mask;
          //check the unchecked digits
          if CheckNewPenholo(n2_l DIV mcCheckLimit,mask,Base) = myMaskAll then
            OutSol2(mcStartN,mcUpper_n2,n2_l,Base);
        end;
        dec(steps);//if steps = 0 then break;
        inc(LowSqrIdx);
        IF LowSqrIdx >= mcCheckLimit then
           dec(LowSqrIdx,mcCheckLimit);
        inc(mcStartN,StepSize);
        inc(n2_l,dSqr);
        inc(dSqr,ddSqr);
      until n2_l >= SplitFact;
      if steps = 0 then
        break;
      repeat
        inc(mcUpper_n2);
        mcMaskUpper := NewUpperMask(mcUpper_n2,base);
        //correct n2_l
        n2_l -= SplitFact;
        if mcMaskUpper = 0 then
        begin
          //next mcUpper_n2 with no tests
          repeat
            dec(steps);
            inc(LowSqrIdx);
            inc(mcStartN,StepSize);
            inc(n2_l,dSqr);
            inc(dSqr,ddSqr);
          until n2_l >= SplitFact;
          while LowSqrIdx >= mcCheckLimit do
            dec(LowSqrIdx,mcCheckLimit);
          if steps <= 0 then
             break;
        end;
      until mcMaskUpper <> 0;
      if steps <= 0 then
         break;
    until false;
    writeln;
    if Base >= 10 then
      OutNewSolHighBase(mcStartN,base);
    writeln(' count ',SolCnt);
  end;
end;

Function CheckGetSqrPenholo(n:Uint64;base,cnt: Uint32):tmySet;
var
  q : UInt64;
  Test, msk: tMySet;
Begin
  Test := 1;
  For cnt := cnt-1 downto 0 do
  Begin
    q := n div Base;
    msk := 1 shl (n-q*Base);
    if (msk AND Test)<> 0 then
      EXIT(0);
    Test := Test OR msk;
    n := q;
  end;
  exit(Test);
end;

  procedure GenerateLowerSqrDigits(var myCb: tmyCompound; Base: uint32);
  var
    n,n_l,j,dSqr,ddSqr : Uint64;
    preTestDgtCnt, i: uint32;
  begin
    n := myCb.mcStartN;
    Writeln(OutNInBase(n,base));
    // only lower part needed
    n_l := myCb.mcLower_n2;
    dSqr := (2*n+StepSize)*Stepsize;
    ddSqr := sqr(StepSize)*2;

    preTestDgtCnt := myCb.mcSplitDgtPos-6;
    j := 1;
    for i := 1 to preTestDgtCnt do
      j *= base;
    myCb.mcPreTestDgtPos := preTestDgtCnt;
    myCb.mcCheckLimit := j;

    setlength(LowSqrMasks,j);
    for i := 0 to j-1 do
    begin
      //Mask for lower digits of square
      LowSqrMasks[i]  := CheckGetSqrPenholo(n_l,base,preTestDgtCnt);
      n_l += dSqr;
      dSqr += ddSqr;
      if n_l >= myCb.mcSplitFact then
        n_l -= myCb.mcSplitFact;
      inc(n,StepSize);
    end;
  Writeln(' ',OutNInBase(n_l,base));
  writeln(OutNInBase(n,base), '  pretestet ',preTestDgtCnt,' digits');
end;

procedure GenerateSplitSqr(var myCb:tmyCompound;Base: Uint32);
// calculate values
//Base 26 is upper limit
(*  tmyCompound = record
                  mcLower_n2,
                  mcUpper_n2,
                  mcStartN,
                  mcEndN,
                  mcSteps,
                  mcSplitFact : Uint64;
                  mcMaskUpper,
                  mcMask      : tmySet;
                  mcbase,
                  mcSplitDgtPos,
                  mcCheckLimit   : Uint32;
                  mcMaskUpperOK  :boolean;
                end;
*)
var
  Digits_N2:tDigits;
  n, baseMod,n_upper,n_lower,DeltaSqr,DeltaDeltaSqr :Uint64;
  i,j,k,DgtJ,dgt,carry : UINt32;
begin
  fillchar(myCb,SizeOF(myCb),#0);
  n := CalcStartNStepSize(base);
  with myCb do
  begin
    mcbase := base;
    mcStartN := n;
    mcEndN := SetLimit(base);
    mcStepSize := CalcStepSize(Base);
    mcSteps := (mcEndN-mcStartN) DIV mcStepSize;
    mcMaskUpper := 1;
    if Base < 10 then
    Begin
      mcLower_n2 := sqr(n);
      mcSplitFact := High(Uint64);
    end;
  end;
  iF StepSize = 1 then
    EXIT;
  DeltaSqr := (2*n+StepSize)*Stepsize;
  DeltaDeltaSqr := sqr(StepSize)*2;

  Writeln(' Base ',base,' starting n in decimal ',Numb2USA(n));
  write  (' DeltaSqr: ',Numb2USA(DeltaSqr));
  Writeln(' DeltaDeltaSqr: ', DeltaDeltaSqr);
  writeln(' Steps: ',Numb2USA(myCb.mcSteps));
// writeln('Is useful ',High(Uint64) div Base > DeltaSqr);


//  if myCb.mcSteps > 60000 then
  Begin
    //do the squaring of n in Base
    fillchar(Digits_N2,SizeOf(Digits_N2),#0);
    k := DigitsInBase(n,base);
    For j := 0 to k do
    Begin
      carry :=0;
      DgtJ := dgtInBase[j];
      For i := 0 to k do
      Begin
        dgt := Digits_N2[i+j] + dgtInBase[i]*DgtJ +Carry;
        carry := dgt DIV Base;
        Digits_N2[i+j] := dgt - carry*Base;
      end;
      if carry <> 0 then
        Digits_N2[j+k+1] += carry;
    end;

    //search for possible position of split digit position
    i := 0;
    baseMod := 1;
    repeat
      baseMod *= Base;
      inc(i);
    until baseMod>=DeltaSqr;

    while High(Int64) DIV baseMod > Base do
    begin
      baseMod *= Base;
      inc(i);
      IF baseMod/DeltaSqr > base then
        Break;
    end;

    myCb.mcSplitDgtPos := i;
    myCb.mcSplitFact := baseMod;
    writeln(' Split at ',i,'  ',NUmb2USA(myCb.mcSplitFact):16,'  ',BaseMod/DeltaSqr:10:7);

    n_upper :=0;
    For j := Base-2 downto i do
      n_upper := n_upper*base+Digits_N2[j];
    n_lower := 0;
    For j := i-1 downto 0 do
      n_lower := n_lower*base+Digits_N2[j];
    write(' ',OutNinBase(n_upper,Base));
    writeln('#',OutNinBase(n_lower,Base));

    with myCb do
    Begin
      mcMaskUpper := NewUpperMask(n_upper,base);
//    writeln(' MaskUpper ',Numb2Bin(mcMaskUpper,3));
      mcMaskUpperOK := mcMaskUpper<>0;
      mcLower_N2 :=n_lower;
      mcUpper_N2 :=n_upper;
    end;

    GenerateLowerSqrDigits(myCb,Base);
  end;
end;

Function CheckSqrPenholo(n:Uint64;base: Uint32):tmySet;
var
  q : UInt64;
  Test : tmySet;
  msk  : tmySet;
Begin
  Test := 1;
  repeat
    q := n div Base;
    msk := 1 shl (n-q*Base);
    if (msk AND Test) <> 0 then
    begin
      Test := 0;
      Break;
    end;
    Test := Test OR msk;
    n := q;
  until q = 0;
  exit(Test);
end;

procedure CheckOneBase(Base:Uint32);
var
  lmt,n,n_sqr,deltaSqr,DeltaDeltaSqr : Uint64;
begin
  // n = sqrt( 12345.. base-1 )
  n := CalcStartNStepSize(Base);
  //if (base = 13) or (base = 17) then    continue;
  If (StepSize = 1) AND (Base<>2) then
    EXIT;
  myMaskAll :=(1 shl Base)-1;//b1...11;
  lmt := SetLimit(Base);
  OutHeader(n,lmt,base);

  FirstSol := 0;
  LastSol := 0;
  //b1...10; 0 marked as already used

  n_sqr := n*n;
  DeltaSqr := (2*n+StepSize)*Stepsize;
  DeltaDeltaSqr := 2*StepSize*Stepsize;
  SolCnt := 0;

  repeat
    If (CheckSqrPenholo(n_sqr,base) XOR myMaskAll) =0 then
      OutSol(n,Base);
    inc(n,StepSize);
    inc(n_sqr,DeltaSqr);
    inc(DeltaSqr,DeltaDeltaSqr);
  until n > Lmt;

  if SolCnt Mod 4 <> 0 then
    writeln;
  Writeln('count: ', SolCnt);
  if (Base >= 11) AND (SolCnt>0) then
    OutFromToSol(Base);
  writeln;
end;

var
  myNum : tmyCompound;
  base : 2..27;
begin
  InitByteToBin(ByteToBinTbl);

//  For base := 10 to 15 do    CheckOneBase(base);

  For base := 16 to 18 do //22 @home
  Begin
    GenerateSplitSqr(myNum,base);
    TestSplitVersion(myNum);
    writeln;
  end;
end.
{--------------------------------------------------------- 100 population-count}
program populationCount(input, output, stdErr);
var
	// general advice: iterator variables are _signed_
	iterator: int64;
	// the variable we’d like to count the set bits in
	number: qWord;
	// how many evil numbers we’ve already found
	evilCount: int64;
	// odious numbers
	odiousNumber: array[1..30] of qWord;
	odiousIterator: int64;
begin
	// population count for powers of three
	for iterator := 0 to 29 do
	begin
		number := round(exp(ln(3) * iterator));
		write(popCnt(number):3);
	end;
	writeLn();
	
	// evil numbers
	// (while preserving calculated odious numbers for next sub-task)
	evilCount := 0;
	odiousIterator := low(odiousNumber);
	
	// for-loop: because we (pretend to) don’t know,
	// when and where we’ve found the first 30 numbers of each
	for iterator := 0 to high(iterator) do
	begin
		// implicit typecast: popCnt only accepts _un_-signed integers
		number := iterator;
		if odd(popCnt(number)) then
		begin
			if odiousIterator <= high(odiousNumber) then
			begin
				odiousNumber[odiousIterator] := number;
				inc(odiousIterator);
			end;
		end
		else
		begin
			if evilCount < 30 then
			begin
				write(number:20);
				inc(evilCount);
			end;
		end;
		
		if evilCount + odiousIterator > 60 then
		begin
			break;
		end;
	end;
	writeLn();
	
	// odious numbers
	for number in odiousNumber do
	begin
		write(number:20);
	end;
	writeLn();
end.
{---------------------------------------------------- 101 prime-decomposition-1}
Program PrimeDecomposition(output);

type
  DynArray = array of integer;

procedure findFactors(n: Int64; var d: DynArray);
  var
    divisor, next, rest: Int64;
    i: integer;
 begin
    i := 0;
    divisor := 2;
    next := 3;
    rest := n;
    while (rest <> 1) do
    begin
      while (rest mod divisor = 0) do
      begin
        setlength(d, i+1);
        d[i] := divisor;
        inc(i);
        rest := rest div divisor;
      end;
      divisor := next;
      next := next + 2;
    end;
  end;

var
  factors: DynArray;
  j: integer;

begin
  setlength(factors, 1);
  findFactors(1023*1024, factors);
  for j := low(factors) to high(factors) do
    writeln (factors[j]);
end.
{---------------------------------------------------- 102 prime-decomposition-2}
Program PrimeDecomposition(output);

type
  DynArray = array of integer;

procedure findFactors(n: Int64; var d: DynArray);
  var
    divisor, next, rest: Int64;
    i: integer;
 begin
    i := 0;
    divisor := 2;
    next := 3;
    rest := n;
    while (rest <> 1) do
    begin
      while (rest mod divisor = 0) do
      begin
        setlength(d, i+1);
        d[i] := divisor;
        inc(i);
        rest := rest div divisor;
      end;
      divisor := next;
      next := next + 2;  // try only odd numbers
      // cut condition: avoid many useless iterations
      if (rest < divisor * divisor) then
        begin
          setlength(d, i+1);
          d[i] := rest;
          rest := 1;
        end;
    end;
  end;

var
  factors: DynArray;
  j: integer;

begin
  setlength(factors, 1);
  findFactors(1023*1024, factors);
  for j := low(factors) to high(factors) do
    writeln (factors[j]);
  readln;
end.
{----------------------------------------------------------- 103 prime-triangle}
program PrimePyramid;
{$IFDEF FPC}
  {$MODE delphi}{$Optimization ON,ALL}{$CodeAlign proc=32}
{$IFEND}
const
  MAX = 21;//max 8 different  SumToPrime : array[0..MAX,0..7] of byte;
  //MAX = 57;//max 16 different SumToPrime : array[0..MAX,0..15] of byte;
  cMaxAlign32 = (((MAX-1)DIV 32)+1)*32-1;//MAX > 0
type
  tPrimeRange = set of 0..127;
var
  SetOfPrimes :tPrimeRange =[2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,
                             53,59,61,67,71,73,79,83,89,97,101,103,107,
                             109,113,127];

  SumToPrime : array[0..cMaxAlign32,0..7] of byte;
//  SumToPrime : array[0..MAX,0..15] of byte;
  SumToPrimeMaxIdx,
  SumMaxIdx,
  Solution,
  FirstSolution    : array[0..cMaxAlign32] of byte;

  free : array[0..cMaxAlign32] of boolean;

  maxused : integer;
  digitcount,SolCount : integer;

procedure InitSumToPrime;
var
  i,j,idx : integer;
begin
  For i := 1 to MAX do
  Begin
    idx := 0;
    For j := 1 to MAX do
      If (i+j) in SetOfPrimes then
      Begin
        SumToPrime[i,idx] := j;
        inc(idx);
      end;
    SumToPrimeMaxIdx[i] := idx;
  end;
end;

procedure InitFree(maxused : integer);
var
  i,j : Integer;
begin
  For i := 0 to 1 do
    Free[i] := false;
  For i := 2 to maxused-1 do
    Free[i] := true;
  For i := maxused to MAX do
    Free[i] := false;
  // search maxidx of max neighour sum to prime
  For i := 1 to maxused-1 do
  begin
    j := SumToPrimeMaxIdx[i]-1;
    while SumToPrime[i,j] > maxused-1 do
      j -= 1;
    SumMaxIdx[i] := j+1;
  end;
end;

procedure CountSolution(digit:integer);
begin
  // check if maxused can follow
  if (digit+maxused) in SetOfPrimes then
  Begin
    if solcount = 0 then
       FirstSolution := Solution;
    inc(solCount);
  end;
end;

procedure checkDigits(digit:integer);
var
  idx,nextDigit: integer;
begin
  idx := 0;
  repeat
    nextDigit := SumToPrime[digit,idx];
    if Free[nextdigit] then
    Begin
      Solution[digitcount] := nextDigit;
      dec(digitcount);
      IF digitcount = 0 then
        CountSolution(nextDigit);
      free[nextdigit]:= false;
      checkDigits(nextdigit);
      inc(digitcount);
      free[nextdigit]:= true;
    end;
    inc(idx);
  until idx >= SumMaxIdx[digit];
end;

var
  i,j : integer;
Begin
  InitSumToPrime;
  writeln('number|   count|  first solution');
  writeln('   2|         1|  1  2');
  For i := 3 to 20 do
  Begin
    maxused := i;
    InitFree(i);
    digitcount := i-2;
    solCount := 0;
    checkDigits(1);
    write(i:4,'|',solcount:10,'|  1');
    For j := i-2 downto 1 do
      write( FirstSolution[j]:3);
    writeln(i:3);
  end;
end.
{--------------------------------------------------------- 104 queue-definition}
program queue;
 {$IFDEF FPC}{$MODE DELPHI}{$IFDEF WINDOWS}{$APPTYPE CONSOLE}{$ENDIF}{$ENDIF}
 {$ASSERTIONS ON}
uses Generics.Collections;

var
  lQueue: TQueue<Integer>;
begin
  lQueue := TQueue<Integer>.Create;
  try
    lQueue.EnQueue(1);
    lQueue.EnQueue(2);
    lQueue.EnQueue(3);
    Write(lQueue.DeQueue:2);   // 1
    Write(lQueue.DeQueue:2);   // 2
    Writeln(lQueue.DeQueue:2); // 3
    Assert(lQueue.Count = 0, 'Queue is not empty'); // should be empty
  finally
    lQueue.Free;
  end;
end.
{-------------------------------------------------------------------- 105 quine}
const s=';begin writeln(#99#111#110#115#116#32#115#61#39,s,#39,s);readln;end.';begin writeln(#99#111#110#115#116#32#115#61#39,s,#39,s);readln;end.
{---------------------------------------------------- 106 radical-of-an-integer}
program Radical;
{$IFDEF FPC}  {$MODE DELPHI}{$Optimization ON,ALL} {$ENDIF}
{$IFDEF WINDOWS}{$APPTYPE CONSOLE}{$ENDIF}
//much faster would be
//https://rosettacode.org/wiki/Factors_of_an_integer#using_Prime_decomposition
const
  LIMIT = 1000*1000;
  DeltaMod235 : array[0..7] of Uint32 = (4, 2, 4, 2, 4, 6, 2, 6);

type
  tRadical = record
               number,radical,PrFacCnt: Uint64;
               isPrime : boolean;
             end;
  function GetRadical(n: UInt32):tRadical;forward;

function CommaUint(n : Uint64):AnsiString;
//commatize only positive Integers
var
  fromIdx,toIdx :Int32;
  pRes : pChar;
Begin
  str(n,result);
  fromIdx := length(result);
  toIdx := fromIdx-1;
  if toIdx < 3 then
    exit;

  toIdx := 4*(toIdx DIV 3)+toIdx MOD 3 +1 ;
  setlength(result,toIdx);
  pRes := @result[1];
  dec(pRes);
  repeat
    pRes[toIdx]   := pRes[FromIdx];
    pRes[toIdx-1] := pRes[FromIdx-1];
    pRes[toIdx-2] := pRes[FromIdx-2];
    pRes[toIdx-3] := ',';
    dec(toIdx,4);
    dec(FromIdx,3);
  until FromIdx<=3;
  while fromIdx>=1 do
  Begin
    pRes[toIdx] := pRes[FromIdx];
    dec(toIdx);
    dec(fromIdx);
  end;
end;

procedure OutRadical(n: Uint32);
Begin
  writeln('Radical for ',CommaUint(n):8,':',CommaUint(GetRadical(n).radical):8);
end;

function GetRadical(n: UInt32):tRadical;
var
  q,divisor, rest: UInt32;
  nxt : Uint32;
begin
  with result do
  Begin
    number := n;
    radical := n;
    PrFacCnt := 1;
    isPrime := false;
  end;

  if n <= 1 then
    EXIT;

  if n in [2,3,5,7,11,13,17,19,23,29,31] then
  Begin
    with result do
    Begin
      isprime := true;
      PrFacCnt := 1;
    end;
    EXIT;
  end;

  with result do
  Begin
    radical := 1;
    PrFacCnt := 0;
  end;

  rest := n;
  if rest AND 1 = 0 then
  begin
    with result do begin radical := 2; PrFacCnt:= 1;end;
    repeat
      rest := rest shr 1;
    until rest AND 1 <> 0;
  end;

  if rest < 3 then
    EXIT;
  q := rest DIV 3;
  if rest-q*3= 0 then
  begin
    with result do begin radical *= 3; inc(PrFacCnt);end;
    repeat
      rest := q;
      q := rest DIV 3;
    until rest-q*3 <> 0;
  end;

  if rest < 5 then
    EXIT;
  q := rest DIV 5;
  if rest-q*5= 0 then
  begin
    with result do begin radical *= 5;inc(PrFacCnt);end;
    repeat
      rest := q;
      q := rest DIV 5;
    until rest-q*5 <> 0;
  end;

  divisor := 7;
  nxt := 0;
  repeat;
    if rest < sqr(divisor) then
      BREAK;
    q := rest DIV divisor;
    if rest-q*divisor= 0 then
    begin
      with result do begin radical *= divisor; inc(PrFacCnt);end;
      repeat
        rest := q;
        q := rest DIV divisor;
      until rest-q*divisor <> 0;
    end;
    divisor += DeltaMod235[nxt];
    nxt := (nxt+1) AND 7;
  until false;
  //prime ?
  if rest = n then
    with result do begin radical := n;PrFacCnt:=1;isPrime := true; end
  else
    if rest >1 then
      with result do begin radical *= rest;inc(PrFacCnt);end;
end;

var
  Rad:tRadical;
  CntOfPrFac : array[0..9] of Uint32;
  j,sum,countOfPrimes,CountOfPrimePowers: integer;

begin
  writeln('The radicals for the first 50 positive integers are:');
  for j := 1 to 50 do
  Begin
    write (GetRadical(j).radical:4);
    if j mod 10 = 0 then
      Writeln;
  end;
  writeln;

  OutRadical( 99999);
  OutRadical(499999);
  OutRadical(999999);
  writeln;

  writeln('Breakdown of numbers of distinct prime factors');
  writeln('for positive integers from 1 to ',CommaUint(LIMIT));

  countOfPrimes:=0;
  CountOfPrimePowers :=0;
  For j := Low(CntOfPrFac) to High(CntOfPrFac) do
    CntOfPrFac[j] := 0;
  For j := 1 to LIMIT do
  Begin
    Rad := GetRadical(j);
    with rad do
    Begin
      IF isPrime then
        inc(countOfPrimes)
      else
        if (j>1)AND(PrFacCnt= 1) then
          inc(CountOfPrimePowers);
    end;
    inc(CntOfPrFac[Rad.PrFacCnt]);
  end;

  sum := 0;
  For j := Low(CntOfPrFac) to High(CntOfPrFac) do
    if CntOfPrFac[j] > 0 then
    Begin
      writeln(j:3,': ',CommaUint(CntOfPrFac[j]):10);
      inc(sum,CntOfPrFac[j]);
    end;
    writeln('sum: ',CommaUint(sum):10);
  writeln;
  sum := countOfPrimes+CountOfPrimePowers+1;
  writeln('For primes or powers (>1) there of <= ',CommaUint(LIMIT));
  Writeln('  Number of primes       =',CommaUint(countOfPrimes):8);
  Writeln('  Number of prime powers =',CommaUint(CountOfPrimePowers):8);
  Writeln('  Add 1 for number       =       1');
  Writeln('  sums to                =',CommaUint(sum):8);
  {$IFDEF WINDOWS}readln;{$ENDIF}
end.
{------------------------------------------------- 107 search-a-list-of-records}
program Search_list_records;
{$mode ObjFPC}{$H+}

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
    (name: 'Casablanca'; population: 3.98)
  );

function FindCityIndex(const CityName: string): Integer;
var
  i: Integer;
begin
  Result := -1;
  for i := 0 to High(Cities) do
    if Cities[i].name = CityName then
      Exit(i);
end;

function FindCityName(const pop: real): string;
var
  City: TCity;
begin
  Result := 'not found';
  for City in Cities do
    if City.population < pop then
      Exit(City.name);
end;

function FindCityPopulation(const Start: Char): Real;
var
  City: TCity;
begin
  Result := -1;
  for City in Cities do
    if City.name[1] = Start then
      Exit(City.population);
end;

begin
  writeln('index: ', FindCityIndex('Dar Es Salaam'));
  writeln('name: ', FindCityName(5.0));
  writeln('population: ', FindCityPopulation('A'):4:2);
end.

{--------------------------------------------------- 108 self-contained-numbers}
program CollatzSelf;
uses
  sysutils;
var
  n,c,One : Uint64;
  count: Int32;

function Solution(n,c:Uint64):boolean;
begin
  writeln(Format('%d x %d = %d',[n,c div n,c]));
  inc(count);
  Solution := count = 7;
end;

begin
  writeln('selfcontained numbers of collatz sequence');
  count := 0;
  n := 3; // always odd > 1
  One := 1;
  repeat
    c := n;

    repeat
      //grow and make even
      c := 3*c+One;
      //is selfcontained then
      if c Mod n = 0 then
        BREAK;
      //reduce to odd
      repeat
        c := c SHR 1;
      until c AND One <> 0;
    until c = One;

    if c <> one then
      if Solution(n,c)  then
        BREAK;

    n += 2;
  until false;
end.
{------------------------------------------------------------ 109 shape-machine}
program ShapeMachine;
const
  offset = 3.0;
  factor = 0.86;
var
  before, after: extended;
  iterationsCount: uint32;
begin
  //x = (x+offset)*factor
  //x/factor-x = offset
  //x := offset/(1/factor-1) -> factor must be smaller than 1
  after := 4;
//  after := offset/(1/factor-1);
  iterationsCount := 0;
  Writeln('Start with value ',after);
  repeat
    before := after;
    after := (before + offset) * factor;
    Inc(iterationsCount);
  until before = after;
  writeln(before: 0: 20, ' after ', iterationsCount, ' iterations');
  {$IFDEF WINDOWS}
  readln;
  {$ENDIF}
end.
{--------------------------------------------------------- 110 show-ascii-table}
// The FPC (FreePascal compiler) discards the program header
// (except in ISO-compliant “compiler modes”).
program showAsciiTable(output);

const
   columnsTotal = 6;

type
   // The hash indicates a char-data type.
   asciiCharacter = #32..#127;
   asciiCharacters = set of asciiCharacter;

var
   character: asciiCharacter;
   characters: asciiCharacters;
   column, line: integer;
begin
   // characters needs to be initialized,
   // because the next `include` below
   // will _read_ the value `characters`.
   // Reading _unintialized_ values, however,
   // is considered bad practice in Pascal.
   characters := [];
   // `div` denotes integer division in Pascal,
   // that means the result will be an _integer_-value.
   line := (ord(high(asciiCharacter)) - ord(low(asciiCharacter)))
      div columnsTotal + 1;
   // Note: In Pascal for-loop limits are _inclusive_.
   for column := 0 to columnsTotal do
   begin
      // This is equivalent to
      //   characters := characters + […];
      // i.e. the union of two sets.
      include(characters, chr(ord(low(asciiCharacter)) + column * line));
   end;

   for line := line downto 1 do
   begin
      // the for..in..do statement is an Extended Pascal extension
      for character in characters do
      begin
         // `:6` specifies minimum width of argument
         // [only works for write/writeLn/writeStr]
         write(ord(character):6, ' : ', character);
      end;
      // emit proper newline character on `output`
      writeLn;

      // `characters` is evaluated prior entering the loop,
      // not every time an iteration finished.
      for character in characters do
      begin
         // These statements are equivalent to
         //   characters := characters + [character];
         //   characters := characters - [succ(character)];
         // respectively, but shorter to write,
         // i.e. less susceptible to spelling mistakes.
         exclude(characters, character);
         include(characters, succ(character));
      end;
   end;
end.
{-- 111 show-the-decimal-value-of-a-number-of-1s-appended-with-a-3-then-squared}
{
  10^pot+k -> prepend a 1  1113-> 11113
  (10^pot+k)^2 = 10^(2*pot)+ 2*10^pot*k + k^2
  (10^pot+k)^2 = 10^pot*(10^pot+2*k) + k^2
  s_lastsqr = k*k
  s_DeltaSqr = (10^pot+2*k) => 1222....2226
  shift s_DeltaSqr by pot digits in SumMyDeltaSqr =>  10^pot*(10^pot+2*k)
}
program OnesAppend3AndSquare;
const
  MAX = 3700;
type
  tmyNumb = array of byte;
var
  res :AnsiString;

procedure OutMyNumb(const n: tmyNUmb;l,w: integer);
var
  i,ofs : integer;
begin
  l += 1;
  if w < l then
    w := l+1;
  setlength(res,w);
  fillchar(res[1],w,' ');
  ofs := w-l;
  For i := 1 to l do
    res[i+ofs] := chr(n[l-i]+48);
  write(res);
end;

procedure Out_k_sqr(const k,sqr_k: tmyNUmb;pot:integer);
var
  dgtcnt : integer;
Begin
  write(pot:4);
  dgtcnt := 22;
  if pot > 10 then
    dgtcnt := 78;
  OutMyNumb(k,pot,dgtcnt-4);
  if pot > 10 then
    writeln;
  OutMyNumb(sqr_k,2*pot,dgtcnt);
  writeln;
end;
procedure SumMyDeltaSqr(var res:tmyNUmb;const s:tmyNumb;pot: integer);
//res = s_lastsqr
//s = s_DeltaSqr
//shift s by l => (10^pot) * s_DeltaSqr = 10^pot*(10^pot+2*k)
var
  i,sum,carry : integer;
begin
  carry := 0;
  For i := 0 to pot+1 do
  begin
    sum :=  res[i+pot]+s[i]+carry;
    carry := ord(sum>9);
    sum -= (-carry) AND 10;
    res[i+pot] := sum;
  end;
end;

var
  s,s_DeltaSqr,s_lastsqr : tmyNumb;
  pot: integer;
Begin
   setlength(s,MAX);
   setlength(s_DeltaSqr,Max+1);
   setlength(s_lastsqr,2*Max+1);
   pot := 0;
   s[pot] := 3;
   s_lastsqr[pot] := 9;
   repeat
     SumMyDeltaSqr(s_lastsqr,s_DeltaSqr,pot);
     if pot < 10 then
       Out_k_sqr(s,s_lastsqr,pot);
     if pot = 37 then
       Out_k_sqr(s,s_lastsqr,pot);

     if pot > 0 then
       s_DeltaSqr[pot]:= 2 // =>2*s[i] 2222...26
     else
       s_DeltaSqr[0] := 6;// =>2*s[0]  6
     inc(pot);
     s_DeltaSqr[pot]:= 1; //1...6
     s[pot] := 1;
   until pot = MAX;
   Writeln('Finished til ',MAX);
end.
{----------------------------------------------------------- 112 shuffle-groups}
program ShuffleGroups;
{$MODE DELPHI}{$optimization ON,ALL}

uses
  sysutils;
const
  BASE = 10;
  MaxLmt = 1402857;//1037520684;//
type
  tDgts  = 0..BASE-1;
  tUsedDigits = set of tDgts;
  tcntOfDigit = array[tDgts] of Byte;
  tdigitsOfNum = packed record
                   digit : array[0..21] of byte;
                   cntOfDigit: tcntOfDigit;
                   Num : Uint32;
                   witness : tUsedDigits;
                   cntDigits,
                   witcnt: byte;
                 end;

  tpdigitsOfNum = ^tdigitsOfNum;
  tWitness =  packed record
                Num : Uint32;
                witness : tUsedDigits;
                witcnt,dummy : byte;
              end;

  tWitCntOcc = array[tDgts] of Uint32;
  tSolutions = array of tWitness;
var
  GBLIncCount : NativeUint;

function Numb2USA(n:Uint64):Ansistring;
var
  pI :pChar;
  i,j : NativeInt;
Begin
  str(n,result);
  i := length(result);
 //extend s by the count of comma to be inserted
  j := i+ (i-1) div 3;
  if i<> j then
  Begin
    setlength(result,j);
    pI := @result[1];
    dec(pI);
    while i > 3 do
    Begin
       //copy 3 digits
       pI[j] := pI[i];pI[j-1] := pI[i-1];pI[j-2] := pI[i-2];
       //insert comma
       pI[j-3] := ',';
       dec(i,3);
       dec(j,4);
    end;
  end;
end;
procedure CheckWitCountOccurence(var WCO : tWitCntOcc;const Sol:tSolutions; til:Int32);
var
  cnt: Int32;
begin
  writeln('For the first ',til+1,' shuffle groups, there are:');
  FillChar(WCO,SizeOf(WCO),#0);
  while til>=0 do
  begin
    inc(WCO[Sol[til].witcnt]);
    dec(til);
  end;

  writeln(' FacCnt  found witnesses');
  For til := 1 to Base-1 do
  begin
    cnt := WCO[til];
    if cnt<> 0 then
      writeln(Numb2USA(til):7,Numb2USA(cnt):9);
  end;
  Writeln;
end;

procedure OutWitness(const n:tWitness);
var
  i: NativeINt;
begin
  with n do
  begin
    write(Numb2USA(witCnt):7,Numb2USA(Num):14,'  ');
    For i := 2 to BASE-1 do
      if i in witness then
        write(' |x',i:1,Numb2USA(i*num):14);
  end;
  writeln;
end;

procedure WriteHead;
begin
  Writeln('    idx    cnt           num   fac');
end;

procedure FirstN_Sol(const Sol:tSolutions;cnt:NativeInt);
var
  i : NativeInt;
begin
  if cnt > high(Sol) then
    cnt := High(Sol);
  writeln;
  Writeln('First ',cnt,' shuffle groups:');
  WriteHead;
  For i := 0 to cnt do
  Begin
    write(Numb2USA(i+1):7);
    OutWitness(Sol[i]);
  end;
  writeln;
end;

procedure FirstN_Solgr4(const Sol:tSolutions);
var
  i : NativeInt;
begin
  Writeln('First with more than 4 witnesses:');
  WriteHead;
  i := 0;
  repeat
    if Sol[i].witCnt>4 then
      BREAK;
    inc(i);
  until i > High(Sol);
  if i <= High(Sol)then
  begin
    write(Numb2USA(i+1):7);
    OutWitness(Sol[i])
  end
  else
    writeln('Not found til ',i);
  writeln;
end;

function FirstSolWithExact(const Sol:tSolutions;cnt,til:UInt32):Uint32;
Begin
  Writeln('First shuffle group with exactly ',cnt,' witnesses');
  WriteHead;
  result := 0;
  repeat
    if Sol[result].witCnt=cnt then
      BREAK;
    inc(result);
  until result > til;
  if result <= til then
  begin
    write(Numb2USA(result+1):7);
    OutWitness(Sol[result]);
  end
  else
  begin
    writeln('Not found til ',result);
    result := 0;
  end;
  writeln;
end;
(*
function TestSameDigits(const A,B:tpdigitsOfNum):boolean;inline;
var
  dgt : NativeInt;
Begin
  For dgt := low(tDgts) to high(tDgts)  do
    if A.cntOfDigit[dgt] <> B.cntOfDigit[dgt] then
      EXIT(false);
  EXIT(true);
end;
*)
function TestSameDigits(const A,B:tpdigitsOfNum):boolean;inline;
//cntOfDigit = array[0..9] of byte;
Begin
  //check first 8 Bytes at once
  if pUint64(@A.cntOfDigit[0])^ <> pUint64(@B.cntOfDigit[0])^ then
    EXIT(false);
  //check following 2 Bytes at once
  if pUint16(@A.cntOfDigit[8])^ <> pUint16(@B.cntOfDigit[8])^ then
    EXIT(false);
  EXIT(true);
end;

procedure GetDigits(n : NativeUint;res:tpdigitsOfNum);
var
  q,dgt,cnt: NativeUint;
begin
  fillchar(res^,SizeOf(res^),#0);
  with res^ do
  begin
    num := n;
    q := n DIV BASE;
    dgt := n-BASE*q;
    inc(cntOfDigit[dgt]);
    digit[0] := dgt;
    n := q;
    cnt := 1;
    repeat
      q := n DIV BASE;
      dgt := n-BASE*q;
      digit[cnt] := dgt;
      inc(cntOfDigit[dgt]);
      n := q;
      inc(cnt);
    until n= 0;
    cntDigits := cnt;
  end;
end;

function NextDgtcnt(pT:tpdigitsOfNum):NativeInt;
var
  i,fac : NativeUint;
begin
 //5001 ->10001
  i := pT^.num*2-1;
  For Fac := 1 to Base-1 do
  begin
    GetDigits(Fac*i,pT);
    inc(pT);
  end;
  result := BASE-1;
end;

procedure IncDigits(res:tpdigitsOfNum;carry:NativeInt = 1);inline;
//carry must be in the range of 0..BASE-1
var
  dgt,idx: NativeInt;
Begin
  with res^ do
  begin
    num += carry;
    idx := 0;
    repeat
      dgt :=  digit[idx];
      dec(cntOfDigit[dgt]); //correct cntOfDigit
      dgt += carry;
      //IF dgt>= BASE then Begin carry:=1; dgt -= BASE;end;
      //version without IF
      carry := ORD(dgt>=Base);// [0,1]
      dgt -= BASE AND (-carry);// [0,BASE] // BASE AND -1 = BASE

      digit[idx] := dgt;
      inc(cntOfDigit[dgt]);
      inc(idx);
    until (carry=0) OR (idx >= cntDigits);

    If carry <> 0 then
    begin
      digit[idx] := carry;
      inc(cntOfDigit[carry]);
      inc(cntDigits);
    end;
    Inc(GblIncCount);

    witness := [];
    witcnt := 0;
  end;
end;

var
  Solutions : tSolutions;
  Test  : array[1..Base-1] of tdigitsOfNum;
  pTest1,pTestFac :tpdigitsOfNum;
  WitnessCntOccurences : tWitCntOcc;
  fac,TotalCount,maxFac : NativeInt;
BEGIN
  //falling from sky
  setlength(Solutions,126853);

  TotalCount := 0;
  //Init all manifold numbers to zero.
  //Test[1] is the number. Test[n] = n*Test[1]

  pTest1 := @Test[1];
  GetDigits(0,pTest1);
  For Fac := 2 to BASE-1 do
    Test[Fac] :=Test[1];
  maxFac := BASE-1;
  repeat
    //increment all numbers in use
    pTestFac :=pTest1;
    For Fac := 1 to maxFac do
    Begin
      IncDigits(pTestFac,Fac);
      inc(pTestFac);
    end;

    if pTest1^.digit[0] = 0 then
      continue;

    with pTest1^ do
      if digit[cntDigits-1] = BASE DIV 2 then
       maxFac := NextDgtcnt(pTest1);
    //check if multilples of number share the same digits
    pTestFac := pTest1;
    For Fac := 2 to maxFac do
    begin
      inc(pTestFac);
      if pTest1.cntDigits <> pTestFac^.cntDigits then
        dec(maxFac);
      IF TestSameDigits(pTest1,pTestFac) then
        with ptest1^ do
        begin
          include(witness,fac);
          inc(witCnt);
        end;
    end;

    if ptest1^.witCnt <> 0 then
    Begin
      with Solutions[TotalCOunt] do
      begin
        num := pTest1^.num;
        witness := pTest1^.witness;
        witCnt := pTest1^.witCnt;
      end;
      inc(TotalCount);
    end;
  until  (TotalCount>Length(Solutions)) OR (ptest1^.witCnt = 4);

  writeln('Use of IncDigts ',Numb2USA(GBLIncCount):16);
  writeln('Found solutions ', Numb2USA(TotalCount):16);

  FirstN_Sol(Solutions,20);
  FirstN_Solgr4(Solutions);
  fac := FirstSolWithExact(Solutions,3,TotalCount);
  CheckWitCountOccurence(WitnessCntOccurences,Solutions,fac);
  fac := FirstSolWithExact(Solutions,4,TotalCount);
  CheckWitCountOccurence(WitnessCntOccurences,Solutions,fac);
END.
{-------------------------------------------------- 113 sieve-of-eratosthenes-1}
program prime_sieve;
{$mode objfpc}{$coperators on}
uses
  SysUtils, GVector;
type
  TPrimeList = specialize TVector<DWord>;
function Sieve(aLimit: DWord): TPrimeList;
var
  IsPrime: array of Boolean;
  I, SqrtBound: DWord;
  J: QWord;
begin
  Result := TPrimeList.Create;
  Inc(aLimit, Ord(aLimit < High(DWord))); //not a problem because High(DWord) is composite
  SetLength(IsPrime, aLimit);
  FillChar(Pointer(IsPrime)^, aLimit, Byte(True));
  SqrtBound := Trunc(Sqrt(aLimit));
  for I := 2 to aLimit do
    if IsPrime[I] then
      begin
        Result.PushBack(I);
        if I <= SqrtBound then
          begin
            J := I * I;
            repeat
              IsPrime[J] := False;
              J += I;
            until J > aLimit;
          end;
      end;
end;

 //usage

var
  Limit: DWord = 0;
function ReadLimit: Boolean;
var
  Lim: Int64;
begin
  if (ParamCount = 1) and Lim.TryParse(ParamStr(1), Lim) then
    if (Lim >= 0) and (Lim <= High(DWord)) then
      begin
        Limit := DWord(Lim);
        exit(True);
      end;
  Result := False;
end;
procedure PrintUsage;
begin
  WriteLn('Usage: prime_sieve Limit');
  WriteLn('  where Limit in the range [0, ', High(DWord), ']');
  Halt;
end;
procedure PrintPrimes(aList: TPrimeList);
var
  I: DWord;
begin
  if aList.Size <> 0 then begin
    if aList.Size > 1 then
      for I := 0 to aList.Size - 2 do
        Write(aList[I], ', ');
    WriteLn(aList[aList.Size - 1]);
  end;
  aList.Free;
end;
begin
  if not ReadLimit then
    PrintUsage;
  try
    PrintPrimes(Sieve(Limit));
  except
    on e: Exception do
      WriteLn('An exception ', e.ClassName, ' occurred with message: ', e.Message);
  end;
end.
{-------------------------------------------------- 114 sieve-of-eratosthenes-2}
program prime_sieve;
{$mode objfpc}{$coperators on}
uses
  SysUtils, Math;
type
  TPrimeList = array of DWord;
function OddSegmentSieve(aLimit: DWord): TPrimeList;
  function EstimatePrimeCount(aLimit: DWord): DWord;
  begin
    case aLimit of
      0..1:   Result := 0;
      2..200: Result := Trunc(1.6 * aLimit/Ln(aLimit)) + 1;
    else
      Result := Trunc(aLimit/(Ln(aLimit) - 2)) + 1;
    end;
  end;
  function Sieve(aLimit: DWord; aNeed2: Boolean): TPrimeList;
  var
    IsPrime: array of Boolean;
    I: DWord = 3;
    J, SqrtBound: DWord;
    Count: Integer = 0;
  begin
    if aLimit < 2 then
      exit(nil);
    SetLength(IsPrime, (aLimit - 1) div 2);
    FillChar(Pointer(IsPrime)^, Length(IsPrime), Byte(True));
    SetLength(Result, EstimatePrimeCount(aLimit));
    SqrtBound := Trunc(Sqrt(aLimit));
    if aNeed2 then
      begin
        Result[0] := 2;
        Inc(Count);
      end;
    for I := 0 to High(IsPrime) do
      if IsPrime[I] then
        begin
          Result[Count] := I * 2 + 3;
          if Result[Count] <= SqrtBound then
            begin
              J := Result[Count] * Result[Count];
              repeat
                IsPrime[(J - 3) div 2] := False;
                J += Result[Count] * 2;
              until J > aLimit;
            end;
          Inc(Count);
        end;
    SetLength(Result, Count);
  end;
const
  PAGE_SIZE = $8000;
var
  IsPrime: array[0..Pred(PAGE_SIZE)] of Boolean; //current page
  SmallPrimes: TPrimeList = nil;
  I: QWord;
  J, PageHigh, Prime: DWord;
  Count: Integer;
begin
  if aLimit < PAGE_SIZE div 4 then
    exit(Sieve(aLimit, True));
  I := Trunc(Sqrt(aLimit));
  SmallPrimes := Sieve(I + 1, False);
  Count := Length(SmallPrimes) + 1;
  I += Ord(not Odd(I));
  SetLength(Result, EstimatePrimeCount(aLimit));
  while I <= aLimit do
    begin
      PageHigh := Min(Pred(PAGE_SIZE * 2), aLimit - I);
      FillChar(IsPrime, PageHigh div 2 + 1, Byte(True));
      for Prime in SmallPrimes do
        begin
          J := DWord(I) mod Prime;
          if J <> 0 then
            J := Prime shl (1 - J and 1) - J;
          while J <= PageHigh do
            begin
              IsPrime[J div 2] := False;
              J += Prime * 2;
            end;
        end;
      for J := 0 to PageHigh div 2 do
        if IsPrime[J] then
          begin
            Result[Count] := J * 2 + I;
            Inc(Count);
          end;
      I += PAGE_SIZE * 2;
    end;
  SetLength(Result, Count);
  Result[0] := 2;
  Move(SmallPrimes[0], Result[1], Length(SmallPrimes) * SizeOf(DWord));
end;

  //usage

var
  Limit: DWord = 0;
function ReadLimit: Boolean;
var
  Lim: Int64;
begin
  if (ParamCount = 1) and Lim.TryParse(ParamStr(1), Lim) then
    if (Lim >= 0) and (Lim <= High(DWord)) then
      begin
        Limit := DWord(Lim);
        exit(True);
      end;
  Result := False;
end;
procedure PrintUsage;
begin
  WriteLn('Usage: prime_sieve Limit');
  WriteLn('  where Limit in the range [0, ', High(DWord), ']');
  Halt;
end;
procedure PrintPrimes(const aList: TPrimeList);
var
  I: DWord;
begin
  for I := 0 to Length(aList) - 2 do
    Write(aList[I], ', ');
  if aList <> nil then
    WriteLn(aList[High(aList)]);
end;
begin
  if not ReadLimit then
    PrintUsage;
  PrintPrimes(OddSegmentSieve(Limit));
end.
{---------------------------------------------------- 115 sieve-of-eratosthenes}
program prim(output);
//Sieve of Erathosthenes with fast elimination of multiples of small primes
{$IFNDEF FPC}
  {$APPTYPE CONSOLE}
{$ENDIF}
const
  PrimeLimit = 100*1000*1000;//1;
type
  tLimit = 1..PrimeLimit;
var
  //always initialized with 0 => false at startup
  primes: array [tLimit] of boolean;

function BuildWheel: longInt;
//fill primfield with no multiples of small primes
//returns next sieveprime
//speedup ~1/3
var
  //wheelprimes = 2,3,5,7,11... ;
  //wheelsize = product [i= 0..wpno-1]wheelprimes[i] > Uint64 i> 13
  wheelprimes :array[0..13] of byte;
  wheelSize,wpno,
  pr,pw,i, k: LongWord;
begin
  //the mother of all numbers 1 ;-)
  //the first wheel = generator of numbers
  //not divisible by the small primes first found primes
  pr := 1;
  primes[1]:= true;
  WheelSize := 1;

  wpno := 0;
  repeat
    inc(pr);
    //pw = pr projected in wheel of wheelsize
    pw := pr;
    if pw > wheelsize then
      dec(pw,wheelsize);
    If Primes[pw] then
    begin
//      writeln(pr:10,pw:10,wheelsize:16);
      k := WheelSize+1;
      //turn the wheel (pr-1)-times
      for i := 1 to pr-1 do
      begin
        inc(k,WheelSize);
        if k<primeLimit then
          move(primes[1],primes[k-WheelSize],WheelSize)
        else
        begin
          move(primes[1],primes[k-WheelSize],PrimeLimit-WheelSize*i);
          break;
        end;
      end;
      dec(k);
      IF k > primeLimit then
        k := primeLimit;
      wheelPrimes[wpno] := pr;
      primes[pr] := false;

      inc(wpno);
      //the new wheelsize
      WheelSize := k;

      //sieve multiples of the new found prime
      i:= pr;
      i := i*i;
      while i <= k do
      begin
        primes[i] := false;
        inc(i,pr);
      end;
    end;
  until WheelSize >= PrimeLimit;

  //re-insert wheel-primes
  // 1 still stays prime
  while wpno > 0 do
  begin
    dec(wpno);
    primes[wheelPrimes[wpno]] := true;
  end;
  BuildWheel  := pr+1;
end;

procedure Sieve;
var
  sieveprime,
  fakt : LongWord;
begin
//primes[1] = true is needed to stop for sieveprime = 2
// at //Search next smaller possible prime
  sieveprime := BuildWheel;
//alternative here
  //fillchar(primes,SizeOf(Primes),chr(ord(true)));sieveprime := 2;
  repeat
    if primes[sieveprime] then
    begin
      //eliminate 'possible prime' multiples of sieveprime
      //must go downwards
      //2*2 would unmark 4 -> 4*2 = 8 wouldnt be unmarked
      fakt := PrimeLimit DIV sieveprime;
      IF fakt < sieveprime then
        BREAK;
      repeat
        //Unmark
        primes[sieveprime*fakt] := false;
        //Search next smaller possible prime
        repeat
          dec(fakt);
        until primes[fakt];
      until fakt < sieveprime;
    end;
    inc(sieveprime);
  until false;
  //remove 1
  primes[1] := false;
end;

var
  prCnt,
  i : LongWord;
Begin
  Sieve;
  {count the primes }
  prCnt := 0;
  for i:= 1 to PrimeLimit do
    inc(prCnt,Ord(primes[i]));
  writeln(prCnt,' primes up to ',PrimeLimit);
end.
{--------------------------------------- 116 singly-linked-list-element-removal}
program SinglyLinkedList;

type
  TLinkedList = object
  private
    type
      PLink = ^TLink;
      TLink = record
        FNext: PLink;
        FData: Integer;
      end;
  private
    Head: PLink;
  public
    constructor Init;
    destructor Done;

    procedure Add(Value: Integer);
    procedure Delete(Value: Integer);
    procedure Print;
  end;

constructor TLinkedList.Init;
begin
  Head := nil;
end;

destructor TLinkedList.Done;
var
  Temp: PLink;
begin
  while Head <> nil do
  begin
    Temp := Head;
    Head := Head^.FNext;
    Dispose(Temp);
  end;
end;

procedure TLinkedList.Add(Value: Integer);
var
  NewLink, Temp: PLink;
begin
  New(NewLink);
  NewLink^.FData := Value;
  NewLink^.FNext := nil;

  if Head = nil then
    Head := NewLink
  else
  begin
    Temp := Head;
    while Temp^.FNext <> nil do
      Temp := Temp^.FNext;
    Temp^.FNext := NewLink;
  end;
end;

procedure TLinkedList.Delete(Value: Integer);
var
  Temp, Prev: PLink;
begin
  Temp := Head;
  Prev := nil;

  while Temp <> nil do
  begin
    if Temp^.FData = Value then
    begin
      if Prev = nil then
        Head := Temp^.FNext
      else
        Prev^.FNext := Temp^.FNext;

      Dispose(Temp);
      Exit;
    end;
    Prev := Temp;
    Temp := Temp^.FNext;
  end;
end;

procedure TLinkedList.Print;
var
  Temp: PLink;
begin
  Temp := Head;
  while Temp <> nil do
  begin
    Write(Temp^.FData, ' ');
    Temp := Temp^.FNext;
  end;
  Writeln;
end;

var
  List: TLinkedList;

begin
  List.Init;

  List.Add(10);
  List.Add(20);
  List.Add(30);
  List.Add(40);

  Writeln('Original List:');
  List.Print;
  Writeln('Deleting 20...');
  List.Delete(20);
  Writeln('Updated List:');
  List.Print;
  List.Done;
end.

{---------------------------------------------- 117 singly-linked-list-reversal}
program RevSingleLinkedList;
type
  tdata = string[15];
  tpsList = ^tsList;
  tsList = record
             data:tData;
             next : tpsList;
           end;
const
  cData: array[1..6] of string = ('Big','fjords','vex','quick','waltz','nymph');

var
  root : tpsList;

function InitLList(cnt:integer):tpsList;
var
  root,tmpList : tpsList;
  i : integer;
begin
  tmpList := new(tpsList);
  root := tmpList;
  root^.data := cData[1];
  For i := 2 to high(cData) do
  begin
    tmpList^.next := new(tpsList);
    tmpList := tmpList^.next;
    tmpList^.data := cData[i];
  end;
  tmpList^.next := NIL;
  InitLList := root;
end;

procedure OutList(root:tpsList);
begin
  while root <> NIL do
  begin
    write(root^.data,' ');
    root := root^.next;
  end;
  writeln;
end;

procedure RevList(var root:tpsList);
var
  NextinList,NewNext : tpsList;
begin
  if (root = NIL) OR (root^.next = nil) then
    EXIT;
  NextinList := root^.next;
  root^.next := NIL;
  while NextinList <> NIL do
  begin
    //memorize list element before
    NewNext := root;
    //root set to next element of root
    root := NextinList;
    //get the next in list
    NextinList := NextinList^.next;
    //correct pointer to element before
    root^.next := NewNext;
  end;
end;

procedure DeleteList(var root:tpsList);
var
  tmpList : tpsList;
begin
  while root <> nil do
  begin
    tmpList := root^.next;
    dispose(root);
    root := tmpList;
  end;
end;

begin
 root := InitLList(100);
 OutList(root);
 writeln('Reverse 3 times');
 RevList(root);OutList(root);
 RevList(root);OutList(root);
 RevList(root);OutList(root);
 DeleteList(root);
 OutList(root);
end.
{----------------------------------------------------- 118 sort-three-variables}
{$mode objFPC}

generic procedure sort<T>(var X, Y: T);
	procedure swap;
	var
		Z: T;
	begin
		Z := X;
		X := Y;
		Y := Z
	end;
begin
	if X > Y then
	begin
		swap
	end
end;

generic procedure sort<T>(var X, Y, Z: T);
begin
	specialize sort<T>(X, Y);
	specialize sort<T>(X, Z);
	specialize sort<T>(Y, Z)
end;

generic procedure print<T>(const X, Y, Z: T);
begin
	writeLn('X = ', X);
	writeLn('Y = ', Y);
	writeLn('Z = ', Z)
end;

{ === MAIN ============================================================= }
var
	A, B, C: string;
	I, J, K: integer;
	P, Q, R: real;
begin
	A := 'lions, tigers, and';
	B := 'bears, oh my!';
	C := '(from the "Wizard of OZ")';
	
	specialize sort<string>(A, B, C);
	specialize print<string>(A, B, C);
	
	writeLn;
	I := 77444;
	J :=   -12;
	K :=     0;
	specialize sort<integer>(I, J, K);
	specialize print<integer>(I, J, K);
	
	writeLn;
	P :=  12.34;
	Q := -56.78;
	R :=   9.01;
	specialize sort<real>(P, Q, R);
	specialize print<real>(P, Q, R)
end.
{---------------------------------------------------------- 119 sphenic-numbers}
program sphenic;
{$IFDEF FPC}{$MODE DELPHI}{$Optimization ON,ALL}{$CODEALIGn proc=16}{$ENDIF}
{$IFDEF WINDOWS}{$APPTYPE CONSOLE}{$ENDIF}
const
  Limit= 1000*1000;

type
  tPrimesSieve = array of boolean;
  tElement = Uint32;
  tarrElement = array of tElement;
  tpPrimes = pBoolean;

var
  PrimeSieve : tPrimesSieve;
  primes : tarrElement;
  sphenics : tarrElement;
  procedure ClearAll;
  begin
    setlength(sphenics,0);
    setlength(primes,0);
    setlength(PrimeSieve,0);
  end;
  function BuildWheel(pPrimes:tpPrimes;lmt:Uint32): longint;
  var
    wheelSize, wpno, pr, pw, i, k: NativeUint;
    wheelprimes: array[0..15] of byte;
  begin
    pr := 1;//the mother of all numbers 1 ;-)
    pPrimes[1] := True;
    WheelSize := 1;

    wpno := 0;
    repeat
      Inc(pr);
      //pw = pr projected in wheel of wheelsize
      pw := pr;
      if pw > wheelsize then
        Dec(pw, wheelsize);
      if pPrimes[pw] then
      begin
        k := WheelSize + 1;
        //turn the wheel (pr-1)-times
        for i := 1 to pr - 1 do
        begin
          Inc(k, WheelSize);
          if k < lmt then
            move(pPrimes[1], pPrimes[k - WheelSize], WheelSize)
          else
          begin
            move(pPrimes[1], pPrimes[k - WheelSize], Lmt - WheelSize * i);
            break;
          end;
        end;
        Dec(k);
        if k > lmt then
          k := lmt;
        wheelPrimes[wpno] := pr;
        pPrimes[pr] := False;
        Inc(wpno);

        WheelSize := k;//the new wheelsize
        //sieve multiples of the new found prime
        i := pr;
        i := i * i;
        while i <= k do
        begin
          pPrimes[i] := False;
          Inc(i, pr);
        end;
      end;
    until WheelSize >= lmt;

    //re-insert wheel-primes 1 still stays prime
    while wpno > 0 do
    begin
      Dec(wpno);
      pPrimes[wheelPrimes[wpno]] := True;
    end;
    result := pr;
  end;

  procedure Sieve(pPrimes:tpPrimes;lmt:Uint32);
  var
    sieveprime, fakt, i: UInt32;
  begin
    sieveprime := BuildWheel(pPrimes,lmt);
    repeat
      repeat
        Inc(sieveprime);
      until pPrimes[sieveprime];
      fakt := Lmt div sieveprime;
      while Not(pPrimes[fakt]) do
        dec(fakt);
      if fakt < sieveprime then
        BREAK;
      i := (fakt + 1) mod 6;
      if i = 0 then
        i := 4;
      repeat
        pPrimes[sieveprime * fakt] := False;
        repeat
          Dec(fakt, i);
          i := 6 - i;
        until pPrimes[fakt];
        if fakt < sieveprime then
          BREAK;
      until False;
    until False;
    pPrimes[1] := False;//remove 1
  end;

procedure InitAndGetPrimes;
var
  prCnt,i,lmt : UInt32;
begin
  setlength(PrimeSieve,Limit+1);// inits with #0
  lmt := Limit DIV (2*3);
  if Lmt < 65536 then
    setlength(Primes,6542)
  else
    setlength(Primes,trunc(lmt/(ln(lmt)-1.1)));
  Sieve(@PrimeSieve[0],lmt);
  prCnt := 0;
  for i := 1 to Lmt do
  Begin
    if PrimeSieve[i] then
    begin
      primes[prCnt] := i;
      inc(prCnt);
    end;
  end;
  setlength(primes,prCnt);
  // clear used by sieving section
  fillchar(PrimeSieve[0],Lmt+1,#0);
end;

function binary_search(value: Uint32;const A:tarrElement): Int32;
var
  p : Uint32;
  l, m, h: tElement;
begin
  l := Low(primes);
  h := High(primes);
  while l <= h do
  begin
    m := (l + h) div 2;
    p := A[m];
    if p > value then
    begin
      h := m - 1;
    end
    else
    begin
      if p < value then
      begin
        l := m + 1;
      end
      else
        exit(m);
    end;
  end;
  binary_search:=m;
end;

procedure CreateSphenics(const pr:tarrElement);
var
  i1,i2,i3,
  idx1,idx2,
  p1,p2,p,cnt : Uint32;
begin
  cnt := 0;
  p := trunc(exp(1/3*ln(Limit)));
  idx1 := binary_search(p,Pr)-1;
  i1 := 0;
  repeat
    p1 := pr[i1];
    p := trunc(sqrt(Limit DIV p1));
    idx2:= binary_search(p,Pr)+1;
    For i2 := i1+1 to idx2 do
    begin
      p2:= pr[i2]*p1;
      For i3 := i2+1 to High(pr) do
      begin
        p := Pr[i3]*p2;
        if p > Limit then
          break;
        //mark as sphenic number
        PrimeSieve[p]:= true;
        inc(cnt);
      end;
    end;
    inc(i1);
  until i1>idx1;
  //insert
  setlength(sphenics,cnt);
  p := 0;
  For i1 := 0 to Limit do
  begin
    if PrimeSieve[i1] then
    begin
      sphenics[p] := i1;
      inc(p);
    end;
  end;
end;

//alternativ with less variables, needs fast mul of CPU
(*
procedure CreateSphenics(const pr:tarrElement);
var
  cnt,i1,i2,i3,
  p1,p2,p : Uint32;
begin
  cnt := 0;
  i1 :=0;
  repeat
    p1 := Pr[i1];
    if p1*p1*p1 > Limit then
      BREAK;
    i2 := i1+1;
    repeat
      p := Pr[i2];
      if (p*p)*p1 > Limit then
        BREAK;
      p2:= p1*p;
      For i3 := i2+1 to High(Pr) do
      begin
        p := Pr[i3]*p2;
        if p > LIMIT then
          BREAK;
        PrimeSieve[p]:= true;
        inc(cnt);
      end;
      inc(i2)
    until false;
    inc(i1);
  until false;
  //insert
  setlength(sphenics,cnt);
  p := 0;
  For i1 := 0 to Limit do
  begin
    if PrimeSieve[i1] then
    begin
      sphenics[p] := i1;
      inc(p);
    end;
  end;
end;
*)

procedure OutTriplet(i:Uint32);
begin
  write('{',sphenics[i],',',sphenics[i+1],',',sphenics[i+2],'}');
end;

function CheckTriplets(i:Uint32):boolean;inline;
begin
  CheckTriplets:= PrimeSieve[i] AND PrimeSieve[i+1] AND PrimeSieve[i+2];
end;

var
  i,j,t5000 : Uint32;
begin
  InitAndGetPrimes;
  CreateSphenics(Primes);
  writeln('Sphenic numbers < 1,000:');
  i := 0;
  repeat
    if sphenics[i] > 1000 then
      break;
    write(sphenics[i]:4);
    inc(i);
    if i Mod 15 = 0 then
      writeln;
  until i>= High(sphenics);
  writeln;
  writeln('Sphenic triplets < 10,000:');
  i := 0;
  j := 0;
  repeat
    if CheckTriplets(sphenics[i]) then
    Begin
      OutTriplet(i);
      inc(j);
      if j < 3 then
        write(',')
      else
      begin
        writeln;
        j := 0;
      end;
    end;
    inc(i);
  until sphenics[i+2]>10000;
  writeln;
  i := 0;
  j := 0;
  writeln('There are ',length(sphenics),' sphenic numbers < ',limit);
  repeat
    if CheckTriplets(sphenics[i]) then
    Begin
       inc(j);
       if j = 5000 then
         t5000 := i;
    end;
    inc(i);
  until i+2 >high(sphenics);
  writeln('There are ',j,' sphenic triplets numbers < ',limit);
  writeln('The 200,000th sphenic number is ',sphenics[200000-1]);
  write('The 5,000th sphenic triplet is ');OutTriplet(T5000);
  ClearAll;
end.
{------------------------------------------------------------------ 120 stack-1}
program Stack;
 {$IFDEF FPC}{$MODE DELPHI}{$IFDEF WINDOWS}{$APPTYPE CONSOLE}{$ENDIF}{$ENDIF}
 {$ASSERTIONS ON}
uses Generics.Collections;

var
  lStack: TStack<Integer>;
begin
  lStack := TStack<Integer>.Create;
  try
    lStack.Push(1);
    lStack.Push(2);
    lStack.Push(3);
    Assert(lStack.Peek = 3); // 3 should be at the top of the stack

    Write(lStack.Pop:2);   // 3
    Write(lStack.Pop:2);   // 2
    Writeln(lStack.Pop:2); // 1
    Assert(lStack.Count = 0, 'Stack is not empty'); // should be empty
  finally
    lStack.Free;
  end;
end.
{------------------------------------------------------------------ 121 stack-2}
PROGRAM StackObject.pas;
{$IFDEF FPC}
    {$mode objfpc}{$H+}{$J-}{$m+}{$R+}
{$ELSE}
    {$APPTYPE CONSOLE}
{$ENDIF}
(*)

        Free Pascal Compiler version 3.2.0 [2020/06/14] for x86_64
        TheStack free and readable alternative at C/C++ Sidxeeds
        compiles natively to almost any platform, including raSidxberry PI *
        Can run independently from DELPHI / Lazarus

        For debian Linux: apt -y install fpc
        It contains a text IDE called fp

        This is an experiment for a stack that can handle almost any
        simple type of variable.

        What happens after retrieving the variable is TBD by you.

        https://www.freepascal.org/advantage.var
(*)


USES
        Classes   ,
        Crt       ,
        Variants  ;
        {$WARN 6058 off : Call to subroutine "$1" marked as inline is not inlined} // Use for variants

TYPE

    Stack   =   OBJECT

                    CONST

                        CrLf    =   #13#10  ;

                    TYPE

                        VariantArr = array  of variant ;

                    PRIVATE

                            Ar  :   VariantArr  ;

                            {$MACRO ON}
                                {$DEFINE STACKSIZE  :=  Length ( Ar )           * Ord ( Length ( Ar ) > 0 ) }
                                {$DEFINE TOP        :=  STACKSIZE - 1           * Ord ( STACKSIZE > 0 )     }
                                {$DEFINE SLEN       :=  length ( Ar [ TOP ] )   * Ord ( Length ( Ar [ TOP ] ) > 0 ) }

                            FUNCTION    IsEmpty             : boolean   ;
                            PROCEDURE   Print                           ;
                            FUNCTION    Pop                 : variant   ;
                            FUNCTION    Peep                : variant   ;
                            PROCEDURE   Push        ( item  : variant ) ;
                            FUNCTION    SecPop              : variant   ;

                    PUBLIC
                            CONSTRUCTOR Create                          ;

                END;


    CONSTRUCTOR Stack.Create ;

        BEGIN
                SetLength ( Ar, STACKSIZE ) ;
        END;

    FUNCTION    Stack.IsEmpty  : boolean ;

        BEGIN
                IsEmpty := ( STACKSIZE < 1 ) ;
        END;


    PROCEDURE   Stack.Print  ;

        VAR
                i   :   shortint ;
        BEGIN
                IF ( TOP < 1 ) or ( IsEmpty ) THEN
                    BEGIN
                        WriteLn ( CrLf + '<empty stack>' ) ;
                        EXIT ;
                    END;
                WriteLn ( CrLf , '<top>') ;

                FOR i := ( TOP )  DOWNTO 0 DO WriteLn ( Ar [ i ] ) ;
                WriteLn ( '<bottom>' ) ;
        END;


    FUNCTION    Stack.Pop : variant ;

        BEGIN
                IF IsEmpty THEN EXIT        ;
                Pop        := Ar [ TOP ]    ;
                SetLength  ( Ar, TOP )      ;
        END;


    FUNCTION    Stack.Peep  : variant ;

        BEGIN
                IF IsEmpty THEN EXIT        ;
                Peep        := Ar [ TOP ]   ;
        END;


    PROCEDURE   Stack.Push  ( item : variant ) ;

        BEGIN
                SetLength ( Ar, STACKSIZE + 1 ) ;
                Ar  [ TOP ]   := item           ;
        END;


    FUNCTION    Stack.SecPop : variant ;

        (*) Pop and Wipe    (*)

        BEGIN
                IF IsEmpty THEN EXIT                            ;
                SecPop      := Ar [ TOP ]                       ;
                Ar [ TOP ]  := StringOfChar ( #255  , SLEN )    ;
                Ar [ TOP ]  := StringOfChar ( #0    , SLEN )    ;
                SetLength  ( Ar, TOP )                          ;
        END;

VAR
        n   :   integer  ;
        r   :   real     ;
        S   :   string   ;
        So  :   Stack    ;


BEGIN

        So.Create                           ;
        So.Print                            ;
        n   := 23                           ;
        So.Push  ( n )                      ;
        S   := '3 guesses '                 ;
        So.Push  ( S )                      ;
        r   :=  1.23                        ;
        So.Push  ( r )                      ;
        WriteLn  ( 'Peep : ', So.Peep  )    ;
        So.Push  ( 'Nice Try' )             ;
        So.Print                            ;
        WriteLn                             ;
        WriteLn  ( 'SecPop : ',So.SecPop )  ;
        WriteLn  ( 'SecPop : ',So.SecPop )  ;
        WriteLn  ( 'SecPop : ',So.SecPop )  ;
        WriteLn  ( 'SecPop : ',So.SecPop )  ;
        So.Print                            ;
END.

{----------------------------------------------------------- 122 string-prepend}
var
	line: string[20];
begin
	line := 'Hello ';
	{$COperators on}
	line += 'world!';
	writeLn(line)
end.
{--------------------------------------------------------- 123 sub-unit-squares}
program SubUnitSquares;
{$OPTIMIZATION ON,ALL}
procedure CheckForZero(n,i,j:NativeUint);
var
  q,dgt: NativeUint;
begin
  repeat
    q := n DIV 10;
    dgt := n-10*q;
    if dgt = 0 then
      EXIT;
    n := q
  until q = 0;
  j := (j-1) SHR 1;i := (i-1) SHR 1;
  writeln(j:10,sqr(j):20,' -> ',sqr(i):20,i:10);
end;

var
  sqI,sqJ,dSqrI,dSqrJ,Pot10Limit,RepUnit : NativeUInt;
BEGIN
   Pot10Limit := 10;
   RepUnit := 1;

   sqj := 1;      // 1*1
   sqI := RepUnit;// 0+RepUnit
   dSqrI := 1;
   dSqrJ := 2*1+1;

   repeat
     if sqJ = sqI then
       CheckForZero(sqj,dSqrI,dSqrJ);

     repeat
       sqJ += dSqrJ;
       inc(dSqrJ,2);
     until sqJ>=sqI;

     //one more digit
     if sqJ >= Pot10Limit then
     begin
//     choose dSqrI and sqJ so, that next sqJ starts with digit 2
       RepUnit += Pot10Limit;
       dSqrI := trunc(sqrt(2*Pot10Limit-RepUnit));
       dSqrJ := trunc(sqrt(2*Pot10Limit));
       Pot10Limit *= 10;
       sqI := dSqrI*dSqrI+RepUnit;
       dSqrI := 2*dSqrI+1;
       sqJ := dSqrJ*dSqrJ;
       dSqrJ := 2*dSqrJ+1;
     end;

     repeat
       sqI += dSqrI;
       inc(dSqrI,2);
     until sqI>=sqJ;
   until dSqrJ >2*514567445; //2*2*1000*1000*1000;//
END.
{----------------------------------------------------------- 124 sudan-function}
program Sudan;
//trans  https://rosettacode.org/wiki/Sudan_function#Delphi
{$IFDEF FPC} {$MODE DELPHI} {$OPTIMIZATION ON,ALL}{$ENDIF}
{$IFDEF WINDOWS}{$APPTYPE CONSOLE}{$ENDIF}
uses
  sysutils;
function SudanFunction(N,X,Y: UInt64): UInt64;
begin
  if n = 0 then
    Result:=X + Y
   else
     if y = 0 then
       Result:=X
     else
       Result:=SudanFunction(N - 1, SudanFunction(N, X, Y - 1), SudanFunction(N, X, Y - 1) + Y);
end;

procedure ShowSudanFunction(N,X,Y: UInt64);
begin
  writeln(Format('Sudan(%d,%d,%d)=%d',[n,x,y,SudanFunction(N,X,Y)]));
end;

procedure ShowSudanFunctions;
var
  N,X,Y: UInt64;
  S: string;
begin
for N:=0 to 1 do
	begin
	writeln(Format('Sudan(%d,X,Y)',[N]));
	writeln('Y/X    0   1   2   3   4   5');
	writeln('----------------------------');
	for Y:=0 to 6 do
		begin
		S:=Format('%2d | ',[Y]);
		for X:=0 to 5 do
			begin
			S:=S+Format('%3d ',[SudanFunction(N,X,Y)]);
			end;
		writeln(S);
		end;
	writeln('');
	end;
end;	

BEGIN
  ShowSudanFunctions;
  ShowSudanFunction( 1, 3, 3);
  ShowSudanFunction( 2, 1, 1);
  ShowSudanFunction( 2, 2, 1);
  ShowSudanFunction( 2, 1, 2);
  ShowSudanFunction( 3, 1, 1);
  ShowSudanFunction( 2, 2, 2);
END.
{------------------------------------------------- 125 sum-digits-of-an-integer}
program SumOfDigits;

  function SumOfDigitBase(n: UInt64; base: longword): longword;
  var
    tmp: Uint64;
    digit, sum: longword;
  begin
    digit := 0;
    sum := 0;
    while n > 0 do
    begin
      tmp := n div base;
      digit := n - base * tmp;
      n := tmp;
      Inc(sum, digit);
    end;
    SumOfDigitBase := sum;
  end;

begin
  writeln('   1 sums to ', SumOfDigitBase(1, 10));
  writeln('1234 sums to ', SumOfDigitBase(1234, 10));
  writeln(' $FE sums to ', SumOfDigitBase($FE, 16));
  writeln('$FOE sums to ', SumOfDigitBase($F0E, 16));
  writeln('18446744073709551615 sums to ', SumOfDigitBase(High(Uint64), 10));
end.
{---------------------------------------------------------- 126 sum-of-divisors}
program Sum_of_divisors;
{$IFDEF WINDOWS}}
  {$APPTYPE CONSOLE}
{$ENDIF}
{$IFDEF DELPHI}
uses
  System.SysUtils;
{$ENDIF}

function DivisorSum(n: Cardinal): Cardinal;
//check up to i*i= n
var
  i,quot,total: Cardinal;
begin
  total :=n+1;
  i := 2;
  repeat
    quot := n div i;
    //i >= sqrt(n) reached
    if quot <= i then
      BREAK;
    // n mod i = 0
    if quot*i = n then
      inc(total,i+quot);
    inc(i);
  until false;
  if i*i = n then
    inc(total,i);
  DivisorSum := total;
end;

const
  limit = 100;
var
  res,
  n :  cardinal;

begin
  writeln('Sum of divisors for the first ', limit, ' positive integers:');
  for  n := 1 to limit do
  begin
    res := divisorSum(n);
    Write(res: 4);
    if n mod 20 = 0 then
      writeln;
  end;
{$IFDEF WINDOWS}}
  readln;
{$ENDIF}
end.
{------------------- 127 sum-of-square-and-cube-digits-of-an-integer-are-primes}
program SumOfEtc;

  { Sum of square and cube digits of an integer are primes }

var
  N: integer;

  function IsPrime(Num: integer): boolean;
  var
    I: integer;
    FoundFac: boolean;
  begin
    if Num < 2 then
      Result := False
    else if Num = 2 then
      Result := True
    else if Num mod 2 = 0 then
      Result := False
    else
    begin
      I := 3;
      FoundFac := False;
      while (I * I <= Num) and not FoundFac do
      begin
        if Num mod I = 0 then
          FoundFac := True;
        I := I + 2;
      end;
      Result := not FoundFac;
    end;
  end;

  function SumDigits(Num: longint): integer;
  var
    Sum: integer;
  begin
    Sum := 0;
    while Num <> 0 do
    begin
      Sum := Sum + Num mod 10;
      Num := Num div 10;
    end;
    Result := Sum;
  end;

begin
  for N := 0 to 99 do
    if IsPrime(SumDigits(N * N)) and IsPrime(SumDigits(N * N * N)) then
      Write(N, ' ');
  WriteLn;
end.
{--------------------------------- 128 sum-of-the-digits-of-n-is-substring-of-n}
program SumOfDgtsIsSubString;
{$MODE DELPHI}
uses
  sysutils;
//using string s to get digits as I already need s to find the substring.
function GetSumDigits(const s: Ansistring):Uint64;
var
  i : Int32;
begin
  result := 0;
  For i := length(s) downto 1 do
    result += Ord(S[i]) -Ord('0');
end;

procedure SumDigitsSubstring;
var
  numS,sumS,OutS: AnsiString;
  cnt,n : Uint32;
begin
  OutS:='';
  Cnt:=0;
  N:=0;
  repeat
    str(n,numS);
    str(GetSumDigits(numS),sumS);
    if Pos(sumS,numS)>0 then
    begin
      Inc(Cnt);
      OutS += Format('%10d',[N]);
      if (Cnt mod 8)=0 then
        OutS += #13#10;
    end;
    inc(n);
  until n>=1000;
  writeln(OutS);
  writeln('Searched from 0 to ',N-1);
  writeln('Found ',cnt,' which fulfill the criterion');
end;

Begin
 SumDigitsSubstring;
end.
{------------------------------------------------------------- 129 tau-function}
program Tau_function;
{$IFDEF Windows}  {$APPTYPE CONSOLE} {$ENDIF}
  function CountDivisors(n: NativeUint): integer;
  var
    q, p, cnt, divcnt: NativeUint;
  begin
    divCnt := 1;
    if n > 1 then
    begin
      cnt := 1;
      while not (Odd(n)) do
      begin
        n := n shr 1;
        divCnt := divCnt+cnt;
      end;
      p := 3;
      while p * p <= n do
      begin
        cnt := divCnt;
        q := n div p;
        while q * p = n do
        begin
          n := q;
          q := n div p;
          divCnt := divCnt+cnt;
        end;
        Inc(p, 2);
      end;
      if n <> 1 then
        divCnt := divCnt+divCnt;
    end;
    CountDivisors := divCnt;
  end;

const
  UPPERLIMIT = 99;
  colWidth = trunc(ln(UPPERLIMIT)/ln(10))+1;
var
  i: NativeUint;
begin
  writeln('The tau functions for the first ',UPPERLIMIT,' positive integers are:');
  Write('': colWidth+1);
  for i := 0 to 9 do
    Write(i: colWidth, ' ');
  for i := 0 to UPPERLIMIT do
  begin
    if i mod 10 = 0 then
    begin
      writeln;
      Write(i div 10: colWidth, '|');
    end;
    Write(CountDivisors(i): colWidth, ' ');
  end;
  writeln;
  {$Ifdef Windows}readln;{$ENDIF}
end.
{--------------------------------------------------------------- 130 tau-number}
program Tau_number;
{$IFDEF Windows}  {$APPTYPE CONSOLE} {$ENDIF}
  function CountDivisors(n: NativeUint): integer;
  //tau function
  var
    q, p, cnt, divcnt: NativeUint;
  begin
    divCnt := 1;
    if n > 1 then
    begin
      cnt := 1;
      while not (Odd(n)) do
      begin
        n := n shr 1;
        divCnt+= cnt;
      end;
      p := 3;
      while p * p <= n do
      begin
        cnt := divCnt;
        q := n div p;
        while q * p = n do
        begin
          n := q;
          q := n div p;
          divCnt+= cnt;
        end;
        Inc(p, 2);
      end;
      if n <> 1 then
        divCnt += divCnt;
    end;
    CountDivisors := divCnt;
  end;

const
  UPPERLIMIT = 100;
var
  cnt,n: NativeUint;
begin
  cnt := 0;
  n := 1;
  repeat
    if n MOD CountDivisors(n) = 0 then
    Begin
      write(n:5);
      inc(cnt);
      if cnt Mod 10 = 0 then
        writeln;
    end;
    inc(n);
  until cnt >= UPPERLIMIT;
  writeln;
  {$Ifdef Windows}readln;{$ENDIF}
end.
{--------------------------------------------------------- 131 test-integerness}
// in FPC 3.2.0 the definition of `integer` still depends on the compiler mode
{$mode objFPC}

uses
	// used for `isInfinite`, `isNan` and `fMod`
	math,
	// NB: `ucomplex`’s `complex` isn’t a simple data type as ISO 10206 requires
	ucomplex;

{ --- determines whether a `float` value is (almost) an `integer` ------ }
function isInteger(x: float; const fuzziness: float = 0.0): Boolean;
	// nested routine allows us to spare an `if … then` statement below
	function fuzzyInteger: Boolean;
	begin
		// `x mod 1.0` uses `fMod` function from `math` unit
		x := x mod 1.0;
		result := (x <= fuzziness) or (x >= 1.0 - fuzziness);
	end;
begin
	{$push}
		// just for emphasis: use lazy evaluation strategy (currently default)
		{$boolEval off}
		result := not isInfinite(x) and not isNan(x) and fuzzyInteger;
	{$pop}
end;

{ --- check whether a `complex` number is (almost) in ℤ ---------------- }
function isInteger(const x: complex; const fuzziness: float = 0.0): Boolean;
begin
	// you could use `isZero` from the `math` unit for a fuzzy zero
	isInteger := (x.im = 0.0) and isInteger(x.re, fuzziness)
end;

{ --- test routine ----------------------------------------------------- }
procedure test(const x: float);
const
	tolerance = 0.00001;
	w = 42;
var
	s: string;
begin
	writeStr(s, 'isInteger(', x);
	writeLn(s:w, ') = ', isInteger(x):5,
		s:w, ', ', tolerance:7:5, ') = ', isInteger(x, tolerance):5);
end;

{ === MAIN ============================================================= }
begin
	test(25.000000);
	test(24.999999);
	test(25.000100);
	test(-2.1e120);
	test(-5e-2);
	test(NaN);
	test(Infinity);
	writeLn(isInteger(5.0 + 0.0 * i));
	writeLn(isInteger(5 - 5 * i));
end.
{------------------------------------------------------ 132 upside-down-numbers}
program UpSideDownNumbers;
{$IFDEF FPC}{$MODE DELPHI}{$Optimization ON,All}{$ENDIF}
{$IFDEF Windows}{$APPTYPE CONSOLE}{$ENDIF}
//count of UpSideDownNumbers until dgt
//1,+1,+9,+9,+9*9,+9*9,+9*9*9,...
const TotalCnt_Dgt : array[0..41] of Uint64=
  (1,2,11,20,101,182,911,1640,8201,14762,73811,132860,664301,1195742,
   5978711,10761680,53808401,96855122,484275611,871696100,4358480501,
   7845264902,39226324511,70607384120,353036920601,635466457082,
   3177332285411,5719198113740,28595990568701,51472783023662,
   257363915118311,463255047212960,2316275236064801,4169295424916642,
   20846477124583211,37523658824249780,187618294121248901,
   337712929418248022,1688564647091240111,3039416364764232200,
   15197081823821161001,HIGH(UINT64));
type
  tUpDown = record
              UD_half : array[0..21] of Int32;
              UD_Dgt  : Int32;
            end;

function EmitUpDownNumber(const UD :tUpDown):Ansistring;
var
  i,dc,idx : Int32;
begin
  with UD do
  Begin
    dc := UD_Dgt;
    setlength(result,dc);
    dc := dc shr 1 -1;
    idx := 1;
    For i := dc downto 0 do
    Begin
      result[idx] := chr(UD_half[i]+Ord('0'));
      inc(idx);
    end;
    if Odd(UD_Dgt) then
    Begin
      result[idx] := '5';
      inc(idx);
    end;
    For i := 0 to dc do
    Begin
      result[idx] := chr(10+Ord('0')-UD_half[i]);
      inc(idx);
    end;
  end;
end;

procedure NthUpDownNumber(n : Uint64;var UD:tUpDown);
var
  dgtCnt,i : Int32;
begin
  dgtCnt := 1;
  while (dgtCnt<= High(TotalCnt_Dgt)) AND (n>= TotalCnt_Dgt[dgtCnt]) do
    inc(dgtCnt);
  with UD do
  begin
    UD_Dgt := dgtCnt;
    n -= TotalCnt_Dgt[dgtCnt-1];
    if dgtCnt > 1 then
    begin
      dgtCnt := dgtCnt SHR 1-1;
      i := dgtcnt;
      repeat
        UD_half[i-dgtcnt] := n mod 9+1;
        n := n div 9;
        dec(dgtCnt);
      until dgtCnt <0;
    end;
  end;
end;

procedure NextNumb(var UD:tUpDown);
var
  i,dc,dgt : Uint32;
begin
  with UD do
  begin
    dc:= UD_Dgt;
    if dc>1 then
    Begin
      i := 0;
      dc := dc shr 1-1;
      repeat
        dgt := UD_half[i]+1;
      if dgt <10 then
      begin
        UD_half[i] := dgt;
        BREAK;
      end;
      UD_half[i] := 1;
      inc(i);
    until  i > dc;

    if i > dc then
    Begin
      UD_half[i]:= 1;
      inc(UD_Dgt);
    end;
  end
  else
  begin
    inc(UD_Dgt);
    UD_half[0] := 1;
  end;
  end;
end;

var
{$ALIGN 32}
  UD1,Ud2 : tUpDown;
  Count,
  limit : UInt64;
Begin
  Count := 0;
  limit := 50;
  Writeln('First fifty upside-downs:');
  limit := 50;
  repeat
    NextNumb(UD1);
    inc(Count);
    write(EmitUpDownNumber(UD1):5);
    if Count MOD 10 = 0 then
       writeln;
  until Count>=limit;

  writeln;
  writeln('      digits  count               value');
  repeat
    repeat
      NextNumb(UD1);inc(Count);
    until count >= limit;
    NthUpDownNumber(count,UD2);
    writeln(' next ',UD1.UD_Dgt:3,count:10,EmitUpDownNumber(UD1):20);
    writeln(' calc ',UD2.UD_Dgt:3,count:10,EmitUpDownNumber(UD2):20);
    limit *= 10;
  until Limit > 50*1000*1000 ;
  writeln;

  limit :=TotalCnt_Dgt[High(TotalCnt_Dgt)-1]-1;
  NthUpDownNumber(Limit,UD2);
  writeln(limit:20,UD2.UD_Dgt:6,EmitUpDownNumber(UD2):20*2+2);
  inc(limit);
  writeln('+1':20);
  NthUpDownNumber(Limit,UD2);
  writeln(limit:20,UD2.UD_Dgt:6,EmitUpDownNumber(UD2):20*2+2,#13);
  writeln('Highest nth High(Uint64)-1');
  limit := TotalCnt_Dgt[High(TotalCnt_Dgt)]-1;
  NthUpDownNumber(Limit,UD2);
  writeln(limit:20,UD2.UD_Dgt:6,EmitUpDownNumber(UD2):20*2+2,#13);
end.
{------------------------------------------------------ 133 variadic-function-1}
program variadicRoutinesDemo(input, output, stdErr);
{$mode objFPC}

// array of const is only supported in $mode objFPC or $mode Delphi
procedure writeLines(const arguments: array of const);
var
	argument: TVarRec;
begin
	// inside the body `array of const` is equivalent to `array of TVarRec`
	for argument in arguments do
	begin	
		with argument do
		begin
			case vType of
				vtInteger:
				begin
					writeLn(vInteger);
				end;
				vtBoolean:
				begin
					writeLn(vBoolean);
				end;
				vtChar:
				begin
					writeLn(vChar);
				end;
				vtAnsiString:
				begin
					writeLn(ansiString(vAnsiString));
				end;
				// and so on
			end;
		end;
	end;
end;

begin
	writeLines([42, 'is', true, #33]);
end.
{--------------------------------------------------- 134 vile-and-dopey-numbers}
program VileOrDopey;
{$MODE DELPHI}{$OPTIMIZATION ON,ALL}
uses
  sysutils;
type
  tmax2Pow = 1..31;

var
  // upper limit must be even > 1
  IsVile : array of boolean;

procedure InitIsVile(max2Pow:tmax2Pow);
var
  pIsVile : pboolean;
  i,j,lmt : Uint32;
begin
  lmt := 1 shl max2Pow;
  setlength(isVile,lmt+1);
  pIsVile := @IsVile[0];
  i := 1;
  j := 0;
  while i< Lmt do
  begin
    // odd number
    pIsVile[i] := true;
    inc(j);
    inc(i);
    //even number j := i DIV 2;
    if Not(pIsVile[j]) then
      pIsVile[i] := true;
    //alternative pIsVile[i] := Not(pIsVile[j]) then
    inc(i);
  end;
end;

function CountIsVile(lowLmt,lmt:UInt32):UInt32;
var
  pIsVile : pboolean;
begin
  pIsVile := @IsVile[0];
  result := 0;
  for lowlmt := lowlmt to Lmt do
    inc(result,Ord(pIsVile[lowlmt]));
end;

procedure OutfirstN(n: Integer;chkIsVile:Boolean);
const
  name : array[false..true] of string=(' dobey ','  vile ');
var
  pIsVile : pboolean;
  i: Integer;
begin
  pIsVile := @IsVile[0];
  write('First ',n,name[chkIsVile],'numbers :');
  i := 1;
  while n > 0 do
  begin
    if pIsVile[i] = chkIsVile then
    Begin
      write(i:3);
      dec(n);
    end;
    inc(i);
  end;
  writeln;
end;

var
  i,cnt,lowLmt,lmt : UInt32;
  max2Pow:tmax2Pow;

BEGIN
  max2Pow := 31;
  InitIsVile(max2Pow);

//  First 25 vile  numbers
  OutfirstN(25,true);
//  First 25 dobey  numbers
  OutfirstN(25,false);

  writeln('power   2^power  vile count  dopey count');
  lowLmt := 1;
  cnt := 0;
  For i := 1 to max2Pow do
  begin
    lmt := UInt32(1) shl i;
    cnt += CountIsVile(lowLmt,lmt);
    lowLmt := lmt+1;
    writeln(i:4,lmt:11,cnt:12,lmt-cnt:13);
  end;
  setlength(isVile,0);
END.
