program ctl(input, output);
var n: integer;
procedure get;
begin
  n := n + 1; writeln('user get ', n)
end;
begin
  n := 0; get; writeln; get; readln; writeln('done')
end.
