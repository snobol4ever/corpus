program vrec9;
type r = record
      pval: integer;
      a: array [1..4] of integer
    end;
var c: r;
begin
  c.pval := 5;
  writeln(c.pval)
end.
