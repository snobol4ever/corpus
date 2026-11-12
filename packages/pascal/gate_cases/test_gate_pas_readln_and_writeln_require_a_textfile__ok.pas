program textok(output);
var f: file of integer;
    t: text;
    x: integer; s: char;
begin
   rewrite(f); write(f, 11); write(f, 22); reset(f);
   read(f, x); writeln('typed read: ', x:1);
   read(f, x); writeln('typed read: ', x:1);
   rewrite(t); writeln(t, 'zq'); reset(t);
   read(t, s); writeln('text read: ', s);
   readln(t);
   writeln('done')
end.
