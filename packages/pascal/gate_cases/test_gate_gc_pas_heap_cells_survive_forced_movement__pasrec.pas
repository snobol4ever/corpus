program pasrec(output);
type
  pp = ^prec;
  prec = record
    a, b, c, d: integer;
    tag: packed array[1..40] of char
  end;
var
  p: array[1..40] of pp;
  q: pp;
  i, j, s: integer;
begin
  for i := 1 to 40 do
    begin
      new(p[i]);
      p[i]^.a := i; p[i]^.b := i * 2; p[i]^.c := i * 3; p[i]^.d := i * 4;
      p[i]^.tag := 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
    end;
  for j := 1 to 300 do
    begin
      new(q); q^.a := j;
      q^.tag := 'BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB';
      dispose(q)
    end;
  s := 0;
  for i := 1 to 40 do s := s + p[i]^.a + p[i]^.b + p[i]^.c + p[i]^.d;
  writeln(s); writeln(p[1]^.tag); writeln(p[40]^.tag)
end.
