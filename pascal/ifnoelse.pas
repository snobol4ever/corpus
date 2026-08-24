program ifnoelse(output);
var i: integer; flag: boolean;
begin
  i := 0;
  flag := true;
  repeat
    i := i + 1;
    if flag then flag := false
  until i >= 3;
  writeln('done i=', i:1)
end.
