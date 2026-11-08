{$mode delphi}
type tErg = string[63];
var g: string[10]; s: tErg;
function F: tErg;
begin
  Result := 'x';
  writeln(High(Result), ' ', Low(Result), ' ', Length(Result));
end;
procedure P(var u: tErg);
begin
  writeln(High(u), ' ', Low(u), ' ', Length(u));
end;
begin
  g := 'abc';
  s := 'hello';
  writeln(High(g), ' ', Low(g), ' ', Length(g));
  writeln(High(s), ' ', Low(s), ' ', Length(s));
  writeln(F);
  P(s);
end.
