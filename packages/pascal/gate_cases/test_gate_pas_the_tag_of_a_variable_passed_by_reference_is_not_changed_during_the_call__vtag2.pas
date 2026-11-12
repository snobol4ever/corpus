program vtag2(output);
var a: record case val: boolean of true: (i: integer); false: (c: char) end;
procedure b(var i: integer); begin a.val := false end;
begin writeln('before'); a.val := true; b(a.i); writeln('after') end.
