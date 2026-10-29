{ zl07 -- linked records allocated and disposed in loops, packed strings, arrays of records (DESIGN-PLAN zeta-layout, the cto 2026-10-29) }
program zl07;
type
  str = packed array [1..16] of char;
  nodep = ^node;
  node = record
    key: integer;
    name: str;
    next: nodep
  end;
var
  head, p, q: nodep;
  i, round, count, sum: integer;
  names: array [1..50] of str;
procedure fill(var s: str; n: integer);
var k: integer;
begin
  for k := 1 to 16 do s[k] := chr(ord('a') + (n + k) mod 26)
end;
begin
  sum := 0; count := 0;
  for round := 1 to 30 do
  begin
    head := nil;
    for i := 1 to 200 do
    begin
      new(p); p^.key := i * round; fill(p^.name, i + round); p^.next := head; head := p
    end;
    p := head;
    while p <> nil do
    begin
      if p^.key mod 3 = 0 then sum := sum + p^.key;
      if p^.name[1] = 'q' then count := count + 1;
      q := p^.next; dispose(p); p := q
    end
  end;
  for i := 1 to 50 do fill(names[i], i);
  writeln(sum, ' ', count);
  writeln(names[1], ' ', names[50])
end.
