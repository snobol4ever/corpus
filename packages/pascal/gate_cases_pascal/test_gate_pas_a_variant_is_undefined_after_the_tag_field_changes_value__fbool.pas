program fbool(output);
var r: record case b: boolean of true: (i: integer); false: (c: char) end; c: char;
begin r.b := true; r.i := 1; r.b := false; writeln('before error'); c := r.c; writeln('after') end.
