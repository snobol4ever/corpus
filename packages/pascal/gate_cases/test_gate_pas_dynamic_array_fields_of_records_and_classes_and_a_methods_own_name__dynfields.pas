program dynfields;
{$mode objfpc}
type
  TIA = array of integer;
  TRec = record n: integer; a: array of integer; s: string; w: array of string; end;
  TBag = class
    cnt: integer;
    items: array of string;
    grid: array of array of integer;
    ids: TIA;
    name: string;
    procedure Fill(k: integer);
    function Total: integer;
  end;
procedure TBag.Fill(k: integer);
var i, j: integer;
begin
  SetLength(items, k); SetLength(ids, k); SetLength(grid, k);
  for i := 0 to High(items) do
  begin
    items[i] := StringOfChar(chr(ord('a') + i), i + 1);
    ids[i] := (i + 1) * 10;
    SetLength(grid[i], i + 1);
    for j := 0 to High(grid[i]) do grid[i][j] := i * 10 + j
  end;
  cnt := Length(items); name := 'bag'
end;
function TBag.Total: integer;
var i, j: integer;
begin
  Total := 0;
  for i := Low(ids) to High(ids) do Total := Total + ids[i];
  for i := 0 to Length(grid) - 1 do for j := 0 to Length(grid[i]) - 1 do Total := Total + grid[i][j]
end;
var r: TRec; b: TBag; i: integer;
begin
  r.n := 1; SetLength(r.a, 4); SetLength(r.w, 2); r.s := 'str';
  for i := 0 to High(r.a) do r.a[i] := i * i;
  r.w[0] := 'p'; r.w[1] := 'qq';
  writeln(Length(r.a), ' ', High(r.a), ' ', Low(r.a), ' ', r.a[3], ' ', Length(r.w), ' ', r.w[1], ' ', Length(r.s), ' ', r.s);
  b := TBag.Create; b.Fill(4);
  writeln(b.cnt, ' ', Length(b.items), ' ', b.items[3], ' ', High(b.ids), ' ', b.ids[2], ' ', Length(b.grid[3]), ' ', b.grid[3][2], ' ', b.Total, ' ', Length(b.name));
  SetLength(b.items, 2); SetLength(b.ids, 0);
  writeln(Length(b.items), ' ', b.items[1], ' ', Length(b.ids), ' ', High(b.ids));
  b.Free
end.
