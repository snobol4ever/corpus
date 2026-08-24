program rec2;
type
  rec = record
    a : integer;
    b : integer;
    c : integer
  end;
var
  r : rec;
  i : integer;
begin
  r.a := 10;
  r.b := r.a * 2;
  r.c := 0;
  for i := 1 to r.b do
    r.c := r.c + 1;
  if r.c > r.a then
    writeln(r.c)
  else
    writeln(r.a);
  writeln(r.a, r.b, r.c)
end.
