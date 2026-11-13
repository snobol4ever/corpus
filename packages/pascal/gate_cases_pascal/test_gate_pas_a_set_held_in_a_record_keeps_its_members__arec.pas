program arec(output);
type set058 = set of 0..58;
     datatype = (undef, int, reel, bool, sett, adr, mark, car);
var store: array [0..20] of record case datatype of
                               undef: ();
                               int: (vi: integer);
                               reel: (vr: real);
                               bool: (vb: boolean);
                               sett: (vs: set058);
                               car: (vc: char);
                               adr: (va: integer);
                               mark: (vm: integer)
                             end;
    s: set058; q, scp, k: integer;
begin
  s := [2, 3]; scp := 11;
  store[scp].vs := s; writeln('eq direct: ', store[scp].vs = s);
  q := 10;
  repeat q := q + 1 until store[q].vs = s;
  writeln('found at q=', q:1);
  store[12].vs := [0, 1, 58]; store[13].vs := store[12].vs;
  write('copied('); for k := 0 to 58 do if k in store[13].vs then write(k:3); writeln(')');
  writeln('in ', 58 in store[13].vs, ' ', 57 in store[13].vs, ' ', store[13].vs = [0, 1, 58])
end.
