program vact(output);
var a: record case val: boolean of true: (i: integer); false: (c: char) end;
begin
  writeln('before'); a.val := true; a.c := 'c'; writeln('after')
end.
