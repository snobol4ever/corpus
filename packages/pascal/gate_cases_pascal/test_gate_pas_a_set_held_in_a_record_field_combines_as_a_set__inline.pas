program inline(output);
type rec = record n: integer; s: set of 0..20; c: char end;
     prec = ^rec;
var r, t: rec; p: prec; k: integer; a: array [1..3] of record s: set of 0..20; m: 0..9 end;
begin
  r.s := [1, 2]; t.s := [2, 5]; new(p); p^.s := [7];
  r.s := r.s + t.s; p^.s := p^.s + r.s; r.n := 4; r.c := 'x';
  for k := 0 to 20 do if k in p^.s then write(k:1, ' '); writeln;
  writeln(r.s = [1, 2, 5], ' ', t.s <= r.s, ' ', r.n + 1, ' ', r.c);
  a[1].s := [3]; a[2].s := [4]; a[3].s := a[1].s + a[2].s; a[3].m := 9;
  for k := 0 to 20 do if k in a[3].s then write(k:1, ' '); writeln(a[3].m + 1)
end.
