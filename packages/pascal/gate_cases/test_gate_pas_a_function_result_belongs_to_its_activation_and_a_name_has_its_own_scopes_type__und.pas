program und(output);
var k: integer;
function f(n: integer): integer; begin if n > 5 then f := n end;
begin k := f(9); writeln(k); k := f(2); writeln('after') end.
