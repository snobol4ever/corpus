program set8;
var a, b : set of 0..47; r : integer;
begin
  a := [2, 3];
  b := [1, 2, 3, 4];
  r := 0;
  if a <= b then r := r + 1;
  if b >= a then r := r + 10;
  if a = [2, 3] then r := r + 100;
  if a <> b then r := r + 1000;
  writeln(r)
end.
