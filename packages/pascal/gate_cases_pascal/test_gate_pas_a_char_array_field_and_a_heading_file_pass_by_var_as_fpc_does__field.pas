program field(output);
type str = array [1..4] of char; symbol = record value: str; length: integer end; symbolinfo = ^symbol;
var nextsym, other: symbolinfo; r: symbol; i: integer;
procedure store(var length: integer; var value: str); begin length := length + 1; value[length] := chr(ord('w') + length) end;
procedure getsym(var value: str; var length: integer); begin store(length, value); store(length, value) end;
begin
  new(nextsym); nextsym^.length := 0; for i := 1 to 4 do nextsym^.value[i] := '.';
  with nextsym^ do getsym(value, length);
  for i := 1 to 4 do write(nextsym^.value[i]); writeln(nextsym^.length);
  new(other); other^.length := 1; getsym(other^.value, other^.length); writeln(other^.value[2], other^.value[3], other^.length);
  r.length := 0; for i := 1 to 4 do r.value[i] := '-'; store(r.length, r.value); store(r.length, r.value);
  for i := 1 to 4 do write(r.value[i]); writeln(r.length)
end.
