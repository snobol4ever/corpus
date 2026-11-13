program isosymdif(output);
type t = set of 0..9;
var a, b, c: t; i: integer;
begin
  a := [1, 2, 3, 5]; b := [2, 3, 4, 8];
  c := a >< b;
  for i := 0 to 9 do if i in c then write(i:2);
  writeln;
  c := (a >< b) >< [1, 9] + [0];
  for i := 0 to 9 do if i in c then write(i:2);
  writeln
end.
