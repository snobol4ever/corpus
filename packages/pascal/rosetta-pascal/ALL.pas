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
{------------------------------------------------ 2 4-rings-or-4-squares-puzzle}
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
{---------------------------------------------------------------------- 3 a_b-3}
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
{----------------------------------------------------- 4 abelian-sandpile-model}
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
{--------------------------------------------------------- 5 ackermann-function}
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
{------------------------------------------------------------ 6 additive-primes}
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
{----------------------------------------------------------- 7 amicable-pairs-2}
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
{----------------------------------------------------------- 8 amicable-pairs-3}
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
{-------------------------------------------------------- 9 anonymous-recursion}
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
{--------------------------------------------------------------- 10 anti-primes}
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
{------------------------------------ 11 arithmetic-geometric-mean-calculate-pi}
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
{-------------------------------------------------------- 12 arithmetic-numbers}
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
{---------------------------------------------------------- 13 ascending-primes}
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
{------------------------------------------------ 14 averages-arithmetic-mean-1}
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
{----------------------------------------------------------- 15 averages-median}
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
{-------------------------------------------- 16 averages-simple-moving-average}
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
{----------------------------------------------- 17 b-zier-curves-intersections}
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
{----------------------------------------------------------- 18 babbage-problem}
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
{-------------------------------------------------------------- 19 benfords-law}
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
{----------------------------------------------------------- 20 binary-digits-1}
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
{----------------------------------------------- 21 bioinformatics-base-count-1}
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
{------------------------------------------- 22 bioinformatics-global-alignment}
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
{-------------------------------------------------------- 23 bitwise-operations}
var
 a, b: integer;
begin
 a := 10; { binary 1010 }
 b := 12; { binary 1100 }
 writeln('a and b = ', a and b); {  8 = 1000 }
 writeln('a or b  = ', a or b);  { 14 = 1110 }
 writeln('a xor b = ', a xor b)  {  6 = 0110 }
end.
{------------------------------------------------- 24 burrows-wheeler-transform}
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
{------------------------------------------------ 25 calculating-the-value-of-e}
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
{----------------------------------------------------------- 26 catalan-numbers}
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
{-------------------------------------------------------------- 27 catamorphism}
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
{------------------------------------------------------ 28 closest-pair-problem}
program closestPoints;
{$IFDEF FPC}
   {$MODE Delphi}
{$ENDIF}
const
  PointCnt = 10000;//31623;
type
  TdblPoint = Record
               ptX,
               ptY : double;
              end;
  tPtLst =  array of TdblPoint;

  tMinDIstIdx  = record
                   md1,
                   md2 : NativeInt;
                 end;

function ClosPointBruteForce(var  ptl :tPtLst):tMinDIstIdx;
Var
  i,j,k : NativeInt;
  mindst2,dst2: double; //square of distance, no need to sqrt
  p0,p1 : ^TdblPoint;   //using pointer, since calc of ptl[?] takes much time
Begin
  i := Low(ptl);
  j := High(ptl);
  result.md1 := i;result.md2 := j;
  mindst2 := sqr(ptl[i].ptX-ptl[j].ptX)+sqr(ptl[i].ptY-ptl[j].ptY);
  repeat
    p0 := @ptl[i];
    p1 := p0; inc(p1);
    For k := i+1 to j do
    Begin
      dst2:= sqr(p0^.ptX-p1^.ptX)+sqr(p0^.ptY-p1^.ptY);
      IF mindst2 > dst2  then
      Begin
        mindst2 :=  dst2;
        result.md1 := i;
        result.md2 := k;
      end;
      inc(p1);
    end;
    inc(i);
  until i = j;
end;

var
  PointLst :tPtLst;
  cloPt : tMinDIstIdx;
  i : NativeInt;
Begin
  randomize;
  setlength(PointLst,PointCnt);
  For i := 0 to PointCnt-1 do
    with PointLst[i] do
    Begin
      ptX := random;
      ptY := random;
    end;
  cloPt:=  ClosPointBruteForce(PointLst) ;
  i := cloPt.md1;
  Writeln('P[',i:4,']= x: ',PointLst[i].ptX:0:8,
                     ' y: ',PointLst[i].ptY:0:8);
  i := cloPt.md2;
  Writeln('P[',i:4,']= x: ',PointLst[i].ptX:0:8,
                     ' y: ',PointLst[i].ptY:0:8);
