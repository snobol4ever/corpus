program nestvar;
var x: integer;
procedure outer(var a: integer);
  procedure inner;
  begin
    a := a + 1
  end;
begin
  inner
end;
begin
  x := 10;
  outer(x);
  writeln(x)
end.
