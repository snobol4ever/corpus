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
{---------------------------------------------------------------------- 2 a_b-3}
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
{--------------------------------------------------------- 3 ackermann-function}
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
{-------------------------------------------------------- 4 anonymous-recursion}
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
{--------------------------------------------------------- 5 arithmetic-numbers}
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
{------------------------------------------------- 6 averages-arithmetic-mean-1}
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
{------------------------------------------------------------ 7 averages-median}
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
{--------------------------------------------- 8 averages-simple-moving-average}
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
{------------------------------------------------ 9 b-zier-curves-intersections}
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
{----------------------------------------------------------- 10 babbage-problem}
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
{-------------------------------------------------------- 11 bitwise-operations}
var
 a, b: integer;
begin
 a := 10; { binary 1010 }
 b := 12; { binary 1100 }
 writeln('a and b = ', a and b); {  8 = 1000 }
 writeln('a or b  = ', a or b);  { 14 = 1110 }
 writeln('a xor b = ', a xor b)  {  6 = 0110 }
end.
{----------------------------------------------------------- 12 catalan-numbers}
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
{-------------------------------------------------------------- 13 catamorphism}
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
{----------------------------------------------------------------- 14 code-golf}
program p(output);begin write('Code Golf')end.
{-------------------------------------------------------------- 15 combinations}
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
{--------------------------------------------------------------- 16 convex-hull}
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
{-------------------- 17 count-how-many-vowels-and-consonants-occur-in-a-string}
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
{--------------------------------------- 18 create-an-object-at-a-given-address}
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
{----------------------------------------------------- 19 dijkstras-algorithm-1}
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
{------------------------------------------------------------- 20 draw-a-cuboid}
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
{--------------------------------------------------- 21 factors-of-an-integer-1}
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
{----------------------------------------------------------- 22 floyds-triangle}
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
{-------------------------------------------------------- 23 forward-difference}
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
{--------------------------------------------------- 24 greatest-common-divisor}
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
{------------------------------------------------ 25 greatest-subsequential-sum}
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
{---------------------------------------------------------- 26 guess-the-number}
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
{---------------------------------------------- 27 hello-world-newline-omission}
program NewLineOmission(output);

begin
  write('Goodbye, World!');
end.
{---------------------------------------------------------- 28 hello-world-text}
program byeworld;
begin
 writeln('Hello world!');
end.
{-------------------------------------------------------- 29 heronian-triangles}
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
{-------------------------------------------------- 30 higher-order-functions-1}
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
{-------------------------------------------------- 31 higher-order-functions-2}
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
{----------------------------------------------------- 32 hofstadter-q-sequence}
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
{------------------------------------------- 33 horizontal-sundial-calculations}
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
{-------------------------------------------------------- 34 host-introspection}
program HostIntrospection(output);
begin
  writeln('Pointer size: ', SizeOf(Pointer), ' byte, i.e. ', SizeOf(Pointer)*8, ' bit.');
{ NtoBE converts from native endianess to big endianess }
  if 23453 = NtoBE(23453) then
    writeln('This host is big endian.')
  else
    writeln('This host is little endian.');
