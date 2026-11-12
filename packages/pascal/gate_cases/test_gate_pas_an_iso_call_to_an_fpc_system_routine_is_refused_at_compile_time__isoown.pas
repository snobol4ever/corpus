program isoown(output);
var i: integer;
function random(n: integer): integer; begin random := n * 3 + 1 end;
procedure randomize; begin writeln('seeded') end;
begin randomize; i := random(4); writeln(i, ' ', random(0))  end.
