program w(output);
const
  keep = 300;
  churn = 20000;
type
  link = ^node;
  node = record
    id: integer;
    tag: char;
    mate: link;
    next: link
  end;
var
  head, p, q, m: link;
  i, n, sum, bad: integer;
begin
  head := nil;
  bad := 0;
  for i := 1 to keep do
  begin
    new(p);
    p^.id := i;
    p^.tag := chr(ord('a') + i mod 26);
    new(m);
    m^.id := i * 1000;
    m^.tag := 'm';
    m^.mate := nil;
    m^.next := nil;
    p^.mate := m;
    p^.next := head;
    head := p
  end;
  for i := 1 to churn do
  begin
    new(q);
    q^.id := i;
    q^.tag := 'z';
    q^.mate := nil;
    q^.next := nil;
    if q^.id <> i then bad := bad + 1;
    if q^.tag <> 'z' then bad := bad + 1;
    dispose(q)
  end;
  n := 0;
  sum := 0;
  p := head;
  while p <> nil do
  begin
    n := n + 1;
    sum := sum + p^.id;
    if p^.tag <> chr(ord('a') + p^.id mod 26) then bad := bad + 1;
    if p^.mate^.id <> p^.id * 1000 then bad := bad + 1;
    if p^.mate^.tag <> 'm' then bad := bad + 1;
    p := p^.next
  end;
  writeln('nodes ', n:1, ' sum ', sum:1, ' churn ', churn:1, ' bad ', bad:1);
  p := head;
  while p <> nil do
  begin
    q := p^.next;
    dispose(p^.mate);
    dispose(p);
    p := q
  end;
  new(p);
  p^.id := 7;
  p^.tag := 'k';
  writeln('reused ', p^.id:1, ' ', p^.tag)
end.
