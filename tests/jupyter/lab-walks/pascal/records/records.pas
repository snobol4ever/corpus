{$mode objfpc}
program records_demo;
type
  Item = record
    name: string[8];
    qty, price: integer
  end;
var
  items: array [1..4] of Item;
  count: integer;
procedure put(k: integer; nm: string; q, p: integer);
begin
  items[k].name := nm;
  items[k].qty := q;
  items[k].price := p;
  count := k
end;
procedure setup;
begin
  count := 0;
  put(1, 'bolt', 10, 3);
  put(2, 'nut', 20, 1);
  put(3, 'gear', 5, 12);
  put(4, 'cog', 8, 7)
end;
procedure restock(k, n: integer);
begin
  items[k].qty := items[k].qty + n
end;
procedure show;
var k: integer;
begin
  for k := 1 to count do
    writeln(items[k].name: 6, items[k].qty: 4, items[k].price: 4)
end;
function total(k: integer): integer;
begin
  if k > count then
    total := 0
  else
    total := items[k].qty * items[k].price + total(k + 1)
end;
begin
  setup;
  show;
  restock(3, 5);
  restock(4, 2);
  show;
  writeln('total ', total(1))
end.
