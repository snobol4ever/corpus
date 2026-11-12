{$mode fpc}
program rt1;
var s: string; i: integer;
begin str(42, s); writeln('[', s, ']'); str(7:5, s); writeln('[', s, ']'); str(3.14159:8:3, s); writeln('[', s, ']'); writeln(stringofchar('*', 5)); randomize; i := random(10); writeln((i >= 0) and (i < 10), ' ', random < 1.0) end.
