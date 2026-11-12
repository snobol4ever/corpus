program rf3(output);
function f(n: integer): boolean; begin if n > 5 then f := true else if n > 9 then f := false end;
begin writeln('before'); writeln(f(2)) end.
