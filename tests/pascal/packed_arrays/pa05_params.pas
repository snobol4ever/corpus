{$mode fpc}
program pa05_params;
type
  tarr = array [1..5] of smallint;
  trec = record n : longint; v : array [1..3] of byte end;
var
  a, b : tarr;
  r : trec;
  i : longint;
procedure bump(var x : smallint); begin x := x - 1000 end;
procedure fill(var t : tarr; k : smallint); var i : longint; begin for i := 1 to 5 do t[i] := k * i end;
function total(t : tarr) : longint; var i : longint; begin t[1] := 0; total := 0; for i := 1 to 5 do total := total + t[i] end;
procedure showrec(const q : trec); begin writeln(q.n, ' ', q.v[1], ' ', q.v[2], ' ', q.v[3]) end;
begin
  fill(a, 7); bump(a[2]);
  for i := 1 to 5 do write(a[i], ' '); writeln;
  writeln(total(a), ' ', a[1]);
  b := a; b[5] := 1; writeln(a[5], ' ', b[5]);
  r.n := 3; with r do begin v[1] := 10; v[2] := 20; v[3] := 30 end;
  bump(a[3]); showrec(r); writeln(a[3])
end.
