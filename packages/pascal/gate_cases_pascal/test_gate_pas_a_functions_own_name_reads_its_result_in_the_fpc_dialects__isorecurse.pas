program isorecurse(output);
var k: integer;
function g: integer;
begin k := k + 1; if k > 3 then g := 100 else begin g := 1; g := g + 10 end end;
begin k := 0; writeln(g, ' ', k) end.