end.
{----------------------------------------------------------- 35 identity-matrix}
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
{-------------------------------------------------------- 36 integer-comparison}
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
{--------------------------------------------- 37 largest-proper-divisor-of-n-1}
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
{------------------- 38 launch-rocket-with-countdown-and-acceleration-in-stdout}
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
{--------------------------------------------- 39 linear-congruential-generator}
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
{----------------------------------------------------------------- 40 long-year}
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
{------------------------------------------------------------ 41 loops-do-while}
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
{----------------------------------------------------------------- 42 loops-for}
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
{----------------------------------------------------- 43 loops-n-plus-one-half}
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
{--------------------------------------------------------------- 44 loops-while}
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
{------------------------------------------------------- 45 lucas-lehmer-test-1}
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
{---------------------------------------------- 46 magic-squares-of-odd-order-1}
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
{----------------------------------------------------------- 47 man-or-boy-test}
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
{------------------------------------------------------ 48 matrix-transposition}
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
{------------------------------------------------- 49 matrix-with-two-diagonals}
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
{------------------------------------------------------------- 50 mosaic-matrix}
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
{---------------------------------------------------------- 51 mutual-recursion}
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
{-------------------------------------------------------- 52 n-queens-problem-1}
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
{------------------------------------------------------ 53 number-reversal-game}
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
{--------------------------- 54 numerical-integration-gauss-legendre-quadrature}
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
{--------------------------------- 55 numerical-integration-romberg-integration}
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
{---------------------------------------------------------- 56 pascals-triangle}
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
{-------------------------------------------------------------- 57 penneys-game}
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
{---------------------------------------------------------------- 58 perceptron}
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
{------------------------------------------------------------ 59 permutations-1}
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
{------------------------------------------------- 60 pointers-and-references-3}
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
{-------- 61 positive-decimal-integers-with-the-digit-1-occurring-exactly-twice}
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
{------------------------------------------------------------ 62 price-fraction}
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
{--------------------------------------------- 63 primality-by-trial-division-1}
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
{---------------------------------------------------------- 64 prime-conspiracy}
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
{------------------------------------------------------- 65 pythagorean-triples}
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
{---------------------------------------------------------- 66 queue-definition}
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
{------------------------------------------------------------------- 67 quine-1}
const s=';begin writeln(#99#111#110#115#116#32#115#61#39,s,#39,s)end.';begin writeln(#99#111#110#115#116#32#115#61#39,s,#39,s)end.
{------------------------------------------------------------------- 68 quine-2}
program Quine(Output);const A='program Quine(Output);const A=';B='begin writeln(A,char(39),A,char(39),char(59),char(66),char(61),char(39),B,char(39),char(59),B)end.';begin writeln(A,char(39),A,char(39),char(59),char(66),char(61),char(39),B,char(39),char(59),B)end.
{------------------------------------------------------------------- 69 quine-3}
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
{------------------------------------------------------ 70 random-latin-squares}
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

{------------------------------------------------- 71 remove-duplicate-elements}
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
{-------------------------------------------------------------------- 72 repeat}
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
{------------------------------------------------------- 73 roots-of-a-function}
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
{--------------------------------------------- 74 roots-of-a-quadratic-function}
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
{------------------------------------------------------------ 75 roots-of-unity}
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
{------------------------------------------------- 76 sequence-of-non-squares-2}
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
{----------------------------------------------------- 77 sort-disjoint-sublist}
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
{---------------------------------------------- 78 sorting-algorithms-bead-sort}
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

{----------------------------------------------- 79 sorting-algorithms-bogosort}
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
{-------------------------------------------- 80 sorting-algorithms-circle-sort}
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
{-------------------------------------------- 81 sorting-algorithms-comb-sort-1}
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
{-------------------------------------------- 82 sorting-algorithms-comb-sort-2}
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
{------------------------------------------ 83 sorting-algorithms-counting-sort}
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
{------------------------------------------- 84 sorting-algorithms-pancake-sort}
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
{-------------------------------------------- 85 sorting-algorithms-stooge-sort}
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
{------------------------------------------------------------- 86 spiral-matrix}
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
{------------------------------------------------------- 87 square-but-not-cube}
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
{----------------------------------------------------------- 88 strange-numbers}
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
{------------------------------------------------------------- 89 string-length}
const
  s = 'abcdef';
begin
  writeln (length(s))
end.
{---------------------------------------------------- 90 strong-and-weak-primes}
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
{------------------------------------------------ 91 sum-multiples-of-3-and-5-1}
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
{------------------------------------------------ 92 sum-multiples-of-3-and-5-2}
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
{------------------------------------------------------ 93 sum-of-first-n-cubes}
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
{---------------------------------------------------------------- 94 sum-to-100}
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
{---------------------------------------------------- 95 symmetric-difference-2}
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
{---------------------------------------------------- 96 temperature-conversion}
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
{-------------------------------------------- 97 the-twelve-days-of-christmas-2}
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
{--------------------------------------------------------- 98 twelve-statements}
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
{----------------------------------------------------------- 99 vector-products}
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
{--------------------------------------------------------- 100 zig-zag-matrix-1}
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
{--------------------------------------------------------- 101 zig-zag-matrix-2}
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
