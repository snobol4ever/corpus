program fileok(output);
type r = record i: integer; c: char end;
var f: file of integer;
    g: file of r;
    t: text;
    x: integer; v: r;
begin
   rewrite(f); write(f, 42); reset(f); read(f, x); writeln('int file: ', x:1);
   v.i := 7; v.c := 'q';
   rewrite(g); write(g, v); reset(g); read(g, v); writeln('rec file: ', v.i:1, ' ', v.c);
   rewrite(t); writeln(t, 'hello'); reset(t);
   writeln('done')
end.
