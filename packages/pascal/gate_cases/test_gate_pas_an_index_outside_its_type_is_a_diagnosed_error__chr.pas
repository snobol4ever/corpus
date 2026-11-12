program chr(output);
var a: array ['a'..'c'] of integer; c: char;
begin a['b'] := 2; writeln(a['b']:1); c := 'd'; a[c] := 1; writeln('after') end.
