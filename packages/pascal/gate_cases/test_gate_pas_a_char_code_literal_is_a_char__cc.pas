program cc(output);
const nul = #0; bell = #7; big = #$41;
type ctl = #0..#31;
var a: array[1..4] of char; c: char; k: ctl; i: integer;
begin
  c := #0;
  writeln(ord(c), ' ', ord(nul), ' ', ord(bell), ' ', big, ' ', #66, #$43);
  if c = #0 then writeln('c = #0') else writeln('c <> #0');
  if c = chr(0) then writeln('c = chr(0)') else writeln('c <> chr(0)');
  a[1] := #0; a[2] := #$30; a[3] := #57; a[4] := nul;
  for i := 1 to 4 do write(ord(a[i]), ' '); writeln;
  if (a[1] = #0) and (a[4] = #0) and (a[2] < a[3]) then writeln('array ok');
  k := #10; writeln('k ', ord(k), ' ', ord(succ(k)));
  for i := 0 to 3 do
  begin
    c := chr(i * 32);
    case c of
      #0: writeln(i, ' is nul');
      #32: writeln(i, ' is space');
      #64: writeln(i, ' is at');
      #$60: writeln(i, ' is grave')
    end
  end
end.
