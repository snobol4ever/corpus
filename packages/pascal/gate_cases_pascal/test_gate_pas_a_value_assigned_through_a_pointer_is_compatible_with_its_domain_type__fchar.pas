program fchar(output);
type pc = ^char;
var cp: pc;
begin new(cp); cp^ := 1; writeln('x') end.
