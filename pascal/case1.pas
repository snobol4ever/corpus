program case1;
var i, r : integer;
begin
  for i := 1 to 5 do
  begin
    case i of
      1: r := 10;
      2, 3: r := 23;
      4: r := 40;
      5: r := 50
    end;
    writeln(r)
  end
end.
