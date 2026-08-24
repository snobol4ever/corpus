program vrec7;
type constant = record
      rval: packed array [1..8] of char;
      pval: integer
    end;
var c: constant;
begin
  c.pval := 5;
  writeln(c.pval)
end.
