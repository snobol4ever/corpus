program g1;
{$mode objfpc}
type
  TRec = record n: integer; s: integer end;
  PRec = ^TRec;
  TInts = array[0..0] of integer;
  PInts = ^TInts;
  TBig = array[1..50] of longword;
  PBig = ^TBig;
var
  r: PRec; q: PInts; p: pointer; b: PBig; i: integer;
begin
  getmem(r, sizeof(TRec)); r^.n := 4; r^.s := 9; writeln(r^.n + r^.s); freemem(r, sizeof(TRec));
  getmem(q, 10 * sizeof(integer)); for i := 0 to 9 do q^[i] := i * 3; writeln(q^[9], ' ', q^[4]); freemem(q);
  getmem(p, sizeof(TBig)); b := p; for i := low(b^) to high(b^) do b^[i] := i; writeln(low(b^), ' ', high(b^), ' ', b^[50]); freemem(p)
end.
