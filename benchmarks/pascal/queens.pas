(* PROVENANCE: Hennessy "Queens" / Wirth 8-queens — Stanford integer benchmark
   suite (John L. Hennessy, Stanford, c.1981; public domain). Backtracking,
   first solution; output = checksum sum(x[i]*i)=162 for [1,5,8,6,3,7,2,4].
   Diagonals offset to non-negative indices (P4-safe). Repeat knob via stdin. *)
program queensbench;
var a: array[1..8] of boolean;
    b: array[2..16] of boolean;
    c: array[0..14] of boolean;
    x: array[1..8] of integer;
    q: boolean;
    i, cksum, reps, rep: integer;
procedure place(i: integer; var q: boolean);
var j: integer;
begin
  j := 0; q := false;
  repeat
    j := j + 1; q := false;
    if a[j] and b[i + j] and c[i - j + 7] then begin
      x[i] := j;
      a[j] := false; b[i + j] := false; c[i - j + 7] := false;
      if i < 8 then begin
        place(i + 1, q);
        if not q then begin
          a[j] := true; b[i + j] := true; c[i - j + 7] := true
        end
      end else q := true
    end
  until q or (j = 8)
end;
begin
  readln(reps);
  cksum := 0;
  for rep := 1 to reps do begin
    for i := 1 to 8 do a[i] := true;
    for i := 2 to 16 do b[i] := true;
    for i := 0 to 14 do c[i] := true;
    q := false;
    place(1, q);
    cksum := 0;
    for i := 1 to 8 do cksum := cksum + x[i] * i
  end;
  writeln(cksum)
end.
