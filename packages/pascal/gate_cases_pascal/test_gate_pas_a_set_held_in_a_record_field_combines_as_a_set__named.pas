program named(output);
type set058 = set of 0..58;
     cell = record case integer of 1: (vi: integer); 2: (vs: set058) end;
var store: array [0..9] of cell; sp, k: integer; r: cell; s: set058;
procedure pr(s: set058); var k: integer; begin for k := 0 to 58 do if k in s then write(k:1, ' '); writeln end;
begin
  store[1].vs := [8]; store[2].vs := [0, 1, 2, 3, 6]; sp := 1;
  store[sp].vs := store[sp].vs + store[sp + 1].vs; pr(store[1].vs);
  store[3].vs := [8]; store[3].vs := store[3].vs + store[2].vs; pr(store[3].vs);
  store[4].vs := [8]; s := store[2].vs; store[4].vs := store[4].vs + s; pr(store[4].vs);
  r.vs := [8]; r.vs := r.vs + store[2].vs; pr(r.vs);
  store[5].vs := [1, 2] * store[2].vs; pr(store[5].vs);
  store[6].vs := store[2].vs - [1]; pr(store[6].vs)
end.
