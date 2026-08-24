program deep5;
var g: integer;
procedure p1;
var a: integer;
  procedure p2;
  var b: integer;
    procedure p3;
    var c: integer;
      procedure p4;
      var d: integer;
        procedure p5;
        begin
          a := a + 1;
          b := b + 2;
          c := c + 3;
          d := d + 4;
          g := a + b + c + d
        end;
      begin
        d := 40;
        p5;
        writeln(d)
      end;
    begin
      c := 30;
      p4;
      writeln(c)
    end;
  begin
    b := 20;
    p3;
    writeln(b)
  end;
begin
  a := 10;
  p2;
  writeln(a)
end;
begin
  g := 0;
  p1;
  writeln(g)
end.
