program fdown(output);
var i: integer; a: array[1..5] of integer;
begin for i := 1 to 5 do a[i] := i; for i := 5 downto 1 do write(a[i]:1, ' '); write(a[i]:1) end.
