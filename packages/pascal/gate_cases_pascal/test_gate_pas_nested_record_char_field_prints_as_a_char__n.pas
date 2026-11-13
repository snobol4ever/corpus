program nestedchar(output);
type
  inner = record
    n: integer;
    tag: char;
    amt: real
  end;
  link = ^outer;
  outer = record
    c: char;
    sub: inner
  end;
var
  p: link;
  r: outer;
begin
  new(p);
  p^.c := 'x';
  p^.sub.n := 4096;
  p^.sub.tag := 'q';
  p^.sub.amt := -1.25;
  r.c := 'y';
  r.sub.n := -70000;
  r.sub.tag := 'w';
  r.sub.amt := 2.5;
  writeln('ptr ', p^.c, p^.sub.tag, ' ', p^.sub.n:1, ' ', p^.sub.amt:8:3);
  writeln('var ', r.c, r.sub.tag, ' ', r.sub.n:1, ' ', r.sub.amt:8:3);
  writeln('ord ', ord(p^.sub.tag):1, ' ', ord(r.sub.tag):1);
  if p^.sub.tag = 'q' then writeln('cmp equal') else writeln('cmp differ')
end.
