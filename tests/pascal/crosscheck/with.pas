{---------------------------------------------------------------------- 1 with1}
program with1;
type
  point = record
    x : integer;
    y : integer
  end;
var
  p : point;
  q : point;
begin
  p.x := 3; p.y := 4;
  with p do begin
    writeln(x);
    writeln(y);
    x := x + 10
  end;
  writeln(p.x)
end.
{---------------------------------------------------------------------- 2 with2}
program with2;
type
  point = record x : integer; y : integer end;
var
  p : point;
  q : point;
  g : integer;
begin
  p.x := 10; p.y := 20; g := 5;
  with p do begin
    writeln(x);
    writeln(y);
    x := x + g
  end;
  writeln(p.x);
  q.x := 1; q.y := 2;
  with q do begin
    x := x * 3;
    writeln(x)
  end
end.
{---------------------------------------------------------------------- 3 with3}
program with3;
type
  rp = ^rec;
  rec = record x : integer; y : integer end;
var
  p : rp;
begin
  new(p);
  p^.x := 10;
  p^.y := 20;
  with p^ do begin
    writeln(x);
    writeln(y);
    x := x + 5
  end;
  writeln(p^.x)
end.
