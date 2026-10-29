{$mode iso}
program w20;
type tE = record Elem, ElemCount: integer; end; tS = array[0..3] of tE;
var R: array[0..3] of tS; x: integer;
begin
  R[1][1].ElemCount := 5;
  x := R[1][1].ElemCount;
  writeln(x);
  x := R[1][1].ElemCount + 1;
  writeln(x)
end.
