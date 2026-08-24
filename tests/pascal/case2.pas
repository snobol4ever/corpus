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
