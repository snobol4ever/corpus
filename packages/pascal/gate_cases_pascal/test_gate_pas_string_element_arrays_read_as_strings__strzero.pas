program strzero;
const names: array [0..1] of string = ('alpha', 'beta');
 n: array [0..1] of integer = (5, 6);
var i: integer;
begin
  i := 0;
  writeln(names[0], '|', names[i], '|', n[0], '|', n[i]);
end.
