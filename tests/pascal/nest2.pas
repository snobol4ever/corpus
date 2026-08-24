program nest2;
var g : integer;
  procedure a;
  var x : integer;
    procedure b;
    var y : integer;
      procedure cc;
      begin
        x := x + 100;
        y := y + 10
      end;
    begin
      y := 5;
      cc;
      writeln(y)
    end;
  begin
    x := 1;
    b;
    writeln(x)
  end;
begin
  a
end.
