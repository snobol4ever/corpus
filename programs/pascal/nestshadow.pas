program nestshadow;
var g : integer;
  procedure outer;
  var x : integer;
    procedure p2;
    begin
      x := x + 100
    end;
    procedure p1;
    var x : integer;
    begin
      x := 7;
      p2;
      writeln(x)
    end;
  begin
    x := 1;
    p1;
    writeln(x)
  end;
begin
  outer
end.
