program rw(output);
type q = record c: char; n: integer end;
var r: record i: integer; j: integer end;
begin
  with r do begin i := 65; j := 66 end;
  with r do writeln(i, j)
end.
