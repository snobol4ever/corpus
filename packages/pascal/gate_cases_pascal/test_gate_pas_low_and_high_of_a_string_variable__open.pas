{$mode delphi}
program open(output);
var t: shortstring;
procedure P(s: OpenString);
begin
  writeln(s, ' ', high(s), ' ', low(s))
end;
begin
  P('12345');
  t := 'xy';
  P(t);
  writeln(high(t))
end.
