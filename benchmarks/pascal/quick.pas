(* PROVENANCE: Hennessy "Quick" — Stanford integer benchmark suite
   (John L. Hennessy, Stanford, c.1981; public domain). Hoare quicksort.
   Algorithm/constants per llvm-test-suite Stanford C port. Canonical RNG.
   P4-faithful transliteration. Repeat knob via stdin. *)
program quickbench;
const srtelements = 500;
var sortlist: array[1..500] of integer;
    seed, biggest, littlest, i, temp, reps, rep: integer;
procedure qsort(l, r: integer);
var ii, jj, x, w: integer;
begin
  ii := l; jj := r;
  x := sortlist[(l + r) div 2];
  repeat
    while sortlist[ii] < x do ii := ii + 1;
    while x < sortlist[jj] do jj := jj - 1;
    if ii <= jj then begin
      w := sortlist[ii]; sortlist[ii] := sortlist[jj]; sortlist[jj] := w;
      ii := ii + 1; jj := jj - 1
    end
  until ii > jj;
  if l < jj then qsort(l, jj);
  if ii < r then qsort(ii, r)
end;
begin
  readln(reps);
  for rep := 1 to reps do begin
    seed := 74755; biggest := 0; littlest := 0;
    for i := 1 to srtelements do begin
      seed := (seed * 1309 + 13849) mod 65536;
      temp := seed;
      sortlist[i] := temp - (temp div 100000) * 100000 - 50000;
      if sortlist[i] > biggest then biggest := sortlist[i]
      else if sortlist[i] < littlest then littlest := sortlist[i]
    end;
    qsort(1, srtelements)
  end;
  writeln(sortlist[1]);
  writeln(sortlist[srtelements])
end.
