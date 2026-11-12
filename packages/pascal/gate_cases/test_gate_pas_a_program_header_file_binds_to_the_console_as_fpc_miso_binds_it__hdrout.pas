program hdrout(output, g);
var g: text; i: integer;
begin rewrite(g); for i := 1 to 3 do writeln(g, 'heading file line ', i) end.
