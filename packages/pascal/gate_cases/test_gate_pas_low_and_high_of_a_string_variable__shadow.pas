{$mode delphi}
program shadow(output);
var s: string;
procedure P(s: OpenString);
begin
  writeln(high(s))
end;
procedure Q;
var s: shortstring;
begin
  s := 'q';
  writeln(high(s))
end;
begin
  s := 'abcd';
  P('zz');
  writeln(high(s));
  Q;
  writeln(high(s))
end.
