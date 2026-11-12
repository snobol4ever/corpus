program vtag(output);
var a: record case val: boolean of true: (i: integer); false: (c: char) end;
procedure b(var i: integer); begin a.val := false; i := 1 end;
begin writeln('before'); a.val := true; b(a.i); writeln('after') end.
