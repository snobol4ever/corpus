program n;
{$mode objfpc}
type tf = array[0..9] of longword; pf = ^tf;
var a: pf; i: integer;
begin
  new(a);
  for i := 0 to 9 do a^[i] := i * i;
  writeln(a^[3], ' ', high(a^));
  dispose(a)
end.
