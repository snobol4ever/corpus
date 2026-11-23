```pascal
{$mode objfpc}
program board;
var
  a: array [1..12] of integer;
  t: array [1..12] of integer;
  merges: integer;
procedure show(const msg: string);
var k: integer;
begin
  write(msg);
  for k := 1 to 12 do
    write(a[k]: 4);
  writeln
end;
procedure merge(lo, mid, hi: integer);
var i, j, k: integer;
begin
  i := lo; j := mid + 1; k := lo;
  while (i <= mid) and (j <= hi) do
  begin
    if a[i] <= a[j] then
    begin
      t[k] := a[i]; i := i + 1
    end
    else
    begin
      t[k] := a[j]; j := j + 1
    end;
    k := k + 1
  end;
  while i <= mid do
  begin
    t[k] := a[i]; i := i + 1; k := k + 1
  end;
  while j <= hi do
  begin
    t[k] := a[j]; j := j + 1; k := k + 1
  end;
  for k := lo to hi do
    a[k] := t[k];
  merges := merges + 1
end;
procedure msort(lo, hi: integer);
var mid: integer;
begin
  if lo < hi then
  begin
    mid := (lo + hi) div 2;
    msort(lo, mid);
    msort(mid + 1, hi);
    merge(lo, mid, hi)
  end
end;
begin
end.
```

```pascal
{$mode objfpc}
program run;
var
  a: array [1..12] of integer; external;
  t: array [1..12] of integer; external;
  merges: integer; external;
var n: integer;
begin
  merges := 0;
  for n := 1 to 12 do
    a[n] := (n * 7) mod 13;
  show('before:');
  msort(1, 12);
  show('after: ');
  writeln('merges ', merges)
end.
```
