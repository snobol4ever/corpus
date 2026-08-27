{---------------------------------------------------------------------- 1 case1}
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
{---------------------------------------------------------------------- 2 case2}
program case2;
var r : integer;
function grade(n : integer) : integer;
begin
  case n div 10 of
    9, 10: grade := 4;
    8: grade := 3;
    7: grade := 2
  end
end;
begin
  r := grade(95); writeln(r);
  r := grade(83); writeln(r);
  r := grade(70); writeln(r)
end.
