program idents(output);
type r = record xor: integer end;
var xor, shl: integer; shr: r;
procedure p(xor: integer; var shl: integer); begin shl := xor * 2 end;
begin xor := 3; p(xor, shl); shr.xor := shl + xor; writeln(xor, shl, shr.xor, (shl) - xor) end.
