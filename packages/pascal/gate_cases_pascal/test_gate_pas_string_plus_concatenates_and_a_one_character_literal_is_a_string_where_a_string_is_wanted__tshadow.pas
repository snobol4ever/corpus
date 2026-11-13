{$mode objfpc}
program tshadow;
var a: array[1..3] of string; i: integer;
procedure loc;
var a: array[1..2] of string;
begin
  a[1] := 'xy'; a[2] := 'z';
  writeln(length(a), ' ', length(a[1]), ' ', a[1] + a[2]);
end;
function sh(a: string): integer; begin sh := length(a) end;
function sc(a: string): string; begin sc := a + '!' end;
begin
  a[1] := 'abc'; a[2] := 'de'; a[3] := 'f';
  writeln(length(a), ' ', length(a[2]), ' ', a[1] + a[3]);
  for i := 1 to 3 do write(length(a[i]));
  writeln;
  if a[2] = 'de' then writeln('eq');
  loc;
  writeln(sh('hello'), ' ', sc('q'));
end.
