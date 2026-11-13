program w(output);
type
  str = packed array [1..8] of char;
  rec = record
    name: str
  end;
  link = ^rec;
var
  p: link;
  r: rec;
  a, t: str;
  j: integer;
begin
  for j := 1 to 8 do
    t[j] := chr(ord('a') + j);
  a := t;
  write('plainarray ');
  for j := 1 to 8 do write(a[j]);
  writeln;
  r.name := t;
  write('localrec   ');
  for j := 1 to 8 do write(r.name[j]);
  writeln;
  new(p);
  p^.name := t;
  write('ptrrec     ');
  for j := 1 to 8 do write(p^.name[j]);
  writeln;
  for j := 1 to 8 do
    p^.name[j] := t[j];
  write('ptrperchar ');
  for j := 1 to 8 do write(p^.name[j]);
  writeln
end.
