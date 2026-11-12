{$mode objfpc}
program dyninit;
type TRec = record n: Integer; s: String; end;
var a: array of Integer = (-9, 42, -38, 7);
    d: array of Double = (1.5, 2.25);
    s: array of String = ('a', 'bc', 'def');
    nn: array of array of Integer = ((1, 2), (3, 4, 5), (6));
    r: array of TRec = ((n: 1; s: 'one'), (n: 2; s: 'two'));
    t: array of Integer = (10, 20, 30);
    i, j: Integer;
procedure Local;
var la: array of Integer = (5, 6, 7);
    k: Integer;
begin
  for k := 0 to High(la) do write(la[k], ' ');
  writeln(Length(la));
end;
begin
  writeln(Length(a), ' ', Low(a), ' ', High(a), ' ', a[0], ' ', a[3]);
  writeln(Length(d), ' ', d[0]:0:2, ' ', d[1]:0:2);
  writeln(Length(s), ' ', s[0], s[1], s[2]);
  writeln(Length(nn), ' ', Length(nn[0]), ' ', Length(nn[1]), ' ', Length(nn[2]));
  for i := 0 to High(nn) do begin for j := 0 to High(nn[i]) do write(nn[i][j], ' '); end; writeln;
  writeln(Length(r), ' ', r[0].n, r[0].s, ' ', r[1].n, r[1].s);
  writeln(Length(t), ' ', t[2]);
  a[1] := 100; writeln(a[0], ' ', a[1]);
  Local;
end.
