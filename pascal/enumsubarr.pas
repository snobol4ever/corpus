program enumsubarr(output);
type
  season = (spring, summer, fall, winter);
  month = 1..12;
var
  days: array[season] of integer;
  counts: array[month] of integer;
  s: season;
  i: integer;
begin
  days[spring] := 91; days[summer] := 92;
  days[fall] := 91; days[winter] := 90;
  for s := spring to winter do writeln(days[s]);
  for i := 1 to 12 do counts[i] := i * 3;
  writeln(counts[1]);
  writeln(counts[12])
end.
