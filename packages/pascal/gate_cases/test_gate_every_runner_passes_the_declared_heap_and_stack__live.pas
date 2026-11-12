program livek(input, output);
type p = ^node;
     node = record v: integer; s: packed array[1..8] of char; next: p end;
var h, q: p; i, reps, rep: integer;
begin
  readln(reps);
  i := 0;
  for rep := 1 to reps do begin
    h := nil;
    for i := 1 to 30000 do begin new(q); q^.v := i; q^.s := 'abcdefgh'; q^.next := h; h := q end;
    i := 0; q := h;
    while q <> nil do begin i := i + 1; q := q^.next end;
    while h <> nil do begin q := h; h := h^.next; dispose(q) end
  end;
  writeln(i)
end.
