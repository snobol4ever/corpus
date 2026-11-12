program v1(output);
type string = packed array[1..3] of char;
var otherwise: integer; s: string;
begin
  otherwise := 5; s := 'abc';
  writeln(s, otherwise)
end.
