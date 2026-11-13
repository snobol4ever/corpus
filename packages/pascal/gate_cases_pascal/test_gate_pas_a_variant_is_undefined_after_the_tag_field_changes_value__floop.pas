program floop(output);
var f: record case b: boolean of true: (i: integer); false: (c: char) end; x: integer; ch: char;
begin for x := 1 to 2 do begin f.b := (x = 1); if x = 1 then f.i := 4 else begin writeln('second'); ch := f.c end end end.
