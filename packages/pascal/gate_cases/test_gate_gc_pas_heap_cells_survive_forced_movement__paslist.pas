program paslist(output);
type
  pp = ^prec;
  prec = record
    f: integer;
    ael, inx: pp;
    tag: packed array[1..24] of char
  end;
var
  head, cur, junk: pp;
  i, j, s: integer;
begin
  head := nil;
  for i := 1 to 120 do
    begin
      new(cur); cur^.f := i;
      cur^.tag := 'LLLLLLLLLLLLLLLLLLLLLLLL';
      cur^.ael := head; cur^.inx := nil; head := cur
    end;
  for j := 1 to 400 do
    begin
      new(junk); junk^.f := j;
      junk^.tag := 'GGGGGGGGGGGGGGGGGGGGGGGG';
      dispose(junk)
    end;
  s := 0; cur := head;
  while cur <> nil do
    begin
      s := s + cur^.f;
      if cur^.tag <> 'LLLLLLLLLLLLLLLLLLLLLLLL' then s := s + 100000;
      cur := cur^.ael
    end;
  writeln(s); writeln(head^.tag)
end.
