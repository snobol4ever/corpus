program vtag3(output);
type r = record case val: boolean of true: (i: integer); false: (c: char) end;
var a: r;
procedure b(var x: r; var i: integer); begin x.val := false; i := 1 end;
begin writeln('before'); a.val := true; b(a, a.i); writeln('after') end.
