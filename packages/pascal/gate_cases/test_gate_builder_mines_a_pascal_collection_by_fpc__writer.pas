program writer(output);
var f: text;
begin
  assign(f, 'made.txt'); rewrite(f); writeln(f, 'x'); close(f); writeln('wrote')
end.
