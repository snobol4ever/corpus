program aliastest;
var a : integer;
  procedure addto(var x, y : integer);
  begin
    x := x + 1;
    y := y + 10
  end;
begin
  a := 0;
  addto(a, a);
  writeln(a)
end.
