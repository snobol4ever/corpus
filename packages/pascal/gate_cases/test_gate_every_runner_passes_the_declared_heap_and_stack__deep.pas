program deepk(input, output);
var reps, rep, r: integer;
function d(n: integer): integer;
begin
  if n = 0 then d := 0 else d := d(n - 1) + 1
end;
begin
  readln(reps);
  r := 0;
  for rep := 1 to reps do r := d(30000);
  writeln(r)
end.
