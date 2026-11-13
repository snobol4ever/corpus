program packok(output);
var a: array [1..10] of integer;
    b: packed array [1..10] of integer;
    i: integer;
begin
   for i := 1 to 10 do a[i] := i * 3;
   pack(a, 1, b);
   for i := 1 to 10 do write(b[i]:1, ' ');
   writeln
end.
