program named(output);
type kind = (kempty, kfix, kpair); lv = ^cell;
  cell = record case k: kind of kfix: (ival: integer); kpair: (a, d: lv); kempty: () end;
  argvec = array [1..4] of lv;
  plain = ^pcell; pcell = record n: integer; m: integer end; pvec = array [0..2] of plain;
var av: argvec; pv: pvec; x, y: lv; i: integer;
function fix(n: integer): lv; var p: lv; begin new(p); p^.k := kfix; p^.ival := n; fix := p end;
procedure fill(var v: argvec; n: integer); var j: integer; begin for j := 1 to 4 do v[j] := fix(n * j) end;
function total(v: argvec): integer; var j, s: integer; begin s := 0; for j := 1 to 4 do if v[j]^.k = kfix then s := s + v[j]^.ival; total := s end;
begin
  fill(av, 3); writeln(total(av), av[2]^.ival, ord(av[4]^.k));
  new(x); x^.k := kpair; x^.a := av[1]; x^.d := av[2]; av[3] := x; y := av[3]^.d; writeln(y^.ival, av[3]^.a^.ival);
  for i := 0 to 2 do begin new(pv[i]); pv[i]^.n := i * 7; pv[i]^.m := i end; writeln(pv[2]^.n + pv[1]^.m)
end.
