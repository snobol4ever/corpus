program vrec8;
type r = record
      a: array [1..4] of integer;
      pval: integer
    end;
var c: r;
begin
  c.pval := 5;
  writeln(c.pval)
end.
