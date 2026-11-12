program scope(output);
type ft = file of integer;
var f: ft; v: integer;
procedure p(var x: ft);
begin rewrite(x); write(x, 41) end;
procedure q;
var x: integer;
begin x := 5; x := x + 1; writeln(x) end;
function r(x: integer): integer;
begin r := x * 2 end;
begin
  p(f); reset(f); read(f, v); writeln(v);
  q; writeln(r(21))
end.
