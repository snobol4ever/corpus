program chu(output);
type node = record v: integer; next: ^node end;
var a: array[1..3] of integer; keep: array[1..5] of ^node; i: integer;
procedure churn(var x: integer);
var k: integer; q: ^node;
begin
  for k := 1 to 3000 do begin new(q); q^.v := k; q^.next := nil; keep[k mod 5 + 1] := q; if k mod 100 = 0 then x := x + 1 end
end;
begin for i := 1 to 3 do a[i] := i * 100; churn(a[2]); writeln(a[1], ' ', a[2], ' ', a[3]) end.
