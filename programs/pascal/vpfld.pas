program vpfld(output);
type rec = record fld: integer; other: integer end; pr = ^rec;
var p: pr;
  procedure genlabel(var nxtlab: integer); begin nxtlab := 42 end;
begin new(p); p^.fld := 7; p^.other := 99; genlabel(p^.fld);
  writeln(p^.fld); writeln(p^.other) end.
