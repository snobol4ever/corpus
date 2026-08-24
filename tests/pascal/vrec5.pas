program vrec5;
type constant = record case cclass: integer of
        1: (rval: packed array [1..8] of char);
        2: (pval: integer);
        3: (slgth: integer;
            sval: packed array [1..8] of char)
    end;
var c: constant;
begin
  c.slgth := 5;
  writeln(c.slgth)
end.