end.
{----------------------------------------------------------------- 29 code-golf}
program p(output);begin write('Code Golf')end.
{-------------------------------------------------------------- 30 combinations}
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
{--------------------------------------------------------------- 31 convex-hull}
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
{------------------------------------------------------ 32 conways-game-of-life}
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
{-------------------- 33 count-how-many-vowels-and-consonants-occur-in-a-string}
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
{---------------------------------------------------------- 34 count-in-factors}
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
{------------------------------------------------------- 35 count-the-coins-0-1}
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
{----------------------------------------------------------- 36 count-the-coins}
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
{------------------------------------------------------------- 37 cousin-primes}
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
{--------------------------------------- 38 create-an-object-at-a-given-address}
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
{------------------------- 39 determine-if-a-string-has-all-the-same-characters}
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
{---------------------------------------- 40 determine-if-two-triangles-overlap}
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
{-------------------------------------------------------------- 41 digital-root}
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
{----------------------------------------------------- 42 dijkstras-algorithm-1}
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
{------------------------------ 43 distribution-of-0-digits-in-factorial-series}
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
{------------------------------------------------------------- 44 draw-a-cuboid}
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
{---------------------------------------------------- 45 dynamic-variable-names}
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
{------------------------------------------------------- 46 equilibrium-index-1}
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
{------------------------------------------------------- 47 equilibrium-index-2}
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
{---------------------------------------------------------- 48 esthetic-numbers}
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
{-------------------------------------------------------------- 49 euler-method}
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

{------------------------------------------- 50 eulers-sum-of-powers-conjecture}
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
{------------------------------------------------ 51 execute-a-markov-algorithm}
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
{--------------------------------------------------------------- 52 factorial-3}
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


{--------------------------------------------------- 53 factors-of-an-integer-1}
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
{------------------------------------------------------------ 54 farey-sequence}
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
{-------------------------------------------------------- 55 faulhabers-formula}
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
{------------------------------------------------------ 56 fibonacci-sequence-7}
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
{---------------------------------------------- 57 find-the-missing-permutation}
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
{----------------------------------------------------------- 58 floyds-triangle}
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
{-------------------------------------------------------- 59 forward-difference}
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
{---------------------------------------------------------- 60 gapful-numbers-1}
program gapful;


{$IFDEF FPC}
   {$MODE DELPHI}{$OPTIMIZATION ON,ALL}
{$ELSE}
  {$APPTYPE CONSOLE}
{$ENDIF}

uses
  sysutils // IntToStr
{$IFDEF FPC}
  ,strUtils // Numb2USA aka commatize
{$ENDIF};

const
  cIdx = 5;
  starts: array[0..cIdx - 1] of Uint64 = (100, 1000 * 1000, 10 * 1000 * 1000,
    1000 * 1000 * 1000, 7123);
  counts: array[0..cIdx - 1] of Uint64 = (30, 15, 15, 10, 25);
  //100|  74623687  =>    1000*1000*1000
  //100| 746236131  => 10*1000*1000*1000
  //100|7462360431  =>100*1000*1000*1000
  Base = 10;

var
  ModsHL: array[0..99] of NativeUint;
  Pow10: Uint64;    //global, seldom used
  countLmt: NativeUint; //Uint64; only for extreme counting

{$IFNDEF FPC}

function Numb2USA(const S: string): string;
var
  i, NA: Integer;
begin
  i := Length(S);
  Result := S;
  NA := 0;
  while (i > 0) do
  begin
    if ((Length(Result) - i + 1 - NA) mod 3 = 0) and (i <> 1) then
    begin
      insert(',', Result, i);
      inc(NA);
    end;
    Dec(i);
  end;
end;
{$ENDIF}

procedure OutHeader(i: NativeInt);
begin
  writeln('First ', counts[i], ', gapful numbers starting at ', Numb2USA(IntToStr
    (starts[i])));
end;

procedure OutNum(n: Uint64);
begin
  write(' ', n);
end;

procedure InitMods(n: Uint64; H_dgt: NativeUint);
//calculate first mod of n, when it reaches n
var
  i, j: NativeInt;
begin
  j := H_dgt; //= H_dgt+i
  for i := 0 to Base - 1 do
  begin
    ModsHL[j] := n mod j;
    inc(n);
    inc(j);
  end;
end;

procedure InitMods2(n: Uint64; H_dgt, L_Dgt: NativeUint);
//calculate first mod of n, when it reaches n
//beware, that the lower n are reached in the next base round
var
  i, j: NativeInt;
begin
  j := H_dgt;
  n := n - L_Dgt;
  for i := 0 to L_Dgt - 1 do
  begin
    ModsHL[j] := (n + base) mod j;
    inc(n);
    inc(j);
  end;
  for i := L_Dgt to Base - 1 do
  begin
    ModsHL[j] := n mod j;
    inc(n);
    inc(j);
  end;
