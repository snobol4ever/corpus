{$mode objfpc}{$H+}
program wide(output);
var s, t: ansistring; buf: array[1..8] of widechar;
begin
  s := 'abcdefghij';
  buf[1] := 'z';
  StringToWideChar(s, @buf[1], 8); t := widestring(pwidechar(@buf[1])); writeln(t, length(t));
  StringToWideChar('xy', @buf[2], 8); t := widestring(pwidechar(@buf[2])); writeln(t, length(t));
  t := widestring(pwidechar(@buf[1])); writeln(t, length(t))
end.
