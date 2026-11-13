program oor(output);
var y: array[1..4] of integer;
procedure inc(var v: integer); begin v := v + 1 end;
begin y[1] := 1; inc(y[1]); writeln('before'); inc(y[9]); writeln('after') end.
