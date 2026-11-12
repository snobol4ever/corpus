program tctl(output);
type bar = array[1..3] of boolean;
     m2 = array[1..2, 1..2] of boolean;
     inner = record ok: boolean; n: integer end;
     rec = record n: integer; f: boolean; g: char; in1: inner end;
     prec = ^rec;
var a: array[1..3] of boolean; ba: bar; mm: m2; r: rec; p: prec; i: integer; b: boolean; ch: char;
begin
  a[1] := true; a[2] := false; a[3] := true;
  ba[1] := false; ba[2] := true; ba[3] := false;
  mm[1,1] := true; mm[1,2] := false; mm[2,1] := false; mm[2,2] := true;
  r.n := 1; r.f := false; r.g := 'k'; r.in1.ok := true; r.in1.n := 9;
  new(p); p^.f := true; p^.g := 'z'; p^.n := 2;
  for i := 1 to 3 do begin write(a[i]); write(' '); writeln(ba[i]) end;
  writeln(mm[1,1], ' ', mm[1,2], ' ', mm[2,1], ' ', mm[2,2]);
  writeln(r.f); writeln(r.g); writeln(r.in1.ok); writeln(p^.f); writeln(p^.g);
  writeln(not a[2]); writeln(not r.f);
  writeln(a[1] and a[3]); writeln(a[1] or a[2]); writeln(r.f or r.in1.ok);
  with r do begin writeln(f); writeln(in1.ok) end;
  b := a[1]; writeln(b); b := r.in1.ok; writeln(b);
  writeln(a[1] = a[3]);
  if a[2] then writeln('wrong') else writeln('right');
  if not ba[1] then writeln('nb1');
  for i := 1 to 3 do writeln(a[i]);
  i := 1; b := a[i] and a[2]; if b then writeln('T') else writeln('F');
  writeln(a[1] and a[2]); writeln(a[2] or a[2]); writeln(r.f or r.in1.ok)
end.
