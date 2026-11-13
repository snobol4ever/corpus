program rf4(output);
type pt = ^integer;
function f(n: integer): pt; var q: pt; begin new(q); if n > 5 then f := q end;
begin writeln('before'); if f(2) = nil then writeln('nil') end.
