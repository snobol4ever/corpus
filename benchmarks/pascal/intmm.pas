(* PROVENANCE: Hennessy "Intmm" — Stanford integer benchmark suite
   (John L. Hennessy, Stanford, c.1981; public domain). 40x40 integer
   matrix multiply. Algorithm/constants per llvm-test-suite Stanford C port
   (rowsize=40). Canonical RNG. Global matrices (avoids aggregate var-param);
   output = checksum sum of result matrix. Repeat knob via stdin. *)
program intmmbench;
const rowsize = 40;
var ima, imb, imr: array[1..40, 1..40] of integer;
    seed, i, j, k, s, cksum, reps, rep: integer;
begin
  readln(reps);
  cksum := 0;
  for rep := 1 to reps do begin
    seed := 74755;
    for i := 1 to rowsize do
      for j := 1 to rowsize do begin
        seed := (seed * 1309 + 13849) mod 65536;
        ima[i, j] := seed - (seed div 120) * 120 - 60
      end;
    for i := 1 to rowsize do
      for j := 1 to rowsize do begin
        seed := (seed * 1309 + 13849) mod 65536;
        imb[i, j] := seed - (seed div 120) * 120 - 60
      end;
    for i := 1 to rowsize do
      for j := 1 to rowsize do begin
        s := 0;
        for k := 1 to rowsize do s := s + ima[i, k] * imb[k, j];
        imr[i, j] := s
      end;
    cksum := 0;
    for i := 1 to rowsize do
      for j := 1 to rowsize do cksum := cksum + imr[i, j]
  end;
  writeln(cksum)
end.
