{$mode objfpc}
program hanoi_demo;
var
  peg: array [1..3] of integer;
  moves: integer;
function pegname(p: integer): char;
begin
  pegname := chr(ord('A') + p - 1)
end;
procedure report(disk, src, dst: integer);
begin
  moves := moves + 1;
  writeln('move ', moves, ': disk ', disk, ' ', pegname(src), ' to ', pegname(dst))
end;
procedure hanoi(n, src, dst, via: integer);
begin
  if n > 0 then
  begin
    hanoi(n - 1, src, via, dst);
    peg[src] := peg[src] - 1;
    peg[dst] := peg[dst] + 1;
    report(n, src, dst);
    hanoi(n - 1, via, dst, src)
  end
end;
var rounds: integer;
begin
  moves := 0;
  for rounds := 2 to 3 do
  begin
    peg[1] := rounds; peg[2] := 0; peg[3] := 0;
    hanoi(rounds, 1, 3, 2);
    writeln('pegs ', peg[1], ' ', peg[2], ' ', peg[3])
  end;
  writeln('moves ', moves)
end.
