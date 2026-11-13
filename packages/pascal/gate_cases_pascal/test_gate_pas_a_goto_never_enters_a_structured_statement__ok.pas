program gotoctl(output);
label 9;
var n: integer;
procedure bail(k: integer);
begin if k > 2 then goto 9; writeln('bail kept ', k) end;
procedure scan;
label 1, 2, 3;
var j, k: integer;
begin
  j := 0;
  1: j := j + 1;
  if j < 3 then goto 1;
  for k := 1 to 5 do begin
    if k = 4 then goto 2;
    writeln('loop ', k)
  end;
  2: writeln('scan done ', j);
  if j = 3 then begin writeln('then branch'); goto 3 end
  else writeln('else branch');
  writeln('skipped by goto');
  3: writeln('forward goto out of a branch landed')
end;
begin
  n := 0; scan;
  bail(1); bail(2);
  writeln('never');
  9: writeln('outer label')
end.
