program dyn(output);
type TIntArray = array of integer; TPt = record x, y: real end;
var a: array of integer; b: TIntArray; r: array of real; m: array of array of integer; p: array of TPt; i, j: integer;
begin
  writeln(length(a), ' ', high(a));
  setlength(a, 5); for i := 0 to high(a) do a[i] := i * i; writeln(length(a), ' ', low(a), ' ', high(a), ' ', a[4]);
  b := a; b[0] := 99; writeln(a[0]);
  setlength(a, 7); a[6] := 1; writeln(a[4], ' ', a[5], ' ', a[6], ' ', length(b), ' ', b[0]);
  setlength(r, 2); r[1] := 2.5; r[0] := 1; writeln(r[0]:0:1, ' ', r[1]:0:1);
  setlength(m, 3, 4); for i := 0 to 2 do for j := 0 to 3 do m[i][j] := i * 10 + j; writeln(length(m), ' ', length(m[1]), ' ', m[2][3], ' ', m[1, 2]);
  setlength(p, 2); p[1].x := 1.5; writeln(p[1].x:0:1, ' ', p[0].y:0:1)
end.
