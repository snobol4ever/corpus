program flatnoarg;
var g : integer;
  function five : integer;
  begin
    five := 5
  end;
begin
  g := five + five;
  writeln(g)
end.
