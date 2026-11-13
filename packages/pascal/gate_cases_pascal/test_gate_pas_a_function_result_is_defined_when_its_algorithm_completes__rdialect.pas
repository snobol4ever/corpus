{$mode objfpc}
program rdialect;
function f(n: integer): integer; begin if n > 5 then f := 1 end;
begin writeln('before'); f(2); writeln('after') end.
