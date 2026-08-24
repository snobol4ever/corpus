program goto3;
var r: integer;

procedure cnt(k: integer);
label 1;
var c: integer;
begin
  c := 0;
1:
  c := c + 1;
  if c < k then goto 1;
  r := r + c
end;

function dbl(x: integer): integer;
label 1;
var s: integer;
begin
  s := 0;
1:
  s := s + x;
  x := x - 1;
  if x > 0 then goto 1;
  dbl := s
end;

begin
  r := 0;
  cnt(4);
  cnt(7);
  writeln(r);
  writeln(dbl(5))
end.
