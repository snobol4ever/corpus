program peek(input, output);
var c, d, e: char;
begin
  c := input^; e := input^; read(d);
  writeln('peek=', c, ' again=', e, ' read=', d, ' same=', c = d);
  c := input^; read(d); writeln('peek=', c, ' read=', d, ' same=', c = d)
end.
