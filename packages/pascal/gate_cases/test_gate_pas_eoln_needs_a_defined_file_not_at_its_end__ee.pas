program ee(output);
var f: text; b: boolean;
begin
  rewrite(f); writeln(f, 'x'); reset(f); readln(f); writeln('before'); b := eoln(f); writeln('after ', b)
end.
