{$mode iso}
program w11;
type tE = record Elem, ElemCount: NativeInt; end; tS = array[0..3] of tE;
var R: array[0..3] of tS; M: array[0..3, 0..3] of tE; d, x: NativeInt; n: integer;
begin
  d := 0; R[1][1].ElemCount := 5; M[1,1].ElemCount := 6; n := 0;
  x := R[1][1].ElemCount;
  writeln(x);
end.
