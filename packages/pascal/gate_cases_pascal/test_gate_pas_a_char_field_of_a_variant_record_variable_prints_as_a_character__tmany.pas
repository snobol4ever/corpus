program tmany(output);
const star='*';
type color=(red,green,blue);
  shape=record n: integer; case k: color of red:(r:integer); green,blue:(g:char; h:char) end;
  flip=record case b: boolean of true:(c:char); false:(i:integer; j:integer) end;
var s: shape; f: flip; p: ^shape; a: array[1..2] of shape;
begin
  s.n:=7; s.k:=green; s.g:=star; s.h:='x';
  writeln(s.g); writeln(s.g,s.h); writeln(s.g:3); writeln(ord(s.g)); writeln(s.g='*');
  s.k:=red; s.r:=65; writeln(s.r); writeln(s.n);
  f.b:=true; f.c:='Q'; writeln(f.c); writeln(succ(f.c));
  f.b:=false; f.i:=66; f.j:=67; writeln(f.i); writeln(f.j); writeln(f.i+1);
  f.b:=true; f.c:='z'; writeln(f.c,f.c);
  new(p); p^.k:=blue; p^.g:='P'; writeln(p^.g); p^.k:=red; p^.r:=44; writeln(p^.r);
  a[2].k:=green; a[2].g:='W'; writeln(a[2].g);
  with s do begin k:=green; g:='M'; writeln(g); k:=red; r:=77; writeln(r) end
end.
