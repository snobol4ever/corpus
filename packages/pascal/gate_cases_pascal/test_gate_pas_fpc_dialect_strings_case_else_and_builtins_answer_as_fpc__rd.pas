program rd;
var f: text; t, u: string;
begin
  readln(t); readln(u);
  writeln('[', t, '] [', u, ']');
  assign(f, 'zz_out.txt'); rewrite(f); writeln(f, 'line one'); writeln(f, 'line two'); close(f);
  assign(f, 'zz_out.txt'); reset(f); readln(f, t); readln(f, u); close(f);
  writeln(t, '|', u)
end.
