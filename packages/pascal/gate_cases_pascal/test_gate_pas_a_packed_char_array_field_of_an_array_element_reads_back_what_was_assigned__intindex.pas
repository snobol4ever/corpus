program intindex(output);
type devicerec = record name: packed array [1..8] of char; downtime: integer end;
var d: array [0..3] of devicerec; r: devicerec; i: integer;
begin
  r.name := 'Warp Eng'; r.downtime := 1;
  writeln(r.name, r.downtime:3);
  d[2].name := 'Phaser C'; d[2].downtime := 2;
  writeln(d[2].name, d[2].downtime:3);
  i := 2;
  writeln(d[i].name, d[i].downtime:3);
  d[i].name := 'Photon T';
  writeln(d[i].name)
end.
