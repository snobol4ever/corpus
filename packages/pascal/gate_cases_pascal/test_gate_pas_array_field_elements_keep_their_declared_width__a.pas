program w(output);
type
  inner = record
    lo: integer;
    hi: integer
  end;
  link = ^node;
  node = record
    ints: array [1..6] of integer;
    reals: array [1..3] of real;
    tag: packed array [1..4] of char;
    sub: inner;
    next: link
  end;
var
  p, q: link;
  i, s: integer;
  t: real;
begin
  new(p);
  for i := 1 to 6 do p^.ints[i] := i * 300;
  p^.reals[1] := 1.5;
  p^.reals[2] := -2.25;
  p^.reals[3] := 1000.125;
  p^.tag := 'abcd';
  p^.sub.lo := 4000;
  p^.sub.hi := -70000;
  p^.next := nil;
  s := 0;
  for i := 1 to 6 do s := s + p^.ints[i];
  write('ints');
  for i := 1 to 6 do write(' ', p^.ints[i]:1);
  writeln(' sum ', s:1);
  t := p^.reals[1] + p^.reals[2] + p^.reals[3];
  writeln('reals ', p^.reals[1]:8:3, p^.reals[2]:8:3, p^.reals[3]:10:3, ' sum ', t:10:3);
  writeln('tag ', p^.tag, ' sub ', p^.sub.lo:1, ' ', p^.sub.hi:1);
  new(q);
  for i := 1 to 6 do q^.ints[i] := 7 - i;
  q^.sub.lo := 1;
  q^.sub.hi := 2;
  q^.next := p;
  write('second');
  for i := 1 to 6 do write(' ', q^.ints[i]:1);
  writeln(' first-again ', q^.next^.ints[6]:1, ' ', q^.next^.sub.hi:1)
end.
