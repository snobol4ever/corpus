{$mode fpc}
program lk;
uses SysUtils;
type tc = 'a'..'z'; tname = string[8];
var v: integer; c: tc; n: tname; ok: boolean; flag: integer;
procedure inner; var v: set of char; ok: string; begin v := ['x', 'y']; ok := 'str'; if 'x' in v then writeln('set ', ok); end;
function f(x: integer): boolean; begin f := x > 2; end;
begin
  inner; v := 3; writeln(v * 2, ' ', v + 1);
  c := 'q'; writeln(c, ' ', ord(c), ' ', succ(c));
  n := 'abcdefghijk'; writeln(n, ' ', length(n));
  ok := f(5); flag := 1; if ok then writeln('ok ', ord(ok)) else writeln('not ok'); writeln(flag + 1);
  writeln(length(Format('%d-%s', [12, 'ab'])), ' ', Format('%d-%s', [12, 'ab']));
  writeln(chr(65 + v), ' ', char(66), ' ', ord(char(67)));
end.
