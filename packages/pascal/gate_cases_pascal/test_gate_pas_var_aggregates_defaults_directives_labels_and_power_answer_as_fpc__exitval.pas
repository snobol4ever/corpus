program ex(output);
function f(n: integer): integer; begin if n > 0 then exit(n * 2); f := 0 end;
begin writeln(f(3), f(-1)) end.
