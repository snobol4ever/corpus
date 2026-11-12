{$mode iso}
program int(output);
var f: text; a, b, c, d, e, g: integer;
begin
  assign(f, 'gi.tmp'); rewrite(f);
  writeln(f, '$ff 0x1F xAB %1011 &777 -$10');
  writeln(f, '+0x20 0X7f');
  close(f); reset(f);
  read(f, a, b, c, d, e, g); writeln(a, ' ', b, ' ', c, ' ', d, ' ', e, ' ', g);
  read(f, a, b); writeln(a, ' ', b);
  close(f); erase(f)
end.
