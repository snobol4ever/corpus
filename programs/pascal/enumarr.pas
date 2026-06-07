program enumarr(output);
type color = (red, green, blue);
var a: array[color] of integer;
    c: color;
begin
  a[red] := 10; a[green] := 20; a[blue] := 30;
  for c := red to blue do writeln(a[c])
end.
