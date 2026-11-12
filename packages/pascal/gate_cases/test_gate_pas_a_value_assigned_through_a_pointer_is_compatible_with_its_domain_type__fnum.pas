program fnum(output);
const n = 66;
type pc = ^char;
var cp: pc;
begin new(cp); cp^ := n; writeln('x') end.
