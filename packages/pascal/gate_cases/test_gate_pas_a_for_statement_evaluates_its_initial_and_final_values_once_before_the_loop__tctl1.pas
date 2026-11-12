program tctl1(output);
var i, n, calls, lim: integer;
function f: integer; begin calls := calls + 1; f := lim end;
function g(x: integer): integer; begin calls := calls + 1; g := x end;
begin
  calls := 0; lim := 5; n := 0;
  for i := 1 to f do begin n := n + 1; lim := 2 end;
  writeln(n, ' ', calls);
  calls := 0; lim := 5; n := 0;
  for i := 1 to g(lim) do begin n := n + 1; lim := 2 end;
  writeln(n, ' ', calls);
  lim := 4; n := 0;
  for i := 1 to lim do begin n := n + 1; lim := 1 end;
  writeln(n);
  lim := 4; n := 0;
  for i := lim downto 1 do begin n := n + 1; lim := 9 end;
  writeln(n);
  lim := 3; n := 0;
  for i := 1 to lim * 2 do begin n := n + 1; lim := 1 end;
  writeln(n)
end.
