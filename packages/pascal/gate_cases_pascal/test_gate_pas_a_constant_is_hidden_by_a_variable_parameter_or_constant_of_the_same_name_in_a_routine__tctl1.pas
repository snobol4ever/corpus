program tctl1(output);
const maxsize = 32; n = 5; limit = 9;
type rec = record maxsize: integer; z: integer end;
     color = (red, green, blue);
var r: rec; k: integer;
procedure p; var maxsize: integer; begin maxsize := 7; writeln(maxsize) end;
procedure q(n: integer); begin writeln(n) end;
procedure s;
const limit = 3;
begin writeln(limit) end;
procedure t; var red: integer; begin red := 41; writeln(red + 1) end;
procedure u;
var minsize, maxsize, lsize: integer;
begin minsize := 4; maxsize := minsize; lsize := maxsize + 1; if lsize > maxsize then maxsize := lsize; writeln(minsize, ' ', maxsize, ' ', lsize) end;
begin p; writeln(maxsize); r.maxsize := 3; writeln(r.maxsize); q(8); writeln(n); s; writeln(limit); t; writeln(ord(green)); u; writeln(maxsize) end.
