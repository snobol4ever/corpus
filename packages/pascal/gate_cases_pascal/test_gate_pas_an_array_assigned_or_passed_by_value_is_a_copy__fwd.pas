program fwd(output);
type arr = array [1..3] of integer;
     item = record typ: integer end;
var a: arr; g: item;
procedure setv(var v: arr; x: integer); forward;
procedure keep(v: arr); forward;
function bump(var r: item): integer; forward;
procedure setv; begin v[1] := x end;
procedure keep; begin v[2] := 88; writeln('keep sees ', v[2]:1) end;
function bump; begin r.typ := r.typ + 1; bump := r.typ end;
begin
  a[1] := 1; a[2] := 2; a[3] := 3; g.typ := 4;
  setv(a, 42); writeln('after setv a1=', a[1]:1);
  keep(a); writeln('after keep a2=', a[2]:1);
  writeln('bump=', bump(g):1, ' g=', g.typ:1)
end.
