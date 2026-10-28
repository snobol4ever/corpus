{$mode objfpc}{$H+}
program pc;
var s: string; p: PChar; c: array[0..4] of char; q: PChar; i: Integer;
begin
  s := 'hello'; p := PChar(s); writeln(p[1], p^, (p + 4)^, ' ', strlen(p));
  c := 'abcde'; q := @c[0]; inc(q, 2); writeln(q^); q^ := 'Z'; writeln(c[2]);
  for i := 0 to 4 do write(c[i]); writeln;
end.
