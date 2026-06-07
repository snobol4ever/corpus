program varrec(output);
type
  shape = (circle, rect);
  figure = record
    case kind: shape of
      circle: (radius: integer);
      rect:   (width, height: integer)
    end;
var f: figure;
begin
  f.kind := circle;
  f.radius := 5;
  writeln(f.radius);
  f.kind := rect;
  f.width := 10; f.height := 4;
  writeln(f.width);
  writeln(f.height)
end.
