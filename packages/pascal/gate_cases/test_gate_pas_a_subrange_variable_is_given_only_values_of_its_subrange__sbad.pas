program sbad(output);
var s: set of 1..10; i: integer;
begin
  s := [2, 4]; writeln('before'); s := [1, 2, 11]; writeln('after')
end.
