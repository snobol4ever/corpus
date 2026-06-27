(* PROVENANCE: Hennessy "Bubble" — Stanford integer benchmark suite
   (John L. Hennessy, Stanford, c.1981; long-circulated, public domain).
   Algorithm/constants per llvm-test-suite Stanford C port
   (github.com/llvm/llvm-test-suite SingleSource/Benchmarks/Stanford).
   Canonical RNG seed=(seed*1309+13849) mod 65536, seed0=74755.
   P4-faithful transliteration. Repeat knob via stdin. *)
program bubblebench;
const srtelements = 500;
var sortlist: array[1..500] of integer;
    seed, biggest, littlest, top, i, temp, reps, rep: integer;
begin
  readln(reps);
  biggest := 0; littlest := 0;
  for rep := 1 to reps do begin
    seed := 74755; biggest := 0; littlest := 0;
    for i := 1 to srtelements do begin
      seed := (seed * 1309 + 13849) mod 65536;
      temp := seed;
      sortlist[i] := temp - (temp div 100000) * 100000 - 50000;
      if sortlist[i] > biggest then biggest := sortlist[i]
      else if sortlist[i] < littlest then littlest := sortlist[i]
    end;
    top := srtelements;
    while top > 1 do begin
      i := 1;
      while i < top do begin
        if sortlist[i] > sortlist[i + 1] then begin
          temp := sortlist[i]; sortlist[i] := sortlist[i + 1]; sortlist[i + 1] := temp
        end;
        i := i + 1
      end;
      top := top - 1
    end
  end;
  writeln(sortlist[1]);
  writeln(sortlist[srtelements])
end.
