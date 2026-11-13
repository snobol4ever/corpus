program wr(output);
type ft = file of integer;
var f: ft; v: integer;
procedure emit(var y: ft; n: integer);
begin write(y, n); write(y, n + 1) end;
procedure fill(var x: ft; n: integer);
begin rewrite(x); emit(x, n); emit(x, n + 10) end;
begin
  fill(f, 7);
  reset(f);
  while not eof(f) do begin read(f, v); writeln(v) end
end.
