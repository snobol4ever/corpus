program nestedtest;
var g : integer;
  procedure outer;
  var x : integer;
    procedure inner;
    begin
      x := x + 10
    end;
  begin
    x := 5;
    inner;
    writeln(x)
  end;
begin
  outer
end.
