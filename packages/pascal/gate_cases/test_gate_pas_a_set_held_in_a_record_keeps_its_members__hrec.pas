program hrec(output);
const setlow = 0; sethigh = 63;
type setlohi = set of setlow..sethigh;
     cstclass = (reel, pset, strg);
     csp = ^constant;
     constant = record case cclass: cstclass of
                  reel: (rval: packed array [1..8] of char);
                  pset: (pval: setlohi);
                  strg: (slgth: 0..8; sval: packed array [1..8] of char)
                end;
var lvp: csp; cstpart, s2: setlohi; k: integer; cstptr: array [1..4] of csp;
procedure show(tag: char; s: setlohi);
  var k: integer;
begin write(tag, '('); for k := setlow to sethigh do if k in s then write(k:3); writeln(')') end;
begin
  cstpart := [2, 3];
  new(lvp, pset); lvp^.pval := cstpart; lvp^.cclass := pset;
  write('a('); for k := setlow to sethigh do if k in lvp^.pval then write(k:3); writeln(')');
  with lvp^ do begin write('b('); for k := setlow to sethigh do if k in pval then write(k:3); writeln(')') end;
  cstptr[2] := lvp;
  with cstptr[2]^ do begin write('c('); for k := setlow to sethigh do if k in pval then write(k:3); writeln(')') end;
  s2 := lvp^.pval; show('d', s2);
  new(lvp, pset); lvp^.pval := [0, 9, 12, 63]; show('e', lvp^.pval);
  writeln('eq ', lvp^.pval = [0, 9, 12, 63], ' ', cstptr[2]^.pval = cstpart, ' ', cstptr[2]^.pval <= [1..5])
end.
