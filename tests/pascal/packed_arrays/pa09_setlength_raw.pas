{$mode delphi}
program pa09_setlength_raw;
var a: array of boolean; w: array of longword; i: longint;
begin
  setlength(a, 10000000); setlength(w, 10000000);
  a[0] := true; a[9999999] := true; w[1] := 4000000000; w[9999998] := 7;
  setlength(a, 12000000); setlength(w, 11000000);
  writeln(a[0], ' ', a[1], ' ', a[9999999], ' ', a[11999999], ' ', length(a), ' ', high(a));
  writeln(w[1], ' ', w[9999998], ' ', w[10999999], ' ', length(w));
  setlength(a, 3); setlength(w, 2);
  for i := 0 to high(a) do write(a[i], ' ');
  writeln(length(a), ' ', w[0], ' ', w[1], ' ', length(w));
  setlength(a, 0); writeln(length(a));
end.
