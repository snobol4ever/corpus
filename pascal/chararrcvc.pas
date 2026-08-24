program chararrcvc(output);
type alfa = packed array[1..4] of char;
var rw: array[1..3] of alfa;
    i, j, n: integer;
begin
  rw[1] := 'aaaa';
  rw[2] := 'bbbb';
  rw[3] := 'aaaa';
  i := 1; j := 2;
  n := 0;
  if rw[i] < rw[j] then n := n + 1;
  if rw[i] <= rw[j] then n := n + 2;
  if rw[j] > rw[i] then n := n + 4;
  if rw[i] >= rw[j] then n := n + 8;
  if rw[i] = rw[3] then n := n + 16;
  if rw[i] <> rw[j] then n := n + 32;
  writeln(n);
  i := 3; j := 1;
  if rw[i] = rw[j] then writeln('eq') else writeln('ne')
end.
