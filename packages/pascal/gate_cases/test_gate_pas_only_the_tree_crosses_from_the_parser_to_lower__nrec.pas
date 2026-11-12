program nrec(output);
type arr = array [1..5] of integer;
     inner = record k: integer; a: arr end;
     pr = ^inner;
var r: inner; p, q: pr; j, s: integer;
begin
  for j := 1 to 5 do r.a[j] := j * j; r.k := 7;
  new(p); for j := 1 to 5 do p^.a[j] := r.a[j] + 1;
  writeln(r.a[2]:1, ' ', p^.a[5]:1, ' ', r.k:1);
  p^.a[2] := p^.a[2] * 10; writeln(p^.a[2]:1);
  s := 0; for j := 1 to 5 do s := s + p^.a[j] + r.a[j]; writeln(s:1);
  p^.a[4] := p^.a[1] + p^.a[3]; r.a[5] := r.k * 6; writeln(p^.a[4]:1, ' ', r.a[5]:1);
  new(q); q^.a[1] := p^.a[4] - r.a[1]; q^.a[q^.a[1] - 10] := r.a[r.a[1] + 1]; writeln(q^.a[1]:1, ' ', q^.a[1]:1)
end.
