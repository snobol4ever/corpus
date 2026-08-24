program swaptest;
var a, b : integer;
  procedure swap(var x, y : integer);
  var t : integer;
  begin
    t := x; x := y; y := t
  end;
begin
  a := 3; b := 8;
  swap(a, b);
  writeln(a); writeln(b)
end.
