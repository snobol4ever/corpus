program side(output);
var i, calls: integer; a: array [1..5] of integer; r: boolean;
function f(x: integer): boolean;
begin calls := calls + 1; writeln('f', x); f := x > 2 end;
function g(n: integer): boolean;
var loc: boolean;
begin
  loc := (n > 0) and g(n - 1) or (n = 0);
  g := loc and ((n < 100) or f(n))
end;
procedure p;
var u: boolean;
begin
  u := f(1) and f(7); writeln(u); u := f(8) or f(9); writeln(u);
  if not (f(0) or f(1)) then writeln('neither') ; writeln((calls > 0) and f(3))
end;
begin
  calls := 0;
  for i := 1 to 5 do a[i] := i * i;
  if f(1) and f(2) then writeln('both') else writeln('not both');
  if f(3) or f(4) then writeln('either') else writeln('neither');
  r := f(5) and f(0); writeln(r);
  r := f(0) or f(6); writeln(r);
  i := 6;
  while (i > 1) and (a[i - 1] > 4) do i := i - 1;
  writeln(i);
  i := 0;
  if (i >= 1) and (a[i] = 1) then writeln('bad') else writeln('guarded');
  writeln(g(4), calls);
  p;
  writeln((calls = 99) and f(9), calls)
end.
