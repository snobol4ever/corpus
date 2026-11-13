program falias(output);
type a = char; b = ^a;
var cp: b;
begin new(cp); cp^ := 1; writeln('x') end.
