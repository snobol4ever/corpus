(* PROVENANCE: Hennessy "Towers" — Stanford integer benchmark suite
   (John L. Hennessy, Stanford, c.1981; public domain). Towers of Hanoi,
   recursive move count (2^disks-1). P4-faithful transliteration.
   Repeat knob via stdin. *)
program towersbench;
const disks = 18;
var movesdone, reps, rep: integer;
procedure move(n, frm, via, dest: integer);
begin
  if n = 1 then movesdone := movesdone + 1
  else begin
    move(n - 1, frm, dest, via);
    movesdone := movesdone + 1;
    move(n - 1, via, frm, dest)
  end
end;
begin
  readln(reps);
  movesdone := 0;
  for rep := 1 to reps do begin
    movesdone := 0;
    move(disks, 1, 2, 3)
  end;
  writeln(movesdone)
end.
