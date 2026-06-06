program nestvar2;
var x: integer;
procedure outer(var a: integer);
  procedure middle;
    procedure inner;
    begin
      a := a * 2
    end;
  begin
    inner
  end;
begin
  middle
end;
begin
  x := 5;
  outer(x);
  writeln(x)
end.
