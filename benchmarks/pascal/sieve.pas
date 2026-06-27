(* PROVENANCE: Sieve of Eratosthenes (Byte-magazine sieve benchmark lineage).
   Public-domain algorithm. Benchmark form: counts primes < limit, repeat knob
   via stdin. SCRIP corpus PAS-BENCH. *)
program sievebench;
const limit = 8190;
var flags: array[0..8190] of boolean;
    reps, rep, i, k, count: integer;
begin
  readln(reps);
  count := 0;
  for rep := 1 to reps do begin
    count := 0;
    for i := 0 to limit do flags[i] := true;
    for i := 0 to limit do
      if flags[i] then begin
        k := i + i + 3;
        while i + k <= limit do begin
          flags[i + k] := false;
          k := k + i + i + 3
        end;
        count := count + 1
      end
  end;
  writeln(count)
end.
