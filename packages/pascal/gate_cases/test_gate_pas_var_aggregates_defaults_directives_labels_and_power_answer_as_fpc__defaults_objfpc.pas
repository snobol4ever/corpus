{$mode objfpc}
program dp3;
const K = 7;
type TV = record x, y, z: integer end;
var a: array [1..3] of integer = (4, 5, 6); v: TV = (x: 3; y: 4; z: 5); m: array [0..1, 0..1] of integer = ((1, 2), (3, 4));
procedure p(n: integer = 5; s: integer = K * 2); begin writeln(n, ' ', s) end;
function f(base: integer = 10): integer; inline; begin f := base * 2 end;
procedure q(); begin writeln('q') end;
begin p; p(1); p(1, 2); writeln(f, ' ', f(3)); q(); writeln(a[3], v.y, m[1, 0]) end.
