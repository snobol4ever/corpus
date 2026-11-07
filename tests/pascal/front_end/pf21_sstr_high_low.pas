{$mode delphi}
type tErg = string[63];
var g: string[10];
function F: tErg;
begin
  Result := 'x';
  writeln(High(Result), ' ', Low(Result), ' ', Length(Result));
end;
begin
  g := 'abc';
  writeln(High(g), ' ', Low(g), ' ', Length(g));
  writeln(F);
end.
