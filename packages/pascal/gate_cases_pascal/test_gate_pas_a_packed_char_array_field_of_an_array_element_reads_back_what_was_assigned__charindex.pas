program charindex(output);
type devicerec = record name: packed array [1..8] of char; downtime: integer end;
var d: array ['0'..'3'] of devicerec; c: char;
begin
  d['2'].name := 'Phaser C'; d['2'].downtime := 2;
  writeln(d['2'].name, d['2'].downtime:3);
  c := '2';
  writeln(d[c].name, d[c].downtime:3);
  for c := '0' to '3' do d[c].name := 'abcdefgh';
  c := '3'; writeln(d[c].name)
end.
