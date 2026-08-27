{----------------------------------------------------------------------- 1 ptr1}
program ptr1(output);
type
  ip = ^integer;
var
  p : ip;
begin
  new(p);
  p^ := 42;
  writeln(p^)
end.
{----------------------------------------------------------------------- 2 ptr2}
program ptr2(output);
type ip = ^integer;
var p, q : ip;
begin
  new(p); new(q);
  p^ := 10; q^ := 20;
  writeln(p^ + q^);
  p^ := p^ + 1;
  writeln(p^, q^)
end.
{----------------------------------------------------------------------- 3 ptr3}
program ptr3(output);
type ip = ^integer;
var p : ip;
begin
  p := nil;
  if p = nil then writeln(1) else writeln(0);
  new(p);
  if p <> nil then writeln(2) else writeln(0)
end.
{----------------------------------------------------------------------- 4 ptr4}
program ptr4(output);
type
  link = ^node;
  node = record
           val : integer;
           next : link
         end;
var
  head, p : link;
begin
  new(head);
  head^.val := 1;
  new(p);
  p^.val := 2;
  p^.next := nil;
  head^.next := p;
  writeln(head^.val);
  writeln(head^.next^.val)
end.
{----------------------------------------------------------------------- 5 ptr5}
program ptr5(output);
type link = ^node; node = record val : integer; next : link end;
var head, t, p : link; i : integer;
begin
  head := nil;
  for i := 1 to 3 do
  begin
    new(t);
    t^.val := i * 10;
    t^.next := head;
    head := t
  end;
  p := head;
  while p <> nil do
  begin
    writeln(p^.val);
    p := p^.next
  end
end.
{----------------------------------------------------------------------- 6 ptr6}
program ptr6(output);
type ip = ^integer;
var p, q : ip;
begin
  new(p);
  p^ := 5;
  q := p;
  q^ := 99;
  writeln(p^);
  if p = q then writeln(1) else writeln(0)
end.
{----------------------------------------------------------------------- 7 ptr7}
program ptr7(output);
type ip = ^integer;
var p, q : ip;
begin
  new(p); new(q);
  p^ := 1; q^ := 1;
  if p = q then writeln(100) else writeln(200);
  q := p;
  if p = q then writeln(300) else writeln(400)
end.
{----------------------------------------------------------------------- 8 ptr8}
program ptr8(output);
type link = ^node; node = record val : integer; next : link end;
var head : link;

procedure printlist(p : link);
begin
  while p <> nil do
  begin
    writeln(p^.val);
    p := p^.next
  end
end;

procedure setval(p : link; v : integer);
begin
  p^.val := v
end;

begin
  new(head);
  head^.val := 1;
  new(head^.next);
  head^.next^.val := 2;
  head^.next^.next := nil;
  setval(head, 77);
  printlist(head)
end.
