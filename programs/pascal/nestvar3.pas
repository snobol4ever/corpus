program nestvar3;
var x, y: integer;
procedure swapvals(var a, b: integer);
  procedure doswap;
  var t: integer;
  begin
    t := a;
    a := b;
    b := t
  end;
begin
  doswap
end;
begin
  x := 3;
  y := 7;
  swapvals(x, y);
  writeln(x);
  writeln(y)
end.
