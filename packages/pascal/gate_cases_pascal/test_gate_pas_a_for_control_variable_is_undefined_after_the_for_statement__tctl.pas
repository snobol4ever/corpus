program tctl(output);
label 20;
var i, j, k, n: integer; a: array[1..5] of integer; s: integer;
procedure setit(var x: integer); begin x := 42 end;
function find(v: integer): integer;
label 10;
var q: integer;
begin
  find := 0;
  for q := 1 to 5 do if a[q] = v then begin find := q; goto 10 end;
  10: ;
end;
function sumto(m: integer): integer;
var t, r: integer;
begin r := 0; for t := 1 to m do r := r + t; sumto := r end;
procedure p2;
var i: integer;
begin for i := 1 to 3 do write(i:2); i := 9; writeln(i:2) end;
begin
  for i := 1 to 5 do a[i] := i * i;
  writeln(find(9), find(7));
  for i := 1 to 5 do if a[i] = 16 then goto 20;
  20: writeln('i after goto=', i:1);
  for i := 1 to 3 do for j := 1 to i do begin write(i * 10 + j:3); if j = i then writeln end;
  for i := 5 downto 1 do s := s + i; i := 0; writeln(s:1, i:2);
  for k := 3 to 1 do writeln('never'); k := 7; writeln(k:1);
  for i := 1 to 2 do writeln(i:1); setit(i); writeln(i:1);
  for i := 1 to 2 do n := i; read(i); writeln(i:1);
  for i := 1 to 3 do ; i := 100; writeln(i + 1:1);
  writeln(sumto(4):1); p2;
  for i := 1 to 3 do begin for j := i to 3 do s := s + j + i; end; writeln(s:1)
end.
