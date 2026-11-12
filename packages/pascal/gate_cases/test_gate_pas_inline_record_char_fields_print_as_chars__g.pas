program cf2;
var q: record r: real; n: integer; c: char end;
begin q.r := 2.5; q.n := 3; q.c := 'k'; writeln(q.c); writeln(q.n, q.c); writeln(q.r:6:2, q.c); writeln(q.r:6:2, q.n, ' ', q.c) end.
