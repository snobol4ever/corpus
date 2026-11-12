{$mode objfpc}
program tmode;
var r: record case b: boolean of true: (i: integer); false: (c: char) end; c: char;
begin r.b := true; r.i := 1; r.b := false; c := r.c; writeln('done') end.
