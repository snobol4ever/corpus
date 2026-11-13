program tfunc(output);
var r: record case b: boolean of true: (i: integer); false: (c: char) end; v: integer;
function f(var x: boolean): integer; begin x := true; f := 1 end;
begin v := f(r.b); writeln(v) end.
