program vrec6;
type constant = record case cclass: integer of
        1: (rval: packed array [1..8] of char);
        2: (pval: integer)
    end;
var c: constant;
begin
  c.pval := 5;
  writeln(c.pval)
end.
