program anon(output);
type set058 = set of 0..58;
     datatype = (undef, int, sett);
var store: array [0..9] of record case datatype of undef: (); int: (vi: integer); sett: (vs: set058) end;
    sp, k: integer;
begin
  store[1].vs := [8]; store[2].vs := [0, 1, 2, 3, 6]; sp := 1;
  store[sp].vs := store[sp].vs + store[sp + 1].vs;
  for k := 0 to 58 do if k in store[1].vs then write(k:1, ' '); writeln;
  writeln(store[1].vs = store[2].vs, ' ', store[2].vs <= store[1].vs)
end.
