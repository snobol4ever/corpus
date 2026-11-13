program read1(output);
var a: array [1..10] of integer; i: integer;
begin for i := 1 to 10 do a[i] := i; writeln('before'); i := 11; writeln(a[i]); writeln('after') end.
