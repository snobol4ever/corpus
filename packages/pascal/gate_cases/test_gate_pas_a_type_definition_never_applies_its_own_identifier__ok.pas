program selfctl(output);
type link = ^node;
     node = record val: integer; next: link end;
     cell = record cv: integer; nxt: ^cell end;
     point = record point: integer end;
     pair = record a, b: point end;

     count = integer;
var head, p: link; r: array [1..3] of point; n: count; c: cell;
begin
  head := nil;
  for n := 1 to 3 do begin new(p); p^.val := n; p^.next := head; head := p end;
  n := 0; p := head; while p <> nil do begin n := n * 10 + p^.val; p := p^.next end;
  r[2].point := 7; c.cv := 4; c.nxt := nil;
  writeln(n:1, ' ', r[2].point:1, ' ', c.cv:1, ' ', c.nxt = nil)
end.
