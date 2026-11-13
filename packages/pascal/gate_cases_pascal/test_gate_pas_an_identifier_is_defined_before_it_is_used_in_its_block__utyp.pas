program utyp(output);
type t = integer;
procedure p;
type u = t;
     t = char;
var x: u;
begin
  x := 1; writeln(x)
end;
begin
  p
end.
