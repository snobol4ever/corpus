program scopes(input, output);
const limit = 3; half = 1.5; star = '*';
type color = (red, green, blue); pt = record x, y: integer end;
     shape = record case k: color of red: (r: integer); green, blue: (g: char) end;
var total: integer; p: pt; s: shape; c: color;
procedure later(a, b: integer); forward;
function twice(n: integer): integer;
  var local: integer;
  function inner(m: integer): integer;
  begin inner := m + local end;
begin local := n; twice := inner(n) end;
procedure later;
var i: integer;
begin for i := a to b do total := total + twice(i) end;
begin
  total := 0; later(1, limit);
  with p do begin x := 4; y := 5 end;
  s.k := green; s.g := star; c := blue;
  writeln(total:1, ' ', p.x + p.y:1, ' ', s.g, ' ', ord(c):1, ' ', half:3:1)
end.
