program ctl(output);
type r = record n: integer; case val: boolean of true: (i: integer); false: (c: char) end;
var a: r;
procedure inc1(var i: integer); begin i := i + 1 end;
procedure same(var i: integer); begin a.val := true; i := i + 10 end;
function twice(var i: integer): integer; begin i := i * 2; twice := i end;
begin
  a.n := 1; a.val := true; a.i := 5;
  inc1(a.i); writeln(a.i);
  same(a.i); writeln(a.i);
  inc1(a.n); writeln(a.n);
  writeln(twice(a.n), ' ', a.n);
  a.val := false; a.val := true; a.i := 3; writeln(a.i)
end.
