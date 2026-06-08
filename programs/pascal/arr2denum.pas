program arr2denum(output);
type color = (red, green, blue);
var
  tbl: array[red..blue, 0..2] of integer;
  c: color; j: integer;
begin
  tbl[red,0]   := 10; tbl[red,1]   := 11; tbl[red,2]   := 12;
  tbl[green,0] := 20; tbl[green,1] := 21; tbl[green,2] := 22;
  tbl[blue,0]  := 30; tbl[blue,1]  := 31; tbl[blue,2]  := 32;
  for c := red to blue do begin
    for j := 0 to 2 do
      write(tbl[c,j]:5);
    writeln
  end
end.