end;

procedure Main(TestNum: Uint64; Cnt: NativeUint);
var
  LmtNextNewHiDgt: Uint64;
  tmp, LowDgt, GapNum: NativeUint;
begin
  countLmt := Cnt;
  Pow10 := Base * Base;
  LmtNextNewHiDgt := Base * Pow10;
  while LmtNextNewHiDgt <= TestNum do
  begin
    Pow10 := LmtNextNewHiDgt;
    LmtNextNewHiDgt := LmtNextNewHiDgt * Base;
  end;
  LowDgt := TestNum mod Base;
  GapNum := TestNum div Pow10;
  LmtNextNewHiDgt := (GapNum + 1) * Pow10;
  GapNum := Base * GapNum;
  if LowDgt <> 0 then
    InitMods2(TestNum, GapNum, LowDgt)
  else
    InitMODS(TestNum, GapNum);

  GapNum := GapNum + LowDgt;
  repeat
//     if TestNum MOD (GapNum) = 0 then
    if ModsHL[GapNum] = 0 then
    begin
      tmp := countLmt - 1;
      if tmp < 32 then
        OutNum(TestNum);
      countLmt := tmp;
      // Test and BREAK only if something has changed
      if tmp = 0 then
        BREAK;
    end;
    tmp := Base + ModsHL[GapNum];
    //translate into "if-less" version 3.35s -> 1.85s
    //bad branch prediction :-(
    //if tmp >= GapNum then tmp -= GapNum;
    tmp := tmp - (-ORD(tmp >= GapNum) and GapNum);
    ModsHL[GapNum] := tmp;

    TestNum := TestNum + 1;
    tmp := LowDgt + 1;

    inc(GapNum);
    if tmp >= Base then
    begin
      tmp := 0;
      GapNum := GapNum - Base;
    end;
    LowDgt := tmp;
    //next Hi Digit
    if TestNum >= LmtNextNewHiDgt then
    begin
      LowDgt := 0;
      GapNum := GapNum + Base;
      LmtNextNewHiDgt := LmtNextNewHiDgt + Pow10;
      //next power of 10
      if GapNum >= Base * Base then
      begin
        Pow10 := Pow10 * Base;
        LmtNextNewHiDgt := 2 * Pow10;
        GapNum := Base;
      end;
      initMods(TestNum, GapNum);
    end;
  until false;
end;

var
  i: integer;

