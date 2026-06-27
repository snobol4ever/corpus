(* PROVENANCE: Hennessy "Perm" — Stanford integer benchmark suite
   (John L. Hennessy, Stanford, c.1981; public domain). Recursive permutation
   generation; output = pctr (call count), correct value 43300 (=5*P(7), P(7)=8660).
   FRONTIER: SCRIP currently returns 635 — a recursive call inside a FOR loop
   clobbers the loop control variable (not allocated per-activation). See
   GOAL-PASCAL-BB.md PAS-FOR-RECURSE. Repeat knob via stdin. *)
program permbench;
const permrange = 7;
var permarray: array[1..7] of integer;
    pctr, i, reps, rep: integer;
procedure swap(var a, b: integer);
var t: integer;
begin t := a; a := b; b := t end;
procedure permute(n: integer);
var k: integer;
begin
  pctr := pctr + 1;
  if n <> 1 then begin
    permute(n - 1);
    for k := n - 1 downto 1 do begin
      swap(permarray[n], permarray[k]);
      permute(n - 1);
      swap(permarray[n], permarray[k])
    end
  end
end;
begin
  readln(reps);
  pctr := 0;
  for rep := 1 to reps do begin
    pctr := 0;
    for i := 1 to permrange do permarray[i] := i;
    for i := 1 to 5 do permute(permrange)
  end;
  writeln(pctr)
end.
