program nestrec;
var g : integer;
  procedure outer(d : integer);
  var x : integer;
    procedure inner;
    begin
      x := x + 1
    end;
  begin
    x := d * 10;
    inner;
    if d > 1 then outer(d - 1);
    writeln(x)
  end;
begin
  outer(3)
end.