begin
  for i := 0 to High(starts) do
  begin
    OutHeader(i);
    Main(starts[i], counts[i]);
    writeln(#13#10);
  end;
  {$IFNDEF LINUX}  readln; {$ENDIF}
end.
{---------------------------------------------------------- 61 gapful-numbers-2}
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
{------------------------------------------------------------ 62 generic-swap-1}
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
{------------------------------------------------------------ 63 generic-swap-2}
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
{------------------------------------------------- 64 greatest-common-divisor-1}
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

{--------------------------------------------------- 65 greatest-common-divisor}
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
{------------------------------------------------ 66 greatest-subsequential-sum}
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
{---------------------------------------------------------- 67 guess-the-number}
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
{-------------------------------------------------------- 68 hailstone-sequence}
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
{---------------------------------------------- 69 hello-world-newline-omission}
program NewLineOmission(output);

begin
  write('Goodbye, World!');
end.
{---------------------------------------------------------- 70 hello-world-text}
program byeworld;
begin
 writeln('Hello world!');
end.
{-------------------------------------------------------- 71 heronian-triangles}
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
{-------------------------------------------------- 72 higher-order-functions-1}
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
{-------------------------------------------------- 73 higher-order-functions-2}
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
{----------------------------------------------------- 74 hofstadter-q-sequence}
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
{--------------------------------------------------- 75 hopcroft-karp-algorithm}
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
{------------------------------------------- 76 horizontal-sundial-calculations}
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
{-------------------------------------------------------- 77 host-introspection}
program HostIntrospection(output);
begin
  writeln('Pointer size: ', SizeOf(Pointer), ' byte, i.e. ', SizeOf(Pointer)*8, ' bit.');
{ NtoBE converts from native endianess to big endianess }
  if 23453 = NtoBE(23453) then
    writeln('This host is big endian.')
  else
    writeln('This host is little endian.');
end.
{-------------------------------------------------------------------- 78 http-1}
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
{----------------------------------------------------------- 79 identity-matrix}
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
{-------------------------------------------------------- 80 integer-comparison}
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
{------------------------------------------------------------ 81 jensens-device}
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
{---------------------------------------------------------------------- 82 json}
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
{-------------------------------------------------- 83 knapsack-problem-bounded}
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
{----------------------------------------------- 84 knapsack-problem-continuous}
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
{------------------------------------------------------------------ 85 kosaraju}
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
{--------------------------------------------- 86 largest-proper-divisor-of-n-1}
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
{--------------------------------------------- 87 largest-proper-divisor-of-n-2}
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
{------------------------------------------------- 88 last-friday-of-each-month}
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
{------------------- 89 launch-rocket-with-countdown-and-acceleration-in-stdout}
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
{----------------------------------------------------- 90 least-common-multiple}
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
{------------------------------------------ 91 legendre-prime-counting-function}
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
{----------------------------------------------------- 92 lempel-ziv-complexity}
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
{--------------------------------------------- 93 linear-congruential-generator}
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
{----------------------------------------------------------------- 94 long-year}
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
{-------------------------------------------- 95 longest-increasing-subsequence}
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
{--------------------------------------------------- 96 look-and-say-sequence-1}
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
{--------------------------------------------------- 97 look-and-say-sequence-2}
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
{------------------------------------------------------------ 98 loops-do-while}
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
{----------------------------------------------------------------- 99 loops-for}
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
{---------------------------------------------------- 100 loops-n-plus-one-half}
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
{-------------------------------------------------------------- 101 loops-while}
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
{------------------------------------------------------ 102 lucas-lehmer-test-1}
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
{---------------------------------------------------------- 103 ludic-numbers-1}
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
{---------------------------------------------------------- 104 ludic-numbers-2}
program ludic;
{$IFDEF FPC}{$MODE DELPHI}{$ELSE}{$APPTYPE CONSOLE}{$ENDIF}
uses
  sysutils;
const
  MAXNUM =21511;// > 1
  //1561333;-> 100000 ludic numbers
  //1561243,1561291,1561301,1561307,1561313,1561333
type
  tarrLudic = array of byte;
  tLudics = array of LongWord;

var
  Ludiclst : tarrLudic;

procedure Firsttwentyfive;
var
  i,actLudic : NativeInt;
Begin
  writeln('First 25 ludic numbers');
  actLudic:= 1;
  For i := 1 to 25 do
  Begin
    write(actLudic:3,',');
    inc(actLudic,Ludiclst[actLudic]);
    IF i MOD 5 = 0 then
      writeln(#8#32);
  end;
  writeln;
end;

procedure CountBelowOneThousand;
var
  cnt,actLudic : NativeInt;
Begin
  write('Count of ludic numbers below 1000 = ');
  actLudic:= 1;
  cnt := 1;
  while actLudic <= 1000 do
  Begin
    inc(actLudic,Ludiclst[actLudic]);
    inc(cnt);
  end;
  dec(cnt);
  writeln(cnt);writeln;
end;

procedure Show2000til2005;
var
  cnt,actLudic : NativeInt;
Begin
  writeln('ludic number #2000 to #2005');
  actLudic:= 1;
  cnt := 1;
  while cnt < 2000 do
  Begin
    inc(actLudic,Ludiclst[actLudic]);
    inc(cnt);
  end;
  while cnt < 2005 do
  Begin
    write(actLudic,',');
    inc(actLudic,Ludiclst[actLudic]);
    inc(cnt);
  end;
  writeln(actLudic);writeln;
end;

procedure ShowTriplets;
var
  actLudic,lastDelta : NativeInt;
Begin
  writeln('ludic numbers triplets below 250');
  actLudic:= 1;
  while actLudic < 250-5 do
  Begin
    IF (Ludiclst[actLudic]   <> 0) AND
       (Ludiclst[actLudic+2] <> 0) AND
       (Ludiclst[actLudic+6] <> 0) then
      writeln('{',actLudic,'|',actLudic+2,'|',actLudic+6,'} ');
    inc(actLudic);
  end;
  writeln;
end;

procedure CheckMaxdist;
var
  actLudic,Delta,MaxDelta : NativeInt;
Begin
  MaxDelta := 0;
  actLudic:= 1;
  repeat
    delta := Ludiclst[actLudic];
    inc(actLudic,delta);
    IF MAxDelta<delta then
       MAxDelta:= delta;
  until actLudic>= MAXNUM;
  writeln('MaxDist ',MAxDelta);writeln;
end;

function GetLudics:tLudics;
//Array of byte containing the distance to next ludic number
//eliminated numbers are set to 0
var
  i,actLudic,actcnt,delta,actPos,lastPos,ludicCnt: NativeInt;
Begin
  setlength(Ludiclst,MAXNUM+1);
  For i := MAXNUM downto 0 do
    Ludiclst[i]:= 1;
  actLudic := 1;
  ludicCnt := 1;

  repeat
    inc(actLudic,Ludiclst[actLudic]);
    IF actLudic> MAXNUM then
      BREAK;
    inc(ludicCnt);
    actPos := actLudic;
    actcnt := 0;
    // Only if there are enough ludics left
    IF MaxNum-ludicCnt-actPos > actPos then
    Begin
    //eliminate every element in actLudic-distance
      //delta so i can set Ludiclst[actpos] to zero
      delta := Ludiclst[actpos];
      repeat
        lastPos := actPos;
        inc(actpos,delta);
        if actPos>=MAXNUM then
          BREAK;
        delta := Ludiclst[actpos];
        inc(actcnt);
        IF actcnt= actLudic then
        Begin
          inc(Ludiclst[LastPos],delta);
          //mark as not ludic
          Ludiclst[actpos] := 0;
          actcnt := 0;
        end;
      until false;
    end;
  until false;
  writeln(ludicCnt,' ludic numbers upto ',MAXNUM,#13#10);
end;

BEGIN
  GetLudics;
  CheckMaxdist;
  Firsttwentyfive;CountBelowOneThousand;Show2000til2005;ShowTriplets ;
  setlength(Ludiclst,0)
END.
{--------------------------------------------- 105 magic-squares-of-odd-order-1}
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
{--------------------------------------------- 106 magic-squares-of-odd-order-2}
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
{---------------------------------------------------------- 107 man-or-boy-test}
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
{----------------------------------------------------- 108 matrix-transposition}
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
{------------------------------------------------ 109 matrix-with-two-diagonals}
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
{-------------------------------------------------------- 110 mcnuggets-problem}
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
{------------------------------------------------------ 111 middle-three-digits}
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
{--------- 112 minimum-number-of-cells-after-before-above-and-below-nxn-squares}
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
{------------------ 113 minimum-positive-multiple-in-base-10-using-only-0-and-1}
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
{------------------------------------------------------------ 114 mosaic-matrix}
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
{------------------------------------------------------- 115 munchausen-numbers}
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
{--------------------------------------------------------- 116 mutual-recursion}
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
{------------------------------------------------------- 117 n-queens-problem-1}
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
{----------------------------------------------------- 118 number-reversal-game}
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
{------------------------------ 119 numbers-with-prime-digits-whose-sum-is-13-1}
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
{----------------------- 120 numbers-with-same-digit-set-in-base-10-and-base-16}
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
{-------------------------- 121 numerical-integration-gauss-legendre-quadrature}
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
{-------------------------------- 122 numerical-integration-romberg-integration}
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
{---------------------------------------- 123 one-dimensional-cellular-automata}
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
{----------------------------------------------- 124 one-of-n-lines-in-a-file-1}
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
{----------------------------------------------- 125 palindromic-gapful-numbers}
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
{-------------------------------------------------------------- 126 paraffins-2}
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
{--------------------------------------------------------- 127 pascals-triangle}
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
{----------------------------------------------------- 128 password-generator-1}
program passwords (input,output);

{$mode objfpc}
{$H+} { We will need ansi strings instead of short strings
        to hold passwords longer than 255 characters.
        We need to assemble a string to check that each
        password contains an upper, lower, numeral and symbol }

{ This is a random password generater in PASCAL
  Copyright Englebert Finklestien on this day which is
  Setting Orange day 48 of The Aftermath YOLD 3184.
  It is distributed under the terms of the GNU GPL (v3)
  As published by the free software foundation.

  Usage :-
  Without any command line arguments this program
  will display 8 8-character long completely random passwords using
  all 96 available character glyphs from the basic ascii set.

  With a single integer numerical argument it will
  produce eight passwords of the chosen length.

  With a second integer numerical argument between 1 and 65536 it
  will produce that number of passwords.

  With two integer arguments the first is taken as the length of password
  and the second as the number of passwords to produce.

  The length of passwords can also be specified using -l or --length options

  The number of passwords can also be specified using -n or --number options

  It is also possible to exclude those glyphs which are simmilar enough to be
  confused (e.g. O and 0) using the -e or --exclude option

  There are also the standard -a --about and -h --help options

  Other options will produce an error message and the program will halt without
  producing any passwords at all.

 }

uses sysutils, getopts;



var c : char;
    optionindex : Longint;
    theopts : array[1..5] of TOption;
    numpass, lenpass, count,j : integer;
    i : longint; { used to get a random number }
    strength : byte; {  check inclusion of different character groups }
    password : string; { To hold a password as we generate it }
    exc : boolean;
    ex : set of char;

procedure about;
begin
     writeln('Engleberts random password generator');
     writeln('Writen in FreePascal on Linux');
     writeln('This is free software distributed under the GNU GPL v3');
     writeln;
end;

procedure help;
begin
    writeln('Useage:-');
    writeln('passwords   produce 8 passwords each 8 characters long.');
    writeln('Use one or more of the following switches to control the output.');
    writeln('passwords --number=xx -nxx --length=xx -lxx --exclude -e --about -a --help -h');
    writeln('passwords ll nn produce nn passwords of length ll');
    writeln('The exclude option excludes easily confused characters such as `0` and `O` from');
    writeln('the generated passwords.');
    writeln;
end;


begin
  numpass := 8;
  lenpass := 8;
  exc := False;
  ex := ['1','!','l','|','i','I','J','0','O','S','$','5',';',':',',','.','\']; { Set of ambiguous characters }
  OptErr := True;
  Randomize;  {initialise the random number generator}
  {set up to handle the command line options}
  with theopts[1] do
   begin
    name:='length';
    has_arg:=1;
    flag:=nil;
    value:=#0;
   end;
  with theopts[2] do
   begin
    name:='number';
    has_arg:=1;
    flag:=nil;
    value:=#0;
   end;
  with theopts[3] do
   begin
    name:='help';
    has_arg:=0;
    flag:=nil;
    value:=#0;
   end;
  with theopts[4] do
   begin
    name:='about';
    has_arg:=0;
    flag:=nil;
    value:=#0;
   end;
  with theopts[5] do
   begin
    name:='exclude';
    has_arg:=0;
    flag:=nil;
    value:=#0;
   end;

{ Get and process long and short versions of command line args. }
  c:=#0;
  repeat
    c:=getlongopts('ahel:n:t:',@theopts[1],optionindex);
    case c of
      #0 : begin
               if (theopts[optionindex].name = 'exclude') then exc := True;
               if (theopts[optionindex].name = 'length') then lenpass := StrtoInt(optarg);
               if (theopts[optionindex].name = 'number') then numpass := StrtoInt(optarg);
	       if (theopts[optionindex].name = 'about') then about;
	       if (theopts[optionindex].name = 'help') then help;
           end;
      'a' : about;
      'h' : help;
      'e' : exc := True;
      'l' : lenpass := StrtoInt(optarg);
      'n' : numpass := StrtoInt(optarg);
      '?',':' : writeln ('Error with opt : ',optopt);
    end; { case }
  until c=endofoptions;
  { deal with any remaining command line parameters (two integers)}
  if optind<=paramcount then
    begin
       count:=1;
       while optind<=paramcount do
         begin
	    if (count=1) then lenpass := StrtoInt(paramstr(optind)) else numpass := StrtoInt(paramstr(optind));
            inc(optind);
	    inc(count);
         end;
    end;
	if not (exc) then ex :=['\']; { if we are not going to exclude characters set the exclusion set to almost empty }
	{ This generates and displays the actual passwords  }
    for count := 1 to numpass do begin
       strength := $00;
       repeat
          password :='';
          for j:= 1 to lenpass do begin
             repeat
                i:=Random(130);
             until (i>32) and (i<127) and (not(chr(i) in ex)) ;
             AppendStr(password,chr(i));
             if (CHR(i) in ['0'..'9']) then strength := strength or $01;
             if (chr(i) in ['a'..'z']) then strength := strength or $02;
             if (chr(i) in ['A'..'Z']) then strength := strength or $04;
             if (chr(i) in ['!'..'/']) then strength := strength or $08;
             if (chr(i) in [':'..'@']) then strength := strength or $08;
             if (chr(i) in ['['..'`']) then strength := strength or $08;
             if (chr(i) in ['{'..'~']) then strength := strength or $08;
         end;	
       until strength = $0f;
    writeln(password);
    end;
end.

{------------------------------------------------------------- 129 penneys-game}
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
{--------------------------------------------------------------- 130 perceptron}
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
{----------------------------------------------------------- 131 permutations-1}
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
{-------------------------------------------- 132 permutations-with-repetitions}
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
{------------------------------------------------ 133 pointers-and-references-3}
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
{------- 134 positive-decimal-integers-with-the-digit-1-occurring-exactly-twice}
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
{----------------------------------------------------------- 135 price-fraction}
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
{-------------------------------------------- 136 primality-by-trial-division-1}
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
{--------------------------------------------------------- 137 prime-conspiracy}
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
{---------------------------------------------------------- 138 proper-divisors}
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
{------------------------------------------------------ 139 pythagorean-triples}
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
{--------------------------------------------------------- 140 queue-definition}
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
{------------------------------------------------------------------ 141 quine-1}
const s=';begin writeln(#99#111#110#115#116#32#115#61#39,s,#39,s)end.';begin writeln(#99#111#110#115#116#32#115#61#39,s,#39,s)end.
{------------------------------------------------------------------ 142 quine-2}
program Quine(Output);const A='program Quine(Output);const A=';B='begin writeln(A,char(39),A,char(39),char(59),char(66),char(61),char(39),B,char(39),char(59),B)end.';begin writeln(A,char(39),A,char(39),char(59),char(66),char(61),char(39),B,char(39),char(59),B)end.
{------------------------------------------------------------------ 143 quine-3}
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
{----------------------------------------------------- 144 random-latin-squares}
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

{--------------------------------------------------------- 145 range-extraction}
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
{------------------------------------------------ 146 remove-duplicate-elements}
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
{------------------------------------------------------------------- 147 repeat}
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
{---------------------------------------------- 148 reverse-words-in-a-string-2}
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
{------------------------------------------------------ 149 roots-of-a-function}
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
{-------------------------------------------- 150 roots-of-a-quadratic-function}
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
{----------------------------------------------------------- 151 roots-of-unity}
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
{------------------------------------------ 152 round-robin-tournament-schedule}
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
{---------------------------------------------- 153 send-an-unknown-method-call}
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
{------------------------------------------------ 154 sequence-of-non-squares-2}
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
{------------------------------------------------------ 155 smallest-multiple-1}
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
{------------------------------------------------------ 156 smallest-multiple-2}
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
{------------------------------------------------------------ 157 smith-numbers}
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
{---------------------------------------------------- 158 sort-disjoint-sublist}
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
{------------------------------------------- 159 sort-using-a-custom-comparator}
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
{--------------------------------------------- 160 sorting-algorithms-bead-sort}
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

{---------------------------------------------- 161 sorting-algorithms-bogosort}
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
{------------------------------------------- 162 sorting-algorithms-circle-sort}
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
{------------------------------------------- 163 sorting-algorithms-comb-sort-1}
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
{------------------------------------------- 164 sorting-algorithms-comb-sort-2}
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
{----------------------------------------- 165 sorting-algorithms-counting-sort}
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
{---------------------------------------------- 166 sorting-algorithms-heapsort}
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
{---------------------------------------- 167 sorting-algorithms-insertion-sort}
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
{------------------------------------------ 168 sorting-algorithms-merge-sort-1}
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
{------------------------------------------ 169 sorting-algorithms-pancake-sort}
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
{--------------------------------------------- 170 sorting-algorithms-quicksort}
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
{------------------------------------------- 171 sorting-algorithms-stooge-sort}
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
{------------------------------------------------------------------ 172 soundex}
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
{------------------------------------------------------------ 173 spiral-matrix}
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
{-------------------- 174 split-a-character-string-based-on-change-of-character}
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
{------------------------------------------------------ 175 square-but-not-cube}
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
{---------------------------------------------------- 176 stern-brocot-sequence}
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
{---------------------------------------------------------- 177 strange-numbers}
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
{-------------------------------------------- 178 strange-unique-prime-triplets}
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
{------------------------------------------------------------ 179 string-append}
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
{------------------------------------------------------------ 180 string-length}
const
  s = 'abcdef';
begin
  writeln (length(s))
end.
{--------------------------------------------------- 181 strong-and-weak-primes}
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
{----------------------------------------------- 182 sum-multiples-of-3-and-5-1}
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
{----------------------------------------------- 183 sum-multiples-of-3-and-5-2}
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
{----------------------------------------------------- 184 sum-of-first-n-cubes}
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
{--------------------------------------------------------------- 185 sum-to-100}
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
{--------------------------------------------------- 186 symmetric-difference-2}
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
{------------------------------------------- 187 take-notes-on-the-command-line}
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
{--------------------------------------------------- 188 temperature-conversion}
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
{------------------------------------------- 189 the-twelve-days-of-christmas-2}
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
{-------------------------------------------------------- 190 tokenize-a-string}
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
{------------------------------------------------------- 191 topological-sort-1}
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
{------------------------------------------------------- 192 topological-sort-2}
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
{-------------------------------------- 193 topological-sort-extracted-top-item}
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
{-------------------------------------------------------- 194 twelve-statements}
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
{------------------------------------------------------------------ 195 two-sum}
program twosum;
{$IFDEF FPC}{$MODE DELPHI}{$ELSE}{$APPTYPE CONSOLE}{$ENDIF}
uses
  sysutils;
type
  tSolRec = record
              SolRecI,
              SolRecJ : NativeInt;
            end;
  tMyArray = array of NativeInt;
const
// just a gag using unusual index limits
  ConstArray :array[-17..-13] of NativeInt = (0, 2, 11, 19, 90);

function Check2SumUnSorted(const A  :tMyArray;
                                 sum:NativeInt;
                           var   Sol:tSolRec):boolean;
//Check every possible sum A[max] + A[max-1..0]
//than A[max-1] + A[max-2..0] etc pp.
//quadratic runtime: maximal  (max-1)*max/ 2 checks
//High(A) always checked for dynamic array, even const
//therefore run High(A) to low(A), which is always 0 for dynamic array
label
  SolFound;
var
  i,j,tmpSum: NativeInt;
Begin
  Sol.SolRecI:=0;
  Sol.SolRecJ:=0;
  i := High(A);
  while i > low(A) do
  Begin
    tmpSum := sum-A[i];
    j := i-1;
    while j >= low(A) do
    begin
      //Goto is bad, but fast...
      if tmpSum = a[j] Then
        GOTO SolFound;
      dec(j);
    end;
    dec(i);
  end;
  result := false;
  exit;
SolFound:
  Sol.SolRecI:=j;Sol.SolRecJ:=i;
  result := true;
end;

function Check2SumSorted(const  A  :tMyArray;
                                sum:NativeInt;
                         var    Sol:tSolRec):boolean;
var
  i,j,tmpSum: NativeInt;
Begin
  Sol.SolRecI:=0;
  Sol.SolRecJ:=0;
  i := low(A);
  j := High(A);
  while(i < j) do
  Begin
    tmpSum := a[i] + a[j];
    if tmpSum = sum then
    Begin
      Sol.SolRecI:=i;Sol.SolRecJ:=j;
      result := true;
      EXIT;
    end;
    if tmpSum < sum then
    begin
      inc(i);
      continue;
    end;
    //if tmpSum > sum then
    dec(j);
  end;
  writeln(i:10,j:10);
  result := false;
end;

var
  Sol :tSolRec;
  CheckArr : tMyArray;
  MySum,i : NativeInt;

Begin
  randomize;
  setlength(CheckArr,High(ConstArray)-Low(ConstArray)+1);
  For i := High(CheckArr) downto low(CheckArr) do
    CheckArr[i] := ConstArray[i+low(ConstArray)];

  MySum  := 21;
  IF Check2SumSorted(CheckArr,MySum,Sol) then
    writeln('[',Sol.SolRecI,',',Sol.SolRecJ,'] sum to ',MySum)
  else
    writeln('No solution found');

  //now test a bigger sorted array..
  setlength(CheckArr,83667);
  For i := High(CheckArr) downto 0 do
    CheckArr[i] := i;
  MySum := CheckArr[Low(CheckArr)]+CheckArr[Low(CheckArr)+1];
  writeln(#13#10,'Now checking array of ',length(CheckArr),
          ' elements',#13#10);
  //runtime about 1 second
  IF Check2SumUnSorted(CheckArr,MySum,Sol) then
    writeln('[',Sol.SolRecI,',',Sol.SolRecJ,'] sum to ',MySum)
  else
    writeln('No solution found');
  //runtime not measurable
  IF Check2SumSorted(CheckArr,MySum,Sol) then
    writeln('[',Sol.SolRecI,',',Sol.SolRecJ,'] sum to ',MySum)
  else
    writeln('No solution found');
end.
{------------------------------------------------------------- 196 ulam-numbers}
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
{------------------------------------------------ 197 ulam-spiral-for-primes--2}
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
{------------------------------------------------ 198 ulam-spiral-for-primes--3}
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
{---------------------------------------------------- 199 unprimeable-numbers-1}
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
{-------------------------------------------------- 200 van-der-corput-sequence}
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
{---------------------------------------------------------- 201 vector-products}
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
{------------------------------------------- 202 water-collected-between-towers}
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
{--------------------------------------------------------------- 203 word-wheel}
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
{----------------------------------------- 204 zeckendorf-number-representation}
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
{--------------------------------------------------------- 205 zig-zag-matrix-1}
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
{--------------------------------------------------------- 206 zig-zag-matrix-2}
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
