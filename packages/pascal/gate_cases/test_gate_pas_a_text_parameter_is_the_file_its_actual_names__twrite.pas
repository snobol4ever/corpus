program twrite(output);
var i: integer;
procedure say(var f: text; k: integer);
begin write(f, 'value '); writeln(f, k:3) end;
begin
  writeln('start');
  for i := 1 to 3 do begin say(output, i * 7); writeln('between ', i:1) end;
  writeln('end')
end.
