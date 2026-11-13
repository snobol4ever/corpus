{$mode iso}
program dec(output);
var f: text; a, b, c: integer; r: real;
begin
  assign(f, 'gd.tmp'); rewrite(f);
  writeln(f, '   12  -34 +56 ');
  writeln(f, '0 007 1.5');
  close(f); reset(f);
  read(f, a, b, c); writeln(a, ' ', b, ' ', c);
  read(f, a, b); writeln(a, ' ', b);
  read(f, r); writeln(round(r * 10));
  close(f); erase(f)
end.
