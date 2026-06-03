program nestfunc;
var g : integer;
  function outer(n : integer) : integer;
  var base : integer;
    function inner(k : integer) : integer;
    begin
      inner := base + n + k
    end;
  begin
    base := 100;
    outer := inner(1) + inner(2)
  end;
begin
  writeln(outer(5))
end.
