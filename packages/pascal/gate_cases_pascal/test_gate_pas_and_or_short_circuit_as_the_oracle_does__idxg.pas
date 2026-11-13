program idxg(output);
var i: integer; a: array [1..10] of char;
begin
  i := 11;
  writeln('The result is: ', (i = 1) and (a[i] = 'g'));
  writeln('or: ', (i = 11) or (a[i] = 'g'))
end.
