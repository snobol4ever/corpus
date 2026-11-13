program tctl1(output);
type settype = set of 0..31;
var g: settype; k: integer;
procedure one(var s: settype); begin s := [1, 2] end;
procedure two;
var s, i: integer;
begin s := 3; i := 4; writeln(i * s, ' ', i + s, ' ', i - s) end;
procedure fw(s: settype); forward;
procedure three;
var s: integer;
begin s := 5; writeln(s * 2) end;
procedure fw;
begin if 3 in s then writeln('in') else writeln('out'); if 2 in s then writeln('in2') else writeln('out2') end;
procedure four;
begin g := g + [2]; if 2 in g then writeln('g2') else writeln('not g2') end;
procedure five(var t: settype);
var s: settype; u: integer;
begin s := t * [1, 2, 3]; u := 6; if 1 in s then writeln('s1'); writeln(u * 7) end;
begin
  g := []; one(g); four; two; three; fw([2, 3]); fw([5]); five(g); k := 3; writeln(k * 3)
end.
