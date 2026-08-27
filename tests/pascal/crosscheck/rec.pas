{----------------------------------------------------------------------- 1 rec1}
program rec1;
type
  point = record
    x : integer;
    y : integer
  end;
var
  p : point;
begin
  p.x := 3;
  p.y := 4;
  writeln(p.x + p.y)
end.
{----------------------------------------------------------------------- 2 rec2}
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
{----------------------------------------------------------------------- 3 rec3}
program rec3;
var
  p : record x, y : integer end;
  q : record x, y : integer end;
begin
  p.x := 1; p.y := 2;
  q.x := p.y; q.y := p.x;
  writeln(q.x, q.y);
  writeln(p.x + q.x + p.y + q.y)
end.
