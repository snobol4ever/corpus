{$mode iso}
program rdr(output);
var f: text; r, s, t, u: real;
begin
  assign(f, 'gr.tmp'); rewrite(f);
  writeln(f, '+123. -.125 .5 7.');
  writeln(f, '1e2 +1e-2');
  close(f); reset(f);
  read(f, r, s, t, u); writeln(round(r), ' ', round(s * 1000), ' ', round(t * 10), ' ', round(u));
  read(f, r, s); writeln(round(r), ' ', trunc(s * 100));
  close(f); erase(f)
end.
