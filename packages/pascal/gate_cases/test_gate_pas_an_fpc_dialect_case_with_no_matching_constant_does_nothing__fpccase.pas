program fpccase(output);
var i, n: integer; s: string; c: char;
begin
  s := 'x'; n := 0;
  for i := 0 to 7 do
  begin
    case i mod 4 of 1: n := n + 1; 2: n := n + 10 end;
    case i of 3, 5: write('[', i, ']') end
  end;
  c := 'q'; case c of 'a': writeln('a'); 'b'..'d': writeln('bd') end;
  writeln(n, ' ', s)
end.
