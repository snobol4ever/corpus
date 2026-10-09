{---------------------------------------------------------------- 1 100-doors-1}
Program OneHundredDoors;

var
   doors : Array[1..100] of Boolean;
   i, j	 : Integer;

begin
   for i := 1 to 100 do
      doors[i] := False;
   for i := 1 to 100 do begin
      j := i;
      while j <= 100 do begin
	 doors[j] := not doors[j];
	 j := j + i
      end
   end;
   for i := 1 to 100 do begin
      Write(i, ' ');
      if doors[i] then
	 WriteLn('open')
      else
	 WriteLn('closed');
   end
end.
{---------------------------------------------------------------- 2 100-doors-2}
program OneHundredDoors;

{$APPTYPE CONSOLE}

uses
  math, sysutils;

var
   AOpendoors  : String;
   ACloseDoors : String;
   i	       : Integer;

begin
   for i := 1 to 100 do
   begin
      if (sqrt(i) = floor(sqrt(i))) then
        AOpenDoors := AOpenDoors + IntToStr(i) + ';'
      else
        ACloseDoors := ACloseDoors + IntToStr(i) +';';
   end;

   WriteLn('Open doors: ' + AOpenDoors);
   WriteLn('Close doors: ' + ACloseDoors);
end.
{------------------------------------------------ 3 4-rings-or-4-squares-puzzle}
program square4;
{$MODE DELPHI}
{$R+,O+}
const
  LoDgt = 0;
  HiDgt = 9;
type
  tchkset = set of LoDgt..HiDgt;
  tSol = record
           solMin : integer;
           solDat : array[1..7] of integer;
         end;

var
  sum,a,b,c,d,e,f,g,cnt,uniqueCount : NativeInt;
  sol : array of tSol;

procedure SolOut;
var
  i,j,mn: NativeInt;
Begin
  mn := 0;
  repeat
    writeln(mn:3,' ...',mn+6:3);
    For i := Low(sol) to High(sol) do
      with sol[i] do
        IF solMin = mn then
        Begin
          For j := 1 to 7 do
            write(solDat[j]:3);
          writeln;
        end;
    writeln;
    inc(mn);
  until mn > HiDgt-6;
end;

function CheckUnique:Boolean;
var
  i,sum,mn: NativeInt;
  chkset : tchkset;

Begin
  chkset:= [];
  include(chkset,a);include(chkset,b);include(chkset,c);
  include(chkset,d);include(chkset,e);include(chkset,f);
  include(chkset,g);
  sum := 0;
  For i := LoDgt to HiDgt do
    IF i in chkset then
      inc(sum);

  result := sum = 7;
  IF result then
  begin
    inc(uniqueCount);
    //find the lowest entry
    mn:= LoDgt;
    For i := LoDgt to HiDgt do
      IF i in chkset then
      Begin
        mn := i;
        BREAK;
      end;
    // are they consecutive
    For i := mn+1 to mn+6  do
      IF NOT(i in chkset) then
        EXIT;

    setlength(sol,Length(sol)+1);
    with sol[high(sol)] do
      Begin
        solMin:= mn;
        solDat[1]:= a;solDat[2]:= b;solDat[3]:= c;
        solDat[4]:= d;solDat[5]:= e;solDat[6]:= f;
        solDat[7]:= g;
      end;
  end;
end;

Begin
  cnt := 0;
  uniqueCount := 0;
  For a:= LoDgt to HiDgt do
  Begin
    For b := LoDgt to HiDgt do
    Begin
      sum := a+b;
      //a+b = b+c+d => a = c+d => d := a-c
      For c := a-LoDgt downto LoDgt do
      begin
        d := a-c;
        e := sum-d;
        IF e>HiDgt then
          e:= HiDgt;
        For e := e downto LoDgt do
          begin
          f := sum-e-d;
          IF f in [loDGt..Hidgt]then
          Begin
            g := sum-f;
            IF g in [loDGt..Hidgt]then
            Begin
              inc(cnt);
              CheckUnique;
            end;
          end;
        end;
      end;
    end;
  end;
  SolOut;
  writeln('       solution count for ',loDgt,' to ',HiDgt,' = ',cnt);
  writeln('unique solution count for ',loDgt,' to ',HiDgt,' = ',uniqueCount);
end.
{---------------------------------------------------------------------- 4 a_b-3}
{ Task: A + B
Sum of A + B while A, B >= -1000 and A,B <= 1000
Author: Sinuhe Masan (2019) }
program APlusB;

var
    A, B : integer;

begin
    repeat
        write('Enter two numbers betwen -1000 and 1000 separated by space: ');
        readln(A, B);

    until ((abs(A) < 1000) and (abs(B) < 1000));

    writeln('The sum is: ', A + B);

end.
{----------------------------------------------------- 5 abelian-sandpile-model}
program Abelian2;
{$IFDEF FPC}
   {$MODE DELPHI}{$OPTIMIZATION ON,ALL}{$CODEALIGN proc=16}{$ALIGN 16}
{$ELSE}
  {$APPTYPE CONSOLE}
{$ENDIF}
uses
  SysUtils;

type
  Tlimit = record
             lmtLow,LmtHigh : LongWord;
           end;
  TRowlimits = array of Tlimit;
  tOneRow  = pLongWord;
  tGrid = array of LongWord;

var
  Grid: tGrid;
  Rowlimits:TRowlimits;
  s : AnsiString;
  maxval,maxCoor : NativeUint;

function CalcMaxCoor(maxVal : NativeUint):NativeUint;
//  maxVal = 10000;maxCoor = 77-2;// maxCoor*maxCoor    *1,778;     0.009sec
//  maxVal = 100000;maxCoor = 236-2;// maxCoor*maxCoor  *1.826;     0.825sec
//  maxVal = 1000000;maxCoor = 732-2;// maxCoor*maxCoor *1.877;    74    sec
Begin
  result := trunc(sqrt(maxval/1.75))+3;
end;

procedure clear;
begin
  setlength(Grid,0);
  setlength(Rowlimits,0);
  s := '';
end;

procedure InitGrid(var G:tGrid;InitVal:NativeUint);
var
  row,middle: nativeINt;
begin
//  setlength(Rowlimits,0);   setlength(G,0);
  MaxCoor :=  CalcMaxCoor(InitVal);
  setlength(G,sqr(maxCoor));
  setlength(Rowlimits,maxCoor);
  fillchar(G[0],length(G)*SizeOf(G[0]),#0);

  middle := (maxCoor) div 2;
  Grid[middle*maxcoor+middle] := InitVal;
  For row := 1 to maxCoor do
    with Rowlimits[row] do
    Begin
      lmtLow := middle;
      lmtHigh := middle;
    end;

  with Rowlimits[middle] do
  Begin
    lmtLow := middle;
    lmtHigh := middle;
  end;
end;
procedure OutGridPPM(const G:tGrid;maxValue : NativeUint);
const
  color : array[0..3] of array[0..2] of Byte =
             //R,G,B)
            ((0,0,0),
             (255,0,0),
             (0,255,0),
             (0,0,255));
var
  f :text;
  pActRow: tOneRow;
  col,row,sIdx,value : NativeInt;
Begin
  Assignfile(f,'ppm/Grid_'+IntToStr(maxValue)+'.ppm');
  rewrite(f);
  write(f,Format('P6 %d %d %d ',[maxCoor-1,maxCoor-1,255]));
  setlength(s,(maxCoor-1)*3);
  pActRow :=@G[0];
  For row := maxCoor-2 downto 0 do
  Begin
    inc(pActRow,maxCoor);
    sIdx := 1;
    For col := 1 to maxCoor-1 do
    Begin
      value := pActRow[col];
      s[sIdx]   := CHR(color[value,0]);
      s[sIdx+1] := CHR(color[value,1]);
      s[sIdx+2] := CHR(color[value,2]);
      inc(sIdx,3);
    end;
    write(f,s);
  end;
  CloseFile(f);
end;

procedure OutGrid(const G:tGrid);
//output of grid and test, if no sand is lost
var
  pActRow: tOneRow;
  col,row,sum,value : NativeUint;
Begin
  setlength(s,maxcoor-1);
  pActRow := @G[0];
  sum := 0;
  For row := maxCoor-1 downto 1 do
  Begin
    inc(pActRow,maxcoor);
    For col := 1 to maxCoor-1 do
    Begin
      value := pActRow[col];
//      IF value>=4 then writeln(row:5,col:5,value:13);
      s[col] := chr(value+48);
      inc(sum,value);
    end;
    if maxCoor <80 then
      writeln(s);
  end;
  writeln('columns ',maxcoor-1,' checksum ',maxVal,' ?=? ',sum);
{
  For row := 1 to maxCoor do
    with Rowlimits[row] do
      writeln(lmtLow:10,lmtHigh:10);
      * }
end;

procedure Evolution(var G:tGrid);
var
  pActRow,pRowBefore,pRowAfter : tOneRow;
  col,row,mul,val,done : NativeUint;
begin
  repeat
    pRowBefore := @G[0];
    pActRow    := @G[maxcoor];
    pRowAfter  := @G[2*maxcoor];
    done := 0;
    For row := maxCoor-1 downto 1 do
    Begin
      with RowLimits[row] do
      Begin
      while (LmtLow >1) AND (pActRow[lmtLow]<> 0) do
        dec(lmtLow);
      while (lmtHigh < maxCoor) AND (pActRow[lmtHigh]<> 0) do
        inc(lmtHigh);
      For col := lmtLow to lmtHigh do
      Begin
        val := pActRow[col];
        IF val >=4 then
        Begin
          mul := val DIV 4;
          done := val;
          inc(pRowBefore[col],mul);
          inc(pActRow[col-1],mul);
          pActRow[col] := val-4*Mul;
          inc(pActRow[col+1],mul);
          inc(pRowAfter[col],mul);
        end;
      end;
      pRowBefore:= pActRow;
      pActRow := pRowAfter;
      inc(pRowAfter,maxcoor);
    end;
    end;
  until done=0;
end;

procedure OneTurn(count:NativeUint);
begin
  Writeln(' Test abelian sandpile( ',count,' )');
  MaxVal := count;
  InitGrid(Grid,count);
  Evolution(Grid);
  OutGrid(Grid);
  OutGridPPM(Grid,count);
  clear;
end;

BEGIN
  OneTurn(4);
  OneTurn(16);
  OneTurn(64);
  OneTurn(1000);
  OneTurn(10000);
  OneTurn(100000);
END.
{--------------------------------------------------------- 6 ackermann-function}
Program Ackerman;

function ackermann(m, n: Integer) : Integer;
begin
   if m = 0 then
      ackermann := n+1
   else if n = 0 then
      ackermann := ackermann(m-1, 1)
   else
      ackermann := ackermann(m-1, ackermann(m, n-1));
end;

var
   m, n	: Integer;

begin
   for n := 0 to 6 do
      for m := 0 to 3 do
	 WriteLn('A(', m, ',', n, ') = ', ackermann(m,n));
end.
{------------------------------------------------------------ 7 additive-primes}
program AdditivePrimes;
{$IFDEF FPC}
{$MODE DELPHI}{$CODEALIGN proc=16}
{$ELSE}
{$APPTYPE CONSOLE}
{$ENDIF}
{$DEFINE DO_OUTPUT}

uses
  sysutils;

const
  RANGE = 500; // 1000*1000;//
  MAX_OFFSET = 0; // 1000*1000*1000;//

type
  tNum = array [0 .. 15] of byte;

  tNumSum = record
    dgtNum, dgtSum: tNum;
    dgtLen, num: Uint32;
  end;

  tpNumSum = ^tNumSum;

function isPrime(n: Uint32): boolean;
const
  wheeldiff: array [0 .. 7] of Uint32 = (+6, +4, +2, +4, +2, +4, +6, +2);
var
  p: NativeUInt;
  flipflop: Int32;
begin
  if n < 64 then
    EXIT(n in [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47,
      53, 59, 61])
  else
  begin
    IF (n AND 1 = 0) OR (n mod 3 = 0) OR (n mod 5 = 0) then
      EXIT(false);
    result := true;
    p := 1;
    flipflop := 6;

    while result do
    Begin
      p := p + wheeldiff[flipflop];
      if p * p > n then
        BREAK;
      result := n mod p <> 0;
      flipflop := flipflop - 1;
      if flipflop < 0 then
        flipflop := 7;
    end
  end
end;

procedure IncNum(var NumSum: tNumSum; delta: Uint32);
const
  BASE = 10;
var
  carry, dg: Uint32;
  le: Int32;
Begin
  if delta = 0 then
    EXIT;
  le := 0;
  with NumSum do
  begin
    num := num + delta;
    repeat
      carry := delta div BASE;
      delta := delta - BASE * carry;
      dg := dgtNum[le] + delta;
      IF dg >= BASE then
      Begin
        dg := dg - BASE;
        inc(carry);
      end;
      dgtNum[le] := dg;
      inc(le);
      delta := carry;
    until carry = 0;
    if dgtLen < le then
      dgtLen := le;
    // correct sum of digits // le is >= 1
    delta := dgtSum[le];
    repeat
      dec(le);
      delta := delta + dgtNum[le];
      dgtSum[le] := delta;
    until le = 0;
  end;
end;

var
  NumSum: tNumSum;
  s: AnsiString;
  i, k, cnt, Nr: NativeUInt;
  ColWidth, MAXCOLUMNS, NextRowCnt: NativeUInt;

BEGIN
  ColWidth := Trunc(ln(MAX_OFFSET + RANGE) / ln(10)) + 2;
  MAXCOLUMNS := 80;
  NextRowCnt := MAXCOLUMNS DIV ColWidth;

  fillchar(NumSum, SizeOf(NumSum), #0);
  NumSum.dgtLen := 1;
  IncNum(NumSum, MAX_OFFSET);
  setlength(s, ColWidth);
  fillchar(s[1], ColWidth, ' ');
  // init string
  with NumSum do
  Begin
    For i := dgtLen - 1 downto 0 do
      s[ColWidth - i] := AnsiChar(dgtNum[i] + 48);
    // reset digits lenght to get the max changed digits since last update of string
    dgtLen := 0;
  end;
  cnt := 0;
  Nr := NextRowCnt;
  For i := 0 to RANGE do
    with NumSum do
    begin
      if isPrime(dgtSum[0]) then
        if isPrime(num) then
        Begin
          cnt := cnt + 1;
          dec(Nr);

          // correct changed digits in string s
          For k := dgtLen - 1 downto 0 do
            s[ColWidth - k] := AnsiChar(dgtNum[k] + 48);
          dgtLen := 0;
{$IFDEF DO_OUTPUT}
          write(s);
          if Nr = 0 then
          begin
            writeln;
            Nr := NextRowCnt;
          end;
{$ENDIF}
        end;
      IncNum(NumSum, 1);
    end;
  if Nr <> NextRowCnt then
    write(#10);
  writeln(cnt, ' additive primes found.');
END.
{-------------------------------------------------------- 8 aks-test-for-primes}
const
  pasTriMax = 61;

type
  TPasTri = array[0 .. pasTriMax] of UInt64;

var
  pasTri: TPasTri;

procedure PascalTriangle(n: LongWord);
// Calculate the n'th line 0.. middle
var
  j, k: LongWord;
begin
  pasTri[0] := 1;
  j := 1;
  while j <= n do
  begin
    Inc(j);
    k := j div 2;
    pasTri[k] := pasTri[k - 1];
    for k := k downto 1 do
      Inc(pasTri[k], pasTri[k - 1]);
  end;
end;

function IsPrime(n: LongWord): Boolean;
var
  i: Integer;
begin
  if n > pasTriMax then
  begin
    WriteLn(n, ' is out of range');
    Halt;
  end;

  PascalTriangle(n);
  Result := true;
  i := n div 2;
  while Result and (i > 1) do
  begin
    Result := Result and (pasTri[i] mod n = 0);
    Dec(i);
  end;
end;

procedure ExpandPoly(n: LongWord);
const
  Vz: array[Boolean] of Char = ('+', '-');
var
  j: LongWord;
  bVz: Boolean;
begin
  if n > pasTriMax then
  begin
    WriteLn(n,' is out of range');
    Halt;
  end;

  case n of
    0: WriteLn('(x-1)^0 = 1');
    1: WriteLn('(x-1)^1 = x-1');
  else
    PascalTriangle(n);
    Write('(x-1)^', n, ' = ');
    Write('x^', n);
    bVz := true;
    for j := n - 1 downto n div 2 + 1 do
    begin
      Write(vz[bVz], pasTri[n - j], '*x^', j);
      bVz := not bVz;
    end;
    for j := n div 2 downto 2 do
    begin
      Write(vz[bVz], pasTri[j], '*x^', j);
      bVz := not bVz;
    end;
    Write(vz[bVz], pasTri[1], '*x');
    bVz := not bVz;
    WriteLn(vz[bVz], pasTri[0]);
  end;
end;

var
  n: LongWord;
begin
  for n := 0 to 9 do
    ExpandPoly(n);
  for n := 2 to pasTriMax do
    if IsPrime(n) then
      Write(n:3);
  WriteLn;
end.
{-------------------------------------------------------------- 9 align-columns}
program Project1;

{$H+}//Use ansistrings
uses
  Classes,
  SysUtils,
  StrUtils;

  procedure AlignByColumn(Align: TAlignment);
  const
    TextToAlign =
      'Given$a$text$file$of$many$lines,$where$fields$within$a$line$'#$D#$A +
      'are$delineated$by$a$single$''dollar''$character,$write$a$program'#$D#$A +
      'that$aligns$each$column$of$fields$by$ensuring$that$words$in$each$'#$D#$A +
      'column$are$separated$by$at$least$one$space.'#$D#$A +
      'Further,$allow$for$each$word$in$a$column$to$be$either$left$'#$D#$A +
      'justified,$right$justified,$or$center$justified$within$its$column.';
  var
    TextLine: TStringList;
    TextLines: array of TStringList;
    OutPutString, EmptyString, Item: string;
    MaxLength, i, j: Int32;
  begin
    try
      MaxLength := 0;
      TextLine := TStringList.Create;
      TextLine.Text := TextToAlign;
      setlength(Textlines, TextLine.Count);
      for i := 0 to TextLine.Count - 1 do
      begin
        Textlines[i] := TStringList.Create;
        Textlines[i].Text := AnsiReplaceStr(TextLine[i], '$', #$D#$A);
      end;

      for i := 0 to High(TextLines) do
        for j := 0 to Textlines[i].Count - 1 do
          if MaxLength < Length(TextLines[i][j]) then
            MaxLength := Length(TextLines[i][j]);
      if MaxLength > 0 then
        MaxLength := MaxLength + 2; // Add two empty spaces to it

      for i := 0 to High(TextLines) do
      begin
        OutPutString := '';
        for j := 0 to Textlines[i].Count - 1 do
        begin
          EmptyString := StringOfChar(' ', MaxLength);
          if j <> 0 then
            EmptyString[1] := '|';
          Item := TextLines[i][j];
          case Align of
            taLeftJustify: Move(Item[1], EmptyString[2], Length(Item));
            taRightJustify: Move(Item[1], EmptyString[MaxLength - Length(Item) + 1],
                Length(Item));
            taCenter: Move(Item[1], EmptyString[(MaxLength - Length(Item) + 1) div
                2 + 1], Length(Item));
          end;
          OutPutString := OutPutString + EmptyString;
        end;
        writeln(OutPutString);
      end;
    finally
      writeln;
      FreeAndNil(TextLine);
      for i := High(TextLines) downto 0 do
        FreeAndNil(TextLines[i]);
    end;
  end;

begin
  AlignByColumn(taLeftJustify);
  AlignByColumn(taCenter);
  AlignByColumn(taRightJustify);
end.
{---------------------------------------------------------- 10 amicable-pairs-2}
program AmicablePairs;
{$IFDEF FPC}
   {$MODE DELPHI}
   {$H+}
{$ELSE}
  {$APPTYPE CONSOLE}
{$ENDIF}
uses
  sysutils;
const
  MAX = 20000;
//MAX = 20*1000*1000;
type
  tValue = LongWord;
  tpValue = ^tValue;
  tPower = array[0..31] of tValue;
  tIndex = record
             idxI,
             idxS : Uint64;
           end;

var
  Indices      : array[0..511] of tIndex;
  //primes up to 65536 enough until 2^32
  primes       : array[0..6542] of tValue;

procedure InitPrimes;
// sieve of erathosthenes without multiples of 2
type
  tSieve = array[0..(65536-1) div 2] of ansichar;
var
  ESieve : ^tSieve;
  idx,i,j,p : LongINt;
Begin
  new(ESieve);
  fillchar(ESieve^[0],SizeOF(tSieve),#1);
  primes[0] := 2;
  idx := 1;

  //sieving
  j := 1;
  p := 2*j+1;
  repeat
    if Esieve^[j] = #1 then
    begin
      i := (2*j+2)*j;// i := (sqr(p) -1) div 2;
      if i > High(tSieve) then
        BREAK;
      repeat
        ESIeve^[i] := #0;
        inc(i,p);
      until i > High(tSieve);
    end;
    inc(j);
    inc(p,2);
  until j >High(tSieve);

  //collecting
  For i := 1 to High(tSieve) do
    IF Esieve^[i] = #1 then
    Begin
      primes[idx] := 2*i+1;
      inc(idx);
      IF idx>High(primes) then
        BREAK;
    end;
  dispose(Esieve);
end;

procedure Su_append(n,factor:tValue;var su:string);
var
  q,p : tValue;
begin
  p := 0;
  repeat
    q := n div factor;
    IF q*factor<>n then
      Break;
    inc(p);
    n := q;
  until false;
  IF p > 0 then
    IF p= 1 then
      su:= su+IntToStr(factor)+'*'
    else
      su:= su+IntToStr(factor)+'^'+IntToStr(p)+'*';
end;

procedure ProperDivs(n: Uint64);
//output of prime factorization
var
  su : string;
  primNo : tValue;
  p:tValue;

begin
  str(n:8,su);
  su:= su +' [';
  primNo := 0;
  p := primes[0];
  repeat
    Su_Append(n,p,su);
    inc(primNo);
    p := primes[primNo];
  until (p=0) OR (p*p >= n);
  p := n;
  Su_Append(n,p,su);
  su[length(su)] := ']';
  writeln(su);
end;

procedure AmPairOutput(cnt:tValue);
var
  i : tValue;
  r_max,r_min,r : double;
begin
  r_max := 1.0;
  r_min := 16.0;
  For i := 0 to cnt-1 do
    with Indices[i] do
    begin
      r := IdxS/IDxI;
      writeln(i+1:4,IdxI:16,IDxS:16,' ratio ',r:10:7);
      IF r < 1 then
      begin
        writeln(i);
        readln;
        halt;
      end;
      if r_max < r then
        r_max := r
      else
        if r_min > r then
          r_min := r;
    IF cnt < 20 then
      begin
        ProperDivs(IdxI);
        ProperDivs(IdxS);
      end;
    end;
  writeln(' min ratio ',r_min:12:10);  writeln(' max ratio ',r_max:12:10);
end;

procedure SumOFProperDiv(n: tValue;var SumOfProperDivs:tValue);
// calculated by prime factorization
var
  i,q, primNo, Prime,pot : tValue;
  SumOfDivs: tValue;
begin
  i := N;
  SumOfDivs := 1;
  primNo := 0;
  Prime := Primes[0];
  q := i DIV Prime;
  repeat
    if q*Prime = i then
    Begin
      pot := 1;
      repeat
        i := q;
        q := i div Prime;
        Pot := Pot * Prime+1;
      until q*Prime <> i;
      SumOfDivs := SumOfDivs * pot;
    end;
    Inc(primNo);
    Prime := Primes[primNo];
    q := i DIV Prime;

    {check if i already prime}
    if Prime > q then
    begin
      prime := i;
      q := 1;
    end;
  until i = 1;
  SumOfProperDivs := SumOfDivs - N;
end;

function Check:tValue;
const
  //going backwards
  DIV23 : array[0..5] of byte =
           //== 5,4,3,2,1,0
               (1,0,0,0,1,0);

var
  i,s,k,n : tValue;
  idx : nativeInt;
begin
  n := 0;
  idx := 3;
  For i := 2 to MAX do
  begin
    //must be divisble by 2 or 3 ( n < High(tValue) < 1e14 )
    IF DIV23[idx] = 0 then
    begin
      SumOFProperDiv(i,s);
      //only 24.7...%
      IF s>i then
      Begin
        SumOFProperDiv(s,k);
        IF k = i then
        begin
          With indices[n] do
          begin
            idxI := i;
            idxS := s;
          end;
          inc(n);
        end;
      end;
    end;
    dec(idx);
    IF idx < 0 then
      idx := high(DIV23);
  end;
  result := n;
end;

var
  T2,T1: TDatetime;
  APcnt: tValue;
begin
  InitPrimes;
  T1:= time;
  APCnt:= Check;
  T2:= time;
  AmPairOutput(APCnt);
  writeln('Time to find amicable pairs ',FormatDateTime('HH:NN:SS.ZZZ' ,T2-T1));
  {$IFNDEF UNIX} readln;{$ENDIF}
end.
{---------------------------------------------------------- 11 amicable-pairs-3}
program AmicPair;
{find amicable pairs in a limited region 2..MAX
beware that >both< numbers must be smaller than MAX
there are 455 amicable pairs up to 524*1000*1000
correct up to
#437 460122410
}
//optimized for freepascal 2.6.4 32-Bit
{$IFDEF FPC}
   {$MODE DELPHI}
   {$OPTIMIZATION ON,peephole,cse,asmcse,regvar}
   {$CODEALIGN loop=1,proc=8}
{$ELSE}
  {$APPTYPE CONSOLE}
{$ENDIF}

uses
  sysutils;

type
  tValue = LongWord;
  tpValue = ^tValue;
  tDivSum = array[0..0] of tValue;// evil, but dynamic arrays are slower
  tpDivSum = ^tDivSum;
  tPower = array[0..31] of tValue;
  tIndex = record
             idxI,
             idxS : tValue;
           end;
var
  power,
  PowerFac     : tPower;
  ds           : array of tValue;
  Indices      : array[0..511] of tIndex;
  DivSumField  : tpDivSum;
  MAX : tValue;

procedure Init;
var
  i : LongInt;
begin
  DivSumField[0]:= 0;
  For i := 1 to MAX do
    DivSumField[i]:= 1;
end;

procedure ProperDivs(n: tValue);
//Only for output, normally a factorication would do
var
  su,so : string;
  i,q : tValue;
begin
  su:= '1';
  so:= '';
  i := 2;
  while i*i <= n do
  begin
    q := n div i;
    IF q*i -n = 0 then
    begin
      su:= su+','+IntToStr(i);
      IF q <> i then
        so:= ','+IntToStr(q)+so;
    end;
    inc(i);
  end;
  writeln('  [',su+so,']');
end;

procedure AmPairOutput(cnt:tValue);
var
  i : tValue;
  r : double;
begin
  r := 1.0;
  For i := 0 to cnt-1 do
  with Indices[i] do
  begin
    writeln(i+1:4,IdxI:12,IDxS:12,' ratio ',IdxS/IDxI:10:7);
    if r < IdxS/IDxI then
      r := IdxS/IDxI;
      IF cnt < 20 then
      begin
        ProperDivs(IdxI);
        ProperDivs(IdxS);
      end;
  end;
  writeln(' max ratio ',r:10:4);
end;

function Check:tValue;
var
  i,s,n : tValue;
begin
  n := 0;
  For i := 1 to MAX do
  begin
    //s = sum of proper divs (I)  == sum of divs (I) - I
    s := DivSumField^[i];
    IF (s <=MAX) AND (s>i) AND (DivSumField^[s]= i)then
    begin
      With indices[n] do
      begin
        idxI := i;
        idxS := s;
      end;
      inc(n);
    end;
  end;
  result := n;
end;

Procedure CalcPotfactor(prim:tValue);
//PowerFac[k] = (prim^(k+1)-1)/(prim-1) == Sum (i=0..k) prim^i
var
  k: tValue;
  Pot,       //== prim^k
  PFac : Int64;
begin
  Pot := prim;
  PFac := 1;
  For k := 0 to High(PowerFac) do
  begin
    PFac := PFac+Pot;
    IF (POT > MAX) then
      BREAK;
    PowerFac[k] := PFac;
    Pot := Pot*prim;
  end;
end;

procedure InitPW(prim:tValue);
begin
  fillchar(power,SizeOf(power),#0);
  CalcPotfactor(prim);
end;

function NextPotCnt(p: tValue):tValue;
//return the first power <> 0
//power == n to base prim
var
  i : tValue;
begin
  result := 0;
  repeat
    i := power[result];
    Inc(i);
    IF i < p then
      BREAK
    else
    begin
      i := 0;
      power[result]  := 0;
      inc(result);
    end;
  until false;
  power[result] := i;
end;

procedure Sieve(prim: tValue);
var
  actNumber,idx : tValue;
begin
  //sieve with "small" primes
  while prim*prim <= MAX do
  begin
    InitPW(prim);
    Begin
      //actNumber = actual number = n*prim
      actNumber := prim;
      idx := prim;
      while actNumber <= MAX do
      begin
        dec(idx);
        IF idx > 0 then
          DivSumField^[actNumber] *= PowerFac[0]
        else
        Begin
          DivSumField^[actNumber] *= PowerFac[NextPotCnt(prim)+1];
          idx := Prim;
        end;
        inc(actNumber,prim);
      end;
    end;
    //next prime
    repeat
      inc(prim);
    until DivSumField^[prim]= 1;//(DivSumField[prim] = 1);
  end;

  //sieve with "big" primes, only one factor is possible
  while 2*prim <= MAX do
  begin
    InitPW(prim);
    Begin
      actNumber := prim;
      idx := PowerFac[0];
      while actNumber <= MAX do
      begin
        DivSumField^[actNumber] *= idx;
        inc(actNumber,prim);
      end;
    end;
    repeat
      inc(prim);
    until DivSumField^[prim]= 1;
  end;

  For idx := 2 to MAX do
    dec(DivSumField^[idx],idx);
end;

var
  T2,T1,T0: TDatetime;
  APcnt: tValue;
  i: NativeInt;
begin
  MAX := 20000;
  IF  ParamCount > 0 then
    MAX := StrToInt(ParamStr(1));
  setlength(ds,MAX);
  DivSumField := @ds[0];
  T0:= time;
  For i := 1 to 1 do
  Begin
    Init;
    Sieve(2);
  end;
  T1:= time;

  APCnt := Check;
  T2:= time;
  AmPairOutput(APCnt);
  writeln(APCnt,' amicable pairs til ',MAX);
  writeln('Time to calc sum of divs    ',FormatDateTime('HH:NN:SS.ZZZ' ,T1-T0));
  writeln('Time to find amicable pairs ',FormatDateTime('HH:NN:SS.ZZZ' ,T2-T1));
  setlength(ds,0);
  {$IFNDEF UNIX}
    readln;
  {$ENDIF}
end.
{------------------------------------------------------- 12 anonymous-recursion}
program AnonymousRecursion;

function Fib(X: Integer): integer;

	function DoFib(N: Integer): Integer;
	begin
	if N < 2 then DoFib:=N
	else DoFib:=DoFib(N-1) + DoFib(N-2);
	end;

begin
if X < 0 then Fib:=X
else Fib:=DoFib(X);
end;


var I,V: integer;

begin
for I:=-1 to 15 do
	begin
	V:=Fib(I);
	Write(I:3,' - ',V:3);
	if V<0 then Write(' - Error');
	WriteLn;
	end;
WriteLn('Hit Any Key');
ReadLn;
end.
{--------------------------------------------------------------- 13 anti-primes}
program AntiPrimes;
{$IFdef FPC}
  {$MOde Delphi}
{$IFEND}
function getFactorCnt(n:NativeUint):NativeUint;
var
  divi,quot,pot,lmt : NativeUint;
begin
  result := 1;
  divi  := 1;
  lmt := trunc(sqrt(n));
  while divi < n do
  Begin
    inc(divi);
    pot := 0;
    repeat
      quot := n div divi;
      if n <> quot*divi then
        BREAK;
      n := quot;
      inc(pot);
    until false;
    result := result*(1+pot);
    //IF n= prime leave now
    if divi > lmt then
      BREAK;
  end;
end;

var
  i,Count,FacCnt,lastCnt: NativeUint;
begin
  count := 0;
  lastCnt := 0;
  i := 1;
  repeat
    FacCnt := getFactorCnt(i);
    if  lastCnt < FacCnt then
    Begin
      write(i,'(',FacCnt,'),');
      lastCnt:= FacCnt;
      inc(Count);
      if count = 12 then
        Writeln;
    end;
    inc(i);
  until Count >= 20;
  writeln;
end.
{------------------------------------ 14 arbitrary-precision-integers-included-}
program GMP_Demo;

uses
  math, gmp;

var
  a:   mpz_t;
  out: pchar;
  len: longint;
  i:   longint;

begin
  mpz_init_set_ui(a, 5);
  mpz_pow_ui(a, a, 4 ** (3 ** 2));
  len := mpz_sizeinbase(a, 10);
  writeln('GMP says size is: ', len);
  out := mpz_get_str(NIL, 10, a);
  writeln('Actual size is:   ', length(out));
  write('Digits: ');
  for i := 0 to 19 do
    write(out[i]);
  write ('...');
  for i := len - 20 to len do
    write(out[i]);
  writeln;
end.
{------------------------------------------------------ 15 arena-storage-pool-2}
Program Example16;
{ Program to demonstrate the Dispose and New functions. }
Type
  SS = String[20];
  AnObj = Object
    I : integer;
    Constructor Init;
    Destructor Done;
  end;

Var
  P : ^SS;
  T : ^AnObj;

Constructor Anobj.Init;
begin
  Writeln ( ' Initializing an instance of AnObj! ' );
end;

Destructor AnObj.Done;
begin
  Writeln ( ' Destroying an instance of AnObj! ' ) ;
end;

begin
  New ( P );
  P^ := 'Hello, World!';
  Dispose ( P );
{ P is undefined from here on! }
  New ( T, Init );
  T^.i := 0;
  Dispose ( T, Done );
end .
{------------------------------------ 16 arithmetic-geometric-mean-calculate-pi}
program AgmForPi;
{$mode objfpc}{$h+}{$b-}{$warn 5091 off}
uses
  SysUtils, Math, GMP;

const
  MIN_DIGITS = 32;
  MAX_DIGITS = 1000000;

var
  Digits: Cardinal = 256;

procedure ReadInput;
var
  UserDigits: Cardinal;
begin
  if (ParamCount > 0) and TryStrToDWord(ParamStr(1), UserDigits) then
    Digits := Min(MAX_DIGITS, Max(UserDigits, MIN_DIGITS));
  f_set_default_prec(Ceil((Digits + 1)/LOG_10_2));
end;

function Sqrt(a: MpFloat): MpFloat;
begin
  Result := f_sqrt(a);
end;

function Sqr(a: MpFloat): MpFloat;
begin
  Result := a * a;
end;

function PiDigits: string;
var
  a0, b0, an, bn, tn: MpFloat;
  n: Cardinal;
begin
  n := 1;
  an := 1;
  bn := Sqrt(MpFloat(0.5));
  tn := 0.25;
  while n < Digits do begin
    a0 := an;
    b0 := bn;
    an := (a0 + b0)/2;
    bn := Sqrt(a0 * b0);
    tn := tn - Sqr(an - a0) * n;
    n := n + n;
  end;
  Result := Sqr(an + bn)/(tn * 4);
  SetLength(Result, Succ(Digits));
end;

begin
  ReadInput;
  WriteLn(PiDigits);
end.
{-------------------------------------------------------- 17 arithmetic-numbers}
program ArithmeiticNumbers;

procedure ArithmeticNumbers;
var N, ArithCnt, CompCnt, DDiv: longint;
var DivCnt, Sum, Quot, Rem: longint;
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
{$IFDEF WINDOWS}ReadLn;{$ENDIF}
end.
{-------------------------------------------------------------------- 18 arrays}
Program ArrayDemo;
uses
  SysUtils;
var
  StaticArray: array[0..9] of Integer;
  DynamicArray: array of Integer;
  StaticArrayText,
  DynamicArrayText: string;
  lcv: Integer;
begin
  // Setting the length of the dynamic array the same as the static one
  SetLength(DynamicArray, Length(StaticArray));
  // Asking random numbers storing into the static array
  for lcv := 0 to Pred(Length(StaticArray)) do
  begin
    write('Enter a integer random number for position ', Succ(lcv), ': ');
    readln(StaticArray[lcv]);
  end;
  // Storing entered numbers of the static array in reverse order into the dynamic
  for lcv := 0 to Pred(Length(StaticArray)) do
    DynamicArray[Pred(Length(DynamicArray)) - lcv] := StaticArray[lcv];
  // Concatenating the static and dynamic array into a single string variable
  StaticArrayText := '';
  DynamicArrayText := '';
  for lcv := 0 to Pred(Length(StaticArray)) do
  begin
    StaticArrayText := StaticArrayText + IntToStr(StaticArray[lcv]) + ' ';
    DynamicArrayText := DynamicArrayText + IntToStr(DynamicArray[lcv]) + ' ';
  end;
  // Displaying both arrays
  writeln(StaticArrayText);
  writeln(DynamicArrayText);
end.
{---------------------------------------------------------- 19 ascending-primes}
{$mode Delphi}

{ Note that for the program to work properly,
  integer variables must be at least 28-bit.
  Free Pascal Compiler uses 16-bit integers by default,
  so a directive like above is needed. }

program ascendingprimes(output);

const maxsize = 1000;

var
  queue, primes : array[1..maxsize] of integer;
  b, e, n, k, v : integer;


function isprime(n: integer): boolean;

  var
    ans : boolean;
    root, k : integer;
  begin
    if n = 2 then
      ans := true
    else if (n = 1) or (n mod 2 = 0) then
      ans := false
    else
    begin
      root := trunc(sqrt(n));
      ans := true;
      k := 3;
      while ans and (k <= root) do
        if n mod k = 0 then
          ans := false
        else
          k := k + 2;
    end;
    isprime := ans
  end;

begin

  b := 1;
  e := 1;
  n := 0;

  for k := 1 to 9 do
  begin
    queue[e] := k;
    e := e + 1
  end;

  while b < e do
  begin
    v := queue[b];
    b := b + 1;
    if isprime(v) then
    begin
      n := n + 1;
      primes[n] := v
    end;

    for k := v mod 10 + 1 to 9 do
    begin
      queue[e] := v * 10 + k;
      e := e + 1
    end

  end;

  for k := 1 to n do
    write(primes[k], ' ');
  writeln()

end.
{------------------------------------------------ 20 averages-arithmetic-mean-1}
Program Mean;

  function DoMean(vector: array of double): double;
  var
    sum: double;
    i, len: integer;
  begin
    sum := 0;
    len := length(vector);
    if len > 0 then
      begin
      for i := low(vector) to high(vector) do
	sum := sum + vector[i];
      sum := sum / len;
      end;
     DoMean := sum;
  end;

const
  vector: array [3..8] of double = (3.0, 1.0, 4.0, 1.0, 5.0, 9.0);
var
  i: integer;
begin
  writeln('Calculating the arithmetic mean of a series of numbers:');
  write('Numbers: [ ');
  for i := low(vector) to high(vector) do
    write (vector[i]:3:1, ' ');
  writeln (']');
  writeln('Mean: ', DoMean(vector):10:8);
end.
{------------------------------------------------ 21 averages-arithmetic-mean-2}
Program DoMean;
uses math;
const
  vector: array [3..8] of double = (3.0, 1.0, 4.0, 1.0, 5.0, 9.0);
var
  i: integer;
  mean: double;
begin
  writeln('Calculating the arithmetic mean of a series of numbers:');
  write('Numbers: [ ');
  for i := low(vector) to high(vector) do
    write (vector[i]:3:1, ' ');
  writeln (']');
  mean := 0;
  if length(vector) > 0 then
    mean := sum(vector)/length(vector);
  writeln('Mean: ', mean:10:8);
end.
{------------------------------------------------------- 22 averages-mean-angle}
program MeanAngle;
{$IFDEF DELPHI}
  {$APPTYPE CONSOLE}
{$ENDIF}
uses
  math;// sincos and atan2
type
  tAngles = array of double;

function MeanAngle(const a:tAngles;cnt:longInt):double;
// calculates mean angle.
// returns 0.0 if direction is not sure.
const
  eps = 1e-10;

var
  i : LongInt;
  s,c,
  Sumsin,SumCos : extended;
begin
  IF cnt = 0 then
  Begin
    MeanAngle := 0.0;
    EXIT;
  end;

  SumSin:= 0;
  SumCos:= 0;
  For i := Cnt-1 downto 0 do
  Begin
    sincos(DegToRad(a[i]),s,c);
    Sumsin := sumSin+s;
    SumCos := sumCos+c;
  end;
  s := SumSin/cnt;
  c := sumCos/cnt;
  IF c > eps then
    MeanAngle := RadToDeg(arctan2(s,c))
  else
    // Not meaningful
    MeanAngle := 0.0;
end;

Procedure OutMeanAngle(const a:tAngles;cnt:longInt);
var
  i : longInt;
Begin
  IF cnt > 0 then
  Begin
    write('The mean angle of [');
    For i := 0 to Cnt-2 do
      write(a[i]:0:2,',');
    write(a[Cnt-1]:0:2,'] => ');
    writeln(MeanAngle(a,cnt):0:16);
  end;
end;

var
  a:tAngles;
Begin
  setlength(a,4);

  a[0] := 350;a[1] := 10;
  OutMeanAngle(a,2);
  a[0] := 90;a[1] := 180;a[2] := 270;a[3] := 360;
  OutMeanAngle(a,4);
  a[0] := 10;a[1] := 20;a[2] := 30;
  OutMeanAngle(a,3);

  setlength(a,0);
end.
{----------------------------------------------------------- 23 averages-median}
Program AveragesMedian(output);

type
  TDoubleArray = array of double;

procedure bubbleSort(var list: TDoubleArray);
var
  i, j, n: integer;
  t: double;
begin
  n := length(list);
  for i := n downto 2 do
    for j := 0 to i - 1 do
      if list[j] > list[j + 1] then
      begin
        t := list[j];
        list[j] := list[j + 1];
        list[j + 1] := t;
      end;
end;

function Median(aArray: TDoubleArray): double;
var
  lMiddleIndex: integer;
begin
  bubbleSort(aArray);
  lMiddleIndex := (high(aArray) - low(aArray)) div 2;
  if Odd(Length(aArray)) then
    Median := aArray[lMiddleIndex + 1]
  else
    Median := (aArray[lMiddleIndex + 1] + aArray[lMiddleIndex]) / 2;
end;

var
  A: TDoubleArray;
  i: integer;

begin
  randomize;
  setlength(A, 7);
  for i := low(A) to high(A) do
  begin
    A[i] := 100 * random;
    write (A[i]:7:3, ' ');
  end;
  writeln;
  writeln('Median: ', Median(A):7:3);

  setlength(A, 6);
  for i := low(A) to high(A) do
  begin
    A[i] := 100 * random;
    write (A[i]:7:3, ' ');
  end;
  writeln;
  writeln('Median: ', Median(A):7:3);
end.
{-------------------------------------------- 24 averages-simple-moving-average}
program sma;
type
  tsma = record
            smaValue : array of double;
            smaAverage,
            smaSumOld,
            smaSumNew,
            smaRezActLength : double;
            smaActLength,
            smaLength,
            smaPos   :NativeInt;
            smaIsntFull: boolean;
         end;

procedure smaInit(var sma:tsma;p: NativeUint);
Begin
  with sma do
  Begin
    setlength(smaValue,0);
    setlength(smaValue,p);
    smaLength:= p;
    smaActLength := 0;
    smaAverage:= 0.0;
    smaSumOld := 0.0;
    smaSumNew := 0.0;
    smaPos := p-1;
    smaIsntFull := true
    end;
end;

function smaAddValue(var sma:tsma;v: double):double;
Begin
  with sma do
  Begin
    IF smaIsntFull then
    Begin
      inc(smaActLength);
      smaRezActLength := 1/smaActLength;
      smaIsntFull :=  smaActLength < smaLength ;
    end;
    smaSumOld := smaSumOld+v-smaValue[smaPos];
    smaValue[smaPos] := v;
    smaSumNew := smaSumNew+v;

    smaPos := smaPos-1;
    if smaPos < 0 then
    begin
      smaSumOld:= smaSumNew;
      smaSumNew:= 0.0;
      smaPos := smaLength-1;
    end;
    smaAverage := smaSumOld *smaRezActLength;
    smaAddValue:= smaAverage;
  end;
end;

var
 sma3,sma5:tsma;
 i : LongInt;
begin
  smaInit(sma3,3);
  smaInit(sma5,5);
  For i := 1 to 5 do
  Begin
    write('Inserting ',i,' into sma3 ',smaAddValue(sma3,i):0:4);
    writeln(' Inserting ',i,' into sma5 ',smaAddValue(sma5,i):0:4);
  end;
  For i := 5 downto 1 do
  Begin
    write('Inserting ',i,' into sma3 ',smaAddValue(sma3,i):0:4);
    writeln(' Inserting ',i,' into sma5 ',smaAddValue(sma5,i):0:4);
  end;
  //speed test
  smaInit(sma3,3);
  For i := 1 to 100000000 do
    smaAddValue(sma3,i);
  writeln('100''000''000 insertions ',sma3.smaAverage:0:4);
end.
{----------------------------------------------- 25 b-zier-curves-intersections}
{$mode ISO}  { Tell Free Pascal Compiler to use "ISO 7185" mode. }

{

This is the algorithm of the Icon example, recast as a recursive
procedure.

The "var" notation in formal parameter lists means pass by
reference. All other parameters are implicitly passed by value.

Pascal is case-insensitive.

In the old days, when Pascal was printed as a means to express
algorithms, it was usually in a fashion similar to Algol 60 reference
language. It was printed mostly in lowercase and did not have
underscores. Reserved words were in boldface and variables, etc., were
in italics. The effect was like that of Algol 60 reference language.

Code entry practices for Pascal were another matter. It may have been
all uppercase, with ML-style comment braces instead of squiggly
braces. It may have had uppercase reserved words and "Pascal case"
variables, etc., as one sees also in Modula-2 and Oberon-2 code.

Here I have deliberately adopted an all-lowercase style.

References on the s-power basis:

  J. Sánchez-Reyes, ‘The symmetric analogue of the polynomial power
      basis’, ACM Transactions on Graphics, vol 16 no 3, July 1997,
      page 319.

  J. Sánchez-Reyes, ‘Applications of the polynomial s-power basis in
      geometry processing’, ACM Transactions on Graphics, vol 19 no 1,
      January 2000, page 35.

}

program bezierintersections;

const
  flatnesstolerance = 0.0001;
  minimumspacing = 0.000001;
  maxintersections = 10;

type
  point =
    record
      x, y : real
    end;
  spower = { non-parametric spline in s-power basis }
    record
      c0, c1, c2 : real
    end;
  curve =  { parametric spline in s-power basis }
    record
      x, y : spower
    end;
  portion = { portion of a parametric spline in [t0,t1] }
    record
      curv           : curve;
      t0, t1         : real;
      endpt0, endpt1 : point { pre-computed for efficiency }
    end;
  intersectionscount = 0 .. maxintersections;
  intersectionsrange = 1 .. maxintersections;
  tparamsarray = array [intersectionsrange] of real;
  coordsarray = array [intersectionsrange] of point;

var
  numintersections : intersectionscount;
  tparamsp : tparamsarray;
  coordsp : coordsarray;
  tparamsq : tparamsarray;
  coordsq : coordsarray;
  pglobal, qglobal : curve;
  i : integer;

{ Minimum of two real. }
function rmin (x, y : real) : real;
begin
  if x < y then rmin := x else rmin := y
end;

{ Maximum of two real. }
function rmax (x, y : real) : real;
begin
  if x < y then rmax := y else rmax := x
end;

{ Insertion sort of an array of real. }
procedure realsort (    n : integer;
                    var a : array of real);
var
  i, j : integer;
  x : real;
  done : boolean;
begin
  i := low (a) + 1;
  while i < n do
    begin
      x := a[i];
      j := i - 1;
      done := false;
      while not done do
        begin
          if j + 1 = low (a) then
            done := true
          else if a[j] <= x then
            done := true
          else
            begin
              a[j + 1] := a[j];
              j := j - 1
            end
        end;
      a[j + 1] := x;
      i := i + 1
    end
end;

{ "Length" according to some definition. Here I use a max norm.  The
  "distance" between two points is the "length" of the differences of
  the corresponding coordinates. (The sign of the difference should be
  immaterial.) }
function length (ax, ay : real) : real;
begin
  length := rmax (abs (ax), abs (ay))
end;

{ Having a "comparelengths" function makes it possible to use a
  euclidean norm for "length", and yet avoid square roots. One
  compares the squares of lengths, instead of the lengths
  themselves. However, here I use a more general implementation. }
function comparelengths (ax, ay, bx, by : real) : integer;
var lena, lenb : real;
begin
  lena := length (ax, ay);
  lenb := length (bx, by);
  if lena < lenb then
    comparelengths := -1
  else if lena > lenb then
    comparelengths := 1
  else
    comparelengths := 0
end;

function makepoint (x, y : real) : point;
begin
  makepoint.x := x;
  makepoint.y := y
end;

function makeportion (curv           : curve;
                      t0, t1         : real;
                      endpt0, endpt1 : point) : portion;
begin
  makeportion.curv := curv;
  makeportion.t0 := t0;
  makeportion.t1 := t1;
  makeportion.endpt0 := endpt0;
  makeportion.endpt1 := endpt1;
end;

{ Convert from control points (that is, Bernstein basis) to the
  symmetric power basis. }
function controlstospower (ctl0, ctl1, ctl2 : point) : curve;
begin
  controlstospower.x.c0 := ctl0.x;
  controlstospower.y.c0 := ctl0.y;
  controlstospower.x.c1 := (2.0 * ctl1.x) - ctl0.x - ctl2.x;
  controlstospower.y.c1 := (2.0 * ctl1.y) - ctl0.y - ctl2.y;
  controlstospower.x.c2 := ctl2.x;
  controlstospower.y.c2 := ctl2.y
end;

{ Evaluate an s-power spline at t. }
function spowereval (spow : spower;
                     t    : real) : real;
begin
  spowereval := (spow.c0 + (spow.c1 * t)) * (1.0 - t) + (spow.c2 * t)
end;

{ Evaluate a curve at t. }
function curveeval (curv : curve;
                    t    : real) : point;
begin
  curveeval.x := spowereval (curv.x, t);
  curveeval.y := spowereval (curv.y, t)
end;

{ Return the center coefficient for the [t0,t1] portion of an s-power
  spline. (The endpoint coefficients can be found with spowereval.) }
function spowercentercoef (spow   : spower;
                           t0, t1 : real) : real;
begin
  spowercentercoef := spow.c1 * ((t1 - t0 - t0) * t1 + (t0 * t0))
end;

{ Return t in (0,1) where spow is at a critical point, else return
  -1.0. }
function spowercriticalpt (spow : spower) : real;
var t : real;
begin
  spowercriticalpt := -1.0;
  if spow.c1 <> 0.0 then { If c1 is zero, then the spline is linear. }
    begin
      if spow.c1 = spow.c2 then
        spowercriticalpt := 0.5 { The spline is "pulse-like". }
      else
        begin
          { t = root of the derivative }
          t := (spow.c2 + spow.c1 - spow.c0) / (spow.c1 + spow.c1);
          if (0.0 < t) and (t < 1.0) then
            spowercriticalpt := t
        end
    end
end;

{ Bisect a portion and pre-compute the new shared endpoint. }
procedure bisectportion (    port         : portion;
                         var port1, port2 : portion);
begin
  port1.curv := port.curv;
  port2.curv := port.curv;

  port1.t0 := port.t0;
  port1.t1 := 0.5 * (port.t0 + port.t1);
  port2.t0 := port1.t1;
  port2.t1 := port.t1;

  port1.endpt0 := port.endpt0;
  port1.endpt1 := curveeval (port.curv, port1.t1);
  port2.endpt0 := port1.endpt1;
  port2.endpt1 := port.endpt1;
end;

{ Do the rectangles with corners at (a0,a1) and (b0,b1) overlap at
  all? }
function rectanglesoverlap (a0, a1, b0, b1 : point) : boolean;
begin
  rectanglesoverlap := ((rmin (a0.x, a1.x) <= rmax (b0.x, b1.x))
                        and (rmin (b0.x, b1.x) <= rmax (a0.x, a1.x))
                        and (rmin (a0.y, a1.y) <= rmax (b0.y, b1.y))
                        and (rmin (b0.y, b1.y) <= rmax (a0.y, a1.y)))
end;

{ Set the respective [0,1] parameters of line segments (a0,a1) and
  (b0,b1), for their intersection point. If there are not two such
  parameters, set both values to -1.0. }
procedure segmentparameters (    a0, a1, b0, b1 : point;
                             var ta, tb         : real);
var
  anumer, bnumer, denom : real;
  axdiff, aydiff, bxdiff, bydiff : real;
begin
  axdiff := a1.x - a0.x;
  aydiff := a1.y - a0.y;
  bxdiff := b1.x - b0.x;
  bydiff := b1.y - b0.y;

  denom := (axdiff * bydiff) - (aydiff * bxdiff);

  anumer := ((bxdiff * a0.y) - (bydiff * a0.x)
             + (b0.x * b1.y) - (b1.x * b0.y));
  ta := anumer / denom;
  if (ta < 0.0) or (1.0 < ta) then
    begin
      ta := -1.0;
      tb := -1.0
    end
  else
    begin
      bnumer := -((axdiff * b0.y) - (aydiff * b0.x)
                  + (a0.x * a1.y) - (a1.x * a0.y));
      tb := bnumer / denom;
      if (tb < 0.0) or (1.0 < tb) then
        begin
          ta := -1.0;
          tb := -1.0
        end
    end
end;

{ Is a curve portion flat enough to be treated as a line segment
  between its endpoints? }
function flatenough (port : portion;
                     tol  : real) : boolean;
var
  xcentercoef, ycentercoef : real;
begin

  { The degree-2 s-power polynomials are 1-t, t(1-t), t. We want to
    remove the terms in t(1-t). The maximum of t(1-t) is 1/4, reached
    at t=1/2. That accounts for the 1/4=0.25 in the following. }

  { The "with" construct here is a shorthand to implicitly use fields
    of the "port" record. Thus "curv.x" means "port.curv.x", etc. }
  with port do
    begin
      xcentercoef := spowercentercoef (curv.x, t0, t1);
      ycentercoef := spowercentercoef (curv.y, t0, t1);
      flatenough := comparelengths (0.25 * xcentercoef,
                                    0.25 * ycentercoef,
                                    tol * (endpt1.x - endpt0.x),
                                    tol * (endpt1.y - endpt0.y)) <= 0
    end
end;

{ If the intersection point corresponding to tp and tq is not already
  listed, insert it into the arrays, sorted by the value of tp. }
procedure insertintersection (p  : curve;
                              tp : real;
                              q  : curve;
                              tq : real);
var
  ppoint, qpoint : point;
  lenp, lenq : real;
  i : intersectionscount;
  insertionpoint : intersectionscount;
begin
  if numintersections <> maxintersections then
    begin
      ppoint := curveeval (p, tp);
      qpoint := curveeval (q, tq);

      insertionpoint := numintersections + 1; { Insert at end. }
      i := 0;
      while (0 < insertionpoint) and (i <> numintersections) do
        begin
          i := i + 1;
          lenp := length (coordsp[i].x - ppoint.x,
                          coordsp[i].y - ppoint.y);
          lenq := length (coordsq[i].x - qpoint.x,
                          coordsq[i].y - qpoint.y);
          if (lenp < minimumspacing) and (lenq < minimumspacing) then
            insertionpoint := 0 { The point is already listed. }
          else if tp < tparamsp[i] then
            begin
              insertionpoint := i; { Insert here instead of at end. }
              i := numintersections
            end
        end;

      if insertionpoint <> numintersections + 1 then
        for i := numintersections + 1 downto insertionpoint + 1 do
          begin
            tparamsp[i] := tparamsp[i - 1];
            coordsp[i]  := coordsp[i - 1];
            tparamsq[i] := tparamsq[i - 1];
            coordsq[i]  := coordsq[i - 1]
          end;

      tparamsp[insertionpoint] := tp;
      coordsp[insertionpoint]  := ppoint;
      tparamsq[insertionpoint] := tq;
      coordsq[insertionpoint]  := qpoint;

      numintersections := numintersections + 1
    end
end;

{ Find intersections between portions of two curves. }
procedure findportionintersections (pportion, qportion : portion);
var
  tp, tq : real;
  pport1, pport2 : portion;
  qport1, qport2 : portion;
begin
  if rectanglesoverlap (pportion.endpt0, pportion.endpt1,
                        qportion.endpt0, qportion.endpt1) then
    begin
      if flatenough (pportion, flatnesstolerance) then
        begin
          if flatenough (qportion, flatnesstolerance) then
            begin
              segmentparameters (pportion.endpt0, pportion.endpt1,
                                 qportion.endpt0, qportion.endpt1,
                                 tp, tq);
              if 0.0 <= tp then
                begin
                  tp := (1.0 - tp) * pportion.t0 + tp * pportion.t1;
                  tq := (1.0 - tq) * qportion.t0 + tq * qportion.t1;
                  insertintersection (pportion.curv, tp,
                                      qportion.curv, tq)
                end
            end
          else
            begin
              bisectportion (qportion, qport1, qport2);
              findportionintersections (pportion, qport1);
              findportionintersections (pportion, qport2)
            end
        end
      else
        begin
          bisectportion (pportion, pport1, pport2);
          if flatenough (qportion, flatnesstolerance) then
            begin
              findportionintersections (pport1, qportion);
              findportionintersections (pport2, qportion)
            end
          else
            begin
              bisectportion (qportion, qport1, qport2);
              findportionintersections (pport1, qport1);
              findportionintersections (pport1, qport2);
              findportionintersections (pport2, qport1);
              findportionintersections (pport2, qport2)
            end
        end
    end
end;

{ Find intersections in [0,1]. }
procedure findintersections (p, q : curve);
var
  tpx, tpy, tqx, tqy : real;
  tp, tq : array [1 .. 4] of real;
  ppoints, qpoints : array [1 .. 4] of point;
  np, nq, i, j : integer;
  pportion, qportion : portion;

  procedure pfindcriticalpts;
  var i : integer;
  begin
    tp[1] := 0.0;
    tp[2] := 1.0;
    np := 2;
    tpx := spowercriticalpt (p.x);
    tpy := spowercriticalpt (p.y);
    if (0.0 < tpx) and (tpx < 1.0) then
      begin
        np := np + 1;
        tp[np] := tpx
      end;
    if (0.0 < tpy) and (tpy < 1.0) and (tpy <> tpx) then
      begin
        np := np + 1;
        tp[np] := tpy
      end;
    realsort (np, tp);
    for i := 1 to np do
      ppoints[i] := curveeval (p, tp[i])
  end;

  procedure qfindcriticalpts;
  var i : integer;
  begin
    tq[1] := 0.0;
    tq[2] := 1.0;
    nq := 2;
    tqx := spowercriticalpt (q.x);
    tqy := spowercriticalpt (q.y);
    if (0.0 < tqx) and (tqx < 1.0) then
      begin
        nq := nq + 1;
        tq[nq] := tqx
      end;
    if (0.0 < tqy) and (tqy < 1.0) and (tqy <> tqx) then
      begin
        nq := nq + 1;
        tq[nq] := tqy
      end;
    realsort (nq, tq);
    for i := 1 to nq do
      qpoints[i] := curveeval (q, tq[i])
  end;

begin
  { Break the curves at critical points, so one can assume the portion
    between two endpoints is monotonic along both axes. }
  pfindcriticalpts;
  qfindcriticalpts;

  { Find intersections in the cartesian product of portions of the two
    curves. (If you would like to compare with the Icon code: In the
    Icon, goal-directed evaluation is inserting such cartesian
    products into the "workload" set. However, to do this requires
    only one "every" construct instead of two, and there is no need
    for loop/counter variables.) }
  for i := 1 to np - 1 do
    for j := 1 to nq - 1 do
      begin
        pportion := makeportion (p, tp[i], tp[i + 1],
                                 ppoints[i], ppoints[i + 1]);
        qportion := makeportion (q, tq[j], tq[j + 1],
                                 qpoints[j], qpoints[j + 1]);
        findportionintersections (pportion, qportion);
      end
end;

begin
  pglobal := controlstospower (makepoint (-1.0,  0.0),
                               makepoint ( 0.0, 10.0),
                               makepoint ( 1.0,  0.0));
  qglobal := controlstospower (makepoint ( 2.0,  1.0),
                               makepoint (-8.0,  2.0),
                               makepoint ( 2.0,  3.0));
  numintersections := 0;
  findintersections (pglobal, qglobal);
  writeln;
  writeln ('          convex up                ',
           '                    convex left');
  for i := 1 to numintersections do
    writeln (' ',
             tparamsp[i]:11:8, '   (',
             coordsp[i].x:11:8, ', ',
             coordsp[i].y:11:8, ')     ',
             tparamsq[i]:11:8, '   (',
             coordsq[i].x:11:8, ', ',
             coordsq[i].y:11:8, ')');
  writeln
end.
{----------------------------------------------------------- 26 babbage-problem}
program BabbageProblem;
(* Anything bracketed off like this is an explanatory comment. *)
var n : longint; (* The VARiable n can hold a 'long', ie large, INTeger. *)
begin
    n := 2; (* Start with n equal to 2. *)
    repeat
        n := n + 2 (* Increase n by 2. *)
    until (n * n) mod 1000000 = 269696;
(* 'n * n' means 'n times n'; 'mod' means 'modulo'. *)
    write(n)
end.
{-------------------------------------------------------------- 27 benfords-law}
program fibFirstdigit;
{$IFDEF FPC}{$MODE Delphi}{$ELSE}{$APPTYPE CONSOLE}{$ENDIF}
uses
  sysutils;
type
  tDigitCount = array[0..9] of LongInt;
var
  s: Ansistring;
  dgtCnt,
  expectedCnt : tDigitCount;

procedure GetFirstDigitFibonacci(var dgtCnt:tDigitCount;n:LongInt=1000);
//summing up only the first 9 digits
//n = 1000 -> difference to first 9 digits complete fib < 100 == 2 digits
var
  a,b,c : LongWord;//about 9.6 decimals
Begin
  for a in dgtCnt do dgtCnt[a] := 0;
  a := 0;b := 1;
  while n > 0 do
  Begin
    c := a+b;
    //overflow? round and divide by base 10
    IF c < a then
      Begin a := (a+5) div 10;b := (b+5) div 10;c := a+b;end;
    a := b;b := c;
    s := IntToStr(a);inc(dgtCnt[Ord(s[1])-Ord('0')]);
    dec(n);
  end;
end;

procedure InitExpected(var dgtCnt:tDigitCount;n:LongInt=1000);
var
  i: integer;
begin
  for i := 1 to 9  do
    dgtCnt[i] := trunc(n*ln(1 + 1 / i)/ln(10));
end;

var
  reldiff: double;
  i,cnt: integer;
begin
  cnt := 1000;
  InitExpected(expectedCnt,cnt);
  GetFirstDigitFibonacci(dgtCnt,cnt);
  writeln('Digit  count  expected  rel diff');
  For i := 1 to 9 do
  Begin
    reldiff := 100*(expectedCnt[i]-dgtCnt[i])/expectedCnt[i];
    writeln(i:5,dgtCnt[i]:7,expectedCnt[i]:10,reldiff:10:5,' %');
  end;
end.
{-------------------------------------------------------------- 28 best-shuffle}
program BestShuffleDemo(output);

function BestShuffle(s: string): string;

  var
    tmp: char;
    i, j: integer;
    t: string;
  begin
    t := s;
    for i := 1 to length(t) do
      for j := 1 to length(t) do
        if (i <> j) and (s[i] <> t[j]) and (s[j] <> t[i]) then
        begin
          tmp  := t[i];
          t[i] := t[j];
          t[j] := tmp;
        end;
    BestShuffle := t;
  end;

const
  original: array[1..6] of string =
    ('abracadabra', 'seesaw', 'elk', 'grrrrrr', 'up', 'a');

var
  shuffle: string;
  i, j, score: integer;

begin
 for i := low(original) to high(original) do
 begin
   shuffle := BestShuffle(original[i]);
   score := 0;
   for j := 1 to length(shuffle) do
     if original[i][j] = shuffle[j] then
       inc(score);
    writeln(original[i], ', ', shuffle, ', (', score, ')');
  end;
end.
{----------------------------------------------------------- 29 binary-digits-1}
program IntToBinTest;
{$MODE objFPC}
uses
  strutils;//IntToBin
function WholeIntToBin(n: NativeUInt):string;
var
  digits: NativeInt;
begin
// BSR?Word -> index of highest set bit but 0 -> 255 ==-1 )
  IF n <> 0 then
  Begin
{$ifdef CPU64}
    digits:= BSRQWord(NativeInt(n))+1;
{$ELSE}
    digits:= BSRDWord(NativeInt(n))+1;
{$ENDIF}
   WholeIntToBin := IntToBin(NativeInt(n),digits);
  end
  else
    WholeIntToBin:='0';
end;
procedure IntBinTest(n: NativeUint);
Begin
  writeln(n:12,' ',WholeIntToBin(n));
end;
BEGIN
  IntBinTest(5);IntBinTest(50);IntBinTest(5000);
  IntBinTest(0);IntBinTest(NativeUint(-1));
end.
{----------------------------------------------- 30 bioinformatics-base-count-1}
program DNA_Base_Count;
{$IFDEF FPC}
  {$MODE DELPHI}//String = AnsiString
{$ELSE}
  {$APPTYPE CONSOLE}
{$ENDIF}
const
    dna =
        'CGTAAAAAATTACAACGTCCTTTGGCTATCTCTTAAACTCCTGCTAAATG' +
        'CTCGTGCTTTCCAATTATGTAAGCGTTCCGAGACGGGGTGGTCGATTCTG' +
        'AGGACAAAGGTCAAGATGGAGCGCATCGAACGCAATAAGGATCATTTGAT' +
        'GGGACGTTTCGTCGACAAAGTCTTGTTTCGAGAGTAACGGCTACCGTCTT' +
        'CGATTCTGCTTATAACACTATGTTCTTATGAAATGGATGTTCTGAGTTGG' +
        'TCAGTCCCAATGTGCGGGGTTTCTTTTAGTACGTCGGGAGTGGTATTATA' +
        'TTTAATTTTTCTATATAGCGATCTGTATTTAAGCAATTCATTTAGGTTAT' +
        'CGCCGCGATGCTCGGTTCGGACCGCCAAGCATCTGGCTCCACTGCTAGTG' +
        'TCCTAAATTTGAATGGCAAACACAAATAAGATTTAGCAATTCGTGTAGAC' +
        'GACCGGGGACTTGCATGATGGGAGCAGCTTTGTTAAACTACGAACGTAAT';
var
  CntIdx : array of NativeUint;
  DNABases : String;
  SumBaseTotal : NativeInt;

procedure OutFormatBase(var DNA: String;colWidth:NativeInt);
var
  j: NativeInt;
Begin
  j := 0;
  Writeln(' DNA base sequence');
  While j<Length(DNA) do
  Begin
    writeln(j:5,copy(DNA,j+1,colWidth):colWidth+2);
    inc(j,colWidth);
  end;
  writeln;
end;

procedure Cnt(const DNA: String);
var
  i,p :NativeInt;
Begin
  SetLength(CntIdx,Length(DNABases));
  i := 1;
  while i <= Length(DNA) do
  Begin
    p := Pos(DNA[i],DNABases);
    //found new base so extend list
    if p = 0 then
    Begin
      DNABases := DNABases+DNA[i];
      p := length(DNABases);
      Setlength(CntIdx,p+1);
    end;
    inc(CntIdx[p]);
    inc(i);
  end;

  Writeln('Base     Count');
  SumBaseTotal := 0;
  For i := 1 to Length(DNABases) do
  Begin
    p := CntIdx[i];
    inc(SumBaseTotal,p);
    writeln(DNABases[i]:4,p:10);
  end;
  Writeln('Total base count ',SumBaseTotal);
  writeln;
end;

var
  TestDNA: String;
Begin
  DNABases :='ACGT';// predefined
  TestDNA := DNA;
  OutFormatBase(TestDNA,50);
  Cnt(TestDNA);
end.
{------------------------------------------- 31 bioinformatics-global-alignment}
program BaseInDNA;
{$IFDEF FPC}
  {$mode Delphi}  {$Optimization ON,All}
{$ELSE}
  {$APPTYPE CONSOLE}
{$ENDIF}
uses
  sysutils,classes;
type
  tmyString = AnsiString;//[255];
  tpMyString = ^tmyString;
  tOvrLapMat = array of array of Int32;
  tNextDNA = array of Int32;
  tpNextDNA = pInt32;
const
  convDgtBase :array['1'..'5'] of char = ('A','C','G','T','U');

  Test1 : array[0..4] of tmyString = ('TA','AAG','TA','GAA','TA');
  Test2 : array[0..3] of tmyString = ('CATTAGGG', 'ATTAG', 'GGG', 'TA');
  Test3 : array[0..2] of tmyString = ('AAGAUGGA', 'GGAGCGCAUC', 'AUCGCAAUAAGGA');
  Test4 : array[0..12] of tmyString =
('ATGAAATGGATGTTCTGAGTTGGTCAGTCCCAATGTGCGGGGTTTCTTTTAGTACGTCGGGAGTGGTATTAT',
'GGTCGATTCTGAGGACAAAGGTCAAGATGGAGCGCATCGAACGCAATAAGGATCATTTGATGGGACGTTTCGTCGACAAAGT',
'CTATGTTCTTATGAAATGGATGTTCTGAGTTGGTCAGTCCCAATGTGCGGGGTTTCTTTTAGTACGTCGGGAGTGGTATTATA',
'TGCTTTCCAATTATGTAAGCGTTCCGAGACGGGGTGGTCGATTCTGAGGACAAAGGTCAAGATGGAGCGCATC',
'AACGCAATAAGGATCATTTGATGGGACGTTTCGTCGACAAAGTCTTGTTTCGAGAGTAACGGCTACCGTCTT',
'GCGCATCGAACGCAATAAGGATCATTTGATGGGACGTTTCGTCGACAAAGTCTTGTTTCGAGAGTAACGGCTACCGTC',
'CGTTTCGTCGACAAAGTCTTGTTTCGAGAGTAACGGCTACCGTCTTCGATTCTGCTTATAACACTATGTTCT',
'TGCTTTCCAATTATGTAAGCGTTCCGAGACGGGGTGGTCGATTCTGAGGACAAAGGTCAAGATGGAGCGCATC',
'CGTAAAAAATTACAACGTCCTTTGGCTATCTCTTAAACTCCTGCTAAATGCTCGTGC',
'GATGGAGCGCATCGAACGCAATAAGGATCATTTGATGGGACGTTTCGTCGACAAAGTCTTGTTTCGAGAGTAACGGCTACCGTCTTCGATT',
'TTTCCAATTATGTAAGCGTTCCGAGACGGGGTGGTCGATTCTGAGGACAAAGGTCAAGATGGAGCGCATC',
'CTATGTTCTTATGAAATGGATGTTCTGAGTTGGTCAGTCCCAATGTGCGGGGTTTCTTTTAGTACGTCGGGAGTGGTATTATA',
'TCTCTTAAACTCCTGCTAAATGCTCGTGCTTTCCAATTATGTAAGCGTTCCGAGACGGGGTGGTCGATTCTGAGGACAAAGGTCAAGA');
var
  sl_DNA : TStringList;
  OverlapMat : tOvrLapMat;
  SolDNA : tNextDNA;
  pNextDNA : tpNextDNA;
  DNA_Count,MAX,LastMax : Int32;

function ConvertACGT_1234(const s:AnsiString):AnsiString;
const
  conv :array['A'..'U'] of char = ('1',#0,'2',#0,#0,#0,'3',#0,#0,
                                   #0,#0,#0,#0,#0,#0,#0,#0,#0,
                                   #0,'4','5');
var
  pC: pChar;
  i : NativeInt;
begin
  i := Length(s);
  setlength(result,i);
  pC := @result[1];
  dec(i);
  while i >= 0 do
  Begin
    pC[i] := conv[s[i+1]];
    dec(i);
  end;
end;

function Convert1234_ACGTU(const s:AnsiString):AnsiString;
var
  pC: pChar;
  i : NativeInt;
begin
  i := Length(s);
  setlength(result,i);
  pC := @result[1];
  dec(i);
  while i >= 0 do
  Begin
    pC[i] := convDgtBase[s[i+1]];
    dec(i);
  end;
end;

procedure Check_Base_Count(const s: ANsiString);
var
  bc : ANsiString;
  BaseCnt : array[0..4] of UInt32;
  pC: pChar;
  i : NativeInt;
Begin
  writeln('Total length : ',Length(s));
  bc := ConvertACGT_1234(s);
  FillChar(BaseCnt,SizeOf(BaseCnt),#0);
  pC := @bc[1];
  for i := length(bc)-1 downto 0 do
    inc(BaseCnt[Ord(pC[i])-Ord('1')]);
  For i := 0 to 4 do
    write(convDgtBase[chr(i+49)],' : ',BaseCnt[i]:3,'  ');
  writeln;
end;

procedure extract_double(var sl : TStringList);
var
  i,j : NativeInt;
begin
  sl.sort;
  for i := sl.count-2 downto 0 do
    if sl[i] = sl[i+1] then
      sl.delete(i+1);

  i := sl.count-1;
  repeat
    For j := i-1 Downto 0 do
    Begin
      if (Pos(sl[j],sl[i]) >0) then
      Begin
        sl.delete(j);
        i := sl.count;
        BREAK;
      end
      else
        if (Pos(sl[i],sl[j]) >0) then
        Begin
          sl.delete(i);
        i := sl.count;
        BREAK;
        end;
    end;
    dec(i);
  until i < 1;
end;

procedure InsertSL(var sl : TStringList;pS :tpMyString;cnt:NativeInt);
Begin
  sl.clear;
  while cnt > 0 do
  Begin
    sl.Append(pS^);
    inc(pS);
    dec(cnt);
  end;
  extract_double(sl);
  sl.sort;
end;

function Check_Head_Tail(const s1,s2: AnsiString):NativeInt;
var
  cH : AnsiChar;
  i,j,k : NativeInt;
Begin
  result := 0;
  j := length(s1);
  cH := s2[1];
  repeat
    if s1[j]= cH then
    Begin
      i:= 1;
      k := j;
      while (s1[k] = s2[i]) AND (k <= length(s1)) do
      begin
        inc(i);
        inc(k);
      end;
      if k > length(s1) then
        result := length(s1)-j+1;
    end;
    dec(j);
  until j <1;
end;

function CreateOvrLapMat(const sl_DNA:TStringList):tOvrLapMat;
var
  col,row,DNAlen : NativeInt;
begin
  DNAlen := sl_DNA.Count;
  setlength(result,DNAlen,DNAlen);

  dec(DNAlen);
  For row := DNAlen downto 0 do
    For col := DNAlen downto 0 do
      if row<>col then
        result[row,col] := Check_Head_Tail(sl_DNA[row],sl_DNA[col]);
{//output of matrix
  For row := 0 to DNAlen do
  Begin
    For col := 0 to DNAlen do
      write(OverlapMat[row,col]:3);
    writeln;
  end;
}

end;

procedure SetQueen(Row,sum,lastIdx:NativeInt);
var
  i,NextIdx,dSum : nativeInt;
begin
  IF row <= DNA_Count-1 then
  begin
    For i := row to DNA_Count-1 do
    begin
      NextIdx := pNextDNA[i];pNextDNA[i] := pNextDNA[Row];pNextDNA[Row] := NextIdx;
      dSum :=OverlapMat[lastidx,NextIdx];
      sum += dSum;
        SetQueen(Row+1,sum,NextIdx);
      sum -= dSum;
      pNextDNA[Row] := pNextDNA[i];pNextDNA[i] := NextIdx;
    end;
  end
  else
  begin
    //solution found could be modified MAX<=sum for more solutions of same length
    If MAX<sum then
    Begin
      MAX := sum;
      // remember the way
      for i := DNA_Count-1 downto 0 do
        SolDNA[i+1] := pNextDNA[i];
    end;
  end;
end;

procedure Find;
var
  col,row,i : NativeInt;
  NextDNA : tNextDNA;
  Combined : AnsiString;
Begin
  DNA_Count := sl_DNA.count;

  IF DNA_Count = 1 then
    Combined := sl_DNA[0]
  else
  Begin
    setlength(SolDNA,DNA_count);
    dec(DNA_Count);
    setlength(NextDNA,DNA_count);

    //Tail-Head-Matrix
    OverlapMat := CreateOvrLapMat(sl_DNA);

    MAX := 0;
    LastMax := 0;
    pNextDNA := @NextDNA[0];
    //start with base_sequence[row]
    for row := 0 to DNA_count do
    begin
      i := 0;
      For col := 0 to DNA_count do
        if row<>col then
        begin
          pNextDNA[i] := col;
          inc(i);
        end;

        SetQueen(0,0,row);

       If LastMax< MAX then
       begin
         SolDNA[0]:= row;
         LastMax := MAX;
      end;
    end;
    Combined := '';
    for col := 0 to DNA_Count-1 do
    Begin
      write(SolDNA[col]+1,'->');
      row := length(sl_DNA[SolDNA[col]]);
      Combined += copy(sl_DNA[SolDNA[col]],1,row-OverlapMat[SolDNA[col],SolDNA[col+1]]);
    end;
    writeln(SolDNA[DNA_Count]+1);
    Combined += sl_DNA[SolDNA[DNA_Count]];

    LastMax := 0;
    for col := 0 to DNA_Count do
      inc(LastMax,Length(sl_DNA[col]));
    IF LastMax-MAX <> length(combined) then
      writeln(LastMax,'-',Max,' = ',LastMax-MAX,' ?=? ',length(combined));
  end;
  writeln(combined);
  Check_Base_Count(combined);
  writeln;
end;


BEGIN
  sl_DNA := TStringList.create;
  InsertSL(sl_DNA,@Test1[0],High(Test1)+1);
  find;
  InsertSL(sl_DNA,@Test2[0],High(Test2)+1);
  find;
  InsertSL(sl_DNA,@Test3[0],High(Test3)+1);
  find;
  InsertSL(sl_DNA,@Test4[0],High(Test4)+1);
  find;
END.
{-------------------------------------------------------- 32 bitwise-operations}
var
 a, b: integer;
begin
 a := 10; { binary 1010 }
 b := 12; { binary 1100 }
 writeln('a and b = ', a and b); {  8 = 1000 }
 writeln('a or b  = ', a or b);  { 14 = 1110 }
 writeln('a xor b = ', a xor b)  {  6 = 0110 }
end.
{----------------------------------------------------------- 33 box-the-compass}
program BoxTheCompass(output);

function compasspoint(angle: real): string;
  const
    points: array [1..32] of string =
      ('North             ', 'North by east     ', 'North-northeast   ', 'Northeast by north',
       'Northeast         ', 'Northeast by east ', 'East-northeast    ', 'East by north     ',
       'East              ', 'East by south     ', 'East-southeast    ', 'Southeast by east ',
       'Southeast         ', 'Southeast by south', 'South-southeast   ', 'South by east     ',
       'South             ', 'South by west     ', 'South-southwest   ', 'Southwest by south',
       'Southwest         ', 'Southwest by west ', 'West-southwest    ', 'West by south     ',
       'West              ', 'West by north     ', 'West-northwest    ', 'Northwest by west ',
       'Northwest         ', 'Northwest by north', 'North-northwest   ', 'North by west     '
      );
  var
    index: integer;
  begin
    index := round (angle / 11.25);
    index := index mod 32 + 1;
    compasspoint := points[index];
  end;

var
  i:       integer;
  heading: real;

begin
  for i := 0 to 32 do
  begin
    heading := i * 11.25;
    case (i mod 3) of
      1: heading := heading + 5.62;
      2: heading := heading - 5.62;
    end;
    writeln((i mod 32) + 1:2, ' ', compasspoint(heading), ' ', heading:8:4);
  end;
end.
{------------------------------------------------- 34 burrows-wheeler-transform}
program BurrowsWheeler;

{$mode objfpc}{$H+}  // Lazarus default mode; long strings
uses SysUtils;       // only for console output
const STR_BASE = 1;  // first character in a Pascal string has index [1].
type TComparison = -1..1;

procedure Encode( const input : string;
                  out encoded : string;
                  out index : integer);
var
  n : integer;
  perm : array of integer;
  i, j, k : integer;
  incr, v : integer;

        // Subroutine to compare rotations whose *last* letters have zero-based
        //  indices a, b. Returns 1, 0, -1 according as the rotation ending at a
        //  is >, =, < the rotation ending at b.
        function CompareRotations( a, b : integer) : TComparison;
        var
          p, q, nrNotTested : integer;
        begin
          result := 0;
          p := a;
          q := b;
          nrNotTested := n;
          repeat
            inc(p); if (p = n) then p := 0;
            inc(q); if (q = n) then q := 0;
            if (input[p + STR_BASE] = input[q + STR_BASE]) then dec( nrNotTested)
            else if (input[p + STR_BASE] > input[q + STR_BASE]) then result := 1
            else result := -1
          until (result <> 0) or (nrNotTested = 0);
        end;
begin
  n := Length( input);
  SetLength( perm, n);
  for j := 0 to n - 1 do perm[j] := j;

  // Sort string indices by comparing the associated rotations, as above.
  // This is a Shell sort from Press et al., Numerical Recipes, 3rd edn, pp 422-3.
  // Other sorting algorithms might be used.
  incr := 1;
  repeat
    incr := 3*incr + 1
  until (incr >= n);
  repeat
    incr := incr div 3;
    for i := incr to n - 1 do begin
      v := perm[i];
      j := i;
      while (j >= incr) and (CompareRotations( perm[j - incr], v) = 1) do begin
        perm[j] := perm[j - incr];
        dec( j, incr);
      end;
      perm[j] := v;
    end; // for
  until (incr = 1);

  // Apply the sorted array to create the output.
  SetLength( encoded, n);
  for j := 0 to n - 1 do begin
    k := perm[j];
    encoded[j + STR_BASE] := input[k + STR_BASE];
    if (k = n - 1) then index := j;
  end;
end;

{------------------------------------------------------------------------------
Given an encoded string and the associated index, one way to rebuild
the original string is to do the following, or its equivalent:

Given        Make an array     Sort the array    Rebuild the original string
'NNBAAA'     [0] = ('N', 0)    [0] = ('A', 3)    Start with given index 3
index = 3    [1] = ('N', 1)    [1] = ('A', 4)    [3] gives 'B', next index = 2
             [2] = ('B', 2)    [2] = ('A', 5)    [2] gives 'A', next index = 5
             [3] = ('A', 3)    [3] = ('B', 2)    [5] gives 'N', next index = 1
             [4] = ('A', 4)    [4] = ('N', 0)    [1] gives 'A', next index = 4
             [5] = ('A', 5)    [5] = ('N', 1)    [4] gives 'N', next index = 0
                                                 [0] gives 'A', next index = 3
                                                 3 = start index, so stop
                                                 Result = 'BANANA'

If the original string consists of two or more repetitions of a substring,
  the above method will stop when that substring has been built, e.g.
  'CANCAN' will stop at 'CAN'.
We therefore need to test for the rebuilt string being too short, and if so
  make enough copies of the decoded part to fill the required length.

It's possible to take the above description literally, and write a decoding
  routine that uses a record type consisting of a character and an integer.
A more efficient way is to create an integer array containing only the indices,
  in the above example (3, 4, 5, 2, 0, 1). A first pass counts the occurrences
  of each character in the encoded string. If the character set is ['A'..'Z']
  then the indices associated with 'A' are stored from [0]. If 'A' occurs a times,
  the indices associated with 'B' are stored from [a]; if 'B' occurs b times,
  the indices associated with 'C' are stored from [a + b]; and so on.
}
function Decode( encoded : string;
                 index : integer) : string;
var
  charInfo : array [char] of integer;
  perm : array of integer;
  n, j, k : integer;
  c : char;
  total, prev : integer;

begin
  n := Length( encoded);
  // An empty encoded string will crash the code below, so trap it here.
  if (n = 0) then begin
    result := '';
    exit;
  end;

  // Count the occurrences of each possible character.
  for c := Low(char) to High(char) do charInfo[c] := 0;
  for j := 0 to n - 1 do begin
    c := encoded[j + STR_BASE];
    inc( charInfo[c]);
  end;

  // Cumulate, i.e. charInfo[k] := sum of old charInfo from 0 to k - 1
  total := 0;
  prev := 0;
  for c := Low(char) to High(char) do begin
    inc( total, prev);
    prev := CharInfo[c];
    charInfo[c] := total;
  end;

  // Make the array "perm"
  SetLength( perm, n);
  for j := 0 to n - 1 do begin
    c := encoded[j + STR_BASE];
    k := charInfo[c];
    perm[k] := j;
    inc( charInfo[c]);
  end;

  // Apply the array "perm" to re-create the original string.
  SetLength( result, n);
  k := 0; // index into result
  j := index;
  repeat
    j := perm[j];
    result[k + STR_BASE] := encoded[j + STR_BASE];
    inc(k);
  until (j = index);

  // If the original consisted of M repetitions of the same string, then
  //   at this point exactly 1/M of the result has been filled in.
  // For M > 1 (shown by k < n), complete the result by copying the first part.
  if (k < n) then begin
    Assert( n mod k = 0); // we should have n = M*k
    for j := k to n - 1 do result[j + STR_BASE] := result[j - k + STR_BASE];
  end;
end;

procedure Test( const s : string);
var
  encoded, decoded : string;
  index : integer;
begin
  WriteLn( '');
  WriteLn( '     ' + s);
  Encode( s, {out} encoded, index);
  WriteLn( '---> ' + encoded);
  WriteLn( '       index = ' + SysUtils.IntToStr( index));
  decoded := Decode( encoded, index);
  WriteLn( '---> ' + decoded);
end;

begin
  Test( 'BANANA');
  Test( 'CANAAN');
  Test( 'CANCAN');
  Test( 'appellee');
  Test( 'dogwood');
  Test( 'TO BE OR NOT TO BE OR WANT TO BE OR NOT?');
  Test( 'SIX.MIXED.PIXIES.SIFT.SIXTY.PIXIE.DUST.BOXES');
end.
{------------------------------------------------------------- 35 caesar-cipher}
Program CaesarCipher(output);

procedure encrypt(var message: string; key: integer);
  var
    i: integer;
  begin
    for i := 1 to length(message) do
      case message[i] of
        'A'..'Z': message[i] := chr(ord('A') + (ord(message[i]) - ord('A') + key) mod 26);
        'a'..'z': message[i] := chr(ord('a') + (ord(message[i]) - ord('a') + key) mod 26);
      end;
  end;

procedure decrypt(var message: string; key: integer);
  var
    i: integer;
  begin
    for i := 1 to length(message) do
      case message[i] of
       'A'..'Z': message[i] := chr(ord('A') + (ord(message[i]) - ord('A') - key + 26) mod 26);
       'a'..'z': message[i] := chr(ord('a') + (ord(message[i]) - ord('a') - key + 26) mod 26);
      end;
  end;

var
  key: integer;
  message: string;

begin
  key := 3;
  message := 'The five boxing wizards jump quickly';
  writeln ('Original message: ', message);
  encrypt(message, key);
  writeln ('Encrypted message: ', message);
  decrypt(message, key);
  writeln ('Decrypted message: ', message);
  readln;
end.
{------------------------------------------------ 36 calculating-the-value-of-e}
program Calculating_the_value_of_e;
{$IFDEF FPC}
  {$MODE DELPHI}
{$ENDIF}

{$IFDEF WINDOWS}
  {$APPTYPE CONSOLE}
{$ENDIF}
uses
  SysUtils;

const
  EPSILON = 1.0e-14;

function Get_E: Extended;
var
  recfact: Extended;
  n: Integer;
begin
  recfact := 1.0;
  Result := 2.0;
  n := 2;
  repeat
    recfact /= n;
    inc(n);
    Result := Result + recfact;
  until (recfact < EPSILON);
end;

begin
  writeln(format('calc e = %.15f intern e= %.15f', [Get_E,exp(1.0)]));
  {$IFDEF WINDOWS}readln;{$ENDIF}
end.
{---------------------------------------------------- 37 calkin-wilf-sequence-1}
program CWTerms;

{-------------------------------------------------------------------------------
FreePascal command-line program.
Calculates the Calkin-Wilf sequence up to the specified maximum index,
  where the first term 1/1 has index 1.
Command line format is: CWTerms <max_index>

The program demonstrates 3 algorithms for calculating the sequence:
(1) Calculate term[2n] and term[2n + 1] from term[n]
(2) Calculate term[n + 1] from term[n]
(3) Calculate term[n] directly from n, without using other terms
Algorithm 1 is called first, and stores the terms in an array.
Then the program calls Algorithms 2 and 3, and checks that they agree
  with Algorithm 1.
-------------------------------------------------------------------------------}

uses SysUtils;

type TRational = record
  Num, Den : integer;
end;

var
  terms : array of TRational;
  max_index, k : integer;

  // Routine to calculate array of terms up the the maiximum index
  procedure CalcTerms_algo_1();
  var
    j, k : integer;
  begin
    SetLength( terms, max_index + 1);
    j := 1; // index to earlier term, from which current term is calculated
    k := 1; // index to current term
    terms[1].Num := 1;
    terms[1].Den := 1;
    while (k < max_index) do begin
      inc(k);
      if (k and 1) = 0 then begin // or could write "if not Odd(k)"
        terms[k].Num := terms[j].Num;
        terms[k].Den := terms[j].Num + terms[j].Den;
      end
      else begin
        terms[k].Num := terms[j].Num + terms[j].Den;
        terms[k].Den := terms[j].Den;
        inc(j);
      end;
    end;
  end;

  // Method to get each term from the preceding term.
  // a/b --> b/(a + b - 2(a mod b));
  function CheckTerms_algo_2() : boolean;
  var
    index, a, b, temp : integer;
  begin
    result := true;
    index := 1;
    a := 1;
    b := 1;
    while (index <= max_index) do begin
      if (a <> terms[index].Num) or (b <> terms[index].Den) then
        result := false;
      temp := a + b - 2*(a mod b);
      a := b;
      b := temp;
      inc( index)
    end;
  end;

  // Mathod to calcualte each term from its index, without using other terms.
  function CheckTerms_algo_3() : boolean;
  var
    index, a, b, pwr2, idiv2 : integer;
  begin
    result := true;
    for index := 1 to max_index do begin

      idiv2 := index div 2;
      pwr2 := 1;
      while (pwr2 <= idiv2) do pwr2 := pwr2 shl 1;
      a := 1;
      b := 1;
      while (pwr2 > 1) do begin
        pwr2 := pwr2 shr 1;
        if (pwr2 and index) = 0 then
          inc( b, a)
        else
          inc( a, b);
      end;
      if (a <> terms[index].Num) or (b <> terms[index].Den) then
        result := false;
    end;
  end;

begin
  // Read and validate maximum index
  max_index := SysUtils.StrToIntDef( paramStr(1), -1); // -1 if not an integer
  if (max_index <= 0) then begin
    WriteLn( 'Maximum index must be a positive integer');
    exit;
  end;

  // Calculate terms by algo 1, then check that algos 2 and 3 agree.
  CalcTerms_algo_1();
  if not CheckTerms_algo_2() then begin
    WriteLn( 'Algorithm 2 failed');
    exit;
  end;
  if not CheckTerms_algo_3() then begin
    WriteLn( 'Algorithm 3 failed');
    exit;
  end;

  // Display the terms
  for k := 1 to max_index do
    with terms[k] do
      WriteLn( SysUtils.Format( '%8d: %d/%d', [k, Num, Den]));
end.
{---------------------------------------------------- 38 calkin-wilf-sequence-2}
program CWIndex;

{-------------------------------------------------------------------------------
FreePascal command-line program.
Calculates index of a rational number in the Calkin-Wilf sequence,
  where the first term 1/1 has index 1.
Command line format is
  CWIndex <numerator> <denominator>
e.g. for the Rosetta Code example
  CWIndex 83116 51639
-------------------------------------------------------------------------------}

uses SysUtils;

var
  num, den : integer;
  a, b : integer;
  pwr2, index : qword; // 64-bit unsiged
begin
  // Read and validate input.
  num := SysUtils.StrToIntDef( paramStr(1), -1); // return -1 if not an integer
  den := SysUtils.StrToIntDef( paramStr(2), -1);
  if (num <= 0) or (den <= 0) then begin
    WriteLn( 'Numerator and denominator must be positive integers');
    exit;
  end;

  // Input OK, calculate and display index of num/den
  // The index may overflow 64 bits, so turn on overflow detection
{$Q+}
  a := num;
  b := den;
  pwr2 := 1;
  index := 0;
  try
    while (a <> b) do begin
      if (a < b) then
        dec( b, a)
      else begin
        dec( a, b);
        inc( index, pwr2);
      end;
      pwr2 := 2*pwr2;
    end;
    inc( index, pwr2);
    WriteLn( SysUtils.Format( 'Index of %d/%d is %u', [num, den, index]));
  except
    WriteLn( 'Index is too large for 64 bits');
  end;
end.
{----------------------------------------------------------- 39 catalan-numbers}
Program CatalanNumbers(output);

function catalanNumber1(n: integer): double;
  begin
    if n = 0 then
      catalanNumber1 := 1.0
    else
      catalanNumber1 := double(4 * n - 2) / double(n + 1) * catalanNumber1(n-1);
  end;

var
  number: integer;

begin
  writeln('Catalan Numbers');
  writeln('Recursion with a fraction:');
  for number := 0 to 14 do
    writeln (number:3, round(catalanNumber1(number)):9);
end.
{-------------------------------------------------------------- 40 catamorphism}
program reduceApp;

{$modeswitch classicProcVars+}

{Works in many modes with Free Pascal Compiler:
fpc, objfpc, delphi, macpas, iso, extendedpascal}

type
   Num = LongInt;  // this can be changed to Real if desired
   BinaryFunc = function(a, b: Num): Num;

function add(x, y: Num): Num; begin add := x + y; end;
function sub(x, y: Num): Num; begin sub := x - y; end;
function mul(x, y: Num): Num; begin mul := x * y; end;

function reduce(func: BinaryFunc; a: array of Num): Num;
var
   i: Integer;
   answer: Num;
begin
   answer := a[low(a)];
   for i := low(a)+1 to high(a) do
      answer := func(answer, a[i]);
   reduce := answer;  // return answer
end;

VAR
   // dynamic array
   ma: array of Num;
   // static arrays
   mb: array[1..9] of Num = (1,2,3,4,5,6,7,8,9);
   mc: array[0..8] of Num = (1,2,3,4,5,6,7,8,9);
BEGIN
   ma := [1,2,3,4,5,6,7,8,9];
   writeln(reduce(add, ma));
   writeln(reduce(sub, mb));
   writeln(reduce(mul, mc));
END.
{------------------------------------------------- 41 chinese-remainder-theorem}
// Rosetta Code task "Chinese remainder theorem".
program ChineseRemThm;
uses SysUtils;
type TIntArray = array of integer;

// Defining EXTRA adds optional explanatory code
{$DEFINE EXTRA}

// Return (if possible) a residue res_out that satifies
//   res_out = res1 modulo mod1,  res_out = res2 modulo mod2.
// Return mod_out = LCM( mod1, mod2), or mod_out = 0 if there's no solution.
procedure Solve2( const res1, res2, mod1, mod2 : integer;
                  out res_out, mod_out : integer);
var
  a, c, d, k, m, m1, m2, r, temp : integer;
  p, p_prev : integer;
{$IFDEF EXTRA}
  q, q_prev : integer;
{$ENDIF}
begin
  if (mod1 = 0) or (mod2 = 0) then
    raise SysUtils.Exception.Create( 'Solve2: Modulus cannot be 0');
  m1 := Abs( mod1);
  m2 := Abs( mod2);
  // Extended Euclid's algorithm for HCF( m1, m2), except that only one
  //   of the Bezout coefficients is needed (here p, could have used q)
  c := m1; d := m2;
  p :=0;  p_prev := 1;
{$IFDEF EXTRA}
  q := 1; q_prev := 0;
{$ENDIF}
  a := 0;
  while (d > 0) do begin
    temp := p_prev - a*p;  p_prev := p;  p := temp;
  {$IFDEF EXTRA}
    temp := q_prev - a*q;  q_prev := q;  q := temp;
  {$ENDIF}
    a := c div d;
    temp := c - a*d;  c := d;  d := temp;
  end;
  // Here with c = HCF( m1, m2)
{$IFDEF EXTRA}
  Assert( c = p*m2 + q*m1); // p and q are the Bezout coefficients
{$ENDIF}
  // A soution exists iff c divides (res2 - res1)
  k := (res2 - res1) div c;
  if res2 - res1 <> k*c then begin
    res_out := 0;  mod_out := 0; // indicate that there's no xolution
  end
  else begin
    m := (m1 div c) * m2; // m := LCM( m1, m2)
    r:= res2 - k*p*m2;    // r := a solution modulo m
{$IFDEF EXTRA}
    Assert( r = res1 + k*q*m1); // alternative formula in terms of q
{$ENDIF}
    // Return the solution in the range 0..(m - 1)
    // Don't trust the compiler with a negative argument to mod
    if (r >= 0) then r := r mod m
    else begin
      r := (-r) mod m;
      if (r > 0) then r := m - r;
    end;
    res_out := r;  mod_out := m;
  end;
end;

// Return (if possible) a residue res_out that satifies
//   res_out = res_array[j] modulo mod_array[j], for j = 0..High(res_array).
// Return mod_out = LCM of the moduli, or mod_out = 0 if there's no solution.
procedure SolveMulti( const res_array, mod_array : TIntArray;
                      out res_out, mod_out : integer);
var
  count, k, m, r : integer;
begin
  count := Length( mod_array);
  if count <> Length( res_array) then
    raise SysUtils.Exception.Create( 'Arrays are different sizes')
  else if count = 0 then
    raise SysUtils.Exception.Create( 'Arrays are empty');
  k := 1;
  m := mod_array[0];  r := res_array[0];
  while (k < count) and (m > 0) do begin
    Solve2( r, res_array[k], m, mod_array[k], r, m);
    inc(k);
  end;
  res_out := r;  mod_out := m;
end;

// Cosmetic to turn an integer array into a string for printout.
function ArrayToString( a : TIntArray) : string;
var
  j : integer;
begin
  result := '[';
  for j := 0 to High(a) do begin
    result := result + SysUtils.IntToStr(a[j]);
    if j < High(a) then result := result + ', '
                   else result := result + ']';
  end;
end;

// For the passed-in res_array and mod_array, show the solution
//   found by SolveMulti (above), or state that there's no solution.
procedure ShowSolution( const res_array, mod_array : TIntArray);
var
  mod_out, res_out : integer;
begin
  SolveMulti( res_array, mod_array, res_out, mod_out);
  Write( ArrayToString( res_array) + ' mod '
       + ArrayToString( mod_array) + ' --> ');
  if mod_out = 0 then
    WriteLn( 'No solution')
  else
    WriteLn( SysUtils.Format( '%d mod %d', [res_out, mod_out]));
end;

// Main routine. Examples for Rosetta Code task.
begin
  ShowSolution([2, 3, 2], [3, 5, 7]);
  ShowSolution([3, 5, 7], [2, 3, 2]);
  ShowSolution([10, 4, 12], [11, 12, 13]);
  ShowSolution([1, 2, 3, 4], [5, 7, 9, 11]);
  ShowSolution([11, 22, 19], [10, 4, 9]);
  ShowSolution([2328, 410], [16256, 5418]);
  ShowSolution([19, 0], [100, 23]);
end.
{---------------------------------------------------- 42 cholesky-decomposition}
program CholeskyApp;

type
  D2Array = array of array of double;

function cholesky(const A: D2Array): D2Array;
var
  i, j, k: integer;
  s: double;
begin
  setlength(Result, length(A), length(A));
  for i := low(Result) to high(Result) do
    for j := 0 to i do
    begin
      s := 0;
      for k := 0 to j - 1 do
        s := s + Result[i][k] * Result[j][k];
      if i = j then
        Result[i][j] := sqrt(A[i][i] - s)
      else
        Result[i][j] := (A[i][j] - s) / Result[j][j];  // save one multiplication compared to the original
    end;
end;

procedure printM(const A: D2Array);
var
  i, j: integer;
begin
  for i := low(A) to high(A) do
  begin
    for j := low(A) to high(A) do
      write(A[i, j]: 8: 5);
    writeln;
  end;
end;

const
  m1: array[0..2, 0..2] of double = ((25, 15, -5), (15, 18, 0), (-5, 0, 11));
  m2: array[0..3, 0..3] of double = ((18, 22, 54, 42), (22, 70, 86, 62), (54, 86,
    174, 134), (42, 62, 134, 106));

var
  index, i: integer;
  cIn, cOut: D2Array;

begin
  setlength(cIn, length(m1), length(m1));
  for index := low(m1) to high(m1) do
  begin
    SetLength(cIn[index], length(m1[index]));
    for i := 0 to High(m1[Index]) do
      cIn[index][i] := m1[index][i];
  end;
  cOut := cholesky(cIn);
  printM(cOut);

  writeln;

  setlength(cIn, length(m2), length(m2));
  for index := low(m2) to high(m2) do
  begin
    SetLength(cIn[index], length(m2[Index]));
    for i := 0 to High(m2[Index]) do
      cIn[index][i] := m2[index][i];
  end;
  cOut := cholesky(cIn);
  printM(cOut);
end.
{----------------------------------------------------------------- 43 code-golf}
program p(output);begin write('Code Golf')end.
{------------------------------------------------------------- 44 collections-6}
program ListDemo;
uses
  classes;
var
  MyList: TList;
  a, b, c: integer;
  i: integer;
begin
  a := 1;
  b := 2;
  c := 3;
  MyList := TList.Create;
  MyList.Add(@a);
  MyList.Add(@c);
  MyList.Insert(1, @b);
  for i := MyList.IndexOf(MyList.First) to MyList.IndexOf(MyList.Last) do
    writeln (integer(MyList.Items[i]^));
  MyList.Destroy;
end.
{------------------------------------------------ 45 color-difference-cie-e2000}
Program Test_ciede_2000;
uses
  sysutils,Math;
type
  tColorData =  record
                  l1,a1,b1,l2,a2,b2:Double;
                end;
const
  mytests : array[0..14] of tColorData = (
  (l1: 73.0;a1:  49.0;b1:  39.4;l2:  73.0;a2:  49.0;b2:  39.4),
  (l1: 30.0;a1:- 41.0;b1:-119.1;l2:  30.0;a2:- 41.0;b2:-119.0),
  (l1: 79.0;a1:-117.0;b1:-100.4;l2:  79.5;a2:-117.0;b2:-100.0),
  (l1: 15.0;a1:- 55.0;b1:   6.7;l2:  14.0;a2:- 55.0;b2:   7.0),
  (l1: 83.0;a1:  98.0;b1:- 59.5;l2:  85.2;a2:  98.0;b2:- 59.5),
  (l1: 59.0;a1:- 11.0;b1:- 95.0;l2:  56.3;a2:- 11.0;b2:- 95.0),
  (l1: 74.0;a1:-  1.0;b1:- 68.6;l2:  81.0;a2:-  1.0;b2:- 69.0),
  (l1: 46.4;a1: 125.0;b1:   6.0;l2:  40.0;a2: 125.0;b2:   6.0),
  (l1: 18.0;a1:-  5.0;b1:  68.0;l2:  20.0;a2:   5.0;b2:  82.0),
  (l1: 35.5;a1:- 99.0;b1: 109.0;l2:  25.0;a2:- 99.0;b2: 109.0),
  (l1: 59.0;a1:  77.0;b1:  41.5;l2:  63.3;a2:  77.0;b2:  12.4),
  (l1: 40.0;a1:- 92.0;b1:   7.7;l2:  58.0;a2:- 92.0;b2:-  8.0),
  (l1: 49.0;a1:-  9.0;b1:- 74.5;l2:  51.1;a2:  31.0;b2:  16.0),
  (l1: 88.0;a1:-124.0;b1:  56.0;l2:  97.0;a2:  62.0;b2:- 28.0),
  (l1: 98.0;a1:  75.7;b1:  11.0;l2:   3.0;a2:- 62.0;b2:  11.0)
);

// The classic CIE ΔE2000 implementation, which operates on two L*a*b* colors, and returns their difference.
// "l" ranges from 0 to 100, while "a" and "b" are unbounded and commonly clamped to the range of -128 to 127.
function ciede_2000(dat:tColorData): Double;
var
  k_l, k_c, k_h, n, c_1, c_2, h_1, h_2, h_m, h_d, p, r_t, l, t, h, c: Double;
begin
  // Michel Leonard uses Pascal with the CIEDE2000 color-difference formula.
  // k_l, k_c, k_h are parametric factors to be adjusted according to
  // different viewing parameters such as textures, backgrounds...
  k_l := 1.0;
  k_c := 1.0;
  k_h := 1.0;
  with dat do
  begin
    n := (sqrt(sqr(a1) + sqr(b1)) + sqrt(sqr(a2)+ sqr(b2))) * 0.5;
    n := power(n,7);
    // A factor involving chroma raised to the power of 7 designed to make
    // the influence of chroma on the total color difference more accurate.
    n := 1.0 + 0.5 * (1.0 - sqrt(n / (n + 6103515625.0)));
    // Since hypot is not available, sqrt is used here to calculate the
    // Euclidean distance, without avoiding overflow/underflow.
    c_1 := sqrt(sqr(a1 * n) + sqr(b1));
    c_2 := sqrt(sqr(a2 * n) + sqr(b2));
    // atan2 is preferred over atan because it accurately computes the angle of
    // a point (x, y) in all quadrants, handling the signs of both coordinates.
    h_1 := arctan2(b1, a1 * n);
    h_2 := arctan2(b2, a2 * n);
  end;
  // GitHub Project : https://github.com/michel-leonard/ciede2000-color-matching
  if h_1 < 0.0 then
    h_1 += 2.0 * Pi;
  if h_2 < 0.0 then
    h_2 += 2.0 * Pi;
  n := abs(h_2 - h_1);
  // Cross-implementation consistent rounding.
  if abs(Pi - n) < 1E-14 then
    n := Pi;
  // When the hue angles lie in different quadrants, the straightforward
  // average can produce a mean that incorrectly suggests a hue angle in
  // the wrong quadrant, the next lines handle this issue.
  h_m := (h_1 + h_2) * 0.5;
  h_d := (h_2 - h_1) * 0.5;
  if Pi < n then
  begin
    if 0.0 < h_d then
      h_d -= Pi
    else
      h_d += Pi;
    h_m += Pi;
  end;
  p := 36.0 * h_m - 55.0 * Pi;
  n := (c_1 + c_2) * 0.5;
  n := n * n * n * n * n * n * n;
  // The hue rotation correction term is designed to account for the
  // non-linear behavior of hue differences in the blue region.
  r_t := -2.0 * sqrt(n / (n + 6103515625.0))
      * sin(Pi / 3.0 * exp(p * p / (-25.0 * Pi * Pi)));
  with dat do
  Begin
    n :=  (l1 + l2) * 0.5;
    n := (n - 50.0) * (n - 50.0);
    // Lightness.
    l := (l2 - l1) / (k_l * (1.0 + 0.015 * n / sqrt(20.0 + n)));
  end;
  // These coefficients adjust the impact of different harmonic
  // components on the hue difference calculation.
  t := 1.0  + 0.24 * sin(2.0 * h_m + Pi / 2.0)
      + 0.32 * sin(3.0 * h_m + 8.0 * Pi / 15.0)
      - 0.17 * sin(h_m + Pi / 3.0)
      - 0.20 * sin(4.0 * h_m + 3.0 * Pi / 20.0);
  n := c_1 + c_2;
  // Hue.
  h := 2.0 * sqrt(c_1 * c_2) * sin(h_d) / (k_h * (1.0 + 0.0075 * n * t));
  // Chroma.
  c := (c_2 - c_1) / (k_c * (1.0 + 0.0225 * n));
  // Returning the square root ensures that the result reflects the actual geometric
  // distance within the color space, which ranges from 0 to approximately 185.
  Exit(sqrt(l * l + h * h + c * c + c * h * r_t));
end;

var
  t : tColorData;
Begin
  writeln('   L1      a1      b1     L2     a2    b2       ΔE2000');
  writeln('------------------------------------------------------------');
  for t in mytests do
    with t do
      writeln(Format('%6.1f   %6.1f  %6.1f %6.1f %6.1f  %6.1f %14.10f',
               [l1,a1,b1,l2,a2,b2,ciede_2000(t)]));
end.
{-------------------------------------------------------------- 46 combinations}
Program Combinations;

const
 m_max = 3;
 n_max = 5;
var
 combination: array [0..m_max] of integer;

 procedure generate(m: integer);
  var
   n, i: integer;
  begin
   if (m > m_max) then
    begin
    for i := 1 to m_max do
     write (combination[i], ' ');
    writeln;
    end
   else
    for n := 1 to n_max do
     if ((m = 1) or (n > combination[m-1])) then
      begin
       combination[m] := n;
       generate(m + 1);
      end;
   end;

begin
 generate(1);
end.
{----------------------------------------------------------- 47 comma-quibbling}
program CommaQuibbling;

uses
  SysUtils,
  Classes,
  StrUtils;

const
  OuterBracket =['[', ']'];

type

{$IFNDEF FPC}
  SizeInt = LongInt;
{$ENDIF}



  { TCommaQuibble }

  TCommaQuibble = class(TStringList)
  private
    function GetCommaquibble: string;
    procedure SetCommaQuibble(AValue: string);
  public
    property CommaQuibble: string read GetCommaquibble write SetCommaQuibble;
  end;

{$IFNDEF FPC} // Delphi support

function WordPosition(const N: Integer; const S: string; const WordDelims:
  TSysCharSet): SizeInt;
var
  PS, P, PE: PChar;
  Count: Integer;
begin
  Result := 0;
  Count := 0;
  PS := PChar(pointer(S));
  PE := PS + Length(S);
  P := PS;
  while (P < PE) and (Count <> N) do
  begin
    while (P < PE) and (P^ in WordDelims) do
      inc(P);
    if (P < PE) then
      inc(Count);
    if (Count <> N) then
      while (P < PE) and not (P^ in WordDelims) do
        inc(P)
    else
      Result := (P - PS) + 1;
  end;
end;

function ExtractWordPos(N: Integer; const S: string; const WordDelims:
  TSysCharSet; out Pos: Integer): string;
var
  i, j, l: SizeInt;
begin
  j := 0;
  i := WordPosition(N, S, WordDelims);
  if (i > High(Integer)) then
  begin
    Result := '';
    Pos := -1;
    Exit;
  end;
  Pos := i;
  if (i <> 0) then
  begin
    j := i;
    l := Length(S);
    while (j <= l) and not (S[j] in WordDelims) do
      inc(j);
  end;
  SetLength(Result, j - i);
  if ((j - i) > 0) then
    Result := copy(S, i, j - i);
end;

function ExtractWord(N: Integer; const S: string; const WordDelims: TSysCharSet):
  string; inline;
var
  i: SizeInt;
begin
  Result := ExtractWordPos(N, S, WordDelims, i);
end;
{$ENDIF}

{ TCommaQuibble }

procedure TCommaQuibble.SetCommaQuibble(AValue: string);
begin
  AValue := ExtractWord(1, AValue, OuterBracket);
  commatext := AValue;
end;

function TCommaQuibble.GetCommaquibble: string;
var
  x: Integer;
  Del: string;
begin
  result := '';
  Del := ', ';
  for x := 0 to Count - 1 do
  begin
    result := result + Strings[x];
    if x = Count - 2 then
      Del := ' and '
    else if x = Count - 1 then
      Del := '';
    result := result + Del;
  end;
  result := '{' + result + '}';
end;

const
  TestData: array[0..7] of string = ('[]', '["ABC"]', '["ABC", "DEF"]',
    '["ABC", "DEF", "G", "H"]', '', '"ABC"', '"ABC", "DEF"', '"ABC", "DEF", "G", "H"');

var
  Quibble: TCommaQuibble;
  TestString: string;

begin
  Quibble := TCommaQuibble.Create;

  for TestString in TestData do
  begin
    Quibble.CommaQuibble := TestString;
    writeln(Quibble.CommaQuibble);
  end;
end.
{-------------------------------------------------------- 48 continued-fraction}
program ContFrac_console;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type TCoeffFunction = function( n : integer) : extended;

// Calculate continued fraction as a sum, working forwards.
// Stop on reaching a term with absolute value less than epsilon,
//   or on reaching the maximum number of terms.
procedure CalcContFrac( a, b : TCoeffFunction;
                        epsilon : extended;
                        maxNrTerms : integer = 1000); // optional, with default
var
  n : integer;
  sum, term, u, v : extended;
  whyStopped : string;
begin
  sum := a(0);
  term := b(1)/a(1);
  v := a(1);
  n := 1;
  repeat
    sum := sum + term;
    inc(n);
    u := v;
    v := a(n) + b(n)/u;
    term := -term * b(n)/(u*v);
  until (Abs(term) < epsilon) or (n >= maxNrTerms);
  if n >= maxNrTerms then whyStopped := 'too many terms'
                     else whyStopped := 'converged';
  WriteLn( SysUtils.Format( '%21.17f after %d terms (%s)',
                            [sum, n, whyStopped]));
end;

//---------------- a and b for sqrt(2) ----------------
function a_sqrt2( n : integer) : extended;
begin
  if n = 0 then result := 1
           else result := 2;
end;
function b_sqrt2( n : integer) : extended;
begin
  result := 1;
end;

//---------------- a snd b for e  ----------------
function a_e( n : integer) : extended;
begin
  if n = 0 then result := 2
           else result := n;
end;
function b_e( n : integer) : extended;
begin
  if n = 1 then result := 1
           else result := n - 1;
end;

//-------- Rosetta Code a and b for pi --------
function a_pi( n : integer) : extended;
begin
  if n = 0 then result := 3
           else result := 6;
end;
function b_pi( n : integer) : extended;
var
  temp : extended;
begin
  temp := 2*n - 1;
  result := temp*temp;
end;

//-------- More efficient a and b for pi --------
function a_pi_alt( n : integer) : extended;
begin
  if n = 0 then result := 0
           else result := 2*n - 1;
end;
function b_pi_alt( n : integer) : extended;
var
  temp : extended;
begin
  if n = 1 then
    result := 4
  else begin
    temp := n - 1;
    result := temp*temp;
  end;
end;

//---------------- Main routine ----------------
// Unlike Free Pascal, Delphi does not require
//   an @ sign before the function names.
begin
  WriteLn( 'sqrt(2)');
  CalcContFrac( a_sqrt2, b_sqrt2, 1E-20);
  WriteLn( 'e');
  CalcContFrac( a_e, b_e, 1E-20);
  WriteLn( 'pi');
  CalcContFrac( a_pi, b_pi, 1E-20);
  WriteLn( 'pi (alternative formula)');
  CalcContFrac( a_pi_alt, b_pi_alt, 1E-20);
end.
{--------------------------------------------------------------- 49 convex-hull}
{$mode ISO}

program convex_hull_task (output);

{ Convex hulls, by Andrew's monotone chain algorithm.

  For a description of the algorithm, see
  https://en.wikibooks.org/w/index.php?title=Algorithm_Implementation/Geometry/Convex_hull/Monotone_chain&stableid=40169 }

const max_points = 1000;
type points_range = 0 .. max_points - 1;

type point =
  record
    x, y : real
  end;
type point_array = array [points_range] of point;

var ciura_gaps : array [1 .. 8] of integer;

var example_points : point_array;
var hull           : point_array;
var hull_size      : integer;
var index          : integer;

function make_point (x, y : real) : point;
begin
  make_point.x := x;
  make_point.y := y;
end;

{ The cross product as a signed scalar. }
function cross (u, v : point) : real;
begin
  cross := (u.x * v.y) - (u.y * v.x)
end;

function point_subtract (u, v : point) : point;
begin
  point_subtract := make_point (u.x - v.x, u.y - v.y)
end;

function point_equal (u, v : point) : boolean;
begin
  point_equal := (u.x = v.x) and (u.y = v.y)
end;

procedure sort_points (num_points : integer;
                       var points : point_array);
{ Sort first in ascending order by x-coordinates, then in
  ascending order by y-coordinates. Any decent sort algorithm will
  suffice; for the sake of interest, here is the Shell sort of
  https://en.wikipedia.org/w/index.php?title=Shellsort&oldid=1084744510 }
var
  i, j, k, gap, offset : integer;
  temp                 : point;
  done                 : boolean;
begin
  for k := 1 to 8 do
    begin
      gap := ciura_gaps[k];
      for offset := 0 to gap - 1 do
        begin
          i := offset;
          while i <= num_points - 1 do
            begin
              temp := points[i];
              j := i;
              done := false;
              while not done do
                begin
                  if j < gap then
                    done := true
                  else if points[j - gap].x < temp.x then
                    done := true
                  else if ((points[j - gap].x = temp.x)
                             and (points[j - gap].y < temp.y)) then
                    done := true
                  else
                    begin
                      points[j] := points[j - gap];
                      j := j - gap
                    end
                end;
              points[j] := temp;
              i := i + gap
            end
        end
    end
end; { sort_points }

procedure delete_neighbor_duplicates (var n  : integer;
                                      var pt : point_array);

  procedure delete_trailing_duplicates;
  var
    i    : integer;
    done : boolean;
  begin
    i := n - 1;
    done := false;
    while not done do
      begin
        if i = 0 then
          begin
            n := 1;
            done := true
          end
        else if not point_equal (pt[i - 1], pt[i]) then
          begin
            n := i + 1;
            done := true
          end
        else
          i := i + 1
      end
  end;

  procedure delete_nontrailing_duplicates;
  var
    i, j, num_deleted : integer;
    done              : boolean;
  begin
    i := 0;
    while i < n - 1 do
      begin
        j := i + 1;
        done := false;
        while not done do
          begin
            if j = n then
              done := true
            else if not point_equal (pt[j], pt[i]) then
              done := true
            else
              j := j + 1
          end;
        if j <> i + 1 then
          begin
            num_deleted := j - i - 1;
            while j <> n do
              begin
                pt[j - num_deleted] := pt[j];
                j := j + 1
              end;
            n := n - num_deleted
          end;
        i := i + 1
      end
  end;

begin
  delete_trailing_duplicates;
  delete_nontrailing_duplicates
end; { delete_neighbor_duplicates }

procedure construct_lower_hull (n             : integer;
                                pt            : point_array;
                                var hull_size : integer;
                                var hull      : point_array);
var
  i, j : integer;
  done : boolean;
begin
  j := 1;
  hull[0] := pt[0];
  hull[1] := pt[1];
  for i := 2 to n - 1 do
    begin
      done := false;
      while not done do
        begin
          if j = 0 then
            begin
              j := j + 1;
              hull[j] := pt[i];
              done := true
            end
          else if 0.0 < cross (point_subtract (hull[j],
                                               hull[j - 1]),
                               point_subtract (pt[i],
                                               hull[j - 1])) then
            begin
              j := j + 1;
              hull[j] := pt[i];
              done := true
            end
          else
            j := j - 1
        end
    end;
  hull_size := j + 1
end; { construct_lower_hull }

procedure construct_upper_hull (n             : integer;
                                pt            : point_array;
                                var hull_size : integer;
                                var hull      : point_array);
var
  i, j : integer;
  done : boolean;
begin
  j := 1;
  hull[0] := pt[n - 1];
  hull[1] := pt[n - 2];
  for i := n - 3 downto 0 do
    begin
      done := false;
      while not done do
        begin
          if j = 0 then
            begin
              j := j + 1;
              hull[j] := pt[i];
              done := true
            end
          else if 0.0 < cross (point_subtract (hull[j],
                                               hull[j - 1]),
                               point_subtract (pt[i],
                                               hull[j - 1])) then
            begin
              j := j + 1;
              hull[j] := pt[i];
              done := true
            end
          else
            j := j - 1
        end
    end;
  hull_size := j + 1
end; { construct_upper_hull }

procedure contruct_hull (n             : integer;
                         pt            : point_array;
                         var hull_size : integer;
                         var hull      : point_array);
var
  i                                : integer;
  lower_hull_size, upper_hull_size : integer;
  lower_hull, upper_hull           : point_array;
begin
  { A side note: the calls to construct_lower_hull and
    construct_upper_hull could be done in parallel. }
  construct_lower_hull (n, pt, lower_hull_size, lower_hull);
  construct_upper_hull (n, pt, upper_hull_size, upper_hull);

  hull_size := lower_hull_size + upper_hull_size - 2;

  for i := 0 to lower_hull_size - 2 do
    hull[i] := lower_hull[i];
  for i := 0 to upper_hull_size - 2 do
    hull[lower_hull_size - 1 + i] := upper_hull[i]
end; { contruct_hull }

procedure find_convex_hull (n             : integer;
                            points        : point_array;
                            var hull_size : integer;
                            var hull      : point_array);
var
  pt    : point_array;
  numpt : integer;
  i     : integer;
begin
  for i := 0 to n - 1 do
    pt[i] := points[i];
  numpt := n;

  sort_points (numpt, pt);
  delete_neighbor_duplicates (numpt, pt);

  if numpt = 0 then
    hull_size := 0
  else if numpt <= 2 then
    begin
      hull_size := numpt;
      for i := 0 to numpt - 1 do
        hull[i] := pt[i]
    end
  else
    contruct_hull (numpt, pt, hull_size, hull)
end; { find_convex_hull }

begin
  ciura_gaps[1] := 701;
  ciura_gaps[2] := 301;
  ciura_gaps[3] := 132;
  ciura_gaps[4] := 57;
  ciura_gaps[5] := 23;
  ciura_gaps[6] := 10;
  ciura_gaps[7] := 4;
  ciura_gaps[8] := 1;

  example_points[0] := make_point (16, 3);
  example_points[1] := make_point (12, 17);
  example_points[2] := make_point (0, 6);
  example_points[3] := make_point (-4, -6);
  example_points[4] := make_point (16, 6);
  example_points[5] := make_point (16, -7);
  example_points[6] := make_point (16, -3);
  example_points[7] := make_point (17, -4);
  example_points[8] := make_point (5, 19);
  example_points[9] := make_point (19, -8);
  example_points[10] := make_point (3, 16);
  example_points[11] := make_point (12, 13);
  example_points[12] := make_point (3, -4);
  example_points[13] := make_point (17, 5);
  example_points[14] := make_point (-3, 15);
  example_points[15] := make_point (-3, -9);
  example_points[16] := make_point (0, 11);
  example_points[17] := make_point (-9, -3);
  example_points[18] := make_point (-4, -2);
  example_points[19] := make_point (12, 10);

  find_convex_hull (19, example_points, hull_size, hull);

  for index := 0 to hull_size - 1 do
    writeln (hull[index].x, ' ', hull[index].y)
end.

{--------------------------------------------------------------------}
{ The Emacs Pascal mode is intolerable.
  Until I can find a substitute: }
{ local variables:  }
{ mode: fundamental }
{ end:              }
{------------------------------------------------------ 50 conways-game-of-life}
program Gol;
// Game of life
{$IFDEF FPC}
   //save as gol.pp/gol.pas
  {$Mode delphi}
{$ELSE}
  //for Delphi save as gol.dpr
  {$Apptype Console}
{$ENDIF}
uses
  crt;

const
  colMax = 76;
  rowMax = 22;
  dr = colMax+2; // element count of one row

  cDelay = 20;  // delay in ms

(*
expand field by one row/column before and after
for easier access no special treatment of torus
*)

type
  tFldElem  = byte;//0..1
  tpFldElem = ^tFldElem;
  tRow = array[0..colMax+1] of tFldElem;
  tpRow = ^tRow;
  tBoard = array[0..rowMax+1] of tRow;
  tpBoard = ^tBoard;
  tpBoards = array[0..1] of tpBoard;

type
  tIntArr = array[0..2*dr+2] of tFldElem;
  tpIntArr = ^tIntArr;

var
  aBoard,bBoard : tBoard;
  pBoards :tpBoards;
  gblActBoard : byte;
  gblUseTorus :boolean;
  gblGenCnt   : integer;

procedure PrintGen;
const
  cChar: array[0..1] of char = (' ','#');
var
  p0 : tpIntArr;
  col,row: integer;
  s : string[colMax];
begin
  setlength(s,colmax);
  gotoxy(1,1);
  writeln(gblGenCnt:10);
  For row := 1 to rowMax do
  begin
    p0 := @pBoards[gblActBoard]^[row,0];;
    For col := 1 to colMax do
      s[col] := cChar[p0[col]];
    writeln(s);
  end;
  delay(cDelay);
end;

procedure Init0(useTorus:boolean);
begin
  gblUseTorus := useTorus;
  gblGenCnt := 0;
  fillchar(aBoard,SizeOf(aBoard),#0);
  pBoards[0] := @aBoard;
  pBoards[1] := @bBoard;
  gblActBoard := 0;

  clrscr;
end;

procedure InitRandom(useTorus:boolean);
var
  col,row : integer;
begin
  Init0(useTorus);
  For row := 1 to rowMax do
    For col := 1 to colMax do
      aBoard[row,col]:= tFldElem(random>0.9);
end;

procedure InitBlinker(useTorus:boolean);
var
  col,row : integer;
begin
  Init0(useTorus);
  For col := 1 to colMax do
  begin
    IF (col+2) mod 4 = 0 then
      begin
      For row := 1 to rowmax do
        IF row mod 4 <> 0 then
          aBoard[row,col]:= 1;
      end;
  end;
end;

procedure Torus;
var
  p0 : tpIntArr;
  row: integer;
begin
  //copy column 1-> colMax+1 and colMax-> 0
  p0 := @pBoards[gblActBoard]^[1,0];
  For row := 1 to rowMax do
    begin
    p0^[0] := p0^[colMax];
    p0^[colmax+1] := p0^[1];
    //next row
    p0 := Pointer(PtrUint(p0)+SizeOf(tRow));
    end;
  //copy row  1-> rowMax+1
  move(pBoards[gblActBoard]^[1,0],pBoards[gblActBoard]^[rowMax+1,0],sizeof(trow));
  //copy row  rowMax-> 0
  move(pBoards[gblActBoard]^[rowMax,0],pBoards[gblActBoard]^[0,0],sizeof(trow));
end;

function Survive(p: tpIntArr):tFldElem;
//p points to actual_board [row-1,col-1]
//calculates the sum of alive around [row,col] aka p^[dr+1]
//really fast using fpc 2.6.4 no element on stack
const
  cSurvives : array[boolean,0..8] of byte =
              //0,1,2,3,4,5,6,7,8     sum of alive neighbours
              ((0,0,0,1,0,0,0,0,0),   {alive =false 1->born}
               (0,0,1,1,0,0,0,0,0));  {alive =true  0->die }
var
  sum : integer;
begin
  // row above
  // sum := byte(aBoard[row-1,col-1])+byte(aBoard[row-1,col])+byte(aBoard[row-1,col+1]);
  sum :=     integer(p^[     0])+integer(p^[     1])+integer(p^[     2]);
  sum := sum+integer(p^[  dr+0])                    +integer(p^[  dr+2]);
  sum := sum+integer(p^[2*dr+0])+integer(p^[2*dr+1])+integer(p^[2*dr+2]);
  survive := cSurvives[boolean(p^[dr+1]),sum];
end;

procedure NextGen;
var
  p0,p1 : tpFldElem;
  row: NativeInt;
  col :NativeInt;
begin
  if gblUseTorus then
    Torus;
  p1 := @pBoards[1-gblActBoard]^[1,1];
  //One row above and one column before because of survive
  p0 := @pBoards[  gblActBoard]^[0,0];
  For row := rowMax-1 downto 0 do
  begin
    For col := colMax-1 downto 0 do
    begin
      p1^ := survive(tpIntArr(p0));
      inc(p0);
      inc(p1);
    end;
    // jump over the borders
    inc(p1,2);
    inc(p0,2);
  end;
  //aBoard := bBoard;
  gblActBoard :=1-gblActBoard;
  inc(gblGenCnt);
end;

begin
  InitBlinker(false);
  repeat
    PrintGen;
    NextGen;
  until keypressed;
  PrintGen;
end.
{-------------------- 51 count-how-many-vowels-and-consonants-occur-in-a-string}
program countHowManyVowelsAndConsonantsOccurInAString(input, output);

var
	vowel, consonant: set of char;
	vowelCount, consonantCount: integer;

begin
	{ initialize variables  - - - - - - - - - - - - - - - - - - }
	vowel := ['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u'];
	consonant := ['B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L',
		'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Y',
		'Z', 'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm',
		'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'];
	
	vowelCount := 0;
	consonantCount := 0;
	
	{ process - - - - - - - - - - - - - - - - - - - - - - - - - }
	while not EOF do
	begin
		{ input^ refers to the buffer variable's value }
		vowelCount     := vowelCount     + ord(input^ in vowel);
		consonantCount := consonantCount + ord(input^ in consonant);
		get(input)
	end;
	
	{ result  - - - - - - - - - - - - - - - - - - - - - - - - - }
	writeLn(vowelCount,     ' vowels');
	writeLn(consonantCount, ' consonants')
end.
{---------------------------------------------------------- 52 count-in-factors}
program CountInFactors(output);

{$IFDEF FPC}
  {$MODE DELPHI}
{$ENDIF}

type
  TdynArray = array of integer;

function factorize(number: integer): TdynArray;
var
  k: integer;
begin
  if number = 1 then
  begin
    setlength(Result, 1);
    Result[0] := 1
  end
  else
  begin
    k := 2;
    while number > 1 do
    begin
      while number mod k = 0 do
      begin
        setlength(Result, length(Result) + 1);
        Result[high(Result)] := k;
        number := number div k;
      end;
      inc(k);
    end;
  end
end;

var
  i, j: integer;
  fac: TdynArray;

begin
  for i := 1 to 22 do
  begin
    write(i, ':  ' );
    fac := factorize(i);
    write(fac[0]);
    for j := 1 to high(fac) do
      write(' * ', fac[j]);
    writeln;
  end;
end.
{------------------------------------------------------- 53 count-the-coins-0-1}
program Coins0_1;
{$IFDEF FPC}
   {$MODE DELPHI}
   {$OPTIMIZATION ON,ALL}
{$ELSE}
  {$Apptype console}
{$ENDIF}

uses
  sysutils;// TDatetime
const
  coins1 :array[0..4] of byte = (1, 2, 3, 4, 5);
  coins2 :array[0..6] of byte = (1, 1, 2, 3, 3, 4, 5);
  coins3 :array[0..15] of byte = (1,2,3,4,5,5,5,5,15,15,10,10,10,10,25,100);
  nmax = High(Coins3);
type
{$IFNDEF FPC}
  NativeInt = Int32;
{$ENDIF}
  tFreeCol = array[0..nmax] of Int32;
var
  FreeIdx,
  IdxWeight : tFreeCol;
  n,
  gblCount : nativeUInt;

procedure AddNextWeight(Row,sum:nativeInt);
//order is important
var
  i,Col,Weight : nativeInt;
begin
  IF row <= n then
  begin
    For i := row to n do
    begin
      Col := FreeIdx[i];
      Weight:= IdxWeight[col];
      IF Sum+Weight <= 0 then
      Begin
        Sum +=Weight;
        If Sum = 0 then
        Begin
          Sum -=Weight;
          inc(gblCount);
        end
        else
        begin
          FreeIdx[i] := FreeIdx[Row];
          FreeIdx[Row] := Col;

          AddNextWeight(Row+1,sum);
          //Undo
          Sum -=Weight;
          FreeIdx[Row] := FreeIdx[i];
          FreeIdx[i] := Col;
        end;
      end;
    end;
  end;
end;

procedure CheckBinary(n,MaxIdx,Sum:NativeInt);
//order is not important
Begin
  if sum = 0 then
    inc(gblcount);
  If (sum < 0) AND (n <= MaxIdx) then
  Begin
    //test next sum
    CheckBinary(n+1,MaxIdx,Sum);// add nothing
    CheckBinary(n+1,MaxIdx,Sum+IdxWeight[n]);//or the actual index
  end;
end;

procedure CheckAll(i,MaxSum:NativeInt);
Begin
  n := i;
  gblCount := 0;
  AddNextWeight(0,-MaxSum);
  Write(MaxSum:6,gblCount:12);
  gblCount := 0;
  CheckBinary(0,i,-MaxSum);
  WriteLn(gblCount:12);
end;

var
  i: nativeInt;

begin
  writeln('sum':6,'very silly':12,'silly':12);
  For i := 0 to High(coins1) do
  Begin
    FreeIdx[i] := i;
    IdxWeight[i] := coins1[i];
  end;
  CheckAll(High(coins1),6);

  For i := 0 to High(coins2) do
  Begin
    FreeIdx[i] := i;
    IdxWeight[i] := coins2[i];
  end;
  CheckAll(High(coins2),6);

  For i := 0 to High(coins3) do
  Begin
    FreeIdx[i] := i;
    IdxWeight[i] := coins3[i];
  end;
  CheckAll(High(coins3),40);
end.
{----------------------------------------------------------- 54 count-the-coins}
program countTheCoins;

{$mode objfpc}{$H+}

var
  count, quarter, dime, nickel, penny: integer;

begin
  count := 0;

  for penny := 0 to 100 do
    for nickel := 0 to 20 do
      for dime := 0 to 10 do
        for quarter := 0 to 4 do
          if (penny + 5 * nickel + 10 * dime + 25 * quarter = 100) then
          begin
            writeln(penny, ' pennies ', nickel, ' nickels ', dime, ' dimes ', quarter, ' quarters');
            count := count + 1;
          end;


  writeln('The number of ways to make change for a dollar is: ', count); // 242 ways to make change for a dollar

end.
{------------------------------------------------------------- 55 cousin-primes}
program Cousin_primes;
//Free Pascal Compiler version 3.2.1 [2020/11/03] for x86_64fpc
{$IFDEF FPC}
  {$MODE DELPHI}
  {$Optimization ON,ALL}
{$ELSE}
  {$APPTYPE CONSOLE}
{$ENDIF}
const
  MAXNUMBER = 100*1000*1000;// > 3
  MAXLIMIT = (MAXNUMBER-1) DIV 2;

type
  tChkprimes = array of byte;//prime == 1 , nonprime == 0
  tPrimes = array of Uint32;

var
  primes :tPrimes; //here starting with 3
procedure OutCount(lmt,cnt:NativeInt);
Begin
  writeln(cnt,' cousin primes up to ',lmt);
end;

procedure InitPrimes;
var
  Chkprimes:tChkprimes;
//NativeUInt i DIV 2 is only SHR 1,otherwise extension to Int64
  i,j,CountOfPrimes : NativeUInt;
begin
  SetLength(Chkprimes,MAXLIMIT+1);
  fillchar(Chkprimes[0],length(Chkprimes),#1);
  //estimate count of primes
  CountOfPrimes := trunc(MAXNUMBER/(ln(MAXNUMBER)-1.08))+100;
  SetLength(primes,CountOfPrimes+1);

  //sieve of eratosthenes only odd numbers
  // i = 2*j+1
  Chkprimes[0] := 0;// 0 -> 2*0+1 = 1
  i := 1;
  repeat
    if Chkprimes[(i-1) DIV 2] <> 0 then
    Begin
      // convert i*i into j
      j := (i*i-1) DIV 2;
      if j> MAXLIMIT then
        break;
      repeat
        Chkprimes[j]:= 0;
        inc(j,i);
      until j> MAXLIMIT;
    end;
    inc(i,2);
  until false;

  j := 0;
  For i := 1 to MAXLIMIT do
    IF Chkprimes[i]<>0 then
    Begin
      primes[j] := 2*i+1;
      inc(j);
      if j>CountOfPrimes then
      Begin
        CountOfPrimes += 400;
        setlength(Primes,CountOfPrimes);
      end;
    end;
  setlength(primes,j);

  setlength(Chkprimes,0);
end;

var
  i,lmt,cnt,primeCount : NativeInt;
BEGIN
  InitPrimes;
  //only exception, that the index difference is greater 1
  write(primes[0]:3,':',primes[2]:3,' ');
  cnt := 1;
  lmt := 1000;
  For i := 1 to High(primes) do
  Begin
    if primes[i] >lmt then
      break;
    IF primes[i]-primes[i-1] = 4 then
    Begin
      write(primes[i-1]:3,':',primes[i]:3,' ');
      inc(cnt);
      If cnt MOD 6 = 0 then
        writeln;
    end;
  end;
  writeln;
  OutCount(lmt,cnt);

  writeln;
  cnt := 1;
  lmt *= 10;
  primeCount := High(primes);
  For i := 1 to primeCount do
  Begin
    if primes[i] >lmt then
    Begin
      OutCount(lmt,cnt);
      lmt *= 10;
    end;
    inc(cnt,ORD(primes[i]-primes[i-1] = 4));
  end;
  OutCount(MAXNUMBER,cnt);

  setlength(primes,0);
END.
{--------------------------------------- 56 create-an-object-at-a-given-address}
program test;
type
  t8Byte =  array[0..7] of byte;
var
  I : integer;
  A : integer absolute I;
  K : t8Byte;
  L : Int64 absolute K;
begin
  I := 0;
  A := 255; writeln(I);
  I := 4711;writeln(A);

  For i in t8Byte do
  Begin
    K[i]:=i;
    write(i:3,' ');
  end;
  writeln(#8#32);
  writeln(L);
end.
{--------------------------------------------- 57 cumulative-standard-deviation}
program stddev;
uses math;
const
  n=8;
var
  arr: array[1..n] of real =(2,4,4,4,5,5,7,9);
function stddev(n: integer): real;
var
   i: integer;
   s1,s2,variance,x: real;
begin
    for i:=1 to n do
    begin
      x:=arr[i];
      s1:=s1+power(x,2);
      s2:=s2+x
    end;
    variance:=((n*s1)-(power(s2,2)))/(power(n,2));
    stddev:=sqrt(variance)
end;
var
   i: integer;
begin
    for i:=1 to n do
    begin
      writeln(i,' item=',arr[i]:2:0,' stddev=',stddev(i):18:15)
    end
end.
{------------------------------------------------------------ 58 damm-algorithm}
program DammAlgorithm;
uses
  sysutils;

TYPE TA = ARRAY[0..9,0..9] OF UInt8;
CONST table : TA =
                ((0,3,1,7,5,9,8,6,4,2),
                 (7,0,9,2,1,5,4,8,6,3),
                 (4,2,0,6,8,7,1,3,5,9),
                 (1,7,5,0,9,8,3,4,2,6),
                 (6,1,2,3,0,4,5,9,7,8),
                 (3,6,7,4,2,0,9,5,8,1),
                 (5,8,6,9,7,2,0,1,3,4),
                 (8,9,4,5,3,6,2,0,1,7),
                 (9,4,3,8,6,1,7,2,0,5),
                 (2,5,8,1,4,3,6,7,9,0));

function Damm(s : string) : BOOLEAN;
VAR
  interim,i : UInt8;
BEGIN
  interim := 0;
  i := 1;
  WHILE i <= length(s) DO
  Begin
    interim := table[interim,ORD(s[i])-ORD('0')];
    INC(i);
  END;
  Damm := interim=0;
END;

PROCEDURE Print(number : Uint32);
VAR
    isValid : BOOLEAN;
    buf :string;
BEGIN
    buf := IntToStr(number);
    isValid := Damm(buf);
    Write(buf);
    IF isValid THEN
      Write(' is valid')
    ELSE
      Write(' is invalid');
    WriteLn;
END;

BEGIN
    Print(5724);
    Print(5727);
    Print(112946);
    Print(112949);
    Readln;
END.
{--------------------------------------------------------------- 59 date-format}
program dateform;
uses DOS;

{ Format digit with leading zero }
function lz(w: word): string;
var
  s: string;
begin
  str(w,s);
  if length(s) = 1 then
    s := '0' + s;
  lz := s
end;

function m2s(mon: integer): string;
begin
  case mon of
     1: m2s := 'January';
     2: m2s := 'February';
     3: m2s := 'March';
     4: m2s := 'April';
     5: m2s := 'May';
     6: m2s := 'June';
     7: m2s := 'July';
     8: m2s := 'August';
     9: m2s := 'September';
    10: m2s := 'October';
    11: m2s := 'November';
    12: m2s := 'December'
  end
end;

function d2s(dow: integer): string;
begin
  case dow of
    0: d2s := 'Sunday';
    1: d2s := 'Monday';
    2: d2s := 'Tueday';
    3: d2s := 'Wednesday';
    4: d2s := 'Thursday';
    5: d2s := 'Friday';
    6: d2s := 'Saturday'
  end
end;

var
  yr,mo,dy,dow: word;
  mname,dname: string;

begin
  GetDate(yr,mo,dy,dow);
  writeln(yr,'-',lz(mo),'-',lz(dy));
  mname := m2s(mo); dname := d2s(dow);
  writeln(dname,', ',mname,' ',dy,', ',yr)
end.
{------------------------------------------------------- 60 de-bruijn-sequences}
program deBruijnSequence;
uses SysUtils;

// Create a de Bruijn sequence for the given word length and alphabet.
function deBruijn( const n : integer; // word length
                   const alphabet : string) : string;
var
  d, k, m, s, t, seqLen : integer;
  w : array of integer;
begin
  k := Length( alphabet);
  // de Bruijn sequence will have length k^n
  seqLen := 1;
  for t := 1 to n do seqLen := seqLen*k;
  SetLength( result, seqLen);
  d := 0; // index into de Bruijn sequence (will be pre-inc'd)
  // Work through Lyndon words of length <= n, in lexicographic order.
  SetLength( w, n); // w holds array of indices into the alphabet
  w[0] := 1; // first Lyndon word
  m := 1; // m = length of Lyndon word
  repeat
    // If m divides n, append the current Lyndon word to the output
    if (m = n) or (m = 1) or (n mod m = 0) then begin
      for t := 0 to m - 1 do begin
        inc(d);
        result[d] := alphabet[w[t]];
      end;
    end;
    // Get next Lyndon word using Duval's algorithm:
    // (1) Fill w with repetitions of current word
    s := 0; t := m;
    while (t < n) do begin
      w[t] := w[s];
      inc(t);  inc(s);
      if s = m then s := 0;
    end;
    // (2) Repeatedly delete highest index k from end of w, if present
    m := n;
    while (m > 0) and (w[m - 1] = k) do dec(m);
    // (3) If word is now null, stop; else increment end value
    if m > 0 then inc( w[m - 1]);
  until m = 0;
  Assert( d = seqLen); // check that the sequence is exactly filled in
end;

// Check a de Bruijn sequence, assuming that its alphabet consists
//  of the digits '0'..'9' (in any order);
procedure CheckDecimal( const n : integer; // word length
                        const deB : string);
var
  count : array of integer;
  j, L, pin, nrErrors : integer;
  wrap : string;
begin
  L := Length( deB);
  // The de Bruijn sequence is cyclic; make an array to handle wrapround.
  SetLength( wrap, 2*n - 2);
  for j := 1 to n - 1 do wrap[j] := deB[L + j - n  + 1];
  for j := n to 2*n - 2 do wrap[j] := deB[j - n + 1];
  // Count occurrences of each PIN.
  // PIN = -1 if character is not a decimal digit.
  SetLength( count, L);
  for j := 0 to L - 1 do count[L] := 0;
  for j := 1 to L - n + 1 do begin
    pin := SysUtils.StrToIntDef( Copy( deB, j, n), -1);
    if pin >= 0 then inc( count[pin]);
  end;
  for j := 1 to n - 1 do begin
    pin := SysUtils.StrToIntDef( Copy( wrap, j, n), -1);
    if pin >= 0 then inc( count[pin]);
  end;
  // Check that all counts are 1
  nrErrors := 0;
  for j := 0 to L - 1 do begin
    if count[j] <> 1 then begin
      inc( nrErrors);
      WriteLn( SysUtils.Format( '  PIN %d has count %d', [j, count[j]]));
    end;
  end;
  WriteLn( SysUtils.Format( '  Number of errors = %d', [nrErrors]));
 end;

// Main routine
var
  deB, rev : string;
  L, j : integer;
begin
   deB := deBruijn( 4, '0123456789');
//   deB := deBruijn( 4, '7368290514'); // any permutation would do
   L := Length( deB);
   WriteLn( SysUtils.Format( 'Length of de Bruijn sequence = %d', [L]));
   if L >= 260 then begin
     WriteLn;
     WriteLn( 'First and last 130 characters are:');
     WriteLn( Copy( deB, 1, 65));
     WriteLn( Copy( deb, 66, 65));
     WriteLn( '...');
     WriteLn( Copy( deB, L - 129, 65));
     WriteLn( Copy( deB, L - 64, 65));
   end;
   WriteLn;
   WriteLn( 'Checking de Bruijn sequence:');
   CheckDecimal( 4, deB);
   // Check reversed sequence
   SetLength( rev, L);
   for j := 1 to L do rev[j] := deB[L + 1 - j];
   WriteLn( 'Checking reversed sequence:');
   CheckDecimal( 4, rev);
   // Check sequence with '.' instad of decimal digit
   if L >= 4444 then begin
     deB[4444] := '.';
     WriteLn( 'Checking vandalized sequence:');
     CheckDecimal( 4, deB);
   end;
end.
{------------------------- 61 determine-if-a-string-has-all-the-same-characters}
program SameNessOfChar;
{$IFDEF FPC}
   {$MODE DELPHI}{$OPTIMIZATION ON,ALL}{$CODEALIGN proc=16}{$ALIGN 16}
{$ELSE}
  {$APPTYPE CONSOLE}
{$ENDIF}
uses
  sysutils;//Format
const
  TestData : array[0..6] of String =
     ('','   ','2','333','.55','tttTTT','4444 444k');
function PosOfDifferentChar(const s: String):NativeInt;
var
  i: Nativeint;
  ch:char;
Begin
  result := length(s);
  IF result < 2 then
    EXIT;
  ch := s[1];
  i := 2;
  while (i< result) AND (S[i] =ch) do
    inc(i);
  result := i;
end;

procedure OutIsAllSame(const s: String);
var
  l,len: NativeInt;
Begin
  l := PosOfDifferentChar(s);
  len := Length(s);
  write('"',s,'" of length ',len);
  IF l = len then
    writeln(' contains all the same character')
  else
    writeln(Format(' is different at position %d "%s" (0x%X)',[l,s[l],Ord(s[l])]));
end;

var
  i : NativeInt;
begin
  For i := Low(TestData) to HIgh(TestData) do
    OutIsAllSame(TestData[i]);
end.
{---------------------------------------- 62 determine-if-two-triangles-overlap}
program TrianglesOverlap;
{
The program looks for a separating line between the triangles. It's known that
only the triangle sides (produced) need to be considered as possible separators
(except in the degenerate case when both triangles are reduced to a point).
If there's a strong separator, i.e. one that is disjoint from at least one
of the triangles, then the triangles are disjoint. If there's only a weak
separator, i.e. one that intersects both triangles, then the triangles intersect
in a point or a line segment (this program doesn't work out which).
If there's no separator, then the triangles have an overlap of positive area.
}
{$IFDEF FPC}
  {$mode objfpc}{$H+}
{$ENDIF}

uses Math, SysUtils;

{$DEFINE USE_FP}
{$IFDEF USE_FP}
type TCoordinate = double;
const TOLERANCE = 1.0E-6;
{$ELSE}
type TCoordinate = integer;
const TOLERANCE = 0;
{$ENDIF}

type TVertex = record
  x, y : TCoordinate;
end;

function Vertex( x_in, y_in : TCoordinate) : TVertex;
begin
  result.x := x_in;
  result.y := y_in;
end;

// Result of testing sides of a triangle for separator.
// Values are arbitrary but must be in this numerical order
const
  SEP_NO_TEST = -1; // triangle is a single point, no sides to be tested
  SEP_NONE    = 0;  // didn't find a separator
  SEP_WEAK    = 1;  // found a weak separator only
  SEP_STRONG  = 2;  // found a strong separator

function EqualVertices( V, W : TVertex) : boolean;
begin
  result := (Abs(V.x - W.x) <= TOLERANCE)
        and (Abs(V.y - W.y) <= TOLERANCE);
end;

// Determinant: twice the signed area of triangle PQR.
function Det( P, Q, R : TVertex) : TCoordinate;
begin
  result := Q.x*R.y - R.x*Q.y + R.x*P.y - P.x*R.y + P.x*Q.y - Q.x*P.y;
end;

// Get result of trying sides of LMN as separators.
function TrySides( L, M, N, P, Q, R : TVertex) : integer;
var
  s, sMin, sMax: TCoordinate;
  H, K : TVertex;

      function TestSide( V, W : TVertex) : integer;
      var
        detP, detQ, detR, tMin, tMax : TCoordinate;
      begin
        result := SEP_NONE;
        detP := Det( V, W, P);
        detQ := Det( V, W, Q);
        detR := Det( V, W, R);
        tMin := Math.Min( Math.Min( detP, detQ), detR);
        tMax := Math.Max( Math.Max( detP, detQ), detR);
        if (tMin - sMax > TOLERANCE) or (sMin - tMax > TOLERANCE) then
          result := SEP_STRONG
        else if (tMin - sMax >= -TOLERANCE) or (sMin - tMax >= -TOLERANCE) then
          result := SEP_WEAK;
      end;

begin
  sMin := 0;
  sMax := 0;
  s := Det( L, M, N);
  if (s <> 0) then begin // L, M, N are not collinear
    if (s < 0) then sMin := s else sMax := s;
    // Once we've found a strong separator, there's no need for further testing
    result := TestSide( M, N);
    if (result < SEP_STRONG) then result := Math.Max( result, TestSide( N, L));
    if (result < SEP_STRONG) then result := Math.Max( result, TestSide( L, M));
  end
  else begin // s = 0 so L, M, N are collinear
    // Look for distinct vertices from among L, M, N
    H := L;
    K := M;
    if EqualVertices( H, K) then K := N;
    if EqualVertices( H, K) then result := SEP_NO_TEST // L = M = N
    else result := TestSide( H, K);
  end;
end;

function Algo_5( A, B, C, D, E, F : TVertex) : integer;
begin
  result := TrySides( A, B, C, D, E, F);
  if (result < SEP_STRONG) then begin
    result := Math.Max( result, TrySides( D, E, F, A, B, C));
    if (result = SEP_NO_TEST) then begin // A = B = C and D = E = F
      if EqualVertices( A, D) then result := SEP_WEAK
                              else result := SEP_STRONG;
    end;
  end;
end;

procedure TestTrianglePair (Ax, Ay, Bx, By, Cx, Cy,
                            Dx, Dy, Ex, Ey, Fx, Fy : TCoordinate);
var
  ovStr : string;
begin
  case Algo_5( Vertex(Ax, Ay), Vertex(Bx, By), Vertex(Cx, Cy),
               Vertex(Dx, Dy), Vertex(Ex, Ey), Vertex(Fx, Fy)) of
    SEP_STRONG : ovStr := 'Disjoint';
    SEP_NONE   : ovStr := 'Overlap';
    else         ovStr := 'Borderline';
  end;
  WriteLn( SysUtils.Format(
      '(%g,%g),(%g,%g),(%g,%g) and (%g,%g),(%g,%g),(%g,%g): %s',
       [Ax, Ay, Bx, By, Cx, Cy, Dx, Dy, Ex, Ey, Fx, Fy, ovStr]));
end;

// Main routine
begin
  TestTrianglePair( 0,0,5,0,0,5, 0,0,5,0,0,6);
  TestTrianglePair( 0,0,0,5,5,0, 0,0,0,5,5,0);
  TestTrianglePair( 0,0,5,0,0,5, -10,0,-5,0,-1,6);
  TestTrianglePair( 0,0,5,0,2.5,5, 0,4,2.5,-1,5,4);
  TestTrianglePair( 0,0,1,1,0,2, 2,1,3,0,3,2);
  TestTrianglePair( 0,0,1,1,0,2, 2,1,3,-2,3,4);
  TestTrianglePair( 0,0,1,0,0,1, 1,0,2,0,1,1);
end.
{-------------------------------------------------------------- 63 digital-root}
program DigitalRoot;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  SysUtils, StrUtils;

// FPC has no Big mumbers implementation, Int64 will suffice.

procedure GetDigitalRoot(Value: Int64; Base: Byte; var DRoot, Pers: Integer);
var
  i: Integer;
  DigitSum: Int64;
begin
  Pers := 0;
  repeat
    Inc(Pers);
    DigitSum := 0;
    while Value > 0 do
    begin
      Inc(DigitSum, Value mod Base);
      Value := Value div Base;
    end;
    Value := DigitSum;
  until Value < Base;
  DRoot := Value;
End;

function IntToStrBase(Value: Int64; Base: Byte):String;
const
  // usable up to 36-Base
  DigitSymbols = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXY';
begin
  Result := '';
  while Value > 0 do
  begin
    Result := DigitSymbols[Value mod Base+1] + Result;
    Value := Value div Base;
  End;

End;

procedure Display(const Value: Int64; Base: Byte = 10);
var
  DRoot, Pers: Integer;
  StrValue: string;
begin
  GetDigitalRoot(Value, Base, DRoot, Pers);
  WriteLn(Format('%s(%d) has additive persistence %d and digital root %d.',
    [IntToStrBase(Value, Base), Base, Pers, DRoot]));
End;

begin
  WriteLn('--- Examples in 10-Base ---');
  Display(627615);
  Display(39390);
  Display(588225);
  Display(393900588225);

  WriteLn('--- Examples in 16-Base ---');
  Display(627615, 16);
  Display(39390, 16);
  Display(588225, 16);
  Display(393900588225, 16);

  ReadLn;
End.
{----------------------------------------------------- 64 dijkstras-algorithm-1}
program dijkstra(output);

type
  { We dynamically build the list of vertices from the edge list,
    just to avoid repeating ourselves in the graph input. Vertices are linked
    together via their `next` pointers to form a list of all vertices (sorted by
    name), while the `previous` pointer indicates the previous vertex along the
    shortest path to this one. }
  vertex = record
    name: char;
    visited: boolean;
    distance: integer;
    previous: ^vertex;
    next: ^vertex;
  end;

  vptr = ^vertex;

  { The graph is specified as an array of these }
  edge_desc = record
    source: char;
    dest: char;
    weight: integer;
  end;

const
  { the input graph }
  edges:    array of edge_desc = (
    (source:'a'; dest:'b'; weight:7),
    (source:'a'; dest:'c'; weight:9),
    (source:'a'; dest:'f'; weight:14),
    (source:'b'; dest:'c'; weight:10),
    (source:'b'; dest:'d'; weight:15),
    (source:'c'; dest:'d'; weight:11),
    (source:'c'; dest:'f'; weight:2),
    (source:'d'; dest:'e'; weight:6),
    (source:'e'; dest:'f'; weight:9)
  );

  { find the shortest path to all nodes starting from this one }
  origin: char = 'a';

var
  head_vertex: vptr = nil;
  curr, next, closest: vptr;
  vtx: vptr;
  dist: integer;
  edge: edge_desc;
  done: boolean = false;

{ allocate a new vertex node with the given name and `next` pointer }
function new_vertex(key: char; next: vptr): vptr;

  var
    vtx: vptr;
  begin
    new(vtx);
    vtx^.name := key;
    vtx^.visited := false;
    vtx^.distance := maxint;
    vtx^.previous := nil;
    vtx^.next := next;
    new_vertex := vtx;
  end;


{ look up a vertex by name; create it if needed }
function find_or_make_vertex(key: char): vptr; var
    vtx, prev, found: vptr;
    done: boolean;

  begin

    found := nil;
    if head_vertex = nil then
      head_vertex := new_vertex(key, nil)
    else if head_vertex^.name > key then
      head_vertex := new_vertex(key, head_vertex);

    if head_vertex^.name = key then
      found := head_vertex
    else begin
      prev := head_vertex;
      vtx := head_vertex^.next;
      done := false;
      while not done do
        if vtx = nil then
          done := true
        else if vtx^.name >= key then
          done := true
        else begin
          prev := vtx;
          vtx := vtx^.next
        end;
      if vtx <> nil then
        if vtx^.name = key then
          found := vtx;
      if found = nil then begin
        prev^.next := new_vertex(key, vtx);
        found := prev^.next;
      end
    end;
    find_or_make_vertex := found
  end;

{ display the path to a vertex indicated by its `previous` pointer chain }
procedure write_path(vtx: vptr);
  begin
    if vtx <> nil then begin
      if vtx^.previous <> nil then begin
        write_path(vtx^.previous);
        write('→');
      end;
      write(vtx^.name);
    end;
  end;

begin
  curr := find_or_make_vertex(origin);
  curr^.distance := 0;
  curr^.previous := nil;
  while not done do begin
    for edge in edges do begin
      if edge.source = curr^.name then begin
        next := find_or_make_vertex(edge.dest);
        dist := curr^.distance + edge.weight;
        if dist < next^.distance then begin
           next^.distance := dist;
           next^.previous := curr;
        end
      end
    end;
    curr^.visited := true;
    closest := nil;
    vtx := head_vertex;
    while vtx <> nil do begin
      if not vtx^.visited then
        if closest = nil then
          closest := vtx
        else if vtx^.distance < closest^.distance then
          closest := vtx;
      vtx := vtx^.next;
    end;
    if closest = nil then
      done := true
    else if closest^.distance = maxint then
      done := true;
    curr := closest;
  end;
  writeln('Shortest path to each vertex from ', origin, ':');
  vtx := head_vertex;
  while vtx <> nil do begin
    write(vtx^.name, ':', vtx^.distance);
    if vtx^.distance > 0 then begin
      write(' (');
      write_path(vtx);
      write(')');
    end;
    writeln();
    vtx := vtx^.next;
  end
end.
{----------------------------------------------------- 65 dijkstras-algorithm-2}
program Dijkstra_console;
// Demo of Dijkstra's algorithm.
// Free Pascal (Lazarus), console application.

uses SysUtils;
type
  TNodeSet = (setA, setB, setC);
  TNode = record
    NodeSet : TNodeSet;
    PrevIndex : integer;  // previous node in path leading to this node
    PathLength : integer; // total length of path to this node
  end;

const
// Rosetta code task
  NR_NODES = 6;
  START_INDEX = 0;
  NODE_NAMES: array [0..NR_NODES - 1] of string = ('a','b','c','d','e','f');
  // LENGTHS[j,k] = length of branch j -> k, or -1 if no such branch exists.
  LENGTHS : array [0..NR_NODES - 1] of array [0..NR_NODES - 1] of integer
  = ((-1, 7, 9,-1,-1,14),
     (-1,-1,10,15,-1,-1),
     (-1,-1,-1,11,-1, 2),
     (-1,-1,-1,-1, 6,-1),
     (-1,-1,-1,-1,-1, 9),
     (-1,-1,-1,-1,-1,-1));

var
  nodes : array [0..NR_NODES - 1] of TNode;
  j, j_min, k : integer;
  lastToSetA, nrInSetA: integer;
  branchLength, trialLength, minLength : integer;
  lineOut : string;
begin
  // Initialize nodes: all in set C
  for j := 0 to NR_NODES - 1 do begin
    nodes[j].NodeSet := setC;
    // No need to initialize PrevIndex and PathLength, as they are
    //   not used until a value has been assigned by the algorithm.
  end;

  // Begin by transferring the start node to set A
  nodes[START_INDEX].NodeSet := setA;
  nodes[START_INDEX].PathLength := 0;
  nrInSetA := 1;
  lastToSetA := START_INDEX;

  // Transfer nodes to set A one at a time, until all have been transferred
  while (nrInSetA < NR_NODES) do begin

    // Step 1: Work through branches leading from the node that was most recently
    //         transferred to set A, and deal with end nodes in set B or set C.
    for j := 0 to NR_NODES - 1 do begin
      branchLength := LENGTHS[ lastToSetA, j];
      if (branchLength >= 0) then begin
        // If the end node is in set B, and the path to the end node via lastToSetA
        //   is shorter than the existing path, then update the path.
        if (nodes[j].NodeSet = setB) then begin
          trialLength := nodes[lastToSetA].PathLength + branchLength;
          if (trialLength < nodes[j].PathLength) then begin
            nodes[j].PrevIndex := lastToSetA;
            nodes[j].PathLength := trialLength;
          end;
        end
        // If the end node is in set C, transfer it to set B.
        else if (nodes[j].NodeSet = setC) then begin
          nodes[j].NodeSet := setB;
          nodes[j].PrevIndex := lastToSetA;
          nodes[j].PathLength := nodes[lastToSetA].PathLength + branchLength;
        end;
      end;
    end;

    // Step 2: Find the node in set B with the smallest path length,
    //         and transfer that node to set A.
    //         (Note that set B cannot be empty at this point.)
    minLength := -1; // just to stop compiler warning "might not have been initialized"
    j_min := -1; // index of node with smallest path length; will become >= 0
    for j := 0 to NR_NODES - 1 do begin
      if (nodes[j].NodeSet = setB) then begin
        if (j_min < 0) or (nodes[j].PathLength < minLength) then begin
          j_min := j;
          minLength := nodes[j].PathLength;
        end;
      end;
    end;
    nodes[j_min].NodeSet := setA;
    inc( nrInSetA);
    lastToSetA := j_min;
  end;

  // Write result to console
  WriteLn( SysUtils.Format( 'Shortest paths from node %s:', [NODE_NAMES[START_INDEX]]));
  for j := 0 to NR_NODES - 1 do begin
    if (j <> START_INDEX) then begin
      k := j;
      lineOut := NODE_NAMES[k];
      repeat
        k := nodes[k].PrevIndex;
        lineOut := NODE_NAMES[k] + ' -> ' + lineOut;
      until (k = START_INDEX);
      lineOut := SysUtils.Format( '%3s: length %3d,  ',
                 [NODE_NAMES[j], nodes[j].PathLength]) + lineOut;
      WriteLn( lineOut);
    end;
  end;
end.
{----------------------------------------------------------- 66 discordian-date}
program ddate;
{
This program is free software, it's done it's time
and paid for it's crime. You can copy, edit and use this
software under the terms of the GNU GPL v3 or later.

Copyright Pope Englebert Finklestien,
On this day Boomtime, the 71st day of Confusion in the YOLD 3183

This program will print out the current date in Erisian format as specified in

                  P R I N C I P I A   D I S C O R D I A

If you run it with a date it the command line in european format (dd mm yy) it
will print the equvolent Discordian date. If you omit the year and  month the
current Anerisiean month and year as assumed.


POPE Englebert Finklestien.
}
uses Sysutils;

var
  YY,MM,DD : word;
  YOLD : Boolean;
  Hedgehog: integer;
  Eris: string;
  snub: string;
  chaotica: string;
  midget: string;
  bob: string;


  Anerisiandaysinmonth: array[1..12] of integer = (31,28,31,30,31,30,31,31,30,31,30,31);



procedure anerisiandate;
{ tHIS JUST GETS THE DATE INTO THE  DD,MM,YY VARIABLES }
begin
    DeCodeDate(date,yy,mm,dd);
end;

procedure BORIS;
{ This just tests to see if we are in a leap year }
var
  snafu : boolean;
begin
  snafu := False;
  if (yy mod 4 = 0) then snafu := True;
  if ((yy mod 100 = 0) and (yy mod 400 <> 0)) then snafu := False;
  if ((snafu) and (mm = 2 ) and (dd=29)) then YOLD := True;
end;

function hodgepodge: integer;
{ This returns the total number of days since the year began.
It doesn't bother with leap years at all.
I get a wierd optical illusion looking at the until in this }
var
  fnord : integer;
begin
   Hedgehog := 1;
   hodgepodge := 0;
   fnord :=0;
   if (mm > 1) then repeat
             fnord := fnord + Anerisiandaysinmonth[Hedgehog];
             Hedgehog := Hedgehog +1;
       until Hedgehog = mm;
   fnord := fnord + dd;
   hodgepodge := fnord;
 end;


function treesaregreen(): string;
{Returns the YOLD as a string}

begin
    treesaregreen := IntTOStr(yy+1166);
end;


procedure GRAYFACE;
{This calculates everything, but does not bother much about leap years}
var
   wrestle: integer;
   Thwack: string;
begin
    Hedgehog := hodgepodge;
    wrestle := 0;
    Thwack := 'th';
    {set bob to the name of the holyday or St. Tibs day }
    bob := 'St. Tibs Day';
    if (Hedgehog = 5 )  then bob := 'Mungday';
    if (Hedgehog = 50 ) then bob := 'Chaoflux';
    if (Hedgehog = 78 ) then bob := 'Mojoday';
    if (Hedgehog = 123) then bob := 'Discoflux';
    if (Hedgehog = 151) then bob := 'Syaday';
    if (Hedgehog = 196) then bob := 'Confuflux';
    if (Hedgehog = 224) then bob := 'Zaraday';
    if (Hedgehog = 269) then bob := 'Bureflux';
    if (Hedgehog = 297) then bob := 'Maladay';
    if (Hedgehog = 342) then bob := 'Afflux';
    {Not doing things the usual way
    Lets find the week day and count the number of
	5 day weeks all at the same time}
    while (Hedgehog > 5) do begin
      Hedgehog := Hedgehog -5;
      wrestle := Wrestle + 1;
    end;
    if (Hedgehog = 1) then snub := 'Sweetmorn'  ;
    if (Hedgehog = 2) then snub := 'BoomTime';
    if (Hedgehog = 3) then snub := 'Pungenday';
    if (Hedgehog = 4) then snub := 'Prickle-Prickle';
    if (Hedgehog = 5) then snub := 'Setting Orange';
	{Now to set the Season name}
    chaotica:='The Aftermath';
    if (wrestle <=57) then chaotica := 'Bureaucracy';
    if ((wrestle = 58) and (Hedgehog < 3)) then chaotica := 'Bureaucracy';
    if (wrestle <= 42) then chaotica := 'Confusion';
    if ((wrestle = 43) and (Hedgehog < 5)) then chaotica := 'Confusion';
    if (wrestle <=28) then chaotica := 'Discord';
    if ((wrestle = 29) and (Hedgehog < 2)) then chaotica := 'Discord';
    if (wrestle <=13) then chaotica := 'Chaos';
    if ((wrestle = 14) and (Hedgehog < 4)) then chaotica := 'Chaos';

	{Now all we need the day of the season}
    wrestle := (wrestle*5)+Hedgehog;
    while (wrestle >73) do wrestle := wrestle -73;
	{pick the appropriate day postfix, allready set to th}
    if (wrestle in [1,21,31,41,51,61,71]) then Thwack:='st';
    if (wrestle in [2,22,32,42,52,62,72]) then Thwack:='nd';
    if (wrestle in [3,23,33,43,53,63,73]) then Thwack:='rd';
	{Check to see if it is a holy day, if so bob will have
	the right holyday name already, including St Tibs Day}
    if (wrestle in [5,50]) then YOLD := True;
	{I love this line of code}
    midget := IntToStr(wrestle) + Thwack;
end;


{The main program starts here}
begin
    anerisiandate;
    if (ParamCount >=1) then dd := StrTOInt(ParamStr(1));
    if (ParamCount >=2) then mm := StrToInt(ParamStr(2));
    if (ParamCount =3) then yy := StrToInt(ParamStr(3));
    BORIS;
    GRAYFACE;
	{ The only thing to bother about is holy days and St Tibs day }
    Eris := 'Today is: ' + snub +' the ' + midget +' day of the season of ' + chaotica;
    if (YOLD) then begin
	    Eris := 'Celebrate for today, ' + snub + ' the ' + midget + ' day of ' +chaotica + ' is the holy day of ' + bob;
    end;
	{The only place we deal with St. Tibs Day}
    if ((YOLD) and ((mm=2) and (dd=29))) then Eris := 'Celebrate ' + bob + ' Chaos';
	{This next line applies to all possibilities}
    Eris := Eris + ' YOLD ' + treesaregreen;
    WriteLn(Eris);
end.
{------------------------------ 67 distribution-of-0-digits-in-factorial-series}
program Factorial;
{$IFDEF FPC} {$MODE DELPHI} {$Optimization ON,ALL} {$ENDIF}
uses
  sysutils;
type
  tMul = array of LongWord;
  tpMul = pLongWord;
const
  LongWordDec = 1000*1000*1000;
  LIMIT = 50000;
var
  CountOfZero : array[0..999] of byte;
  SumOfRatio :array[0..LIMIT] of extended;


procedure OutMul(pMul:tpMul;Lmt :NativeInt);
// for testing
Begin
  write(pMul[lmt]);
  For lmt := lmt-1  downto 0 do
    write(Format('%.9d',[pMul[lmt]]));
  writeln;
end;

procedure InitCoZ;
//Init Lookup table for 3 digits
var
  x,y : integer;
begin
  fillchar(CountOfZero,SizeOf(CountOfZero),#0);
  CountOfZero[0] := 3; //000
  For x := 1 to 9 do
  Begin
    CountOfZero[x] := 2;     //00x
    CountOfZero[10*x] := 2;  //0x0
    CountOfZero[100*x] := 2; //x00
    y := 10;
    repeat
      CountOfZero[y+x] := 1;      //0yx
      CountOfZero[10*y+x] := 1;   //y0x
      CountOfZero[10*(y+x)] := 1; //yx0
      inc(y,10)
    until y > 100;
  end;
end;

function getFactorialDecDigits(n:NativeInt):NativeInt;
var
  res: extended;
Begin
  result := -1;
  IF (n > 0) AND (n <= 1000*1000) then
  Begin
    res := 0;
    repeat res := res+ln(n); dec(n); until n < 2;
    result := trunc(res/ln(10))+1;
  end;
end;

function CntZero(pMul:tpMul;Lmt :NativeInt):NativeUint;
//count zeros in Base 1,000,000,000 number
var
  q,r : LongWord;
  i : NativeInt;
begin
  result := 0;
  For i := Lmt-1 downto 0 do
  Begin
    q := pMul[i];
    r := q DIV 1000;
    result +=CountOfZero[q-1000*r];//q-1000*r == q mod 1000
    q := r;
    r := q DIV 1000;
    result +=CountOfZero[q-1000*r];
    q := r;
    r := q DIV 1000;
    result +=CountOfZero[q-1000*r];
  end;
//special case first digits no leading '0'
  q := pMul[lmt];
  while q >= 1000 do
  begin
    r := q DIV 1000;
    result +=CountOfZero[q-1000*r];
    q := r;
  end;
  while q > 0 do
  begin
    r := q DIV 10;
    result += Ord( q-10*r= 0);
    q := r;
  end;
end;

function GetCoD(pMul:tpMul;Lmt :NativeInt):NativeUint;
//count of decimal digits
var
  i : longWord;
begin
  result := 9*Lmt;
  i := pMul[Lmt];
  while i > 1000 do
  begin
    i := i DIV 1000;
    inc(result,3);
  end;
  while i > 0 do
  begin
    i := i DIV 10;
    inc(result);
  end;
end;

procedure DoChecks(pMul:tpMul;Lmt,i :NativeInt);
//(extended(1.0)* makes TIO.RUN faster // only using FPU?
Begin
  SumOfRatio[i] := SumOfRatio[i-1] + (extended(1.0)*CntZero(pMul,Lmt))/GetCoD(pMul,Lmt);
end;

function MulByI(pMul:tpMul;UL,i :NativeInt):NativeInt;
var
  prod  : Uint64;
  j     : nativeInt;
  carry : LongWord;
begin
  result := UL;
  carry := 0;
  For j := 0 to result do
  Begin
    prod  := i*pMul[0]+Carry;
    Carry := prod Div LongWordDec;
    pMul[0] := Prod - LongWordDec*Carry;
    inc(pMul);
  end;

  IF Carry <> 0 then
  Begin
    inc(result);
    pMul[0]:= Carry;
  End;
end;

procedure getFactorialExact(n:NativeInt);
var
  MulArr : tMul;
  pMul : tpMul;
  i,ul : NativeInt;
begin
  i := getFactorialDecDigits(n) DIV 9 +10;
  Setlength(MulArr,i);
  pMul := @MulArr[0];
  Ul := 0;
  pMul[Ul]:= 1;
  i := 1;
  repeat
    UL := MulByI(pMul,UL,i);
    //Now do what you like to do with i!
    DoChecks(pMul,UL,i);
    inc(i);
  until i> n;
end;

procedure Out_(i: integer);
begin
  if i > LIMIT then
    EXIT;
  writeln(i:8,SumOfRatio[i]/i:18:15);
end;

var
  i : integer;
Begin
  InitCoZ;
  SumOfRatio[0]:= 0;
  getFactorialExact(LIMIT);
  Out_(100);
  Out_(1000);
  Out_(10000);
  Out_(50000);
  i := limit;
  while i >0 do
  Begin
    if SumOfRatio[i]/i >0.16 then
      break;
    dec(i);
  end;
  inc(i);
  writeln('First ratio < 0.16 ', i:8,SumOfRatio[i]/i:20:17);
end.
{------------------------------------------------------------- 68 draw-a-cuboid}
program Cuboid_Demo(output);

procedure DoCuboid(sWidth, sHeight, Depth: integer);
  const
    widthScale  = 4;
    heightScale = 3;
  type
    TPage = array of array of char;
  var
    Cuboid: TPage;
    i, j: integer;
    Width, Height: integer;
    totalWidth, totalHeight: integer;
  begin
    Width  := widthScale  * sWidth;
    Height := heightScale * sHeight;
    totalWidth  := 2 * Width + Depth + 3;
    totalHeight := Height + Depth + 3;
    setlength (Cuboid, totalHeight + 1);
    for i := 1 to totalHeight do
      setlength (Cuboid[i], totalwidth + 1);
    // points
    for i := low(Cuboid) to high(Cuboid) do
      for j := low(Cuboid[i]) to high(Cuboid[i]) do
        Cuboid[i,j] := ' ';
    Cuboid [1, 1]                      := '+';
    Cuboid [Height + 2, 1]             := '+';
    Cuboid [1, 2 * Width + 2]          := '+';
    Cuboid [Height + 2, 2 * Width + 2] := '+';
    Cuboid [totalHeight, Depth + 2]    := '+';
    Cuboid [Depth + 2, totalWidth]     := '+';
    Cuboid [totalHeight, totalWidth]   := '+';
    // width lines
    for I := 1 to 2 * Width do
    begin
       Cuboid [1, I + 1]                   := '-';
       Cuboid [Height + 2, I + 1]          := '-';
       Cuboid [totalHeight, Depth + I + 2] := '-';
    end;
    // height lines
    for I := 1 to Height do
    begin
       Cuboid [I + 1, 1]                  := '|';
       Cuboid [I + 1, 2 * Width + 2]      := '|';
       Cuboid [Depth + I + 2, totalWidth] := '|';
    end;
    // depth lines
    for I := 1 to Depth do
    begin
       Cuboid [Height + 2 + I, 1 + I]             := '/';
       Cuboid [1 + I, 2 * Width + 2 + I]          := '/';
       Cuboid [Height + 2 + I, 2 * Width + 2 + I] := '/';
    end;
    for i := high(Cuboid) downto 1 do
    begin
      for j := 1 to high(Cuboid[i]) do
        write (Cuboid[i,j]);
      writeln;
    end;
  end;

begin
  writeln('1, 1, 1:');
  DoCuboid(1, 1, 1);
  writeln('2, 3, 4:');
  DoCuboid(2, 3, 4);
  writeln('6, 2, 1:');
  DoCuboid(6, 2, 1);
end.
{---------------------------------------------------- 69 dynamic-variable-names}
PROGRAM ExDynVar;

{$IFDEF FPC}
    {$mode objfpc}{$H+}{$J-}{R+}
{$ELSE}
    {$APPTYPE CONSOLE}
{$ENDIF}

(*)
    Free Pascal Compiler version 3.2.0 [2020/06/14] for x86_64
    The free and readable alternative at C/C++ speeds
    compiles natively to almost any platform, including raspberry PI

    This demo uses a dictionary because it is compiled: it cannot  make
    dynamic variables at runtime.
(*)

USES
    Generics.Collections,
    SysUtils,
    Variants;

TYPE

    Tdict =
    {$IFDEF FPC}
    specialize
    {$ENDIF}
     TDictionary < ansistring, variant > ;

VAR
    VarName:  ansistring;
    strValue: ansistring;
    VarValue:    variant;
    D:             Tdict;

    FUNCTION SetType ( strVal: ansistring ) : variant ;

    (*)
       If the value is numeric, store it as numeric, otherwise store it as ansistring
    (*)

        BEGIN

            TRY
                SetType := StrToFloat ( strVal ) ;
            EXCEPT
                SetType :=                strVal ;
            END;

        END;

BEGIN

    D := TDict.Create;
    REPEAT
        Write  ( 'Enter variable name : '  ) ;
        ReadLn ( VarName  ) ;
        Write  ( 'Enter variable Value : ' ) ;
        ReadLn ( strValue ) ;
        VarValue :=     SetType ( strValue ) ;
        TRY
            BEGIN
                D.AddOrSetValue ( VarName, VarValue ) ;
                Write                     ( VarName ) ;
                Write                     (  ' = '  ) ;
                WriteLn             ( D [ VarName ] ) ;
            END;
        EXCEPT
            WriteLn ( 'Something went wrong.. Try again' ) ;
        END;
    UNTIL ( strValue = '' ) ;
    D.Free;

END.
{------------------------------------------------------------------- 70 entropy}
PROGRAM entropytest;

USES StrUtils, Math;

TYPE FArray = ARRAY of CARDINAL;

VAR	 strng: STRING = '1223334444';
	
// list unique characters in a string
FUNCTION uniquechars(str: STRING): STRING;
	VAR n: CARDINAL;
	BEGIN
		uniquechars := '';
		FOR n := 1 TO length(str) DO
			IF (PosEx(str[n],str,n)>0)
				AND (PosEx(str[n],uniquechars,1)=0)
					THEN uniquechars += str[n];
	END;
	
// obtain a list of character-frequencies for a string
//  given a string containing its unique characters
FUNCTION frequencies(str,ustr: STRING): FArray;
	VAR u,s,p,o: CARDINAL;
	BEGIN
		SetLength(frequencies, Length(ustr)+1);
		p := 0;
		FOR u := 1 TO length(ustr) DO
			FOR s := 1 TO length(str) DO BEGIN
				o := p;	p := PosEx(ustr[u],str,s);
				IF (p>o) THEN INC(frequencies[u]);
			END;
	END;

// Obtain the Shannon entropy of a string
FUNCTION entropy(s: STRING): EXTENDED;
	VAR pf : FArray;
		us : STRING;
		i,l: CARDINAL;
	BEGIN
		us := uniquechars(s);
		pf := frequencies(s,us);
		l  := length(s);
		entropy := 0.0;
		FOR i := 1 TO length(us) DO
			entropy -= pf[i]/l * log2(pf[i]/l);
	END;

BEGIN
	Writeln('Entropy of "',strng,'" is ',entropy(strng):2:5, ' bits.');
END.
{------------------------------------------------------- 71 equilibrium-index-1}
Program EquilibriumIndexDemo(output);

{$IFDEF FPC}{$Mode delphi}{$ENDIF}

function ArraySum(list: array of integer; first, last: integer): integer;
  var
    i: integer;
  begin
    Result := 0;
    for i := first to last do  // not taken if first > last
      Result := Result + list[i];
  end;

procedure EquilibriumIndex(list: array of integer; offset: integer);
  var
    i: integer;
  begin
    for i := low(list) to high(list) do
      if ArraySum(list, low(list), i-1) = ArraySum(list, i+1, high(list)) then
        write(offset + i:3);
  end;

var
{** The base index of the array is fully taken care off and can be any number. **}
  numbers: array [1..7] of integer = (-7, 1, 5, 2, -4, 3, 0);
  i: integer;

begin
  write('List of numbers: ');
  for i := low(numbers) to high(numbers) do
    write(numbers[i]:3);
  writeln;
  write('Equilibirum indices: ');
  EquilibriumIndex(numbers, low(numbers));
  writeln;
end.
{------------------------------------------------------- 72 equilibrium-index-2}
Program EquilibriumIndexDemo(output);
{$IFDEF FPC}{$Mode delphi}{$ENDIF}
type
  tEquiData = shortInt;//Int64;extended ,double
  tnumList = array of tEquiData;
  tresList = array of LongInt;
const
  cNumbers: array [11..17] of tEquiData = (-7, 1, 5, 2, -4, 3, 0);

function ArraySum(const list: tnumList):tEquiData;
var
  i: integer;
begin
  result := 0;
  for i := Low(list) to High(list) do
    result := result+list[i];
end;

procedure EquilibriumIndex(const    list:tnumList;
                              var indices:tresList);
var
  pC : ^tEquiData;
  LeftSum,
  RightSum : tEquiData;
  i,idx,HiList: integer;

begin
  HiList := High(List);
  RightSum :=ArraySum(list);
  setlength(indices,10);
  idx := 0;

  i := -Hilist;
  pC := @List[0];
  LeftSum:= 0;
  repeat
    Rightsum:= RightSum-pC^;
    IF LeftSum = RightSum then
    Begin
      indices[idx] := Hilist+i;
      inc(idx);
      IF idx > high(indices) then
        setlength(indices, idx+10);
    end;
    inc(i);
    leftSum := leftsum+pC^;
    inc(pC);
  until i>=0;
  leftSum := leftsum+pC^;
  IF LeftSum = RightSum then
  Begin
    indices[idx] := Hilist+i;
    inc(idx);
  end;
  setlength(indices,idx);
end;

procedure TestRun(const numbers:tnumList);
var
  indices : tresList;
  i: integer;
Begin
  write('List of numbers:     ');
  for i := low(numbers) to high(numbers) do
    write(numbers[i]:3);
  writeln;
  EquilibriumIndex(numbers,indices);
  write('Equilibirum indices: ');
  EquilibriumIndex(numbers,indices);
  for i := low(indices) to high(indices) do
    write(indices[i]:3);
  writeln;
  writeln;
end;

var
  numbers: tnumList;
  I: integer;
begin
  setlength(numbers,High(cNumbers)-Low(cNumbers)+1);
  move(cNumbers[Low(cNumbers)],numbers[0],sizeof(cnumbers));
  TestRun(numbers);
  for i := low(numbers) to high(numbers) do
    numbers[i]:= 0;
  TestRun(numbers);
end.
{---------------------------------------------------------- 73 esthetic-numbers}
program Esthetic;
{$IFDEF FPC}
  {$MODE DELPHI}  {$OPTIMIZATION ON,ALL} {$codealign proc=16}
{$ELSE}
  {$APPTYPE CONSOLE}
{$ENDIF}
uses
  sysutils,//IntToStr
  strutils;//Numb2USA aka commatize
const
  ConvBase :array[0..15] of char= '0123456789ABCDEF';
  maxBase = 16;
type
  tErg = string[63];
  tCnt = array[0..maxBase-1] of UInt64;
  tDgtcnt = array[0..64] of tCnt;

//global
var
  Dgtcnt :tDgtcnt;

procedure CalcDgtCnt(base:NativeInt;var Dgtcnt :tDgtcnt);
var
  pCnt0,
  pCnt1 : ^tCnt;
  i,j,SumCarry: NativeUInt;
begin
  fillchar(Dgtcnt,SizeOf(Dgtcnt),#0);
  pCnt0 := @Dgtcnt[0];
  //building count for every first digit of digitcount:
  //example :count numbers starting "1" of lenght 13
  For i := 0 to Base-1 do
    pCnt0^[i] := 1;
  For j := 1 to High(Dgtcnt) do
  Begin
    pCnt1 := @Dgtcnt[j];
    //0 -> followed only by solutions of 1
    pCnt1^[0] := pCnt0^[1];
    //base-1 -> followed only by solutions of Base-2
    pCnt1^[base-1] := pCnt0^[base-2];
    //followed by solutions for i-1 and i+1
    For i := 1 to base-2 do
      pCnt1^[i]:= pCnt0^[i-1]+pCnt0^[i+1];
    //next row aka digitcnt
    pCnt0:= pCnt1;
  end;

  //converting to sum up each digit
  //example :count numbers starting "1" of lenght 13
  //-> count of all est. numbers from 1 to "1" with max lenght 13

  //delete leading "0"
  For j := 0 to High(Dgtcnt) do //High(Dgtcnt)
    Dgtcnt[j,0] := 0;

  SumCarry := Uint64(0);
  For j := 0 to High(Dgtcnt) do
  Begin
    pCnt0 := @Dgtcnt[j];
    For i := 0 to base-1 do
    begin
      SumCarry +=pCnt0^[i];
      pCnt0^[i] :=SumCarry;
    end;
  end;
end;

function ConvToBaseStr(n,base:NativeUint):tErg;
var
  idx,dgt,rst : Uint64;
Begin
  IF n = 0 then
  Begin
    result := ConvBase[0];
    EXIT;
  end;
  idx := High(result);
  repeat
    rst := n div base;
    dgt := n-rst*base;
    result[idx] := ConvBase[dgt];
    dec(idx);
    n := rst;
  until n=0;
  rst := High(result)-idx;
  move(result[idx+1],result[1],rst);
  setlength(result,rst);
end;

function isEsthetic(n,base:Uint64):boolean;
var
  lastdgt,
  dgt,
  rst : Uint64;
Begin
  result := true;
  IF n >= Base then
  Begin
    rst := n div base;
    Lastdgt := n-rst*base;
    n := rst;
    repeat
      rst := n div base;
      dgt := n-rst*base;
      IF sqr(lastDgt-dgt)<> 1 then
      Begin
        result := false;
        EXIT;
      end;
      lastDgt := dgt;
      n := rst;
    until n = 0;
  end;
end;

procedure Task1;
var
  i,base,cnt : NativeInt;
Begin
  cnt := 0;
  For base := 2 to 16 do
  Begin
    CalcDgtCnt(base,Dgtcnt);
    writeln(4*base,'th through ',6*base,'th esthetic numbers in base ',base);
    cnt := 0;
    i := 0;
    repeat
      inc(i);
      if isEsthetic(i,base) then
        inc(cnt);
    until cnt >= 4*base;

    repeat
      if isEsthetic(i,base) then
      Begin
        write(ConvToBaseStr(i,base),' ');
        inc(cnt);
      end;
      inc(i);
    until cnt > 6*base;
    writeln;
  end;
  writeln;
end;

procedure Task2;
var
  i : NativeInt;
begin
  write(' There are ',Dgtcnt[4][0]-Dgtcnt[3][0],' esthetic numbers');
  writeln(' between 1000 and 9999 ');
  For i := 1000 to 9999 do
  Begin
    if isEsthetic(i,10) then
      write(i:5);
  end;
  writeln;writeln;
end;

procedure Task3(Pot10: NativeInt);
//calculating esthetic numbers starting with "1" and Pot10+1 digits
var
  i : NativeInt;
begin
  write(' There are ',Numb2USA(IntToStr(Dgtcnt[Pot10][1]-Dgtcnt[Pot10][0])):26,' esthetic numbers');
  writeln(' between 1e',Pot10,' and 1.3e',Pot10);
  if Pot10 = 8 then
  Begin
    For i := 100*1000*1000 to 110*1000*1000-1 do
    Begin
      if isEsthetic(i,10) then
        write(i:10);
    end;
    writeln;
    //Jump over "11"
    For i := 120*1000*1000 to 130*1000*1000-1 do
    Begin
      if isEsthetic(i,10) then
        write(i:10);
    end;
    writeln;writeln;
  end;
end;

var
  i:NativeInt;
BEGIN
  Task1;
  //now only base 10 is used
  CalcDgtCnt(10,Dgtcnt);
  Task2;
  For i := 2 to 20 do
    Task3(3*i+2);
  writeln;
  write(' There are ',Numb2USA(IntToStr(Dgtcnt[64][0])),' esthetic numbers');
  writeln(' with max 65 digits ');
  writeln;
  writeln(' The count of numbers with 64 digits like https://oeis.org/A090994');
  writeln(Numb2USA(IntToStr(Dgtcnt[64][0]-Dgtcnt[63][0])):28);
end.
{-------------------------------------------------------------- 74 euler-method}
{$mode delphi}
PROGRAM Euler;

TYPE TNewtonCooling = FUNCTION (t: REAL) : REAL;

CONST   T0  : REAL = 100.0;
CONST   TR  : REAL = 20.0;
CONST   k   : REAL = 0.07;
CONST   time    : INTEGER = 100;
CONST   step    : INTEGER = 10;
CONST   dt  : ARRAY[0..3] of REAL = (1.0,2.0,5.0,10.0);

VAR i   : INTEGER;

FUNCTION NewtonCooling(t: REAL) : REAL;
    BEGIN
        NewtonCooling := -k * (t-TR);
    END;

PROCEDURE Euler(F: TNewtonCooling; y, h : REAL; n: INTEGER);
    VAR i: INTEGER = 0;
    BEGIN
        WRITE('dt=',trunc(h):2,':');
        REPEAT
            IF (i mod 10 = 0) THEN WRITE(' ',y:2:3);
            INC(i,trunc(h));
            y := y + h * F(y);
        UNTIL (i >= n);
        WRITELN;
    END;

PROCEDURE Sigma;
    VAR t: INTEGER = 0;
    BEGIN
        WRITE('Sigma:');
        REPEAT
            WRITE(' ',(20 + 80 * exp(-0.07 * t)):2:3);
            INC(t,step);
        UNTIL (t>=time);
        WRITELN;
    END;

BEGIN
    WRITELN('Newton cooling function: Analytic solution (Sigma) with 3 Euler approximations.');
    WRITELN('Time: ',0:7,10:7,20:7,30:7,40:7,50:7,60:7,70:7,80:7,90:7);
    Sigma;
    FOR i := 1 to 3 DO
        Euler(NewtonCooling,T0,dt[i],time);
END.

{------------------------------------------- 75 eulers-sum-of-powers-conjecture}
program Pot5Test;
{$IFDEF FPC} {$MODE DELPHI}{$ELSE]{$APPTYPE CONSOLE}{$ENDIF}
type
  tTest = double;//UInt64;{ On linux 32Bit double is faster than  Uint64 }
var
  Pot5 : array[0..255] of tTest;
  res,tmpSum : tTest;
  x0,x1,x2,x3, y : NativeUint;//= Uint32 or 64 depending on OS xx-Bit
  i : byte;
BEGIN
  For i := 1 to 255 do
    Pot5[i] := (i*i*i*i)*Uint64(i);

  For x0 := 1 to 250-3 do
    For x1 := x0+1 to 250-2 do
      For x2 := x1+1 to 250-1 do
      Begin
        //set y here only, because pot5 is strong monoton growing,
        //therefor the sum is strong monoton growing too.
        y := x2+2;// aka x3+1
        tmpSum := Pot5[x0]+Pot5[x1]+Pot5[x2];
        For x3 := x2+1 to 250 do
        Begin
          res := tmpSum+Pot5[x3];
          while (y< 250) AND (res > Pot5[y]) do
            inc(y);
          IF y > 250 then BREAK;
          if res = Pot5[y] then
            writeln(x0,'^5+',x1,'^5+',x2,'^5+',x3,'^5 = ',y,'^5');
        end;
      end;
END.
{---------------------------------------------------- 76 evolutionary-algorithm}
PROGRAM EVOLUTION (OUTPUT);

CONST
    TARGET = 'METHINKS IT IS LIKE A WEASEL';
    COPIES = 100;  (* 100 children in each generation. *)
    RATE = 1000;  (* About one character in 1000 will be a mutation. *)

TYPE
    STRLIST = ARRAY [1..COPIES] OF STRING;

FUNCTION RANDCHAR : CHAR;
 (* Generate a random letter or space. *)
 VAR RANDNUM : INTEGER;
 BEGIN
    RANDNUM := RANDOM(27);
    IF RANDNUM = 26 THEN
        RANDCHAR := ' '
    ELSE
        RANDCHAR := CHR(RANDNUM + ORD('A'))
 END;

FUNCTION RANDSTR (SIZE : INTEGER) : STRING;
 (* Generate a random string. *)
 VAR
    N : INTEGER;
    S : STRING;
 BEGIN
    S := '';
    FOR N := 1 TO SIZE DO
        INSERT(RANDCHAR, S, 1);
    RANDSTR := S
 END;

FUNCTION FITNESS (CANDIDATE, GOAL : STRING) : INTEGER;
 (* Count the number of correct letters in the correct places *)
 VAR N, MATCHES : INTEGER;
 BEGIN
    MATCHES := 0;
    FOR N := 1 TO LENGTH(GOAL) DO
        IF CANDIDATE[N] = GOAL[N] THEN
            MATCHES := MATCHES + 1;
    FITNESS := MATCHES
 END;

FUNCTION MUTATE (RATE : INTEGER; S : STRING) : STRING;
 (* Randomly alter a string. Characters change with probability 1/RATE. *)
 VAR
    N : INTEGER;
    CHANGE : BOOLEAN;
 BEGIN
    FOR N := 1 TO LENGTH(TARGET) DO
     BEGIN
        CHANGE := RANDOM(RATE) = 0;
        IF CHANGE THEN
            S[N] := RANDCHAR
     END;
    MUTATE := S
 END;

PROCEDURE REPRODUCE (RATE : INTEGER; PARENT : STRING; VAR CHILDREN : STRLIST);
 (* Generate children with random mutations. *)
 VAR N : INTEGER;
 BEGIN
    FOR N := 1 TO COPIES DO
        CHILDREN[N] := MUTATE(RATE, PARENT)
 END;

FUNCTION FITTEST(CHILDREN : STRLIST; GOAL : STRING) : STRING;
 (* Measure the fitness of each child and return the fittest. *)
 (* If multiple children equally match the target, then return the first. *)
 VAR
    MATCHES, MOST_MATCHES, BEST_INDEX, N : INTEGER;
 BEGIN
    MOST_MATCHES := 0;
    BEST_INDEX := 1;
    FOR N := 1 TO COPIES DO
     BEGIN
        MATCHES := FITNESS(CHILDREN[N], GOAL);
        IF MATCHES > MOST_MATCHES THEN
         BEGIN
            MOST_MATCHES := MATCHES;
            BEST_INDEX := N
         END
     END;
    FITTEST := CHILDREN[BEST_INDEX]
 END;

VAR
    PARENT, BEST_CHILD : STRING;
    CHILDREN : STRLIST;
    GENERATIONS : INTEGER;

BEGIN
    RANDOMIZE;
    GENERATIONS := 0;
    PARENT := RANDSTR(LENGTH(TARGET));
    WHILE NOT (PARENT = TARGET) DO
     BEGIN
        IF (GENERATIONS MOD 100) = 0 THEN WRITELN(PARENT);
        GENERATIONS := GENERATIONS + 1;
        REPRODUCE(RATE, PARENT, CHILDREN);
        BEST_CHILD := FITTEST(CHILDREN, TARGET);
        IF FITNESS(PARENT, TARGET) < FITNESS(BEST_CHILD, TARGET) THEN
            PARENT := BEST_CHILD
     END;
    WRITE('The string was matched in ');
    WRITELN(GENERATIONS, ' generations.')
END.
{------------------------------------------------------ 77 executable-library-1}
uses
  DynLibs;
type
  THailSeq = record
    Data: PCardinal;
    Count: Longint;
  end;
var
  Buffer: array[0..511] of Cardinal;

function Hailstone(aValue: Cardinal): THailSeq;
var
  I: Longint;
begin
  Hailstone.Count := 0;
  Hailstone.Data := nil;
  if (aValue <> 0) and (aValue <= 200000) then begin
    Buffer[0] := aValue;
    I := 1;
    repeat
      if Odd(aValue) then
        aValue := Succ((3 * aValue))
      else
        aValue := aValue div 2;
      Buffer[I] := aValue;
      Inc(I);
    until aValue = 1;
    Hailstone.Count := I;
    Hailstone.Data := @Buffer;
  end;
end;

procedure PrintArray(const Prefix: string; const a: array of Cardinal);
var
  I: Longint;
begin
  Write(Prefix, '[');
  for I := 0 to High(a) - 1 do Write(a[I], ', ');
  WriteLn(a[High(a)], ']');
end;

exports
  Hailstone;
var
  hs: THailSeq;
  I, Value: Cardinal;
  MaxLen: Longint;
begin
  hs := Hailstone(27);
  WriteLn('Length of Hailstone(27) is ', hs.Count, ',');
  PrintArray('it starts with ', hs.Data[0..3]);
  PrintArray('and ends with  ', hs.Data[hs.Count-4..hs.Count-1]);
  Value := 0;
  MaxLen := 0;
  for I := 1 to 100000 do begin
    hs := Hailstone(I);
    if hs.Count > MaxLen then begin
      MaxLen := hs.Count;
      Value := I;
    end;
  end;
  WriteLn('Maximum length ', MaxLen, ' was found for Hailstone(', Value, ')');
end.
{------------------------------------------------ 78 execute-a-markov-algorithm}
program InterpretMA;
{$mode objfpc}{$h+}{$j-}{$b-}
uses
  SysUtils;

type
  TRule = record
    Pattern, Replacement: string;
    Terminating: Boolean;
  end;

function ParseMA(const aScheme: string; out aRules: specialize TArray<TRule>): Boolean;
  function ParseLine(const s: string; out r: TRule): Boolean;
  var
    Terms: TStringArray;
  begin
    Terms := s.Split([' -> ']);
    if Length(Terms) <> 2 then exit(False);
    r.Pattern := Terms[0].Trim;
    r.Replacement := Terms[1].Trim;
    r.Terminating := False;
    if (r.Replacement <> '') and (r.Replacement[1] = '.') then begin
      r.Terminating := True;
      Delete(r.Replacement, 1, 1);
    end;
    Result := True;
  end;
var
  Lines: TStringArray;
  s: string;
  I: Integer;
begin
  aRules := nil;
  if aScheme = '' then exit(False);
  Lines := aScheme.Split([LineEnding], TStringSplitOptions.ExcludeEmpty);
  if Lines = nil then exit(False);
  SetLength(aRules, Length(Lines));
  I := 0;
  for s in Lines do begin
    if s[1] = '#' then continue;
    if not ParseLine(s, aRules[I]) then exit(False);
    Inc(I);
  end;
  SetLength(aRules, I);
  Result := True;
end;

function ExecuteMA(const aScheme, aInput: string): string;
var
  Rules: array of TRule;
  r: TRule;
  Applied: Boolean;
begin
  if not ParseMA(aScheme.Replace(#9, ' ', [rfReplaceAll]), Rules) then
    exit('Error while parsing MA scheme');
  Result := aInput;
  repeat
    Applied := False;
    for r in Rules do begin
      if r.Pattern = '' then begin
          Result := r.Replacement + Result;
          Applied := True;
      end else begin
        Applied := Result.IndexOf(r.Pattern) >= 0;
        if Applied then
          Result := Result.Replace(r.Pattern, r.Replacement);
        end;
      if Applied then begin
        if r.Terminating then exit;
        break;
      end;
    end;
  until not Applied;
end;

type
  TTestEntry = record
    Scheme, Input, Output: string;
  end;

const
  LE = LineEnding;
  TestSet: array[1..5] of TTestEntry = (
    (Scheme:
      '# This rules file is extracted from Wikipedia: ' +LE+
      '# http://en.wikipedia.org/wiki/Markov_Algorithm' +LE+
      'A -> apple'                                      +LE+
      'B -> bag'                                        +LE+
      'S -> shop'                                       +LE+
      'T -> the'                                        +LE+
      'the shop -> my brother'                          +LE+
      'a never used -> .terminating rule';
    Input: 'I bought a B of As from T S.'; Output: 'I bought a bag of apples from my brother.'),
    (Scheme:
      '# Slightly modified from the rules on Wikipedia' +LE+
      'A -> apple'                                      +LE+
      'B -> bag'                                        +LE+
      'S -> .shop'                                      +LE+
      'T -> the'                                        +LE+
      'the shop -> my brother'                          +LE+
      'a never used -> .terminating rule';
    Input: 'I bought a B of As from T S.'; Output: 'I bought a bag of apples from T shop.'),
    (Scheme:
      '# BNF Syntax testing rules'                      +LE+
      'A -> apple'                                      +LE+
      'WWWW -> with'                                    +LE+
      'Bgage -> ->.*'                                   +LE+
      'B -> bag'                                        +LE+
      '->.* -> money'                                   +LE+
      'W -> WW'                                         +LE+
      'S -> .shop'                                      +LE+
      'T -> the'                                        +LE+
      'the shop -> my brother'                          +LE+
      'a never used -> .terminating rule';
    Input: 'I bought a B of As W my Bgage from T S.'; Output: 'I bought a bag of apples with my money from T shop.'),
    (Scheme:
      '### Unary Multiplication Engine, for testing Markov Algorithm implementations' +LE+
      '### By Donal Fellows.'                           +LE+
      '# Unary addition engine'                         +LE+
      '_+1 -> _1+'                                      +LE+
      '1+1 -> 11+'                                      +LE+
      '# Pass for converting from the splitting of multiplication into ordinary' +LE+
      '# addition'                                      +LE+
      '1! -> !1'                                        +LE+
      ',! -> !+'                                        +LE+
      '_! -> _'                                         +LE+
      '# Unary multiplication by duplicating left side, right side times' +LE+
      '1*1 -> x,@y'                                     +LE+
      '1x -> xX'                                        +LE+
      'X, -> 1,1'                                       +LE+
      'X1 -> 1X'                                        +LE+
      '_x -> _X'                                        +LE+
      ',x -> ,X'                                        +LE+
      'y1 -> 1y'                                        +LE+
      'y_ -> _'                                         +LE+
      '# Next phase of applying'                        +LE+
      '1@1 -> x,@y'                                     +LE+
      '1@_ -> @_'                                       +LE+
      ',@_ -> !_'                                       +LE+
      '++ -> +'                                         +LE+
      '# Termination cleanup for addition'              +LE+
      '_1 -> 1'                                         +LE+
      '1+_ -> 1'                                        +LE+
      '_+_ -> ';
    Input: '_1111*11111_'; Output: '11111111111111111111'),
    (Scheme:
      '# Turing machine: three-state busy beaver'       +LE+
      '#'                                               +LE+
      '# state A, symbol 0 => write 1, move right, new state B' +LE+
      'A0 -> 1B'                                        +LE+
      '# state A, symbol 1 => write 1, move left, new state C'  +LE+
      '0A1 -> C01'                                      +LE+
      '1A1 -> C11'                                      +LE+
      '# state B, symbol 0 => write 1, move left, new state A'  +LE+
      '0B0 -> A01'                                      +LE+
      '1B0 -> A11'                                      +LE+
      '# state B, symbol 1 => write 1, move right, new state B' +LE+
      'B1 -> 1B'                                        +LE+
      '# state C, symbol 0 => write 1, move left, new state B'  +LE+
      '0C0 -> B01'                                      +LE+
      '1C0 -> B11'                                      +LE+
      '# state C, symbol 1 => write 1, move left, halt' +LE+
      '0C1 -> H01'                                      +LE+
      '1C1 -> H11';
    Input: '000000A000000'; Output: '00011H1111000')
  );
  E_FMT = 'test #%d: expected "%s", but got "%s"';
var
  e: TTestEntry;
  Result: string;
  I: Integer = 1;
  Failed: Integer = 0;
begin
  for e in TestSet do begin
    Result := ExecuteMA(e.Scheme, e.Input);
    if Result <> e.Output then begin
      WriteLn(Format(E_FMT, [I, e.Output, Result]));
      Inc(Failed);
    end;
    Inc(I);
  end;
  WriteLn('tests completed: ', Length(TestSet), ', failed: ', Failed);
end.
{------------------------------------------------------------ 79 execute-brain-}
program rcExceuteBrainF;

uses
     Crt;

Const
  DataSize= 1024;                           // Size of Data segment
  MaxNest=  1000;                           // Maximum nesting depth of []

procedure ExecuteBF(Source: string);
var
  Dp:       pByte;                          // Used as the Data Pointer
  DataSeg:  Pointer;                        // Start of the DataSegment (Cell 0)
  Ip:       pChar;                          // Used as instruction Pointer
  LastIp:   Pointer;                        // Last adr of code.
  JmpStack: array[0..MaxNest-1] of pChar;   // Stack to Keep track of active "[" locations
  JmpPnt:   Integer;                        // Stack pointer ^^
  JmpCnt:   Word;                           // Used to count brackets when skipping forward.


begin

  // Set up then data segment
  getmem(DataSeg,dataSize);
  dp:=DataSeg;
  fillbyte(dp^,dataSize,0);

  // Set up the JmpStack
  JmpPnt:=-1;

  // Set up Instruction Pointer
  Ip:=@Source[1];
  LastIp:=@Source[length(source)];
  if Ip=nil then exit;

  // Main Execution loop
  repeat { until Ip > LastIp }
    Case Ip^ of
      '<': dec(dp);
      '>': inc(dp);
      '+': inc(dp^);
      '-': dec(dp^);
      '.': write(stdout,chr(dp^));
      ',': dp^:=ord(readkey);
      '[': if dp^=0 then
           begin
             // skip forward until matching bracket;
             JmpCnt:=1;
             while (JmpCnt>0) and (ip<=lastip) do
             begin
               inc(ip);
               Case ip^ of
                 '[': inc(JmpCnt);
                 ']': dec(JmpCnt);
                 #0:  begin
                        Writeln(StdErr,'Error brackets don''t match');
                        halt;
                      end;
                end;
             end;
           end else begin
             // Add location to Jump stack
             inc(JmpPnt);
             JmpStack[jmpPnt]:=ip;
           end;
      ']': if dp^>0 then
             // Jump Back to matching [
             ip:=JmpStack[jmpPnt]
           else
             // Remove Jump from stack
             dec(jmpPnt);
    end;
    inc(ip);
  until Ip>lastIp;
  freemem(DataSeg,dataSize);
end;

Const
  HelloWorldWiki = '++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>'+
                   '---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++.';

  pressESCtoCont = '>[-]+++++++[<++++++++++>-]<->>[-]+++++++[<+++++++++++'+
                   '+>-]<->>[-]++++[<++++++++>-]+>[-]++++++++++[<++++++++'+
                   '++>-]>[-]++++++++[<++++++++++++++>-]<.++.+<.>..<<.<<.'+
                   '-->.<.>>.>>+.-----.<<.[<<+>>-]<<.>>>>.-.++++++.<++++.'+
                   '+++++.>+.<<<<++.>+[>+<--]>++++...';
  waitForEsc     = '[-]>[-]++++[<+++++++>-]<->[-]>+[[-]<<[>+>+<<-]'+'>>[<'+
                   '<+>>-],<[->-<]>]';

begin
  // Execute "Hello World" example from Wikipedia
  ExecuteBF(HelloWorldWiki);

  // Print text "press ESC to continue....." and wait for ESC to be pressed
  ExecuteBF(pressESCtoCont+waitForEsc);
end.

{--------------------------------------------------- 80 exponentiation-operator}
Program ExponentiationOperator(output);

function intexp (base, exponent: integer): longint;
  var
    i: integer;

  begin
    if (exponent < 0) then
      if (base = 1) then
        intexp := 1
      else
        intexp := 0
    else
    begin
      intexp := 1;
      for i := 1 to exponent do
        intexp := intexp * base;
    end;
  end;

function realexp (base: real; exponent: integer): real;
  var
    i: integer;

  begin
    realexp := 1.0;
    if (exponent < 0) then
      for i := exponent to -1 do
        realexp := realexp / base
    else
      for i := 1 to exponent do
        realexp := realexp * base;
  end;

begin
  writeln('2^30: ', intexp(2, 30));
  writeln('2.0^30: ', realexp(2.0, 30));
end.
{--------------------------------------------------------------- 81 factorial-3}
program GMPfact;

{$mode objfpc}

uses

    gmp
    ;

    function Factorial(n: qword): string;
        var
            ResultMPZ: mpz_t;
            i: qword;
        begin
            mpz_init_set_ui(ResultMPZ, 1);
            for i := 2 to n do
                mpz_mul_ui(ResultMPZ, ResultMPZ, i);
            Result := mpz_get_str(nil, 10, ResultMPZ);
            mpz_clear(ResultMPZ);
        end;

var
    N     : integer = 101 ;
    Fact  :        string ;

begin
    Fact := Factorial(101);
    writeln( N ,'! = ', Fact);
end.    (*)     GMPfact     (*)


Output:
101! = 9425947759838359420851623124482936749562312794702543768327889353416977599316221476503087861591808346911623490003549599583369706302603264000000000000000000000000


{---------------------------------------------- 82 factors-of-a-mersenne-number}
program FactorsMersenneNumber(input, output);

function isPrime(n: longint): boolean;
  var
    d: longint;
  begin
    isPrime := true;
    if (n mod 2) = 0 then
    begin
      isPrime := (n = 2);
      exit;
    end;
    if (n mod 3) = 0 then
    begin
      isPrime := (n = 3);
      exit;
    end;
    d := 5;
    while d*d <= n do
    begin
      if (n mod d) = 0 then
      begin
	isPrime := false;
	exit;
      end;
      d := d + 2;
    end;
  end;

function btest(n, pos: longint): boolean;
  begin
    btest := (n shr pos) mod 2 = 1;
  end;

function MFactor(p: longint): longint;
  var
    i, k,  maxk, msb, n, q: longint;
  begin
    for i := 30 downto 0 do
      if btest(p, i) then
      begin
	msb := i;
	break;
      end;
    maxk := 16384 div p;     // limit for k to prevent overflow of 32 bit signed integer
    for k := 1 to maxk do
    begin
      q := 2*p*k + 1;
      if not isprime(q) then
	continue;
      if ((q mod 8) <> 1) and ((q mod 8) <> 7) then
	continue;
      n := 1;
      for i := msb downto 0 do
	if btest(p, i) then
	  n := (n*n*2) mod q
	else
	  n := (n*n) mod q;
      if n = 1 then
      begin
	mfactor := q;
	exit;
      end;
    end;
    mfactor := 0;
  end;

var
  exponent, factor: longint;

begin
  write('Enter the exponent of the Mersenne number (suggestion: 929): ');
  readln(exponent);
  if not isPrime(exponent) then
  begin
    writeln('M', exponent, ' (2**', exponent, ' - 1) is not prime.');
    exit;
  end;
  factor := MFactor(exponent);
  if factor = 0 then
    writeln('M', exponent, ' (2**', exponent, ' - 1) has no factor.')
  else
    writeln('M', exponent, ' (2**', exponent, ' - 1) has the factor: ', factor);
end.
{--------------------------------------------------- 83 factors-of-an-integer-1}
program Factors;
var
  i, number: integer;
begin
  write('Enter a number between 1 and 2147483647: ');
  readln(number);

  for i := 1 to round(sqrt(number)) - 1 do
    if number mod i = 0 then
      write (i, ' ',  number div i, ' ');

  // Check to see if number is a square
  i := round(sqrt(number));
  if i*i = number then
     write(i)
  else if number mod i = 0 then
     write(i, number/i);
  writeln;
end.
{------------------------------------------------------------ 84 farey-sequence}
program Farey;
 {$IFDEF FPC }{$MODE DELPHI}{$ELSE}{$APPTYPE CONSOLE}{$ENDIF}
uses
   sysutils;
type
   tNextFarey= record
                 nom,dom,n,c,d: longInt;
               end;

function  InitFarey(maxdom:longINt):tNextFarey;
Begin
  with result do
  Begin
    nom := 0; dom := 1; n   := maxdom;
    c   := 1; d   := maxdom;
  end;
end;

function NextFarey(var fn:tNextFarey):boolean;
var
  k,tmp: longInt;
Begin
  with fn do
  Begin
    k := trunc((n + dom)/d);
    tmp := c;c:= k*c-nom;nom:= tmp;
    tmp := d;d:= k*d-dom;dom:= tmp;
    result := nom <> dom;
  end;
end;

procedure CheckFareyCount( num: NativeUint);
var
  TestF : tNextFarey;
  cnt : NativeUint;
Begin
  TestF:= InitFarey(num);
  cnt := 1;
  repeat
    inc(cnt);
  until NOT(NextFarey(TestF));

  writeln('F(',TestF.n:4,')  = ',cnt:7);
end;

var
  TestF : tNextFarey;
  cnt: NativeInt;
Begin

  Writeln('Farey sequence for order 1 through 11 (inclusive): ');

  For cnt := 1 to 11 do
  Begin
      TestF:= InitFarey(cnt);
      write('F(',cnt:2,') =  ');
      repeat
         write(TestF.nom,'/',TestF.dom,',');
     until NOT(NextFarey(TestF));
     writeln(TestF.nom,'/',TestF.dom);
   end;
  writeln;
  writeln('Number of fractions in the Farey sequence:');
  cnt := 100;
  repeat
    CheckFareyCount(cnt);
    inc(cnt,100);
  until cnt > 1000;
end.
{-------------------------------------------------------- 85 faulhabers-formula}
program Faulhaber;

{$IFDEF FPC} // Lazarus
  {$MODE Delphi} // ensure Lazarus accepts Delphi-style code
  {$ASSERTIONS+} // by default, Lazarus does not compile 'Assert' statements
{$ELSE}     // Delphi
  {$APPTYPE CONSOLE}
{$ENDIF}

uses SysUtils;

type TRational = record
  Num, Den : integer; // where Den > 0 and Num, Den are coprime
end;

const
  ZERO : TRational = ( Num: 0; Den : 1);
  HALF : TRational = ( Num: 1; Den : 2);

// Construct rational a/b, assuming b > 0.
function Rational( const a, b : integer) : TRational;
var
  t, x, y : integer;
begin
  if b <= 0 then raise SysUtils.Exception.Create( 'Denominator must be > 0');
  // Find HCF of a and b (Euclid's algorithm) and cancel it out.
  x := Abs(a);
  y := b;
  while y <> 0 do begin
    t := x mod y;
    x := y;
    y := t;
  end;
  result.Num := a div x;
  result.Den := b div x
end;

function Prod( r, s : TRational) : TRational; // result := r*s
begin
  result := Rational( r.Num*s.Num, r.Den*s.Den);
end;

procedure DecRat( var r : TRational;
                const s : TRational); // r := r - s
begin
  r := Rational( r.Num*s.Den - s.Num*r.Den, r.Den * s.Den);
end;

// Write a term such as ' - (7/10)n^6' to the console.
procedure WriteTerm( coeff : TRational;
                     index : integer;
                     printPlus : boolean);
begin
  if Coeff.Num = 0 then exit;
  with coeff do begin
    if Num < 0 then Write(' - ')
    else if printPlus then Write(' + ');
    // Put brackets round a fractional coefficient
    if (Den > 1) then Write('(');
    // If coefficient is 1, don't write it
    if (Den > 1) or (Abs(Num) > 1) then Write( Abs(Num));
    // Write denominator if it's not 1
    if (Den > 1) then Write('/', Den, ')');
  end;
  Write('n');
  if index > 1 then Write('^', index);
end;

{-------------------------------------------------------------------------------
Main routine. Calculation of Faulhaber polynomials
  F_p(n) = 1^p + 2^p + ... + n^p,  p = 0, 1, ..., p_max
}
var
  p_max : integer;
  c : array of array of TRational;
  i, j, p : integer;
  coeff_of_n : TRational;
begin
  // User types program name, optionally followed by maximum power p (defaults to 9)
  if ParamCount = 0 then p_max := 9
                    else p_max := SysUtils.StrToInt( ParamStr(1));

  // c[p, i] is coefficient of n^i in the polynomial F_p(n).
  // Initialize all coefficients to 0.
  SetLength( c, p_max + 1, p_max + 2);
  for i := 0 to p_max do
    for j := 0 to p_max + 1 do
      c[i, j] := ZERO;

  c[0, 1] := Rational(1, 1); // F_0(n) = n, special case
  for p := 1 to p_max do begin
    // Initialize calculation of coefficient of n, needed if p is even.
    // If p is odd, still calculate it as a check on the working (should be 0).
    // Calculation uses the fact that F_p(1) = 1.
    coeff_of_n := Rational(1, 1);

    c[p, p+1] := Rational(1, p + 1);
    DecRat( coeff_of_n, c[p, p + 1]);
    c[p, p] := HALF;
    DecRat( coeff_of_n, c[p, p]);
    i := p - 1;
    while (i >= 2) do begin
      c[p, i] := Prod( Rational(p, i), c[p - 1, i - 1]);
      DecRat( coeff_of_n, c[p, i]);
      dec(i, 2);
    end;
    if i = 1 then // p is even
      c[p, 1] := coeff_of_n // = the Bernoulli number B_p
    else // p is odd
      Assert( coeff_of_n.Num = 0); // just checking
  end; // for p

  // Print the result
  for p := 0 to p_max do begin
    Write( 'F_', p, '(n) = ');
    for j := p + 1 downto 1 do WriteTerm( c[p, j], j, j <= p);
    WriteLn;
  end;
end.
{--------------------------------------- 86 fibonacci-n-step-number-sequences-1}
program FibbonacciN (output);

type
  TintArray = array of integer;
const
  Name: array[2..11] of string = ('Fibonacci:  ',
                                  'Tribonacci: ',
                                  'Tetranacci: ',
                                  'Pentanacci: ',
                                  'Hexanacci:  ',
                                  'Heptanacci: ',
                                  'Octonacci:  ',
                                  'Nonanacci:  ',
                                  'Decanacci:  ',
                                  'Lucas:      '
                                 );
var
  sequence: TintArray;
  j, k: integer;

function CreateFibbo(n: integer): TintArray;
  var
    i: integer;
  begin
    setlength(CreateFibbo, n);
    CreateFibbo[0] := 1;
    CreateFibbo[1] := 1;
    i := 2;
    while i < n do
    begin
      CreateFibbo[i] := CreateFibbo[i-1] * 2;
      inc(i);
    end;
  end;

procedure Fibbonacci(var start: TintArray);
  const
    No_of_examples = 11;
  var
    n, i, j: integer;
  begin
    n := length(start);
    setlength(start, No_of_examples);
    for i := n to high(start) do
    begin
      start[i] := 0;
      for j := 1 to n do
        start[i] := start[i] + start[i-j]
    end;
  end;

begin
  for j := 2 to 10 do
  begin
    sequence := CreateFibbo(j);
    Fibbonacci(sequence);
    write (Name[j]);
    for k := low(sequence) to high(sequence) do
      write(sequence[k], ' ');
    writeln;
  end;
  setlength(sequence, 2);
  sequence[0] := 2;
  sequence[1] := 1;
  Fibbonacci(sequence);
  write (Name[11]);
  for k := low(sequence) to high(sequence) do
    write(sequence[k], ' ');
  writeln;
end.
{--------------------------------------- 87 fibonacci-n-step-number-sequences-2}
program FibbonacciN (output);
{$IFNDEF FPC}
   {$APPTYPE CONSOLE}
{$ENDIF}
const
  MAX_Nacci = 10;

  No_of_examples = 11;// max 90; (golden ratio)^No < 2^64
  Name: array[2..11] of string = ('Fibonacci:  ',
                                  'Tribonacci: ',
                                  'Tetranacci: ',
                                  'Pentanacci: ',
                                  'Hexanacci:  ',
                                  'Heptanacci: ',
                                  'Octonacci:  ',
                                  'Nonanacci:  ',
                                  'Decanacci:  ',
                                  'Lucas:      '
                                 );

type
  tfibIdx = 0..MAX_Nacci;
  tNacVal = Uint64;// longWord
  tNacci = record
             ncSum      : tNacVal;
             ncLastFib  : array[tFibIdx] of tNacVal;
             ncNextIdx  : array[tFibIdx] of tFibIdx;
             ncIdx      : tFibIdx;
             ncValue    : tFibIdx;
           end;


function CreateNacci(n: tFibIdx): TNacci;
var
  i : tFibIdx;
  sum :tNacVal;
begin
  //With result do
  with CreateNacci do
  begin
     ncLastFib[0] := 1;
     ncLastFib[1] := 1;
     For i := 2 to n-1 do
       ncLastFib[i] := ncLastFib[i-1] * 2;

     Sum := 0;
     For i := 0 to n-1 do
       sum := sum +ncLastFib[i];
     ncSum := Sum;
     //No need to do a compare
     //inc(idx);
     //if idx>= n then
     //  idx := 0;
     //idx := nextIdx[idx]
     For i := 0 to n-2 do
       ncNextIdx[i] := i+1;
     ncNextIdx[n-1] := 0;
     ncIdx   := 0;
  end;
end;

function LehmerCreate:TNacci;
begin
  with LehmerCreate do
  begin
     ncLastFib[0] := 2;
     ncLastFib[1] := 1;
     ncSum := 3;
     ncNextIdx[0] := 1;
     ncNextIdx[1] := 0;
     ncIdx   := 0;
  end;
end;

function NextNacci(var Nacci:tNacci):tNacVal;
var
  NewSum :tNacVal;
begin
  with Nacci do
  begin
    NewSum := 2*ncSum- ncLastFib[ncIdx];
    ncLastFib[ncIdx] := ncSum;
    ncIdx := ncNextIdx[ncIdx];
    NextNacci := ncSum;
    ncSum := NewSum;
  end;
end;

var
  Nacci : tNacci;
  j, k: integer;

BEGIN
  for j := 2 to 10 do
  begin
    Nacci := CreateNacci(j);
    write (Name[j]);
    For k := 0 to j-1 do
      write(Nacci.ncLastFib[k],' ');
    For k := j to No_of_examples-1 do
      write(NextNacci(Nacci),' ');
    writeln;
  end;

  write (Name[11]);
  j := 2;
  Nacci := LehmerCreate;
  For k := 0 to j-1 do
    write(Nacci.ncLastFib[k],' ');
  For k := j to No_of_examples-1 do
    write(NextNacci(Nacci),' ');
  writeln;
END.
{------------------------------------------------------ 88 fibonacci-sequence-7}
program Fibonacci_console;

{$mode objfpc}{$H+}

uses SysUtils;

function Fibonacci( n : word) : uint64;
{
Starts with the pair F[0],F[1]. At each iteration, uses the doubling formulae
to pass from F[k],F[k+1] to F[2k],F[2k+1]. If the current bit of n (starting
from the high end) is 1, there is a further step to F[2k+1],F[2k+2].
}
var
  marker, half_n : word;
  f, g : uint64; // pair of consecutive Fibonacci numbers
  t, u : uint64; // -----"-----
begin
  // The values of F[0], F[1], F[2]  are assumed to be known
  case n of
    0 : result := 0;
    1, 2 : result := 1;
    else begin
      half_n := n shr 1;
      marker := 1;
      while marker <= half_n do marker := marker shl 1;

      // First time: current bit is 1 by construction,
      //   so go straight from F[0],F[1] to F[1],F[2].
      f := 1; // = F[1]
      g := 1; // = F[2]
      marker := marker shr 1;

      while marker > 1 do begin
        t := f*(2*g - f);
        u := f*f + g*g;
        if (n and marker = 0) then begin
          f := t;
          g := u;
        end
        else begin
          f := u;
          g := t + u;
        end;
        marker := marker shr 1;
      end;

      // Last time: we need only one of the pair.
      if (n and marker = 0) then
        result := f*(2*g - f)
      else
        result := f*f + g*g;
    end; // end else (i.e. n > 2)
  end; // end case
end;

// Main program
var
  n : word;
begin
  for n := 0 to 93 do
    WriteLn( SysUtils.Format( 'F[%2u] = %20u', [n, Fibonacci(n)]));
end.
{------------------------------------------------------------ 89 fibonacci-word}
program FibWord;
{$IFDEF DELPHI}
   {$APPTYPE CONSOLE}
{$ENDIF}
const
  FibSMaxLen = 35;
type
  tFibString = string[2*FibSMaxLen];//Ansistring;
  tFibCnt = longWord;
  tFib = record
            ZeroCnt,
            OneCnt : tFibCnt;
//            fibS   : tFibString;//didn't work :-(
         end;
var
  FibSCheck : boolean;
  Fib0,Fib1 : tFib;
  FibS0,FibS1: tFibString;

procedure  FibInit;
Begin
  with Fib0 do
  begin
    ZeroCnt := 1;
    OneCnt  := 0;
  end;

  with Fib1 do
  begin
    ZeroCnt := 0;
    OneCnt  := 1;
  end;
  FibS0 := '1';
  FibS1 := '0';
  FibSCheck := true;
end;

Function FibLength(const F:Tfib):tFibCnt;
begin
  FibLength := F.ZeroCnt+F.OneCnt;
end;

function FibEntropy(const F:Tfib):extended;
const
  rcpLn2 = 1.0/ln(2);
var
  entrp,
  ratio: extended;
begin
  entrp := 0.0;
  ratio := F.ZeroCnt/FibLength(F);
  if Ratio <> 0.0 then
    entrp :=  -ratio*ln(ratio)*rcpLn2;
  ratio := F.OneCnt/FibLength(F);
  if Ratio <> 0.0 then
    entrp :=  entrp-ratio*ln(ratio)*rcpLn2;
  FibEntropy:=entrp
end;

procedure FibSExtend;
var
  tmpS : tFibString;
begin
  IF FibSCheck then
  begin
    tmpS  := FibS0+FibS1;
    FibS0 := FibS1;
    FibS1 := tmpS;
    FibSCheck := (length(FibS1) < FibSMaxLen);
  end;
end;

procedure FibNext;
var
  tmpFib : tFib;
Begin
  tmpFib.ZeroCnt := Fib0.ZeroCnt+Fib1.ZeroCnt;
  tmpFib.OneCnt  := Fib0.OneCnt +Fib1.OneCnt;
  Fib0 := Fib1;
  Fib1 := tmpFib;
  IF FibSCheck then
    FibSExtend;
end;

procedure FibWrite(const F:Tfib);
begin
//  With F do
//    write(ZeroCnt:10,OneCnt:10,FibLength(F):10,FibEntropy(f):17:14);
  write(FibLength(F):10,FibEntropy(F):17:14);
  IF FibSCheck then
    writeln('  ',FibS1)
  else
    writeln('  ....');
end;

var
  i : integer;
BEGIN
  FibInit;
  writeln('No.     Length   Entropy         Word');
  write(1:4);FibWrite(Fib0);
  write(2:4);FibWrite(Fib1);
  For i := 3 to 37 do
  begin
    FibNext;
    write(i:4);
    FibWrite(Fib1);
  end;
END.
{---------------------------------------------- 90 find-the-missing-permutation}
program MissPerm;
{$MODE DELPHI} //for result

const
  maxcol = 4;
type
  tmissPerm = 1..23;
  tcol = 1..maxcol;
  tResString = String[maxcol];
const
  Given_Permutations : array [tmissPerm] of tResString =
     ('ABCD', 'CABD', 'ACDB', 'DACB', 'BCDA', 'ACBD',
      'ADCB', 'CDAB', 'DABC', 'BCAD', 'CADB', 'CDBA',
      'CBAD', 'ABDC', 'ADBC', 'BDCA', 'DCBA', 'BACD',
      'BADC', 'BDAC', 'CBDA', 'DBCA', 'DCAB');
  chOfs =  Ord('A')-1;
var
  SumElemCol: array[tcol,tcol] of NativeInt;
function fib(n: NativeUint): NativeUint;
var
  i : NativeUint;
Begin
  result := 1;
  For i := 2 to n do
    result:= result*i;
end;

function CountOccurences: tresString;
//count the number of every letter in every column
//should be (colmax-1)! => 6
//the missing should count (colmax-1)! -1 => 5
var
  fibN_1 : NativeUint;
  row, col: NativeInt;
Begin
  For row := low(tmissPerm) to High(tmissPerm) do
    For col := low(tcol) to High(tcol) do
      inc(SumElemCol[col,ORD(Given_Permutations[row,col])-chOfs]);

  //search the missing
  fibN_1 := fib(maxcol-1)-1;
  setlength(result,maxcol);
  For col := low(tcol) to High(tcol) do
    For row := low(tcol) to High(tcol) do
      IF SumElemCol[col,row]=fibN_1 then
        result[col]:= ansichar(row+chOfs);
end;

function CheckXOR: tresString;
var
  row,col: NativeUint;
Begin
  setlength(result,maxcol);
  fillchar(result[1],maxcol,#0);
  For row := low(tmissPerm) to High(tmissPerm) do
    For col := low(tcol) to High(tcol) do
      result[col] := ansichar(ord(result[col]) XOR ord(Given_Permutations[row,col]));
end;

Begin
  writeln(CountOccurences,' is missing');
  writeln(CheckXOR,' is missing');
end.
{------------------ 91 first-power-of-2-that-has-leading-decimal-digits-of-12-2}
program Power2Digits;
uses
  sysutils,strUtils;
const
  L_float64 = sqr(sqr(65536.0));//2**64
  Log10_2_64 = TRUNC(L_float64*ln(2)/ln(10));

function FindExp(CntLmt,Number:NativeUint):NativeUint;
var
  Log10Num : extended;
  LmtUpper,LmtLower : UInt64;
  Frac64 : UInt64;
  i,dgts,cnt: NativeUInt;
begin
  i := Number;
  dgts := 1;
  while i >= 10 do
  Begin
    dgts *= 10;
    i := i div 10;
  end;
  //trunc is Int64 :-( so '316' was a limit
  Log10Num :=ln((Number+1)/dgts)/ln(10);
  IF Log10Num >= 0.5 then
  Begin
    IF (Number+1)/dgts < 10 then
    Begin
      LmtUpper := Trunc(Log10Num*(L_float64*0.5))*2;
      LmtUpper += Trunc(Log10Num*2);
    end
    else
      LmtUpper := 0;
    Log10Num :=ln(Number/dgts)/ln(10);
    LmtLower := Trunc(Log10Num*(L_float64*0.5))*2;
    LmtLower += Trunc(Log10Num*2);
  end
  Else
  Begin
    LmtUpper := Trunc(Log10Num*L_float64);
    LmtLower := Trunc(ln(Number/dgts)/ln(10)*L_float64);
  end;

  cnt := 0;
  i := 0;
  Frac64 := 0;
  IF LmtUpper <> 0 then
  Begin
    repeat
      inc(i);
      inc(Frac64,Log10_2_64);
      IF (Frac64>= LmtLower) AND (Frac64< LmtUpper) then
      Begin
        inc(cnt);
        IF cnt>= CntLmt then
          BREAK;
      end;
    until false
  end
  Else
  //searching for '999..'
  Begin
    repeat
      inc(i);
      inc(Frac64,Log10_2_64);
      IF (Frac64>= LmtLower) then
      Begin
        inc(cnt);
        IF cnt>= CntLmt then
          BREAK;
      end;
    until false
  end;
  write('The ',Numb2USA(IntToStr(cnt)),'th  occurrence of 2 raised to a power');
  write(' whose product starts with "',Numb2USA(IntToStr(number)));
  writeln('" is ',Numb2USA(IntToStr(i)));
  FindExp := i;
end;

Begin
  FindExp(1,12);
  FindExp(2,12);

  FindExp(45,223);
  FindExp(12345,123);
  FindExp(678910,123);

  FindExp(1,99);
end.
{----------------------------------------------------------- 92 floyds-triangle}
Program FloydDemo (input, output);

function digits(number: integer): integer;
  begin
    digits := trunc(ln(number) / ln(10)) + 1;
  end;

procedure floyd1 (numberOfLines: integer);
{ variant with repeat .. until loop }
  var
    i, j, numbersInLine, startOfLastlLine: integer;

  begin
    startOfLastlLine := (numberOfLines - 1) * numberOfLines div 2 + 1;
    i := 1;
    j := 1;
    numbersInLine := 1;
    repeat
      repeat
        write(i: digits(startOfLastlLine - 1 + j), ' ');
        inc(i);
	inc(j);
      until (j > numbersInLine);
      writeln;
      j := 1;
      inc(numbersInLine);
    until (numbersInLine > numberOfLines);
  end;

procedure floyd2 (numberOfLines: integer);
{ Variant with for .. do loop }
  var
    i, j, numbersInLine, startOfLastlLine: integer;

  begin
    startOfLastlLine := (numberOfLines - 1) * numberOfLines div 2 + 1;
    i := 1;
    for numbersInLine := 1 to numberOfLines do
    begin
      for j := 1 to numbersInLine do
      begin
        write(i: digits(startOfLastlLine - 1 + j), ' ');
        inc(i);
      end;
      writeln;
    end;
  end;

begin
  writeln ('*** Floyd 5 ***');
  floyd1(5);
  writeln;
  writeln ('*** Floyd 14 ***');
  floyd2(14);
end.
{-------------------------------------------------------- 93 forward-difference}
Program ForwardDifferenceDemo(output);

procedure fowardDifference(list: array of integer);
  var
    b: array of integer;
    i, newlength: integer;
  begin
    newlength := length(list) - 1;
    if newlength > 0 then
    begin
      setlength(b, newlength);
      for i := low(b) to high(b) do
      begin
        b[i] := list[i+1] - list[i];
        write (b[i]:6);
      end;
      writeln;
      fowardDifference(b);
    end;
  end;

var
  a: array [1..10] of integer = (90, 47, 58, 29, 22, 32, 55, 5, 55, 73);
begin
  fowardDifference(a);
end.
{------------------------------------------------------------- 94 fusc-sequence}
program fusc;
uses
  sysutils;
const
{$IFDEF FPC}
  MaxIdx = 1253 * 1000 * 1000; //19573420; // must be even
{$ELSE}
  // Dynamics arrays in Delphi cann't be to large
  MaxIdx = 19573420;
 {$ENDIF}

type
  tFuscElem = LongWord;
  tFusc = array of tFuscElem;
var
  FuscField : tFusc;

function commatize(n:NativeUint):string;
var
  l,i : NativeUint;
begin
  str(n,result);
  l := length(result);
  //no commatize
  if l < 4 then
    exit;
  //new length
  i := l+ (l-1) DIV 3;
  setlength(result,i);
  //copy chars to the right place
  While i <> l do
  Begin
    result[i]:= result[l];result[i-1]:= result[l-1];
    result[i-2]:= result[l-2];result[i-3]:= ',';
    dec(i,4);dec(l,3);
  end;
end;

procedure OutFusc(StartIdx,EndIdx :NativeInt;const FF:tFusc);
Begin
  IF StartIdx < Low(FF) then StartIdx :=Low(FF);
  IF EndIdx > High(FF) then EndIdx := High(FF);
  For StartIdx := StartIdx to EndIdx do
    write(FF[StartIdx],' ');
  writeln;
end;

procedure FuscCalc(var FF:tFusc);
var
  pFFn,pFFi : ^tFuscElem;
  i,n,sum : NativeUint;
Begin
  FF[0]:= 0;
  FF[1]:= 1;
  n := 2;
  i := 1;
  pFFn := @FF[n];
  pFFi := @FF[i];
  sum := pFFi^;
  while n <= MaxIdx-2 do
  begin
    //even
    pFFn^ := sum;//FF[n] := FF[i];
    //odd
    inc(pFFi);//FF[i+1]
    inc(pFFn);//FF[n+1]
    sum := sum+pFFi^;
    pFFn^:= sum; //FF[n+1] := FF[i]+FF[i+1];
    sum := pFFi^;
    inc(pFFn);
    inc(n,2);
    //inc(i);
  end;
end;

procedure OutHeader(base:NativeInt);
begin
  writeln('Fusc numbers with more digits in base ',base,' than all previous ones:');
  writeln('Value':10,'Index':10,'  IndexNum/IndexNumBefore');
  writeln('======':10,' =======':14);
end;

procedure CheckFuscDigits(const FF:tFusc;Base:NativeUint);
var
  pFF : ^tFuscElem;
  Dig,
  i,lastIdx: NativeInt;
Begin
  OutHeader(base);
  Dig := -1;
  i := 0;
  lastIdx := 0;
  pFF := @FF[0];// aka FF[i]
  repeat
    //search in tight loop speeds up
    repeat
      inc(pFF);
      inc(i);
    until pFF^ >Dig;

    if i>= MaxIdx then
      BREAK;
    //output
    write(commatize(pFF^):10,commatize(i):14);//,DIG:10);
    IF lastIdx> 0 then
      write(i/lastIdx:12:7);
    writeln;
    lastIdx := i;
    IF Dig >0 then
      Dig := Dig*Base+Base-1
    else
     Dig := Base-1;
  until false;
  writeln;
end;

BEGIN
  setlength(FuscField,MaxIdx);
  FuscCalc(FuscField);
  writeln('First 61 fusc numbers:');
  OutFusc(0,60,FuscField);

  CheckFuscDigits(FuscField,10);
  CheckFuscDigits(FuscField,11); //11 ~phi^5  1.6180..^5 = 11,09
  setlength(FuscField,0);
  {$IFDEF WIN}readln;{$ENDIF}
END.
{---------------------------------------------------------- 95 gapful-numbers-2}
program gapful;
{$IFDEF FPC}
   {$MODE DELPHI}{$OPTIMIZATION ON,ALL}
{$ELSE}
  {$APPTYPE CONSOLE}
{$ENDIF}
uses
  sysutils,// IntToStr
  strUtils;// Numb2USA aka commatize

var
  LCMsHL : array of NativeInt;

function GCD(a, b: Int64): Int64;
var
  temp: Int64;
begin
  while b <> 0 do
  begin
    temp := b;
    b := a mod b;
    a := temp
  end;
  result := a
end;

function LCM(a, b: Int64): Int64;
begin
  LCM := (a DIV GCD(a,b)) * b;
end;

procedure InitLCM(Base:NativeInt);
var
  i : integer;
Begin
  For i := Base to (Base*Base-1) do
    LCMsHL[i] := LCM(i,Base);
end;

function CountGapFul(H_Digit,Base:NativeInt;PotBase:Uint64):Uint64;
//Counts gapfulnumbers [n*PotBase..(n+1)*PotBase -1] ala [100..199]
var
  EndDgt,Dgt : NativeInt;
  P,k,lmt,sum,dSum: UInt64;
begin
  P := PotBase*H_Digit;
  lmt := P+PotBase-1;
  Dgt := H_Digit*Base;
  sum := (PotBase-1) DIV dgt +1;
  For EndDgt := 1 to Base-1 do
  Begin
    inc(Dgt);
    //search start
    //first value divisible by dgt
    k := p-(p MOD dgt)+ dgt;
    //value divisible by dgt ending in the right digit
    while (k mod Base) <> EndDgt do
      inc(k,dgt);
    IF k> lmt then
      continue;
    //one found +1
    //count the occurences in (lmt-k)
    dSum := (lmt-k) DIV LCMsHL[dgt] +1;
    inc(sum,dSum);
    //writeln(dgt:5,k:21,dSum:21,Sum:21);
  end;
  //writeln(p:21,Sum:21);
  CountGapFul := sum;
end;

procedure Main(Base:NativeUInt);
var
  i : NativeUInt;
  pot,total,lmt: Uint64;//High(Uint64) = 2^64-1
Begin
  lmt := High(pot) DIV Base;
  pot := sqr(Base);//"100" in Base
  setlength(LCMsHL,pot);
  InitLCM(Base);
  total := 0;
  repeat
    IF pot > lmt then
      break;
    For i := 1 to Base-1 do //ala  100..199 ,200..299,300..399,..,900..999
      inc(total,CountGapFul(i,base,pot));
    pot *= Base;
    writeln('Total [',sqr(Base),'..',Numb2USA(IntToStr(pot)),'] : ',Numb2USA(IntToStr(total+1)));
  until false;
  setlength(LCMsHL,0);
end;

BEGIN
  Main(10);
  Main(100);
END.
{------------------------------------------------------------ 96 generic-swap-1}
program generictest;

{$mode objfpc}

type
  generic TSwap<T> = procedure (var a, b: T);

procedure Proc1(var a, b: integer);
  var
    temp: integer;
  begin
    temp := a;
    a := b;
    b := temp;
  end;

var
  S, T: integer;
  SwapInt: specialize TSwap<integer>;

begin
  S := 4;
  T := 3;
  SwapInt := @Proc1;
  writeln(S, T:2);
  SwapInt(S, T);
  writeln(S, T:2);
end.
{------------------------------------------------------------ 97 generic-swap-2}
program generic_test;
{$mode objfpc}{H+}
uses
  SysUtils;

generic procedure GSwap<T>(var L, R: T);
var
  Tmp: T;
begin
  Tmp := L;
  L := R;
  R := Tmp;
end;

var
  I, J: Integer;
begin
  I := 100;
  J := 11;
  WriteLn('I = ',  I, ', J = ', J);
  specialize GSwap<Integer>(I, J);
  WriteLn('I = ',  I, ', J = ', J);
end.
{------------------------------------------------- 98 greatest-common-divisor-1}
PROGRAM EXRECURGCD.PAS;

{$IFDEF FPC}
    {$mode objfpc}{$H+}{$J-}{R+}
{$ELSE}
    {$APPTYPE CONSOLE}
{$ENDIF}

(*)
    Free Pascal Compiler version 3.2.0 [2020/06/14] for x86_64
    The free and readable alternative at C/C++ speeds
    compiles natively to almost any platform, including raspberry PI
(*)

FUNCTION gcd_recursive(u, v: longint): longint;

    BEGIN
        IF ( v = 0 ) THEN Exit ( u ) ;
        result := gcd_recursive ( v, u MOD v ) ;
    END;

BEGIN

    WriteLn ( gcd_recursive ( 231, 7 ) ) ;

END.

{--------------------------------------------------- 99 greatest-common-divisor}
program GCF (INPUT, OUTPUT);
  var
    a,b,c:integer;
  begin
    writeln('Enter 1st number');
    read(a);
    writeln('Enter 2nd number');
    read(b);
    while (a*b<>0)
      do
      begin
        c:=a;
        a:=b mod a;
        b:=c;
      end;
    writeln('GCF :=', a+b );
  end.
{----------------------------------------------- 100 greatest-subsequential-sum}
Program GreatestSubsequentialSum(output);

var
  a: array[1..11] of integer = (-1, -2, 3, 5, 6, -2, -1, 4, -4, 2, -1);
  i, j: integer;
  seqStart, seqEnd: integer;
  maxSum, seqSum: integer;

begin
  maxSum   := 0;
  seqStart := 0;
  seqEnd   := -1;
  for i := low(a) to high(a) do
  begin
    seqSum := 0;
    for j := i to high(a) do
    begin
      seqSum := seqSum + a[j];
      if seqSum > maxSum then
      begin
        maxSum   := seqSum;
        seqStart := i;
        seqEnd   := j;
      end;
    end;
  end;

  writeln ('Sequence: ');
  for i := low(a) to high(a) do
    write (a[i]:3);
  writeln;
  writeln ('Subsequence with greatest sum: ');
  for i := low(a) to seqStart - 1 do
    write (' ':3);
  for i := seqStart to seqEnd do
    write (a[i]:3);
  writeln;
  writeln ('Sum:');
  writeln (maxSum);
end.
{--------------------------------------------------------- 101 guess-the-number}
Program GuessTheNumber(input, output);

var
  number, guess: integer;

begin
  randomize;
  number := random(10) + 1;
  writeln ('I''m thinking of a number between 1 and 10, which you should guess.');
  write   ('Enter your guess: ');
  readln  (guess);
  while guess <> number do
  begin
    writeln ('Sorry, but your guess is wrong. Please try again.');
    write   ('Enter your new guess: ');
    readln  (guess);
  end;
  writeln ('You made an excellent guess. Thank you and have a nice day.');
end.
{------------------------------------------------------- 102 hailstone-sequence}
program ShowHailstoneSequence;
{$IFDEF FPC}
  {$MODE delphi} //or objfpc
{$Else}
  {$Apptype Console} // for delphi
{$ENDIF}
uses
  SysUtils;// format
const
  maxN = 10*1000*1000;// for output 1000*1000*1000

type
  tiaArr = array[0..1000] of Uint64;
  tIntArr = record
               iaMaxPos : integer;
               iaArr    : tiaArr
            end;
  tpiaArr = ^tiaArr;

function HailstoneSeqCnt(n: UInt64): NativeInt;
begin
  result := 0;
  //ensure n to be odd
  while not(ODD(n)) do
  Begin
    inc(result);
    n := n shr 1;
  end;

  IF n > 1 then
  repeat
    //now n == odd -> so two steps in one can be made
    repeat
      n := (3*n+1) SHR 1;inc(result,2);
    until NOT(Odd(n));
    //now n == even -> so only one step can be made
    repeat
      n := n shr 1;      inc(result);
    until odd(n);
  until n = 1;
end;

procedure GetHailstoneSequence(aStartingNumber: NativeUint;var aHailstoneList: tIntArr);
var
  maxPos: NativeInt;
  n: UInt64;
  pArr : tpiaArr;
begin
  with aHailstoneList do
  begin
    maxPos := 0;
    pArr := @iaArr;
  end;
  n  := aStartingNumber;
  pArr^[maxPos] := n;
  while n <> 1 do
  begin
    if odd(n) then
      n := (3*n+1)
    else
      n := n shr 1;
    inc(maxPos);
    pArr^[maxPos] := n;
  end;
  aHailstoneList.iaMaxPos  := maxPos;
end;

var
  i,Limit: NativeInt;
  lList: tIntArr;
  lAverageLength:Uint64;
  lMaxSequence: NativeInt;
  lMaxLength,lgth: NativeInt;
begin
  lList.iaMaxPos := 0;
  GetHailstoneSequence(27, lList);//319804831
  with lList do
  begin
    Limit := iaMaxPos;
    writeln(Format('sequence of %d has %d  elements',[iaArr[0],Limit+1]));
    write(iaArr[0],',',iaArr[1],',',iaArr[2],',',iaArr[3],'..');
    For i := iaMaxPos-3 to iaMaxPos-1 do
       write(iaArr[i],',');
    writeln(iaArr[iaMaxPos]);
  end;
  Writeln;

  lMaxSequence := 0;
  lMaxLength := 0;
  i := 1;
  limit := 10*i;
  writeln(' Limit      : number with max length | average length');
  repeat
    lAverageLength:= 0;
    repeat
      lgth:= HailstoneSeqCnt(i);
      inc(lAverageLength, lgth);
      if lgth >= lMaxLength then
      begin
        lMaxSequence := i;
        lMaxLength := lgth+1;
      end;
      inc(i);
    until i = Limit;
    Writeln(Format(' %10d : %9d    |  %4d   |      %7.3f',
                   [limit,lMaxSequence, lMaxLength,0.9*lAverageLength/Limit]));
    limit := limit*10;
  until Limit > maxN;
end.
{-------------------------------------------------------- 103 hamming-numbers-1}
program HammNumb;
{$IFDEF FPC}
  {$MODE DELPHI}
  {$OPTIMIZATION ON}
{$ELSE}
  {$APPTYPE CONSOLE}
{$ENDIF}
{
type
  NativeUInt = longWord;
}
var
  pot   : array[0..2] of NativeUInt;

function NextHammNumb(n:NativeUInt):NativeUInt;
var
  q,p,nr : NativeUInt;
begin
  repeat
    nr := n+1;
    n := nr;

    p := 0;
    while NOT(ODD(nr)) do
    begin
      inc(p);
      nr := nr div 2;
    end;
    Pot[0]:= p;

    p := 0;
    q := nr div 3;
    while q*3=nr do
    Begin
      inc(P);
      nr := q;
      q := nr div 3;
    end;
    Pot[1] := p;

    p := 0;
    q := nr div 5;
    while q*5=nr do
    Begin
      inc(P);
      nr := q;
      q := nr div 5;
    end;
    Pot[2] := p;

  until nr = 1;
  result:= n;
end;

procedure Check;
var
  i,n: NativeUint;
begin
  n := 1;
  for i := 1 to 20 do
  begin
    n := NextHammNumb(n);
    write(n,' ');
  end;
  writeln;
  writeln;
  n := 1;
  for i := 1 to 1690 do
    n := NextHammNumb(n);
  writeln('No ',i:4,' | ',n,' = 2^',Pot[0],' 3^',Pot[1],' 5^',Pot[2]);
end;

Begin
  Check;
End.
{---------------------------------------------------------- 104 happy-numbers-1}
Program HappyNumbers (output);

uses
  Math;

function find(n: integer; cache: array of integer): boolean;
  var
    i: integer;
  begin
    find := false;
    for i := low(cache) to high(cache) do
      if cache[i] = n then
        find := true;
  end;

function is_happy(n: integer): boolean;
  var
    cache: array of integer;
    sum: integer;
  begin
    setlength(cache, 1);
    repeat
      sum := 0;
      while n > 0 do
      begin
        sum := sum + (n mod 10)**2;
        n := n div 10;
      end;
      if sum = 1 then
      begin
        is_happy := true;
        break;
      end;
      if find(sum, cache) then
      begin
        is_happy := false;
        break;
      end;
      n := sum;
      cache[high(cache)]:= sum;
      setlength(cache, length(cache)+1);
    until false;
  end;

var
  n, count: integer;

begin
  n := 1;
  count := 0;
  while count < 8 do
  begin
    if is_happy(n) then
    begin
      inc(count);
      write(n, ' ');
    end;
    inc(n);
  end;
  writeln;
end.
{----------------------------------------------------- 105 hash-from-two-arrays}
program HashFromTwoArrays (Output);

uses
  contnrs;

var
  keys:   array[1..3] of string  = ('a', 'b', 'c');
  values: array[1..3] of integer = ( 1,   2,   3 );
  hash:   TFPDataHashTable;
  i:      integer;

begin
  hash := TFPDataHashTable.Create;
  for i := low(keys) to high(keys) do
    hash.add(keys[i], @values[i]);
  writeln ('Length of hash table: ', hash.Count);
  hash.Destroy;
end.
{-------------------------------------------------------- 106 haversine-formula}
Program HaversineDemo(output);

uses
  Math;

function haversineDist(th1, ph1, th2, ph2: double): double;
  const
   diameter = 2 * 6372.8;
  var
    dx, dy, dz: double;
  begin
    ph1 := degtorad(ph1 - ph2);
    th1 := degtorad(th1);
    th2 := degtorad(th2);

    dz := sin(th1) - sin(th2);
    dx := cos(ph1) * cos(th1) - cos(th2);
    dy := sin(ph1) * cos(th1);
    haversineDist := arcsin(sqrt(dx**2 + dy**2 + dz**2) / 2) * diameter;
  end;

begin
  writeln ('Haversine distance: ', haversineDist(36.12, -86.67, 33.94, -118.4):7:2, ' km.');
end.
{--------------------------------------------- 107 hello-world-newline-omission}
program NewLineOmission(output);

begin
  write('Goodbye, World!');
end.
{--------------------------------------------------------- 108 hello-world-text}
program byeworld;
begin
 writeln('Hello world!');
end.
{------------------------------------------------------- 109 heronian-triangles}
program heronianTriangles ( input, output );
type
    (* record to hold details of a Heronian triangle *)
    Heronian    = record a, b, c, area, perimeter : integer end;
    refHeronian = ^Heronian;

var

    ht             : array [ 1 .. 1000 ] of refHeronian;
    htCount, htPos : integer;
    a, b, c, i     : integer;
    lower, upper   : integer;
    k, h, t        : refHeronian;
    swapped        : boolean;

    (* returns the details of the Heronian Triangle with sides a, b, c or nil if it isn't one *)
    function tryHt( a, b, c : integer ) : refHeronian;
    var
        s, areaSquared, area : real;
        t                    : refHeronian;
    begin
        s           := ( a + b + c ) / 2;
        areaSquared := s * ( s - a ) * ( s - b ) * ( s - c );
        t           := nil;
        if areaSquared > 0 then begin
            (* a, b, c does form a triangle *)
            area    := sqrt( areaSquared );
            if trunc( area ) = area then begin
                (* the area is integral so the triangle is Heronian *)
                new(t);
                t^.a := a; t^.b := b; t^.c := c; t^.area := trunc( area ); t^.perimeter := a + b + c
            end
        end;
        tryHt := t
    end (* tryHt *) ;

    (* returns the GCD of a and b *)
    function gcd( a, b : integer ) : integer;
    begin
        if b = 0 then gcd := a else gcd := gcd( b, a mod b )
    end (* gcd *) ;

    (* prints the details of the Heronian triangle t *)
    procedure htPrint( t : refHeronian ) ; begin writeln( t^.a:4, t^.b:5, t^.c:5, t^.area:5, t^.perimeter:10 ) end;
    (* prints headings for the Heronian Triangle table *)
    procedure htTitle ; begin writeln( '   a    b    c area perimeter' ); writeln( '---- ---- ---- ---- ---------' ) end;

begin
    (* construct ht as a table of the Heronian Triangles with sides up to 200 *)
    htCount := 0;
    for c := 1 to 200 do begin
        for b := 1 to c do begin
            for a := 1 to b do begin
                if gcd( gcd( a, b ), c ) = 1 then begin
                    t := tryHt( a, b, c );
                    if t <> nil then begin
                        htCount       := htCount + 1;
                        ht[ htCount ] := t
                    end
                end
            end
        end
    end;

    (* sort the table on ascending area, perimeter and max side length *)
    (* note we constructed the triangles with c as the longest side *)
    lower := 1;
    upper := htCount;
    repeat
        upper   := upper - 1;
        swapped := false;
        for i := lower to upper do begin
            h := ht[ i     ];
            k := ht[ i + 1 ];
            if ( k^.area < h^.area ) or (   ( k^.area =  h^.area )
                                        and (  ( k^.perimeter <  h^.perimeter )
                                            or (   ( k^.perimeter = h^.perimeter )
                                               and ( k^.c <  h^.c )
                                               )
                                            )
                                        )
            then begin
                ht[ i     ] := k;
                ht[ i + 1 ] := h;
                swapped     := true
            end
        end;
    until not swapped;

    (* display the triangles *)
    writeln( 'There are ', htCount:1, ' Heronian triangles with sides up to 200' );
    htTitle;
    for htPos := 1 to 10 do htPrint( ht[ htPos ] );
    writeln( ' ...' );
    writeln( 'Heronian triangles with area 210:' );
    htTitle;
    for htPos := 1 to htCount do begin
        t := ht[ htPos ];
        if t^.area = 210 then htPrint( t )
    end
end.
{------------------------------------------------- 110 higher-order-functions-1}
program example(output);

function first(function f(x: real): real): real;
 begin
  first := f(1.0) + 2.0;
 end;

function second(x: real): real;
 begin
  second := x/2.0;
 end;

begin
 writeln(first(second));
end.
{------------------------------------------------- 111 higher-order-functions-2}
program example;

type
   FnType = function(x: real): real;

function first(f: FnType): real;
begin
   first := f(1.0) + 2.0;
end;

{$F+}
function second(x: real): real;
begin
   second := x/2.0;
end;
{$F-}

begin
   writeln(first(second));
end.
{--------------------------------------- 112 hofstadter-conway-_10-000-sequence}
program HofStadterConway;
const
  Pot2 = 20;// tested with 30 -> 4 GB;
type
  tfeld = array[0..1 shl Pot2] of LongWord;
  tpFeld = ^tFeld;
  tMaxPos = record
              mpMax : double;
              mpValue,
              mpPos : longWord;
            end;
  tArrMaxPos = array[0..Pot2-1] of tMaxPos;
var
  a : tpFeld;
  MaxPos : tArrMaxPos;

procedure Init(a:tpFeld);
var
  n,k: LongWord;
begin
  a^[1]:= 1;
  a^[2]:= 1;
  //a[n] := a[a[n-1]]+a[n-a[n-1]];
  //k := a[n-1]
  k := a^[2];
  For n := 3 to High(a^) do
  Begin
    k := a^[k]+a^[n-k];
    a^[n] := k;
  end;
end;

function GetMax(a:tpFeld;starts,ends:LongWord):tMaxPos;
var
  posMax : LongWord;
  r,
  max : double;
Begin
  posMax:= starts;
  max := 0.0;
  repeat
    r := a^[starts]/ starts;
    IF max < r then
    Begin
      max := r;
      posMax := starts;
    end;
    inc(starts);
  until starts >= ends;
  with GetMax do
  Begin
    mpPos:= posMax;
    mpValue := a^[posMax];
    mpMax:= max;
  end;
end;

procedure SearchMax(a:tpFeld);
var
  ends,idx : LongWord;
begin
  idx := 0;
  ends := 2;
  while ends <=  High(a^) do
  Begin
    MaxPos[idx]:=GetMax(a,ends shr 1,ends);
    ends := 2*ends;
    inc(idx);
  end;
end;

procedure OutputMax;
var
  i : integer;
begin
  For i := Low(MaxPos) to High(MaxPOs)  do
    with MaxPos[i] do
    Begin
      Write('Max between 2^',i:2,' and 2^',i+1:2);
      writeln(mpMax:14:11,' at ',mpPos:9,' value :',mpValue:10);
    end;
  writeln;
end;

function SearchLastPos(a:tpFeld;limit: double):LongInt;
var
  i,l : LongInt;
Begin
  Limit := limit;
  IF (Limit>1.0 ) OR (Limit < 0.5) then
  Begin
    SearchLastPos := -1;
    EXIT;
  end;

  i := 0;
  while (i<=High(MaxPos)) AND  (MaxPos[i].mpMax > Limit) do
    inc(i);
  dec(i);
  l := MaxPos[i].mpPos;
  i := 1 shl (i+1);
  while (l< i) AND (a^[i]/i < limit)  do
    dec(i);
  SearchLastPos := i;
end;

var
  p : Pointer;
  l : double;
Begin
  //using getmem because FPCs new is limited to 2^31-1 Byte for the test 2^30 )
  getmem(p,SizeOf(tfeld));
  a := p;
  Init(a);
  SearchMax(a);
  outputMax;
  l:= 0.55;
  writeln('Mallows number with limit ',l:10:8,' at ',SearchLastPos(a,l));
  freemem(p);
end.
{---------------------------------------------------- 113 hofstadter-q-sequence}
Program HofstadterQSequence (output);

const
  limit = 100000;

var
  q: array [1..limit] of longint;
  i, flips: longint;

begin
  q[1] := 1;
  q[2] := 1;
  for i := 3 to limit do
    q[i] := q[i - q[i - 1]] + q[i - q[i - 2]];
  for i := 1 to 10 do
    write(q[i], ' ');
  writeln;
  writeln(q[1000]);
  flips := 0;
  for i := 1 to limit - 1 do
    if q[i] > q[i+1] then
      inc(flips);
  writeln('Flips: ', flips);
end.
{-------------------------------------------------- 114 hopcroft-karp-algorithm}
program HopcroftKarp;

{$mode objfpc}{$H+}

uses
  Classes, SysUtils, fgl;

const
  NIL_VERTEX = 0;
  INFINITE_LEVEL = MaxInt;

type
  // Edge structure
  TEdge = record
    from, to_: Integer;
  end;

  // Dynamic array of integers
  TIntArray = array of Integer;

  // Dynamic array of integer arrays
  TIntArray2D = array of TIntArray;

  // Bipartite graph class
  TBipartiteGraph = class
  private
    m, n: Integer;                           // Size of partitions
    adjacency_lists: TIntArray2D;            // Adjacency lists for U vertices
    pair_u, pair_v: TIntArray;               // Matching pairs
    levels: TIntArray;                       // BFS levels

    // Helper methods
    function BreadthFirstSearch: Boolean;
    function DepthFirstSearch(u: Integer): Boolean;

  public
    constructor Create(aM, aN: Integer);
    procedure AddEdge(u, v: Integer);
    function HopcroftKarpAlgorithm: Integer;
  end;

constructor TBipartiteGraph.Create(aM, aN: Integer);
begin
  m := aM;
  n := aN;

  // Initialize adjacency lists
  SetLength(adjacency_lists, m + 1);

  // Initialize matching arrays
  SetLength(pair_u, m + 1);
  SetLength(pair_v, n + 1);

  // Initialize levels array
  SetLength(levels, m + 1);
end;

procedure TBipartiteGraph.AddEdge(u, v: Integer);
begin
  if (u >= 1) and (u <= m) and (v >= 1) and (v <= n) then
  begin
    SetLength(adjacency_lists[u], Length(adjacency_lists[u]) + 1);
    adjacency_lists[u][High(adjacency_lists[u])] := v;
  end
  else
  begin
    raise Exception.Create('Attempt to add an edge (' +
                          IntToStr(u) + ', ' + IntToStr(v) +
                          ') which is out of bounds');
  end;
end;

function TBipartiteGraph.HopcroftKarpAlgorithm: Integer;
var
  u: Integer;
  matching_size: Integer;
begin
  // Initialize matching
  for u := 0 to m do
    pair_u[u] := NIL_VERTEX;
  for u := 0 to n do
    pair_v[u] := NIL_VERTEX;

  matching_size := 0;

  while BreadthFirstSearch do
  begin
    for u := 1 to m do
    begin
      if (pair_u[u] = NIL_VERTEX) and DepthFirstSearch(u) then
      begin
        Inc(matching_size);
      end;
    end;
  end;

  Result := matching_size;
end;

function TBipartiteGraph.BreadthFirstSearch: Boolean;
var
  queue: specialize TFPGList<Integer>;
  u, v, matched_u, i: Integer;
begin
  queue := specialize TFPGList<Integer>.Create;
  try
    // Initialize levels for vertices in U
    for u := 1 to m do
    begin
      if pair_u[u] = NIL_VERTEX then
      begin
        levels[u] := 0;
        queue.Add(u);
      end
      else
      begin
        levels[u] := INFINITE_LEVEL;
      end;
    end;

    // Level of NIL represents shortest augmenting path length
    levels[NIL_VERTEX] := INFINITE_LEVEL;

    while queue.Count > 0 do
    begin
      u := queue[0];
      queue.Delete(0);

      if levels[u] < levels[NIL_VERTEX] then
      begin
        // Explore neighbors v of u in V
        for i := 0 to High(adjacency_lists[u]) do
        begin
          v := adjacency_lists[u][i];
          matched_u := pair_v[v];

          if levels[matched_u] = INFINITE_LEVEL then
          begin
            levels[matched_u] := levels[u] + 1;
            queue.Add(matched_u);
          end;
        end;
      end;
    end;

    Result := (levels[NIL_VERTEX] <> INFINITE_LEVEL);
  finally
    queue.Free;
  end;
end;

function TBipartiteGraph.DepthFirstSearch(u: Integer): Boolean;
var
  v, matched_u, i: Integer;
begin
  if u <> NIL_VERTEX then
  begin
    // Explore neighbors v of u in V
    for i := 0 to High(adjacency_lists[u]) do
    begin
      v := adjacency_lists[u][i];
      matched_u := pair_v[v];

      // Check if edge leads to a vertex on shortest augmenting path
      if levels[matched_u] = levels[u] + 1 then
      begin
        if DepthFirstSearch(matched_u) then
        begin
          pair_v[v] := u;
          pair_u[u] := v;
          Result := True;
          Exit;
        end;
      end;
    end;

    // No augmenting path found, remove from DFS
    levels[u] := INFINITE_LEVEL;
    Result := False;
  end
  else
  begin
    // NIL vertex reached, augmenting path found
    Result := True;
  end;
end;

// Test function
function TestValue(testNumber, m, n: Integer; edges: array of TEdge; expected_result: Integer): Integer;
var
  graph: TBipartiteGraph;
  i: Integer;
  result_value: Integer;
begin
  graph := TBipartiteGraph.Create(m, n);
  try
    for i := 0 to High(edges) do
    begin
      graph.AddEdge(edges[i].from, edges[i].to_);
    end;

    result_value := graph.HopcroftKarpAlgorithm;
    WriteLn('Test ', testNumber, ': Result = ', result_value, ', Expected = ', expected_result);

    if result_value = expected_result then
    begin
      Result := 1;
    end
    else
    begin
      WriteLn('Test ', testNumber, ' failed.');
      Result := 0;
    end;
  finally
    graph.Free;
  end;
end;

// Main procedure
var
  success_count: Integer;
  edges: array of TEdge;
  i, j, idx: Integer;

begin
  WriteLn('Running tests:');
  success_count := 0;

  // Test Case 1
  SetLength(edges, 1);
  edges[0].from := 1;
  edges[0].to_ := 4;
  success_count := success_count + TestValue(1, 3, 5, edges, 1);

  // Test Case 2
  SetLength(edges, 3);
  edges[0].from := 1;
  edges[0].to_ := 4;
  edges[1].from := 1;
  edges[1].to_ := 5;
  edges[2].from := 5;
  edges[2].to_ := 1;
  success_count := success_count + TestValue(2, 6, 6, edges, 2);

  // Test Case 3: Complete Bipartite Graph K(3, 3)
  SetLength(edges, 9);
  idx := 0;
  for i := 1 to 3 do
  begin
    for j := 1 to 3 do
    begin
      edges[idx].from := i;
      edges[idx].to_ := j;
      Inc(idx);
    end;
  end;
  success_count := success_count + TestValue(3, 3, 3, edges, 3);

  // Test Case 4: No edges
  SetLength(edges, 0);
  success_count := success_count + TestValue(4, 2, 2, edges, 0);

  // Test Case 5
  SetLength(edges, 6);
  edges[0].from := 1;
  edges[0].to_ := 1;
  edges[1].from := 1;
  edges[1].to_ := 3;
  edges[2].from := 2;
  edges[2].to_ := 3;
  edges[3].from := 3;
  edges[3].to_ := 4;
  edges[4].from := 4;
  edges[4].to_ := 3;
  edges[5].from := 4;
  edges[5].to_ := 2;
  success_count := success_count + TestValue(5, 4, 4, edges, 4);

  if success_count = 5 then
  begin
    WriteLn('All tests passed.');
  end;
end.
{------------------------------------------ 115 horizontal-sundial-calculations}
Program SunDial;

Const
   pi  = 3.14159265358979323846;
   dr  = pi/180.0;
   rd  = 180.0/pi;
   tab =  chr(9);

Var
   lat, slat, lng, ref : Real;
   hla, hra	       : Real;
   h		       : Integer;

function tan(val : Real) : Real;
begin
   tan := sin(val)/cos(val)
end;

Begin
   Write('Enter latitude: '); Read(lat);
   Write('Enter longitude: '); Read(lng);
   Write('Enter legal meridian: '); Read(ref);
   WriteLn;
   slat := sin(lat * dr);
   WriteLn('sine of latitude: ', slat);
   WriteLn('diff longitude: ', lng - ref);
   WriteLn('Hour, sun hour angle, dial hour line angle from 6am to 6pm');
   for h := -6 to 6 do begin
      hra := 15.0 * h;
      hra := hra - lng + ref;
      hla := arctan(slat * tan(hra * dr)) * rd;
      WriteLn('HR= ', h:3, ';  ',
	      tab, '  HRA= ', hra:7:3, ';  ',
	      tab, '  HLA= ', hla:7:3)
   end
end.
{----------------------------------- 116 horners-rule-for-polynomial-evaluation}
Program HornerDemo(output);

function horner(a: array of double; x: double): double;
  var
    i: integer;
  begin
    horner := a[high(a)];
    for i := high(a) - 1 downto low(a) do
      horner := horner * x + a[i];
  end;

const
  poly: array [1..4] of double = (-19.0, 7.0, -4.0, 6.0);

begin
  write ('Horner calculated polynomial of 6*x^3 - 4*x^2 + 7*x - 19 for x = 3: ');
  writeln (horner (poly, 3.0):8:4);
end.
{------------------------------------------------------- 117 host-introspection}
program HostIntrospection(output);
begin
  writeln('Pointer size: ', SizeOf(Pointer), ' byte, i.e. ', SizeOf(Pointer)*8, ' bit.');
{ NtoBE converts from native endianess to big endianess }
  if 23453 = NtoBE(23453) then
    writeln('This host is big endian.')
  else
    writeln('This host is little endian.');
end.
{----------------------------------------------------------------- 118 hostname}
Program HostName;

uses
  unix;

begin
  writeln('The name of this computer is: ', GetHostName);
end.
{------------------------------------------------------------------- 119 http-1}
{$mode objfpc}{$H+}
uses fphttpclient;

var
  s: string;
  hc: tfphttpclient;

begin
  hc := tfphttpclient.create(nil);
  try
    s := hc.get('http://www.example.com')
  finally
    hc.free
  end;
  writeln(s)
end.
{---------------------------------------------------------- 120 identity-matrix}
program IdentityMatrix(input, output);

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
{------------------------------------------------------- 121 integer-comparison}
program compare(input, output);

var
 a, b: integer;

begin
  write('Input an integer number: ');
  readln(a);
  write('Input another integer number: ');
  readln(b);
  if (a < b) then writeln(a, ' is less than ', b);
  if (a = b) then writeln(a, ' is equal to ', b);
  if (a > b) then writeln(a, ' is greater than ', b);
end.
{------------------------------------------------- 122 iterated-digits-squaring}
program Euler92;
const
  maxdigCnt = 14;
  //2* to use the sum of two square-sums without access violation
  maxPoss = 2* 9*9*maxdigCnt;// every digit is 9
  cM  = 10*1000*1000;// 10^(maxdigCnt div 2)
  IdxSqrSum = cM;//MaxPoss;//max(cM,MaxPoss);
type
  tSqrSum   = array[0..IdxSqrSum] of Word;
  tEndsIn   = array[0..maxPoss]of Byte;
  tresCache = array[0..maxPoss]of Uint64;

var
  aSqrDigSum : tSqrSum;
  aEndsIn: tEndsIn;
  aresCache : tresCache;

procedure CreateSpuareDigitSum;
var
  i,j,k,l : integer;
begin
  For i := 0 to 9 do
    aSqrDigSum[i] := sqr(i);
  k := 10;
  l := k;
  while k < cM do
  begin
    For i := 1 to 9 do
      For j := 0 to k-1 do
      begin
        aSqrDigSum[l]:=aSqrDigSum[i]+aSqrDigSum[j];
        inc(l);
      end;
    k := l;
  end;
  aSqrDigSum[l] := 1;
end;

function InitEndsIn(n:LongWord):longWord;
{fill aEndsIN recursive}
var
  d,s:LongWord;
begin
  IF n in [0..1] then
  begin
    InitEndsIn := n;
    EXIT;
  end;
  s := aSqrDigSum[n];
  {if unknown}
  IF aEndsIN[s] = byte(-1) then
  begin
    d := InitEndsIn(s);
    aEndsIN[s]:= d;
    InitEndsIn := d;
  end
  else
    InitEndsIn := aEndsIN[s];
end;

function CntSmallOnes(s:longWord;
                      n:longWord=cM-1):NativeUint;
var
  i: longword;
begin
  result := 0;
  For i := cM-1 downto 0 do
    result := result+aEndsIN[aSqrDigSum[i]+s];
end;

procedure Init;
var
  i,j,cnt : integer;
begin
  CreateSpuareDigitSum;
  fillchar(aEndsIN,Sizeof(aEndsIN) ,#255);
  aEndsIN[0] := 0;
  aEndsIN[1]:= 1;
  aEndsIN[89]:= 0;// no need to use 89
  For i := 1 to maxPoss do
    aEndsIN[i]:= InitEndsIN(i);

  cnt := 0;
  fillchar(aresCache,SizeOf(aresCache),#0);
  For i := Low(tSqrSum) to high(tSqrSum) do
  begin
    j := aSqrDigSum[i];
    If aresCache[j] = 0 then
    begin
//      write(i,',');
      aresCache[j] := CntSmallOnes(j);
      inc(cnt);
    end;
  end;
//  writeln;  writeln(cnt,' small counts out of ',cM);
end;
{
function EndsIn(n:LongWord):Word;
var
  d,s:LongWord;
begin
  d := n;
  s := 0;
  while d > High(tSqrSum) do
  begin
    s := s+aSqrDigSum[d Mod cM];
    d := d Div cM
  end;
  s :=s+aSqrDigSum[d];
  EndsIn := aEndsIN[s];
end;
}

function CntOnes(s: longWord;n:Int64):Int64;
var
  i : Int64;
begin
writeln;
  result := 0;
  i := n div cM;
  repeat
    result := result+aresCache[s+aSqrDigSum[i]];
    dec(i)
  until i < 0
end;

const
  upperlimit = cM*cM ;
var
  Res : Int64;
begin
  Init;
  Res := CntOnes(0,upperlimit-1)+1;
  writeln('there are ',res,'  1s ');
  writeln('there are ',upperlimit-res,' 89s ');
end.
{---------------------------------------------------------- 123 jaro-similarity}
program Jaro_distance;

uses SysUtils, Math;

//converted from C source by /u/bleuge
function ssJaroWinkler(s1, s2: string): double;
var
  l1, l2, match_distance, matches, i, k, trans: integer;
  bs1, bs2: array[1..255] of boolean; //used to avoid getmem, max string length is 255
begin
  l1 := length(s1);
  l2 := length(s2);
  fillchar(bs1, sizeof(bs1), 0); //set booleans to false
  fillchar(bs2, sizeof(bs2), 0);
  if l1 = 0 then
    if l2 = 0 then
      exit(1)
    else
      exit(0);
  match_distance := (max(l1, l2) div 2) - 1;
  matches := 0;
  trans := 0;
  for i := 1 to l1 do
  begin
    for k := max(1, i - match_distance) to min(i + match_distance, l2) do
    begin
      if bs2[k] then
        continue;
      if s1[i] <> s2[k] then
        continue;
      bs1[i] := true;
      bs2[k] := true;
      inc(matches);
      break;
    end;
  end;
  if matches = 0 then
    exit(0);
  k := 1;
  for i := 1 to l1 do
  begin
    if (bs1[i] = false) then
      continue;
    while (bs2[k] = false) do
      inc(k);
    if s1[i] <> s2[k] then
      inc(trans);
    inc(k);
  end;
  trans := trans div 2;
  result := ((matches / l1) + (matches / l2) + ((matches - trans) / matches)) / 3;
end;

begin
//test
  writeln(formatfloat('0.######', ssJaroWinkler('DWAYNE', 'DUANE')));
  writeln(formatfloat('0.######', ssJaroWinkler('MARTHA', 'MARHTA')));
  writeln(formatfloat('0.######', ssJaroWinkler('DIXON', 'DICKSONX')));
  writeln(formatfloat('0.######', ssJaroWinkler('JELLYFISH', 'SMELLYFISH')));
  {$IFNDEF LINUX}readln;{$ENDIF}
end.
{----------------------------------------------------------- 124 jensens-device}
program Jensens_Device;

{$IFDEF FPC}
  {$MODE objFPC}
{$ENDIF}

type
  tTerm = function(i: integer): real;

function term(i: integer): real;
begin
  term := 1 / i;
end;

function sum(var i: LongInt; lo, hi: integer; term: tTerm): real;
begin
  result := 0;
  i := lo;
  while i <= hi do
  begin
    result := result + term(i);
    inc(i);
  end;
end;

var
  i: LongInt;

begin
  writeln(sum(i, 1, 100, @term));
  {$IFNDEF UNIX}  readln; {$ENDIF}
end.
{--------------------------------------------------------------------- 125 json}
program test;
{$mode objfpc}{$h+}
uses
  FpJson, JsonParser;

const
  JsonValue =
    '{                            ' + LineEnding +
    '    "answer": {              ' + LineEnding +
    '        "everything": 42     ' + LineEnding +
    '    },                       ' + LineEnding +
    '    "happy": true,           ' + LineEnding +
    '    "list": [                ' + LineEnding +
    '        0,                   ' + LineEnding +
    '        1,                   ' + LineEnding +
    '        2                    ' + LineEnding +
    '    ],                       ' + LineEnding +
    '    "name": "Pierrot",       ' + LineEnding +
    '    "nothing": null,         ' + LineEnding +
    '    "object": {              ' + LineEnding +
    '        "product": "unknown",' + LineEnding +
    '        "amount": 1001       ' + LineEnding +
    '    },                       ' + LineEnding +
    '    "pi": 3.1416            ' + LineEnding +
    '}                            ';

function JsonsEqual(L, R: TJsonData): Boolean;
var
  I: Integer;
  e: TJsonEnum;
  d: TJsonData;
begin
  if (L = nil) or (R = nil) then exit(False);
  if L = R then exit(True);
  if (L.JSONType <> R.JSONType) or (L.Count <> R.Count) then exit(False);
  case L.JSONType of
    jtUnknown: exit(False);
    jtNull:    ;
    jtBoolean: exit(L.AsBoolean = R.AsBoolean);
    jtNumber:  exit(L.AsFloat = R.AsFloat);
    jtString:  exit(L.AsString = R.AsString);
    jtArray:
      for I := 0 to Pred(L.Count) do
        if not JsonsEqual(L.Items[I], R.Items[I]) then exit(False);
    jtObject:
      for e in L do begin
        if not TJsonObject(R).Find(e.Key, d) then exit(False);
        if not JsonsEqual(e.Value, d) then exit(False);
      end;
  end;
  Result := True;
end;

var
  Expected, HandMade: TJsonData;

begin
  Expected := GetJson(JsonValue);
  HandMade := CreateJSONObject([
    'answer', CreateJSONObject(['everything', 42]),
    'happy', True,
    'list', CreateJSONArray([0, 1, 2]),
    'name', 'Pierrot',
    'nothing', CreateJSON,
    'object', CreateJSONObject(['product', 'unknown', 'amount', 1001]),
    'pi', 3.1416
  ]);
  WriteLn(HandMade.FormatJson);
  WriteLn;
  if JsonsEqual(Expected, HandMade) then
    WriteLn('Objects look identical')
  else
    WriteLn('Oops, something went wrong');
  Expected.Free;
  HandMade.Free;
end.
{------------------------------------------------- 126 knapsack-problem-bounded}
program KnapsackBounded;
{$mode objfpc}{$j-}
uses
  SysUtils, Math;

type
  TItem = record
    Name: string;
    Weight, Value, Count: Integer;
  end;

const
  NUM_ITEMS = 22;
  ITEMS: array[0..NUM_ITEMS-1] of TItem = (
    (Name: 'map';                    Weight:   9; Value: 150; Count: 1),
    (Name: 'compass';                Weight:  13; Value:  35; Count: 1),
    (Name: 'water';                  Weight: 153; Value: 200; Count: 2),
    (Name: 'sandwich';               Weight:  50; Value:  60; Count: 2),
    (Name: 'glucose';                Weight:  15; Value:  60; Count: 2),
    (Name: 'tin';                    Weight:  68; Value:  45; Count: 3),
    (Name: 'banana';                 Weight:  27; Value:  60; Count: 3),
    (Name: 'apple';                  Weight:  39; Value:  40; Count: 3),
    (Name: 'cheese';                 Weight:  23; Value:  30; Count: 1),
    (Name: 'beer';                   Weight:  52; Value:  10; Count: 3),
    (Name: 'suntan cream';           Weight:  11; Value:  70; Count: 1),
    (Name: 'camera';                 Weight:  32; Value:  30; Count: 1),
    (Name: 'T-shirt';                Weight:  24; Value:  15; Count: 2),
    (Name: 'trousers';               Weight:  48; Value:  10; Count: 2),
    (Name: 'umbrella';               Weight:  73; Value:  40; Count: 1),
    (Name: 'waterproof trousers';    Weight:  42; Value:  70; Count: 1),
    (Name: 'waterproof overclothes'; Weight:  43; Value:  75; Count: 1),
    (Name: 'note-case';              Weight:  22; Value:  80; Count: 1),
    (Name: 'sunglasses';             Weight:   7; Value:  20; Count: 1),
    (Name: 'towel';                  Weight:  18; Value:  12; Count: 2),
    (Name: 'socks';                  Weight:   4; Value:  50; Count: 1),
    (Name: 'book';                   Weight:  30; Value:  10; Count: 2)
  );
  MAX_WEIGHT = 400;

var
  D: array of array of Integer; //DP matrix
  I, W, V, C, MaxWeight: Integer;
begin
  SetLength(D, NUM_ITEMS + 1, MAX_WEIGHT + 1);
  for I := 0 to High(ITEMS) do
    for W := 0 to MAX_WEIGHT do begin
      D[I+1, W] := D[I, W];
      for C := 1 to ITEMS[I].Count do begin
        if ITEMS[I].Weight * C > W then break;
        V := D[I, W - ITEMS[I].Weight * C] + ITEMS[I].Value * C;
        if V > D[I+1, W] then
          D[I+1, W] := V;
      end;
    end;

  W := MAX_WEIGHT;
  MaxWeight := 0;
  WriteLn('bagged:');
  for I := High(ITEMS) downto 0 do begin
    V := D[I+1, W];
    C := 0;
    while V <> D[I, W] + ITEMS[I].Value * C do begin
      Dec(W, ITEMS[I].Weight);
      Inc(C);
    end;
    Inc(MaxWeight, C * ITEMS[I].Weight);
    if C <> 0 then
       WriteLn('  ', C, ' ', ITEMS[I].Name);
  end;
  WriteLn('value  = ', D[NUM_ITEMS, MAX_WEIGHT]);
  WriteLn('weight = ', MaxWeight);
end.
{---------------------------------------------- 127 knapsack-problem-continuous}
program Knapsack;
{$mode delphi}
uses
  SysUtils, Math, Generics.Collections, Generics.Defaults;

type
  TItem = record
    Name: string;
    Weight, Value, Price: Double;
    constructor Make(const n: string; w, v: Double);
  end;

constructor TItem.Make(const n: string; w, v: Double);
begin
  Name := n;
  Weight := w;
  Value := v;
  Price := v/w;
end;

function ItemCmp(constref L, R: TItem): Integer;
begin
  Result := CompareValue(R.Price, L.Price);
end;

var
  Items: array of TItem;
  MaxWeight: Double;
  I: Integer;
begin
  Items := [
    TItem.Make('beef',    3.8, 36),
    TItem.Make('pork',    5.4, 43),
    TItem.Make('ham',     3.6, 90),
    TItem.Make('greaves', 2.4, 45),
    TItem.Make('flitch',  4.0, 30),
    TItem.Make('brawn',   2.5, 56),
    TItem.Make('welt',    3.7, 67),
    TItem.Make('salami',  3.0, 95),
    TItem.Make('sausage', 5.9, 98)
  ];
  TArrayHelper<TItem>.Sort(Items, TComparer<TItem>.Construct(ItemCmp));
  MaxWeight := 15.0;
  I := 0;
  repeat
    Items[I].Weight := Min(Items[I].Weight, MaxWeight);
    MaxWeight := MaxWeight - Items[I].Weight;
    WriteLn(Format('%-8s %.1f kg', [Items[I].Name, Items[I].Weight]));
    Inc(I);
  until (MaxWeight <= 0)or(I = Length(Items));
end.
{----------------------------------------------- 128 knapsack-problem-unbounded}
Program Knapsack(output);

uses
  math;

type
  bounty = record
    value: longint;
    weight, volume: real;
  end;

const
  panacea: bounty = (value:3000; weight:  0.3; volume: 0.025);
  ichor:   bounty = (value:1800; weight:  0.2; volume: 0.015);
  gold:    bounty = (value:2500; weight:  2.0; volume: 0.002);
  sack:    bounty = (value:   0; weight: 25.0; volume: 0.25);

var
  totalweight, totalvolume: real;
  maxpanacea, maxichor, maxgold: longint;
  maxvalue: longint = 0;
  n: array [1..3] of longint;
  current: bounty;
  i, j, k: longint;

begin
  maxpanacea := round(min(sack.weight / panacea.weight, sack.volume / panacea.volume));
  maxichor   := round(min(sack.weight / ichor.weight,   sack.volume / ichor.volume));
  maxgold    := round(min(sack.weight / gold.weight,    sack.volume / gold.volume));

  for i := 0 to maxpanacea do
    for j := 0 to maxichor do
      for k := 0 to maxgold do
      begin
        current.value  := k * gold.value  + j * ichor.value  + i * panacea.value;
        current.weight := k * gold.weight + j * ichor.weight + i * panacea.weight;
        current.volume := k * gold.volume + j * ichor.volume + i * panacea.volume;
        if (current.value > maxvalue)      and
      (current.weight <= sack.weight) and
           (current.volume <= sack.volume) then
   begin
          maxvalue    := current.value;
          totalweight := current.weight;
          totalvolume := current.volume;
          n[1] := i;
     n[2] := j;
     n[3] := k;
        end;
      end;

  writeln ('Maximum value achievable is ', maxValue);
  writeln ('This is achieved by carrying ', n[1], ' panacea, ', n[2], ' ichor and ', n[3], ' gold items');
  writeln ('The weight of this carry is ', totalWeight:6:3, ' and the volume used is ', totalVolume:6:4);
end.
{------------------------------------------------------------ 129 knuth-shuffle}
program Knuth;

const
  startIdx = -5;
  max = 11;
type
  tmyData = string[9];
  tmylist = array [startIdx..startIdx+max-1] of tmyData;

procedure InitList(var a: tmylist);
var
  i: integer;
Begin
  for i := Low(a) to High(a) do
    str(i:3,a[i])
end;

procedure shuffleList(var a: tmylist);
var
  i,k : integer;
  tmp: tmyData;
begin
  for i := High(a)-low(a) downto 1 do begin
    k := random(i+1) + low(a);
    tmp := a[i+low(a)]; a[i+low(a)] := a[k]; a[k] := tmp
  end
end;

procedure DisplayList(const a: tmylist);
var
  i : integer;
Begin
  for i := Low(a) to High(a) do
    write(a[i]);
  writeln
end;

{ Test and display }
var
 a: tmylist;
 i: integer;
begin
  randomize;
  InitList(a);
  DisplayList(a);
  writeln;
  For i := 0 to 4 do
  Begin
    shuffleList(a);
    DisplayList(a);
  end;
end.
{----------------------------------------------------------------- 130 kosaraju}
program Kosaraju_SCC;
{$mode objfpc}{$modeswitch arrayoperators}
{$j-}{$coperators on}
type
  TDigraph = array of array of Integer;

procedure PrintComponents(const g: TDigraph);
var
  Visited: array of Boolean = nil;
  RevPostOrder: array of Integer = nil;
  gr: TDigraph = nil; //reversed graph
  Counter, Next: Integer;
  FirstItem: Boolean;

  procedure Dfs1(aNode: Integer);
  begin
    Visited[aNode] := True;
    for Next in g[aNode] do begin
      gr[Next] += [aNode];
      if not Visited[Next] then
        Dfs1(Next);
    end;
    RevPostOrder[Counter] := aNode;
    Dec(Counter);
  end;

  procedure Dfs2(aNode: Integer);
  begin
    Visited[aNode] := True;
    for Next in gr[aNode] do
      if not Visited[Next] then
        Dfs2(Next);
    if FirstItem then begin
      FirstItem := False;
      Write(aNode);
    end else
      Write(', ', aNode);
  end;

var
  Node: Integer;
begin
  SetLength(Visited, Length(g));
  SetLength(RevPostOrder, Length(g));
  SetLength(gr, Length(g));
  Counter := High(g);
  for Node := 0 to High(g) do
    if not Visited[Node] then
      Dfs1(Node);
  FillChar(Pointer(Visited)^, Length(Visited), 0);
  for Node in RevPostOrder do
    if not Visited[Node] then begin
      FirstItem := True;
      Write('[');
      Dfs2(Node);
      WriteLn(']');
    end;
end;

const
  g: TDigraph = (
    (1),
    (2),
    (0),
    (1, 2, 4),
    (3, 5),
    (2, 6),
    (5),
    (4, 6, 7)
  );
begin
  PrintComponents(g);
end.
{------------------------------------------------------------- 131 langtons-ant}
{$B- Early and safe resolution of  If x <> 0 and 1/x...}
Program LangtonsAnt; Uses CRT;
{Perpetrated by R.N.McLean (whom God preserve), Victoria University, December MMXV.}
 Var AsItWas: record mode: word; ta: word; end;
 Var LastLine,LastCol: byte;

 Procedure Swap(var a,b: integer);	{Oh for a compiler-recognised statement.}
  var t: integer;			{Such as A=:=B;}
   Begin
    t:=a; a:=b; b:=t;
   End;

 var Stepwise: boolean;
 Var Cell: Array[1..80,1..50] of byte;	{The screen is of limited size, alas.}
 Var x,y,Step: integer;		{In the absence of complex numbers,}
 Var dx,dy: integer;		{And also of array action statements.}

 Procedure Croak(Gasp: string);	{Exit message...}
  Begin
   GoToXY(1,12); TextColor(Yellow);	{Reserve line twelve.}
   WriteLn(Gasp,' on step ',Step,' to (',x,',',y,')');
   HALT;
  End;

 Procedure Harken;		{Waits for a keystroke.}
  var ch: char;			{The character. Should really be 16-bit.}
  Begin
   ch:=ReadKey;			{Fancy keys evoke double characters. I don't care.}
   if (ch = 'S') or (ch = 's') then Stepwise:=not Stepwise	{Quick, slow, quick, quick, slow...}
    else if ch = #27 then Croak('ESC!');	{Or perhaps, enough already!}
  End;				{Fancy keys will give a twostep.}
 Procedure Waitabit;		{Slows the action.}
  Begin
   if Stepwise or KeyPressed then Harken;	{Perhaps a change while on the run.}
  End;	{of Waitabit.}

 Procedure Turn(way:integer);	{(dx,dy)*(0,w) = (-w*dy,+w*dx)}
  Begin
   Swap(dx,dy);			{In the absence of complex arithmetic,}
   dx:=-way*dx; dy:=way*dy;	{Do this in two stages.}
  End;

 const Arrow: array[-1..+1,-1..+1] of integer	{Only four entries are of interest.}
  = ((1,27,3),(25,5,24),(7,26,9));		{For the four arrow symbols.}
 Procedure ShowDirection(Enter,How: byte);	{Show one.}
  Begin
   GoToXY(x,LastLine - y + 1);	{(x,y) position, in Cartesian style.}
   TextBackground(Enter);	{The value in Cell[x,y] may have been changed.}
   TextColor(How);
   Writeln(chr(Arrow[dx,dy]));	{Not an ASCII control character, but an arrow symbol.}
   Waitabit;			{Having gone to all this trouble.}
  End;
 Procedure ShowState;		{Special usage for line two of the screen.}
  Begin
   GoToXY(1,2); TextBackground(LightGray); TextColor(Black);
   Write(Step:5,' (',x:2,',',y:2,') ');
   TextColor(Yellow);		{Yellow indicates the direction in mind.}
   Write(chr(Arrow[dx,dy]));	{On *arrival* at a position.}
  End;

 Var i,j: integer;		{Steppers. No whole-array assault as in Cell:=LightGray;}
 var Enter: byte;		{Needed to remember the cell state on arrival.}
 BEGIN
  AsItWas.mode:=LastMode;	{Grr. I might want to save the display content too!}
  AsItWas.ta:=TextAttr;		{Not just its colour and style.}
  TextMode(C80+Font8x8);	{Crazed gibberish gives less unsquare character cells, and 80x50 of them.}
  LastLine:=Hi(WindMax);	{ + 1 omitted, as a write to the last line scrolls the screen up one...}
  LastCol:=Lo(WindMax) + 1;	{Counting starts at zero, even though GoToXY starts with one.}
  x:=LastCol div 2;		{Start somewhere middleish.}
  y:=LastLine div 2;		{Consider (x,y) as being (0,0) for axes.}
  dx:=+1; dy:=0;		{Initial direction.}
  TextBackground(LightGray);	{"White" is not valid for background colour.}
  TextColor(Black);		{This will show up on a light background.}
  ClrScr;			{Here we go.}

  WriteLn('Langton''s Ant, on x = 1:',LastCol,', y = 1:',LastLine);
  ShowState;					{Where we start.}
  WriteLn; TextColor(Black);
  WriteLn('Press a key for each step.');	{Some encouragement.}
  WriteLn('"S" to pause each step or not.');
  WriteLn('ESC to quit.');

  for i:=1 to LastLine do begin GoToXY(x,i); Write('|'); end;			{Draw a y-axis.}
  for i:=1 to LastCol do begin GoToXY(i,LastLine - y + 1); Write('-'); end;	{And x.}
  gotoxy(1,6);	{Can't silence the cursor!}

  for i:=1 to LastCol do	{Prepare the cells.}
   for j:=1 to LastLine do	{One by one.}
    Cell[i,j]:=LightGray;	{Cell:=LightGray. Sigh.}

  Stepwise:=true;		{The action is of interest.}
  for Step:=1 to 12000 do	{Here we go.}
   if (x <= 0) or (x > LastCol) or (y <= 0) or (y > LastCol) then Croak('Out of bounds')
    else				{We're in a cell.}
     begin				{So, inspect it.}
      if Stepwise or (Step mod 10 = 0) then ShowState	{On arrival.}
       else if KeyPressed then Harken;			{If we're not pausing, check for a key poke.}
      Enter:=cell[x,y];					{This is what awaits the feet.}
      if Stepwise then ShowDirection(Enter,Yellow);	{Current direction, about to be changed.}
      case cell[x,y] of					{So, what to do?}
   LightGray: begin Cell[x,y]:=Black;     Turn(-1); end;{White. Make black and turn right.}
       Black: begin Cell[x,y]:=LightGray; Turn(+1); end;{Black. Make white and turn left.}
      end;						{Having decided,}
      if Stepwise then ShowDirection(Enter,Green);	{Show the direction about to be stepped.}
      GoToXY(x,LastLine - y + 1);	{Screen location (column,line) for (x,y)}
      TextBackground(Cell[x,y]);	{Change the state I'm about to leave.}
      Write(' ');			{Foreground colour irrelevant for spaces.}
      x:=x + dx; y:=y + dy;		{Make the step!}
     end;			{On to consider our new position.}

  Croak('Finished');		{That was fun.}

 END.
{--------------------------------------------- 132 largest-five-adjacent-number}
var
  digits,
  s : AnsiString;
  i : LongInt;
begin
  randomize;
  setlength(digits,1000);
  for i := 1 to 1000 do
    digits[i] := chr(random(10)+ord('0'));
  for i := 99999 downto 0 do
  begin
    str(i:5,s);
    if Pos(s,digits) > 0 then
      break;
  end;
  writeln(s, ' found as largest 5 digit number ')
end.
{------------------------------------- 133 largest-int-from-concatenated-ints-1}
const
  base    = 10;
  MaxDigitCnt = 11;
  source1 : array[0..7] of integer = (1, 34, 3, 98, 9, 76, 45, 4);
  source2 : array[0..3] of integer = (54,546,548,60);
  source3 : array[0..3] of integer = (60, 54,545454546,0);

type
  tdata = record
            datOrg,
            datMod : LongWord;
            datStrOrg       : string[MaxDigitCnt];
          end;
  tArrData = array of tData;

procedure DigitCount(var n: tdata);
begin
  with n do
    //InttoStr is very fast
    str(datOrg,datStrOrg);

end;

procedure InsertData(var n: tdata;data:LongWord);
begin
  n.datOrg := data;
  DigitCount(n);
end;

function FindMaxLen(const ArrData:tArrData): LongWord;
var
  cnt : longInt;
  res,t : LongWord;
begin
  res := 0;// 1 is minimum
  for cnt :=  High(ArrData) downto Low(ArrData) do
  begin
    t := length(ArrData[cnt].datStrOrg);
    IF res < t then
      res := t;
  end;
  FindMaxLen := res;
end;

procedure ExtendCount(var ArrData:tArrData;newLen: integer);
var
  cnt,
  i,k : integer;
begin
  For cnt := High(ArrData) downto Low(ArrData) do
    with ArrData[cnt] do
    begin
      datMod := datOrg;
      i := newlen-length(datStrOrg);
      k := 1;
      while i > 0 do
      begin
        datMod := datMod *Base+Ord(datStrOrg[k])-Ord('0');
        inc(k);
        IF k >length(datStrOrg) then
          k := 1;
        dec(i);
      end;
    end;
end;

procedure SortArrData(var ArrData:tArrData);
var
  i,
  j,idx : integer;
  tmpData : tData;
begin
  For i := High(ArrData) downto Low(ArrData)+1 do
  begin
    idx := i;
    j := i-1;
    For j := j downto Low(ArrData) do
      IF ArrData[idx].datMod < ArrData[j].datMod then
         idx := j;
    IF idx <> i then
    begin
      tmpData     := ArrData[idx];
      ArrData[idx]:= ArrData[i];
      ArrData[i]  := tmpData;
    end;
  end;
end;

procedure ArrDataOutput(const ArrData:tArrData);
var
  i,l : integer;
  s : AnsiString;
begin
{ the easy way
  For i := High(ArrData) downto Low(ArrData) do
    write(ArrData[i].datStrOrg);
  writeln;
  *}
  l := 0;
  For i := High(ArrData) downto Low(ArrData) do
    inc(l,length(ArrData[i].datStrOrg));
  setlength(s,l);
  l:= 1;
  For i := High(ArrData) downto Low(ArrData) do
    with ArrData[i] do
    begin
      move(datStrOrg[1],s[l],length(datStrOrg));
      inc(l,length(datStrOrg));
    end;
  writeln(s);
end;

procedure HighestInt(var  ArrData:tArrData);
begin
  ExtendCount(ArrData,FindMaxLen(ArrData));
  SortArrData(ArrData);
  ArrDataOutput(ArrData);
end;

var
  i : integer;
  tmpData : tArrData;
begin
  // Source1
  setlength(tmpData,length(source1));
  For i := low(tmpData) to high(tmpData) do
    InsertData(tmpData[i],source1[i]);
  HighestInt(tmpData);
  // Source2
  setlength(tmpData,length(source2));
  For i := low(tmpData) to high(tmpData) do
    InsertData(tmpData[i],source2[i]);
  HighestInt(tmpData);
  // Source3
  setlength(tmpData,length(source3));
  For i := low(tmpData) to high(tmpData) do
    InsertData(tmpData[i],source3[i]);
  HighestInt(tmpData);
end.
{------------------------------------- 134 largest-int-from-concatenated-ints-2}
const
  base    = 10;
  MaxDigitCnt = 11;
  source1 : array[0..7] of LongInt = (10 , 34, 3, 98, 9, 76, 45, 4);
  source2 : array[0..3] of LongInt = (54,546,548,60);
  source3 : array[0..3] of LongInt = (0,2121212122,21,60);

type
  tdata = record
            datMod : double;
            datOrg : LongInt;
//InttoStr is very fast and the string is always needed
            datStrOrg       : string[MaxDigitCnt];
          end;
  tArrData = array of tData;

procedure InsertData(var n: tdata;data:LongWord);
begin
  with n do
  begin
    datOrg := data;
    str(datOrg,datStrOrg);
  end;
end;

function FindMaxLen(const ArrData:tArrData): LongWord;
var
  cnt : longInt;
  res,t : LongWord;
begin
  res := 0;// 1 is minimum
  for cnt :=  High(ArrData) downto Low(ArrData) do
  begin
    t := length(ArrData[cnt].datStrOrg);
    IF res < t then
      res := t;
  end;
  FindMaxLen := res;
end;

procedure ExtendData(var ArrData:tArrData;newLen: integer);
var
  cnt,
  i : integer;
begin
  For cnt := High(ArrData) downto Low(ArrData) do
    with ArrData[cnt] do
    begin
      //generating 10^length(datStrOrg)
      datMod := 1;
      i := length(datStrOrg);
      // i always >= 1
      repeat
        datMod := base*datMod;
        dec(i);
      until i <= 0;
//      1/(datMod-1.0) = 1/(9...9)
      datMod := datOrg/(datMod-1.0)+datOrg;
      i := newlen-length(datStrOrg);
      For i := i downto 1 do
        datMod := datMod*Base;
    end;
end;

procedure SortArrData(var ArrData:tArrData);
//selection sort
var
  i,
  j,idx : integer;
  tmpData : tData;
begin
  For i := High(ArrData) downto Low(ArrData)+1 do
  begin
    idx := i;
    j := i-1;
    //select max
    For j := j downto Low(ArrData) do
      IF ArrData[idx].datMod < ArrData[j].datMod then
         idx := j;
    //finally swap
    IF idx <> i then
    begin
      tmpData     := ArrData[idx];
      ArrData[idx]:= ArrData[i];
      ArrData[i]  := tmpData;
    end;
  end;
end;

procedure ArrDataOutput(const ArrData:tArrData);
var
  i : integer;
begin
{ the easy way}
  For i := High(ArrData) downto Low(ArrData) do
    write(ArrData[i].datStrOrg);
  writeln;
end;

procedure HighestInt(var  ArrData:tArrData);
begin
  ExtendData(ArrData,FindMaxLen(ArrData));
  SortArrData(ArrData);
  ArrDataOutput(ArrData);
end;

var
  i : integer;
  tmpData : tArrData;
begin
  // Source1
  setlength(tmpData,length(source1));
  For i := low(tmpData) to high(tmpData) do
    InsertData(tmpData[i],source1[i]);
  HighestInt(tmpData);
  // Source2
  setlength(tmpData,length(source2));
  For i := low(tmpData) to high(tmpData) do
    InsertData(tmpData[i],source2[i]);
  HighestInt(tmpData);
  // Source3
  setlength(tmpData,length(source3));
  For i := low(tmpData) to high(tmpData) do
    InsertData(tmpData[i],source3[i]);
  HighestInt(tmpData);
end.
{-------------------------------------------- 135 largest-proper-divisor-of-n-1}
program LarPropDiv;

function LargestProperDivisor(n:NativeInt):NativeInt;
//searching upwards to save time for example 100
//2..sqrt(n) aka 1..10 instead downwards n..sqrt(n) 100..10
var
  i,j: NativeInt;
Begin
  i := 2;
  repeat
    If n Mod i = 0 then
    Begin
      LargestProperDivisor := n DIV i;
      EXIT;
    end;
    inc(i);
  until i*i > n;
  LargestProperDivisor := 1;
end;
var
  n : Uint32;
begin
  for n := 1 to 100 do
  Begin
    write(LargestProperDivisor(n):4);
    if n mod 10 = 0 then
      Writeln;
  end;
end.
{-------------------------------------------- 136 largest-proper-divisor-of-n-2}
program LPD;
(*
Displays largest proper divisor for each integer in range 1..limit.
Command line:
      LPD limit items_per_line
  or  LPD limit // items_per_line defaults to 10
  or  LPD       // limit defaults to 100
*)
{$mode objfpc}{$H+}

uses SysUtils;
var
  limit, items_per_line, nr_items, j, p : integer;
  a : array of integer;
begin
  // Set up defaults
  limit := 100;
  items_per_line := 10;
  // Overwrite defaults with command-line parameters, if present
  if ParamCount > 0 then
    limit := SysUtils.StrToInt( ParamStr(1));
  if ParamCount > 1 then
    items_per_line := SysUtils.StrToInt( ParamStr(2));
  WriteLn( 'Largest proper divisors 1..', limit);
  // Dynamic arrays are 0-based. To keep it simple, we ignore a[0]
  //  and use a[j] for the integer j, 1 <= j <= limit
  SetLength( a, limit + 1);
  for j := 1 to limit do a[j] := 1; // stays at 1 if j is 1 or prime

  // Sieve; if j is composite then a[j] := smallest prime factor of j
  p := 2; //  p = next prime
  while p*p < limit do begin
    j := 2*p;
    while j <= limit do begin
      if a[j] = 1 then a[j] := p;
      inc( j, p);
    end;
    repeat
      inc(p);
    until (p > limit) or (a[p] = 1);
  end;

  // If j is composite, divide j by its smallest prime factor
  for j := 1 to limit do
    if a[j] > 1 then a[j] := j div a[j];

  // Write the array to the console
  nr_items := 0;
  for j := 1 to limit do begin
    Write( a[j]:5);
    inc( nr_items);
    if nr_items = items_per_line then begin
      WriteLn;
      nr_items := 0;
    end;
  end;
  if nr_items > 0 then WriteLn;
end.
{------------------------------------------------ 137 last-friday-of-each-month}
program LastFriday;

{$mode objfpc}{$H+}

uses
   SysUtils;

type
  weekdays = (Sun,Mon,Tue,Wed,Thu,Fri,Sat);

var
   m, d, y : integer;

function IsLeapYear(Year : integer) : boolean;
begin
    if Year mod 4 <> 0  { quick exit in most likely case }
        then IsLeapYear := false
    else if Year mod 400 = 0
        then IsLeapYear := true
    else if Year mod 100 = 0
        then IsLeapYear := false
    else { non-century year and divisible by 4 }
        IsLeapYear := true;
end;


function DaysInMonth(Month, Year : integer) : integer;
const
    LastDay : array[1..12] of integer =
        (31,28,31,30,31,30,31,31,30,31,30,31);
begin
    if (Month = 2) and (IsLeapYear(Year)) then
        DaysInMonth := 29
    else
        DaysInMonth := LastDay[Month];
end;

{ return day of week (Sun = 0, Mon = 1, etc.) for a }
{ given mo, da, and yr using Zeller's congruence    }
function DayOfWeek(mo, da, yr : integer) : weekdays;
var
    y, c, z : integer;
begin
    if mo < 3 then
        begin
            mo := mo + 10;
            yr := yr - 1
        end
    else mo := mo - 2;
    y := yr mod 100;
    c := yr div 100;
    z := (26 * mo - 2) div 10;
    z := z + da + y + (y div 4) + (c div 4) - 2 * c + 777;
    DayOfWeek := weekdays(z mod 7);
end;

{ return the calendar day of the last occurrence of the }
{ specified weekday in the given month and year         }
function LastWeekday(k : weekdays; m, y : integer) : integer;
var
  d : integer;
  w : weekdays;
begin
  { determine weekday for the last day of the month }
  d := DaysInMonth(m, y);
  w := DayOfWeek(m, d, y);
  { back up as needed to desired weekday }
  if w >= k then
    LastWeekday := d - (ord(w) - ord(k))
  else
    LastWeekday := d - (7 - ord(k)) - ord(w);
end;


begin { main program }
  write('Find last Fridays in what year? ');
  readln(y);
  writeln;
  writeln('Month  Last Fri');
  for m := 1 to 12 do
    begin
      d  := LastWeekday(Fri, m, y);
      writeln(m:5,'   ',d:5);
    end;
end.
{------------------ 138 launch-rocket-with-countdown-and-acceleration-in-stdout}
program launchRocketWithCountdownAndAccelerationOnOutput(output);

const
	screenWidth = 80;

type
	wholeNumber = 0..maxInt;
	natural = 1..maxInt;

var
	n: wholeNumber;

{
	Pascal, as defined by ISO standard 7185, does not provide any
	facilities to time actions. Nevertheless, most compiler vendors
	invented their own `sleep` or `delay` procedures.
}
procedure sleep(n: natural);
begin
	{ Yes, in Pascal an empty statement is valid. }
	{ There is really nothing after `do`. }
	for n := n downto 1 do
end;

procedure drawRocket(column: natural);
begin
	{ `page` is shorthand for `page(output)`, }
	{ as is `writeLn(…)` shorthand for `writeLn(output, …)`. }
	page;
	{ It should be an easy feat to adapt this to contain ASCII only. }
	writeLn(' ':column, '🙮')
end;

{ === MAIN ============================================================= }
begin
	for n := 5 downto 0 do
	begin
		drawRocket(1);
		writeLn;
		writeLn(n);
		sleep(5318008)
	end;
	
	n := 1;
	while n < screenWidth do
	begin
		n := round(n * 1.5);
		sleep(58008);
		drawRocket(n)
	end
end.
{---------------------------------------------------- 139 least-common-multiple}
Program LeastCommonMultiple(output);

{$IFDEF FPC}
  {$MODE DELPHI}
{$ENDIF}

function lcm(a, b: longint): longint;
begin
  result := a;
  while (result mod b) <> 0 do
    inc(result, a);
end;

begin
  writeln('The least common multiple of 12 and 18 is: ', lcm(12, 18));
end.
{----------------------------------------- 140 legendre-prime-counting-function}
// Rosetta Code task "Legendre prime counting function".
// Solution for Free Pascal (Lazarus) or Delphi.
program LegendrePrimeCount;

{$IFDEF FPC} // Free Pascal
  {$MODE Delphi}
{$ELSE}      // Delphi
  {$APPTYPE CONSOLE}
{$ENDIF}

// Optimization needs to be on if the program is to finish in a reasonable
//   length of time. See "Comments on Task" on the Rosetta Code website.
{$DEFINE SIMPLE_OPTIMIZATION}

uses SysUtils, Types;

{-------------------------------------------------------------------
Function to return an array of primes up to the passed-in limit.
Uses a straightforward Eratosthenes sieve.
TIntegerDynArray must be 0-based. To be compatible with Rosetta Code,
the first prime 2 is at result[1], and result[0] is not used.
}
function FindPrimes( limit : integer) : Types.TIntegerDynArray;
var
  deleted : array of boolean;
  j, k, p, resultSize : integer;
begin
  if (limit < 2) then begin
    SetLength( result, 1);
    exit;
  end;
  SetLength( deleted, limit + 1); // 0..limit
  deleted[0] := true;
  for j := 1 to limit do deleted[j] := false;
  p := 2;
  while (p*p <= limit) do begin
    j := 2*p;
    while (j <= limit) do begin
      deleted[j] := true;
      inc( j, p);
    end;
    repeat inc(p)
    until (p > limit) or (not deleted[p]);
  end;
  resultSize := 0;
  for j := 0 to limit do
    if not deleted[j] then inc( resultSize);
  SetLength( result, resultSize);
  k := 0;
  for j := 0 to limit do begin
    if not deleted[j] then begin
      result[k] := j;
      inc(k);
    end;
  end;
end;

{-----------------------------------------------------------------------------
Function to count primes up to the passed-in limit, by Legendre's method.
Iterative, using a stack. Each item in the stack is a term phi(x,a) along
with a sign. If the top item on the stack can be evaluated easily, it is
popped off and its value is added to the result. Else the top item is
replaced by two items according to the formual in the task description.
}
function CountPrimes( n : integer) : integer;
type
  TPhiTerm = record
    IsNeg : boolean;
    x : integer;
    a : integer;
  end;
const
  STACK_SIZE = 100; // 10 is enough for n = 10^9
var
  primes : Types.TIntegerDynArray;
  nrPrimes : integer;
  stack : array [0..STACK_SIZE - 1] of TPhiTerm;
  sp : integer; // stack pointer, points to first free entry
  tos : TPhiTerm; // top of stack
begin
  primes := FindPrimes( Trunc( Sqrt( n + 0.5)));
  nrPrimes := Length( primes) - 1; // primes[0] is not used
  result := nrPrimes - 1; // initialize total
  // Push initial entry onto stack
  with stack[0] do begin
    IsNeg := false;
    x := n;
    a := nrPrimes;
  end;
  sp := 1;
  while sp > 0 do begin
    tos := stack[sp - 1];
{$IFDEF SIMPLE_OPTIMIZATION}
    // Using optimization described in "Comments on Task"
    if tos.x = 0 then begin // top of stack = 0
      dec(sp); // pop top of stack, no change to result
    end
    else if (tos.a > 0) and (tos.x < primes[tos.a]) then begin // top of stack = 1
      dec( sp); // pop top of stack, update result
      if tos.IsNeg then dec( result)
                   else inc( result);
    end
    else if tos.a = 0 then begin
{$ELSE}
    // Using only the task description, i.e. only phi(x,0) = x
    if tos.a = 0 then begin
{$ENDIF}
      dec( sp); // pop top of stack, update result
      if tos.IsNeg then dec( result, tos.x)
                   else inc( result, tos.x);
    end
    else begin
      // Replace top of stack by two items as in the task description,
      //    namely phi(x, a - 1) and -phi(x div primes[a], a - 1)
      if (sp >= STACK_SIZE) then
        raise SysUtils.Exception.Create( 'Legendre phi stack overflow');
      with stack[sp - 1] do begin
        IsNeg := tos.isNeg;
        x := tos.x;
        a := tos.a - 1;
      end;
      with stack[sp] do begin
        IsNeg := not tos.IsNeg;
        x := tos.x div primes[tos.a];
        a := tos.a - 1;
      end;
      inc(sp);
    end;
  end;
end;

{-----------------------------------------------------------
Main routine
}
var
  power, limit, count : integer;
begin
  WriteLn( 'Limit      Count');
  limit := 1;
  for power := 0 to 9 do begin
    if power > 0 then limit := 10*limit;
    count := CountPrimes( limit);
    WriteLn( SysUtils.Format( '10^%d  %10d', [power, count]))
  end;
end.
{---------------------------------------------------- 141 lempel-ziv-complexity}
program LempelZiv;

{$IFDEF FPC}  // if Free Pascal Compiler
  {$MODE Delphi}
{$ELSE}       // if not FPC, assume Delphi
  {$APPTYPE CONSOLE}
{$ENDIF}

{$DEFINE SIMPLE_BUT_SLOW} // comment out to run faster version

function LZComplexity( const s : string;
                       out hist : string) : integer;
{$IFDEF SIMPLE_BUT_SLOW}
var
  j : integer;
  left, right, prev : string;
begin
  result := 0;
  hist := '';
  left := '';
  right := '';
  for j := 1 to Length(s) do begin
    if right = '' then inc( result); // starting a new component
    prev := left + right;
    right := right + s[j];
    if Pos( right, prev) = 0 then begin // if right isn't a substring of prev
      hist := hist + right + '.';
      left := left + right;
      right := '';
    end;
  end;
  hist := hist + right; // append non-exhaustive component, if there is one
end;
{$ELSE} // faster version
var
  h, i, k, n, p, r : integer;
// s[1..r-1] and s[r..k] correspond to "left" and "right" of simpler version.
  foundMatch : boolean;
begin
  result := 0;
  n := Length(s);
  SetLength( hist, 2*n); // may be reduced later
  h := 0; // index into hist, pre-inc'd
  r := 1; // left := '', right = ''
  p := 0; // like Delphi Pos: index of matching substring, 0 if none
  for k := 1 to n do begin
    inc(h); hist[h] := s[k];
    if k = r then inc( result); // starting a new component

    // Test whether s[1..k-1] contains a substring matchimg s[r..k].
    // Note that if the previous iteration found a match at p > 0 then
    // (1) the substring at p still matches, except maybe the last character;
    // (2) any match on this iteration must begin at or after p.
    if (p > 0) and (s[k] = s[k + p - r]) then
      foundMatch := true // can extend match from previous iteration
    else if p >= r - 1 then
      foundMatch := false // no more substrings to try
    else begin
      inc(p); // try substrings at p + 1, ..., r - 1
      repeat
        i := r;
        while (i <= k) and (s[i] = s[i + p - r]) do inc(i);
        if i <= k then inc(p);
      until (i > k) or (p = r);
      foundMatch := (p < r);
    end;
    if not foundMatch then begin
      inc(h); hist[h] := '.';
      r := k + 1;
      p := 0;
    end;
  end; // for
  SetLength( hist, h); // discard unused part of history string
end;
{$ENDIF} // end of faster version

type TLZTest = record
  Input : string;
  Comp : integer;
end;
const
  TESTS : array[1..18] of TLZTest =
((Input: 'AZSEDRFTGYGUJIJOKB'; Comp: 16),
 (Input: 'ABCABCABCABCABCABC'; Comp: 4),
 (Input: '111011111001111011111001'; Comp: 6),
 (Input: '101001010010111110'; Comp: 5),
 (Input: '1001111011000010'; Comp: 6),
 (Input: '1010101010'; Comp: 3),
 (Input: '1010101010101010'; Comp: 3),
 (Input: '1001111011000010000010'; Comp: 7),
 (Input: '100111101100001000001010'; Comp: 8),
 (Input: '0001101001000101'; Comp: 6),
 (Input: '1111111'; Comp: 2),
 (Input: '0001'; Comp: 2),
 (Input: '010'; Comp: 3),
 (Input: '1'; Comp: 1),
 (Input: ''; Comp: 0),
 (Input: '01011010001101110010'; Comp: 7),
 (Input: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'; Comp: 26),
 (Input: 'HELLO WORLD! HELLO WORLD! HELLO WORLD! HELLO WORLD!'; Comp: 11));

var
  t, myComp, nrDiff : integer;
  hist : string;
begin
  WriteLn( 'Checking complexity against task description:');
  nrDiff := 0;
  for t := Low( TESTS) to High( TESTS) do begin
    with TESTS[t] do begin
      myComp := LZComplexity( Input, hist);
      WriteLn( '"', hist, '"  ', myComp);
      if myComp <> Comp then begin
        inc( nrDiff);
        WriteLn( '*** Task description has ', Comp);
      end;
    end;
  end;
  WriteLn( 'Number of differences = ', nrDiff);
end.
{-------------------------------------------- 142 linear-congruential-generator}
Program LinearCongruentialGenerator(output);
{$mode iso}
var
  x1, x2: int64;

function bsdrand: cardinal;
  const
    a = 1103515245;
    c = 12345;
    m = 2147483648;
  begin
    x1 := (a * x1 + c) mod m;
    bsdrand := x1;
  end;

function msrand: cardinal;
  const
    a = 214013;
    c = 2531011;
    m = 2147483648;
  begin
    x2 := (a * x2 + c) mod m;
    msrand := x2 div 65536;
  end;

var
  i: cardinal;
begin
  writeln('      BSD            MS');
  x1 := 0;
  x2 := 0;
  for i := 1 to 10 do
    writeln(bsdrand:12, msrand:12);
end.
{------------------------------------------------------ 143 long-multiplication}
Program TwoUp; Uses DOS, crt;
{Concocted by R.N.McLean (whom God preserve), Victoria university, NZ.}
 Procedure Croak(gasp: string);
  Begin
   Writeln;
   Write(Gasp);
   HALT;
  End;

 const BigBase = 10;		{The base of big arithmetic.}
 const BigEnuff = 333;		{The most storage possible is 65532 bytes with Turbo Pascal.}
 type  BigNumberIndexer = word;	{To access 0:BigEnuff BigNumberDigit data.}
 type  BigNumberDigit = byte;	{The data.}
 type  BigNumberDigit2 = word;	{Capable of digit*digit + carry. Like, 255*255 = 65025}

 type BigNumber =		{All sorts of arrangements are possible.}
  Record				{Could include a sign indication.}
   TopDigit: BigNumberDigit;		{Finger the high-order digit.}
   digit: array[0..BigEnuff] of byte;	{The digits: note the "downto" in BigShow.}
  end;					{Could add fractional digits too. Endless, endless.}

 Procedure BigShow(var a: BigNumber);	{Print the number.}
  var i: integer;	{A stepper.}
  Begin
   for i:=a.TopDigit downto 0 do	{Thus high-order to low, as is the custom.}
    if BigBase = 10 then write(a.digit[i])	{Constant following by the Turbo Pascal compiler}
     else if BigBase = 100 then Write(a.digit[i] div 10,a.digit[i] mod 10)	{Means that there will be no tests.}
      else write(a.digit[i],',');		{And dead code will be omitted.}
  End;

 Procedure BigZero(var A: BigNumber); {A:=0;}
  Begin;
   A.TopDigit:=0;
   A.Digit[0]:=0;
  End;
 Procedure BigOne(var A: BigNumber);  {A:=1;}
  Begin;
   A.TopDigit:=0;
   A.Digit[0]:=1;
  End;
 Function BigInt(n: longint): BigNumber; {A:=N;}
  var l: BigNumberIndexer;
  Begin
   l:=0;
   if n < 0 then croak('Negative integers are not yet considered.');
   repeat		{At least one digit is to be placed.}
    if l > BigEnuff then Croak('BigInt overflowed!');	{Oh dear.}
    BigInt.Digit[l]:=N mod BigBase;	{The low-order digit.}
    n:=n div BigBase;			{Shift down a digit.}
    l:=l + 1;				{Count in anticipation.}
   until N = 0;			{Still some number left?}
   BigInt.TopDigit:=l - 1;	{Went one too far.}
  End;

 Function BigMult(a,b: BigNumber): BigNumber;	{x:=BigMult(a,b);}
{Suppose the digits of A are a5,a4,a3,a2,a1,a0...
 To multiply A and B.
                               a5   a4   a3   a2   a1   a0: six digits, d1
                                x   b4   b3   b2   b1   b0: five digits, d2
                               ---------------------------
                             a5b0 a4b0 a3b0 a2b0 a1b0 a0b0
                        a5b1 a4b1 a3b1 a2b1 a1b1 a0b1
                   a5b2 a4b2 a3b2 a2b2 a1b2 a0b2
              a5b3 a4b3 a3b3 a2b3 a1b3 a0b3
         a5b4 a4b4 a3b4 a2b4 a1b4 a0b4
   -------------------------------------------------------
   carry    9    8    7    6    5    4    3    2    1    0: at least nine digits,
   -------------------------------------------------------  = d1 + d2 - 1
   But the indices are also the powers, so the highest power is 9 = 5 + 4,
and a possible tenth for any carry.}
  var X: BigNumber;		{Scratchpad, so b:=BigMult(a,b); doesn't overwrite b as it goes...}
  var d: BigNumberDigit;	{A digit.}
  var c: BigNumberDigit;	{A carry.}
  var dd: BigNumberDigit2;	{A digit product.}
  var i,j,l: BigNumberIndexer;	{Steppers.}
  Begin
   if ((A.TopDigit = 0) and (A.Digit[0] = 0))
    or((B.TopDigit = 0) and (B.Digit[0] = 0)) then begin BigZero(BigMult); exit; end;
   l:=A.TopDigit + B.TopDigit;       {Minimal digit requirement. (Counting is from zero)}
   if l > BigEnuff then Croak('BigMult will overflow.');
   for i:=l downto 0 do X.Digit[i]:=0;	{Clear for action.}
   for i:=0 to A.TopDigit do		{Arbitrarily, choose A on the one hand.}
    begin				{Though there could be a better choice.}
     d:=A.Digit[i];			{Select the digit.}
     if d <> 0 then			{What the hell. One in BigBase chance.}
      begin				{But not this time.}
       l:=i;				{Locate the power of BigBase.}
       c:=0;				{Start this digit's multiply pass.}
       for j:=0 to B.TopDigit do	{Stepping along B's digits.}
        begin				{One by one.}
         dd:=BigNumberDigit2(B.Digit[j])*d + X.Digit[l] + c;	{The deed.}
         X.Digit[l]:=dd mod BigBase;	{Place the new digit.}
         c:=dd div BigBase;		{And extract the carry.}
         l:=l + 1;			{Ready for the next power up.}
        end;				{Advance to it.}
       if c > 0 then			{The multiply done, place the carry.}
        begin				{Ah. We *will* use the next power up.}
         if l > BigEnuff then Croak('BigMultX has overflowed.');	{Oh dear.}
         X.Digit[l]:=c;		{Thus as if BigMult..Digit[l] was zeroed.}
         l:=l + 1;			{Preserve the one-too-far for the last case}
        end;				{So much for a carry at the end of a pass.}
      end;				{So much for a non-zero digit.}
    end;			{On to another digit to multiply with.}
   X.TopDigit:=l - 1;	{Remember the one-too-far.}
   BigMult:=X;		{Deliver, possibly scragging A or B, or, both!}
 End; {of BigMult.}

 Procedure BigPower(var X: BigNumber; P: longint); {Replaces X by X**P}
  var A,W: BigNumber;	{Scratchpads}
  label up;
  Begin		{Each squaring doubles the power, melding nicely with binary reduction.}
   if P <= 0 then Croak('Negative powers are not accommodated!');
   BigOne(A);		{x**0 = 1}
   W:=X;		{Holds X**1, 2, 4, 8, etc.}
up:if P mod 2 = 1 then A:=BigMult(A,W);	{Bit on, so include this order.}
   P:=P div 2;		{Halve the power contrariwise to W's doubling.}
   if P > 0 then 	{Still some power to come?}
    begin		{Yes.}
     W:=BigMult(W,W);	{Step up to the next bit's power.}
     goto up;		{And see if it is "on".}
    end;		{Odd layout avoids multiply testing P > 0.}
   X:=A;		{The result.}
  End;

 var X: BigNumber;
 var p: longint;
 BEGIN
  ClrScr;
  WriteLn('To calculate  x = 2**64, then x*x via multi-digit long multiplication.');
  p:=64;		{As per the specification.}
  X:=BigInt(2);		{Start with 2.}
  BigPower(X,p);	{First stage: 2**64}
  Write ('x = 2**',p,' = '); BigShow(X);
  WriteLn;
  X:=BigMult(X,X);	{Second stage.}
  Write ('x*x = ');BigShow(X);	{Can't have Write('x*x = ',BigShow(BigMult(X,X))), after all. Oh well.}
 END.
{---------------------------------------------------------------- 144 long-year}
program long_year(input);
  var
    y: integer;

  function rd_dec31(year: integer): integer;
  begin
    { Rata Die of Dec 31, year }
    rd_dec31 := year * 365 + year div 4 - year div 100 + year div 400
  end;

  function rd_jan1(year: integer): integer;
  begin
    rd_jan1 := rd_dec31(year - 1) + 1
  end;

  function weekday(rd: integer): integer;
  begin
    weekday := rd mod 7;
  end;

  function long_year(year: integer): boolean;
  var
    jan1: integer;
    dec31: integer;
  begin
    jan1 := rd_jan1(year);
    dec31 := rd_dec31(year);
    long_year := (weekday(jan1) = 4) or (weekday(dec31) = 4)
  end;

  begin
    for y := 1990 to 2050 do
      if long_year(y) then
        writeln(y)
  end.
{----------------------------------------------- 145 longest-common-subsequence}
Program LongestCommonSubsequence(output);

function lcs(a, b: string): string;
  var
    x, y: string;
    lenga, lengb: integer;
  begin
    lenga := length(a);
    lengb := length(b);
    lcs := '';
    if (lenga >  0) and (lengb >  0) then
      if a[lenga] =  b[lengb] then
        lcs := lcs(copy(a, 1, lenga-1), copy(b, 1, lengb-1)) + a[lenga]
      else
      begin
        x := lcs(a, copy(b, 1, lengb-1));
        y := lcs(copy(a, 1, lenga-1), b);
        if length(x) > length(y) then
          lcs := x
        else
          lcs := y;
      end;
  end;

var
  s1, s2: string;
begin
  s1 := 'thisisatest';
  s2 := 'testing123testing';
  writeln (lcs(s1, s2));
  s1 := '1234';
  s2 := '1224533324';
  writeln (lcs(s1, s2));
end.
{------------------------------------------- 146 longest-increasing-subsequence}
program LisDemo;
{$mode objfpc}{$h+}
uses
  SysUtils;

function Lis(const A: array of Integer): specialize TArray<Integer>;
var
  TailIndex: array of Integer;
  function CeilIndex(Value, R: Integer): Integer;
  var
    L, M: Integer;
  begin
    L := 0;
    while L < R do begin
      {$PUSH}{$Q-}{$R-}M := (L + R) shr 1;{$POP}
      if A[TailIndex[M]] < Value then L := M + 1
      else R := M;
    end;
    Result := R;
  end;
var
  I, J, Len: Integer;
  Parents: array of Integer;
begin
  Result := nil;
  if Length(A) = 0 then exit;
  SetLength(TailIndex, Length(A));
  SetLength(Parents, Length(A));
  Len := 1;
  for I := 1 to High(A) do
    if A[I] < A[TailIndex[0]] then
      TailIndex[0] := I
    else
      if A[TailIndex[Len-1]] < A[I] then begin
        Parents[I] := TailIndex[Len - 1];
        TailIndex[Len] := I;
        Inc(Len);
      end else begin
        J := CeilIndex(A[I], Len - 1);
        Parents[I] := TailIndex[J - 1];
        TailIndex[J] := I;
      end;
  if Len < 2 then exit([A[0]]);
  SetLength(Result, Len);
  J := TailIndex[Len - 1];
  for I := Len - 1 downto 0 do begin
    Result[I] := A[J];
    J := Parents[J];
  end;
end;

procedure PrintArray(const A: array of Integer);
var
  I: SizeInt;
begin
  Write('[');
  for I := 0 to High(A) - 1 do
    Write(A[I], ', ');
  WriteLn(A[High(A)], ']');
end;

begin
  PrintArray(Lis([3, 2, 6, 4, 5, 1]));
  PrintArray(Lis([0, 8, 4, 12, 2, 10, 6, 14, 1, 9, 5, 13, 3, 11, 7, 15]));
  PrintArray(Lis([1, 1, 1, 1, 1, 0]));
end.
{-------------------------------------------------- 147 look-and-say-sequence-1}
program LookAndSayDemo(input, output);

{$IFDEF FPC}
  {$MODE DELPHI}
{$ENDIF}

uses
  SysUtils;

function LookAndSay(s: string): string;
var
  item: char;
  index: integer;
  count: integer;
begin
  Result := '';
  item := s[1];
  count := 1;
  for index := 2 to length(s) do
    if item = s[index] then
      inc(count)
    else
    begin
      Result := Result + intTostr(count) + item;
      item := s[index];
      count := 1;
    end;
  Result := Result + intTostr(count) + item;
end;

var
  number: string;

begin
  writeln('Press RETURN to continue and ^C to stop.');
  number := '1';
  while not eof(input) do
  begin
   write(number);
   readln;
   number := LookAndSay(number);
  end;
end.
{-------------------------------------------------- 148 look-and-say-sequence-2}
program LookAndSayDemo(input, output);
{$IFDEF FPC}
  {$Mode Delphi}  // using result
  {$optimization ON}
// i3-4330 3.5 Ghz
//  {$CodeAlign proc=16,loop=8} //2,6 secs
  {$CodeAlign proc=16,loop=1}  //1,6 secs so much faster ???
{$ENDIF}

uses
  SysUtils;
const
  cntChar : array[1..9] of char =
           ('1','2','3','4','5','6','7','8','9');

function LookAndSay2 (const s: string): string;
//using pChar for result
var
  source,
  destin : pChar;
  len,
  idxFrom,
  idxTo :  integer;
  cnt: integer;

  item: char;
begin
  idxFrom := length(s);
  source := @s[1];

  //adjust length of result
  len := round(length(s)* 1.306+10);
  setlength(result,len);
  destin := @result[1];
  dec(destin);

  idxto := 1;
  item := source^;
  inc(source);
  cnt := 1;
  for idxFrom := idxFrom downto 2 do
  begin
    if item <> source^ then
    begin
      destin[idxTo]  := cntChar[cnt];
      destin[idxTo+1]:= item;
      item := source^;
      cnt := 1;
      inc(idxto,2);
    end
    else
      inc(cnt);
    inc(source);
  end;
  destin[idxTo] := cntChar[cnt];
  destin[idxTo+1]:= item;
  setlength(result,idxto+1);
end;

var
  number: string;
  l1,l2,
  i : integer;
begin
  number := '1';
  writeln(number);
  writeln(1:4,length(number):16,1/1:10:6);

  For i := 2 to 70 do
  begin
    l1 := length(number);
    number := LookAndSay2(number);
    l2 := length(number);
    IF i <10 then
      writeln(number);
    writeln(i:4,length(number):16,l2/l1:10:6);
  end;
end.
{----------------------------------------------------------- 149 loops-do-while}
program countto6(output);

var
  i: integer;

begin
  i := 0;
  repeat
    i := i + 1;
    writeln(i)
  until i mod 6 = 0
end.
{---------------------------------------------------------------- 150 loops-for}
program stars(output);

var
  i, j: integer;

begin
  for i := 1 to 5 do
    begin
      for j := 1 to i do
        write('*');
      writeln
    end
end.
{---------------------------------------------------- 151 loops-n-plus-one-half}
program numlist(output);

const MAXNUM: integer = 10;
var
  i: integer;

begin
  { loop 1: w/ if branching }
  for i := 1 to MAXNUM do
    begin
      write(i);
      if i <> MAXNUM then
        write(', ')
    end;
  writeln;
  { loop 2: w/o if branching }
  for i := 1 to MAXNUM-1 do
    write(i, ', ');
  writeln(MAXNUM);
end.
{------------------------------------------------------------- 152 loops-nested}
program LoopNested;
uses SysUtils;
const Ni=10; Nj=20;
var
  tab: array[1..Ni,1..Nj] of Integer;
  i, j: Integer;
label loopend;
begin
  for i := 1 to Ni do
    for j := 1 to Nj do
      tab[i,j]:=random(20)+1;
  for i := 1 to Ni do
  begin
    for j := 1 to Nj do
    begin
      WriteLn(tab[i,j]);
      if tab[i,j]=20 then goto loopend
    end
  end;
loopend:
end.
{-------------------------------------------------------------- 153 loops-while}
program divby2(output);

var
  i: integer;

begin
  i := 1024;
  while i > 0 do
    begin
      writeln(i);
      i := i div 2
    end
end.
{------------------------------------------------------ 154 lucas-lehmer-test-1}
Program LucasLehmer(output);
var
  s, n: int64;
  i, exponent: integer;
begin
  n := 1;
  for exponent := 2 to 31 do
  begin
    if exponent = 2 then
      s := 0
    else
      s := 4;
    n := (n + 1)*2 - 1;  // This saves from needing the math unit for exponentiation
    for i := 1 to exponent-2 do
      s := (s*s - 2) mod n;
    if s = 0 then
      writeln('M', exponent, ' is PRIME!');
  end;
end.
{---------------------------------------------------------- 155 ludic-numbers-1}
program lucid;
{$IFDEF FPC}
  {$MODE objFPC} // useful for x64
{$ENDIF}

const
  //66164 -> last < 1000*1000;
  maxLudicCnt = 2005;//must be > 1
type

  tDelta = record
             dNum,
             dCnt : LongInt;
           end;

  tpDelta = ^tDelta;
  tLudicList = array of tDelta;

  tArrdelta =array[0..0] of tDelta;
  tpLl = ^tArrdelta;

function isLudic(plL:tpLl;maxIdx:nativeInt):boolean;
var
  i,
  cn : NativeInt;
Begin
  //check if n is 'hit' by a prior ludic number
  For i := 1 to maxIdx do
    with plL^[i] do
    Begin
      //Mask read modify write reread
      //dec(dCnt);IF dCnt= 0
      cn := dCnt;
      IF cn = 1 then
      Begin
        dcnt := dNum;
        isLudic := false;
        EXIT;
       end;
      dcnt := cn-1;
    end;
  isLudic := true;
end;

procedure CreateLudicList(var Ll:tLudicList);
var
  plL : tpLl;
  n,LudicCnt : NativeUint;
begin
  // special case 1
  n := 1;
  Ll[0].dNum := 1;

  plL := @Ll[0];
  LudicCnt := 0;
  repeat
    inc(n);
    If isLudic(plL,LudicCnt ) then
    Begin
      inc(LudicCnt);
      with plL^[LudicCnt] do
      Begin
        dNum := n;
        dCnt := n;
      end;
      IF (LudicCnt >= High(LL)) then
        BREAK;
    end;
  until false;
end;

procedure  firstN(var Ll:tLudicList;cnt: NativeUint);
var
  i : NativeInt;
Begin
  writeln('First ',cnt,' ludic numbers:');
  For i := 0 to cnt-2 do
    write(Ll[i].dNum,',');
  writeln(Ll[cnt-1].dNum);
end;

procedure triples(var Ll:tLudicList;max: NativeUint);
var
  i,
  chk : NativeUint;
Begin
  // special case 1,3,7
  writeln('Ludic triples below ',max);
  write('(',ll[0].dNum,',',ll[2].dNum,',',ll[4].dNum,') ');

  For i := 1 to High(Ll) do
  Begin
    chk := ll[i].dNum;
    If chk> max then
      break;
    If (ll[i+2].dNum = chk+6) AND (ll[i+1].dNum = chk+2) then
      write('(',ll[i].dNum,',',ll[i+1].dNum,',',ll[i+2].dNum,') ');
  end;
  writeln;
  writeln;
end;

procedure LastLucid(var Ll:tLudicList;start,cnt: NativeUint);
var
  limit,i : NativeUint;
Begin
  dec(start);
  limit := high(Ll);
  IF cnt >= limit then
    cnt := limit;
  if start+cnt >limit then
    start := limit-cnt;
  writeln(Start+1,'.th to ',Start+cnt+1,'.th ludic number');
  For i := 0 to cnt-1 do
    write(Ll[i+start].dNum,',');
  writeln(Ll[start+cnt].dNum);
  writeln;
end;

function CountLudic(var Ll:tLudicList;Limit: NativeUint):NativeUint;
var
  i,res : NativeUint;
Begin
  res := 0;
  For i := 0 to High(Ll) do begin
    IF Ll[i].dnum <= Limit then
      inc(res)
    else
      BREAK;
  CountLudic:= res;
end;

end;
var
  LudicList : tLudicList;
BEGIN
  setlength(LudicList,maxLudicCnt);
  CreateLudicList(LudicList);
  firstN(LudicList,25);
  writeln('There are ',CountLudic(LudicList,1000),' ludic numbers below 1000');
  LastLucid(LudicList,2000,5);
  LastLucid(LudicList,maxLudicCnt,5);
  triples(LudicList,250);//all-> (LudicList,LudicList[High(LudicList)].dNum);
END.
{------------------------------------------------------------- 156 machine-code}
Program Example66;
{Inspired... program to demonstrate the MMap function. Freepascal docs }
Uses
  BaseUnix,Unix;

const
  code : array[0..9] of byte = ($8B, $44, $24, $4, $3, $44, $24, $8, $C3, $00);
  a :longInt= 12;
  b :longInt=  7;
type
  tDummyFunc = function(a,b:LongInt):LongInt;cdecl;
Var
    Len,k  : cint;
    P    : Pointer;

begin
  len := sizeof(code);
  P:= fpmmap(nil,
             len+1 ,
             PROT_READ OR PROT_WRITE OR PROT_EXEC,
             MAP_ANONYMOUS OR MAP_PRIVATE,
             -1, // for MAP_ANONYMOUS
             0);
  If P =  Pointer(-1) then
    Halt(4);

  for k := 0 to len-1 do
    pChar(p)[k] := char(code[k]);

  k := tDummyFunc(P)(a,b);

  Writeln(a,'+',b,' = ',k);
  if fpMUnMap(P,Len)<>0 Then
    Halt(fpgeterrno);
end.
{--------------------------------------------- 157 magic-squares-of-odd-order-1}
PROGRAM magic;
(* Magic squares of odd order *)
CONST
  n=9;
VAR
  i,j :INTEGER;
BEGIN (*magic*)
  WRITELN('The square order is: ',n);
  FOR i:=1 TO n DO
  BEGIN
    FOR j:=1 TO n DO
      WRITE((i*2-j+n-1) MOD n*n + (i*2+j-2) MOD n+1:5);
    WRITELN
  END;
  WRITELN('The magic number is: ',n*(n*n+1) DIV 2)
END (*magic*).
{--------------------------------------------- 158 magic-squares-of-odd-order-2}
PROGRAM magic;
{$IFDEF FPC }{$MODE DELPHI}{$ELSE}{$APPTYPE CONSOLE}{$ENDIF}
uses
  sysutils;
(* Magic squares of odd order *)
type
  tsquare = array of array of LongInt;
  trowcol = array of NativeInt;

function GenShuffleRowCol(n: nativeInt):trowcol;
var
  i,j,tmp: NativeInt;
begin
  setlength(result,0);
  IF n > 0 then
  Begin
    setlength(result,n);
    For i := 0 to n-1 do
      result[i] := i;
    //shuffle
    For i := n-1 downto 1 do
    Begin
      j := random(i+1);//j == [0..i]
      tmp := result[i];result[i]:= result[j];result[j]:= tmp;
    end;
  end;
end;

function MagicSqrOdd(n:nativeInt;SwapColRoW:boolean):tsquare;
VAR
  rowIdx,colIdx,row,col,num :NativeInt;
  cols,rows :trowcol;
BEGIN
  rows:= GenShuffleRowCol(n);
  cols:= GenShuffleRowCol(n);
  setlength(result,n,n);
  FOR rowIdx:= 0 TO n-1 DO
  BEGIN
    row := rows[rowIdx];
    FOR colIdx:=0 TO n-1 DO
    Begin
      col := cols[colIdx];
      //corrected formula cause row :0..n*1-> corrected to 1..n
      num := (row*2-col+n+2) MOD n*n + (row*2+col+1) MOD n+1;
      IF SwapColRoW then
        result[colIdx,rowIdx] := num
      else
        result[rowIdx,colIdx] := num;
    end;
  END;
END;

function MagicSqrCheck(const Mq:tsquare):boolean;
var
  row,col,rowsum,mn,n,itm: NativeInt;
  colSum:trowcol;
begin
  n := length(Mq[0]);
  mn := n*(n*n+1) DIV 2;
  setlength(colsum,n);//automatic initialised to zero
  For row := n-1 downto 0 do
  Begin
    //check one row
    rowsum := 0;
    For col := n-1 downto 0 do
    Begin
      itm := Mq[row,col];
      write(itm:4);
      inc(rowsum,itm);
      //sum up the columns too, for I'm just here
      inc(colSum[col],itm);
    end;
    writeln;
    result := (rowsum=mn);
    IF Not(result) then begin writeln(row:4,col:4,rowsum:10);EXIT;end;
  end;
  //check columns
  For col := n-1 downto 0 do
  Begin
    result := (colSum[col]=mn);
    IF Not(result) then begin writeln(col:4,colSum[col]:10);EXIT;end;
  end;
  writeln;
end;


var
  n,mn : nativeInt;
  Mq : tsquare;
Begin
  randomize;
  n := 9;
  mn := n*(n*n+1) DIV 2;
  WRITELN('The square order is: ',n);
  WRITELN('The magic number is: ',mn);
  Mq := MagicSqrOdd(n,random(2)=0);
  writeln(MagicSqrCheck(Mq));
end.
{---------------------------------------------------------- 159 man-or-boy-test}
program manorboy(output);

function zero: integer; begin zero := 0 end;
function one: integer; begin one := 1 end;
function negone: integer; begin negone := -1 end;

function A(
  k: integer;
  function x1: integer;
  function x2: integer;
  function x3: integer;
  function x4: integer;
  function x5: integer
): integer;

  function B: integer;
  begin k := k - 1;
        B := A(k, B, x1, x2, x3, x4)
  end;

begin if k <= 0 then A := x4 + x5 else A := B
end;

begin writeln(A(10, one, negone, negone, one, zero))
end.
{----------------------------------------------------- 160 matrix-transposition}
Program Transpose;

const
  A: array[1..3,1..5] of integer = (( 1,  2,  3,  4,  5),
                                    ( 6,  7,  8,  9, 10),
				    (11, 12, 13, 14, 15)
				   );
var
  B: array[1..5,1..3] of integer;
  i, j: integer;

begin
  for i := low(A) to high(A) do
    for j := low(A[1]) to high(A[1]) do
      B[j,i] := A[i,j];

  writeln ('A:');
  for i := low(A) to high(A) do
  begin
    for j := low(A[1]) to high(A[1]) do
      write (A[i,j]:3);
    writeln;
  end;

  writeln ('B:');
  for i := low(B) to high(B) do
  begin
    for j := low(B[1]) to high(B[1]) do
      write (B[i,j]:3);
    writeln;
  end;
end.
{------------------------------------------------ 161 matrix-with-two-diagonals}
program diagonaldiagonal;
const N = 7;
type
    index = 1..N;
var
    a : array[index, index] of real;
    i, j, j1, j2 : index;
begin
    for i := 1 to N do
    begin
        for j := 1 to N do
            a[i, j] := 0.0;
        j1 := i;
        j2 := N - i + 1;
        a[i, j1] := 1.0;
        a[i, j2] := 1.0;
    end;

    for i := 1 to N do
    begin
        for j := 1 to N do
            write(a[i, j]:2:0);
        writeln();
    end
end.
{------------------------------------------------ 162 maximum-triangle-path-sum}
program TriSum;
{'triangle.txt'
* one element per line
55
94
48
95
30
96
...}
const
 cMaxTriHeight = 18;
 cMaxTriElemCnt = (cMaxTriHeight+1)*cMaxTriHeight DIV 2 +1;
type
  tElem = longint;
  tbaseRow =  array[0..cMaxTriHeight] of tElem;
  tmyTri   =  array[0..cMaxTriElemCnt] of tElem;

function ReadTri(     fname:string;
                  out     t:tmyTri):integer;
{read triangle values into t and returns height}
var
  f : text;
  s : string;
  i : integer;
  ValCode : word;
begin
  i := 0;
  fillchar(t,Sizeof(t),#0);

  Assign(f,fname);
  {$I-}
  reset(f);
  IF ioResult <> 0 then
  begin
    writeln('IO-Error ',ioResult);
    close(f);
    ReadTri := i;
    EXIT;
  end;
  {$I+}

  while NOT(EOF(f)) AND (i<cMaxTriElemCnt) do
  begin
    readln(f,s);
    val(s,t[i],ValCode);
    inc(i);
    IF ValCode <> 0 then
    begin
      writeln(ValCode,' conversion error at line ',i);
      fillchar(t,Sizeof(t),#0);
      i := 0;
      BREAK;
    end;
  end;
  close(f);
  ReadTri := round(sqrt(2*(i-1)));
end;

function TriMaxSum(var t: tmyTri;hei:integer):integer;
{sums up higher values bottom to top}
var
  i,r,h,tmpMax : integer;
  idxN : integer;
  sumrow : tbaseRow;
begin
  h := hei;
  idxN := (h*(h+1)) div 2 -1;
  {copy base row}
  move(t[idxN-h+1],sumrow[0],SizeOf(tElem)*h);
  dec(h);
{  for r := 0 to h do write(sumrow[r]:4);writeln;}
  idxN := idxN-h;
  while idxN >0 do
  begin
    i := idxN-h;
    r := 0;
    while r < h do
    begin
      tmpMax:= sumrow[r];
      IF tmpMax<sumrow[r+1] then
        tmpMax:=sumrow[r+1];
      sumrow[r]:= tmpMax+t[i];
      inc(i);
      inc(r);
    end;
    idxN := idxN-h;
    dec(h);
{  for r := 0 to h do write(sumrow[r]:4);writeln;}
  end;
  TriMaxSum := sumrow[0];
end;

var
  h : integer;
  triangle : tmyTri;
Begin
{  writeln(TriMaxSum(triangle,ReadTri('triangle.txt',triangle))); -> 1320}
  h := ReadTri('triangle.txt',triangle);
  writeln('height sum');
  while h > 0 do
  begin
    writeln(h:4,TriMaxSum(triangle,h):7);
    dec(h);
  end;
end.
{-------------------------------------------------------- 163 mcnuggets-problem}
program McNuggets;

{$mode objfpc}{$H+}

const
  ARRAY_SIZE_STEP = 20; // small, to demonstrate extending array dynamically
var
  i, nr_consec : integer;
  can_do : array of boolean;
begin
  SetLength( can_do, ARRAY_SIZE_STEP);
  can_do[0] := true;
  nr_consec := 0;
  i := 0;
  repeat
    inc(i);
    if i >= Length( can_do) then SetLength( can_do, i + ARRAY_SIZE_STEP);
    can_do[i] := ((i >= 6) and can_do[i - 6])
              or ((i >= 9) and can_do[i - 9])
              or ((i >= 20) and can_do[i - 20]);
    if can_do[i] then begin
      if can_do[i - 1] then inc( nr_consec)
      else nr_consec := 1;
    end
    else nr_consec := 0;
  until nr_consec = 6;
  WriteLn ('Max that can''t be represented is ', i - 6);
end.
{------------------------------------------------------ 164 middle-three-digits}
program Midl3dig;
{$IFDEF FPC}
  {$MODE Delphi} //result /integer => Int32 aka longInt etc..
{$ELSE}
  {$APPTYPE console} // Delphi
{$ENDIF}
uses
  sysutils;   //IntToStr
function GetMid3dig(i:NativeInt):Ansistring;
var
  n,l: NativeInt;
Begin
  setlength(result,0);
  //n = |i| jumpless abs
  n := i-((ORD(i>0)-1)AND (2*i));
  //calculate digitcount
  IF n > 0 then
    l := trunc(ln(n)/ln(10))+1
  else
    l := 1;
  if l<3 then Begin  write('got too few digits');  EXIT; end;
  If Not(ODD(l)) then Begin write('got even number of digits'); EXIT; end;
  result:= copy(IntToStr(n),l DIV 2,3);
end;
const
  Test : array [0..16] of NativeInt =
    ( 123,12345,1234567,987654321,10001,-10001,
    -123,-100,100,-12345,1,2,-1,-10,2002,-2002,0);
var
  i,n : NativeInt;
Begin
  For i := low(Test) to High(Test) do
  Begin
    n := Test[i];
    writeln(n:9,': ',GetMid3dig(Test[i]));
  end;
end.
{--------- 165 minimum-number-of-cells-after-before-above-and-below-nxn-squares}
program mindistance;
{$IFDEF FPC} //used fpc 3.2.1
  {$MODE DELPHI}  {$OPTIMIZATION ON,ALL}  {$COPERATORS ON}
{$ELSE}
  {$APPTYPE CONSOLE}
{$ENDIF}
uses
  sysutils
{$IFDEF WINDOWS},Windows{$ENDIF}
  ;

type
  tMinDist = array of Uint32;
  tpMinDist= pUint32;
var
  dgtwidth : NativeUint;
  OneRowElems : tMinDist;

function CalcDigitWidth(n: NativeUint):NativeUint;
begin
  result:= 2;
  while n>= 10 do
  Begin
    inc(result);
    n := n DIV 10;
  end;
end;

procedure OutOneRow(var OneRowElems:tMinDist);
var
  one_digit,one_row :string;
  i : NativeInt;
begin
  one_row:= '';
  For i := low(OneRowElems) to High(OneRowElems) do
  begin
    str(OneRowElems[i]:dgtwidth,one_digit);
    one_row += one_digit;
  end;
  writeln(one_row);
end;

procedure OutSquareDist(MaxCoor : NativeUInt);
var
  pRes : tpMinDist;
  min_dist,row : NativeInt;
begin
  //iniated with 0
  setlength(OneRowElems,MaxCoor);
  MaxCoor -= 1;//= High(OneRowElems);
  pRes := @OneRowElems[0];

  row := MaxCoor;
  repeat
    min_dist := MaxCoor-row;
    if min_dist > row  then
      min_dist := row;
    //fill the inner rest with min_dist
    FillDWord(pRes[min_dist],(MaxCoor-2*min_dist+1),min_dist);

    OutOneRow(OneRowElems);

    dec(row);
  until row < 0;
  writeln;
  setlength(OneRowElems,0);
end;

procedure Test(MaxCoor:NativeInt);
begin
  if MaxCoor<= 0 then
    EXIT;
  write('Minimum number of cells after, before, above and below ');
  writeln(MaxCoor,' x ',MaxCoor,' square:');
  dgtwidth := CalcDigitWidth(NativeUint(MaxCoor) DIV 2);
  OutSquareDist(MaxCoor);
end;

Begin
//  Test(200*1000);// without output TIO.RUN Real time: 4.152 s CPU share: 97.70 %
  Test(23);
  Test(10);
  Test(9);
  Test(1);
end.
{------------------ 166 minimum-positive-multiple-in-base-10-using-only-0-and-1}
program B10_num;
//numbers having only digits 0 and 1 in their decimal representation
//see https://oeis.org/A004290
//Limit of n= 2^19

{$IFDEF FPC} //fpc 3.0.4
  {$MODE DELPHI}  {$OPTIMIZATION ON,ALL} {$codealign proc=16}
{$ELSE}
  {$APPTYPE CONSOLE}
{$ENDIF}
uses
  sysutils,gmp; //Format
const
  Limit  = 256*256*8;//8+8+3 Bits aka 19 digits
  B10_4  = 10*10*10*10;
  B10_5  = 10*B10_4;
  B10_9  = B10_5*B10_4;
  HexB10 : array[0..15] of NativeUint = (0000,0001,0010,0011,0100,0101,0110,0111,
                                         1000,1001,1010,1011,1100,1101,1110,1111);
var
  ModToIdx  : array[0..Limit] of Int32;
  B10ModN : array[0..limit-1] of Uint32;
  B10 : array of Uint64;

procedure OutOfRange(n:NativeUint);
Begin
  Writeln(n:7,' -- out of range --');
end;

function ConvB10(n: Uint32):Uint64;
//Convert n from binary as if it is Base 10
//limited for Uint64 to 2^20-1= 1048575 ala 19 digits
var
  fac_B10 : Uint64;
Begin
  fac_B10 := 1;
  result := 0;
  repeat
    result += fac_B10*HexB10[n AND 15];
    n := n DIV 16;
    fac_B10 *=B10_4;
  until n = 0;
end;

procedure InitB10;
var
  i : NativeUint;
Begin
  setlength(B10,Limit);
  For i := 0 to Limit do
    b10[i]:= ConvB10(i);
end;

procedure Out_Big(n,h,l:NativeUint);
var
  num,rest : MPInteger;
Begin
  //For Windows gmp ui is Uint32 :-(
  z_init_set_ui(num,Hi(B10[h]));
  z_mul_2exp(num,num,32);
  z_add_ui(num,num,Lo(B10[h]));
  z_mul_ui(num,num,B10_5);z_mul_ui(num,num,B10_5);
  z_mul_ui(num,num,B10_5);z_mul_ui(num,num,B10_4);

  z_init_set_ui(rest,Hi(B10[l]));
  z_mul_2exp(rest,rest,32);
  z_add_ui(rest,rest,Lo(B10[l]));
  z_add(num,num,rest);
  write(Format('%7d %19u%.19u ',[n,B10[h],B10[l]]));
  IF z_divisible_ui_p(num,n) then
  Begin
    z_cdiv_q_ui(num, num,n);
    write(z_get_str(10,num));
  end;
  writeln;
  z_clear(rest);
  z_clear(num);
end;

procedure Out_Small(i,n: NativeUint);
var
  value,Mul : Uint64;
Begin
  value := B10[i];
  mul := value div n;
  IF mul = 1 then
    mul := n;
  writeln(n:7,value:39,' ',mul);
end;

procedure CheckBig_B10(n:NativeUint);
var
  h,BigMod,h_mod:NativeUint;
  l : NativeInt;
Begin
  BigMod :=(sqr(B10_9)*10) MOD n;
  For h := Low(B10ModN)+1 to High(B10ModN) do
  Begin
    //h_mod+l_mod == n =>  n- h_mod = l_mod
    h_mod := n-(BigMod*B10ModN[h])MOD n;
    l := ModToIdx[h_mod];
    if l>= 0 then
    Begin
      Out_Big(n,h,l);
      EXIT;
    end;
  end;
  OutOfRange(n);
end;

procedure Check_B10(n:NativeUint);
var
  pB10 : pUint64;
  i,value : NativeUint;
begin
  B10ModN[0] := 0;
  //set all modulus n  => 0..N-1 to -1
  fillchar(ModToIdx,n*SizeOf(ModToIdx[0]),#255);
  ModToIdx[0] := 0;
  pB10 := @B10[0];
  i := 1;
  repeat
    value := Uint64(pB10[i]) MOD n;
    If value = 0 then
      Break;
    B10ModN[i] := value;
    //memorize the first occurrence
    if ModToIdx[value] < 0 then
      ModToIdx[value]:= i;
    inc(i);
  until i > High(B10ModN);
  IF i < High(B10ModN) then
    Out_Small(i,n)
  else
    CheckBig_B10(n);
end;

var
  n : Uint32;
Begin
  InitB10;
  writeln('Number':7,'B10':39,' Multiplier');
  For n := 1 to 10 do
    Check_B10(n);
  For n := 95 to 105 do
    Check_B10(n);

  Check_B10(297);  Check_B10(576);  Check_B10(891);  Check_B10(909);
  Check_B10( 999);  Check_B10(1998);  Check_B10(2079);  Check_B10(2251);
  Check_B10(2277);  Check_B10(2439);  Check_B10(2997);  Check_B10(4878);
  check_B10(9999);
  check_B10(2*9999); //real 0m0,077s :-)
end.
{------------------------------------------------------- 167 monty-hall-problem}
program MontyHall;

uses
  sysutils;

const
  NumGames = 1000;


{Randomly pick a door(a number between 0 and 2}
function PickDoor(): Integer;
begin
  Exit(Trunc(Random * 3));
end;

var
  i: Integer;
  PrizeDoor: Integer;
  ChosenDoor: Integer;
  WinsChangingDoors: Integer = 0;
  WinsNotChangingDoors: Integer = 0;
begin
  Randomize;
  for i := 0 to NumGames - 1 do
  begin
    //randomly picks the prize door
    PrizeDoor := PickDoor;
    //randomly chooses a door
    ChosenDoor := PickDoor;

    //if the strategy is not changing doors the only way to win is if the chosen
    //door is the one with the prize
    if ChosenDoor = PrizeDoor then
      Inc(WinsNotChangingDoors);

    //if the strategy is changing doors the only way to win is if we choose one
    //of the two doors that hasn't the prize, because when we change we change to the prize door.
    //The opened door doesn't have a prize
    if ChosenDoor <> PrizeDoor then
      Inc(WinsChangingDoors);
  end;

  Writeln('Num of games:' + IntToStr(NumGames));
  Writeln('Wins not changing doors:' + IntToStr(WinsNotChangingDoors) + ', ' +
    FloatToStr((WinsNotChangingDoors / NumGames) * 100) + '% of total.');

  Writeln('Wins changing doors:' + IntToStr(WinsChangingDoors) + ', ' +
    FloatToStr((WinsChangingDoors / NumGames) * 100) + '% of total.');

end.
{------------------------------------------------------------ 168 mosaic-matrix}
program mosaicMatrix(output);

const
  filledCell = '1';
  emptyCell = '⋅';

procedure printMosaicMatrix(dimension: integer);
var
  line: integer;
begin
  { NB: In Pascal, `for`-loop-limits are evaluated exactly once. }
  for line := 1 to dimension do
  begin
    for dimension := 1 to dimension do
    begin
      { `ord(odd(line))` is either zero or one. }
      if odd(dimension + ord(odd(line))) then
      begin
        { `write(emptyCell)` is shorthand for `write(output, emptyCell)`. }
        write(emptyCell)
      end
      else
      begin
        write(filledCell)
      end
    end;
    writeLn
  end
end;

begin
  printMosaicMatrix(9)
end.
{------------------------------------------------------- 169 munchausen-numbers}
{$IFDEF FPC}{$MODE objFPC}{$ELSE}{$APPTYPE CONSOLE}{$ENDIF}
uses
  sysutils;
type
  tdigit  = byte;
const
  base = 10;
  maxDigits = base-1;// set for 32-compilation otherwise overflow.

var
  DgtPotDgt : array[0..base-1] of NativeUint;
  cnt: NativeUint;

function CheckSameDigits(n1,n2:NativeUInt):boolean;
var
  dgtCnt : array[0..Base-1] of NativeInt;
  i : NativeUInt;
Begin
  fillchar(dgtCnt,SizeOf(dgtCnt),#0);
  repeat
    //increment digit of n1
    i := n1;n1 := n1 div base;i := i-n1*base;inc(dgtCnt[i]);
    //decrement digit of n2
    i := n2;n2 := n2 div base;i := i-n2*base;dec(dgtCnt[i]);
  until (n1=0) AND (n2= 0 );
  result := true;
  For i := 0 to Base-1 do
    result := result AND (dgtCnt[i]=0);
end;

procedure Munch(number,DgtPowSum,minDigit:NativeUInt;digits:NativeInt);
var
  i: NativeUint;
begin
  inc(cnt);
  number := number*base;
  IF digits > 1 then
  Begin
    For i := minDigit to base-1 do
      Munch(number+i,DgtPowSum+DgtPotDgt[i],i,digits-1);
  end
  else
    For i := minDigit to base-1 do
      //number is always the arrangement of the digits leading to smallest number
      IF (number+i)<= (DgtPowSum+DgtPotDgt[i]) then
        IF CheckSameDigits(number+i,DgtPowSum+DgtPotDgt[i]) then
          iF number+i>0 then
            writeln(Format('%*d  %.*d',
             [maxDigits,DgtPowSum+DgtPotDgt[i],maxDigits,number+i]));
end;

procedure InitDgtPotDgt;
var
  i,k,dgtpow: NativeUint;
Begin
  // digit ^ digit ,special case 0^0 here 0
  DgtPotDgt[0]:= 0;
  For i := 1 to Base-1 do
  Begin
    dgtpow := i;
    For k := 2 to i do
      dgtpow := dgtpow*i;
    DgtPotDgt[i] := dgtpow;
  end;
end;

begin
  cnt := 0;
  InitDgtPotDgt;
  Munch(0,0,0,maxDigits);
  writeln('Check Count ',cnt);
end.
{--------------------------------------------------------- 170 mutual-recursion}
Program MutualRecursion;

{M definition comes after F which uses it}
function M(n : Integer) : Integer; forward;

function F(n : Integer) : Integer;
begin
   if n = 0 then
      F := 1
   else
      F := n - M(F(n-1));
end;

function M(n : Integer) : Integer;
begin
   if n = 0 then
      M := 0
   else
      M := n - F(M(n-1));
end;

var
   i : Integer;

begin
   for i := 0 to 19 do begin
      write(F(i) : 4)
   end;
   writeln;
   for i := 0 to 19 do begin
      write(M(i) : 4)
   end;
   writeln;
end.
{------------------------------------------------------- 171 n-queens-problem-1}
program eightqueens(output);
var i: integer;
    a: array [1..8] of boolean; { a[j]: no queen in row j }
    b: array [2..16] of boolean; { b[k]: no queen in kth diagonal down-left }
    c: array [-7..7] of boolean; { c[k]: no queen in kth diagonal down-right }
    x: array [1..8] of integer; { x[i]: position of queen in column i }
procedure print;
    var k: integer;
begin
    for k := 1 to 8 do write(x[k]: 4);
    writeln
end { print } ;

procedure try(i: integer);
    var j: integer;
begin
    for j := 1 to 8 do
        if a[j] and b[i+j] and c[i-j] then
        begin
            { place queen }
            x[i] := j;
            a[j] := false; b[i+j] := false; c[i-j] := false;
            if i < 8 then try(i+1) else print;
            { remove queen }
            a[j] := true; b[i+j] := true; c[i-j] := true
        end
end { try } ;

begin
    for i := 1 to 8 do a[i] := true;
    for i := 2 to 16 do b[i] := true;
    for i := -7 to 7 do c[i] := true;
    try(1)
end .
{---------------------------------------------- 172 non-decimal-radices-convert}
Program ConvertDemo(output);

uses
  Math, SysUtils;

const
  alphanum = '0123456789abcdefghijklmnopqrstuvwxyz';

function ToDecimal(base: integer; instring: string): integer;
  var
    inlength, i, n: integer;
  begin
    ToDecimal := 0;
    inlength := length(instring);
    for i := 1 to inlength do
    begin
      n := pos(instring[i], alphanum) - 1;
      n := n * base**(inlength-i);
      Todecimal := ToDecimal + n;
    end;
  end;

function ToBase(base, number: integer): string;
  var
    i, rem: integer;
  begin
    ToBase :='                               ';
    for i := 31 downto 1 do
    begin
      if (number < base) then
      begin
        ToBase[i] := alphanum[number+1];
        break;
      end;
      rem := number mod base;
      ToBase[i] := alphanum[rem+1];
      number := number div base;
    end;
    ToBase := trimLeft(ToBase);
  end;

begin
  writeln ('1A: ', ToDecimal(16, '1a'));
  writeln ('26: ', ToBase(16, 26));
end.
{---------------------------------------------------------------- 173 nonoblock}
program Nonoblock;
uses SysUtils;

// Working through solutions to the problem:
// Fill an array z[] with non-negative integers
//  whose sum is the passed-in integer s.
function GetFirstSolution( var z : array of integer;
                               s : integer) : boolean;
var
  j : integer;
begin
  result := (s >= 0) and (High(z) >= 0);  // failed if s < 0 or array is empty
  if result then begin // else initialize to solution 0, ..., 0, s
    j := High(z);  z[j] := s;
    while (j > 0) do begin
      dec(j);      z[j] := 0;
    end;
  end;
end;

// Next solution: return true for success, false if no more solutions.
// Solutions are generated in lexicographic order.
function GetNextSolution( var z : array of integer) : boolean;
var
  h, j : integer;
begin
  h := High(z);
  j := h; // find highest index j such that z[j] > 0.
  while (j > 0) and (z[j] = 0) do dec(j);
  result := (j > 0);   // if index is 0, or there is no such index, failed
  if result then begin // else update caller's array to give next solution
    inc(z[j - 1]);
    z[h] := z[j] - 1;
    if (j < h) then z[j] := 0;
  end;
end;

// Procedure to print solutions to nonoblock task on RosettaCode
procedure PrintSolutions( nrCells : integer;
                          blockSizes : array of integer);
const // cosmetic
  MARGIN = 4;
  GAP_CHAR = '.';
  BLOCK_CHAR = '#';
var
  sb : SysUtils.TStringBuilder;
  nrBlocks, blockSum, gapSum : integer;
  gapSizes : array of integer;
  i, nrSolutions : integer;
begin
  nrBlocks := Length( blockSizes);

  // Print a title, showing the number of cells and the block sizes
  sb := SysUtils.TStringBuilder.Create();
  sb.AppendFormat('%d cells; blocks [', [nrCells]);
  for i := 0 to nrBlocks - 1 do begin
    if (i > 0) then sb.Append(',');
    sb.Append( blockSizes[i]);
  end;
  sb.Append(']');
  WriteLn( sb.ToString());

  blockSum := 0; // total of block sizes
  for i := 0 to nrBlocks - 1 do inc( blockSum, blockSizes[i]);

  gapSum := nrCells - blockSum;
  // Except in the trivial case of no blocks,
  // we reduce the size of each inner gap by 1.
  if nrBlocks > 0 then dec( gapSum, nrBlocks - 1);

  // Work through all solutions and print them nicely.
  nrSolutions := 0;
  SetLength( gapSizes, nrBlocks + 1); // include the gap at each end
  if GetFirstSolution( gapSizes, gapSum) then begin
    repeat
      inc( nrSolutions);
      sb.Clear();
      sb.Append( ' ', MARGIN);
      for i := 0 to nrBlocks - 1 do begin
        sb.Append( GAP_CHAR, gapSizes[i]);
        // We reduced the inner gaps by 1; now we restore the deleted char.
        if (i > 0) then sb.Append( GAP_CHAR);
        sb.Append( BLOCK_CHAR, blockSizes[i]);
      end;
      sb.Append( GAP_CHAR, gapSizes[nrBlocks]);
      WriteLn( sb.ToString());
    until not GetNextSolution( gapSizes);
  end;
  sb.Free();
  WriteLn( SysUtils.Format( 'Number of solutions = %d', [nrSolutions]));
  WriteLn('');
end;

// Main program
begin
  PrintSolutions( 5, [2,1]);
  PrintSolutions( 5, []);
  PrintSolutions( 10, [8]);
  PrintSolutions( 15, [2,3,2,3]);
  PrintSolutions( 5, [2,3]);
end.
{---------------------------------------------------------------------- 174 nth}
Program n_th;

function Suffix(N: NativeInt):AnsiString;
var
  res: AnsiString;
begin
  res:= 'th';
  case N mod 10 of
  1:IF N mod 100 <> 11 then
      res:= 'st';
  2:IF N mod 100 <> 12 then
      res:= 'nd';
  3:IF N mod 100 <> 13 then
      res:= 'rd';
  else
  end;
  Suffix := res;
end;

procedure Print_Images(loLim, HiLim: NativeInt);
var
  i : NativeUint;
begin
  for I := LoLim to HiLim do
    write(i,Suffix(i),' ');
  writeln;
end;

begin
   Print_Images(   0,   25);
   Print_Images( 250,  265);
   Print_Images(1000, 1025);
end.
{------------------------------------------------------------- 175 number-names}
program NumberNames(output);

const
  smallies: array[1..19] of string =
              ('one', 'two', 'three', 'four', 'five', 'six',
               'seven', 'eight', 'nine', 'ten', 'eleven',
      	       'twelve', 'thirteen', 'fourteen', 'fifteen',
	       'sixteen', 'seventeen', 'eighteen', 'nineteen');
  tens: array[2..9] of string =
          ('twenty', 'thirty', 'forty', 'fifty',
           'sixty', 'seventy', 'eighty', 'ninety');

function domaxies(number: int64): string;
  const
    maxies: array[0..5] of string =
              (' thousand', ' million', ' billion',
               ' trillion', ' quadrillion', ' quintillion');
  begin
    domaxies := '';
    if number >= 0 then
      domaxies := maxies[number];
  end;

function doHundreds( number: int64): string;
  begin
    doHundreds := '';
    if number > 99 then
    begin
      doHundreds := smallies[number div 100];
      doHundreds := doHundreds + ' hundred';
      number := number mod 100;
      if number > 0 then
        doHundreds := doHundreds + ' and ';
    end;
    if number >= 20 then
    begin
      doHundreds := doHundreds + tens[number div 10];
      number := number mod 10;
      if number > 0 then
        doHundreds := doHundreds + '-';
    end;
    if (0 < number) and (number < 20) then
      doHundreds := doHundreds + smallies[number];
  end;

function spell(number: int64): string;
  var
    scaleFactor: int64 = 1000000000000000000;
    maxieStart, h: int64;
  begin
    spell := '';
    maxieStart := 5;
    if number < 20 then
      spell := smallies[number];
    while scaleFactor > 0 do
    begin
      if number > scaleFactor then
      begin
	h := number div scaleFactor;
	spell := spell + doHundreds(h) + domaxies(maxieStart);
	number := number mod scaleFactor;
	if number > 0 then
	  spell := spell + ', ';
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
end.
{----------------------------------------------------- 176 number-reversal-game}
program NumberReversalGame;

procedure PrintList(list: array of integer);
var
    i: integer;
begin
    for i := low(list) to high(list) do
    begin
        Write(list[i]);
        if i < high(list) then Write(', ');
    end;
    WriteLn;
end;

procedure Swap(var list: array of integer; i, j: integer);
var
    buf: integer;
begin
    buf := list[i];
    list[i] := list[j];
    list[j] := buf;
end;

procedure ShuffleList(var list: array of integer);
var
    i, j, n: integer;
begin
    Randomize;

    for n := 0 to 99 do
    begin
        i := Random(high(list)+1);
        j := Random(high(list)+1);
        Swap(list, i, j);
    end;
end;

procedure ReverseList(var list: array of integer; j: integer);
var
    i: integer;
begin
    i := low(list);

    while i < j do
    begin
        Swap(list, i, j);
        i += 1;
        j -= 1;
    end;
end;

function IsOrdered(list: array of integer): boolean;
var
    i: integer;
begin
    IsOrdered := true;
    i:= high(list);

    while i > 0 do
    begin
        if list[i] <> (list[i-1] + 1) then
        begin
            IsOrdered:= false;
            break;
        end;
        i -= 1;
    end;
end;


var
    list: array [0..8] of integer = (1, 2, 3, 4, 5, 6, 7, 8, 9);
    n: integer;
    moves: integer;
begin

    WriteLn('Number Reversal Game');
    WriteLn;
    WriteLn('Sort the following list in ascending order by reversing the first n digits');
    WriteLn('from the left.');
    WriteLn;

    ShuffleList(list);
    PrintList(list);

    moves := 0;

    while not IsOrdered(list) do
    begin
        WriteLn('How many digits from the left will you reverse?');
        Write('> ');
        Read(n);

        ReverseList(list, n-1);
        PrintList(list);
        moves += 1;
    end;

    WriteLn;
    WriteLn('Congratulations you made it in just ', moves, ' moves!');
    WriteLn;
end.
{------------------------------ 177 numbers-with-prime-digits-whose-sum-is-13-1}
program PrimSumUpTo13;
{$IFDEF FPC}
   {$MODE DELPHI}
{$ELSE}
  {$APPTYPE CONSOLE}
{$ENDIF}
uses
  sysutils;

type
  tDigits = array[0..3] of Uint32;
const
  MAXNUM = 113;
var
 gblPrimDgtCnt :tDigits;
 gblCount: NativeUint;

function isPrime(n: NativeUint):boolean;
var
  i : NativeUInt;
Begin
  result := (n>1);
  if n<4 then
    EXIT;
  result := false;
  if n AND 1 = 0 then
    EXIT;
  i := 3;
  while i*i<= n do
  Begin
    If n MOD i = 0 then
      EXIT;
    inc(i,2);
  end;
  result := true;
end;

procedure Sort(var t:tDigits);
var
  i,j,k: NativeUint;
  temp : Uint32;
Begin
  For k := 0 to high(tdigits)-1 do
  Begin
    temp:= t[k];
    j := k;
    For i := k+1 to high(tdigits) do
    Begin
      if temp < t[i] then
      Begin
        temp := t[i];
        j := i;
      end;
    end;
    t[j] := t[k];
    t[k] := temp;
  end;
end;

function CalcPermCount:NativeUint;
//TempDgtCnt[0] = 3 and TempDgtCnt[1..3]= 2 -> dgtcnt = 3+3*2= 9
//permcount = dgtcnt! /(TempDgtCnt[0]!*TempDgtCnt[1]!*TempDgtCnt[2]!*TempDgtCnt[3]!);
//nom of n!  = 1,2,3, 4,5, 6,7, 8,9
//denom      = 1,2,3, 1,2, 1,2, 1,2
var
  TempDgtCnt : tdigits;
  i,f : NativeUint;
begin
  TempDgtCnt := gblPrimDgtCnt;
  Sort(TempDgtCnt);
  //jump over 1/1*2/2*3/3*4/4*..* TempDgtCnt[0]/TempDgtCnt[0]
  f := TempDgtCnt[0]+1;
  result :=1;

  For i := 1 to TempDgtCnt[1] do
  Begin
    result := (result*f) DIV i;
    inc(f);
  end;
  For i := 1 to TempDgtCnt[2] do
  Begin
    result := (result*f) DIV i;
    inc(f);
  end;
  For i := 1 to TempDgtCnt[3] do
  Begin
    result := (result*f) DIV i;
    inc(f);
  end;
end;

procedure check32(sum3 :NativeUint);
var
  n3 : nativeInt;
begin
   n3 := sum3 DIV 3;
   gblPrimDgtCnt[1]:= 0;
   while n3 >= 0 do
   begin
     //divisible by 2
     if sum3 AND 1 = 0 then
     Begin
       gblPrimDgtCnt[0] := sum3 shr 1;
       inc(gblCount,CalcPermCount);
       sum3 -= 3;
       inc(gblPrimDgtCnt[1]);
       dec(n3);
     end;
     sum3 -= 3;
     inc(gblPrimDgtCnt[1]);
     dec(n3);
   end;
end;

var
  Num : NativeUint;
  i,sum7,sum5: NativeInt;
BEGIN
  writeln('Sum':6,'Count of arrangements':25);

  Num := 1;
  repeat
    inc(num);
    if Not(isPrime(Num)) then
      CONTINUE;
    gblCount := 0;
    sum7 :=num;
    gblPrimDgtCnt[3] := 0;
    while sum7 >=0 do
    Begin
      sum5 := sum7;
      gblPrimDgtCnt[2]:=0;
      while sum5 >= 0 do
      Begin
        check32(sum5);
        dec(sum5,5);
        inc(gblPrimDgtCnt[2]);
      end;
      inc(gblPrimDgtCnt[3]);
      dec(sum7,7);
    end;
    writeln(num:6,gblCount:25,'   ');
  until num > MAXNUM;
END.
{----------------------- 178 numbers-with-same-digit-set-in-base-10-and-base-16}
program Dec_Hex_same_UsedDigits;
//Generating hexnumbers only containing decimal digits
//Than check if converted to decimal are using the same set of digits
//for 1e9 only 40e6 tests are needed.
{$IFDEF FPC}
  {$MODE DELPHI}  {$OPTIMIZATION ON,ALL}  {$COPERATORS ON}
{$ELSE}
  {$APPTYPE CONSOLE}
{$ENDIF}
const
  UpperLimit =  100*1000;//1000*1000*1000;//
type
  tUsedDigits = array[0..15] of byte;
var
  FormCnt: Int32;
  UsedDigits : tUsedDigits;

procedure Out_(n,h:Uint32);
Begin
  write(n:11,' = 0x',h);
  inc(FormCnt);
  If FormCnt >= 4 then
  Begin
    FormCnt := 0;
    writeln;
  end
  else
    if h <> 0 then
      write('':7-trunc(ln(h)/ln(10)))
    else
     write('':7);
end;

function CnvHexNumToDec(n:Uint32):UInt32;
//convert n treating their decimal digits are a hex number
//marking used Digits
var
  pD : pUint64;
  q,r,pot16 : UInt32;
begin
//clear UsedDigits
//For q := Low(UsedDigits) to High(UsedDigits) do  UsedDigits[q] := 0;
//much faster
  pD := @UsedDigits;pD[0]:= 0;pD[1]:= 0;

  result := 0;
  pot16 := 0;
  repeat
    q := n Div 10;
    r := n - 10* q;//n mod 10
    //set by hexdigit
    UsedDigits[r] := 2;
    result := result+ r shl pot16;
    inc(pot16,4);
    n := q;
  until n = 0;
end;

var
  HexWithDecDigits,HexNumInDec:Uint32;
  i,q,r,count : Uint32;
Begin
  FormCnt := 0;
  count := 0;
  HexWithDecDigits := 0;
  repeat
    HexNumInDec := CnvHexNumToDec(HexWithDecDigits);
    if HexNumInDec > UpperLimit then
      break;
    //check UsedDigits
    i := HexNumInDec;
    repeat
      q := i Div 10;
      r := i - 10* q;
      //if unused digit then break
      if UsedDigits[r] = 0 then
        BREAK;
      //set by decimal digit
      UsedDigits[r] := 1;
      i := q;
    until i = 0;
    if i = 0 then
    Begin
      repeat
        //was marked only by hex
        if UsedDigits[i]>1 then
          break;
        inc(i);
      until i > 9;
      if i > 9 then
      Begin
        if HexNumInDec< 100*1000 then
          Out_(HexNumInDec,HexWithDecDigits);
        inc(count);
      end;
    end;
    inc(HexWithDecDigits);
  until false;
  writeln;
  writeln('count : ',count);
  writeln('Max tested hex number 0x',HexWithDecDigits,' = ',HexNumInDec);
END.
{--------------------------- 179 numerical-integration-adaptive-simpsons-method}
program adaptive_simpson_task;

type function_real_to_real = function(value : real) : real;
var fa, fb, m, fm, whole : real;

  function quad_asr (f         : function_real_to_real;
                     a, b, tol : real;
                     depth     : integer) : real;

    procedure quad_asr_simpsons_ (    a, fa, b, fb   : real;
                                  var m, fm, quadval : real);
    begin
      m := (a + b) / 2;
      fm := f(m);
      quadval := ((b - a) / 6) * (fa + (4 * fm) + fb)
    end;

    function quad_asr_ (a, fa, b, fb      : real;
                        tol, whole, m, fm : real;
                        depth             : integer) : real;
    var
      lm, flm, left  : real;
      rm, frm, right : real;
      delta, tol_    : real;
    begin
      quad_asr_simpsons_ (a, fa, m, fm, lm, flm, left);
      quad_asr_simpsons_ (m, fm, b, fb, rm, frm, right);
      delta := left + right - whole;
      tol_ := tol / 2;
      if (depth <= 0) or (tol_ = tol) or (abs(delta) <= 15 * tol) then
        quad_asr_ := left + right + (delta / 15)
      else
        quad_asr_ := (quad_asr_ (a, fa, m, fm, tol_,
                      left , lm, flm, depth - 1)
                      + quad_asr_ (m, fm, b, fb, tol_,
                      right, rm, frm, depth - 1))
    end;

  begin
    fa := f(a);
    fb := f(b);
    quad_asr_simpsons_ (a, fa, b, fb, m, fm, whole);
    quad_asr := quad_asr_ (a, fa, b, fb, tol, whole, m, fm, depth)
  end;

  function sine (x : real) : real;
  begin
    sine := sin (x);
  end;

begin
  writeln ('estimated definite integral of sin(x) ',
           'for x from 0 to 1: ', quad_asr (@sine, 0, 1, 1e-9, 1000))
end.
{-------------------------- 180 numerical-integration-gauss-legendre-quadrature}
program Legendre(output);

const Order   = 5;
      Order1 = Order - 1;
      Epsilon = 1E-12;
      Pi = 3.1415926;

var Roots   : array[0..Order1] of real;
    Weight  : array[0..Order1] of real;
    LegCoef : array [0..Order,0..Order] of real;
    I : integer;


function F(X:real) : real;
begin
  F := Exp(X);
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

function LegEval(N:integer; X:real) : real;
var I : integer;
    Result : real;
begin
  Result := LegCoef[n][n];
  for I := N-1 downto 0 do
    Result := Result * X + LegCoef[N][I];
  LegEval := Result;
end;

function LegDiff(N:integer; X:real) : real;
begin
  LegDiff := N * (X * LegEval(N,X) - LegEval(N-1,X)) / (X*X-1);
end;

procedure LegRoots;
var I     : integer;
    X, X1 : real;
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

function LegInt(A,B:real) : real;
var I      : integer;
    C1, C2, Result : real;
begin
  C1 := (B-A)/2;
  C2 := (B+A)/2;
  Result := 0;
  For I := 0 to Order-1 do
    Result := Result + Weight[I] * F(C1*Roots[I] + C2);
  Result := C1 * Result;
  LegInt := Result;
end;

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
end.
{-------------------------------- 181 numerical-integration-romberg-integration}
PROGRAM romberg(output);

CONST
   LOWER = -3.0;     { Lower bound of integration }
   UPPER = 3.0;      { Upper bound of integration }
   MAX  = 12;        { Maximum number of iterations }
   SIZE = MAX + 1;   { Array size (allowing for 1 based array indexing) }
   LIMIT = 5E-12;    { Convergence tolerance }

VAR
   a  : DOUBLE;      { Lower limit }
   b  : DOUBLE;      { Upper limit }
   r  : DOUBLE;      { Result}

FUNCTION Fn(x : DOUBLE) : DOUBLE;  { Function to be integrated. }
BEGIN
   {Fn := sin(x);  { f(x) = sin(x) }
   {Fn := 1.0 / x;  { f(x) = 1 / x }
   Fn := exp(x); {F(x) := exp(x)}
END;

FUNCTION power(base, exp : INTEGER) : INTEGER;  { Integer power function }
VAR
   r, m : INTEGER;
BEGIN
   r := 1;
   FOR m := 1 TO exp DO
      r := r * base;
   power := r;
END;


FUNCTION romberg(FUNCTION op(x : DOUBLE) : DOUBLE; a, b : DOUBLE; max : INTEGER) : DOUBLE;

VAR
   R  : ARRAY [1..SIZE, 1..SIZE] OF DOUBLE;

   h  : DOUBLE;   { Step size for current refinement }
   s0 : DOUBLE;   { f(a) + f(b), reused each iteration }
   s  : DOUBLE;   { Running sum of interior points }
   f  : DOUBLE;   { Richardson scaling factor (4^k) }
   d  : DOUBLE;   { Difference between estimates }
   i, j, k, n : INTEGER;  { Loop counters }

BEGIN
   h  := b - a;  { Initial step size }
   s0 := op(a) + op(b);  { Initial endpoint sum }
   n  := 1;  { Initial number of intervals = 2^i }

   i := 0;
   R[1,1] := s0 * h / 2.0;  { First trapezoid rule }

   REPEAT
      i := i + 1;  { Number of iterations }

      n := 2 * n;  { Double number of intervals }
      h := h / 2.0;  { New step size }

      s := s0 / 2.0;  { Start with half of f(a)+f(b) }

      FOR j := 1 TO n - 1 DO  { Compute interior points }
         s := s + op(a + j * h);

      R[i+1,1] := s * h;  { Initial estimate }

      f := 1.0;
      FOR k := 1 TO i DO  { Find Richardson extrapolation
                            R[i,k] = (4^k * R[i,k-1] - R[i-1,k-1]) / (4^k - 1) }
      BEGIN
         f := 4.0 * f;  { f = 4, 16, 64, ... }
         R[i+1, k+1] := (f * R[i+1, k] - R[i,k]) / (f - 1.0);
      END;

      d := ABS(R[i+1,i+1] - R[i,i]);
      WRITELN('I=', i:2, '     R= ', R[i+1,i+1]:22:15);
   UNTIL (i >= max) OR ( d < LIMIT);  { Stop when max iterations or limit reached }

   WRITELN;

   IF (i < MAX) THEN
      WRITELN('Converged early at I=', i:2)
   ELSE
      WRITELN('Max iterations reached');

   romberg := R[i+1,i+1];
END;


BEGIN
   a := LOWER;
   b := UPPER;
   r := romberg(Fn, a ,b , MAX);
   WRITELN('Integral =  ', r:22:15);
END.
{---------------------------------------- 182 one-dimensional-cellular-automata}
program Test;
{$IFDEF FPC}{$MODE DELPHI}{$ELSE}{$APPTYPE}{$ENDIF}
uses
  sysutils;
const
  cCHAR: array[0..1] of char = ('_','#');
type
  TRow =  array of byte;

function ConvertToRow(const s:string):tRow;
var
  i : NativeInt;
Begin
  i := length(s);
  setlength(Result,length(s));
  For i := i downto 0 do
    result[i-1]:= ORD(s[i]=cChar[1]);
end;

function OutRow(const row:tRow):string;
//create output string
var
  i: NativeInt;
Begin
  i := length(row);
  setlength(result,i);
  For i := i downto 1 do
    result[i]:= cChar[row[i-1]];
end;

procedure NextRow(row:pByteArray;MaxIdx:NativeInt);
//compute next row in place by the using a small storage for the
//2 values, that would otherwise be overridden
var
  leftValue,Value: NativeInt;
  i,trpCnt: NativeInt;
Begin
  leftValue := 0;
  trpCnt := row[0]+row[1];

  i := 0;
  while i < MaxIdx do
  Begin
    Value := row[i];
    //the rule for survive : PopCnt == 2
    row[i] := ORD(trpCnt= 2);
    //reduce popcnt of element before
    dec(trpCnt,leftValue);
    //goto next element
    inc(i);
    leftValue := Value;
    //increment popcnt by right element
    inc(trpCnt,row[i+1]);
    //move to next position in ring buffer
  end;
  row[MaxIdx] := ORD(trpCnt= 2);
end;

const
  TestString: string='  ### ## # # # #  #  ';
var
  s: string;
  row:tRow;
  i: NativeInt;
begin
  s := Teststring;
  row:= ConvertToRow(s);
  For i := 0 to 9 do
  Begin
    writeln(OutRow(row));
    NextRow(@row[0],High(row));
  end;
end.
{----------------------------------------------- 183 one-of-n-lines-in-a-file-1}
Program OneOfNLines (Output);

{$IFDEF FPC}
  {$MODE DELPHI}
{$ENDIF}

function one_of_n(n: longint): longint;
  var
    i: longint;
  begin
    one_of_n := 1;
    for i := 2 to n do
      if random < 1.0 / i then
	one_of_n := i;
  end;

function sum(a: array of longint): longint;
  var
    i: integer;
  begin
    Result := 0;
    for i := low(a) to high(a) do
       Result := Result + a[i];
  end;

const
  num_reps = 1000000;
  num_lines_in_file = 10;

var
  lines: array[1..num_reps] of longint;
  i: longint;

begin
  randomize;
  for i := 1 to num_reps do
    lines[i] := 0;
  for i := 1 to num_reps do
    inc(lines[one_of_n(num_lines_in_file)]);
  for i := 1 to num_lines_in_file do
    writeln('Number of times line ', i, ' was selected: ', lines[i]);
  writeln('Total number selected: ', sum(lines));
end.
{--------------------------------------------------- 184 palindrome-detection-3}
program PalindromeDetection;
var
  input, output: string;
  s: char; i: integer;
begin
  writeln('write down your input:');
  readln(input);
  output:='';
  for i:=1 to length(input) do
  begin
    s:=input[i];
    output:=s+output;
  end;
  writeln('');
  if(input=output)then
  writeln('input was palindrome')
  else
  writeln('input was not palindrome');
end.
{----------------------------------------------- 185 palindromic-gapful-numbers}
program PalinGap;
{$IFDEF FPC}
   {$MODE DELPHI}{$OPTIMIZATION ON,ALL}{$CODEALIGN proc=16}{$ALIGN 16}
{$ELSE}
  {$APPTYPE CONSOLE}
{$ENDIF}
//example 5 digits, digit d
//  d000d
// +00100 10 -times delta[0] aka middle digit
//->d010d d020d d030d d040d d050d d060d d070d d080d d090d and
//  d100d -> not palindromatic
//correct by -10x00100 and use the next delta for the next digitplaces
//  d000d
//+ 01010 -> delta[1]
//  d101d
// starting over again with delta[0] until delta[1] is used 10 times
type
  tLimits = record
              LoLmt,HiLmt:Uint64;
            end;
const
  base = 10;

var
  delta    : Array[0..9] of Uint64;
  deltaBase: Array[0..9] of Uint64;
  deltaMod : Array[0..9] of Uint32;
  deltaModBase : Array[0..9] of Uint32;

  IdxCnt : Array[0..9] of Uint32;
  ModSum : UInt64;
  dgtMod : UInt32;

procedure InitDelta(dgt:Byte;dgtCnt:Byte);
var
  n : Uint64;
  i,k,mid : NativeInt;
Begin
  mid := (dgtCnt-1) DIV 2;
  //create Add masks
  For i := 0 to mid do
  Begin
    IF ODD(dgtCnt) then
//first 1,101,10001,1000001,100000001,10000000001
    Begin
      n := 1;
      IF i> 0 then
      Begin
        For k := 1 to i do
          n := n*(Base*Base);
        inc(n);
      end
    end
    Else //even
//  first 11,1001,100001,10000001...
    Begin
      n := Base;
      For k := 1 to i do
        n := n*(Base*Base);
      inc(n);
    end;
//  second move to the right place
//  1000000,10100000,10001000,10000010,100000001
    dgtMod := (dgt*(Base+1));
    For k := mid-1 DOWNTO i do
      n := n*Base;

    delta[i] := n;
    deltaMod[i]:= n MOD dgtMod;
    deltaBase[i] := base*n;
    deltaModBase[i]:= (base*n) MOD dgtMod;
  end;
  //counter for digit position
  For k := 0 to 9 do
    IdxCnt[k] := Base;
end;

function NextPalin(n : Uint64;dgtcnt:NativeInt):Uint64;inline;
var
  k,b: NativeInt;
begin
  k := 0;
  repeat
    n := n+delta[k];
    inc(ModSum,deltaMod[k]);
    b := IdxCnt[k]-1;
    IdxCnt[k]:= b;
    IF b <> 0 then
      break
    else
    Begin
      n := n-deltaBase[k];
      dec(ModSum,deltaModBase[k]);
      IdxCnt[k]:= Base;
      inc(k);
      IF k = dgtCnt then
      Begin
        n := 0;
        BREAK;
      end;
    end;
  until false;
  NextPalin  := n;
end;

procedure OutPalinGap(lowLmt,HiLmt,dgt:NativeInt);
var
  n : Uint64;
  i,dgtcnt,mid :NativeInt;
begin
  i:=1;
  write(dgt,' :');
  For dgtcnt := 3 to 20 do
  Begin
    mid := (dgtcnt-1) shr 1;
    initDelta(dgt,dgtcnt);
    n := dgt*delta[mid];// '10...01' -> 'd0...0d'
    ModSum := n MOD dgtMod;

    while (n <>0) AND (i< LowLmt) do
    Begin
      IF (ModSum MOD dgtMod) = 0 then
      Begin
        inc(i);
        ModSum :=0;//reduce Modsum
      end;
      n := NextPalin(n,mid);
    end;

    while (n <>0) AND (i<= HiLmt) do
    Begin
      IF (ModSum MOD dgtMod) = 0 then
      Begin
        inc(i);
        write(n:dgtcnt+1);
        ModSum :=0;//reduce Modsum
      end;
      n := NextPalin(n,mid);
    end;
    IF (i > HiLmt) then
      BREAK;
  end;
  writeln;
end;

var
  dgt : NativeInt;
begin
  writeln('palindromic gapful numbers from 1 to 20');
  For dgt := 1 to 9 do
    OutPalinGap(1,20,dgt);
  writeln;
  writeln('palindromic gapful numbers from 86 to 100');
  For dgt := 1 to 9 do
    OutPalinGap(86,100,dgt);
  writeln;
  writeln('palindromic gapful numbers from 991 to 1000');
  For dgt := 1 to 9 do
    OutPalinGap(991,1000,dgt);
  writeln;
  writeln('palindromic gapful number    100,000');
  For dgt := 1 to 9 do
    OutPalinGap(100000,100000,dgt);
  writeln;
  writeln('palindromic gapful number  1,000,000');
  For dgt := 1 to 9 do
    OutPalinGap(1000000,1000000,dgt);
  writeln;
  writeln('palindromic gapful number  10,000,000');
  For dgt := 1 to 9 do
    OutPalinGap(10000000,10000000,dgt);
  writeln;
end.
{-------------------------------------------------------------- 186 paraffins-2}
program CountAlkanes;

{$mode objfpc}{$H+}

uses SysUtils; // only for output

type TArrayUint64 = array of uint64;
{
  Function to count alkanes, based on: Shinsaku Fujita,
  "Numbers of Alkanes and Monosubstituted Alkanes.
  A Long-Standing Interdisciplinary Problem over 130 Years",
  Bull. Chem. Soc. Jpn. Vol. 83, No. 1, 1–18 (2010)
}
function CountAlkanes() : TArrayUint64;
const
  MAX_RESULT_INDEX = 49; // as far as this code can get without multi-precision
  MAX_R_INDEX = MAX_RESULT_INDEX div 2;
var
  R : array [0..MAX_R_INDEX] of uint64;
  nrCentUnb : uint64; // number of centroidal unbalanced alkanes
  temp : uint64;
  m, n, h, i, j, k : integer;
begin
  SetLength( result, MAX_RESULT_INDEX + 1); // zero-based
{
  Calculate enough of the coefficients R[], where the generating function
     r(x) = R[0] + R[1]x + R[2]x^2 + R[3]x^3 + ...  satifies
     r(x) = 1 + (x/6)[r(x)^3 + 2r(x^3) + 3r(x)r(x^2)]  (Fujita, equation 4)
}
  R[0] := 1;
  n := 0;
  repeat
    if (n mod 3 = 0) then temp := 2*R[n div 3]
                     else temp := 0;
    for j := 0 to (n div 2) do begin
      inc( temp, 3 * R[j] * R[n - 2*j]);
    end;
    for j := 0 to n do begin
      for k := 0 to (n - j) do begin
        inc(temp, R[j] * R[k] * R[n - j - k]);
      end;
    end;
    Assert( temp mod 6 = 0);  // keep an eye on it
    inc(n);
    R[n] := temp div 6;
  until (n = MAX_R_INDEX);
{
  Now use the generating function
    (x/24)[r(x)^4 + 3r(x^2)^2 + *r(x)r(x^3) + 6r(x)^2r(x^2) + 6r(x^4)]
  where inserting r(x) up to the term in x^m will give the number of alkanes
  of orders 2m+1 and 2m+2, as the coefficients of x^(2m+1) and x^(2m+2).

  Note: In Fujita's paper, equation 23, the factor is 1/24 not x/24,
        but x/24 seems to be needed to give correct results.
}
  result[0] := 1;  // conventional
  for n := 1 to MAX_RESULT_INDEX do begin
    m := (n - 1) div 2; // so n = 2*m + 1 or 2*m + 2
    temp := 0;

    // These loops are written for clarity not efficiency
    for k := 0 to m do begin
      for j := 0 to m do begin
        for i := 0 to m do begin
          h := n - 1 - i - j - k;
          if  (h >= 0) and (h <= m) then inc( temp, R[h]*R[i]*R[j]*R[k]);
        end;
      end;
    end;

    if Odd(n) then begin
      for k := 0 to m do begin
        inc( temp, 3*R[k]*R[m - k]);
      end;
    end;

    for k := 0 to (n - 1) div 3 do begin
      j := n - 1 - 3*k;
      if (j <= m) then inc( temp, 8*R[j]*R[k]);
    end;

    for k := 0 to m do begin
      for j := 0 to m do begin
        i := n - 1 - 2*k - j;
        if (i >= 0) and (i <= m) then inc( temp, 6*R[i]*R[j]*R[k]);
      end;
    end;

    if (n mod 4 = 1) then inc( temp, 6*R[(n - 1) div 4]);

    Assert( temp mod 24 = 0);  // keep an eye on it
    nrCentUnb := temp div 24;
    if Odd(n) then
      result[n] := nrCentUnb
    else begin
      temp := R[n div 2];
      result[n] := nrCentUnb + (temp*(temp + 1) div 2);
    end;
  end;
end;

// Call function and display the results
var
  nrAlkanes : TArrayUint64;
  k : integer;
begin
  nrAlkanes := CountAlkanes();
  for k := 0 to Length( nrAlkanes) - 1 do
    WriteLn( SysUtils.Format( '%2d %d', [k, nrAlkanes[k]]));
end.
{------------------------------------------------- 187 pascal-matrix-generation}
program Pascal_matrix(Output);

const N = 5;

type NxN_Matrix = array[0..N,0..N] of integer;

var PM,PX : NxN_Matrix;

function Pascal_sym(x : integer; p : NxN_Matrix) : NxN_Matrix;
var I,J : integer;
  begin
    for I := 1 to x do
    begin
      for J := 1 to x do p[I,J] := p[I-1,J]+p[I,J-1]
    end;
    Pascal_sym := p;
  end;

function Pascal_upp(x : integer; p : NxN_Matrix) : NxN_Matrix;
var I,J : integer;
  begin
    for I := 1 to x do
    begin
      for J := 1 to x do p[I,J] := p[I-1,J-1]+p[I,J-1]
    end;
    Pascal_upp := p
  end;

function Pascal_low(x : integer; p : NxN_Matrix) : NxN_Matrix;
var p1,p2 : NxN_Matrix;
  I,J : integer;
  begin
    p1 := Pascal_upp(x,p);
    p2 := p1;
    for I := 1 to x do
    begin
      for J := 1 to x do p1[J,I] := p2[I,J]
    end;
    Pascal_low := p1
  end;

procedure PrintMatrix(titel : ansistring; x : integer; p : NxN_Matrix);
var I,J : integer;
  begin
    writeln(titel);
    for I := 1 to x do
    begin
      for J := 1 to x do write(p[I,J]:5);
      writeln('');
    end;
  end;

begin
  PX[0,0] := 0;
  PM[0,0] := 1;
  PM := Pascal_upp(N, PM);
  PrintMatrix('Upper:', N, PM);
  writeln('');
  PM := PX;
  PM[0,0] := 1;
  PM := Pascal_low(N, PM);
  PrintMatrix('Lower:', N, PM);
  writeln('');
  PM := PX;
  PM[1,0] := 1;
  PM := Pascal_sym(N, PM);
  PrintMatrix('Symmetric', N, PM);
  writeln('');
  readln;
end.
{--------------------------------------------------------- 188 pascals-triangle}
Program PascalsTriangle(output);

procedure Pascal(r : Integer);
  var
    i, c, k : Integer;
  begin
    for i := 0 to r-1 do
    begin
      c := 1;
      for k := 0 to i do
      begin
        write(c:3);
        c := (c * (i-k)) div (k+1);
      end;
      writeln;
   end;
end;

begin
  Pascal(9)
end.
{------------------------------------------------------------- 189 penneys-game}
PROGRAM Penney;

TYPE
    CoinToss = (heads, tails);
    Sequence = array [1..3] of CoinToss;
    Player = record
        bet: Sequence;
        score: integer;
    end;

VAR
    Human, Computer: Player;
    Rounds, Count: integer;

Function TossCoin: CoinToss;
{ Returns heads or tails at random }
Begin
    if random(2) = 1 then TossCoin := Heads
    else TossCoin := tails
End;

Procedure PutToss(toss: CoinToss);
{ Outputs heads or tails as a letter }
Begin
    if toss = heads then write('H')
    else write('T')
End;

Function GetToss: CoinToss;
{ Reads H or T from the keyboard in either lettercase }
var c: char;
Begin
    { Keep reading characters until we get an appropriate letter }
    repeat read(c) until c in ['H', 'h', 'T', 't'];
    { Interpret the letter }
    if c in ['H', 'h'] then GetToss := heads
    else GetToss := tails
End;

Procedure ShowSequence(tosses: Sequence);
{ Outputs three coin tosses at once }
Var
    i: integer;
Begin
    for i := 1 to 3 do PutToss(tosses[i])
End;

Procedure ReadSequence(var tosses: Sequence);
{ Accepts three coin tosses from the keyboard }
Var i: integer;
Begin
    { Get the 3 letters }
    for i := 1 to 3 do tosses[i] := GetToss;
    { Ignore the rest of the line }
    readln
End;

Function Optimum(opponent: Sequence): Sequence;
{ Generates the optimum sequence against an opponent }
Begin
    case opponent[2] of
        heads: Optimum[1] := tails;
        tails: Optimum[1] := heads
    end;
    Optimum[2] := opponent[1];
    Optimum[3] := opponent[2]
End;

Function RandomSequence: Sequence;
{ Generates three random coin tosses }
Var
    i: integer;
Begin
    for i := 1 to 3 do RandomSequence[i] := TossCoin
End;

Function Match(first, second: Sequence): Boolean;
{ Detects whether a sequence of tosses matches another }
Var
    different: boolean;
    i: integer;
Begin
    different := false;
    i := 1;
    while (i <= 3) and not different do begin
        if not (first[i] = second[i]) then different := true;
        i := i + 1
    end;
    Match := not different
End;

Procedure PlayRound(var human, computer: Player);
{ Shows coin tosses and announces the winner }
Var
    { We only ever need to store the 3 most recent tosses in memory. }
    tosses: Sequence;
Begin
    { Start with the first three tosses }
    write('Tossing the coin: ');
    tosses := RandomSequence;
    ShowSequence(tosses);
    { Keep tossing the coin until there is a winner. }
    while not (Match(human.bet, tosses) or Match(computer.bet, tosses)) do begin
        tosses[1] := tosses[2];
        tosses[2] := tosses[3];
        tosses[3] := TossCoin;
        PutToss(tosses[3])
    end;
    { Update the winner's score and announce the winner }
    writeln;
    writeln;
    if Match(human.bet, tosses) then begin
        writeln('Congratulations! You won this round.');
        human.score := human.score + 1;
        writeln('Your new score is ', human.score, '.')
    end
    else begin
        writeln('Yay, I won this round!');
        computer.score := computer.score + 1;
        writeln('My new score is ', computer.score, '.')
    end
End;

{ Main Algorithm }

BEGIN

    { Welcome the player }
    writeln('Welcome to Penney''s game!');
    writeln;
    write('How many rounds would you like to play? ');
    readln(Rounds);
    writeln;
    writeln('Ok, let''s play ', Rounds, ' rounds.');

    { Start the game }
    randomize;
    Human.score := 0;
    Computer.score := 0;

    for Count := 1 to Rounds do begin

        writeln;
        writeln('*** Round #', Count, ' ***');
        writeln;

        { Choose someone randomly to pick the first sequence }
        if TossCoin = heads then begin
            write('I''ll pick first this time.');
            Computer.bet := RandomSequence;
            write(' My sequence is ');
            ShowSequence(Computer.bet);
            writeln('.');
            repeat
                write('What sequence do you want? ');
                ReadSequence(Human.bet);
                if Match(Human.bet, Computer.bet) then
                    writeln('Hey, that''s my sequence! Think for yourself!')
            until not Match(Human.bet, Computer.bet);
            ShowSequence(Human.bet);
            writeln(', huh? Sounds ok to me.')
        end
        else begin
            write('You pick first this time. Enter 3 letters H or T: ');
            ReadSequence(Human.bet);
            Computer.bet := Optimum(Human.bet);
            write('Ok, so you picked ');
            ShowSequence(Human.bet);
            writeln;
            write('My sequence will be ');
            ShowSequence(Computer.bet);
            writeln
        end;

        { Then we can actually play the round }
        writeln('Let''s go!');
        writeln;
        PlayRound(Human, Computer);
        writeln;
        writeln('Press ENTER to go on...');
        readln

    end;

    { All the rounds are finished; time to decide who won }
    writeln;
    writeln('*** End Result ***');
    writeln;
    if Human.score > Computer.score then writeln('Congratulations! You won!')
    else if Computer.score > Human.score then writeln('Hooray! I won')
    else writeln('Cool, we tied.');
    writeln;
    writeln('Press ENTER to finish.');
    readln

END.
{--------------------------------------------------------------- 190 perceptron}
program Perceptron;

(*
 * implements a version of the algorithm set out at
 * http://natureofcode.com/book/chapter-10-neural-networks/ ,
 * but without graphics
 *)

function targetOutput( a, b : integer ) : integer;
(* the function the perceptron will be learning is f(x) = 2x + 1 *)
begin
    if a * 2 + 1 < b then
        targetOutput := 1
    else
        targetOutput := -1
end;

procedure showTargetOutput;
var x, y : integer;
begin
    for y := 10 downto -9 do
    begin
        for x := -9 to 10 do
            if targetOutput( x, y ) = 1 then
                write( '#' )
            else
                write( 'O' );
        writeln
    end;
    writeln
end;

procedure randomWeights( var ws : array of real );
(* start with random weights -- NB pass by reference *)
var i : integer;
begin
    randomize; (* seed random-number generator *)
    for i := 0 to 2 do
        ws[i] := random * 2 - 1
end;

function feedForward( ins : array of integer; ws : array of real ) : integer;
(* the perceptron outputs 1 if the sum of its inputs multiplied by
its input weights is positive, otherwise -1 *)
var sum : real;
    i : integer;
begin
    sum := 0;
    for i := 0 to 2 do
        sum := sum + ins[i] * ws[i];
    if sum > 0 then
        feedForward := 1
    else
        feedForward := -1
end;

procedure showOutput( ws : array of real );
var inputs : array[0..2] of integer;
    x, y : integer;
begin
    inputs[2] := 1; (* bias *)
    for y := 10 downto -9 do
    begin
        for x := -9 to 10 do
        begin
            inputs[0] := x;
            inputs[1] := y;
            if feedForward( inputs, ws ) = 1 then
                write( '#' )
            else
                write( 'O' )
        end;
        writeln
    end;
    writeln
end;

procedure train( var ws : array of real; runs : integer );
(* pass the array of weights by reference so it can be modified *)
var inputs : array[0..2] of integer;
    error : real;
    x, y, i, j : integer;
begin
    inputs[2] := 1; (* bias *)
    for i := 1 to runs do
    begin
        for y := 10 downto -9 do
        begin
            for x := -9 to 10 do
            begin
                inputs[0] := x;
                inputs[1] := y;
                error := targetOutput( x, y ) - feedForward( inputs, ws );
                for j := 0 to 2 do
                    ws[j] := ws[j] + error * inputs[j] * 0.01;
                    (* 0.01 is the learning constant *)
            end;
        end;
    end;
end;

var weights : array[0..2] of real;

begin
    writeln( 'Target output for the function f(x) = 2x + 1:' );
    showTargetOutput;
    randomWeights( weights );
    writeln( 'Output from untrained perceptron:' );
    showOutput( weights );
    train( weights, 1 );
    writeln( 'Output from perceptron after 1 training run:' );
    showOutput( weights );
    train( weights, 4 );
    writeln( 'Output from perceptron after 5 training runs:' );
    showOutput( weights )
end.
{------------------------------------------------------------- 191 perlin-noise}
program perlinNoise;
//Perlin Noise
//http://rosettacode.org/mw/index.php?title=Perlin_noise#Go
uses
  sysutils;
type
  float64 = double;
const
  p{ermutation} : array[0..255] of byte = (
    151, 160, 137, 91, 90, 15, 131, 13, 201, 95, 96, 53, 194, 233, 7, 225,
    140, 36, 103, 30, 69, 142, 8, 99, 37, 240, 21, 10, 23, 190, 6, 148,
    247, 120, 234, 75, 0, 26, 197, 62, 94, 252, 219, 203, 117, 35, 11, 32,
    57, 177, 33, 88, 237, 149, 56, 87, 174, 20, 125, 136, 171, 168, 68, 175,
    74, 165, 71, 134, 139, 48, 27, 166, 77, 146, 158, 231, 83, 111, 229, 122,
    60, 211, 133, 230, 220, 105, 92, 41, 55, 46, 245, 40, 244, 102, 143, 54,
    65, 25, 63, 161, 1, 216, 80, 73, 209, 76, 132, 187, 208, 89, 18, 169,
    200, 196, 135, 130, 116, 188, 159, 86, 164, 100, 109, 198, 173, 186, 3, 64,
    52, 217, 226, 250, 124, 123, 5, 202, 38, 147, 118, 126, 255, 82, 85, 212,
    207, 206, 59, 227, 47, 16, 58, 17, 182, 189, 28, 42, 223, 183, 170, 213,
    119, 248, 152, 2, 44, 154, 163, 70, 221, 153, 101, 155, 167, 43, 172, 9,
    129, 22, 39, 253, 19, 98, 108, 110, 79, 113, 224, 232, 178, 185, 112, 104,
    218, 246, 97, 228, 251, 34, 242, 193, 238, 210, 144, 12, 191, 179, 162, 241,
    81, 51, 145, 235, 249, 14, 239, 107, 49, 192, 214, 31, 181, 199, 106, 157,
    184, 84, 204, 176, 115, 121, 50, 45, 127, 4, 150, 254, 138, 236, 205, 93,
    222, 114, 67, 29, 24, 72, 243, 141, 128, 195, 78, 66, 215, 61, 156, 180);
function fade(t:float64):float64;inline;
begin
  fade := ((t*6-15)*t + 10) * t*t*t;
end;

function lerp(t, a, b:float64):float64;inline;
Begin
 lerp := t*(b-a)+a;
end;

function grad(hash:integer; x, y, z: float64):float64;
Begin
    case (hash AND 15) of
      0:
        grad :=  x + y;
      1:
        grad :=  y - x;
      2:
        grad :=  x - y;
      3:
        grad :=  -x - y;
      4:
        grad :=  x + z;
      5:
        grad :=  z - x;
      6:
        grad :=  x - z;
      7:
        grad :=  -x - z;
      8:
        grad :=  y + z;
      9:
        grad :=  z - y;
      10:
        grad :=  y - z;
      11:
        grad :=  -y - z;
      12:
        grad :=  x + y;
      13:
        grad :=  z - y;
      14:
        grad :=  y - x;
      15:
      grad :=  -y - z;
  end;
end;

function noise(x, y, z: float64):float64;
var
  u,v,w : float64;
  a,b,c,A0,A1,A2,B0,B1,B2 : Integer;
Begin
    a := trunc(x) AND 255;
    b := trunc(y) AND 255;
    c := trunc(z) AND 255;
    x := frac(x);
    y := frac(y);
    z := frac(z);
    u := fade(x);
    v := fade(y);
    w := fade(z);

    A0 := p[ a] + b;
    A1 := p[A0] + c;
    A2 := p[A0+1] + c;
    B0 := p[ a+1] + b;
    B1 := p[B0] + c;
    B2 := p[B0+1] + c;

    noise:= lerp(w, lerp(v, lerp(u, grad(p[A1], x, y, z),
        grad(p[B1], x-1, y, z)),
        lerp(u, grad(p[A2], x, y-1, z),
            grad(p[B2], x-1, y-1, z))),
        lerp(v, lerp(u, grad(p[A1+1], x, y, z-1),
            grad(p[B1+1], x-1, y, z-1)),
            lerp(u, grad(p[A2+1], x, y-1, z-1),
                grad(p[B2+1], x-1, y-1, z-1))))
end;

Begin
 writeln(noise(3.14, 42, 7):20:17);
end.
{----------------------------------------------------------- 192 permutations-1}
program perm;

var
	p: array[1 .. 12] of integer;
	is_last: boolean;
	n: integer;

procedure next;
var i, j, k, t: integer;
begin
is_last := true;
i := n - 1;
while i > 0 do
	begin
	if p[i] < p[i + 1] then
		begin
		is_last := false;
		break;
		end;
	i := i - 1;
	end;

if not is_last then
	begin
	j := i + 1;
	k := n;
	while j < k do
		begin
		t := p[j];
		p[j] := p[k];
		p[k] := t;
		j := j + 1;
		k := k - 1;
		end;
		
	j := n;
	while p[j] > p[i] do j := j - 1;
	j := j + 1;

	t := p[i];
	p[i] := p[j];
	p[j] := t;
	end;
end;

procedure print;
var i: integer;
begin
for i := 1 to n do write(p[i], ' ');
writeln;
end;

procedure init;
var i: integer;
begin
n := 0;
while (n < 1) or (n > 10) do
	begin
	write('Enter n (1 <= n <= 10): ');
	readln(n);
	end;
for i := 1 to n do p[i] := i;
end;

begin
init;
repeat
	print;
	next;
until is_last;
end.
{------------------------------------------------ 193 permutations-derangements}
program Derangements_RC;
(*
Pascal solution for Rosetta Code task "Permutations/Derangements"
Console program written in Free Pascal (Lazarus)
*)
// Returns first derangement in lexicographic order.
// Function return is false if there are no derangements.
function FirstDerangement( var val : array of integer) : boolean;
var
  n, j : integer;
begin
  n := Length( val);
  result := (n <> 1);
  if n < 2 then exit;
  if Odd(n) then begin
    val[n - 3] := n - 2;
    val[n - 2] := n - 1;
    val[n - 1] := n - 3;
    dec( n, 3);
  end;
  j := 0;
  while (j < n) do begin
    val[j] := j + 1;
    val[j + 1] := j;
    inc( j, 2);
  end;
end;

// Returns next derangement in lexicographic order.
// Function return is false if there are no more derangements.
// Finds next derangement directly, i.e. not by generating
//   permutations until a derangement is found.
function NextDerangement( var val : array of integer) : boolean;
var
  i, j, n : integer;
  backward, done : boolean;
  free : array of boolean;
begin
  n := Length( val);
  if (n < 3) then begin
    result := false;
    exit;
  end;
  SetLength( free, n);
  for j := 0 to n - 1  do free[j] := false;
  i := n - 1;
  free[val[i]] := true;
  backward := true;
  done := false;
  repeat
    if backward then begin
      dec(i);  j := val[i];  free[j] := true;
    end
    else begin
      inc(i);  j := -1;
    end;
    repeat
      inc(j)
    until (j >= n) or (free[j] and (j <> i));
    if (j < n) then begin // found a suitable free value
      val[i] := j;  free[j] := false;
      if (i = n - 1) then done := true // found the next derangement
      else backward := false;
    end
    else if (i = 0) then done := true // no more derangements
    else backward := true;
  until done;
  result := (i > 0);
end;

// Finds all derangements of integers 0..(n - 1) and
//   returns the number of derangements.
// if boolean "show" is true, writes derangments to standard output.
function FindDerangements( n : integer;
                           show : boolean) : integer;
var
  int_array : array of integer;
  j : integer;
  ok : boolean;
begin
  result := 0;
  if (n < 0) then exit;
  SetLength( int_array, n);
  ok := FirstDerangement( int_array);
  while ok do begin
    inc( result);
    if show then begin
      for j := 0 to n - 1 do Write( ' ', int_array[j]);
      WriteLn();
    end;
    ok := NextDerangement( int_array);
  end;
end;

// Returns subfactorial of passed-in integer.
function Subfactorial( n : integer) : uint64;
var
  j : integer;
begin
  result := 1;
  for j := 1 to n do begin
    result := result*j;
    if Odd(j) then dec(result) else inc(result);
  end;
end;

// Main routine for Rosetta Code task.
var
  n, nrFound, nrCalc : integer;
begin
  WriteLn( 'Derangements of 4 integers');
  nrFound := FindDerangements( 4, true);
  WriteLn( 'Number of derangements found = ', nrFound);
  WriteLn();
  WriteLn( 'Number of derangements');
  WriteLn( '  n   Found    Subfactorial');
  for n := 0 to 9 do begin
    nrFound := FindDerangements( n, false);
    nrCalc  := Subfactorial( n);
    WriteLn( n:3, nrFound:8, nrCalc:8);
  end;
  WriteLn();
  WriteLn( 'Subfactorial(20) = ', Subfactorial(20));
end.
{-------------------------------------------- 194 permutations-with-repetitions}
program PermuWithRep;
//permutations with repetitions
//http://rosettacode.org/wiki/Permutations_with_repetitions
{$IFDEF FPC}
  {$Mode Delphi}{$Optimization ON}{$Align 16}{$Codealign proc=16,loop=4}
{$ELSE}
  {$APPTYPE CONSOLE}// for Delphi
{$ENDIF}
uses
  sysutils;
type
  tPermData =  record
               mdTup_n,           //number of positions
               mdTup_k:NativeInt; //number of different elements
               mdTup :array of integer;
             end;

function InitTuple(k,n:nativeInt):tPermData;
begin
  with result do
  Begin
    IF k> 0 then
    Begin
      mdTup_k:= k;
      setlength(mdTup,k);
      IF (n<0) then
        mdTup_n := 0
      else
        mdTup_n := n;
    end
    else
    Begin
      mdTup_k := 1;
      mdTup_n := k;
    end;
  end;
end;

procedure PermOut(const p:tPermData);
var
  i : nativeInt;
Begin
  with p do
  Begin
    For i := 0 to mdTup_k-1 do
      write(mdTup[i]:4);
  end;
  writeln;
end;

function NextPermWithRep(var perm:tPermData): boolean;
// create next permutation by adding 1 and correct "carry"
// returns false if finished
var
  pDg :^Integer;
  dg,le :nativeInt;
begin
  WIth perm do
  Begin
    pDg := @mdTup[0];
    le := mdTup_k;
    repeat
      dg := pDg^+1;
      IF (dg<mdTup_n) then
      Begin
        pDg^ := dg;
        BREAK;
      end
      else
        pDg^  := 0;
     dec(le);
     inc(pDg);
    until  le<=0;
    result := (dg<mdTup_n);
  end;
end;

var
  p: tPermData;
  cnt,k,n: nativeInt;
Begin
  cnt := 0;
  //k := 2;n := 3;
  k := 10;n := 8;
  p:= InitTuple(k,n);
  IF (n<= 6) then
    repeat
      inc(cnt);
      PermOut(p);
    until Not(NextPermWithRep(p))
  else
    repeat
      inc(cnt);
    until Not(NextPermWithRep(p));
  writeln('k: ',k,' n: ',n,'  count ',cnt);
end.
{-------------------------------- 195 permutations-with-some-identical-elements}
program PermWithRep;//of different length
{$IFDEF FPC}
  {$mode Delphi}
  {$Optimization ON,All}
{$ELSE}
  {$APPTYPE CONSOLE}
{$ENDIF}
uses
  sysutils,classes {for stringlist};
const
  cTotalSum = 16;
  cMaxCardsOnDeck = cTotalSum;
  CMaxCardsUsed   = cTotalSum;

type
  tDeckIndex     = 0..cMaxCardsOnDeck-1;
  tSequenceIndex = 0..CMaxCardsUsed;
  tDiffCardCount = Byte;//A..Z

  tSetElem     = packed record
                   Elemcount : tDeckIndex;
                   Elem  : tDiffCardCount;
                 end;

  tRemSet = array [low(tDeckIndex)..High(tDeckIndex)] of tSetElem;
  tpRemSet = ^tRemSet;
  tRemainSet      = array [low(tSequenceIndex)..High(tSequenceIndex)] of tRemSet;
  tCardSequence   = array [low(tSequenceIndex)..High(tSequenceIndex)] of tDiffCardCount;

var
{$ALIGN 32}
  RemainSets     : tRemainSet;
  CardString    : AnsiString;
  CS : pchar;
  sl :TStringList;
  gblMaxCardsUsed,
  gblMaxUsedIdx,
  gblPermCount : NativeInt;

//*****************************************************************************
procedure Out_SL(const sl:TStringlIst;colCnt:NativeInt);
var
  j,i : NativeInt;
begin
  j := colCnt;
  For i := 0 to sl.count-1 do
  Begin
    write(sl[i],' ');
    dec(j);
    if j= 0 then
    Begin
      writeln;
      j := colCnt;
    end;
  end;
  if j <> colCnt then
    writeln;
end;

procedure SetClear(var ioSet:tRemSet);
begin
  fillChar(ioSet[0],SizeOf(ioSet),#0);
end;

procedure SetInit(var ioSet:tRemSet;const inSet:tRemSet);
var
  i,j,k,sum : integer;
begin
  ioSet := inSet;
  sum := 0;
  k := 0;
  write('Initial set : ');
  For i := Low(ioSet) to High(ioSet) do
  Begin
    j := inSet[i].ElemCount;
    if j <> 0 then
      inc(k);
    sum += j;
    For j := j downto 1 do
      write(chr(inSet[i].Elem));
  end;
  gblMaxCardsUsed := sum;
  gblMaxUsedIdx := k;
  writeln(' lenght: ',sum,' different elements : ',k);
end;

procedure EvaluatePerm;
Begin
  //append maximal 10000 strings
  if gblPermCount < 10000 then
    sl.append(CS);
end;

procedure Permute(depth,MaxCardsUsed:NativeInt);
var
  pSetElem : tpRemSet;//^tSetElem;
  i : NativeInt;
begin
  i := 0;
  pSetElem := @RemainSets[depth];
  repeat
    if pSetElem^[i].Elemcount > 0 then begin
      //take one of the same elements of the stack
      //insert in result here string
      CS[depth] := chr(pSetElem^[i].Elem);
      //done one permutation
      IF depth = MaxCardsUsed then
      begin
        inc(gblpermCount);
        EvaluatePerm;
      end
      else
      begin
        RemainSets[depth+1]:=RemainSets[depth];
        //remove one element
        dec(RemainSets[depth+1][i].ElemCount);
        Permute(depth+1,MaxCardsUsed);
      end;
    end;
    //move on to the next Elem
    inc(i);
  until i >= gblMaxUsedIdx;
end;

procedure Permutate(MaxCardsUsed:NativeInt);
Begin
  gblpermCount := 0;
  if MaxCardsUsed > gblMaxCardsUsed then
    MaxCardsUsed := gblMaxCardsUsed;

  if MaxCardsUsed>0 then
  Begin
    setlength(CardString,MaxCardsUsed);
    CS := @CardString[1];
    permute(0,MaxCardsUsed-1)
  end;
end;

var
  Manifolds : tRemSet;
  j :nativeInt;
Begin
  SetClear(Manifolds);
  with Manifolds[0] do
  begin
    Elemcount := 2; Elem := Ord('A');
  end;
  with Manifolds[1] do
  begin
    Elemcount := 3; Elem := Ord('B');
  end;
  with Manifolds[2] do
  begin
    Elemcount := 1; Elem := Ord('C');
  end;

  try
    sl := TStringList.create;

    SetInit(RemainSets[0], Manifolds);
    j := gblMaxCardsUsed;
    writeln('Count of elements: ',j);
    while j > 1 do
    begin
      sl.clear;
      Permutate(j);
      writeln('Length ',j:2,' Permutations ',gblpermCount:7);
      Out_SL(sl,80 DIV (Length(CS)+1));
      writeln;
      dec(j);
    end;
    //change to 1,2,3
    Manifolds[0].Elem := Ord('1');
    Manifolds[1].Elem := Ord('2');
    Manifolds[2].Elem := Ord('3');

    SetInit(RemainSets[0], Manifolds);
    j := gblMaxCardsUsed;
    writeln('Count of elements: ',j);
    while j > 1 do
    begin
      sl.clear;
      Permutate(j);
      writeln('Length ',j:2,' Permutations ',gblpermCount:7);
      Out_SL(sl,80 DIV (Length(CS)+1));
      writeln;
      dec(j);
    end;

  //extend by 3 more elements
  with Manifolds[3] do
  begin
    Elemcount := 2;   Elem := Ord('4');
  end;
  with Manifolds[4] do
  begin
    Elemcount := 3;  Elem := Ord('5');
  end;
  with Manifolds[5] do
  begin
    Elemcount := 1;  Elem := Ord('6');
  end;
  SetInit(RemainSets[0], Manifolds);
  j := gblMaxCardsUsed;
  writeln('Count of elements: ',j);
  sl.clear;
  Permutate(j);
  writeln('Length ',j:2,' Permutations ',gblpermCount:7);
  //Out_SL(sl,80 DIV (Length(CS)+1));
  writeln;

  except
    writeln(' Stringlist Error ');
  end;
  sl.free;
end.
{------------------------------------------------------- 196 pernicious-numbers}
program pernicious;
{$IFDEF FPC}
   {$OPTIMIZATION ON,Regvar,ASMCSE,CSE,PEEPHOLE}// 3x speed up
{$ENDIF}
uses
  sysutils;//only used for time

type
  tbArr    = array[0..64] of byte;
{
  PrimeTil64 : array[0..64] of byte =
  (0,0,2,3,0,5,0, 7,0,0,0,11,0,13,0,0,0,17,0,19,0,0,0,23,0,0,0,0,0,29,0,
    31,0,0,0,0,0,37,0,0,0,41,0,43,0,0,0,47,0, 0,0,0,0,53,0,0,0,0,0,59,0,
    61,0,0,0);
}
const
  PrimeTil64 : tbArr =
  (0,0,1,1,0,1,0, 1,0,0,0,1,0,1,0,0,0,1,0,1,0,0,0,1,0,0,0,0,0,1,0,
     1,0,0,0,0,0, 1,0,0,0,1,0,1,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,
     1,0,0,0);

function n_beyond_k(n,k: NativeInt):Uint64;
var
  i : NativeInt;
Begin
  result := 1;
  IF 2*k>= n  then
    k := n-k;
  For i := 1 to k do
  Begin
    result := result *n DIV i;
    dec(n);
  end;
end;

function popcnt32(n:Uint32):NativeUint;
//https://en.wikipedia.org/wiki/Hamming_weight#Efficient_implementation
const
  K1  = $0101010101010101;
  K33 = $3333333333333333;
  K55 = $5555555555555555;
  KF1 = $0F0F0F0F0F0F0F0F;
begin
  n := n- (n shr 1) AND NativeUint(K55);
  n := (n AND NativeUint(K33))+ ((n shr 2) AND NativeUint(K33));
  n := (n + (n shr 4)) AND NativeUint(KF1);
  n := (n*NativeUint(K1)) SHR 24;
  popcnt32 := n;
end;

var
  bit1cnt,
  k : LongWord;
  PernCnt : Uint64;
Begin
  writeln('the 25 first pernicious numbers');
  k:=1;
  PernCnt:=0;
  repeat
    IF PrimeTil64[popCnt32(k)] <> 0 then Begin
      inc(PernCnt); write(k,' ');end;
    inc(k);
  until PernCnt >= 25;
  writeln;

  writeln('pernicious numbers in [888888877..888888888]');
  For k :=  888888877 to 888888888 do
    IF PrimeTil64[popCnt32(k)] <> 0  then
      write(k,' ');
  writeln(#13#10);

  k := 8;
  repeat
    PernCnt := 0;
    For bit1cnt := 0 to k do
    Begin
      //i == number of Bits set,n_beyond_k(k,i) == number of arrangements
      IF PrimeTil64[bit1cnt] <> 0 then
        inc(PernCnt,n_beyond_k(k,bit1cnt));
    end;
    writeln(PernCnt,' pernicious numbers in [0..2^',k,'-1]');
    inc(k,k);
  until k>64;
end.
{----------------------------------------------------------------------- 197 pi}
Program Pi_Spigot;
const
  n   = 1000;
  len = 10*n div 3;

var
  j, k, q, nines, predigit: integer;
  a: array[0..len] of longint;

function OneLoop(i:integer):integer;
var
  x: integer;
begin
  {Only calculate as far as needed }
  {+16 for security digits ~5 decimals}
  i := i*10 div 3+16;
  IF i > len then
    i := len;
  result := 0;
  repeat   {Work backwards}
    x  := 10*a[i] + result*i;
    result := x div (2*i - 1);
    a[i]   := x - result*(2*i - 1);//x mod (2*i - 1)
    dec(i);
  until i<= 0 ;
end;

begin

  for j := 1 to len do
    a[j] := 2;                 {Start with 2s}
  nines := 0;
  predigit := 0;               {First predigit is a 0}

  for j := 1 to n do
  begin
    q := OneLoop(n-j);
    a[1] := q mod 10;
    q := q div 10;
    if q = 9 then
      nines := nines + 1
    else
      if q = 10 then
      begin
        write(predigit+1);
        for k := 1 to nines do
          write(0);            {zeros}
        predigit := 0;
        nines := 0
      end
      else
      begin
        write(predigit);
        predigit := q;
        if nines <> 0 then
        begin
          for k := 1 to nines do
            write(9);
          nines := 0
        end
      end
  end;
  writeln(predigit);
end.
{------------------------------------------------------ 198 pick-random-element}
Program PickRandomElement (output);

const
  s: array [1..5] of string = ('1234', 'ABCDE', 'Charlie', 'XB56ds', 'lala');

begin
  randomize;
  writeln(s[low(s) + random(length(s))]);
end.
{------------------------------------------------ 199 pointers-and-references-3}
program routineParameterDemo(output);

procedure foo(function f: Boolean);
begin
	writeLn(f);
end;

function bar: Boolean;
begin
	bar := false
end;

begin
	foo(bar);
end.
{------- 200 positive-decimal-integers-with-the-digit-1-occurring-exactly-twice}
program positiveDecimalIntegersWithTheDigit1occurringExactlyTwice(output);
var
	n: integer;
begin
	for n := 1 to 999 do
	begin
		if ord(n mod 10 = 1) + ord(n mod 100 div 10 = 1) + ord(n div 100 = 1) = 2 then
		begin
			writeLn(n)
		end
	end
end.
{----------------------------------------------------------- 201 price-fraction}
Program PriceFraction(output);

const
  limit: array [1..20] of real =
           (0.06, 0.11, 0.16, 0.21, 0.26, 0.31, 0.36, 0.41, 0.46, 0.51,
            0.56, 0.61, 0.66, 0.71, 0.76, 0.81, 0.86, 0.91, 0.96, 1.01);
  price: array [1..20] of real =
           (0.10, 0.18, 0.26, 0.32, 0.38, 0.44, 0.50, 0.54, 0.58, 0.62,
            0.66, 0.70, 0.74, 0.78, 0.81, 0.86, 0.90, 0.94, 0.98, 1.00);

var
  cost: real;
  i, j: integer;

begin
  randomize;
  for i := 1 to 10 do
  begin
    cost := random;
    j := high(limit);
    while cost < limit[j] do
      dec(j);
    writeln (cost:6:4, ' -> ', price[j+1]:4:2);
  end;
end.
{-------------------------------------------- 202 primality-by-trial-division-1}
program primes;

function prime(n: integer): boolean;
var
  i: integer; max: real;
begin
  if n = 2 then
    prime := true
  else if (n <= 1) or (n mod 2 = 0) then
    prime := false
  else begin
    prime := true; i := 3; max := sqrt(n);
    while i <= max do begin
      if n mod i = 0 then begin
        prime := false; exit
      end;
      i := i + 2
    end
  end
end;

{ Test and display primes 0 .. 50 }
var
  n: integer;
begin
  for n := 0 to 50 do
    if (prime(n)) then
      write(n, ' ');
end.
{--------------------------------------------- 203 primality-by-wilsons-theorem}
program PrimesByWilson;
uses SysUtils;

(* Function to return whether 32-bit unsigned n is prime.
   Applies Wilson's theorem with full calculation of (n - 1)! modulo n. *)
function WilsonFullCalc( n : longword) : boolean;
var
  f, m : longword;
begin
  if n < 2 then begin
    result := false;  exit;
  end;
  f := 1;
  for m := 2 to n - 1 do begin
    f := (uint64(f) * uint64(m)) mod n; // typecast is needed
  end;
  result := (f = n - 1);
end;

(* Function to return whether 32-bit unsigned n is prime.
   Applies Wilson's theorem with a short cut. *)
function WilsonShortCut( n : longword) : boolean;
var
  f, g, h, m, m2inc, r : longword;
begin
  if n < 2 then begin
    result := false;  exit;
  end;
  (* Part 1: Factorial (modulo n) of floor(sqrt(n)) *)
  f := 1;
  m := 1;
  m2inc := 3; // (m + 1)^2 - m^2
  // Want to loop while m^2 <= n, but if n is close to 2^32 - 1 then least
  //   m^2 > n overflows 32 bits. Work round this by looking at r = n - m^2.
  r := n - 1;
  while r >= m2inc do begin
    inc(m);
    f := (uint64(f) * uint64(m)) mod n;
    dec( r, m2inc);
    inc( m2inc, 2);
  end;
 (* Part 2: Euclid's algorithm: at the end, h = HCF( f, n) *)
  h := n;
  while f <> 0 do begin
    g := h mod f;
    h := f;
    f := g;
  end;
  result := (h = 1);
end;

type TPrimalityTest = function( n : longword) : boolean;
procedure ShowPrimes( isPrime : TPrimalityTest;
                      minValue, maxValue : longword);
var
  n : longword;
begin
  WriteLn( 'Primes in ', minValue, '..', maxValue);
  for n := minValue to maxValue do
    if isPrime(n) then Write(' ', n);
  WriteLn;
end;

(* Main routine *)
begin
  WriteLn( 'By full calculation:');
  ShowPrimes( @WilsonFullCalc, 1, 100);
  ShowPrimes( @WilsonFullCalc, 1000, 1100);
  WriteLn; WriteLn( 'Using the short cut:');
  ShowPrimes( @WilsonShortCut, 1, 100);
  ShowPrimes( @WilsonShortCut, 1000, 1100);
  ShowPrimes( @WilsonShortCut, 4294967195, 4294967295 {= 2^32 - 1});
end.
{--------------------------------------------------------- 204 prime-conspiracy}
program primCons;
{$IFNDEF FPC}
  {$APPTYPE CONSOLE}
{$ENDIF}
const
  PrimeLimit =  2038074748 DIV 2;
type
  tLimit = 0..PrimeLimit;
  tCntTransition = array[0..9,0..9] of NativeInt;
  tCntTransRec = record
                   CTR_CntTrans:tCntTransition;
                   CTR_primCnt,
                   CTR_Limit : NativeInt;
                 end;
  tCntTransRecField = array[0..19] of tCntTransRec;
var
  primes: array [tLimit] of boolean;
  CntTransitions : tCntTransRecField;

procedure SieveSmall;
//sieve of eratosthenes with only odd numbers
var
  i,j,p: NativeInt;
Begin
  FillChar(primes[1],SizeOF(primes),chr(ord(true)));
  i := 1;
  p := 3;
  j := i*(i+1)*2;
  repeat
    IF (primes[i]) then
    begin
      p := i+i+1;
      repeat
        primes[j] := false;
        inc(j,p);
      until j > PrimeLimit;
    end;
    inc(i);
    j := i*(i+1)*2;//position of i*i
    IF PrimeLimit < j then
      BREAK;
  until false;
end;

procedure OutputTransitions(const Trs:tCntTransRecField);
var
  i,j,k,res,cnt: NativeInt;
  ThereWasOutput: boolean;
Begin
  cnt := 0;
  while Trs[cnt].CTR_primCnt > 0 do
    inc(cnt);
  dec(cnt);
  IF cnt < 0 then
    EXIT;

  write('PrimCnt ');
  For i := 0 to cnt do
    write(Trs[i].CTR_primCnt:i+7);
  writeln;
  For i := 0 to 9 do
  Begin
    ThereWasOutput := false;
    For j := 0 to 9 do
    Begin
      res := Trs[0].CTR_CntTrans[i,j];
      IF res > 0 then
      Begin
        ThereWasOutput := true;
        write('''',i,'''->''',j,'''');
        For k := 0 to cnt do
        Begin
          res := Trs[k].CTR_CntTrans[i,j];
          write(res/Trs[k].CTR_primCnt*100:k+6:k+2,'%');
        end;
        writeln;
      end;
    end;
    IF ThereWasOutput then
      writeln;
  end;
end;

var
  pCntTransOld,
  pCntTransNew  : ^tCntTransRec;
  i,primCnt,lmt : NativeInt;
  prvChr,
  nxtChr : NativeInt;
Begin
  SieveSmall;
  pCntTransOld := @CntTransitions[0].CTR_CntTrans;


  pCntTransOld^.CTR_CntTrans[2,3]:= 1;
  lmt := 10*1000;

  //starting at 2 *2+1 => 5
  primCnt := 2; // the prime 2,3
  prvChr := 3;
  nxtChr  := prvChr;
  for i:= 2 to PrimeLimit do
  Begin
    inc(nxtChr,2);
    if nxtChr >= 10 then nxtChr := 1;
    IF primes[i] then
    Begin
      inc(pCntTransOld^.CTR_CntTrans[prvChr][nxtChr]);
      inc(primCnt);
      prvchr := nxtChr;
      IF primCnt >= lmt then
      Begin
        with pCntTransOld^ do Begin
          CTR_Limit := i;
          CTR_primCnt := primCnt;
        end;
        pCntTransNew := pCntTransOld;
        inc(pCntTransNew);
        pCntTransNew^:= pCntTransOld^;
        pCntTransOld := pCntTransNew;
        lmt := lmt*10;
      end;
    end;
  end;
  pCntTransOld^.CTR_primCnt := 0;
  OutputTransitions(CntTransitions);
end.
{--------------------------------------------------------- 205 priority-queue-1}
program PriorityQueueTest;

uses Classes;

Type
 TItem = record
    Priority:Integer;
    Value:string;
 end;

 PItem = ^TItem;

TPriorityQueue = class(Tlist)
 procedure Push(Priority:Integer;Value:string);
 procedure SortPriority();
 function Pop():String;
 function Empty:Boolean;
end;

{ TPriorityQueue }

procedure TPriorityQueue.Push(Priority:Integer;Value:string);
var
 Item: PItem;
begin
    new(Item);
    Item^.Priority := Priority;
    Item^.Value := Value;
    inherited Add(Item);
    SortPriority();
end;

procedure TPriorityQueue.SortPriority();
var
 i,j:Integer;
begin
 if(Count < 2) Then  Exit();

 for i:= 0 to Count-2 do
  for j:= i+1 to Count-1 do
    if ( PItem(Items[i])^.Priority > PItem(Items[j])^.Priority)then
      Exchange(i,j);
end;

function TPriorityQueue.Pop():String;
begin
 if count = 0  then
   Exit('');
 result := PItem(First)^.value;
 Dispose(PItem(First));
 Delete(0);
end;

function TPriorityQueue.Empty:Boolean;
begin
 Result := Count = 0;
end;

var
 Queue : TPriorityQueue;
begin
  Queue:= TPriorityQueue.Create();

  Queue.Push(3,'Clear drains');
  Queue.Push(4,'Feed cat');
  Queue.Push(5,'Make tea');
  Queue.Push(1,'Solve RC tasks');
  Queue.Push(2,'Tax return');

  while not Queue.Empty() do
   writeln(Queue.Pop());

  Queue.free;
end.
{---------------------------------------------------------- 206 proper-divisors}
{$IFDEF FPC}{$MODE DELPHI}{$ELSE}{$APPTYPE CONSOLE}{$ENDIF}
uses
  sysutils;
const
  MAXPROPERDIVS = 1920;
type
  tRes = array[0..MAXPROPERDIVS] of LongWord;
  tPot = record
           potPrim,
           potMax :LongWord;
         end;

  tprimeFac = record
                 pfPrims : array[1..10] of tPot;
                 pfCnt,
                 pfNum   : LongWord;
               end;
  tSmallPrimes = array[0..6541] of longWord;

var
  SmallPrimes: tSmallPrimes;

procedure InitSmallPrimes;
var
  pr,testPr,j,maxprimidx: Longword;
  isPrime : boolean;
Begin
  maxprimidx := 0;
  SmallPrimes[0] := 2;
  pr := 3;
  repeat
    isprime := true;
    j := 0;
    repeat
      testPr := SmallPrimes[j];
      IF testPr*testPr > pr then
        break;
      If pr mod testPr = 0 then
      Begin
        isprime := false;
        break;
      end;
      inc(j);
    until false;

    if isprime then
    Begin
      inc(maxprimidx);
      SmallPrimes[maxprimidx]:= pr;
    end;
    inc(pr,2);
  until pr > 1 shl 16 -1;
end;

procedure PrimeFacOut(primeDecomp:tprimeFac);
var
  i : LongWord;
begin
  with primeDecomp do
  Begin
    write(pfNum,' = ');
    For i := 1 to pfCnt-1 do
      with pfPrims[i] do
        If potMax = 1 then
          write(potPrim,'*')
        else
          write(potPrim,'^',potMax,'*');
    with pfPrims[pfCnt] do
      If potMax = 1 then
        write(potPrim)
      else
        write(potPrim,'^',potMax);
  end;
end;

procedure PrimeDecomposition(n:LongWord;var res:tprimeFac);
var
  i,pr,cnt,quot{to minimize divisions} : LongWord;
Begin
  res.pfNum := n;
  res.pfCnt:= 0;
  i := 0;
  cnt := 0;
  repeat
    pr := SmallPrimes[i];
    IF pr*pr>n then
      Break;

    quot := n div pr;
    IF pr*quot = n then
      with res do
      Begin
        inc(pfCnt);
        with pfPrims[pfCnt] do
        Begin
          potPrim := pr;
          potMax := 0;
          repeat
            n := quot;
            quot := quot div pr;
            inc(potMax);
          until pr*quot <> n;
        end;
      end;
     inc(i);
  until false;
  //a big prime left over?
  IF n <> 1 then
    with res do
    Begin
      inc(pfCnt);
      with pfPrims[pfCnt] do
      Begin
        potPrim := n;
        potMax := 1;
      end;
    end;
end;

function CntProperDivs(const primeDecomp:tprimeFac):LongWord;
//count of proper divisors
var
   i: LongWord;
begin
  result := 1;
  with primeDecomp do
    For i := 1 to pfCnt do
      result := result*(pfPrims[i].potMax+1);
  //remove
  dec(result);
end;

function findProperdivs(n:LongWord;var res:TRes):LongWord;
//simple trial division to get a sorted list of all proper divisors
var
  i,j: LongWord;
Begin
  result := 0;
  i := 1;
  j := n;
  while j>i do
  begin
    j := n DIV i;
    IF i*j = n then
    Begin
      //smaller factor part at the beginning upwards
      res[result]:= i;
      IF i <> j then
        //bigger factor at the end downwards
        res[MAXPROPERDIVS-result]:= j
      else
        //n is square number
        res[MAXPROPERDIVS-result]:= 0;
      inc(result);
    end;
    inc(i);
  end;

  If result>0 then
  Begin
    //move close together
    i := result;
    j := MAXPROPERDIVS-result+1;
    result := 2*result-1;
    repeat
      res[i] := res[j];
      inc(j);
      inc(i);
    until i > result;

    if res[result-1] = 0 then
      dec(result);
  end;
end;

procedure AllFacsOut(n: Longword);
var
  res:TRes;
  i,k,j:LongInt;
Begin
   j := findProperdivs(n,res);
   write(n:5,' : ');
   For k := 0 to j-2 do write(res[k],',');
   IF j>=1 then
     write(res[j-1]);
   writeln;
end;

var
  primeDecomp: tprimeFac;
  rs : tRes;
  i,j,max,maxcnt: LongWord;
BEGIN
  InitSmallPrimes;
  For i := 1 to 10 do
    AllFacsOut(i);
  writeln;
  max    := 0;
  maxCnt := 0;
  For i := 1 to 20*1000 do
  Begin
    PrimeDecomposition(i,primeDecomp);
    j := CntProperDivs(primeDecomp);
    IF j> maxCnt then
    Begin
      maxcnt := j;
      max := i;
    end;
  end;
  PrimeDecomposition(max,primeDecomp);
  j := CntProperDivs(primeDecomp);

  PrimeFacOut(primeDecomp);writeln('  ',j:10,' factors'); writeln;
  //https://en.wikipedia.org/wiki/Highly_composite_number <= HCN
  //http://wwwhomes.uni-bielefeld.de/achim/highly.txt the first 1200 HCN
  max := 3491888400;
  PrimeDecomposition(max,primeDecomp);
  j := CntProperDivs(primeDecomp);
  PrimeFacOut(primeDecomp);writeln('  ',j:10,' factors'); writeln;
END.
{------------------------------------------------- 207 pythagorean-quadruples-2}
program pythQuad_2;
//find phythagorean Quadrupel up to a,b,c,d <= 2200
//a^2 + b^2 +c^2 = d^2
//a^2 + b^2 = d^2-c^2
{$IFDEF FPC}
  {$R+,O+} //debug purposes, not slower
  {$OPTIMIZATION ON,ALL}
  {$CODEALIGN proc=16}
{$ELSE}
   {$APPTYPE CONSOLE}
{$ENDIF}
uses
   sysutils;
const
   MaxFactor = 2200;//22000;//40960;
   limit = MaxFactor*MaxFactor;
type
   tIdx = NativeUint;
   tSum = NativeUint;
var
// global variables are initiated with 0 at startUp
   sumA2B2 :array[0..limit] of byte;
   check :  array[0..MaxFactor] of byte;

procedure BuildSumA2B2;
var
   a,b,a2,Uplmt: tIdx;
begin
  //Uplimt = a*a+b*b < Maxfactor | max(a,b) = Uplmt
  Uplmt := Trunc(MaxFactor*sqrt(0.5));
  For a := 1 to Uplmt  do
  Begin
    a2:= a*a;
    For b := a downto 1 do
      sumA2B2[b*b+a2] := 1
  end;
end;

procedure CheckDifD2C2;
var
  d,d2,c : tIdx;
begin
  For d := 1 to MaxFactor do
  Begin
    //c < d => (d*d-c*c) > 0
    d2 := d*d;
    For c := d-1 downto 1 do
    Begin
      // d*d-c*c == (d+c)*(d-c) nonsense
      if sumA2B2[d2-c*c] <> 0 then
      Begin
        Check[d] := 1;
        //first for d found is enough
        BREAK;
      end;
    end;
  end;
end;

var
  i : NativeUint;
begin
  BuildSumA2B2;
  CheckDifD2C2;
  //FindHoles
  For i := 1 to MaxFactor do
    If Check[i] = 0  then
      write(i,' ');
  writeln;
end.
{------------------------------------------------------ 208 pythagorean-triples}
Program PythagoreanTriples (output);

var
  total, prim, maxPeri: int64;

procedure newTri(s0, s1, s2: int64);
  var
    p: int64;
  begin
    p := s0 + s1 + s2;
    if p <= maxPeri then
    begin
      inc(prim);
      total := total + maxPeri div p;
      newTri( s0 + 2*(-s1+s2),  2*( s0+s2) - s1,  2*( s0-s1+s2) + s2);
      newTri( s0 + 2*( s1+s2),  2*( s0+s2) + s1,  2*( s0+s1+s2) + s2);
      newTri(-s0 + 2*( s1+s2),  2*(-s0+s2) + s1,  2*(-s0+s1+s2) + s2);
    end;
  end;

begin
  maxPeri := 100;
  while maxPeri <= 1e10 do
  begin
    prim := 0;
    total := 0;
    newTri(3, 4, 5);
    writeln('Up to ', maxPeri, ': ', total, ' triples, ', prim, ' primitives.');
    maxPeri := maxPeri * 10;
  end;
end.
{--------------------------------------------------------- 209 queue-definition}
program fifo(input, output);

type
 pNode = ^tNode;
 tNode = record
          value: integer;
          next:  pNode;
         end;

 tFifo = record
          first, last: pNode;
         end;

procedure initFifo(var fifo: tFifo);
 begin
  fifo.first := nil;
  fifo.last := nil
 end;

procedure pushFifo(var fifo: tFifo; value: integer);
 var
  node: pNode;
 begin
  new(node);
  node^.value := value;
  node^.next := nil;
  if fifo.first = nil
   then
    fifo.first := node
   else
    fifo.last^.next := node;
  fifo.last := node
 end;

function popFifo(var fifo: tFifo; var value: integer): boolean;
 var
  node: pNode;
 begin
  if fifo.first = nil
   then
    popFifo := false
   else
    begin
     node := fifo.first;
     fifo.first := fifo.first^.next;
     value := node^.value;
     dispose(node);
     popFifo := true
    end
 end;

procedure testFifo;
 var
  fifo: tFifo;
 procedure testpop(expectEmpty: boolean; expectedValue: integer);
  var
   i: integer;
  begin
   if popFifo(fifo, i)
    then
     if expectEmpty
      then
       writeln('Error! Expected empty, got ', i, '.')
      else
       if i = expectedValue
        then
         writeln('Ok, got ', i, '.')
        else
         writeln('Error! Expected ', expectedValue, ', got ', i, '.')
    else
     if expectEmpty
       then
        writeln('Ok, fifo is empty.')
       else
        writeln('Error! Expected ', expectedValue, ', found fifo empty.')
  end;
 begin
  initFifo(fifo);
  pushFifo(fifo, 2);
  pushFifo(fifo, 3);
  pushFifo(fifo, 5);
  testpop(false, 2);
  pushFifo(fifo, 7);
  testpop(false, 3);
  testpop(false, 5);
  pushFifo(fifo, 11);
  testpop(false, 7);
  testpop(false, 11);
  pushFifo(fifo, 13);
  testpop(false, 13);
  testpop(true, 0);
  pushFifo(fifo, 17);
  testpop(false, 17);
  testpop(true, 0)
 end;

begin
 writeln('Testing fifo implementation ...');
 testFifo;
 writeln('Testing finished.')
end.
{------------------------------------------------------------------ 210 quine-1}
const s=';begin writeln(#99#111#110#115#116#32#115#61#39,s,#39,s)end.';begin writeln(#99#111#110#115#116#32#115#61#39,s,#39,s)end.
{------------------------------------------------------------------ 211 quine-2}
program Quine(Output);const A='program Quine(Output);const A=';B='begin writeln(A,char(39),A,char(39),char(59),char(66),char(61),char(39),B,char(39),char(59),B)end.';begin writeln(A,char(39),A,char(39),char(59),char(66),char(61),char(39),B,char(39),char(59),B)end.
{------------------------------------------------------------------ 212 quine-3}
program main(output);type string=packed array[1..60]of char;
var l:array[1..9]of string; c:array[1..7]of char; i:integer;
lc, a, o, k, n, e, s, t:char; begin
l[1]:='program main(output);type string=packed array[1..60]of char;';
l[2]:='var l:array[1..9]of string; c:array[1..7]of char; i:integer;';
l[3]:='lc, a, o, k, n, e, s, t:char; begin                         ';
l[4]:='for i := 1 to 3 do writeln(l[i]);                           ';
l[5]:='a:=c[1];t:=c[2];o:=c[3];k:=c[4];n:=c[5];e:=c[6];s:=c[7];    ';
l[6]:='for i := 1 to 9 do writeln(a,o,i:1,k,n,e,lc,l[i],lc,s);     ';
l[7]:='writeln(a, t, n, e, lc, lc, lc, lc, s);                     ';
l[8]:='for i := 1 to 7 do write(t,o,i:1,k,n,e,lc,c[i],lc,s);       ';
l[9]:='writeln; for i := 4 to 9 do writeln(l[i]); end.             ';
lc:='''';
c[1]:='l';c[2]:='c';c[3]:='[';c[4]:=']';c[5]:=':';c[6]:='=';c[7]:=';';
for i := 1 to 3 do writeln(l[i]);
a:=c[1];t:=c[2];o:=c[3];k:=c[4];n:=c[5];e:=c[6];s:=c[7];
for i := 1 to 9 do writeln(a,o,i:1,k,n,e,lc,l[i],lc,s);
writeln(a, t, n, e, lc, lc, lc, lc, s);
for i := 1 to 7 do write(t,o,i:1,k,n,e,lc,c[i],lc,s);
writeln; for i := 4 to 9 do writeln(l[i]); end.
{----------------------------------------------------- 213 random-latin-squares}
{$APPTYPE CONSOLE}

const
  Alpha = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';


Type
IncidenceCube = Array of Array Of Array of Integer;

Var
Cube : IncidenceCube;
DIM  : Integer;


Procedure InitIncidenceCube(Var c:IncidenceCube; const Size:Integer);
var i, j, k : integer;
begin
DIM := Size;
SetLength(c,DIM,DIM,DIM);
for i := 0 to DIM-1 do
for j := 0 to DIM-1 do
for k := 0 to DIM-1 do c[i,j,k] := 0 ;

for i := 0 to DIM-1 do
for j := 0 to DIM-1 do c[i,j,(i+j) mod DIM] := 1;
end;


Procedure FreeIncidenceCube(Var c:IncidenceCube);
begin
Finalize(c);
end;


procedure PrintIncidenceCube(var c:IncidenceCube);
var i, j, k : integer;
begin
    for i := 0 to DIM-1 do begin
        for j := 0 to DIM-1 do begin
            for k := 0 to DIM-1 do begin
                if (c[i,j,k]=1) then begin
                    write(Alpha[k+1],' ');
                    break;
                end;
            end;
        end;
        Writeln;
    end;
    Writeln;
	WriteLn;
end;


procedure ShuffleIncidenceCube(var c:IncidenceCube);
var i, j, rx, ry, rz, ox, oy, oz : integer;
begin

    for i := 0 to (DIM*DIM*DIM)-1 do begin

        repeat
            rx := Random(DIM);
            ry := Random(DIM);
            rz := Random(DIM);
        until (c[rx,ry,rz]=0);

        for j := 0 to DIM-1 do begin
            if (c[j,ry,rz]=1) then ox := j;
            if (c[rx,j,rz]=1) then oy := j;
            if (c[rx,ry,j]=1) then oz := j;
        end;

        Inc(c[rx,ry,rz]);
        Inc(c[rx,oy,oz]);
        Inc(c[ox,ry,oz]);
        Inc(c[ox,oy,rz]);

        Dec(c[rx,ry,oz]);
        Dec(c[rx,oy,rz]);
        Dec(c[ox,ry,rz]);
        Dec(c[ox,oy,oz]);

        while (c[ox,oy,oz] < 0) do begin

            rx := ox ;
            ry := oy ;
            rz := oz ;

            if (random(2)=0) then begin
                for j := 0 to DIM-1 do begin
                    if (c[j,ry,rz]=1) then ox := j;
                end;
            end else begin
                for j := DIM-1 downto 0 do begin
                    if (c[j,ry,rz]=1) then ox := j;
                end;
            end;

            if (random(2)=0) then begin
                for j := 0 to DIM-1 do begin
                    if (c[rx,j,rz]=1) then oy := j;
                end;
            end else begin
                for j := DIM-1 downto 0 do begin
                    if (c[rx,j,rz]=1) then oy := j;
                end;
            end;

            if (random(2)=0) then begin
                for j := 0 to DIM-1 do begin
                    if (c[rx,ry,j]=1) then oz := j;
                end;
            end else begin
                for j := DIM-1 downto 0 do begin
                    if (c[rx,ry,j]=1) then oz := j;
                end;
            end;

            Inc(c[rx,ry,rz]);
            Inc(c[rx,oy,oz]);
            Inc(c[ox,ry,oz]);
            Inc(c[ox,oy,rz]);

            Dec(c[rx,ry,oz]);
            Dec(c[rx,oy,rz]);
            Dec(c[ox,ry,rz]);
            Dec(c[ox,oy,oz]);
        end;

    end;
end;

begin
    Randomize;
    InitIncidenceCube(cube, 5); ShuffleIncidenceCube(cube); PrintIncidenceCube(cube); FreeIncidenceCube(Cube);
    InitIncidenceCube(cube, 5); ShuffleIncidenceCube(cube); PrintIncidenceCube(cube); FreeIncidenceCube(Cube);
    InitIncidenceCube(cube,10); ShuffleIncidenceCube(cube); PrintIncidenceCube(cube); FreeIncidenceCube(Cube);	
    InitIncidenceCube(cube,26); ShuffleIncidenceCube(cube); PrintIncidenceCube(cube); FreeIncidenceCube(Cube);
end.

{--------------------------------------------------------- 214 range-extraction}
program RangeExtractionApp;


{$IFDEF FPC}
  {$mode objfpc}{$H+}
{$ENDIF}


uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  SysUtils;

function RangeExtraction(const Seq: array of integer): String;
const
  SubSeqLen = 3; // minimal length of the range, can be changed.
var
  i, j: Integer;
  Separator: string;
begin
  Separator:= '';
  Result := '';
  i := Low(Seq);
  while i <= High(Seq) do
  begin
    j := i;
    // All subsequent values, starting from i, up to High(Seq) possibly
    while ((j < High(Seq)) and ((Seq[j+1]-Seq[j]) = 1)) do
      Inc(j);
    // is it a range ?
    if ((j-i) >= (SubSeqLen-1)) then
    begin
      Result := Result + Format(Separator+'%d-%d',[Seq[i],Seq[j]]);
      i := j+1; // Next value to be processed
      Separator := ',';
    end
    else
    begin
      // Loop, to process the case SubSeqLen > 3
      while i<=j do
      begin
        Result := Result + Format(Separator+'%d',[Seq[i]]);
        Inc(i); // Next value to be processed
        Separator := ',';
      end;
    end;
  end;
End;

procedure DisplayRange(const Seq: array of integer);
var
  i: Integer;
begin
  Write(Format('[%d', [Seq[Low(Seq)]]));
  for i := Low(Seq) + 1 to High(Seq) do
    Write(Format(',%d', [Seq[i]]));
  WriteLn('] => ' + RangeExtraction(Seq));
  WriteLn;
End;

begin
  DisplayRange([0]);
  DisplayRange([0,1]);
  DisplayRange([0,2]);
  DisplayRange([0,1,2]);
  DisplayRange([0,1,2,3]);
  DisplayRange([0,1,2,3,4,5,6,7]);
  DisplayRange([0,2,3,4,5,6,7,9]);
  DisplayRange([0,2,4,6,8,10]);
  DisplayRange([0,1,2,3,4,5,6,7,9]);
  DisplayRange([0,1,2,3,4,6,9,10,11,12]);

  DisplayRange([
      0,  1,  2,  4,  6,  7,  8, 11, 12, 14,
     15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
     25, 27, 28, 29, 30, 31, 32, 33, 35, 36,
     37, 38, 39]);
  {$IFNDEF UNIX}readln;{$ENDIF}
end.
{----------------------------------------- 215 read-a-specific-line-from-a-file}
Program FileTruncate;

uses
  SysUtils;

const
  filename = 'test';
  position = 7;

var
  myfile: text;
  line: string;
  counter: integer;

begin
  if not FileExists(filename) then
  begin
    writeln('Error: File does not exist.');
    exit;
  end;

  Assign(myfile, filename);
  Reset(myfile);
  counter := 0;
  Repeat
    if eof(myfile) then
    begin
      writeln('Error: The file "', filename, '" is too short. Cannot read line ', position);
      Close(myfile);
      exit;
    end;
    inc(counter);
    readln(myfile);
  until counter = position - 1;
  readln(myfile, line);
  Close(myfile);
  writeln(line);
end.
{------------------------------------------------------ 216 regular-expressions}
// Match and Replace part of a string using a Regular Expression
//
// Nigel Galloway - April 11th., 2012
//
program RegularExpr;

uses
  RegExpr;

const
  myString = 'I think that I am Nigel';
  myMatch = '(I am)|(you are)';
var
  r : TRegExpr;
  myResult : String;

begin
  r := TRegExpr.Create;
  r.Expression := myMatch;
  write(myString);
  if r.Exec(myString) then writeln(' contains ' + r.Match[0]);
  myResult := r.Replace(myString, 'you are', False);
  write(myResult);
  if r.Exec(myResult) then writeln(' contains ' + r.Match[0]);
end.
{------------------------------------------------ 217 remove-duplicate-elements}
Program RemoveDuplicates;

const
  iArray: array[1..7] of integer = (1, 2, 2, 3, 4, 5, 5);

var
  rArray: array[1..7] of integer;
  i, pos, last: integer;
  newNumber: boolean;

begin
  rArray[1] := iArray[1];
  last := 1;
  pos := 1;
  while pos < high(iArray) do
  begin
    inc(pos);
    newNumber := true;
    for i := low(rArray) to last do
      if iArray[pos] = rArray[i] then
      begin
        newNumber := false;
	break;
      end;
    if newNumber then
    begin
      inc(last);
      rArray[last] := iArray[pos];
    end;
  end;
  for i := low(rArray) to last do
    writeln (rArray[i]);
end.
{------------------------------------------------------------------- 218 repeat}
program Repeater;

type
  TProc = procedure(I: Integer);

procedure P(I: Integer);
begin
  WriteLn('Iteration ', I);
end;

procedure Iterate(P: TProc; N: Integer);
var
  I: Integer;
begin
  for I := 1 to N do
    P(I);
end;

begin
  Iterate(P, 3);
end.
{---------------------------------------------- 219 reverse-words-in-a-string-1}
program Reverse_words(Output);
{$H+}

const
  nl = chr(10); // Linefeed
  sp = chr(32); // Space
  TXT =
  '---------- Ice and Fire -----------'+nl+
  nl+
  'fire, in end will world the say Some'+nl+
  'ice. in say Some'+nl+
  'desire of tasted I''ve what From'+nl+
  'fire. favor who those with hold I'+nl+
  nl+
  '... elided paragraph last ...'+nl+
  nl+
  'Frost Robert -----------------------'+nl;

var
  I : integer;
  ew, lw : ansistring;
  c : char;

function addW : ansistring;
var r : ansistring = '';
begin
  r := ew + sp + lw;
  ew := '';
  addW := r
end;

begin
  ew := '';
  lw := '';

  for I := 1 to strlen(TXT) do
  begin
    c := TXT[I];
    case c of
      sp : lw := addW;
      nl : begin writeln(addW); lw := '' end;
      else ew := ew + c
    end;
  end;
  readln;
end.
{---------------------------------------------- 220 reverse-words-in-a-string-2}
program reverse_words;
{$mode objfpc}{$h+}
uses
  SysUtils;

function Reverse(a: TStringArray): TStringArray;
var
  I, J: SizeInt;
  t: Pointer;
begin
  I := 0;
  J := High(a);
  while I < J do begin
    t := Pointer(a[I]);
    Pointer(a[I]) := Pointer(a[J]);
    Pointer(a[J]) := t;
    Inc(I);
    Dec(J);
  end;
  Result := a;
end;

const
  Input =
    '---------- Ice and Fire -----------'  + LineEnding +
                                        '' + LineEnding +
    'fire, in end will world the say Some' + LineEnding +
    'ice. in say Some'                     + LineEnding +
    'desire of tasted I''ve what From'     + LineEnding +
    'fire. favor who those with hold I'    + LineEnding +
                                        '' + LineEnding +
    '... elided paragraph last ...'        + LineEnding +
                                        '' + LineEnding +
    'Frost Robert -----------------------' + LineEnding;
var
  Line: string;

begin
  for Line in Input.Split([LineEnding], TStringSplitOptions.ExcludeLastEmpty) do
    WriteLn(string.Join(' ', Reverse(Line.Split([' ']))));
end.
{-------------------------------------------------------- 221 riordan-numbers-1}
program RiordanR;
{
Console program to calculate Riordan numbers, using the recurrence relation
  in the Rosetta Code task description.
Command line is e.g.  RiordanR 32  for first 32 Riordan numbers.
}
{$IFNDEF FPC}      // if not Free Pascal Compiler
{$APPTYPE CONSOLE} // this is needed for Delphi
{$ENDIF}
uses Math, SysUtils;
const N_MAX = 46;  // same for Free Pascal and Delphi
type TUint64Array = array of Uint64;

// Store Riordan numbers in the passed-in array.
procedure StoreRiordan( var R : TUint64Array);
var
  S, T : Uint64;
  h, k : integer;
begin
  h := High(R); // srrsy is R[0..h], with h+1 elements
  R[0] := 1;
  R[1] := 0;
 for k := 2 to h do begin
    S := 3*R[k - 2] + 2*R[k - 1];
{
  To get a few more values before UInt64 overflow, we avoid forming
  the product (k-1)*S. Given that (k-1)*S/(k+1) is an integer, we note:
  (1) if k is odd then (k-1)/2 and (k+1)/2 are coprime, so (k+1)/2 divides S;
  (2) if k is even then k-1 and k+1 are coprime, so k+1 divides S.
}
    if Odd(k) then
      T := S div ((k+1) div 2)
    else
      T := 2*(S div (k+1));
    R[k] := S - T;
  end;
end;

// Main routine.
var
  Riordan : TUint64Array;
  N, k : integer;
begin
  if (not SysUtils.TryStrToInt( ParamStr(1), {out} N))
  or (N < 2) or (N > N_MAX) then begin
    WriteLn( 'Enter  RiordanR N  (2 <N <= ', N_MAX,
             ' for first N Riordan numbers');
    exit;
  end;
  // Call zubroutine to store first N Riordan numbers
  SetLength( Riordan, N);
  StoreRiordan( Riordan);
  // Display Riordan numbers on console
  Write( 'First ', N, ' Riordan numbers');
  for k := 0 to N - 1 do begin
    if k mod 3 = 0 then WriteLn
    else Write('  ');
    Write( Riordan[k]:24);
  end;
  WriteLn;
end.
{-------------------------------------------------------- 222 riordan-numbers-2}
program RiordanA;
{
Console program to calculate Riordan numbers, using addition only.
Command line is e.g.  RiordanA 32  for first 32 Riordan numbers.
}
{$IFNDEF FPC}      // if not Free Pascal Compiler
{$APPTYPE CONSOLE} // this is needed for Delphi
{$ENDIF}
uses Math, SysUtils;
{$IFDEF FPC}
const N_MAX = 47;
{$ELSE}
const N_MAX = 46; // 47 should be OK for D2007 or later (not tested)
{$ENDIF}
type TUint64Array = array of Uint64;

// Store Riordan numbers in the passed-in array.
procedure StoreRiordan( var R : TUint64Array);
var
  h, j, k : integer;
begin
  h := High(R); // array is R[0..h], with h+1 elements
  R[0] := 1;
  for j := 1 to h do R[j] :=  0;
  for k := 2 to h do
    for j := Math.Min( 2*(k - 1), h) downto k do
      inc( R[j], R[j-1] + R[j-2]);
end;

// Main routine
var
  Riordan : TUint64Array;
  N, k : integer;
begin
  if (not SysUtils.TryStrToInt( ParamStr(1), {out} N))
  or (N < 2) or (N > N_MAX) then begin
    WriteLn( 'Enter  RiordanA N  (2 <N <= ', N_MAX,
             ' for first N Riordan numbers');
    exit;
  end;
  // Call zubroutine to store first N Riordan numbers
  SetLength( Riordan, N);
  StoreRiordan( Riordan);
  // Display Riordan numbers on console
  Write( 'First ', N, ' Riordan numbers');
  for k := 0 to N - 1 do begin
    if k mod 3 = 0 then WriteLn
    else Write('  ');
    Write( Riordan[k]:24);
  end;
  WriteLn;
end.
{------------------------------------------------------ 223 roots-of-a-function}
Program RootsFunction;

var
  e, x, step, value: double;
  s: boolean;
  i, limit: integer;
  x1, x2, d: double;

function f(const x: double): double;
  begin
    f := x*x*x - 3*x*x + 2*x;
  end;

begin
  x    := -1;
  step := 1.0e-6;
  e    := 1.0e-9;
  s    := (f(x) > 0);

  writeln('Version 1: simply stepping x:');
  while x < 3.0 do
  begin
    value := f(x);
    if abs(value) < e then
    begin
      writeln ('root found at x = ', x);
      s := not s;
    end
    else if ((value > 0) <> s) then
    begin
      writeln ('root found at x = ', x);
      s := not s;
    end;
    x := x + step;
  end;

  writeln('Version 2: secant method:');
  x1 := -1.0;
  x2 :=  3.0;
  e  :=  1.0e-15;
  i  :=  1;
  limit := 300;
  while true do
  begin
    if i > limit then
    begin
      writeln('Error: function not converging');
      exit;
    end;
    d := (x2 - x1) / (f(x2) - f(x1)) * f(x2);
    if abs(d) < e then
    begin
      if d = 0 then
        write('Exact ')
      else
        write('Approximate ');
      writeln('root found at x = ', x2);
      exit;
    end;
    x1 := x2;
    x2 := x2 - d;
    i  := i + 1;
  end;
end.
{-------------------------------------------- 224 roots-of-a-quadratic-function}
Program QuadraticRoots;

var
  a, b, c, q, f: double;

begin
  a := 1;
  b := -10e9;
  c := 1;
  q := sqrt(a * c) / b;
  f := (1 + sqrt(1 - 4 * q * q)) / 2;

  writeln ('Version 1:');
  writeln ('x1: ', (-b * f / a):16, ', x2: ', (-c / (b * f)):16);

  writeln ('Version 2:');
  q := sqrt(b * b - 4 * a * c);
  if b < 0 then
  begin
    f :=  (-b + q) / 2 * a;
    writeln ('x1: ', f:16, ', x2: ', (c / (a * f)):16);
  end
  else
  begin
    f := (-b - q) / 2 * a;
    writeln ('x1: ', (c / (a * f)):16, ', x2: ', f:16);
  end;
end.
{----------------------------------------------------------- 225 roots-of-unity}
Program Roots;

var
  root: record  // poor man's complex type.
    r: real;
    i: real;
  end;
  i, n:  integer;
  angle: real;

begin
  for n := 2 to 7 do
  begin
    angle := 0.0;
    write(n, ': ');
    for i := 1 to n do
    begin
      root.r := cos(angle);
      root.i := sin(angle);
      write(root.r:8:5, root.i:8:5, 'i ');
      angle := angle + (2.0 * pi / n);
    end;
    writeln;
  end;
end.
{------------------------------------------ 226 round-robin-tournament-schedule}
program RoundRobin;
(*
Rosetta Code: write list of matches in a round robin tournament.
Command line:
    RoundRobin number_of_players
*)
{$mode objfpc}{$H+}

uses SysUtils;

var
  nrPlayers, round : integer;
  n, m, c, j, k : integer;
  a : array of integer;

    // Write the matches in a round, formatting nicely
    procedure WriteRound();
    var
      t, u : integer;
    begin
      Write( 'Round', round:3, ': ');
      u := 0;
      for t := 0 to m - 2 do begin
        Write( '(', a[u]:2);  inc(u);
        Write( ' v', a[u]:3, ') ');  inc(u);
      end;
      Write( '(', a[u]:2); // u = n - 2
      if c > 0 then
        WriteLn( ' v', c:3, ')')
      else
        WriteLn( ' bye)');
    end;

begin
  if ParamCount < 1 then begin
    WriteLn( 'Number of players is required');
    exit;
  end;
  nrPlayers := SysUtils.StrToIntDef( ParamStr(1), -1);
               // if string can't be converted, nrPlayers := -1
  if (nrPlayers < 2) then begin
    WriteLn( 'Invalid number of players');
    exit;
  end;
  WriteLn( 'Round robin with ', nrPlayers, ' players');
  m := (nrPlayers + 1) div 2;
  n := 2*m;
  if Odd( nrPlayers) then c := 0  // dummy player, opponent gets a bye
                     else c := n; // genuine player
  SetLength( a, n);
  k := 0;
  for j := 0 to m - 2 do begin
    a[k] := m - j;  inc(k);
    a[k] := m + 1 + j;  inc(k);
  end;
  a[k] := 1;
  a[n - 1] := c; // a[n - 1] stays = c throughout
  round := 1;
  WriteRound();
  for round := 2 to n - 1 do begin
    for j := 0 to n - 2 do begin // increment all entries except a[n - 1]
      inc(a[j]);
      if a[j] = n then a[j] := 1; // wrap round if necessary
    end;
    WriteRound();
  end;
end.
{------------------------------------------------------ 227 run-length-encoding}
Program RunLengthEncoding(output);

procedure encode(s: string; var counts: array of integer; var letters: string);
  var
    i, j: integer;
  begin
    j := 0;
    letters := '';
    if length(s) > 0 then
    begin
      j := 1;
      letters := letters + s[1];
      counts[1] := 1;
      for i := 2 to length(s) do
        if s[i] = letters[j] then
          inc(counts[j])
        else
        begin
          inc(j);
          letters := letters + s[i];
          counts[j] := 1;
        end;
    end;
  end;

procedure decode(var s: string; counts: array of integer; letters: string);
  var
    i, j: integer;
  begin
    s := '';
    for i := 1 to length(letters) do
      for j := 1 to counts[i] do
        s := s + letters[i];
  end;

var
  s: string;
  counts: array of integer;
  letters: string;
  i: integer;
begin
  s := 'WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWBWWWWWWWWWWWWW';
  writeln(s);
  setlength(counts, length(s));
  encode(s, counts, letters);
  for i := 1 to length(letters) - 1 do
    write(counts[i], ' * ', letters[i], ', ');
  writeln(counts[length(letters)], ' * ', letters[length(letters)]);
  decode(s, counts, letters);
  writeln(s);
end.
{------------------------------------------------------- 228 runge-kutta-method}
program RungeKuttaExample;

uses sysutils;

type
    TDerivative = function (t, y : Real) : Real;

procedure RungeKutta(yDer : TDerivative;
                     var t, y : array of Real;
                     dt   : Real);
var
    dy1, dy2, dy3, dy4 : Real;
    idx                : Cardinal;

begin
    for idx := Low(t) to High(t) - 1 do
    begin
        dy1 := dt * yDer(t[idx],            y[idx]);
        dy2 := dt * yDer(t[idx] + dt / 2.0, y[idx] + dy1 / 2.0);
        dy3 := dt * yDer(t[idx] + dt / 2.0, y[idx] + dy2 / 2.0);
        dy4 := dt * yDer(t[idx] + dt,       y[idx] + dy3);

        t[idx + 1] := t[idx] + dt;
        y[idx + 1] := y[idx] + (dy1 + 2.0 * (dy2 + dy3) + dy4) / 6.0;
    end;
end;

function CalcError(t, y : Real) : Real;
var
    trueVal : Real;

begin
    trueVal := sqr(sqr(t) + 4.0) / 16.0;
    CalcError := abs(trueVal - y);
end;

procedure Print(t, y : array of Real;
                modnum : Integer);
var
    idx : Cardinal;

begin
    for idx := Low(t) to High(t) do
    begin
        if idx mod modnum = 0 then
        begin
            WriteLn(Format('y(%4.1f) = %12.8f  Error: %12.6e',
                [t[idx], y[idx], CalcError(t[idx], y[idx])]));
        end;
    end;
end;

function YPrime(t, y : Real) : Real;
begin
    YPrime := t * sqrt(y);
end;

const
    dt = 0.10;
    N = 100;

var
    tArr, yArr : array [0..N] of Real;

begin
    tArr[0] := 0.0;
    yArr[0] := 1.0;

    RungeKutta(@YPrime, tArr, yArr, dt);
    Print(tArr, yArr, 10);
end.
{------------------------------------------------------------------- 229 sedols}
program Sedols(output);

function index(c: char): integer;
  const
    alpha = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  var
    i: integer;
  begin
    index := 0;
    for i := low(alpha) to high(alpha) do
      if c = alpha[i] then
        index := i;
  end;

function checkdigit(c: string): char;
  const
    weight: array [1..6] of integer = (1, 3, 1, 7, 3, 9);
  var
    i, sum: integer;
  begin
    sum := 0;
    for i := 1 to 6 do
      sum := sum + (index(c[i]) - 1) * weight[i];
    checkdigit := char((10 - (sum mod 10)) mod 10 + 48);
  end;

const
  codes: array [1..11] of string =
    ('710889', 'B0YBKJ', '406566', 'B0YBLH',
     '228276', 'B0YBKL', '557910', 'B0YBKR',
     '585284', 'B0YBKT', 'B00030');

var
  seforl: string;
  i: integer;

begin
  for i := low(codes) to high(codes) do
  begin
    seforl := codes[i];
    setlength(seforl, 7);
    seforl[7] := checkdigit(codes[i]);
    writeln(codes[i], ' -> ', seforl);
  end;
end.
{-------------------------------------------------- 230 self-describing-numbers}
Program SelfDescribingNumber;

uses
  SysUtils;

function check(number: longint): boolean;
  var
    i, d: integer;
    a: string;
    count, w : array [0..9] of integer;

  begin
    a := intToStr(number);
    for i := 0 to 9 do
    begin
      count[i] := 0;
      w[i] := 0;
    end;
    for i := 1 to length(a) do
    begin
      d := ord(a[i]) - ord('0');
      inc(count[d]);
      w[i - 1] := d;
    end;
    check := true;
    i := 0;
    while check and (i <= 9) do
    begin
      check := count[i] = w[i];
      inc(i);
    end;
  end;

var
  x: longint;

begin
  writeln ('Autodescriptive numbers from 1 to 100000000:');
  for x := 1 to 100000000 do
    if check(x) then
      writeln (' ', x);
  writeln('Job done.');
end.
{---------------------------------------------- 231 send-an-unknown-method-call}
program Test;
{$mode objfpc}{$h+}
uses
  SysUtils;

type
  TProc = procedure of object;

{$push}{$m+}
  TMyObj = class
  strict private
    FName: string;
  public
    constructor Create(const aName: string);
    property Name: string read FName;
  published
    procedure Foo;
    procedure Bar;
  end;
{$pop}

constructor TMyObj.Create(const aName: string);
begin
  FName := aName;
end;

procedure TMyObj.Foo;
begin
  WriteLn(Format('This is %s.Foo()', [Name]));
end;

procedure TMyObj.Bar;
begin
  WriteLn(Format('This is %s.Bar()', [Name]));
end;

procedure CallByName(o: TMyObj; const aName: string);
var
  m: TMethod;
begin
  m.Code := o.MethodAddress(aName);
  if m.Code <> nil then begin
    m.Data := o;
    TProc(m)();
  end else
    WriteLn(Format('Unknown method(%s)', [aName]));
end;

var
  o: TMyObj;

begin
  o := TMyObj.Create('Obj');
  CallByName(o, 'Bar');
  CallByName(o, 'Foo');
  CallByName(o, 'Baz');
  o.Free;
end.
{------------------------------------------------ 232 sequence-of-non-squares-1}
Program SequenceOfNonSquares(output);

uses
  Math;

var
  m, n, test: longint;

begin
  for n := 1 to 22 do
  begin
    test :=  n + floor(0.5 + sqrt(n));
    write(test, ' ');
  end;
  writeln;

  for n := 1 to 1000000 do
  begin
    test :=  n + floor(0.5 + sqrt(n));
    m := round(sqrt(test));
    if (m*m = test) then
      writeln('square found for n = ', n);
  end;
end.
{------------------------------------------------ 233 sequence-of-non-squares-2}
program seqNonSq;
 //sequence of non-squares
 //n = i + floor(1/2 + sqrt(i))
 function NonSquare(i: LongInt): LongInt;
 Begin
   NonSquare := i+trunc(sqrt(i) + 0.5);
 end;

 procedure First22;
 var
  i  : integer;
 begin
   For i := 1 to 21 do
     write(NonSquare(i):3,',');
   writeln(NonSquare(22):3);
 end;

 procedure OutSquare(i: integer);
 var
   n : LongInt;
 begin
   n := NonSquare(i);
   writeln('Square ',n,' found at ',i);
 end;

procedure Test(Limit: LongWord);
 var
  i ,n,sq,sn : LongWord;
 Begin
   sn := 1;
   sq := 1;
   For i := 1 to Limit do
   begin
     n := NonSquare(i);
     if n >= sq then
     begin
       if n > sq then
       begin
         sq := sq+2*sn+1; inc(sn);
       end
       else
         OutSquare(i);
     end;
   end;
 end;

 Begin
   First22;
   Test(1000*1000*1000);
 end.
{-------------------------------------------------------------------- 234 sha-1}
program RosettaSha1;
uses
    sha1;
var
   d: TSHA1Digest;
begin
     d:=SHA1String('Rosetta Code');
     WriteLn(SHA1Print(d));
end.
{------------------------------------------------------- 235 sieve-of-pritchard}
program Pritchard_console;

{$APPTYPE CONSOLE}

uses
  Math, SysUtils, Types;

// Function to return an array of all primes <= N
function PritchardSieve( const N : integer) : Types.TIntegerDynArray;
var
  j, j_max, k, len, nrPrimes, p : integer;
  marked : Types.TBooleanDynArray;
  smallPrimes : Types.TIntegerDynArray; // i.e. primes <= sqrt( N)
  spi : integer; // index into array smallPrimes
const
  SP_STEP = 16; // step when extending dynamic array smallPrimes
begin
  // Deal with trivial input
  result := nil;
  if (N <= 1) then exit;

  // Initialize
  SetLength( marked, N + 1); // 0..N for convenience; marked[0] is not used
  marked[1] := true; // no other initialization of "marked" is needed
  len := 1;
  p := 2;
  SetLength( smallPrimes, SP_STEP);
  spi := 0;

  while p*p <= N do begin
    // Roll the wheel
    if len < N then begin
      j_max := Math.Min( p*len, N);
      for j := len + 1 to j_max do marked[j] := marked[j - len];
      len := j_max;
    end;

    // Unmark multiples of p
    for k := len div p downto 1 do
      if marked[k] then marked[p*k] := false;

    // Store the prime p, extending the array if necessary
    if spi = Length( smallPrimes) then
      SetLength( smallPrimes, spi + SP_STEP);
    smallPrimes[spi] := p;
    inc(spi);

    // Find the next prime p
    if p = 2 then p := 3
    else repeat inc(p) until (p > N) or marked[p];
    // Condition p > N is a safety net; should always hit a marked value
    Assert(p <= N);
  end; // while

  // Final roll, if needed. It is not needed if N >= 49. This is because
  //  2 < 3^2, 2*3 < 5^2, 2*3*5 < 7^2, but thereafter 2*3*5*7 > 11^2, etc.
  if len < N then
    for j := len + 1 to N do marked[j] := marked[j - len];

  // Remove 1 and put the small primes back
  marked[1] := false;
  for k := 0 to spi - 1 do marked[smallPrimes[k]] := true;

  // Use the boolean array to return an array of prime integers
  nrPrimes := 0;
  for j := 2 to N do
    if marked[j] then inc( nrPrimes);
  SetLength( result, nrPrimes);
  k := 0;
  for j := 2 to N do
    if marked[j] then begin result[k] := j; inc(k); end;
end;

// Main routine. User types the program name,
// optionally followed by the limit N (defaults to 150)
var
  N, j : integer;
  primes : Types.TIntegerDynArray;
begin
  if ParamCount = 0 then N := 150
                    else N := SysUtils.StrToInt( ParamStr(1));
  primes := PritchardSieve(N);
  WriteLn( 'Number of primes = ', Length(primes));
  for j := 0 to Length(primes) - 1 do begin
    Write( ' ', primes[j]:4);
    if j mod 10 = 9 then WriteLn;
  end;
end.
{------------------------------------------------------ 236 smallest-multiple-1}
{$IFDEF FPC}
  {$MODE DELPHI}
{$ELSE}
  {$APPTAYPE CONSOLE}
{$ENDIF}
const
 smallprimes : array[0..10] of Uint32 = (2,3,5,7,11,13,17,19,23,29,31);
 MAX = 20;

function getmaxfac(pr: Uint32): Uint32;
//get the pr^highest exponent of prime used in 2 .. MAX
var
  i,fac : integer;
Begin
  result := pr;
  while pr*result <= MAX do
    result *= pr;
end;

var
  n,pr,prIdx : Uint32;
BEGIN
  n := 1;
  prIdx := 0;
  pr := smallprimes[prIdx];
  repeat
    pr := smallprimes[prIdx];
    n *= getmaxfac(pr);
    inc(prIdx);
    pr := smallprimes[prIdx];
  until pr>MAX;
  writeln(n);
{$IFDEF WINDOWS}
  READLN;
{$ENDIF}
END.
{------------------------------------------------------ 237 smallest-multiple-2}
{$IFDEF FPC}
  {$MODE DELPHI} {$Optimization On}
{$ELSE}
  {$APPTAYPE CONSOLE}
{$ENDIF}
{$DEFINE USE_GMP}
uses
  {$IFDEF USE_GMP}
  gmp,
  {$ENDIF}
  sysutils; //format
const
  MAX_LIMIT = 2*1000*1000;
  UpperLimit = MAX_LIMIT+1000;// so to find a prime beyond MAX_LIMIT
  MAX_UINT64 = 46;// unused.Limit to get an Uint64 output
type
  tFactors = array of Uint32;
  tprimelist = array of byte;
var
  primeDeltalist : tPrimelist;
  factors,
  saveFactors:tFactors;
  saveFactorsIdx,
  maxFactorsIdx : Uint32;
procedure Init_Primes;
var
  pPrime : pByte;
  p,i,delta,cnt: NativeUInt;
begin
  setlength(primeDeltalist,UpperLimit+3*8+1);
  pPrime := @primeDeltalist[0];
  //delete multiples of 2,3
  i := 0;
  repeat
    //take care of endianess //0706050403020100
    pUint64(@pPrime[i+0])^ := $0100010000000100;
    pUint64(@pPrime[i+8])^ := $0000010001000000;
    pUint64(@pPrime[i+16])^:= $0100000001000100;
    inc(i,24);
  until i>UpperLimit;
  cnt := 2;// 2,3
  p := 5;
  delta := 1;//5-3
  repeat
    if pPrime[p] <> 0 then
    begin
      i := p*p;
      if i > UpperLimit then
        break;
      inc(cnt);
      pPrime[p-2*delta] := delta;
      delta := 0;
      repeat
        pPrime[i] := 0;
        inc(i,2*p);
      until i>UpperLimit;
    end;
    inc(p,2);
    inc(delta);
  until p*p>UpperLimit;
  setlength(saveFactors,cnt);
  //convert to delta
  repeat
    if pPrime[p]<> 0 then
    begin
      pPrime[p-2*delta] := delta;
      inc(cnt);
      delta := 0;
    end;
    inc(p,2);
    inc(delta);
  until p > UpperLimit;
  setlength(factors,cnt);
  factors[0] := 2;
  factors[1] := 3;
  i := 2;
  p := 5;
  repeat
    factors[i] := p;
    p += 2*pPrime[p];
    i += 1;
  until i >= cnt;
  setlength(primeDeltalist,0);
//  writeln(length(savefactors)); writeln(length(factors));
end;

{$IFDEF USE_GMP}
procedure ConvertToMPZ(const factors:tFactors;dgtCnt:UInt32);
const
  c19Digits = QWord(10*1000000)*1000000*1000000;
var
  mp,mpdiv : mpz_t;
  s : AnsiString;
  rest,last : Uint64;
  f : Uint32;
  i :int32;
begin
  //Init and allocate space
  mpz_init_set_ui(mp,0);
  mpz_init(mpdiv);
  mpz_ui_pow_ui(mpdiv,10,dgtCnt);
  mpz_add(mp,mp,mpdiv);
  mpz_add_ui(mp,mp,1);
  mpz_set_ui(mp,1);

  i := maxFactorsIdx;
  rest := 1;
  repeat
    last := rest;
    f := factors[i];
    rest *= f;
    if rest div f <> last then
    begin
      mpz_mul_ui(mp,mp,last);
      rest := f;
    end;
    dec(i);
  until i < 0;
  mpz_mul_ui(mp,mp,rest);

  If dgtcnt>40 then
  begin
    rest := mpz_fdiv_ui(mp,c19Digits);
    s := '..'+Format('%.19u',[rest]);
    mpz_fdiv_q_ui (mpdiv,mpdiv,c19Digits);
    mpz_fdiv_q(mp,mp,mpdiv);
    rest := mpz_get_ui(mp);
    writeln(rest:19,s);
    mpz_clear(mpdiv);
  end
  else
  Begin
    setlength(s,dgtCnt+1000);
    mpz_get_str(@s[1],10,mp);
    writeln(s);
    i := length(s);
    while not(s[i] in['0'..'9']) do
      dec(i);
    setlength(s,i+1);
    writeln(s);
  end;
  mpz_clear(mp);
end;
{$ENDIF}

procedure CheckDigits(const factors:tFactors);
var
  dgtcnt : extended;
  i : integer;
begin
  dgtcnt := 0;
  i := 0;
  repeat
    dgtcnt += ln(factors[i]);
    inc(i);
  until i > maxFactorsIdx;
  dgtcnt := trunc(dgtcnt/ln(10))+1;
  writeln(' has ',maxFactorsIdx+1:10,' factors and ',dgtcnt:10:0,' digits');
  {$IFDEF USE_GMP}
    i := trunc(dgtcnt);
    if i < 1000*1000 then
      ConvertToMPZ(factors,i);
  {$ENDIF}
end;

function ConvertToUint64(const factors:tFactors):Uint64;
var
  i : integer;
begin
  if maxFactorsIdx >15 then
    Exit(0);
  result := 1;
  for i := 0 to maxFactorsIdx do
    result *= factors[i];
end;

function ConvertToStr(const factors:tFactors):Ansistring;
var
  s : Ansistring;
  i : integer;
begin
  result := '';
  for i := 0 to maxFactorsIdx-1 do
  begin
    str(factors[i],s);
    result += s+'*';
  end;
  str(factors[maxFactorsIdx],s);
  result += s;
end;

procedure GetFactorList(var factors:tFactors;max:Uint32);
var
  p,f,lf : Uint32;
BEGIN
  p := 2;
  lf := 0;
  saveFactors[lf] := p;
  while p*p <= max do
  Begin
    saveFactors[lf] := p;
    f := p*p;
    while f*p <= max do
      f*= p;
    factors[lf] := f;
    inc(lf);
    p := factors[lf];
    if p= 0 then HALT;
  end;
  if lf>0 then
    saveFactorsIdx := lf-1;
  repeat
    inc(lf)
  until factors[lf]>Max;
  maxFactorsIdx := lf-1;
end;

procedure Check(var factors:tFactors;max:Uint32);
var
  i: Uint32;
begin
  GetFactorList(factors,max);
  write(max:10,': ');
  if maxFactorsIdx>15 then
    CheckDigits(factors)
  else
    writeln(ConvertToUint64(factors):21,' = ',ConvertToStr(factors));
  for i := 0 to saveFactorsIdx do
    factors[i] := savefactors[i];
end;

var
  max: Uint32;
BEGIN
  Init_Primes;

  max := 2;
  repeat
    check(factors,max);
    max *=10;
  until max > MAX_LIMIT;

  writeln;
  For max := 10 to 20 do // < MAX_UINT64
    check(factors,max);
{$IFDEF WINDOWS}
  READLN;
{$ENDIF}
END.
{------------------------------------------------------------ 238 smith-numbers}
program SmithNum;
{$IFDEF FPC}
  {$MODE objFPC} //result and  useful for x64
  {$CODEALIGN PROC=64}
{$ENDIF}
uses
  sysutils;
type
  tdigit  = byte;
  tSum    = LongInt;
const
  base = 10;
  //maxDigitCnt *(base-1) <= High(tSum)
  //maxDigitCnt <= High(tSum) DIV (base-1);
  maxDigitCnt = 16;

  StartPrimNo = 6;
  csegsieveSIze = 2*3*5*7*11*13;//prime 0..5
type
  tDgtSum = record
              dgtNum : LongInt;
              dgtSum : tSum;
              dgts   : array[0..maxDigitCnt-1] of tdigit;
            end;
  tNumFactype = word;
  tnumFactor = record
                 numfacCnt: tNumFactype;
                 numfacts : array[1..15] of tNumFactype;
               end;
  tpnumFactor= ^tnumFactor;

  tsieveprim = record
                 spPrim   : Word;
                 spDgtsum : Word;
                 spOffset : LongWord;
               end;
  tpsieveprim = ^tsieveprim;

  tsievePrimarr  = array[0..6542-1] of tsieveprim;
  tsegmSieve     = array[1..csegsieveSIze] of tnumFactor;

var
  Primarr:tsievePrimarr;
  copySieve,
  actSieve : tsegmSieve;
  PrimDgtSum :tDgtSum;
  PrimCnt : NativeInt;

function IncDgtSum(var ds:tDgtSum):boolean;
//add 1 to dgts and corrects sum of Digits
//return if overflow happens
var
  i : NativeInt;
Begin
  i := High(ds.dgts);
  inc(ds.dgtNum);
  repeat
    IF ds.dgts[i] < Base-1 then
    //add one and done
    Begin
      inc(ds.dgts[i]);
      inc(ds.dgtSum);
      BREAK;
    end
    else
    Begin
      ds.dgts[i] := 0;
      dec(ds.dgtSum,Base-1);
    end;
    dec(i);
 until i < Low(ds.dgts);
 result := i < Low(ds.dgts)
end;

procedure OutDgtSum(const ds:tDgtSum);
var
  i : NativeInt;
Begin
  i := Low(ds.dgts);
  repeat
    write(ds.dgts[i]:3);
    inc(i);
  until i > High(ds.dgts);
  writeln(' sum of digits :  ',ds.dgtSum:3);
end;

procedure OutSieve(var s:tsegmSieve);
var
  i,j : NativeInt;
Begin
  For i := Low(s) to High(s) do
    with s[i] do
    Begin
      write(i:6,numfacCnt:4);
      For j := 1 to numfacCnt do
        write(numFacts[j]:5);
      writeln;
    end;
end;

procedure SieveForPrimes;
// sieve for all primes < High(Word)
var
  sieve : array of byte;
  pS : pByte;
  p,i   : NativeInt;
Begin
  setlength(sieve,High(Word));
  Fillchar(sieve[Low(sieve)],length(sieve),#0);
  pS:= @sieve[0]; //zero based
  dec(pS);// make it one based
  //sieve
  p := 2;
  repeat
    i := p*p;
    IF i> High(Word) then
      BREAK;
    repeat pS[i] := 1; inc(i,p); until i > High(Word);
    repeat inc(p) until pS[p] = 0;
  until false;
  //now fill array of primes
  fillchar(PrimDgtSum,SizeOf(PrimDgtSum),#0);
  IncDgtSum(PrimDgtSum);//1
  i := 0;
  For p := 2 to High(Word) do
  Begin
    IncDgtSum(PrimDgtSum);
    if pS[p] = 0 then
    Begin
      with PrimArr[i] do
      Begin
        spOffset := 2*p;//start at 2*prime
        spPrim   := p;
        spDgtsum := PrimDgtSum.dgtSum;
      end;
      inc(i);
    end;
  end;
  PrimCnt := i-1;
end;

procedure MarkWithPrime(SpIdx:NativeInt;var sf:tsegmSieve);
var
  i : NativeInt;
  pSf :^tnumFactor;
  MarkPrime : NativeInt;
Begin
  with Primarr[SpIdx] do
  Begin
    MarkPrime := spPrim;
    i :=  spOffSet;
    IF i <= csegsieveSize then
    Begin
      pSf := @sf[i];
      repeat
        pSf^.numFacts[pSf^.numfacCnt+1] := SpIdx;
        inc(pSf^.numfacCnt);
        inc(pSf,MarkPrime);
        inc(i,MarkPrime);
      until i > csegsieveSize;
    end;
    spOffset := i-csegsieveSize;
  end;
end;

procedure InitcopySieve(var cs:tsegmSieve);
var
  pr: NativeInt;
Begin
  fillchar(cs[Low(cs)],sizeOf(cs),#0);
  For Pr := 0 to 5 do
  Begin
    with Primarr[pr] do
     spOffset := spPrim;//mark the prime too
    MarkWithPrime(pr,cs);
  end;
end;

procedure MarkNextSieve(var s:tsegmSieve);
var
  idx: NativeInt;
Begin
  s:= copySieve;
  For idx := StartPrimNo to PrimCnt do
    MarkWithPrime(idx,s);
end;

function DgtSumInt(n: NativeUInt):NativeUInt;
var
  r : NativeUInt;
Begin
  result := 0;
  repeat
    r := n div base;
    inc(result,n-base*r);
    n := r
  until r = 0;
end;

{function DgtSumOfFac(pN: tpnumFactor;dgtNo:tDgtSum):boolean;}
function TestSmithNum(pN: tpnumFactor;dgtNo:tDgtSum):boolean;
var
  i,k,r,dgtSumI,dgtSumTarget : NativeUInt;
  pSp:tpsieveprim;
  pNumFact : ^tNumFactype;
Begin
  i := dgtNo.dgtNum;
  dgtSumTarget :=dgtNo.dgtSum;

  dgtSumI := 0;
  with pN^ do
  Begin
    k := numfacCnt;
    pNumFact := @numfacts[k];
  end;

  For k := k-1 downto 0 do
  Begin
    pSp := @PrimArr[pNumFact^];
    r := i DIV pSp^.spPrim;
    repeat
      i := r;
      r := r DIV pSp^.spPrim;
      inc(dgtSumI,pSp^.spDgtsum);
    until (i - r* pSp^.spPrim) <> 0;
    IF dgtSumI > dgtSumTarget then
    Begin
      result := false;
      EXIT;
    end;
    dec(pNumFact);
  end;
  If i <> 1 then
    inc(dgtSumI,DgtSumInt(i));
  result := dgtSumI = dgtSumTarget
end;

function CheckSmithNo(var s:tsegmSieve;var dgtNo:tDgtSum;Lmt:NativeInt=csegsieveSIze):NativeUInt;
var
  pNumFac : tpNumFactor;
  i : NativeInt;
Begin
  result := 0;
  i := low(s);
  pNumFac := @s[i];
  For i := i to lmt do
  Begin
    incDgtSum(dgtNo);
    IF pNumFac^.numfacCnt<> 0 then
      IF TestSmithNum(pNumFac,dgtNo) then
      Begin
        inc(result);
        //Mark as smith number
        inc(pNumFac^.numfacCnt,1 shl 15);
      end;
    inc(pNumFac);
  end;
end;

const
  limit = 100*1000*1000;
var
  actualNo :tDgtSum;
  i,s : NativeInt;
Begin
  SieveForPrimes;
  InitcopySieve(copySieve);
  i := 1;
  s:= -6;//- 2,3,5,7,11,13

  fillchar(actualNo,SizeOf(actualNo),#0);
  while i < Limit-csegsieveSize do
  Begin
    MarkNextSieve(actSieve);
    inc(s,CheckSmithNo(actSieve,actualNo));
    inc(i, csegsieveSize);
  end;
  //check the rest
  MarkNextSieve(actSieve);
  inc(s,CheckSmithNo(actSieve,actualNo,Limit-i+1));
  write(s:8,' smith-numbers up to ',actualNo.dgtnum:10);
end.
{---------------------------------------------------------------- 239 sockets-1}
Program Sockets_ExampleA;

Uses
  { Free Pascal RTL sockets unit }
  sockets;

Var
  TCP_Sock:    integer;
  Remote_Addr: TSockAddr;

  Message:     string;
  PMessage:    Pchar;
  Message_Len: integer;


Begin
  { Fill the record (struct) with the server's address information }
  With Remote_Addr do
  begin
    Sin_family := AF_INET;
    Sin_addr   := StrToNetAddr('127.0.0.1');
    Sin_port   := HtoNs(256);
  end;

  { Returns an IPv4 TCP socket descriptor }
  TCP_Sock := fpSocket(AF_INET, SOCK_STREAM, IPPROTO_IP);

  { Most routines in this unit return -1 on failure }
  If TCP_Sock = -1 then
  begin
    WriteLn('Failed to create new socket descriptor');
    Halt(1);
  end;

  { Attempt to connect to the address supplied above }
  If fpConnect(TCP_Sock, @Remote_Addr, SizeOf(Remote_Addr)) = -1 then
  begin
    { Specifc error codes can be retrieved by calling the SocketError function }
    WriteLn('Failed to contact server');
    Halt(1);
  end;

  { Finally, send the message to the server and disconnect }
  Message     := 'Hello socket world';
  PMessage    := @Message;
  Message_Len := StrLen(PMessage);

  If fpSend(TCP_Sock, PMessage, Message_Len, 0) <> Message_Len then
  begin
    WriteLn('An error occurred while sending data to the server');
    Halt(1);
  end;

  CloseSocket(TCP_Sock);
End.
{---------------------------------------------------- 240 sort-disjoint-sublist}
    program disjointsort;

    procedure swap(var a, b: Integer);
    var
    temp: Integer;
    begin
    temp := a;
    a := b;
    b := temp;
    end;

    procedure d_sort(var index,arr:array of integer);
    var
    n,i,j,num:integer;
    begin
    num:=length(index);
    for n:=1 to 2 do
    begin
    for i:=0 to num-1 do
    begin
    for j:=i+1 to num-1 do
    begin
     if n=1 then if index[j]<index[i] then swap(index[j],index[i]);
     if n=2 then if arr[index[j]]<arr[index[i]] then swap(arr[index[j]],arr[index[i]]);
    end;
    end;
    end;
    end;

    var
    i:integer;
    arr  :array[0 .. 7] of integer =(7, 6, 5, 4, 3, 2, 1, 0);
    index:array[0 .. 2] of integer =(6, 1, 7);


    begin
    writeln('Before');
    for i:=0 to 7 do write(arr[i],'  ');
    writeln;
    d_sort(index,arr);
    writeln('After');
    for i:=0 to 7 do write(arr[i],'  ');
    writeln;
    readln;
    end.
{------------------------------------------- 241 sort-using-a-custom-comparator}
program CustomComparator;
{$mode objfpc}{$h+}
uses
  Classes, SysUtils, Math;

function Compare(List: TStringList; Index1, Index2: Integer): Integer;
begin
  Result := CompareValue(Length(List[Index2]), Length(List[Index1]));
  if Result = 0 then
    Result := CompareText(List[Index1], List[Index2]);
end;

const
  Sample = 'Here are some sample strings to be sorted';

begin
  with TStringList.Create do
    try
      AddStrings(Sample.Split([' '], TStringSplitOptions.ExcludeEmpty));
      CustomSort(@Compare);
      WriteLn(string.Join(', ', ToStringArray));
    finally
      Free;
    end;
  Readln;
end.
{--------------------------------------------- 242 sorting-algorithms-bead-sort}
program BDS;
const MAX = 1000;
type
    type_matrix = record
	lin,col:integer;
	matrix: array [1..MAX,1..MAX] of boolean;
    end;

    type_vector = record
	size:integer;
	vector: array[1..MAX] of integer;
    end;

procedure BeadSort(var v:type_vector);
var
    i,j,k,sum:integer;
    m:type_matrix;
begin
    m.lin:=v.size;

    (* the number of columns is equal to the greatest element *)
    m.col:=0;
    for i:=1 to v.size do
	if v.vector[i] > m.col then
	    m.col:=v.vector[i];

    (* initializing the matrix *)
    for j:=1 to m.lin do
	begin
	    k:=1;
	    for i:=m.col downto 1 do
		begin
		    if v.vector[j] >= k then
			m.matrix[i,j]:=TRUE
		    else
			m.matrix[i,j]:=FALSE;
		    k:=k+1;
		end;
	end;

    (* Sort the matrix *)
    for i:=1 to m.col do
	begin
	    (* Count the beads and set the line equal FALSE *)
	    sum:=0;
	    for j:=1 to m.lin do
		begin
		    if m.matrix[i,j] then
			sum:=sum+1;
		    m.matrix[i,j]:=FALSE;
		end;

	    (* The line receives the bead sorted *)
	    for j:=m.lin downto m.lin-sum+1 do
		m.matrix[i,j]:=TRUE;
	end;

    (* Convert the sorted bead matrix to a sorted vector *)
    for j:=1 to m.lin do
	begin
	    v.vector[j]:=0;
	    i:=m.col;
	    while (m.matrix[i,j] = TRUE)and(i>=1) do
		begin
		    v.vector[j]+=1;
		    i:=i-1;
		end;
	end;
end;

procedure print_vector(var v:type_vector);
var i:integer;
begin
    for i:=1 to v.size do
	write(v.vector[i],' ');
    writeln;
end;

var
    i:integer;
    v:type_vector;
begin
    writeln('How many numbers do you want to sort?');
    readln(v.size);
    writeln('Write the numbers:');

    for i:=1 to v.size do
	read(v.vector[i]);

    writeln('Before sort:');
    print_vector(v);

    BeadSort(v);

    writeln('After sort:');
    print_vector(v);
end.

{---------------------------------------------- 243 sorting-algorithms-bogosort}
program bogosort;

const
  max = 5;
type
  list = array [1..max] of integer;

{ Print a list }
procedure printa(a: list);
var
  i: integer;
begin
  for i := 1 to max do
    write(a[i], ' ');
  writeln
end;

{ Knuth shuffle }
procedure shuffle(var a: list);
var
  i,k,tmp: integer;
begin
  for i := max downto 2 do begin
     k := random(i) + 1;
     if (a[i] <> a[k]) then begin
       tmp := a[i]; a[i] := a[k]; a[k] := tmp
     end
  end
end;

{ Check for sorted list }
function sorted(a: list): boolean;
var
  i: integer;
begin
  sorted := True;
  for i := 2 to max do
    if (a[i - 1] > a[i]) then begin
      sorted := False; exit
    end
end;

{ Bogosort }
procedure bogo(var a: list);
var
  i: integer;
begin
  i := 1; randomize;
  write(i,': '); printa(a);
  while not sorted(a) do begin
    shuffle(a);
    i := i + 1; write(i,': '); printa(a)
  end
end;

{ Test and display }
var
  a: list;
  i: integer;

begin
  for i := 1 to max do
    a[i] := (max + 1) - i;
  bogo(a);
end.
{------------------------------------------- 244 sorting-algorithms-circle-sort}
{
   source file name on linux is ./p.p

   -*- mode: compilation; default-directory: "/tmp/" -*-
   Compilation started at Sat Mar 11 23:55:25

   a=./p && pc $a.p && $a
   Free Pascal Compiler version 3.0.0+dfsg-8 [2016/09/03] for x86_64
   Copyright (c) 1993-2015 by Florian Klaempfl and others
   Target OS: Linux for x86-64
   Compiling ./p.p
   Linking p
   /usr/bin/ld.bfd: warning: link.res contains output sections; did you forget -T?
   56 lines compiled, 0.0 sec
   1 2 3 4 5 6 7 8 9

   Compilation finished at Sat Mar 11 23:55:25
}

program sort;

var
   a : array[0..999] of integer;
   i :  integer;

procedure circle_sort(var a : array of integer; left : integer; right : integer);
var swaps : integer;

   procedure csinternal(var a : array of integer; left : integer; right : integer; var swaps : integer);
   var
      lo, hi, mid : integer;
      t           : integer;
   begin
      if left < right then
      begin
	 lo := left;
	 hi := right;
	 while lo < hi do
	 begin
	    if a[hi] < a[lo] then
	    begin
	       t := a[lo]; a[lo] := a[hi]; a[hi] := t;
	       swaps := swaps + 1;
	    end;
	    lo := lo + 1;
	    hi := hi - 1;
	 end;
	 if (lo = hi) and (a[lo+1] < a[lo]) then
	 begin
	    t := a[lo]; a[lo] := a[lo+1]; a[lo+1] := t;
	    swaps := swaps + 1;
	 end;
	 mid := trunc((hi + lo) / 2);
	 csinternal(a, left, mid, swaps);
	 csinternal(a, mid + 1, right, swaps)
      end
   end;

begin;
   swaps := 1;
   while (0 < swaps) do
   begin
      swaps := 0;
      csinternal(a, left, right, swaps);
   end
end;

begin
   {
      generating polynomial coefficients computed in j:  6 7 8 9 2 5 3 4 1x %. ^/~i.9x
      are 6 29999r280 _292519r1120 70219r288 _73271r640 10697r360 _4153r960 667r2016 _139r13440
   }
   a[1]:=6;a[2]:=7;a[3]:=8;a[4]:=9;a[5]:=2;a[6]:=5;a[7]:=3;a[8]:=4;a[9]:=1;
   circle_sort(a,1,9);
   for i := 1 to 9 do write(a[i], ' ');
   writeln();
end.
{------------------------------------------- 245 sorting-algorithms-comb-sort-1}
program CombSortDemo;


// NOTE: The array is 1-based
//       If you want to use this code on a 0-based array, see below
type
  TIntArray = array[1..40] of integer;

var
  data: TIntArray;
  i: integer;

procedure combSort(var a: TIntArray);
  var
    i, gap, temp: integer;
    swapped: boolean;
  begin
    gap := length(a);
    swapped := true;
    while (gap > 1) or swapped do
    begin
      gap := trunc(gap / 1.3);
      if (gap < 1) then
        gap := 1;
      swapped := false;
      for i := 1 to length(a) - gap do
        if a[i] > a[i+gap] then
        begin
     temp := a[i];
          a[i] := a[i+gap];
          a[i+gap] := temp;
          swapped := true;
        end;
    end;
  end;

begin
  Randomize;
  writeln('The data before sorting:');
  for i := low(data) to high(data) do
  begin
    data[i] := Random(high(data));
    write(data[i]:4);
  end;
  writeln;
  combSort(data);
  writeln('The data after sorting:');
  for i := low(data) to high(data) do
  begin
    write(data[i]:4);
  end;
  writeln;
end.
{------------------------------------------- 246 sorting-algorithms-comb-sort-2}
program CombSortDemo;


// NOTE: The array is 0-based
//       If you want to use this code on a 1-based array, see above
type
  TIntArray = array[0..39] of integer;

var
  data: TIntArray;
  i: integer;

procedure combSort(var a: TIntArray);
  var
    i, gap, temp: integer;
    swapped: boolean;
  begin
    gap := length(a);
    swapped := true;
    while (gap > 1) or swapped do
    begin
      gap := trunc(gap / 1.3);
      if (gap < 1) then
        gap := 1;
      swapped := false;
      for i := 0 to length(a) - gap - 1 do
        if a[i] > a[i+gap] then
        begin
     temp := a[i];
          a[i] := a[i+gap];
          a[i+gap] := temp;
          swapped := true;
        end;
    end;
  end;

begin
  Randomize;
  writeln('The data before sorting:');
  for i := low(data) to high(data) do
  begin
    data[i] := Random(high(data));
    write(data[i]:4);
  end;
  writeln;
  combSort(data);
  writeln('The data after sorting:');
  for i := low(data) to high(data) do
  begin
    write(data[i]:4);
  end;
  writeln;
end.
{----------------------------------------- 247 sorting-algorithms-counting-sort}
program CountingSort;

procedure counting_sort(var arr : Array of Integer; n, min, max : Integer);
var
   count   : Array of Integer;
   i, j, z : Integer;
begin
   SetLength(count, max-min);
   for i := 0 to (max-min) do
      count[i] := 0;
   for i := 0 to (n-1) do
      count[ arr[i] - min ] := count[ arr[i] - min ] + 1;
   z := 0;
   for i := min to max do
      for j := 0 to (count[i - min] - 1) do begin
    arr[z] := i;
    z := z + 1
      end
end;

var
   ages  : Array[0..99] of Integer;
   i  : Integer;

begin
   { testing }
   for i := 0 to 99 do
      ages[i] := 139 - i;
   counting_sort(ages, 100, 0, 140);
   for i := 0 to 99 do
      writeln(ages[i]);
end.
{---------------------------------------------- 248 sorting-algorithms-heapsort}
program HeapSortDemo;

{$mode objfpc}{$h+}{$b-}

procedure HeapSort(var a: array of Integer);
  procedure SiftDown(Root, Last: Integer);
  var
    Child, Tmp: Integer;
  begin
    while Root * 2 + 1 <= Last do begin
      Child := Root * 2 + 1;
      if (Child + 1 <= Last) and (a[Child] < a[Child + 1]) then
        Inc(Child);
      if a[Root] < a[Child] then begin
        Tmp := a[Root];
        a[Root] := a[Child];
        a[Child] := Tmp;
        Root := Child;
      end else exit;
    end;
  end;
var
  I, Tmp: Integer;
begin
  for I := Length(a) div 2 downto 0 do
    SiftDown(I, High(a));
  for I := High(a) downto 1 do begin
    Tmp := a[0];
    a[0] := a[I];
    a[I] := Tmp;
    SiftDown(0, I - 1);
  end;
end;

procedure PrintArray(const Name: string; const A: array of Integer);
var
  I: Integer;
begin
  Write(Name, ': [');
  for I := 0 to High(A) - 1 do
    Write(A[I], ', ');
  WriteLn(A[High(A)], ']');
end;

var
  a1: array[-7..5] of Integer = (-34, -20, 30, 13, 36, -10, 5, -25, 9, 19, 35, -50, 29);
  a2: array of Integer = (-9, 42, -38, -5, -38, 0, 0, -15, 37, 7, -7, 40);
begin
  HeapSort(a1);
  PrintArray('a1', a1);
  HeapSort(a2);
  PrintArray('a2', a2);
end.
{---------------------------------------- 249 sorting-algorithms-insertion-sort}
program SortDemo;

{$mode objfpc}{$h+}{$b-}

procedure InsertionSort(var A: array of Integer);
var
  I, J, Tmp: Integer;
begin
  for I := 1 to High(a) do
    if A[I] < A[I - 1] then begin
      J := I;
      Tmp := A[I];
      repeat
        A[J] := A[J - 1];
        Dec(J);
      until (J = 0) or (Tmp >= A[J - 1]);
      A[J] := Tmp;
    end;
end;

procedure PrintArray(const A: array of Integer);
var
  I: Integer;
begin
  Write('[');
  for I := 0 to High(A) - 1 do
    Write(A[I], ', ');
  WriteLn(A[High(A)], ']');
end;

var
  a: array[-7..6] of Integer = (-34, -20, 30, 13, 36, -10, 5, -25, 9, 19, 35, -50, 29, 11);

begin
  InsertionSort(a);
  PrintArray(a);
end.
{------------------------------------------ 250 sorting-algorithms-merge-sort-1}
program MergeSortDemo;

{$mode objfpc}{$h+}

procedure MergeSort(var A: array of Integer);
var
  Buf: array of Integer;
  procedure Merge(L, M, R: Integer);
  var
    I, J, K: Integer;
  begin
    I := L;
    J := Succ(M);
    for K := 0 to R - L do
      if (J > R) or (I <= M) and (A[I] <= A[J]) then begin
        Buf[K] := A[I];
        Inc(I);
      end else begin
        Buf[K] := A[J];
        Inc(J);
      end;
    Move(Buf[0], A[L], Succ(R - L) * SizeOf(Integer));
  end;
  procedure MSort(L, R: Integer);
  var
    M: Integer;
  begin
    if R > L then begin
      {$push}{$q-}{$r-}M := (L + R) shr 1;{$pop}
      MSort(L, M);
      MSort(M + 1, R);
      if A[M] > A[M + 1] then
        Merge(L, M, R);
    end;
  end;
begin
  if Length(A) > 1 then begin
    SetLength(Buf, Length(A));
    MSort(0, High(A));
  end;
end;

procedure PrintArray(const Name: string; const A: array of Integer);
var
  I: Integer;
begin
  Write(Name, ': [');
  for I := 0 to High(A) - 1 do
    Write(A[I], ', ');
  WriteLn(A[High(A)], ']');
end;

var
  a1: array[-7..5] of Integer = (27, -47, 14, 39, 47, -2, -8, 20, 18, 22, -49, -40, -8);
  a2: array of Integer = (9, -25, -16, 24, 39, 42, 20, 20, 39, 10, -47, 28);
begin
  MergeSort(a1);
  PrintArray('a1', a1);
  MergeSort(a2);
  PrintArray('a2', a2);
end.
{------------------------------------------ 251 sorting-algorithms-pancake-sort}
Program PancakeSort (output);

procedure flip(var b: array of integer; last: integer);

  var
    swap, i: integer;

  begin
    for i := low(b) to (last - low(b) - 1) div 2 do
    begin
      swap              := b[i];
      b[i]              := b[last-(i-low(b))];
      b[last-(i-low(b))] := swap;
    end;
  end;

procedure PancakeSort(var a: array of integer);

  var
    i, j, maxpos: integer;

  begin
    for i := high(a) downto low(a) do
    begin
// Find position of max number between beginning and i
      maxpos := i;
      for j := low(a) to i - 1 do
        if a[j] > a[maxpos] then
          maxpos := j;

// is it in the correct position already?
      if maxpos = i then
        continue;

// is it at the beginning of the array? If not flip array section so it is
      if maxpos <> low(a) then
        flip(a, maxpos);

// Flip array section to get max number to correct position
      flip(a, i);
    end;
  end;

var
  data: array of integer;
  i: integer;

begin
  setlength(data, 8);
  Randomize;
  writeln('The data before sorting:');
  for i := low(data) to high(data) do
  begin
    data[i] := Random(high(data));
    write(data[i]:4);
  end;
  writeln;
  PancakeSort(data);
  writeln('The data after sorting:');
  for i := low(data) to high(data) do
  begin
    write(data[i]:4);
  end;
  writeln;
end.
{--------------------------------------------- 252 sorting-algorithms-quicksort}
program QSortDemo;

{$mode objfpc}{$h+}{$b-}

procedure QuickSort(var A: array of Integer);
  procedure QSort(L, R: Integer);
  var
    I, J, Tmp, Pivot: Integer;
  begin
    if R - L < 1 then exit;
    I := L; J := R;
    {$push}{$q-}{$r-}Pivot := A[(L + R) shr 1];{$pop}
    repeat
      while A[I] < Pivot do Inc(I);
      while A[J] > Pivot do Dec(J);
      if I <= J then begin
        Tmp := A[I];
        A[I] := A[J];
        A[J] := Tmp;
        Inc(I); Dec(J);
      end;
    until I > J;
    QSort(L, J);
    QSort(I, R);
  end;
begin
  QSort(0, High(A));
end;

procedure PrintArray(const A: array of Integer);
var
  I: Integer;
begin
  Write('[');
  for I := 0 to High(A) - 1 do
    Write(A[I], ', ');
  WriteLn(A[High(A)], ']');
end;

var
  a: array[-7..6] of Integer = (-34, -20, 30, 13, 36, -10, 5, -25, 9, 19, 35, -50, 29, 11);
begin
  QuickSort(a);
  PrintArray(a);
end.
{------------------------------------------- 253 sorting-algorithms-stooge-sort}
program StoogeSortDemo;

type
  TIntArray = array of integer;

procedure stoogeSort(var m: TIntArray; i, j: integer);
  var
    t, temp: integer;
  begin
    if m[j] < m[i] then
    begin
      temp := m[j];
      m[j] := m[i];
      m[i] := temp;
    end;
    if j - i > 1 then
    begin
      t := (j - i + 1) div 3;
      stoogesort(m, i, j-t);
      stoogesort(m, i+t, j);
      stoogesort(m, i, j-t);
    end;
  end;

var
  data: TIntArray;
  i: integer;

begin
  setlength(data, 8);
  Randomize;
  writeln('The data before sorting:');
  for i := low(data) to high(data) do
  begin
    data[i] := Random(high(data));
    write(data[i]:4);
  end;
  writeln;
  stoogeSort(data, low(data), high(data));
  writeln('The data after sorting:');
  for i := low(data) to high(data) do
  begin
    write(data[i]:4);
  end;
  writeln;
end.
{------------------------------------------- 254 sorting-algorithms-strand-sort}
program StrandSortDemo;

type
  TIntArray = array of integer;

function merge(left: TIntArray; right: TIntArray): TIntArray;
  var
    i, j, k: integer;
  begin
    setlength(merge, length(left) + length(right));
    i := low(merge);
    j := low(left);
    k := low(right);
    repeat
      if ((left[j] <= right[k]) and (j <= high(left))) or (k > high(right)) then
      begin
        merge[i] := left[j];
        inc(j);
      end
      else
      begin
        merge[i] := right[k];
        inc(k);
      end;
      inc(i);
    until i > high(merge);
  end;

function StrandSort(s: TIntArray): TIntArray;
  var
    strand: TIntArray;
    i, j: integer;
  begin
    setlength(StrandSort, length(s));
    setlength(strand, length(s));
    i := low(s);
    repeat
      StrandSort[i] := s[i];
      inc(i);
    until (s[i] < s[i-1]);
    setlength(StrandSort, i);
    repeat
      setlength(strand, 1);
      j := low(strand);
      strand[j] := s[i];
      while (s[i+1] > s[i]) and (i < high(s)) do
      begin
        inc(i);
        inc(j);
	setlength(strand, length(strand) + 1);
        Strand[j] := s[i];
      end;
      StrandSort := merge(StrandSort, strand);
      inc(i);
    until (i > high(s));
  end;

var
  data: TIntArray;
  i: integer;

begin
  setlength(data, 8);
  Randomize;
  writeln('The data before sorting:');
  for i := low(data) to high(data) do
  begin
    data[i] := Random(high(data));
    write(data[i]:4);
  end;
  writeln;
  data := StrandSort(data);
  writeln('The data after sorting:');
  for i := low(data) to high(data) do
  begin
    write(data[i]:4);
  end;
  writeln;
end.
{------------------------------------------------------------------ 255 soundex}
program Soundex;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
   SysUtils;

type
  TLang=(en,fr,de);

const
   Examples : array[1..16, 1..2] of string =
     (('Ashcraft', 'A261')
     ,('Ashcroft', 'A261')
     ,('Gauss', 'G200')
     ,('Ghosh', 'G200')
     ,('Hilbert', 'H416')
     ,('Heilbronn', 'H416')
     ,('Lee', 'L000')
     ,('Lloyd', 'L300')
     ,('Moses', 'M220')
     ,('Pfister', 'P236')
     ,('Robert', 'R163')
     ,('Rupert', 'R163')
     ,('Rubin', 'R150')
     ,('Tymczak', 'T522')
     ,('Soundex', 'S532')
     ,('Example', 'E251')
     );

// For Ansi Str
function Soundex(Value: String; Lang: TLang) : String;
const
  // Thx to WP.
  Map: array[TLang, 0..2] of String =(
    // Deals with accented, to improve
    ('abcdefghijklmnopqrstuvwxyz'
    ,'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    ,' 123 12- 22455 12623 1-2 2'),
    ('aàâäbcçdeéèêëfghiîjklmnoöôpqrstuùûüvwxyz' // all chars with accented
    ,'AAAABCCDEEEEEFGHIIJKLMNOOOPQRSTUUUUVWXYZ' // uppercased
    ,' 123 97- 72455 12683 9-8 8'),             // coding
    ('abcdefghijklmnopqrstuvwxyz'
    ,'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    ,' 123 12- 22455 12623 1-2 2')
    );
var
  i: Integer;
  c, cOld: Char;

  function Normalize(const s: string): string;
  var
    c: Char;
    p: Integer;
  begin
    result := '';
    for c in LowerCase(s) do
    begin
      p := Pos(c, Map[Lang,0]);
      // unmapped chars are ignored
      if p > 0 then
        Result := Result + Map[Lang, 1][p];
    end;
  End;

  function GetCode(c: Char): Char;
  begin
    Result := Map[Lang, 2][Ord(c)-Ord('A')+1];
  End;

begin
  Value := Trim(Value);
  if Value = '' then
  begin
    Result := '0000';
    exit;
  end;
  Value := Normalize(Value);
  Result := Value[1];
  cOld := GetCode(Value[1]);
  for i := 2 to length(Value) do
  begin
    c := GetCode(Value[i]);
    if (c <> ' ') and (c <> '-') and (c <> cOld) then
      Result := Result + c;
    if c <> '-' then
      cOld := c;
  end;
  Result := Copy(Result+'0000', 1, 4);
End;

const
  Status : array[boolean] of string = ('KO', 'OK');
var
  Found: String;
  tab: array[1..2] of String;
begin
  WriteLn('Word                : Code   Found   Status');
  for tab in Examples do
  begin
    Found := Soundex(tab[1], en);
    WriteLn(Format('%-20s: %s   %s    %s',[tab[1], tab[2], Found, Status[Found = tab[2]]]))
  end;
  ReadLn;
End.
{------------------------------------------------------------ 256 spiral-matrix}
program Spiralmat;
type
  tDir = (left,down,right,up);
  tdxy = record
           dx,dy: longint;
         end;
  tdeltaDir = array[tDir] of tdxy;
const
  Nextdir : array[tDir] of tDir = (down,right,up,left);
  cDir : tDeltaDir = ((dx:1;dy:0),(dx:0;dy:1),(dx:-1;dy:0),(dx:0;dy:-1));
  cMaxN = 32;
type
  tSpiral =  array[0..cMaxN,0..cMaxN] of LongInt;

function FillSpiral(n:longint):tSpiral;
var
  b,i,k, dn,x,y : longInt;
  dir : tDir;
  tmpSp : tSpiral;
BEGIN
  b := 0;
  x := 0;
  y := 0;
  //only for the first line
  k := -1;
  dn := n-1;
  tmpSp[x,y] := b;
  dir :=  left;
  repeat
    i := 0;
    while i < dn do
    begin
      inc(b);
      tmpSp[x,y] := b;
      inc(x,cDir[dir].dx);
      inc(y,cDir[dir].dy);
      inc(i);
    end;
    Dir:= NextDir[dir];
    inc(k);
    IF k > 1 then
    begin
      k := 0;
      //shorten the line every second direction change
      dn := dn-1;
      if dn <= 0 then
        BREAK;
    end;
  until false;
  //the last
  tmpSp[x,y] := b+1;
  FillSpiral := tmpSp;
end;

var
  a : tSpiral;
  x,y,n : LongInt;
BEGIN
  For n := 1 to 5{cMaxN} do
  begin
    A:=FillSpiral(n);
    For y := 0 to n-1 do
    begin
      For x := 0 to n-1 do
        write(A[x,y]:4);
      writeln;
    end;
    writeln;
  end;
END.
{-------------------- 257 split-a-character-string-based-on-change-of-character}
program SplitChars;
{$IFDEF FPC}
  {$MODE DELPHI}{$COPERATORS ON}
{$ENDIF}
const
  TestString =  'gHHH5YY++///\';

function SplitAtChars(const S: String):String;
var
  i : integer;
  lastChar:Char;
begin
  result := '';
  IF length(s) > 0 then
  begin
    LastChar := s[1];
    result := LastChar;
    For i := 2 to length(s) do
    begin
      if s[i] <> lastChar then
      begin
        lastChar := s[i];
        result += ', ';
      end;
      result += LastChar;
    end;
  end;
end;

BEGIN
  writeln(SplitAtChars(TestString));
end.
{------------------------------------------------------ 258 square-but-not-cube}
program SquareButNotCube;
var
  sqN,
  sqDelta,
  SqNum,

  cbN,
  cbDelta1,
  cbDelta2,
  CbNum,

  CountSqNotCb,
  CountSqAndCb : NativeUint;

begin
  CountSqNotCb := 0;
  CountSqAndCb := 0;
  SqNum := 0;
  CbNum := 0;
  cbN := 0;
  sqN := 0;
  sqDelta := 1;
  cbDelta1 := 0;
  cbDelta2 := 1;
  repeat
    inc(sqN);
    inc(sqNum,sqDelta);
    inc(sqDelta,2);
    IF sqNum>cbNum then
    Begin
      inc(cbN);
      cbNum := cbNum+cbDelta2;
      inc(cbDelta1,6);// 0,6,12,18...
      inc(cbDelta2,cbDelta1);//1,7,19,35...
    end;
    IF sqNum <> cbNUm then
    Begin
      writeln(sqNum :25);
      inc(CountSqNotCb);
    end
    else
    Begin
      writeln(sqNum:25,sqN:10,'*',sqN,' = ',cbN,'*',cbN,'*',cbN);
      inc(CountSqANDCb);
    end;
  until CountSqNotCb >= 30;//sqrt(High(NativeUint));
  writeln(CountSqANDCb,' where numbers are square and cube ');
end.
{---------------------------------------------------- 259 stern-brocot-sequence}
program StrnBrCt;
{$IFDEF FPC}
  {$MODE DELPHI}
{$ENDIF}
const
  MaxCnt = 10835282;{ seq[i] < 65536 = high(Word) }
//MaxCnt = 500*1000*1000;{ 2Gbyte -> real 0.85 s user 0.31 }
type
  tSeqdata =  word;//cardinal LongWord
  pSeqdata = pWord;//pcardinal pLongWord
  tseq = array of tSeqdata;

function SternBrocotCreate(size:NativeInt):tseq;
var
  pSeq,pIns : pSeqdata;
  PosIns : NativeInt;
  sum : tSeqdata;
Begin
  setlength(result,Size+1);
  dec(Size); //== High(result)
  pIns := @result[size];// set at end
  PosIns := -size+2;    // negative index campare to 0
  pSeq := @result[0];

  sum := 1;
  pSeq[0]:= sum;pSeq[1]:= sum;
  repeat
    pIns[PosIns+1] := sum;//append copy of considered
    inc(sum,pSeq[0]);
    pIns[PosIns  ] := sum;
    inc(pSeq);
    inc(PosIns,2);sum := pSeq[1];//aka considered
  until PosIns>= 0;
  setlength(result,length(result)-1);
end;

function FindIndex(const s:tSeq;value:tSeqdata):NativeInt;
Begin
  result := 0;
  while result <= High(s) do
  Begin
    if s[result] = value then
      EXIT(result+1);
    inc(result);
  end;
end;

function gcd_iterative(u, v: NativeInt): NativeInt;
//http://rosettacode.org/wiki/Greatest_common_divisor#Pascal_.2F_Delphi_.2F_Free_Pascal
var
  t: NativeInt;
begin
  while v <> 0 do begin
    t := u;u := v;v := t mod v;
  end;
  gcd_iterative := abs(u);
end;

var
  seq : tSeq;
  i : nativeInt;
Begin
  seq:= SternBrocotCreate(MaxCnt);
// Show the first fifteen members of the sequence.
  For i := 0 to 13 do write(seq[i],',');writeln(seq[14]);
//Show the (1-based) index of where the numbers 1-to-10 first appears in the
  For i := 1 to 10 do
    write(i,' @ ',FindIndex(seq,i),',');
  writeln(#8#32);
//Show the (1-based) index of where the number 100 first appears in the sequence.
  writeln(100,' @ ',FindIndex(seq,100));
//Check that the greatest common divisor of all the two consecutive members of the series up to the 1000th member, is always one.
  i := 999;
  if i > High(seq) then
    i := High(seq);
  Repeat
    IF gcd_iterative(seq[i],seq[i+1]) <>1 then
    Begin
      writeln(' failure at  ',i+1,'  ',seq[i],'  ',seq[i+1]);
      BREAK;
    end;
    dec(i);
  until i <0;
  IF i< 0 then
    writeln('GCD-test is O.K.');
  setlength(seq,0);
end.
{---------------------------------------------------------- 260 strange-numbers}
program strangenumbers;

const
  dgtMaxCnt = 10;
  deltaDgtCnt: array[0..9] of Int32 =(4,4,5,5,5,5,5,5,4,4); // (4*4+6*5)/10 =>  4.6
  // digits that can follow
  DPrmNxtDgt : array[0..9,0..4] of Int32 =((2,3,5,7,0),  //0 +2,+3,+5,+7
                                           (3,4,6,8,0),  //1 +2,+3,+5,+7
                                           (0,4,5,7,9),  //2 -2,+2,+3,+5,+7
                                           (0,1,5,6,8),  //3 -3,-2,+2,+3,+5
                                           (1,2,6,7,9),  //4 -3,-2,+2,+3,+5
                                           (0,2,3,7,8),  //5 -5,-3,-2,+2,+3
                                           (1,3,4,8,9),  //6 -5,-3,-2,+2,+3
                                           (0,2,4,5,9),  //7 -7,-5,-3,-2,+2
                                           (1,3,5,6,0),  //8 -7,-5,-3,-2
                                           (2,4,6,7,0)); //9 -7,-5,-3,-2
type
  tDigits = array[0..dgtMaxCnt-1] of Int32;

//globals are set to 0
var
  Digits : tDigits;
  i,Cnt,dgtCnt : Int32;

procedure OutPut(const Digits:tDigits);
var
  i : Int32;
Begin
  For i := 0 to dgtcnt-1 do
    write(Digits[i]);
  write(' ');
end;

procedure NextDigit(var Digits:TDigits;DgtIdx:Int32);
var
  idx,dgt :Int32;
Begin
  dgt := Digits[DgtIdx];
  inc(DgtIdx);
  IF DgtIdx < dgtCnt-1 then
  Begin
    For idx := 0 to deltaDgtCnt[dgt]-1 do
    Begin
      Digits[DgtIdx]:= DPrmNxtDgt[dgt,idx];
      NextDigit(Digits,DgtIdx);
    end;
  end
  else
  Begin
    For idx := 0 to deltaDgtCnt[dgt]-1 do
    Begin
      Digits[DgtIdx]:= DPrmNxtDgt[dgt,idx];
      inc(cnt);
      IF dgtCnt<5 then
      Begin
        OutPut(Digits);
        If cnt mod 16 = 0 then
          Writeln;
      end;
    end;
  end;
end;

Begin
  cnt := 0;
  dgtCnt := 3;
  Writeln('Count of digits : ', dgtCnt,' in 100..499');
  For i := 1 to 4 do
  Begin
    Digits[0] := i;
    NextDigit(Digits,0);
  end;
  Writeln;
  Writeln('Count : ',cnt);
  Writeln;

  cnt := 0;
  dgtCnt := 10;
  Writeln('Count of digits : ', dgtCnt);
  For i := 1 to 1 do
  Begin
    Digits[0] := i;
    NextDigit(Digits,0);
  end;
  Writeln;
  Writeln('Count : ',cnt);
end.
{-------------------------------------------- 261 strange-unique-prime-triplets}
program PrimeTriplets;
//Free Pascal Compiler version 3.2.1 [2020/11/03] for x86_64fpc  3.2.1
{$IFDEF FPC}
  {$MODE DELPHI}
  {$Optimization ON,ALL}
{$ELSE}
  {$APPTYPE CONSOLE}
{$ENDIF}
const
  MAXZAHL = 100000;// > 3
  MAXSUM  = 3*MAXZAHL;

  CountOfPrimes = trunc(MAXZAHL/(ln(MAXZAHL)-1.08))+100;

type
  tChkprimes = array[0..MAXSUM] of byte;//prime == 1 , nonprime == 0
var
  Chkprimes:tChkprimes;
  primes : array[0..CountOfPrimes]of Uint32;//here starting with 3
  count,primeCount:NativeInt;

procedure InitPrimes;
//sieve of eratothenes
var
  i,j : NativeInt;
begin
  fillchar(Chkprimes,SizeOf(tChkprimes),#1);
  i := 2;
  j := 2*2;
  if j> MAXSUM then
      EXIT;
  repeat
    Chkprimes[j]:= 0;
    inc(j,i);
  until j> Maxsum;

  For i := 3 to MAXSUM do
  Begin
    if Chkprimes[i] <>0 then
    Begin
      j := i*i;
      if j> MAXSUM then
        Break;
      repeat
        Chkprimes[j]:= 0;
        inc(j,2*i);
      until j> Maxsum;
    end;
  end;

  j := 0;
  For i := 3 to MAXZAHL do
    IF Chkprimes[i]<>0 then
    Begin
      primes[j] := i;
      inc(j);
    end;
  primeCount := j-1;
  j :=CountOfPrimes -primeCount;

  IF j <0 then
  begin
    writeln(' Need more space for primes ', -j);
    HALT(-243);
  end;
end;

function GetMaxPrimeIdx(lmt:NativeInt):NativeInt;
begin
  if lmt >= Maxzahl then
  Begin
    result := primecount;
    EXIT;
  end;

  result := 0;
  while (result < primecount) AND (primes[result]<lmt) do
    inc(result);
  dec(result);
end;

procedure Out_Check(lmt:nativeInt);
//simplest version
var
  i,j,k,s,pc:   NativeInt;
Begin
  pc:= GetMaxPrimeIdx(lmt);
  count := 0;
  For i := 0 to pc do
    For j := i+1 to pc do
      For k := j+1 to pc do
      Begin
        s := primes[i]+primes[j]+Primes[k];
        //if takes the longest time
        if ChkPrimes[s]<> 0 then
        begin
          inc(count);
          writeln(count:3,': ',primes[i],'+',primes[j],'+',primes[k],' = ',s);
        end;
      end;
  writeln;
end;

procedure Count_Check(pc:nativeInt);
// the power of many registers ( 64-Bit )
var
  cnt : Uint64;
  pPrimes : pUint32;
  pChkPrimes : ^tChkprimes;
  pi,pij,i,j,k:   NativeInt;
Begin
  cnt := 0;
  pPrimes := @primes[0];
  pChkPrimes := @Chkprimes[0];
  For i := 0 to pc do
  Begin
    pi := pPrimes[i];
    For j := i+1 to pc do
    begin
      pij := pi+pPrimes[j];
      For k := j+1 to pc do
        inc(cnt,pChkPrimes^[pij+pPrimes[k]]);
    end;
  end;
  count := cnt;
end;

procedure Check_Limit(lmt:NativeInt);
Begin
  If lmt>primes[primecount] then
    lmt := MaxZahl;
  write('Limit = ',lmt,' count: ');
  Count_Check(GetMaxPrimeIdx(lmt));
  writeln(count);
end;

BEGIN
  InitPrimes;
  Out_Check(30);
  Check_Limit(100);
  Check_Limit(1000);
  Check_Limit(10000);
//Check_Limit(MAXZAHL);
END.
{------------------------------------------------------------ 262 string-append}
program StringAppend;
{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };

var
    s: String = 'Hello';
begin
  s += ' World !';
  WriteLn(S);
  ReadLn;
end.
{-------------------------------------------------------------- 263 string-case}
// Uppercase and Lowercase functions for a minimal standard Pascal
// where no library routines for these operations exist
PROGRAM upperlower;

// convert a character to uppercase
FUNCTION uch(ch: CHAR): CHAR;
	BEGIN
		uch := ch;
		IF ch IN ['a'..'z'] THEN
			uch := chr(ord(ch) AND $5F);
	END;
	
// convert a character to lowercase
FUNCTION lch(ch: CHAR): CHAR;
	BEGIN
		lch := ch;
		IF ch IN ['A'..'Z'] THEN
			lch := chr(ord(ch) OR $20);
	END;
	
// toggle uper/lower case character
FUNCTION ulch(ch: CHAR): CHAR;
	BEGIN
		ulch := ch;
		IF ch IN ['a'..'z'] THEN ulch := uch(ch);
		IF ch IN ['A'..'Z'] THEN ulch := lch(ch);
	END;
	
// convert a string to uppercase
FUNCTION ucase(str: STRING): STRING;
	var i: Integer;
	BEGIN
		ucase := '';
		FOR i := 1 TO Length(str) DO
			ucase := ucase + uch(str[i]);
	END;
	
// convert a string to lowercase
FUNCTION lcase(str: STRING): STRING;
	var i: Integer;
	BEGIN
		lcase := '';
		FOR i := 1 TO Length(str) DO
			lcase := lcase + lch(str[i]);
	END;

// reverse cases in a given string
FUNCTION ulcase(str: STRING): STRING;
	var i: Integer;
	BEGIN
		ulcase := '';
		FOR i := 1 TO Length(str) DO
			ulcase := ulcase + ulch(str[i]);
	END;

VAR
	ab : STRING = 'alphaBETA';
	
BEGIN
	// demonstration
	Writeln('Original string : ',ab);
	Writeln('Reversed case   : ',ulcase(ab));
	Writeln('Upper case      : ',ucase(ab));
	Writeln('Lower case      : ',lcase(ab));
END.
{----------------------------------------------------- 264 string-concatenation}
Program StringConcat;
  Var
     s, s1   : String;

Begin
    s := 'hello';
    writeln(s + ' literal');
    s1 := concat(s, ' literal');
    { s1 := s + ' literal'; works too, with FreePascal }
    writeln(s1);
End.
{------------------------------------------------------------ 265 string-length}
const
  s = 'abcdef';
begin
  writeln (length(s))
end.
{--------------------------------------------------- 266 strong-and-weak-primes}
program WeakPrim;
{$IFNDEF FPC}
  {$AppType CONSOLE}
{$ENDIF}
const
  PrimeLimit = 1000*1000*1000;//must be >= 2*3;
type
  tLimit = 0..(PrimeLimit-1) DIV 2;
  tPrimCnt = 0..51*1000*1000;
  tWeakStrong = record
                   strong,
                   balanced,
                   weak : NativeUint;
                end;
var
  primes: array [tLimit] of byte; //always initialized with 0 at startup
  delta : array [tPrimCnt] of byte;
  cntWS : tWeakStrong;
  deltaCnt :NativeUint;

procedure sieveprimes;
//Only odd numbers, minimal count of strikes
var
  spIdx,sieveprime,sievePos,fact :NativeUInt;
begin
  spIdx := 1;
  repeat
    if primes[spIdx]=0 then
    begin
      sieveprime := 2*spIdx+1;
      fact := PrimeLimit DIV sieveprime;
      if Not(odd(fact)) then
        dec(fact);
      IF fact < sieveprime then
        BREAK;
      sievePos := ((fact*sieveprime)-1) DIV 2;
      fact := (fact-1) DIV 2;
      repeat
        primes[sievePos] := 1;
        repeat
          dec(fact);
          dec(sievePos,sieveprime);
        until primes[fact]= 0;
      until fact < spIdx;
    end;
    inc(spIdx);
  until false;
end;
{ Not neccessary for this small primes.
procedure EmergencyStop(i:NativeInt);
Begin
  Writeln( 'STOP at ',i,'.th prime');
  HALT(i);
end;
}
function GetDeltas:NativeUint;
//Converting prime positions into distance
var
  i,j,last : NativeInt;
Begin
  j :=0;
  i := 1;
  last :=1;
  For i := 1 to High(primes) do
    if primes[i] = 0 then
    Begin
      //IF i-last > 255 {aka delta prim > 512} then  EmergencyStop (j);
      delta[j] := i-last;
      last := i;
      inc(j);
   end;
   GetDeltas := j;
end;

procedure OutHeader;
Begin
  writeln('Limit':12,'Strong':10,'balanced':12,'weak':10);
end;

procedure OutcntWS (const cntWS : tWeakStrong;Lmt:NativeInt);
Begin
  with cntWS do
    writeln(lmt:12,Strong:10,balanced:12,weak:10);
end;

procedure CntWeakStrong10(var Out:tWeakStrong);
// Output a table of values for strang/balanced/weak for 10^n
var
  idx,diff,prime,lmt :NativeInt;
begin
  OutHeader;
  lmt := 10;
  fillchar(Out,SizeOf(Out),#0);
  idx := 0;
  prime:=3;
  repeat
    dec(prime,2*delta[idx]);
    while idx < deltaCnt do
    Begin
      inc(prime,2*delta[idx]);
      IF prime > lmt then
         BREAK;

      diff := delta[idx] - delta[idx+1];
      if diff>0 then
        inc(Out.strong)
      else
        if diff< 0 then
          inc(Out.weak)
        else
          inc(Out.balanced);

      inc(idx);
    end;
    OutcntWS(Out,Lmt);
    lmt := lmt*10;
  until Lmt >  PrimeLimit;
end;

procedure WeakOut(cnt:NativeInt);
var
  idx,prime : NativeInt;
begin
  Writeln('The first ',cnt,' weak primes');
  prime:=3;
  idx := 0;
  repeat
    inc(prime,2*delta[idx]);
    if delta[idx] - delta[idx+1]< 0 then
    Begin
      write(prime,' ');
      dec(cnt);
      IF cnt <=0 then
        BREAK;
    end;
    inc(idx);
  until idx >= deltaCnt;
  Writeln;
end;

procedure StrongOut(cnt:NativeInt);
var
  idx,prime : NativeInt;
begin
  Writeln('The first ',cnt,' strong primes');
  prime:=3;
  idx := 0;
  repeat
    inc(prime,2*delta[idx]);
    if delta[idx] - delta[idx+1]> 0 then
    Begin
      write(prime,' ');
      dec(cnt);
      IF cnt <=0 then
        BREAK;
    end;
    inc(idx);
  until idx >= deltaCnt;
  Writeln;
end;

begin
  sieveprimes;
  deltaCnt := GetDeltas;

  StrongOut(36);
  WeakOut(37);
  CntWeakStrong10(CntWs);
end.
{----------------------------------------------- 267 sum-multiples-of-3-and-5-1}
program Sum3sAnd5s;

function Multiple(x, y: integer): Boolean;
  { Is X a multiple of Y? }
   begin
      Multiple := (X mod Y) = 0
   end;

function SumMultiples(n: integer): longint;
  { Return the sum of all multiples of 3 or 5. }
   var i: integer; sum: longint;
   begin
      sum := 0;
      for i := 1 to pred(n) do
         if Multiple(i, 3) or Multiple(i, 5) then
           sum := sum + i;
      SumMultiples := sum
   end;

begin
   { Show sum of all multiples less than 1000. }
   writeln(SumMultiples(1000))
end.
{----------------------------------------------- 268 sum-multiples-of-3-and-5-2}
program sum35;
//sum of all positive multiples of 3 or 5 below n

function cntSumdivisibleBelowN(n: Uint64;b:Uint64):Uint64;
var
  cnt : Uint64;
Begin
  cnt := (n-1) DIV b;
// Gauß summation formula * b
  cntSumdivisibleBelowN := (cnt*(cnt+1) DIV 2 ) *b;
end;
const
  n = 1000;

var
  sum: Uint64;
begin
  sum := cntSumdivisibleBelowN(n,3)+cntSumdivisibleBelowN(n,5);
//subtract double counted like 15
  sum := sum-cntSumdivisibleBelowN(n,3*5);
  writeln(sum);
end.
{---------------------------------------------------------- 269 sum-of-a-series}
Program SumSeries;
type
  tOutput = double;//extended;
  tmyFunc = function(number: LongInt): tOutput;

function f(number: LongInt): tOutput;
begin
  f := 1/sqr(tOutput(number));
end;

function Sum(from,upto: LongInt;func:tmyFunc):tOutput;
var
  res: tOutput;
begin
  res := 0.0;
//  for from:= from to upto do res := res + f(from);
  for upTo := upto downto from do res := res + f(upTo);
  Sum := res;
end;

BEGIN
  writeln('The sum of 1/x^2 from 1 to 1000 is: ', Sum(1,1000,@f));
  writeln('Whereas pi^2/6 is:                  ', pi*pi/6:10:8);
end.
{----------------------------------------------------- 270 sum-of-first-n-cubes}
program sumOfFirstNCubes(output);
const
	N = 49;
var
	i: integer;
	sum: integer;
begin
	sum := 0;
	for i := 0 to N do
	begin
		sum := sum + sqr(i) * i;
		{ In Extended Pascal you could also write:
		sum := sum + i pow 3; }
		writeLn(sum)
	end
end.
{--------------------------------------------------------------- 271 sum-to-100}
{ RossetaCode: Sum to 100, Pascal.

  Find solutions to the "sum to one hundred" puzzle.

  We don't use arrays, but recompute all values again and again.
  It is a little surprise that the time efficiency is quite acceptable. }

program sumto100;

const
  ADD = 0; SUB = 1; JOIN = 2; { opcodes inserted between digits }
  NEXPR = 13122;              { the total number of expressions }
var
  i, j: integer;
  loop: boolean;
  test, ntest, best, nbest, limit: integer;

  function evaluate(code: integer): integer;
  var
    k: integer;
    value, number, power: integer;
  begin
    value  := 0;
    number := 0;
    power  := 1;
    for  k := 9 downto 1 do
    begin
      number := power * k + number;
      case code mod 3 of
        ADD: begin value := value + number; number := 0; power := 1; end;
        SUB: begin value := value - number; number := 0; power := 1; end;
        JOIN:                                            power := power * 10
      end;
      code := code div 3
    end;
    evaluate := value
  end;

  procedure print(code: integer);
  var
    k: integer;
    a, b: integer;
  begin
    a := 19683;
    b := 6561;
    write( evaluate(code):9 );
    write(' = ');
    for  k := 1 to 9 do
    begin
      case ((code mod a) div b) of
        ADD: if k > 1 then write('+');
        SUB: { always }    write('-');
      end;
      a := b;
      b := b div 3;
      write( k:1 )
    end;
    writeln
  end;

begin
  writeln;
  writeln('Show all solutions that sum to 100');
  writeln;
  for i := 0 to NEXPR - 1 do
    if evaluate(i) = 100 then
      print(i);

  writeln;
  writeln('Show the sum that has the maximum number of solutions');
  writeln;
  nbest := (-1);
  for i := 0 to NEXPR - 1 do
  begin
    test := evaluate(i);
    if test > 0 then
    begin
      ntest := 0;
      for j := 0 to NEXPR - 1 do
        if evaluate(j) = test then
          ntest := ntest + 1;
      if ntest > nbest then
      begin
        best := test;
        nbest := ntest;
      end
    end
  end;
  writeln(best, ' has ', nbest, ' solutions');

  writeln;
  writeln('Show the lowest positive number that can''t be expressed');
  writeln;
  i := 0;
  loop := TRUE;
  while (i <= 123456789) and loop do
  begin
    j := 0;
    while (j < NEXPR - 1) and (i <> evaluate(j)) do
      j := j + 1;
    if i <> evaluate(j) then
      loop := FALSE
    else
      i := i + 1;
  end;
  writeln(i);

  writeln;
  writeln('Show the ten highest numbers that can be expressed');
  writeln;
  limit := 123456789 + 1;
  for i := 1 to 10 do
  begin
    best := 0;
    for j := 0 to NEXPR - 1 do
    begin
      test := evaluate(j);
      if (test < limit) and (test > best) then
        best := test;
    end;
    for j := 0 to NEXPR - 1 do
      if evaluate(j) = best then
        print(j);
    limit := best;
  end
end.
{--------------------------------------------------- 272 symmetric-difference-1}
PROGRAM Symmetric_difference;

TYPE
  TName = (Bob, Jim, John, Mary, Serena);
  TList = SET OF TName;

PROCEDURE Put(txt : String; ResSet : TList);
VAR
  I : TName;

BEGIN
  Write(txt);
  FOR I IN ResSet DO Write(I,' ');
  WriteLn
END;

VAR
  ListA : TList = [John, Bob, Mary, Serena];
  ListB : TList = [Jim, Mary, John, Bob];

BEGIN
  Put('ListA          -> ', ListA);
  Put('ListB          -> ', ListB);
  Put('ListA >< ListB -> ', (ListA - ListB) + (ListB - ListA));
  Put('ListA -  ListB -> ', ListA -  ListB);
  Put('ListB -  ListA -> ', ListB -  ListA);
  ReadLn;
END.
{--------------------------------------------------- 273 symmetric-difference-2}
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
{------------------------------------------- 274 take-notes-on-the-command-line}
{$mode delphi}
PROGRAM notes;
// Notes: a time-stamped command line notebook
// usage: >notes "note"< or >notes< to display contents
USES Classes, SysUtils;

VAR
	Note  : TStringList;
	Fname : STRING = 'Notes.txt';
	Dtime : STRING;
	Ntext : STRING;
	c     : Cardinal;
	
BEGIN
	DTime := FormatDateTime('YYYY-MM-DD-hhnn',Now);
	Note  := TStringList.Create;
	WITH Note DO BEGIN
		TRY
			LoadFromFile(Fname);
		EXCEPT
			Add(DTime);
			NText := 'Notes.txt created.';
		END;
		// command line args present:
		// add note with date & time
		IF ParamStr(1) <> '' THEN BEGIN
			NText := ParamStr(1);
			Add(DTime);
			Add(NText);
			SaveToFile(Fname);
		// command line args absent:
		// display contents of notebook
		END ELSE
			FOR c := 0 TO Count-1 DO
				Writeln(Note[c]);
		Free;
	END;
END.
{---------------------------------------------------------- 275 taxicab-numbers}
program taxiCabNo;
uses
  sysutils;
type
  tPot3    = Uint32;
  tPot3Sol = record
               p3Sum : tPot3;
               i1,j1,
               i2,j2 : Word;
             end;
 tpPot3    = ^tPot3;
 tpPot3Sol = ^tPot3Sol;

var
//1290^3 = 2'146'689'000 < 2^31-1
//1190 is the magic number of the task ;-)
  pot3 : array[0..1190{1290}] of tPot3;//
  AllSol : array[0..3000] of tpot3Sol;
  AllSolHigh : NativeInt;

procedure SolOut(const s:tpot3Sol;no: NativeInt);
begin
  with s do
    writeln(no:5,p3Sum:12,' = ',j1:5,'^3 +',i1:5,'^3 =',j2:5,'^3 +',i2:5,'^3');
end;

procedure InsertAllSol;

var
  tmp: tpot3Sol;
  p :tpPot3Sol;
  p3Sum: tPot3;
  i: NativeInt;
Begin

  i := AllSolHigh;
  IF i > 0 then
  Begin
    p := @AllSol[i];
    tmp := p^;
    p3Sum := p^.p3Sum;
    //search the right place for insertion
    repeat
      dec(i);
      dec(p);
      IF (p^.p3Sum <= p3Sum) then
        BREAK;
    until  (i<=0);
    IF p^.p3Sum = p3Sum then
      EXIT;
    //free the right place by moving one place up
    inc(i);
    inc(p);
    IF i<AllSolHigh then
    Begin
      move(p^,AllSol[i+1],SizeOf(AllSol[0])*(AllSolHigh-i));
      p^ := tmp;
    end;
  end;
  inc(AllSolHigh);
end;

function searchSameSum(var sol:tpot3Sol):boolean;
//try to find a new combination for the same sum
//within the limits given by lo and hi
var
  Sum,
  SumLo: tPot3;
  hi,lo: NativeInt;
Begin
  with Sol do
  Begin
    Sum := p3Sum;
    lo:= i1;
    hi:= j1;
  end;

  repeat
    //Move hi down
    dec(hi);
    SumLo := Sum-Pot3[hi];
    //Move lo up an check until new combination found or implicite lo> hi
    repeat
      inc(lo)
    until (SumLo<=Pot3[lo]);
    //found?
    IF SumLo = Pot3[lo] then
      BREAK;
  until lo>=hi;

  IF lo<hi then
  Begin
    sol.i2:= lo;
    sol.j2:= hi;
    searchSameSum := true;
  end
  else
    searchSameSum := false;
end;

procedure Search;
var
  i,j: LongInt;
Begin
  AllSolHigh := 0;
  For j := 2 to High(pot3)-1 do
  Begin
    For i := 1 to j-1 do
    Begin
      with AllSol[AllSolHigh] do
      Begin
        p3Sum:= pot3[i]+pot3[j];
        i1:= i;
        j1:= j;
      end;
      IF searchSameSum(AllSol[AllSolHigh]) then
      BEGIN
        InsertAllSol;
        IF AllSolHigh>High(AllSol) then EXIT;
      end;
    end;
  end;
end;

var
  i: LongInt;
Begin
  For i := Low(pot3) to High(pot3) do
    pot3[i] := i*i*i;
  AllSolHigh := 0;
  Search;
  For i :=    0 to   24 do SolOut(AllSol[i],i+1);
  For i := 1999 to 2005 do SolOut(AllSol[i],i+1);
  writeln('count of solutions         ',AllSolHigh);
end.
{--------------------------------------------------- 276 temperature-conversion}
program TemperatureConvert;

type
    TemperatureType = (C, F, K, R);

var
    kelvin: real;

    function ConvertTemperature(temperature: real; fromType, toType: TemperatureType): real;

    var
        initial, result: real;

    begin
        (* We are going to first convert whatever we're given into Celsius.
           Then we'll convert that into whatever we're asked to convert into.
           Maybe not the most efficient way to do this, but easy to understand
           and should make it easier to add any additional temperature units. *)
        if fromType <> toType then
            begin
                case fromType of (* first convert the temperature into Celsius *)
                    C:
                        initial := temperature;
                    F:
                        initial := (temperature - 32) / 1.8;
                    K:
                        initial := temperature - 273.15;
                    R:
                        initial := (temperature - 491.67) / 1.8;
                end;
                case toType of (* now convert from Celsius into whatever degree type was asked for *)
                    C:
                        result := initial;
                    F:
                        result := (initial * 1.8) + 32;
                    K:
                        result := initial + 273.15;
                    R:
                        result := (initial * 1.8) + 491.67;
                end;
            end
        else (* no point doing all that math if we're asked to convert from and to the same type *)
            result := temperature;
        ConvertTemperature := result;
    end;

begin
    write('Temperature to convert (in kelvins): ');
    readln(kelvin);
    writeln(kelvin : 3 : 2, ' in kelvins is ');
    writeln('    ', ConvertTemperature(kelvin, K, C) : 3 : 2, ' in degrees Celsius.');
    writeln('    ', ConvertTemperature(kelvin, K, F) : 3 : 2, ' in degrees Fahrenheit.');
    writeln('    ', ConvertTemperature(kelvin, K, R) : 3 : 2, ' in degrees Rankine.');
end.
{------------------------------------------- 277 terminal-control-coloured-text}
program Colorizer;

uses CRT;

const SampleText = 'Lorem ipsum dolor sit amet';

var fg, bg: 0..15;

begin
    ClrScr;
    for fg := 0 to 7 do begin
        bg := 15 - fg;
        TextBackground(bg);
        TextColor(fg);
        writeln(SampleText)
    end;
    TextBackground(White);
    TextColor(Black);
end.
{-------------------------------------- 278 terminal-control-cursor-positioning}
program cursor_pos;
uses crt;
begin
  gotoxy(6,3);
  write('Hello');
end.
{--------------------------- 279 terminal-control-display-an-extended-character}
program pound;
uses crt;
begin
  write(chr( 163 ));
end.
{------------------------------------------------------------ 280 ternary-logic}
Program TernaryLogic (output);

type
  trit = (terTrue, terMayBe, terFalse);

function terNot (a: trit): trit;
  begin
    case a of
      terTrue:  terNot := terFalse;
      terMayBe: terNot := terMayBe;
      terFalse: terNot := terTrue;
    end;
  end;

function terAnd (a, b: trit): trit;
  begin
    terAnd := terMayBe;
    if (a = terFalse) or (b = terFalse) then
      terAnd := terFalse
    else
      if (a = terTrue) and (b = terTrue) then
        terAnd := terTrue;
  end;

function terOr (a, b: trit): trit;
  begin
    terOr := terMayBe;
    if (a = terTrue) or (b = terTrue) then
      terOr := terTrue
    else
      if (a = terFalse) and (b = terFalse) then
        terOr := terFalse;
  end;

function terEquals (a, b: trit): trit;
  begin
    if a = b then
      terEquals := terTrue
    else
      if a <> b then
        terEquals := terFalse;
    if (a = terMayBe) or (b = terMayBe) then
      terEquals := terMayBe;
  end;

function terIfThen (a, b: trit): trit;
  begin
    terIfThen := terMayBe;
    if (a = terTrue) or (b = terFalse)  then
      terIfThen := terTrue
    else
      if (a = terFalse) and (b = terTrue) then
        terIfThen := terFalse;
  end;

function terToStr(a: trit): string;
  begin
    case a of
      terTrue:  terToStr := 'True ';
      terMayBe: terToStr := 'Maybe';
      terFalse: terToStr := 'False';
    end;
  end;

begin
  writeln('Ternary logic test:');
  writeln;
  writeln('NOT ', ' True ', ' Maybe', ' False');
  writeln('     ', terToStr(terNot(terTrue)), ' ', terToStr(terNot(terMayBe)), ' ', terToStr(terNot(terFalse)));
  writeln;
  writeln('AND   ', ' True ', ' Maybe', ' False');
  writeln('True   ', terToStr(terAnd(terTrue,terTrue)),  ' ', terToStr(terAnd(terMayBe,terTrue)),  ' ', terToStr(terAnd(terFalse,terTrue)));
  writeln('Maybe  ', terToStr(terAnd(terTrue,terMayBe)), ' ', terToStr(terAnd(terMayBe,terMayBe)), ' ', terToStr(terAnd(terFalse,terMayBe)));
  writeln('False  ', terToStr(terAnd(terTrue,terFalse)), ' ', terToStr(terAnd(terMayBe,terFalse)), ' ', terToStr(terAnd(terFalse,terFalse)));
  writeln;
  writeln('OR    ', ' True ', ' Maybe', ' False');
  writeln('True   ', terToStr(terOR(terTrue,terTrue)),  ' ', terToStr(terOR(terMayBe,terTrue)),  ' ', terToStr(terOR(terFalse,terTrue)));
  writeln('Maybe  ', terToStr(terOR(terTrue,terMayBe)), ' ', terToStr(terOR(terMayBe,terMayBe)), ' ', terToStr(terOR(terFalse,terMayBe)));
  writeln('False  ', terToStr(terOR(terTrue,terFalse)), ' ', terToStr(terOR(terMayBe,terFalse)), ' ', terToStr(terOR(terFalse,terFalse)));
  writeln;
  writeln('IFTHEN', ' True ', ' Maybe', ' False');
  writeln('True   ', terToStr(terIfThen(terTrue,terTrue)),  ' ', terToStr(terIfThen(terMayBe,terTrue)),  ' ', terToStr(terIfThen(terFalse,terTrue)));
  writeln('Maybe  ', terToStr(terIfThen(terTrue,terMayBe)), ' ', terToStr(terIfThen(terMayBe,terMayBe)), ' ', terToStr(terIfThen(terFalse,terMayBe)));
  writeln('False  ', terToStr(terIfThen(terTrue,terFalse)), ' ', terToStr(terIfThen(terMayBe,terFalse)), ' ', terToStr(terIfThen(terFalse,terFalse)));
  writeln;
  writeln('EQUAL ', ' True ', ' Maybe', ' False');
  writeln('True   ', terToStr(terEquals(terTrue,terTrue)),  ' ', terToStr(terEquals(terMayBe,terTrue)),  ' ', terToStr(terEquals(terFalse,terTrue)));
  writeln('Maybe  ', terToStr(terEquals(terTrue,terMayBe)), ' ', terToStr(terEquals(terMayBe,terMayBe)), ' ', terToStr(terEquals(terFalse,terMayBe)));
  writeln('False  ', terToStr(terEquals(terTrue,terFalse)), ' ', terToStr(terEquals(terMayBe,terFalse)), ' ', terToStr(terEquals(terFalse,terFalse)));
  writeln;
end.
{--------------------------------------------------------- 281 the-isaac-cipher}
PROGRAM RosettaIsaac;
USES
  StrUtils;

TYPE
  iMode = (iEncrypt, iDecrypt);

// TASK globals
VAR
  msg : String = 'a Top Secret secret';
  key : String = 'this is my secret key';
  xctx: String = ''; // XOR ciphertext
  mctx: String = ''; // MOD ciphertext
  xptx: String = ''; // XOR decryption (plaintext)
  mptx: String = ''; // MOD decryption (plaintext)

// ISAAC globals
VAR
  // external results
  randrsl: ARRAY[0 .. 255] OF Cardinal;
  randcnt: Cardinal;

  // internal state
  mm: ARRAY[0 .. 255] OF Cardinal;
  aa: Cardinal = 0;
  bb: Cardinal = 0;
  cc: Cardinal = 0;

PROCEDURE Isaac;
VAR
  i, x, y: Cardinal;
BEGIN
  cc := cc + 1; // cc just gets incremented once per 256 results
  bb := bb + cc; // then combined with bb

  FOR i := 0 TO 255 DO
  BEGIN
    x := mm[i];
    CASE (i MOD 4) OF
      0: aa := aa XOR (aa SHL 13);
      1: aa := aa XOR (aa SHR 6);
      2: aa := aa XOR (aa SHL 2);
      3: aa := aa XOR (aa SHR 16);
    END;
    aa := mm[(i + 128) MOD 256] + aa;
    y  := mm[(x SHR 2) MOD 256] + aa + bb;
    mm[i] := y;
    bb := mm[(y SHR 10) MOD 256] + x;
    randrsl[i] := bb;
  END;
  randcnt := 0; // prepare to use the first set of results
END; // Isaac

PROCEDURE Mix(VAR a, b, c, d, e, f, g, h: Cardinal);
BEGIN
  a := a XOR b SHL 11; d := d + a; b := b + c;
  b := b XOR c SHR  2; e := e + b; c := c + d;
  c := c XOR d SHL  8; f := f + c; d := d + e;
  d := d XOR e SHR 16; g := g + d; e := e + f;
  e := e XOR f SHL 10; h := h + e; f := f + g;
  f := f XOR g SHR  4; a := a + f; g := g + h;
  g := g XOR h SHL  8; b := b + g; h := h + a;
  h := h XOR a SHR  9; c := c + h; a := a + b;
END; // Mix

PROCEDURE iRandInit(flag: Boolean);
VAR
  i, a, b, c, d, e, f, g, h: Cardinal;
BEGIN
  aa := 0; bb := 0; cc := 0;
  a := $9e3779b9; // the golden ratio
  b := a; c := a; d := a; e := a; f := a; g := a; h := a;

  FOR i := 0 TO 3 DO // scramble it
    Mix(a, b, c, d, e, f, g, h);

  i := 0;
  REPEAT // fill in mm[] with messy stuff
    IF flag THEN
    BEGIN // use all the information in the seed
      a += randrsl[i    ]; b += randrsl[i + 1];
      c += randrsl[i + 2]; d += randrsl[i + 3];
      e += randrsl[i + 4]; f += randrsl[i + 5];
      g += randrsl[i + 6]; h += randrsl[i + 7];
    END;

    Mix(a, b, c, d, e, f, g, h);
    mm[i    ] := a; mm[i + 1] := b; mm[i + 2] := c; mm[i + 3] := d;
    mm[i + 4] := e; mm[i + 5] := f; mm[i + 6] := g; mm[i + 7] := h;
    i += 8;
  UNTIL i > 255;

  IF flag THEN
  BEGIN
    // do a second pass to make all of the seed affect all of mm
    i := 0;
    REPEAT
      a += mm[i    ]; b += mm[i + 1]; c += mm[i + 2]; d += mm[i + 3];
      e += mm[i + 4]; f += mm[i + 5]; g += mm[i + 6]; h += mm[i + 7];
      Mix(a, b, c, d, e, f, g, h);
      mm[i    ] := a; mm[i + 1] := b; mm[i + 2] := c; mm[i + 3] := d;
      mm[i + 4] := e; mm[i + 5] := f; mm[i + 6] := g; mm[i + 7] := h;
      i += 8;
    UNTIL i > 255;
  END;
  Isaac(); // fill in the first set of results
  randcnt := 0; // prepare to use the first set of results
END; // iRandInit

// Seed ISAAC with a given string.
// The string can be any size. The first 256 values will be used.
PROCEDURE iSeed(seed: String; flag: Boolean);
VAR
  i, m: Cardinal;
BEGIN
  FOR i := 0 TO 255 DO
    mm[i] := 0;
  m := Length(seed) - 1;
  FOR i := 0 TO 255 DO
  BEGIN
    // in case seed has less than 256 elements
    IF i > m THEN
      randrsl[i] := 0
      // Pascal strings are 1-based
    ELSE
      randrsl[i] := Ord(seed[i + 1]);
  END;
  // initialize ISAAC with seed
  iRandInit(flag);
END; // iSeed

// Get a random 32-bit value 0..MAXINT
FUNCTION iRandom: Cardinal;
BEGIN
  iRandom := randrsl[randcnt];
  inc(randcnt);
  IF (randcnt > 255) THEN
  BEGIN
    Isaac;
    randcnt := 0;
  END;
END; // iRandom

// Get a random character in printable ASCII range
FUNCTION iRandA: Byte;
BEGIN
  iRandA := iRandom MOD 95 + 32;
END;

// Convert an ASCII string to a hexadecimal string
FUNCTION Ascii2Hex(s: String): String;
VAR
  i: Cardinal;
BEGIN
  Ascii2Hex := '';
  FOR i := 1 TO Length(s) DO
    Ascii2Hex += Dec2Numb(Ord(s[i]), 2, 16);
END; // Ascii2Hex

// XOR encrypt on random stream. Output: ASCII string
FUNCTION Vernam(msg: String): String;
VAR
  i: Cardinal;
BEGIN
  Vernam := '';
  FOR i := 1 to Length(msg) DO
    Vernam += Chr(iRandA XOR Ord(msg[i]));
END; // Vernam

// Get position of the letter in chosen alphabet
FUNCTION LetterNum(letter, start: Char): Byte;
BEGIN
  LetterNum := (Ord(letter) - Ord(start));
END; // LetterNum

// Caesar-shift a character <shift> places: Generalized Vigenere
FUNCTION Caesar(m: iMode; ch: Char; shift, modulo: Integer; start: Char): Char;
VAR
  n: Integer;
BEGIN
  IF m = iDecrypt THEN
    shift := -shift;
  n := LetterNum(ch, start) + shift;
  n := n MOD modulo;
  IF n < 0 THEN
    n += modulo;
  Caesar := Chr(Ord(start) + n);
END; // Caesar

// Vigenere MOD 95 encryption & decryption. Output: ASCII string
FUNCTION Vigenere(msg: String; m: iMode): String;
VAR
  i: Cardinal;
BEGIN
  Vigenere := '';
  FOR i := 1 to Length(msg) DO
    Vigenere += Caesar(m, msg[i], iRandA, 95, ' ');
END; // Vigenere

BEGIN
  // 1) seed ISAAC with the key
  iSeed(key, true);
  // 2) Encryption
  // a) XOR (Vernam)
  xctx := Vernam(msg);
  // b) MOD (Vigenere)
  mctx := Vigenere(msg, iEncrypt);
  // 3) Decryption
  iSeed(key, true);
  // a) XOR (Vernam)
  xptx := Vernam(xctx);
  // b) MOD (Vigenere)
  mptx := Vigenere(mctx, iDecrypt);
  // program output
  Writeln('Message: ', msg);
  Writeln('Key    : ', key);
  Writeln('XOR    : ', Ascii2Hex(xctx));
  Writeln('MOD    : ', Ascii2Hex(mctx));
  Writeln('XOR dcr: ', xptx);
  Writeln('MOD dcr: ', mptx);
END.
{------------------------------------------- 282 the-twelve-days-of-christmas-1}
program twelve_days(output);

const
  days:  array[1..12] of string =
    ( 'first',   'second', 'third', 'fourth', 'fifth',    'sixth',
      'seventh', 'eighth', 'ninth', 'tenth',  'eleventh', 'twelfth' );

  gifts: array[1..12] of string =
    ( 'A partridge in a pear tree.',
      'Two turtle doves and',
      'Three French hens,',
      'Four calling birds,',
      'Five gold rings,',
      'Six geese a-laying,',
      'Seven swans a-swimming,',
      'Eight maids a-milking,',
      'Nine ladies dancing,',
      'Ten lords a-leaping,',
      'Eleven pipers piping,',
      'Twelve drummers drumming,' );

var
   day, gift: integer;

begin
   for day := 1 to 12 do begin
     writeln('On the ', days[day], ' day of Christmas, my true love sent to me:');
     for gift := day downto 1 do
       writeln(gifts[gift]);
     writeln
   end
end.
{------------------------------------------- 283 the-twelve-days-of-christmas-2}
program twelve_days_iso(output);

const
  days:  array[1..12, 1..8] of char =
    ( 'first   ', 'second  ', 'third   ', 'fourth  ',
      'fifth   ', 'sixth   ', 'seventh ', 'eighth  ',
      'ninth   ', 'tenth   ', 'eleventh', 'twelfth ' );

  gifts: array[1..12, 1..27] of char =
    ( 'A partridge in a pear tree.',
      'Two turtle doves and       ',
      'Three French hens,         ',
      'Four calling birds,        ',
      'Five gold rings,           ',
      'Six geese a-laying,        ',
      'Seven swans a-swimming,    ',
      'Eight maids a-milking,     ',
      'Nine ladies dancing,       ',
      'Ten lords a-leaping,       ',
      'Eleven pipers piping,      ',
      'Twelve drummers drumming,  ' );

var
   day, gift: integer;

begin
   for day := 1 to 12 do begin
     writeln('On the ', days[day], ' day of Christmas, my true love gave to me:');
     for gift := day downto 1 do
       writeln(gifts[gift]);
     writeln
   end
end.
{--------------------------------------------------------------- 284 thue-morse}
Program ThueMorse;

function fThueMorse(maxLen: NativeInt):AnsiString;
//double by appending the flipped original 0 -> 1;1 -> 0
//Flipping between two values:x oszillating A,B,A,B -> x_next = A+B-x
//Beware A+B < High(Char), the compiler will complain ...
const
  cVal0 = '^';cVal1 = 'v';//  cVal0 = '0';cVal1 = '1';

var
  pOrg,
  pRpl : pansiChar;
  i,k,ml : NativeUInt;//MaxLen: NativeInt
Begin
  iF maxlen < 1 then
  Begin
    result := '';
    EXIT;
  end;
  //setlength only one time
  setlength(result,Maxlen);

  pOrg := @result[1];
  pOrg[0] := cVal0;
  IF maxlen = 1 then
    EXIT;

  pRpl := pOrg;
  inc(pRpl);
  k := 1;
  ml:= Maxlen;
  repeat
    i := 0;
    repeat
      pRpl[0] := ansichar(Ord(cVal0)+Ord(cVal1)-Ord(pOrg[i]));
      inc(pRpl);
      inc(i);
    until i>=k;
    inc(k,k);
  until k+k> ml;
  // the rest
  i := 0;
  k := ml-k;
  IF k > 0 then
    repeat
      pRpl[0] := ansichar(Ord(cVal0)+Ord(cVal1)-Ord(pOrg[i]));
      inc(pRpl);
      inc(i)
    until i>=k;
end;

var
 i : integer;
Begin
  For i := 0 to 8 do
    writeln(i:3,'  ',fThueMorse(i));
  fThueMorse(1 shl 30);
  {$IFNDEF LINUX}readln;{$ENDIF}
end.
{-------------------------------------------------------------- 285 tic-tac-toe}
program Tic(Input, Output);

type
  Contents = (Unassigned, Human, Computer);
var
  BestI, BestJ: integer; { best solution a depth of zero in the search }
  B: array[0..2, 0..2] of Contents;  {zero based so modulus works later}
  Player: Contents;

  procedure DisplayBoard;
  var
    I, J: integer;
    T: array [Contents] of char;
  begin
    T[Unassigned] := ' ';
    T[Human] := 'O';
    T[Computer] := 'X';
    for I := 0 to 2 do
    begin
      for J := 0 to 2 do
      begin
        Write(T[B[I, J]]);
        if J <> 2 then
          Write(' | ');
      end;
      WriteLn;
      if I < 2 then
        WriteLn('---------');
    end;
    WriteLn;
    WriteLn;
  end;

  function SwapPlayer(Player: Contents): Contents;
  begin
    if Player = Computer then
      SwapPlayer := Human
    else
      SwapPlayer := Computer;
  end;

  function CheckWinner: Contents;
  var
    I: integer;
  begin
    CheckWinner := Unassigned; { no winner yet }
    for I := 0 to 2 do
    begin
      { first horizontal solution }
      if (CheckWinner = Unassigned) and (B[I, 0] <> Unassigned) and
        (B[I, 1] = B[I, 0]) and (B[I, 2] = B[I, 0]) then
        CheckWinner := B[I, 0]
      else
      { now vertical solution }
      if (CheckWinner = Unassigned) and (B[0, I] <> Unassigned) and
        (B[1, I] = B[0, I]) and (B[2, I] = B[0, I]) then
        CheckWinner := B[0, I];
    end;
    { now check the paths of the two cross line slants that share the middle position }
    if (CheckWinner = Unassigned) and (B[1, 1] <> Unassigned) then
    begin
      if (B[1, 1] = B[0, 0]) and (B[2, 2] = B[0, 0]) then
        CheckWinner := B[0, 0]
      else if (B[1, 1] = B[2, 0]) and (B[0, 2] = B[1, 1]) then
        CheckWinner := B[1, 1];
    end;
  end;

  { Basic strategy test - is this te best solution we have seen }
  function SaveBest(CurScore, CurBest: Contents): boolean;
  begin
    if CurScore = CurBest then
      SaveBest := False
    else if (CurScore = Unassigned) and (CurBest = Human) then
      SaveBest := False
    else if (CurScore = Computer) and ((CurBest = Unassigned) or
      (CurBest = Human)) then
      SaveBest := False
    else
      SaveBest := True;
  end;


  { Basic strategy - recursive depth first search of possible moves
  if computer can win save it, otherwise block if need be, else do deeper.
  At each level modify the board for the next call, but clean up as go back up,
  by remembering the modified position on the call stack. }
  function TestMove(Val: Contents; Depth: integer): Contents;
  var
    I, J: integer;
    Score, Best, Changed: Contents;
  begin
    Best := Computer;
    Changed := Unassigned;
    Score := CheckWinner;
    if Score <> Unassigned then
    begin
      if Score = Val then
        TestMove := Human
      else
        TestMove := Computer;
    end
    else
    begin
      for I := 0 to 2 do
        for J := 0 to 2 do
        begin
          if B[I, J] = Unassigned then
          begin
            Changed := Val;
            B[I, J] := Val;
            { the value for now and try wioth the other player }
            Score := TestMove(SwapPlayer(Val), Depth + 1);
            if Score <> Unassigned then
              Score := SwapPlayer(Score);
            B[I, J] := Unassigned;
            if SaveBest(Score, Best) then
            begin
              if Depth = 0 then
              begin { top level, so remember actual position }
                BestI := I;
                BestJ := J;
              end;
              Best := Score;
            end;
          end;
        end;
      if Changed <> Unassigned then
        TestMove := Best
      else
        TestMove := Unassigned;
    end;
  end;

  function PlayGame(Whom: Contents): string;
  var
    I, J, K, Move: integer;
    Win: Contents;
  begin
    Win := Unassigned;
    for I := 0 to 2 do
      for J := 0 to 2 do
        B[I, J] := Unassigned;
    WriteLn('The board positions are numbered as follows:');
    WriteLn('1 | 2 | 3');
    WriteLn('---------');
    WriteLn('4 | 5 | 6');
    WriteLn('---------');
    WriteLn('7 | 8 | 9');
    WriteLn('You have O, I have X.');
    WriteLn;
    K := 1;
    repeat {rather a for loop but can not have two actions or early termination in Pascal}
      if Whom = Human then
      begin
        repeat
          Write('Your move: ');
          ReadLn(Move);
          if (Move < 1) or (Move > 9) then
            WriteLn('Opps: enter a number between 1 - 9.');
          Dec(Move);
          {humans do 1 -9, but the computer wants 0-8 for modulus to work}
          I := Move div 3; { convert from range to corridinated of the array }
          J := Move mod 3;
          if B[I, J] <> Unassigned then
            WriteLn('Opps: move ', Move + 1, ' was already done.')
        until (Move >= 0) and (Move <= 8) and (B[I, J] = Unassigned);
        B[I, J] := Human;
      end;
      if Whom = Computer then
      begin
        { randomize if computer opens, so its not always the same game }
        if K = 1 then
        begin
          BestI := Random(3);
          BestJ := Random(3);
        end
        else
          Win := TestMove(Computer, 0);
        B[BestI, BestJ] := Computer;
        WriteLn('My move: ', BestI * 3 + BestJ + 1);
      end;
      DisplayBoard;
      Win := CheckWinner;
      if Win <> Unassigned then
      begin
        if Win = Human then
          PlayGame := 'You win.'
        else
          PlayGame := 'I win.';
      end
      else
      begin
        Inc(K); { "for" loop counter actions }
        Whom := SwapPlayer(Whom);
      end;
    until (Win <> Unassigned) or (K > 9);
    if Win = Unassigned then
      PlayGame := 'A draw.';
  end;

begin
  Randomize;
  Player := Human;
  while True do
  begin
    WriteLn(PlayGame(Player));
    WriteLn;
    Player := SwapPlayer(Player);
  end
end.
{-------------------------------------------------------- 286 tokenize-a-string}
program TokenizeString;

{$mode objfpc}{$H+}

uses
  SysUtils, Classes;
const
  TestString = 'Hello,How,Are,You,Today';
var
  Tokens: TStringList;
  I: Integer;
begin
  // Uses FCL facilities, "harder" algorithm not implemented
  Tokens := TStringList.Create;
  try
    Tokens.Delimiter := ',';
    Tokens.DelimitedText := TestString;
    Tokens.Delimiter := '.'; // For example
    // To standard Output
    WriteLn(Format('Tokenize from: "%s"', [TestString]));
    WriteLn(Format('to:            "%s"',[Tokens.DelimitedText]));
  finally
    Tokens.Free;
  end;
end.
{------------------------------------------------------- 287 top-rank-per-group}
program TopRankPerGroup(output);

uses
  Classes, Math;

type
  TData = record
            name:   string;
        ID:     string;
        salary: longint;
        dept:   string
      end;
  PTData = ^TData;

const
  data: array [1..13] of TData =
    ( (name: 'Tyler Bennett';   ID: 'E10297'; salary: 32000; dept: 'D101'),
      (name: 'John Rappl';      ID: 'E21437'; salary: 47000; dept: 'D050'),
      (name: 'George Woltman';  ID: 'E00127'; salary: 53500; dept: 'D101'),
      (name: 'Adam Smith';      ID: 'E63535'; salary: 18000; dept: 'D202'),
      (name: 'Claire Buckman';  ID: 'E39876'; salary: 27800; dept: 'D202'),
      (name: 'David McClellan'; ID: 'E04242'; salary: 41500; dept: 'D101'),
      (name: 'Rich Holcomb';    ID: 'E01234'; salary: 49500; dept: 'D202'),
      (name: 'Nathan Adams';    ID: 'E41298'; salary: 21900; dept: 'D050'),
      (name: 'Richard Potter';  ID: 'E43128'; salary: 15900; dept: 'D101'),
      (name: 'David Motsinger'; ID: 'E27002'; salary: 19250; dept: 'D202'),
      (name: 'Tim Sampair';     ID: 'E03033'; salary: 27000; dept: 'D101'),
      (name: 'Kim Arlich';      ID: 'E10001'; salary: 57000; dept: 'D190'),
      (name: 'Timothy Grove';   ID: 'E16398'; salary: 29900; dept: 'D190')
    );

function CompareSalary(Item1, Item2: PTData): longint;
  begin
    CompareSalary := Item2^.salary - Item1^.salary;
  end;

var
  depts   : TStringList;
  deptList: Tlist;
  number, i, j: integer;

begin
  write ('Enter the number of ranks: ');
  readln (number);
  depts := TStringList.Create;
  depts.Sorted := true;
  depts.Duplicates := dupIgnore;
  for i := low(data) to high(data) do
    depts.Add(data[i].dept);

  for i := 0 to depts.Count - 1 do
  begin
    writeln;
    writeln('Department: ', depts.Strings[i]);
    deptList := TList.Create;
    for j := low(data) to high(data) do
      if data[j].dept = depts.Strings[i] then
        deptList.Add(@data[j]);
    deptList.Sort(TListSortCompare(@CompareSalary));
    for j := 0 to min(deptList.count, number) - 1 do
    begin
      write (PTData(deptList.Items[j])^.name, ', ');
      write ('ID: ', PTData(deptList.Items[j])^.ID, ', ');
      write ('Salary: ', PTData(deptList.Items[j])^.Salary);
      writeln;
    end;
    deptList.Destroy;
  end;
end.
{------------------------------------------------------- 288 topological-sort-1}
program ToposortTask;
{$mode delphi}
uses
  SysUtils, Generics.Collections;

type
  TAdjList = class
    InList,                    // incoming arcs
    OutList: THashSet<string>; // outcoming arcs
    constructor Create;
    destructor Destroy; override;
  end;

  TDigraph = class(TObjectDictionary<string, TAdjList>)
    procedure AddNode(const s: string);
    procedure AddArc(const s, t: string);
    function  AdjList(const s: string): TAdjList;
  { returns True and the sorted sequence of nodes in aOutSeq if is acyclic,
    otherwise returns False and nil; uses Kahn's algorithm }
    function  TryToposort(out aOutSeq: TStringArray): Boolean;
  end;


constructor TAdjList.Create;
begin
  InList := THashSet<string>.Create;
  OutList := THashSet<string>.Create;
end;

destructor TAdjList.Destroy;
begin
  InList.Free;
  OutList.Free;
  inherited;
end;

procedure TDigraph.AddNode(const s: string);
begin
  if not ContainsKey(s) then
    Add(s, TAdjList.Create);
end;

procedure TDigraph.AddArc(const s, t: string);
begin
  AddNode(s);
  AddNode(t);
  if s <> t then begin
    Items[s].OutList.Add(t);
    Items[t].InList.Add(s);
  end;
end;

function TDigraph.AdjList(const s: string): TAdjList;
begin
  if not TryGetValue(s, Result) then
    Result := nil;
end;

function TDigraph.TryToposort(out aOutSeq: TStringArray): Boolean;
var
  q: TQueue<string>;
  p: TPair<string, TAdjList>;
  Node, ToRemove: string;
  Counter: SizeInt;
begin
  q := TQueue<string>.Create;
  SetLength(aOutSeq, Count);
  Counter := Pred(Count);
  for p in Self do
    if p.Value.InList.Count = 0 then
      q.Enqueue(p.Key);
  while q.Count > 0 do begin
    ToRemove := q.Dequeue;
    for Node in Items[ToRemove].OutList do
      with Items[Node] do begin
        InList.Remove(ToRemove);
        if InList.Count = 0 then
          q.Enqueue(Node);
      end;
    Remove(ToRemove);
    aOutSeq[Counter] := ToRemove;
    Dec(Counter);
  end;
  q.Free;
  Result := Count = 0;
  if not Result then
    aOutSeq := nil;
end;

{ expects text separated by line breaks }
function ParseRawData(const aData: string): TDigraph;
var
  Line, Curr, Node: string;
  FirstTerm: Boolean;
begin
  Result := TDigraph.Create([doOwnsValues]);
  for Line in aData.Split([LineEnding], TStringSplitOptions.ExcludeEmpty) do begin
    FirstTerm := True;
    for Curr in Line.Split([' '], TStringSplitOptions.ExcludeEmpty) do
      if FirstTerm then begin
        Node := Curr;
        Result.AddNode(Curr);
        FirstTerm := False;
      end else
        Result.AddArc(Node, Curr);
  end;
end;

procedure TrySort(const aData: string);
var
  g: TDigraph;
  Sorted: TStringArray;
begin
  g := ParseRawData(aData);
  if g.TryToposort(Sorted) then
    WriteLn('success: ', LineEnding, string.Join(', ', Sorted))
  else
    WriteLn('circular dependency detected');
  g.Free;
end;

const
  ExampleData =
    'des_system_lib   std synopsys std_cell_lib des_system_lib dw02 dw01 ramlib ieee' + LineEnding +
    'dw01             ieee dw01 dware gtech'                                          + LineEnding +
    'dw02             ieee dw02 dware'                                                + LineEnding +
    'dw03             std synopsys dware dw03 dw02 dw01 ieee gtech'                   + LineEnding +
    'dw04             dw04 ieee dw01 dware gtech'                                     + LineEnding +
    'dw05             dw05 ieee dware'                                                + LineEnding +
    'dw06             dw06 ieee dware'                                                + LineEnding +
    'dw07             ieee dware'                                                     + LineEnding +
    'dware            ieee dware'                                                     + LineEnding +
    'gtech            ieee gtech'                                                     + LineEnding +
    'ramlib           std ieee'                                                       + LineEnding +
    'std_cell_lib     ieee std_cell_lib'                                              + LineEnding +
    'synopsys';
var
  Temp: TStringArray;

begin
  TrySort(ExampleData);
  WriteLn;
  //let's add a circular dependency
  Temp := ExampleData.Split([LineEnding], TStringSplitOptions.ExcludeEmpty);
  Temp[1] := Temp[1] + ' dw04';
  TrySort(string.Join(LineEnding, Temp));
end.
{------------------------------------------------------- 289 topological-sort-2}
program ToposortTask;
{$mode delphi}
uses
  SysUtils, Generics.Collections;

type
  TDigraph = class(TObjectDictionary<string, THashSet<string>>)
    procedure AddNode(const s: string);
    procedure AddArc(const s, t: string);
    function  AdjList(const s: string): THashSet<string>;
  { returns True and the sorted sequence of nodes in aOutSeq if is acyclic,
    otherwise returns False and the first found cycle; uses DFS }
    function  TryToposort(out aOutSeq: TStringArray): Boolean;
  end;

procedure TDigraph.AddNode(const s: string);
begin
  if not ContainsKey(s) then
    Add(s, THashSet<string>.Create);
end;

procedure TDigraph.AddArc(const s, t: string);
begin
  AddNode(s);
  AddNode(t);
  if s <> t then
    Items[s].Add(t);
end;

function TDigraph.AdjList(const s: string): THashSet<string>;
begin
  if not TryGetValue(s, Result) then
    Result := nil;
end;

function TDigraph.TryToposort(out aOutSeq: TStringArray): Boolean;
var
  Parents: TDictionary<string, string>;// stores the traversal tree as pairs (Node, its predecessor)
  procedure ExtractCycle(const BackPoint: string; Prev: string);
  begin // just walk backwards through the traversal tree, starting from Prev until BackPoint is encountered
    with TList<string>.Create do begin
      Add(Prev);
      repeat
        Prev := Parents[Prev];
        Add(Prev);
      until Prev = BackPoint;
      Add(Items[0]);
      Reverse; //this is required since we moved backwards through the tree
      aOutSeq := ToArray;
      Free;
    end
  end;
var
  Visited,                 // set of already visited nodes
  Closed: THashSet<string>;// set of nodes whose subtree traversal is complete
  Counter: SizeInt = 0;
  function Dfs(const aNode: string): Boolean;// True means successful sorting,
  var                                        // False - found cycle
    Next: string;
  begin
    Visited.Add(aNode);
    for Next in AdjList(aNode) do
      if not Visited.Contains(Next) then begin
        Parents.Add(Next, aNode);
        if not Dfs(Next) then exit(False);
      end else
        if not Closed.Contains(Next) then begin//back edge found(i.e. cycle)
          ExtractCycle(Next, aNode);
          exit(False);
        end;
    Closed.Add(aNode);
    aOutSeq[Counter] := aNode;
    Inc(Counter);
    Result := True;
  end;
var
  Node: string;
begin
  SetLength(aOutSeq, Count);
  Visited := THashSet<string>.Create;
  Closed := THashSet<string>.Create;
  Parents := TDictionary<string, string>.Create;
  Result := True;
  for Node in Keys do
    if not Visited.Contains(Node) then
      if not Dfs(Node) then begin
        Result := False;
        break;
      end;
  Visited.Free;
  Closed.Free;
  Parents.Free;
end;

{ expects text separated by line breaks }
function ParseRawData(const aData: string): TDigraph;
var
  Line, Curr, Node: string;
  FirstTerm: Boolean;
begin
  Result := TDigraph.Create([doOwnsValues]);
  for Line in aData.Split([LineEnding], TStringSplitOptions.ExcludeEmpty) do begin
    FirstTerm := True;
    for Curr in Line.Split([' '], TStringSplitOptions.ExcludeEmpty) do
      if FirstTerm then begin
        Node := Curr;
        Result.AddNode(Curr);
        FirstTerm := False;
      end else
        Result.AddArc(Node, Curr);
  end;
end;

procedure TrySort(const aData: string);
var
  g: TDigraph;
  Sorted: TStringArray;
begin
  g := ParseRawData(aData);
  if g.TryToposort(Sorted) then
    WriteLn('success: ', LineEnding, string.Join(', ', Sorted))
  else
    WriteLn('circular dependency: ', LineEnding, string.Join('->', Sorted));
  g.Free;
end;

const
  ExampleData =
    'des_system_lib   std synopsys std_cell_lib des_system_lib dw02 dw01 ramlib ieee' + LineEnding +
    'dw01             ieee dw01 dware gtech'                                          + LineEnding +
    'dw02             ieee dw02 dware'                                                + LineEnding +
    'dw03             std synopsys dware dw03 dw02 dw01 ieee gtech'                   + LineEnding +
    'dw04             dw04 ieee dw01 dware gtech'                                     + LineEnding +
    'dw05             dw05 ieee dware'                                                + LineEnding +
    'dw06             dw06 ieee dware'                                                + LineEnding +
    'dw07             ieee dware'                                                     + LineEnding +
    'dware            ieee dware'                                                     + LineEnding +
    'gtech            ieee gtech'                                                     + LineEnding +
    'ramlib           std ieee'                                                       + LineEnding +
    'std_cell_lib     ieee std_cell_lib'                                              + LineEnding +
    'synopsys';
var
  Temp: TStringArray;

begin
  TrySort(ExampleData);
  WriteLn;
  //let's add a circular dependency
  Temp := ExampleData.Split([LineEnding], TStringSplitOptions.ExcludeEmpty);
  Temp[1] := Temp[1] + ' dw07';
  Temp[7] := Temp[7] + ' dw03';
  TrySort(string.Join(LineEnding, Temp));
end.
{-------------------------------------- 290 topological-sort-extracted-top-item}
program TopLevel;
{$mode delphi}
uses
  SysUtils, Generics.Collections;

type
  TAdjList = class
    InList,                    // incoming arcs
    OutList: THashSet<string>; // outcoming arcs
    constructor Create;
    destructor Destroy; override;
  end;

  TDigraph = class(TObjectDictionary<string, TAdjList>)
    procedure AddNode(const s: string);
    procedure AddArc(const s, t: string);
    function  AdjList(const s: string): TAdjList;
  end;

constructor TAdjList.Create;
begin
  InList := THashSet<string>.Create;
  OutList := THashSet<string>.Create;
end;

destructor TAdjList.Destroy;
begin
  InList.Free;
  OutList.Free;
  inherited;
end;

procedure TDigraph.AddNode(const s: string);
begin
  if not ContainsKey(s) then
    Add(s, TAdjList.Create);
end;

procedure TDigraph.AddArc(const s, t: string);
begin
  AddNode(s);
  AddNode(t);
  if s <> t then begin
    Items[s].OutList.Add(t);
    Items[t].InList.Add(s);
  end;
end;

function TDigraph.AdjList(const s: string): TAdjList;
begin
  if not TryGetValue(s, Result) then
    Result := nil;
end;

function GetCompOrder(g: TDigraph; const aTarget: string): TStringArray;
var
  Stack: TList<string>;
  Visited: THashSet<string>;
  procedure Dfs(const aNode: string);
  var
    Next: string;
  begin
    Visited.Add(aNode);
    for Next in  g.AdjList(aNode).OutList do
      if not Visited.Contains(Next) then
        Dfs(Next);
    Stack.Add(aNode);
  end;
begin
  if not g.ContainsKey(aTarget) then exit([aTarget]);
  Stack := TList<string>.Create;
  Visited := THashSet<string>.Create;
  Dfs(aTarget);
  Visited.Free;
  Result := Stack.ToArray;
  Stack.Free;
end;

function GetTopLevels(g: TDigraph): TStringArray;
var
  List: TList<string>;
  p: TPair<string, TAdjList>;
begin
  List := TList<string>.Create;
  for p in g do
    with p.Value do
      if (InList.Count = 0) and (OutList.Count <> 0) then
        List.Add(p.Key);
  Result := List.ToArray;
  List.Free;
end;

function ParseRawData(const aData: string): TDigraph;
var
  Line, Curr, Node: string;
  FirstTerm: Boolean;
begin
  Result := TDigraph.Create([doOwnsValues]);
  for Line in aData.Split([LineEnding], TStringSplitOptions.ExcludeEmpty) do begin
    FirstTerm := True;
    for Curr in Line.Split([' '], TStringSplitOptions.ExcludeEmpty) do
      if FirstTerm then begin
        Node := Curr;
        Result.AddNode(Curr);
        FirstTerm := False;
      end else
        Result.AddArc(Node, Curr);
  end;
end;

const
  Data =
    'top1    des1 ip1 ip2'            + LineEnding +
    'top2    des1 ip2 ip3'            + LineEnding +
    'ip1     extra1 ip1a ipcommon'    + LineEnding +
    'ip2     ip2a ip2b ip2c ipcommon' + LineEnding +
    'des1    des1a des1b des1c'       + LineEnding +
    'des1a   des1a1 des1a2'           + LineEnding +
    'des1c   des1c1 extra1';
var
  g: TDigraph;
begin
  g := ParseRawData(Data);
  WriteLn('Top levels: ', string.Join(', ', GetTopLevels(g)));
  WriteLn;
  WriteLn('Compile order for top1:', LineEnding, string.Join(', ', GetCompOrder(g, 'top1')));
  WriteLn;
  WriteLn('Compile order for top2:', LineEnding, string.Join(', ', GetCompOrder(g, 'top2')));
  g.Free;
end.
{-------------------------------------------------------- 291 towers-of-hanoi-1}
program Hanoi;
type
  TPole = (tpLeft, tpCenter, tpRight);
const
  strPole:array[TPole] of string[6]=('left','center','right');

 procedure MoveStack (const Ndisks : integer; const Origin,Destination,Auxiliary:TPole);
 begin
  if Ndisks >0 then begin
     MoveStack(Ndisks - 1, Origin,Auxiliary, Destination );
     Writeln('Move disk ',Ndisks ,' from ',strPole[Origin],' to ',strPole[Destination]);
     MoveStack(Ndisks - 1, Auxiliary, Destination, origin);
  end;
 end;

begin
 MoveStack(4,tpLeft,tpCenter,tpRight);
end.
{-------------------------------------------------------- 292 towers-of-hanoi-2}
program Hanoi;
type
  TPole = (tpLeft, tpCenter, tpRight);
const
  strPole:array[TPole] of string[6]=('left','center','right');

 procedure MoveOneDisk(const DiskNum:integer; const Origin,Destination:TPole);
 begin
  Writeln('Move disk ',DiskNum,' from ',strPole[Origin],' to ',strPole[Destination]);
 end;

 procedure MoveStack (const Ndisks : integer; const Origin,Destination,Auxiliary:TPole);
 begin
  if Ndisks =1 then
       MoveOneDisk(1,origin,Destination)
  else begin
       MoveStack(Ndisks - 1, Origin,Auxiliary, Destination );
       MoveOneDisk(Ndisks,origin,Destination);
       MoveStack(Ndisks - 1, Auxiliary, Destination, origin);
  end;
 end;

begin
 MoveStack(4,tpLeft,tpCenter,tpRight);
end.
{------------------------------------------------------- 293 triangular-numbers}
program XangularNumbers;
const
  MAXIDX = 29;
  MAXLINECNT = 13;
  cNames : array[0..4] of string =
     ('','','triangular','tetrahedral','pentatopic');
  cCheckRootValues :array[0..3] of Uint64 =
       (7140,21408696,26728085384,14545501785001)   ;
type
  tOneLine  = array[0..MAXIDX+2] of Uint64;
  tpOneLine = ^tOneLine;
  tSimplexs  = array[0..MAXLINECNT-1] of tOneLine;

procedure OutLine(var S:tSimplexs;idx: NativeInt);
const
  cColCnt = 6;cColWidth = 80 DIV cColCnt;
var
  i,colcnt : NativeInt;
begin
  if idx > High(cNames) then
    writeln('First ',MAXIDX+1,' ',idx,'-simplex numbers')
  else
    writeln('First ',MAXIDX+1,' ',cNames[idx],' numbers');
  colcnt := cColCnt;
  For i := 0 to MAXIDX do
  begin
    write(S[idx,i]:cColWidth);
    dec(colCnt);
    if ColCnt = 0 then
    Begin
      writeln;
      ColCnt := cColCnt;
    end;
  end;
  if ColCnt <  cColCnt then
    writeln;
  writeln;
end;

procedure CalcNextLine(var S:tSimplexs;idx: NativeInt);
var
  s1,s2: Uint64;
  i : NativeInt;
begin
  s1 := S[idx,0];
  S[idx+1,0] := s1;
  For i := 1 to MAXIDX do
  begin
    s2:= S[idx,i];
    S[idx+1,i] := s1+s2;
    inc(s1,s2);
  end;
end;

procedure InitSimplexs(var S:tSimplexs);
var
  i: NativeInt;
begin
  fillChar(S,Sizeof(S),#0);
  For i := 1 to MAXIDX do
    S[0,i] := 1;
  For i := 0 to MAXLINECNT-2 do
    CalcNextLine(S,i);
end;

function TriangularRoot(n: Uint64): extended;
begin
  if n < High(Uint64) DIV 8 then
    TriangularRoot := (sqrt(8*n+1)-1) / 2
  else
    TriangularRoot := (sqrt(8)*sqrt(n)-1)/2;
end;

function tetrahedralRoot(n: Uint64): extended;
const
  cRec27 = 1/sqrt(27);
var
  x,y : extended;
begin
  y := 3.0*n;
  x := sqrt((y-cRec27)*(y+cRec27));//sqrt(sqr(3*n)-1/27)
  if x < y then
    tetrahedralRoot := exp(ln(y+x)/3.0)+exp(ln(y-x)/3.0)-1.0
  else
    //( 6*n)^(1/3)-1
    tetrahedralRoot :=exp(ln(6)/3.0)*exp(ln(n)/3.0)-1.0; //6^(1/3)* n^(1/3)-1
end;

function PentatopicRoot(n: Uint64): extended;
begin
  PentatopicRoot := (sqrt(5 + 4 * sqrt(24*n + 1)) - 3) / 2;
end;

var
  Simplexs  : tSimplexs;
  n : Uint64;
  i : NativeInt;
Begin
  InitSimplexs(Simplexs);
  OutLine(Simplexs,2);
  OutLine(Simplexs,3);
  OutLine(Simplexs,4);
  OutLine(Simplexs,12);
  For i := 0 to High(cCheckRootValues) do
  begin
    n := cCheckRootValues[i];
    writeln('Roots of ',n,':');
    writeln('triangular -root : ',TriangularRoot(n):20:12);
    writeln('tetrahedral-root : ',tetrahedralRoot(n):20:12);
    writeln('pentatopic -root : ',PentatopicRoot(n):20:12);
    writeln;
  end;
end.
{-------------------------------------------------- 294 trigonometric-functions}
Program TrigonometricFuntions(output);

uses
  math;

var
  radians, degree: double;

begin
  radians := pi / 4.0;
  degree := 45;
  //  Pascal works in radians.  Necessary degree-radian conversions are shown.
  writeln (sin(radians),'   ', sin(degree/180*pi));
  writeln (cos(radians),'   ', cos(degree/180*pi));
  writeln (tan(radians),'   ', tan(degree/180*pi));
  writeln ();
  writeln (arcsin(sin(radians)),' Rad., or ', arcsin(sin(degree/180*pi))/pi*180,' Deg.');
  writeln (arccos(cos(radians)),' Rad., or ', arccos(cos(degree/180*pi))/pi*180,' Deg.');
  writeln (arctan(tan(radians)),' Rad., or ', arctan(tan(degree/180*pi))/pi*180,' Deg.');
  //  ( radians ) / pi * 180 = deg.
end.
{---------------------------------------------------------- 295 truncate-a-file}
Program FileTruncate;

uses
  SysUtils;

var
  myfile:   file of byte;
  filename: string;
  position: integer;

begin
  write('File for truncation: ');
  readln(filename);
  if not FileExists(filename) then
  begin
    writeln('Error: File does not exist.');
    exit;
  end;

  write('Truncate position: ');
  readln(position);

  Assign(myfile, filename);
  Reset(myfile);
  if FileSize(myfile) < position then
  begin
    writeln('Warning: The file "', filename, '" is too short. No need to truncate at position ', position);
    Close(myfile);
    exit;
  end;

  Seek(myfile, position);
  Truncate(myfile);
  Close(myfile);
  writeln('File "', filename, '" truncated at position ', position, '.');
end.
{-------------------------------------------------------------- 296 truth-table}
program TruthTables;
const
  StackSize = 80;

type
  TVariable = record
    Name: Char;
    Value: Boolean;
  end;

  TStackOfBool = record
    Top: Integer;
    Elements: array [0 .. StackSize - 1] of Boolean;
  end;

var
  Expression: string;
  Variables: array [0 .. 23] of TVariable;
  VariablesLength: Integer;
  i: Integer;
  e: Char;

// Stack manipulation functions
function IsFull(var s: TStackOfBool): Boolean;
begin
  IsFull := s.Top = StackSize - 1;
end;

function IsEmpty(var s: TStackOfBool): Boolean;
begin
  IsEmpty := s.Top = -1;
end;

function Peek(var s: TStackOfBool): Boolean;
begin
  if not IsEmpty(s) then
    Peek := s.Elements[s.Top]
  else
  begin
    Writeln('Stack is empty.');
    Halt;
  end;
end;

procedure Push(var s: TStackOfBool; val: Boolean);
begin
  if not IsFull(s) then
  begin
    Inc(s.Top);
    s.Elements[s.Top] := val;
  end
  else
  begin
    Writeln('Stack is full.');
    Halt;
  end
end;

function Pop(var s: TStackOfBool): Boolean;
begin
  if not IsEmpty(s) then
  begin
    Result := s.Elements[s.Top];
    Dec(s.Top);
  end
  else
  begin
    Writeln;
    Writeln('Stack is empty.');
    Halt;
  end
end;

procedure MakeEmpty(var s: TStackOfBool);
begin
  s.Top := -1;
end;

function ElementsCount(var s: TStackOfBool): Integer;
begin
  ElementsCount := s.Top + 1;
end;

function IsOperator(const c: Char): Boolean;
begin
  IsOperator := (c = '&') or (c = '|') or (c = '!') or (c = '^');
end;

function VariableIndex(const c: Char): Integer;
var
  i: Integer;
begin
  for i := 0 to VariablesLength - 1 do
    if Variables[i].Name = c then
    begin
      VariableIndex := i;
      Exit;
    end;
  VariableIndex := -1;
end;

function EvaluateExpression: Boolean;
var
  i, vi: Integer;
  e: Char;
  s: TStackOfBool;
begin
  MakeEmpty(s);
  for i := 1 to Length(Expression) do
  begin
    e := Expression[i];
    vi := VariableIndex(e);
    if e = 'T' then
      Push(s, True)
    else if e = 'F' then
      Push(s, False)
    else if vi >= 0 then
      Push(s, Variables[vi].Value)
    else
    begin
      {$B+}
      case e of
        '&':
          Push(s, Pop(s) and Pop(s));
        '|':
          Push(s, Pop(s) or Pop(s));
        '!':
          Push(s, not Pop(s));
        '^':
          Push(s, Pop(s) xor Pop(s));
      else
        Writeln;
        Writeln('Non-conformant character ', e, ' in expression.');
        Halt;
      end;
      {$B-}
    end;
  end;
  if ElementsCount(s) <> 1 then
  begin
    Writeln;
    Writeln('Stack should contain exactly one element.');
    Halt;
  end;
  EvaluateExpression := Peek(s);
end;

procedure SetVariables(pos: Integer);
var
  i: Integer;
begin
  if pos > VariablesLength then
  begin
    Writeln;
    Writeln('Argument to SetVariables cannot be greater than the number of variables.');
    Halt;
  end
  else if pos = VariablesLength then
  begin
    for i := 0 to VariablesLength - 1 do
    begin
      if Variables[i].Value then
        Write('T  ')
      else
        Write('F  ');
    end;
    if EvaluateExpression then
      Writeln('T')
    else
      Writeln('F');
  end
  else
  begin
    Variables[pos].Value := False;
    SetVariables(pos + 1);
    Variables[pos].Value := True;
    SetVariables(pos + 1);
  end
end;

// removes space and converts to upper case
procedure ProcessExpression;
var
  i: Integer;
  exprTmp: string;
begin
  exprTmp := '';
  for i := 1 to Length(Expression) do
  begin
    if Expression[i] <> ' ' then
      exprTmp := Concat(exprTmp, UpCase(Expression[i]));
  end;
  Expression := exprTmp
end;

begin
  Writeln('Accepts single-character variables (except for ''T'' and ''F'',');
  Writeln('which specify explicit true or false values), postfix, with');
  Writeln('&|!^ for and, or, not, xor, respectively; optionally');
  Writeln('seperated by space. Just enter nothing to quit.');

  while (True) do
  begin
    Writeln;
    Write('Boolean expression: ');
    ReadLn(Expression);
    ProcessExpression;
    if Length(Expression) = 0 then
      Break;
    VariablesLength := 0;
    for i := 1 to Length(Expression) do
    begin
      e := Expression[i];
      if (not IsOperator(e)) and (e <> 'T') and (e <> 'F') and
        (VariableIndex(e) = -1) then
      begin
        Variables[VariablesLength].Name := e;
        Variables[VariablesLength].Value := False;
        Inc(VariablesLength);
      end;
    end;
    WriteLn;
    if VariablesLength = 0 then
      Writeln('No variables were entered.')
    else
    begin
      for i := 0 to VariablesLength - 1 do
        Write(Variables[i].Name, '  ');
      Writeln(Expression);
      Writeln(StringOfChar('=', VariablesLength * 3 + Length(Expression)));
      SetVariables(0);
    end;
  end;
end.
{-------------------------------------------------------- 297 twelve-statements}
PROGRAM TwelveStatements;

{
  This program searches through the 4095 possible sets
  of 12 statements for any which may be self-consistent.
}

CONST
    max12b = 4095; { Largest 12 byte number. }

TYPE
    statnum = 1..12;  { statement numbers }
    statset = set of statnum; { sets of statements }

VAR { global variables for use in main algorithm }
    trialNumber: integer;
    trialSet, testResults: statset;

function Convert(n: integer): statset;
{
  Converts an integer into a set of statements.
  For each "1" in the last 12 bits of
  the integer's binary representation,
  a statement number is put into the set.
}
var
    i: statnum;
    s: statset;
begin
    s := []; { Empty set. }
    for i := 12 downto 1 do begin
        if (n mod 2) = 1 then s := s + [i];
        n := n div 2
    end;
    Convert := s
end;

procedure Express(truths: statset);
{
  Writes the statement number of each "truth",
  with at least one space in front,
  all on one line.
}
var n: statnum;
begin
    for n := 1 to 12 do
     if n in truths then write(n:3);
    writeln
end;

function Count(truths: statset): integer;
{ Counts the statement numbers in the set. }
var
    s: statnum;
    i: integer;
begin
    i := 0;
    for s := 1 to 12 do if s in truths then i := i + 1;
    Count := i
end;

function Test(truths: statset): statset;
{
  Starts with a set of supposedly true statements
  and checks which of the 12 statements can actually
  be confirmed about the set itself.
}
var
    evens, odds, confirmations: statset;
begin
    evens := [2, 4, 6, 8, 10, 12];
    odds := [1, 3, 5, 7, 9, 11];

    { Statement 1 is necessarily true. }
    confirmations := [1];

    { Statement 2 }
    if Count(truths * [7..12]) = 3
     then confirmations := confirmations + [2];

    { Statement 3 }
    if Count(truths * evens) = 2
     then confirmations := confirmations + [3];

    { Statement 4 is true if 6 and 7 are true, or if 5 is false. }
    if ([6, 7] <= truths) or not (5 in truths)
     then confirmations := confirmations + [4];

    { Statement 5 }
    if [2, 3, 4] <= truths
     then confirmations := confirmations + [5];

    { Statement 6 }
    if Count(truths * odds) = 4
     then confirmations := confirmations + [6];

    { Statement 7 }
    if (2 in truths) xor (3 in truths)
     then confirmations := confirmations + [7];

    { Statement 8 is true if 5 and 6 are true, or if 7 is false. }
    if ([5, 6] <= truths) or not (7 in truths)
     then confirmations := confirmations + [8];

    { Statement 9 }
    if Count(truths * [1..6]) = 3
     then confirmations := confirmations + [9];

    { Statement 10 }
    if [11, 12] <= truths
     then confirmations := confirmations + [10];

    { Statement 11 }
    if Count(truths * [7, 8, 9]) = 1
     then confirmations := confirmations + [11];

    { Statement 12 }
    if Count(truths - [12]) = 4
     then confirmations := confirmations + [12];

    Test := confirmations
end;

BEGIN  { Main algorithm. }
    for trialNumber := 1 to max12b do begin
        trialSet := Convert(trialNumber);
        testResults := Test(trialSet);
        if testResults = trialSet then Express(trialSet)
    end;
    writeln('Done. Press ENTER.');
    readln
END.
{---------------------------------------------------- 298 two-identical-strings}
program IdenticalStrings;
const
    LIMIT = 1000;
var
    n: Integer;

function BitLength(n: Integer): Integer;
    var count: Integer;
    begin
        count := 0;
        while n > 0 do
        begin
            n := n shr 1;
            count := count + 1;
        end;
        BitLength := count;
    end;

function Concat(n: Integer): Integer;
    begin
        Concat := n shl BitLength(n) or n;
    end;

procedure WriteBits(n: Integer);
    var bit: Integer;
    begin
        bit := 1 shl (BitLength(n)-1);
        while bit > 0 do
        begin
            if (bit and n) <> 0 then Write('1')
            else Write('0');
            bit := bit shr 1;
        end;
   end;

begin
   n := 1;
   while Concat(n) < LIMIT do
   begin
       Write(Concat(n));
       Write(': ');
       WriteBits(Concat(n));
       WriteLn;
       n := n + 1;
   end;
end.
{------------------------------------------------------------- 299 ulam-numbers}
program UlamNumbers;
{$IFDEF FPC}
  {$MODE DELPHI}
  {$Optimization On,All}
{$ENDIF}
uses
  sysutils;
const
  maxUlam = 100000;
  Limit = 1351223+4000;
type
  tCheck  =  Uint16;
  tpCheck = pUint16;
var
  Ulams : array of Uint32;
  Check0 : array of tCheck;
  Ulam_idx :NativeInt;

procedure init;
begin
  setlength(Ulams,maxUlam);
  Ulams[0] := 1;
  Ulams[1] := 2;
  Ulam_idx := 1;
  setlength(check0,Limit);

  check0[1]:=1;
  check0[2]:=1;
end;

procedure OutData(idx,num:NativeInt);
Begin
  writeln(' Ulam(',idx+1,')',#9#9,num:10);
end;

function findNext(i:nativeInt;pCh0:tpCheck):NativeInt;
begin
  result := i;
  repeat
    if pCh0[result] = 1 then
      break;
    inc(result);
  until false;
end;

procedure SumOne(idx:NativeUint;pCh:tpCheck;pUlams:pUint32);
//seperated speeds up a lot by reducing register pressure in main
Begin
  For idx := idx downto 0 do
    pCh[pUlams[idx]] +=1;
end;

var
  pCh0,pCh : tpCheck;
  pUlams   : pUint32;
  ul,idx,lmtidx :nativeInt;
Begin

  Init;
  lmtidx := 9;
  pCh0:= @Check0[0];
  pUlams := @Ulams[0];
  OutData(0,pUlams[0]);
  ul := pUlams[Ulam_idx];
  pCh:= @pCh0[ul];
  repeat
    SumOne(Ulam_idx-1,pCh,pUlams);
    ul := findNext(ul+1,pCh0);
    inc(Ulam_idx);
    pUlams[Ulam_idx] := ul;
    pCh:= @pCh0[ul];
    IF ul>Limit DIV 2 then
      break;
    if Ulam_idx=lmtIdx then
    Begin
      OutData(Ulam_idx,ul);
      lmtidx := lmtidx*10+9;
    end;
  until Ulam_idx >= maxUlam-1;

  idx := Ulam_idx-1;
  //now reducing then the highest used summing idx
  while Ulam_idx< maxUlam-1 do
  begin
    while ul+pUlams[idx] > limit do
      dec(idx);
    SumOne(idx,pCh,pUlams);
    ul := findNext(ul+1,pCh0);
    inc(Ulam_idx);
    pUlams[Ulam_idx] := ul;
    pCh:= @pCh0[ul];
  end;
  OutData(Ulam_idx,ul);
  setlength(check0,0);
  setlength(Ulams,0);
end.
{------------------------------------------------ 300 ulam-spiral-for-primes--1}
Program Ulam; Uses crt;
{Concocted by R.N.McLean (whom God preserve), ex Victoria university, NZ.}
{$B- evaluate boolean expressions only so far as necessary.}
{$R+ range checking...}

 FUNCTION Trim(S : string) : string;
  var L1,L2 : integer;
 BEGIN
  L1 := 1;
  WHILE (L1 <= LENGTH(S)) AND (S[L1] = ' ') DO INC(L1);
  L2 := LENGTH(S);
  WHILE (S[L2] = ' ') AND (L2 > L1) DO DEC(L2);
  IF L2 >= L1 THEN Trim := COPY(S,L1,L2 - L1 + 1) ELSE Trim := '';
 END; {Of Trim.}

FUNCTION Ifmt(Digits : integer) : string;
 var  S : string[255];
 BEGIN
  STR(Digits,S);
  Ifmt := Trim(S);
 END; { Ifmt }
 Function min(i,j: integer): integer;
  begin
   if i <= j then min:=i else min:=j;
  end;
 Procedure Croak(Gasp: string);        {A lethal word.}
  Begin
   WriteLn;
   WriteLn(Gasp);
   HALT;                   {This way to the egress...}
  End;
 var ScreenLine,ScreenColumn: byte;	{Line and column position.}
{=========================enough support===================}
 const Mstyle = 6;	{Display different results.}
 const StyleName: array[1..Mstyle] of string = ('IsPrime','First Prime Factor Index',
  'First Prime Factor','Number of Prime Factors',
  'Sum of Prime Factors','Sum of Proper Factors');
 const OrderLimit = 49; Limit2 = OrderLimit*OrderLimit;		{A 50-line screen has room for a heading.}
 var Tile: array[1..OrderLimit,1..OrderLimit] of integer; 	{Alas, can't put [Order,Order], only constants.}
 var FirstPrimeFactorIndex,FirstPrimeFactor,NumPFactor,SumPFactor,SumFactor: array[1..Limit2] of integer;
 const enuffP = 17;	{Given the value of Limit2.}
 const Prime: array[1..enuffP] of integer = (1,2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53);
 Procedure Prepare;	{Various arrays are to be filled for the different styles.}
  var i,j,p: integer;
  Begin
   for i:=1 to limit2 do	{Alas, can't just put A:=0;}
    begin			{Nor clear A;}
     FirstPrimeFactorIndex[i]:=1;	{Prime[1] = 1, so this means no other divisor.}
     FirstPrimeFactor[i]:=0;
     NumPFactor[i]:=0;
     SumPFactor[i]:=0;
     SumFactor[i]:=1;		{1 is counted as a proper factor.}
    end;
   FirstPrimeFactorIndex[1]:=0;	{Fiddle, as 1 is not a prime number.}
   SumFactor[1]:=0;		{N is not a proper factor of N, so 1 has no proper factors...}
   for i:=2 to enuffP do	{Prime[1] = 1, Prime[2] = 2, so start with i = 2.}
    begin
     p:=Prime[i];
     j:=p + p;
     while j <= Limit2 do
      begin
       if FirstPrimeFactorIndex[j] = 1 then FirstPrimeFactorIndex[j]:=i;
       if FirstPrimeFactor[j] = 0 then FirstPrimeFactor[j]:=p;
       SumPFactor[j]:=SumPFactor[j] + p;
       inc(NumPFactor[j]);
       j:=j + p;
      end;
    end;
   for i:=2 to Limit2 div 2 do	{Step through all possible proper factors.}
    begin			{N is not a proper factor of N, so start at 2N,}
     j:=2*i;	 		{for which N is a proper factor of 2N.}
     while j <= Limit2 do	{Sigh. for j:=2*i:Limit2:i do ... Next i;}
      begin
       SumFactor[j]:=SumFactor[j] + i;
       j:=j + i;
      end;
    end;
  End;	{Enough preparation.}

 const enuffC = 11;	{Perhaps the colours will highlight interesting patterns.}
 const colour:array[0..enuffC] of byte = (black,white,LightRed,
  LightMagenta,Yellow,LightGreen,LightCyan,LightBlue,LightGray,
  Red,Green,DarkGray);		{Colours on the screen don't always match their name!}

 Procedure UlamSpiral(Order,Start,Style: integer);	{Generate the numbers, then display.}
  Function Encode(N: integer): integer;	{Acording to Style, choose a result to show.}
   Begin
    if N <= 1 then Encode:=0
     else
      case style of
     1:if FirstPrimeFactorIndex[N] = 1 then Encode:=1 else Encode:=0;	{1 = Prime.}
     2:Encode:=FirstPrimeFactorIndex[N];
     3:Encode:=FirstPrimeFactor[N];
     4:Encode:=NumPFactor[N];
     5:Encode:=SumPFactor[N];
     6:Encode:=SumFactor[N];
      end;
   End;	{So much for encoding.}
  var Place,Way: array[1..2] of integer;	{Complex numbers.}
  var m,	{Middle.}
      N,	{Counter.}
      length,	{length of a side.}
      lunge,	{two lunges for each length.}
      step	{steps to make up a lunge of some length.}
      : integer;
  var i,j: integer;	{Steppers.}
  var code,it: integer;	{Mess with the results.}
  label XX;		{Escape the second lunge.}
  var OutF: text;	{Utter drivel. It is a disc file.}
  Begin
   Write('Ulam Spiral, order ',Order,', start ',Start,', style ',style);	{Start the heading.}
   if style <= 0 then Croak('Must be a positive style');
   if style > Mstyle then croak('Last known style is '+ifmt(Mstyle));
   if Order > OrderLimit then Croak('Array OrderLimit is order '+IFmt(OrderLimit));
   if Order mod 2 <>1 then Croak('The order must be an odd number!');
   writeln(': ',StyleName[Style]);	{Finish the heading. The pattern starts with line two.}
   Assign(OutF,'Ulam.txt'); Rewrite(OutF); Writeln(OutF,'Ulam spiral: the codes for ',StyleName[style]);
   m:=order div 2 + 1;		{This is why Order must be odd.}
   Place[1]:=m; Place[2]:=m;	{Start at the middle.}
   way[1]:=1; way[2]:=0;	{Initial direction is along the x-axis.}
   n:=Start;
   for length:=1 to Order do	{Advance through the lengths.}
    for lunge:=1 to 2 do		{Two lunges for each length.}
     begin
      for step:=1 to length do			{Make the steps.}
       begin
        Tile[Place[1],Place[2]]:=N;
        for i:=1 to 2 do Place[i]:=Place[i] + Way[i];   {Place:=Place + Way;}
        N:=N + 1;
       end;
      if N >= Order*Order then goto XX;	{Each corner piece is part of two lunges.}
      i:=Way[1]; Way[1]:=-Way[2]; Way[2]:=i;	{Way:=Way*(0,1) in complex numbers: (x,y)*(0,1) = (-y,x).}
     end;
XX:for i:=order downto 1 do     {Output: Lines count downwards, y runs upwards.}
    begin			{The first line is the topmost y.}
     for j:=1 to order do	{(line,column) = (y,x).}
      begin				{Work along the line.}
       it:=Tile[j,i];			{Grab the number.}
       code:=Encode(it);		{Presentation scheme.}
       Write(OutF,'(',it:4,':',code:2,')');	{Debugging...}
       if FirstPrimeFactorIndex[it] > 1 then TextBackGround(Black)	{Not a prime.}
        else if it = 1 then TextBackGround(Black)	{Darkness for one, also.}
         else TextBackGround(White);		{A prime number!}
       TextColor(Colour[min(code,enuffC)]);	{A lot of fuss for this!}
       {Write(code:2);}
       {Write(it:3);}
       if it <= 9 then write(it) else Write('*');	{Thus mark the centre.}
      end;					{Next position along the line.}
     if i > 1 then WriteLn;		{Ending the last line would scroll the heading up.}
     WriteLn(OutF);			{But this is good for the text file.}
    end;			{On to the next line.}
    Close(OutF);		{Finished with the trace.}
{Some revelations to help in choosing a colour sequence.}
    ScreenLine:=WhereY; ScreenColumn:=WhereX;	{Gibberish to find the location.}
    if Style > 1 then	{Only the fancier styles go beyond 0 and 1.}
     begin			{So explain only for them.}
      GoToXY(ScreenColumn + 1,ScreenLine - 4);		{Unused space is to the right.}
      TextColor(White); write('Colour sequence');	{Given 80-column displays.}
      GoToXY(ScreenColumn + 1,ScreenLine - 3);		{And no more than 50 lines.}
      for i:=1 to enuffC do begin TextColor(Colour[i]); write(i); end;	{My sequence.}
      GoToXY(ScreenColumn + 1,ScreenLine - 2);
      TextColor(White); write('From options');
      GoToXY(ScreenColumn + 1,ScreenLine - 1);
      for i:=1 to 15 do begin TextColor(i);write(i); end;		{The options.}
     end;
  End;   {of UlamSpiral.}

 var start,wot,order: integer;	{A selector.}
 BEGIN	{After all that.}
  TextMode(Lo(LastMode) + Font8x8);	{Gibberish sets 43 lines on EGA and 50 on VGA.}
  ClrScr; TextColor(White);		{This also gives character blocks that are almost square...}
  WriteLn('Presents consecutive integers in a spiral, as per Stanislaw Ulam.');
  WriteLn('Starting with 1, runs up to Order*Order.');
  Write('What value for Order? (Limit ' + Ifmt(OrderLimit),'): ');
  ReadLn(Order);			{ReadKey needs no "enter", but requires decoding.}
  if (order < 1) or (order > OrderLimit) then Croak('Out of range!');	{Oh dear.}
  Prepare;
  wot:=1;	{The original task.}
  Repeat		{Until bored?}
   ClrScr;			{Scrub any previous stuff.}
   UlamSpiral(Order,1,wot);		{The deed!}
   GoToXY(ScreenColumn + 1,ScreenLine);		{Note that the last WriteLn was skipped.}
   TextColor(White); Write('Enter 0, or 1 to '+Ifmt(Mstyle),': ');	{Wot now?}
   ReadLn(wot);						{Receive.}
  Until (wot <= 0) or (wot > Mstyle);		{Alas, "Enter" must be pressed.}
 END.
{------------------------------------------------ 301 ulam-spiral-for-primes--2}
PROGRAM Ulam.pas;


{$IFDEF FPC}
    {$mode objfpc}{$H+}{$J-}{R+}
{$ELSE}
    {$APPTYPE CONSOLE}
{$ENDIF}


(*)
        Free Pascal Compiler version 3.2.0 [2020/06/14] for x86_64
        The free and readable alternative at C/C++ speeds
        compiles natively to almost any platform, including raspberry PI

        https://www.freepascal.org/advantage.var
(*)

    USES
        Crt,
        SysUtils ;

    CONST
         (*)
            Only odd numbers work
         (*)
         SIZE    = 9 ;
         MSIZE   = SIZE * ord ( Odd ( SIZE ) ) ;

    TYPE
        D2Arr = array of array of string ;


    FUNCTION IsPrime ( n: integer ): boolean ;

        VAR
            i:   integer;

        BEGIN

            IF ( n < 2 )        THEN    Exit ( False ) ;
            IF ( n = 2 )        THEN    Exit ( True  ) ;
            IF ( n mod 2 = 0 )  THEN    Exit ( False ) ;

            FOR i := 3 TO Trunc ( Sqrt ( n ) ) DO
                IF  ( n mod i = 0 ) THEN    Exit( False ) ;

            IsPrime := True ;

        END;


    PROCEDURE  Init2DArr ( Arr: D2Arr ) ;

        VAR
              j: integer;
            mid: integer = MSIZE div 2 ;

        BEGIN

            FOR j:= 1 to MSIZE - mid - 1 DO
                BEGIN
                    Arr [ mid - j ] [ mid - j     ] := '.' ;
                    Arr [ mid - j ] [ mid + j     ] := '.' ;
                    Arr [ mid + j ] [ mid - j     ] := '.' ;
                    Arr [ mid + j ] [ mid + j - 1 ] := '.' ;
                END;

        END;


    PROCEDURE Advance ( var Turn_cnt, x, y: integer ) ;

        VAR
            dir:    array   [ 0..3, 0..1 ]  of  shortint =
                    ( (  1,  0 ), (  0, -1 ), ( -1,  0 ), (  0,  1 ) ) ;

        BEGIN

            x   := Abs ( x + dir [ Turn_cnt mod 4 ][ 0 ] ) ;
            y   := Abs ( y + dir [ Turn_cnt mod 4 ][ 1 ] ) ;

        END;


    PROCEDURE  Add2DArr ( Arr: D2Arr ) ;

        VAR

            cnt:        integer =           1 ;
            Turn_cnt:   integer =           0 ;
            x:          integer = MSIZE div 2 ;
            y:          integer = MSIZE div 2 ;

        BEGIN

            WHILE ( cnt < MSIZE * MSIZE ) DO
                BEGIN

                    Advance ( Turn_cnt , x , y ) ;
                    Inc ( cnt ) ;

                    IF  ( Arr [ x ] [ y ] = '.' )   THEN
                        BEGIN
                            Arr [ x ] [ y ] := '' ;
                            inc ( Turn_cnt ) ;
                        END;

                    IF  ( IsPrime ( cnt ) ) THEN
                        Arr [ x ] [ y ] := IntToStr ( cnt ) ;

                END;

        END;


    PROCEDURE  Show2DArr ( Arr: D2Arr ; glyph : Boolean ) ;

        VAR
            x, y:  integer ;

        BEGIN

            WriteLn ;

            FOR y := Low ( Arr ) TO High ( Arr ) DO
                BEGIN
                    FOR x := Low ( Arr [ y ] ) to High ( Arr [ y ] ) DO

                        IF  length ( Arr [ x ] [ y ] ) > 0  THEN
                            IF  glyph   THEN    Write ( '′' : 3 )
                            ELSE    Write ( Arr [ x ] [ y ] : 3 )
                        ELSE Write ( ' ' : 3) ;

                    WriteLn;
                END;

            WriteLn;

        END;


VAR
    Arr:       D2Arr ;

BEGIN

    IF ( MSIZE = 0 ) THEN
        BEGIN
            WriteLn ( 'Only odd numbers work for SIZE' ) ;
            Exit;
        END;
    SetLength   ( Arr, MSIZE, MSIZE ) ;
    Init2DArr   ( Arr ) ;
    Add2DArr    ( Arr ) ;
    Show2DArr   ( Arr , False ) ;
    Show2DArr   ( Arr , True ) ;

END.
{------------------------------------------------ 302 ulam-spiral-for-primes--3}
PROGRAM Ulam8.pas;

{$IFDEF FPC}
    {$mode objfpc}{$H+}{$J-}{R+}
{$ELSE}
    {$APPTYPE CONSOLE}
{$ENDIF}

(*)
        Free `translation` from PHIX for the Spiral part

        Free Pascal Compiler version 3.2.0 [2020/06/14] for x86_64
        The free and readable alternative at C/C++ speeds
        compiles natively to almost any platform, including raspberry PI *
        Can run independently from DELPHI / Lazarus

        For debian Linux: apt -y install fpc
		It contains a text IDE called fp

        https://www.freepascal.org/advantage.var

(*)

USES

    crt;

CONST

    SIZE    = 9                             ; // `SIZE = 9 : "The Iceskater" ( Obvious when Dutch ) `
    n       = SIZE * ord ( Odd ( SIZE ) )   ;

    CrLf    = #13#10                        ;


    FUNCTION IsPrime ( n: integer ): boolean ;

        VAR
            i:   integer;

        BEGIN

            IF ( n < 2 )        THEN    Exit ( False ) ;
            IF ( n = 2 )        THEN    Exit ( True  ) ;
            IF ( n mod 2 = 0 )  THEN    Exit ( False ) ;

            FOR i := 3 TO Trunc ( Sqrt ( n ) ) DO
                IF  ( n mod i = 0 ) THEN    Exit( False ) ;

            IsPrime := True ;

        END;


    FUNCTION Spiral ( w, h, x, y : integer ) : integer ;

        BEGIN

            IF ( y > 0 )  THEN
                Spiral := w + Spiral ( h - 1, w, y - 1, w - x - 1 )
            ELSE
                Spiral := x

        END ;

    PROCEDURE PrintSpiral ( s : string ) ;

        VAR

            h   : integer = n   ;
            i   : integer       ;
            j   : integer       ;
            p   : integer       ;
            w   : integer = n   ;

        BEGIN

            FOR i := h - 1 DOWNTO 0 DO
                BEGIN
                    FOR j := w - 1 DOWNTO 0 DO
                        BEGIN

                            p := w * h - Spiral ( w, h, j, i ) ;
                            IF IsPrime ( p ) THEN
                                IF ( s = '' ) THEN Write ( p:3 ) ELSE Write ( '`':3 )
                            ELSE  Write ( ' ':3 )

                        END;
                    WriteLn ;
                END ;
        END ;

BEGIN

    IF ( n = 0 ) THEN
        BEGIN
            WriteLn ( 'Only odd numbers work for SIZE' ) ;
            Exit;
        END;

    PrintSpiral ( '' )       ;
    WriteLn ( CrLf )         ;
    PrintSpiral ( 'Symbol' ) ;

END.
{------------------------------------------------------------------ 303 unix-ls}
Program ls;	{To list the names of all files/directories in the current directory.}
 Uses DOS;
 var DirInfo: SearchRec;	{Predefined. See page 403 of the Turbo Pascal 4 manual.}
 BEGIN
  FindFirst('*.*',AnyFile,DirInfo);	{AnyFile means any file name OR directory name.}
  While DOSerror = 0 do			{Result of FindFirst/Next not being a function, damnit.}
   begin
    WriteLn(DirInfo.Name);
    FindNext(DirInfo);
   end;
 END.
{---------------------------------------------------- 304 unprimeable-numbers-1}
program unprimable;
{$IFDEF FPC}{$Mode Delphi}{$ELSE}{$APPTYPE CONSOLE}{$ENDIF}

const
  base = 10;

type
  TNumVal = array[0..base-1] of NativeUint;
  TConvNum = record
               NumRest : TNumVal;
               LowDgt,
               MaxIdx : NativeUint;
             end;

var //global
  PotBase,
  EndDgtFound : TNumVal;
  TotalCnt,
  EndDgtCnt :NativeUint;

procedure Init;
var
  i,val : NativeUint;
Begin
  val := 1;
  For i := low(TNumVal) to High(TNumVal) do
  Begin
    EndDgtFound[i] :=0;
    PotBase[i] := val;
    val := val * Base;
  end;
  TotalCnt := 0;
  EndDgtCnt := 0;
end;

Procedure ConvertNum(n: NativeUint;var NConv:TConvNum);
//extract digit position replace by "0" to get NumRest
// 173 -> 170 -> 103 -> 073
var
  i, dgt,n_red,n_mod: NativeUint;
begin
  i := 0;
  n_red := n;
  with NConv do
  Begin
    repeat
      n_mod := n_red DIV Base;
      dgt := n_red-Base*n_mod;
      n_red := n_mod;
      IF i = 0 then
        LowDgt := dgt;
      NumRest[i]:= n-dgt*PotBase[i];
      inc(i);
    until (i > High(TNumVal)) OR (n<PotBase[i]);
    MaxIdx := i-1;
  end;
end;

procedure CheckOutPut(n: NativeUint);
Begin
  IF TotalCnt > 600 then
    EXIT;
  IF TotalCnt <= 35 then
    write(n,' ');
  IF TotalCnt = 600 then
  Begin
    writeln;
    writeln;
    writeln('the 600.th unprimable number: ',n);
  end;
end;

function isPrime(n : NativeUint):boolean;inline;
var
  p : NativeUint;
Begin
  result := (N=2) OR (N=3);
  IF result then
    EXIT;
  //now result = false
  IF (n<2) OR (NOT(ODD(n))) or (n mod 3= 0) then
    EXIT;
  p := 5;
  while p*p <= n do
  Begin
    if n mod p = 0 then
      Exit;
    inc(p,2);
    if n mod p = 0 then
      Exit;
    inc(p,4);
  end;
  result := true;
end;

procedure InsertFound(LowDgt,n:NativeUInt);
Begin
  inc(TotalCnt);
  IF EndDgtFound[LowDgt] = 0 then
  Begin
    EndDgtFound[LowDgt] := n;
    inc(EndDgtCnt);
  end;
end;

function CheckUnprimable(n:NativeInt):boolean;
var
  ConvNum : TConvNum;
  val,dgt,i,dtfac: NativeUint;
Begin
  ConvertNum(n,ConvNum);
  result := false;
  //lowest digit
  with ConvNum do
  Begin
    val := NumRest[0];
    For dgt := 0 to Base-1 do
      IF isPrime(val+dgt) then
        EXIT;
    dgt := LowDgt;

    result := true;
    i := MaxIdx;
    IF NumRest[i] >= Base then
    Begin
//****Only for base=10 if even or divisible by 5***
      IF Not(ODD(dgt)) OR (dgt=5) then
      Begin
        InsertFound(dgt,n);
        EXIT;
      end;
    end;

    result := false;
    For i := MaxIdx downto 1 do
    Begin
      dtfac := PotBase[i];
      val := NumRest[i];
      For dgt := 0 to Base-1 do
      Begin
        IF isPrime(val) then
          EXIT;
        inc(val,dtfac);
      end;
    end;
    InsertFound(LowDgt,n);
    result := true;
  end;
end;

function CheckUnprimableReduced(n:NativeInt):boolean;
//lowest digit already tested before
var
  ConvNum : TConvNum;
  val,dgt,i,dtfac: NativeUint;
Begin
  ConvertNum(n,ConvNum);
  result := true;
  with ConvNum do
  Begin
    i := MaxIdx;
    IF NumRest[i] >= Base then
    Begin
      dgt := LowDgt;
      IF Not(ODD(dgt)) OR (dgt=5) then
      Begin
        InsertFound(dgt,n);
        EXIT;
      end;
    end;

    result := false;
    For i := i downto 1 do
    Begin
      dtfac := PotBase[i];
      val := NumRest[i];
      For dgt := 0 to Base-1 do
      Begin
        IF isPrime(val) then
          EXIT;
        inc(val,dtfac);
      end;
    end;
    InsertFound(LowDgt,n);
    result := true;
  end;
end;

var
  n,i : NativeUint;
Begin
  init;
  n := Base;
  repeat
    If CheckUnprimable(n) then
    Begin
      CheckOutPut(n);
      For i := 1 to Base-1 do
      Begin
        IF CheckUnprimableReduced(n+i) then
          CheckOutPut(n+i);
      end;
    end;
    inc(n,Base);
  until EndDgtCnt = Base;
  writeln;
  For i := 0 to Base-1 do
    Writeln ('lowest digit ',i:2,' found first ',EndDgtFound[i]:7);
  writeln;
  writeln('There are ',TotalCnt,' unprimable numbers upto ',n);
  {$IFNDEF UNIX}readln;{$ENDIF}
end.
{---------------------------------------------------- 305 unprimeable-numbers-2}
program unprimable;
{$IFDEF FPC}
  {$Mode Delphi}
  {$OPTIMIZATION ON,ALL}
{$ELSE}
  //Delphi
  {$APPTYPE CONSOLE}
{$ENDIF}
uses
  sysutils;
const
  Base = 10;
  dgtcnt = 9;
  Limit = Base* Base*Base*Base*Base* Base*Base*Base*Base;
{
  Base = 18;
  dgtcnt = 8;
  Limit = Base*Base*Base*Base* Base*Base*Base*Base;
  * }

  PrimeLimit = Limit+Base;
{
  Limit = 1000*1000*1000;
  dgtcnt = trunc(ln(Limit-1)/ln(Base));
  PrimeLimit = Trunc(exp(ln(base)*(dgtcnt+1)))+Base;
}
type
  TNumVal = array[0..dgtcnt] of NativeUint;
  TConvNum = record
               NumRest,
               Digits : TNumVal;
               num,
               MaxIdx : NativeUint;
             end;

var //global
  ConvNum:TConvNum;
  PotBase: TNumVal;
  EndDgtFound : array[0..Base-1] of NativeUint;
  TotalCnt,
  EndDgtCnt :NativeUint;

//http://rosettacode.org/wiki/Sieve_of_Eratosthenes#alternative_using_wheel

var
  pPrimes : pBoolean;
  //always initialized with 0 => false at startup
  primes: array  of boolean;

function BuildWheel: NativeUint;
var
  myPrimes : pBoolean;
  wheelprimes :array[0..31] of byte;
  wheelSize,wpno,
  pr,pw,i, k: NativeUint;
begin
  myPrimes := @primes[0];
  pr := 1;
  myPrimes[1]:= true;
  WheelSize := 1;

  wpno := 0;
  repeat
    inc(pr);

    pw := pr;
    if pw > wheelsize then
      dec(pw,wheelsize);
    If myPrimes[pw] then
    begin
      k := WheelSize+1;
      //turn the wheel (pr-1)-times
      for i := 1 to pr-1 do
      begin
        inc(k,WheelSize);
        if k<primeLimit then
          move(myPrimes[1],myPrimes[k-WheelSize],WheelSize)
        else
        begin
          move(myPrimes[1],myPrimes[k-WheelSize],PrimeLimit-WheelSize*i);
          break;
        end;
      end;
      dec(k);
      IF k > primeLimit then
        k := primeLimit;
      wheelPrimes[wpno] := pr;
      myPrimes[pr] := false;

      inc(wpno);
      //the new wheelsize
      WheelSize := k;

      //sieve multiples of the new found prime
      i:= pr;
      i := i*i;
      while i <= k do
      begin
        myPrimes[i] := false;
        inc(i,pr);
      end;
    end;
  until WheelSize >= PrimeLimit;

  //re-insert wheel-primes 1 still stays prime
  while wpno > 0 do
  begin
    dec(wpno);
    myPrimes[wheelPrimes[wpno]] := true;
  end;
  myPrimes[0] := false;
  myPrimes[1] := false;

  BuildWheel  := pr+1;
  writeln;
end;

procedure Sieve;
var
  myPrimes : pBoolean;
  sieveprime,
  fakt : NativeUint;
begin
  setlength(Primes,PrimeLimit+1);
  pPrimes := @Primes[0];
  myPrimes := pPrimes;
//pPrimes[1] = true is needed to stop for sieveprime = 2
// at //Search next smaller possible prime
  sieveprime := BuildWheel;
//alternative here
  //fillchar(pPrimes,SizeOf(pPrimes),chr(ord(true)));sieveprime := 2;
  repeat
    if myPrimes[sieveprime] then
    begin
      //eliminate 'possible prime' multiples of sieveprime
      //must go downwards
      //2*2 would unmark 4 -> 4*2 = 8 wouldnt be unmarked
      fakt := PrimeLimit DIV sieveprime;
      IF fakt < sieveprime then
        BREAK;
      repeat
        //Unmark
        myPrimes[sieveprime*fakt] := false;
        //Search next smaller possible prime
        repeat
          dec(fakt);
        until myPrimes[fakt];
      until fakt < sieveprime;
    end;
    inc(sieveprime);
  until false;
  //remove 1
  myPrimes[1] := false;
end;

procedure Init;
var
  i,val : NativeUint;
Begin
  val := 1;
  For i := low(TNumVal) to High(TNumVal) do
  Begin
    EndDgtFound[i] :=0;
    PotBase[i] := val;
    val := val * Base;
  end;
  TotalCnt := 0;
  EndDgtCnt := 0;
end;

procedure OutConvNum(const NConv:TConvNum);
var
  i : NativeInt;
Begin
  with NConv do
  begin
    writeln(num,MaxIdx:10);
    For i := MaxIdx Downto MaxIdx do
      write(Digits[i]);
    writeln;
    For i := MaxIdx Downto MaxIdx do
      write(NumRest[i]:8);
  end
end;

procedure IncConvertNum(var NConv:TConvNum);
var
  i,k : NativeInt;
Begin
  with NConv do
  begin
    i := 0;
    repeat
      k := Digits[i]+1;
      IF k < Base then
      Begin
        Digits[i] := k;
        BREAK;
      end
      else
      Begin
        Digits[i] := k-Base;
        inc(i);
      end;
    until i > MaxIdx;
    IF i > MaxIdx then
    Begin
      Digits[i] := 1;
      MaxIdx := i;
    end;

    k := num+1;
    i := MaxIdx;
    repeat
      NumRest[i]:= k-Digits[i]*PotBase[i];
      dec(i);
    until i < 0;
    num := k;
  end;
end;

procedure IncConvertNumBase(var NConv:TConvNum);
var
  i,k : NativeInt;
Begin
  with NConv do
  begin
    i := 1;
    Digits[0] := 0;
    repeat
      k := Digits[i]+1;
      IF k < Base then
      Begin
        Digits[i] := k;
        BREAK;
      end
      else
      Begin
        Digits[i] := k-Base;
        inc(i);
      end;
    until i > MaxIdx;
    IF i > MaxIdx then
    Begin
      Digits[i] := 1;
      MaxIdx := i;
    end;
    k := num+Base;
    i := MaxIdx;
    repeat
      NumRest[i]:= k-Digits[i]*PotBase[i];
      dec(i);
    until i < 0;
    num := k;
  end;
end;

Procedure ConvertNum(n: NativeUint;var NConv:TConvNum);
//extract digit position replace by "0" to get NumRest
// 173 -> 170 -> 103 -> 073
var
  i, dgt,n_red,n_div: NativeUint;
begin
  i := 0;
  with NConv do
  Begin
    num := n;
    n_red := n;
    repeat
      n_div := n_red DIV Base;
      dgt := n_red-Base*n_div;
      n_red := n_div;
      Digits[i] := dgt;
      NumRest[i]:= n-dgt*PotBase[i];
      inc(i);
    until (n_red= 0)OR (i > High(TNumVal));
    MaxIdx := i-1;
  end;
end;

procedure InsertFound(dgt,n:NativeUInt);
Begin
  IF EndDgtFound[dgt] = 0 then
  Begin
    EndDgtFound[dgt] := n;
    inc(EndDgtCnt);
  end;
end;

function CheckUnprimable(const ConvNum:TConvNum):boolean;
var
  myPrimes : pBoolean;
  val,dgt,i,dtfac: NativeUint;
Begin
  myPrimes := pPrimes;
  result := false;
  with ConvNum do
  Begin
    //lowest digit. Check only resulting odd numbers num > base
    val := NumRest[0];
    dgt := 1- (val AND 1);
    repeat
      IF myPrimes[val+dgt] then
        EXIT;
      inc(dgt,2);
    until dgt >= Base;

    For i := 1 to MaxIdx do
    Begin
      val := NumRest[i];
      dtfac := PotBase[i];
      IF (val >= BASE) then
      Begin
        IF NOt(Odd(val)) AND NOT(ODD(dtfac))  then
          continue;
        For dgt := 0 to Base-1 do
        Begin
          IF myPrimes[val] then
            EXIT;
          inc(val,dtfac);
        end;
      end
      else
      Begin
        For dgt := 0 to Base-1 do
        Begin
          IF myPrimes[val] then
            EXIT;
          inc(val,dtfac);
        end;
      end
    end;
    inc(TotalCnt);
    result := true;
  end;
end;

var
  n,i,Lmt,Lmt10 : NativeUint;
Begin
  init;
  Sieve;
  n := Base;
  Lmt10 := 10;
  Lmt := Base;
  ConvertNum(n,ConvNum);
  writeln('Base ',ConvNum.num);
  //InsertFound takes a lot of time.So check it as long as neccessary
  while EndDgtCnt <Base do
  Begin
    If CheckUnprimable(ConvNum) then
    Begin
      InsertFound(ConvNum.Digits[0],n);
      For i := 1 to Base-1 do
      Begin
        inc(n);
        IncConvertNum(ConvNum);
        IF CheckUnprimable(ConvNum) then
          InsertFound(ConvNum.Digits[0],n);
      end;
      inc(n);
      IncConvertNum(ConvNum);
    end
    else
    Begin
      inc(n,Base);
      IncConvertNumBase(ConvNum);
    end;
    if n >= Lmt10 then
    Begin
      writeln('There are ',TotalCnt,' unprimable numbers upto ',n);
      Lmt10 := Lmt10*10;
    end;
    if (Base <> 10) AND (n >= Lmt) then
    Begin
      writeln('There are ',TotalCnt,' unprimable numbers upto ',n);
      Lmt := Lmt*Base;
    end;
  end;
  //All found
  repeat
    If CheckUnprimable(ConvNum) then
    Begin
      For i := 1 to Base-1 do
      Begin
        inc(n);
        IncConvertNum(ConvNum);
        CheckUnprimable(ConvNum)
      end;
      inc(n);
      IncConvertNum(ConvNum);
    end
    else
    Begin
      inc(n,Base);
      IncConvertNumBase(ConvNum);
    end;

    if n >= Lmt10 then
    Begin
      writeln('There are ',TotalCnt,' unprimable numbers upto ',n);
      Lmt10 := Lmt10*10;
    end;

    if (Base <> 10) AND (n >= Lmt) then
    Begin
      writeln('There are ',TotalCnt,' unprimable numbers upto ',n);
      Lmt := Lmt*Base;
    end;
  until n >= Limit;
  writeln;
  For i := 0 to Base-1 do
    Writeln ('lowest digit ',i:2,' found first ',EndDgtFound[i]:7);
  writeln;
  writeln('There are ',TotalCnt,' unprimable numbers upto ',n);
  setlength(Primes,0);
end.
{---------------------------------------------------------- 306 user-input-text}
program UserInput(input, output);
var i : Integer;
    s : String;
begin
 write('Enter an integer: ');
 readln(i);
 write('Enter a string: ');
 readln(s)
end.
{-------------------------------------------------- 307 van-der-corput-sequence}
Program VanDerCorput;
{$IFDEF FPC}
  {$MODE DELPHI}
{$ELSE}
  {$APPTYPE CONSOLE}
{$ENDIF}

type
  tvdrCallback = procedure (nom,denom: NativeInt);

{ Base=2
function rev2(n,Pot:NativeUint):NativeUint;
var
  r : Nativeint;
begin
  r := 0;
  while Pot > 0 do
  Begin
    r := r shl 1 OR (n AND 1);
    n := n shr 1;
    dec(Pot);
  end;
  rev2 := r;
end;
}

function reverse(n,base,Pot:NativeUint):NativeUint;
var
  r,c : Nativeint;
begin
  r := 0;
//No need to test n> 0 in this special case, n starting in upper half
  while Pot > 0 do
  Begin
    c := n div base;
    r := n+(r-c)*base;
    n := c;
    dec(Pot);
  end;
  reverse := r;
end;

procedure VanDerCorput(base,count:NativeUint;f:tvdrCallback);
//calculates count nominater and denominater of Van der Corput sequence
// to base
var
 Pot,
 denom,nom,
 i : NativeUint;
Begin
  denom := 1;
  Pot := 0;
  while count > 0 do
  Begin
    IF Pot = 0 then
      f(0,1);
    //start in upper half
    i := denom;
    inc(Pot);
    denom := denom *base;

    repeat
      nom := reverse(i,base,Pot);
      IF count > 0 then
        f(nom,denom)
      else
        break;
      inc(i);
      dec(count);
    until i >= denom;
  end;
end;

procedure vdrOutPut(nom,denom: NativeInt);
Begin
  write(nom,'/',denom,'  ');
end;

var
 i : NativeUint;
Begin
  For i := 2 to 5 do
  Begin
    write(' Base ',i:2,' :');
    VanDerCorput(i,9,@vdrOutPut);
    writeln;
  end;
end.
{--------------------------------------------------------- 308 van-eck-sequence}
program VanEck;
{
* A:  The first term is zero.
    Repeatedly apply:
        If the last term is *new* to the sequence so far then:
B:          The next term is zero.
        Otherwise:
C:          The next term is how far back this last term occured previousely.}
uses
  sysutils;
const
  MAXNUM = 32381775;//1000*1000*1000;
  MAXSEENIDX = (1 shl 7)-1;
var
  PosBefore : array of UInt32;
  LastSeen  : array[0..MAXSEENIDX]of UInt32;// circular buffer
  SeenIdx,HaveSeen : Uint32;

procedure OutSeen(Cnt:NativeInt);
var
  I,S_Idx : NativeInt;
Begin
  IF Cnt > MAXSEENIDX then
    Cnt := MAXSEENIDX;
  If  Cnt > HaveSeen  then
    Cnt := HaveSeen;
  S_Idx := SeenIdx;
  S_Idx := (S_Idx-Cnt);
  IF S_Idx < 0 then
    inc(S_Idx,MAXSEENIDX);
  For i := 1 to Cnt do
  Begin
    write(' ',LastSeen[S_Idx]);
    S_Idx:= (S_Idx+1) AND MAXSEENIDX;
  end;
  writeln;
end;

procedure Test(MaxTestCnt: Uint32);
var
  i, actnum, Posi, S_Idx: Uint32;
  {$IFDEF FPC}
  pPosBef, pSeen: pUint32;
  {$ELSE}
  pPosBef, pSeen: array of UInt32;
  {$ENDIF}
begin
  HaveSeen := 0;
  if MaxTestCnt > MAXNUM then
    EXIT;

  Fillchar(LastSeen, SizeOf(LastSeen), #0);
  //setlength and clear
  setlength(PosBefore, 0);
  setlength(PosBefore, MaxTestCnt);

 {$IFDEF FPC}
  pPosBef := @PosBefore[0];
  pSeen := @LastSeen[0];
 {$ELSE}
  SetLength(pSeen, SizeOf(LastSeen));
  setlength(pPosBef, MaxTestCnt);
  move(PosBefore[0], pPosBef[0], length(pPosBef));
  move(LastSeen[0], pSeen[0], length(pSeen));
 {$ENDIF}

  S_Idx := 0;
  i := 1;
  actnum := 0;
  repeat
    // save value
    pSeen[S_Idx] := actnum;
    S_Idx := (S_Idx + 1) and MAXSEENIDX;
    //examine new value often out of cache
    Posi := pPosBef[actnum];
    pPosBef[actnum] := i;
//  if Posi=0 ? actnum = 0:actnum = i-Posi
    if Posi = 0 then
      actnum := 0
    else
      actnum := i - Posi;
    inc(i);
  until i > MaxTestCnt;
  HaveSeen := i - 1;
  SeenIdx := S_Idx;

  {$IFNDEF FPC}

  move(pPosBef[0], PosBefore[0], length(pPosBef));
  move(pSeen[0], LastSeen[0], length(pSeen));
  {$ENDIF}
end;

Begin
  Test(10)  ; OutSeen(10000);
  Test(1000); OutSeen(10);
  Test(MAXNUM); OutSeen(28);
  setlength(PosBefore,0);
end.
{---------------------------------------------------------- 309 vector-products}
Program VectorProduct (output);

type
  Tvector = record
    x, y, z: double
  end;

function dotProduct(a, b: Tvector): double;
begin
  dotProduct := a.x*b.x + a.y*b.y + a.z*b.z;
end;

function crossProduct(a, b: Tvector): Tvector;
begin
  crossProduct.x := a.y*b.z - a.z*b.y;
  crossProduct.y := a.z*b.x - a.x*b.z;
  crossProduct.z := a.x*b.y - a.y*b.x;
end;

function scalarTripleProduct(a, b, c: Tvector): double;
begin
  scalarTripleProduct := dotProduct(a, crossProduct(b, c));
end;

function vectorTripleProduct(a, b, c: Tvector): Tvector;
begin
  vectorTripleProduct := crossProduct(a, crossProduct(b, c));
end;

procedure printVector(a: Tvector);
begin
  writeln(a.x:15:8, a.y:15:8, a.z:15:8);
end;

var
  a: Tvector = (x: 3; y:  4; z:  5);
  b: Tvector = (x: 4; y:  3; z:  5);
  c: Tvector = (x:-5; y:-12; z:-13);

begin
  write('a: '); printVector(a);
  write('b: '); printVector(b);
  write('c: '); printVector(c);
  writeln('a . b: ', dotProduct(a,b):15:8);
  write('a x b: '); printVector(crossProduct(a,b));
  writeln('a . (b x c): ', scalarTripleProduct(a,b,c):15:8);
  write('a x (b x c): '); printVector(vectorTripleProduct(a,b,c));
end.
{---------------------------------------------------------- 310 vigen-re-cipher}
// The Vigenere cipher in reasonably standard Pascal
// <no library functions: all conversions hand-coded>
PROGRAM Vigenere;

// get a letter's alphabetic position (A=0)
FUNCTION letternum(letter: CHAR): BYTE;
   BEGIN
      letternum := (ord(letter)-ord('A'));
   END;

// convert a character to uppercase
FUNCTION uch(ch: CHAR): CHAR;
   BEGIN
      uch := ch;
      IF ch IN ['a'..'z'] THEN
         uch := chr(ord(ch) AND $5F);
   END;

// convert a string to uppercase
FUNCTION ucase(str: STRING): STRING;
   VAR i: BYTE;
   BEGIN
      ucase := '';
      FOR i := 1 TO Length(str) DO
         ucase := ucase + uch(str[i]);
   END;

// construct a Vigenere-compatible string:
// uppercase; no spaces or punctuation.
FUNCTION vstr(pt: STRING): STRING;
   VAR c: Cardinal;
      s: STRING;
   BEGIN
      vstr:= '';
      s  := ucase(pt);
      FOR c := 1 TO Length(s) DO BEGIN
         IF s[c] IN ['A'..'Z'] THEN
            vstr += s[c];
      END;
   END;

// construct a repeating Vigenere key
FUNCTION vkey(pt, key: STRING): STRING;
   VAR c,n: Cardinal;
      k  : STRING;
   BEGIN
      k    := vstr(key);
      vkey := '';
      FOR c := 1 TO Length(pt) DO BEGIN
         n := c mod Length(k);
         IF n>0 THEN vkey += k[n] ELSE vkey += k[Length(k)];
      END;
   END;

// Vigenere encipher
FUNCTION enVig(pt,key:STRING): STRING;
   VAR ct: STRING;
      c,n    : Cardinal;
   BEGIN
      ct := pt;
      FOR c := 1 TO Length(pt) DO BEGIN
         n := letternum(pt[c])+letternum(key[c]);
         n := n mod 26;
         ct[c]:=chr(ord('A')+n);
      END;
      enVig := ct;
   END;

// Vigenere decipher
FUNCTION deVig(ct,key:STRING): STRING;
   VAR pt   : STRING;
      c,n   : INTEGER;
   BEGIN
      pt := ct;
      FOR c := 1 TO Length(ct) DO BEGIN
         n := letternum(ct[c])-letternum(key[c]);
         IF n<0 THEN n:=26+n;
         pt[c]:=chr(ord('A')+n);
      END;
      deVig := pt;
   END;


VAR   key: STRING = 'Vigenere cipher';
      msg: STRING = 'Beware the Jabberwock! The jaws that bite, the claws that catch!';
      vtx: STRING = '';
      ctx: STRING = '';
      ptx: STRING = '';

BEGIN
   // make Vigenere-compatible
   vtx := vstr(msg);
   key := vkey(vtx,key);
   // Vigenere encipher / decipher
   ctx := enVig(vtx,key);
   ptx := deVig(ctx,key);
   // display results
   Writeln('Message      : ',msg);
   Writeln('Plaintext    : ',vtx);
   Writeln('Key          : ',key);
   Writeln('Ciphertext   : ',ctx);
   Writeln('Plaintext    : ',ptx);
END.

{----------------------------------------- 311 walk-a-directory-non-recursively}
{$H+}

program Walk;

uses SysUtils;

var Res: TSearchRec;
    Pattern, Path, Name: String;
    FileAttr: LongInt;
    Attr: Integer;

begin
   Write('File pattern: ');
   ReadLn(Pattern);            { For example .\*.pas }

   Attr := faAnyFile;
   if FindFirst(Pattern, Attr, Res) = 0 then
   begin
      Path := ExtractFileDir(Pattern);
      repeat
         Name := ConcatPaths([Path, Res.Name]);
         FileAttr := FileGetAttr(Name);
         if FileAttr and faDirectory = 0 then
         begin
            { Do something with file name }
            WriteLn(Name);
         end
      until FindNext(Res) <> 0;
   end;
   FindClose(Res);
end.
{------------------------------------------- 312 water-collected-between-towers}
program RainInFlatland;

{$IFDEF FPC} // Free Pascal
  {$MODE Delphi}
{$ELSE}      // Delphi
  {$APPTYPE CONSOLE}
{$ENDIF}

uses SysUtils;
type THeight = integer;
// Heights could be f.p., but some changes to the code would be needed:
// (1) the inc function isn't available for f.p. values,
// (2) the print-out would need extra formatting.

{------------------------------------------------------------------------------
Find highest tower; if there are 2 or more equal highest, choose any.
Then fill troughs so that on going towards the highest tower, from the
  left-hand or right-hand end, there are no steps down.
Amount of filling required equals amount of water collected.
}
function FillTroughs( const h : array of THeight) : THeight;
var
  m, i, i_max : integer;
  h_max : THeight;
begin
  result := 0;
  m := High( h); // highest index, 0-based; there are m + 1 towers
  if (m <= 1) then exit; // result = 0 if <= 2 towers

  // Find highest tower and its index in the array.
  h_max := h[0];
  i_max := 0;
  for i := 1 to m do begin
    if h[i] > h_max then begin
      h_max := h[i];
      i_max := i;
    end;
  end;
  // Fill troughs from left-hand end to highest tower
  h_max := h[0];
  for i := 1 to i_max - 1 do begin
    if h[i] < h_max then inc( result, h_max - h[i])
                    else h_max := h[i];
  end;
  // Fill troughs from right-hand end to highest tower
  h_max := h[m];
  for i := m - 1 downto i_max + 1 do begin
    if h[i] < h_max then inc( result, h_max - h[i])
                    else h_max := h[i];
  end;
end;

{-------------------------------------------------------------------------
Wrapper for the above: finds amount of water, and prints input and result.
}
procedure CalcAndPrint( h : array of THeight);
var
  water : THeight;
  j : integer;
begin
  water := FillTroughs( h);
  Write( water:5, ' <-- [');
  for j := 0 to High( h) do begin
    Write( h[j]);
    if j < High(h) then Write(', ') else WriteLn(']');
  end;
end;

{---------------------------------------------------------------------------
Main routine.
}
begin
  CalcAndPrint([1,5,3,7,2]);
  CalcAndPrint([5,3,7,2,6,4,5,9,1,2]);
  CalcAndPrint([2,6,3,5,2,8,1,4,2,2,5,3,5,7,4,1]);
  CalcAndPrint([5,5,5,5]);
  CalcAndPrint([5,6,7,8]);
  CalcAndPrint([8,7,7,6]);
  CalcAndPrint([6,7,10,7,6]);
end.
{--------------------------------------------------------------- 313 word-wheel}
program WordWheel;

{$mode objfpc}{$H+}

uses
  SysUtils;

const
  WheelSize = 9;
  MinLength = 3;
  WordListFN = 'unixdict.txt';

procedure search(Wheel : string);
var
  Allowed, Required, Available, w : string;
  Len, i, p : integer;
  WordFile : TextFile;
  Match : boolean;
begin
  AssignFile(WordFile, WordListFN);
  try
    Reset(WordFile);
  except
    writeln('Could not open dictionary file: ' + WordListFN);
    exit;
  end;
  Allowed := LowerCase(Wheel);
  Required := copy(Allowed, 5, 1);  { central letter is required }
  while not eof(WordFile) do
    begin
      readln(WordFile, w);
      Len := length(w);
      if (Len < MinLength) or (Len > WheelSize) then continue;
      if pos(Required, w) = 0 then continue;
      Available := Allowed;
      Match := True;
      for i := 1 to Len do
        begin
          p := pos(w[i], Available);
          if p > 0 then
            { prevent re-use of letter }
            delete(Available, p, 1)
          else
            begin
              Match := False;
              break;
            end;
        end;
      if Match then
        writeln(w);
    end;
  CloseFile(WordFile);
end;

{ exercise the procedure }
begin
  search('NDE' + 'OKG' + 'ELW');
end.
{------------------------------------------ 314 write-language-name-in-3d-ascii}
program WritePascal;

const
  i64: int64 = 1055120232691680095; (* This defines "Pascal" *)
  cc: array[-1..15] of string = (* Here are all string-constants *)
    ('_______v---',
    '__', '\_', '___', '\__',
    '  ', '  ', '   ', '   ',
    '/ ', '  ', '_/ ', '\/ ',
    ' _', '__', '  _', '  _');
var
  x, y: integer;

begin
  for y := 0 to 7 do
  begin
    Write(StringOfChar(cc[(not y and 1) shl 2][1], 23 - y and 6));
    Write(cc[((i64 shr (y div 2)) and 1) shl 3 + (not y and 1) shl 2 + 2]);
    for x := 0 to 15 do
      Write(cc[((i64 shr ((x and 15) * 4 + y div 2)) and 1) +
        ((i64 shr (((x + 1) and 15) * 4 + y div 2)) and 1) shl 3 +
        (x mod 3) and 2 + (not y and 1) shl 2]);
    writeln(cc[1 + (not y and 1) shl 2] + cc[(not y and 1) shl 3 - 1]);
  end;
end.
{------------------------------------------------------------- 315 yin-and-yang}
//Written for TU Berlin
//Compiled with fpc
Program yingyang;
Uses Math;
const
 scale_x=2;
 scale_y=1;
 black='#';
 white='.';
 clear=' ';

function inCircle(centre_x:Integer;centre_y:Integer;radius:Integer;x:Integer;y:Integer):Boolean ;
begin
inCircle:=power(x-centre_x,2)+power(y-centre_y,2)<=power(radius,2);
end;

function bigCircle(radius:Integer;x:Integer;y:Integer):Boolean ;
begin
bigCircle:=inCircle(0,0,radius,x,y);
end;

function whiteSemiCircle(radius:Integer;x:Integer;y:Integer):Boolean ;
begin
whiteSemiCircle:=inCircle(0,radius div 2 ,radius div 2,x,y);
end;


function smallBlackCircle(radius:Integer;x:Integer;y:Integer):Boolean ;
begin
smallBlackCircle:=inCircle(0,radius div 2 ,radius div 6,x,y);
end;

function blackSemiCircle(radius:Integer;x:Integer;y:Integer):Boolean ;
begin
blackSemiCircle:=inCircle(0,-radius div 2 ,radius div 2,x,y);
end;

function smallWhiteCircle(radius:Integer;x:Integer;y:Integer):Boolean ;
begin
smallWhiteCircle:=inCircle(0,-radius div 2 ,radius div 6,x,y);
end;

var
radius,sy,sx,x,y:Integer;
begin
   writeln('Please type a radius:');
   readln(radius);
   if radius<3 then begin writeln('A radius bigger than 3');halt end;
   sy:=round(radius*scale_y);
   while(sy>=-round(radius*scale_y)) do begin
      sx:=-round(radius*scale_x);
      while(sx<=round(radius*scale_x)) do begin
        x:=sx div scale_x;
        y:=sy div scale_y;
        if bigCircle(radius,x,y) then begin
                if (whiteSemiCircle(radius,x,y)) then if smallblackCircle(radius,x,y) then write(black) else write(white) else if blackSemiCircle(radius,x,y) then if smallWhiteCircle(radius,x,y) then write(white) else write(black) else if x>0 then write(white) else write(black);
                end
              else write(clear);
        sx:=sx+1
      end;
      writeln;
      sy:=sy-1;
   end;
end.


{----------------------------------------- 316 zeckendorf-number-representation}
program ZeckendorfRep_RC;

{$mode objfpc}{$H+}

uses SysUtils;

// Return Zeckendorf representation of the passed-in cardinal.
function ZeckRep( C : cardinal) : string;
var
  a, b, rem : cardinal;
  j, nrDigits: integer;
begin
  // Case C = 0 has to be treated specially
  if (C = 0) then begin
    result := '0';
    exit;
  end;
  // Find largest Fibonacci number not exceeding C
  a := 1;
  b := 1;
  nrDigits := 1;
  rem := C - 1;
  while (rem >= b) do begin
    dec( rem, b);
    inc( a, b);
    b := a - b;
    inc( nrDigits);
  end;
  // Fill in digits by reversing Fibonacci back to start
  SetLength( result, nrDigits);
  j := 1;
  result[j] := '1';
  for j := 2 to nrDigits do begin
    if (rem >= b) then begin
      dec( rem, b);
      result[j] := '1';
    end
    else result[j] := '0';
    b := a - b;
    dec( a, b);
  end;
//  Assert((a = 1) and (b = 1)); // optional check
end;

// Main routine
var
  C : cardinal;
begin
  for C := 1 to 20 do
    WriteLn( SysUtils.Format( '%2d: %s', [C, ZeckRep(C)]));
end.
{--------------------------------------------------- 317 zero-to-the-zero-power}
program ZToZ;
uses
  math;
begin
  write('0.0 ^ 0 :',IntPower(0.0,0):4:2);
  writeln('   0.0 ^ 0.0 :',Power(0.0,0.0):4:2);
end.
{--------------------------------------------------------- 318 zig-zag-matrix-1}
Program zigzag( input, output );

const
  size = 5;
var
  zzarray: array [1..size, 1..size] of integer;
  element, i, j: integer;
  direction: integer;
  width, n: integer;

begin
  i := 1;
  j := 1;
  direction := 1;
  for element := 0 to (size*size) - 1 do
  begin
    zzarray[i,j] := element;
    i := i + direction;
    j := j - direction;
    if (i = 0) then
      begin
        direction := -direction;
        i := 1;
        if (j > size) then
        begin
          j := size;
          i := 2;
        end;
      end
    else if (i > size) then
      begin
        direction := -direction;
        i := size;
        j := j + 2;
      end
    else if (j = 0) then
      begin
        direction := -direction;
        j := 1;
        if (i > size) then
        begin
          j := 2;
          i := size;
        end;
      end
    else if (j > size) then
      begin
        direction := -direction;
        j := size;
        i := i + 2;
      end;
  end;

  width := 2;
  n     := size;
  while (n > 0) do
  begin
    width := width + 1;
    n     := n div 10;
  end;
  for j := 1 to size do
  begin
    for i := 1 to size do
      write(zzarray[i,j]:width);
    writeln;
  end;
end.
{--------------------------------------------------------- 319 zig-zag-matrix-2}
Program zigzag;
{$APPTYPE CONSOLE}

const
  size = 5;

  var
  s: array [1..size, 1..size] of integer;
  i, j, d, max, n: integer;

begin
    i := 1;
    j := 1;
    d := -1;
    max := 0;
    n := 0;
    max := size * size;

  for n := 1 to (max div 2)+1 do begin
      s[i,j] := n;
      s[size - i + 1,size - j + 1] := max - n + 1;
      i:=i+d;
      j:=j-d;
      if i < 1 then begin
        inc(i);
        d := -d;
        end else if j < 1 then begin
        inc(j);
        d := -d;
      end;
    end;

  for j := 1 to size do
  begin
    for i := 1 to size do
      write(s[i,j]:4);
    writeln;
  end;

end.
