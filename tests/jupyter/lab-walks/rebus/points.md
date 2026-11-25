# Points: records, an array of records and a bubble sort

Rebus Lab walks program (developer_08, 2026-11-23): the same program as the notebook, one fence a cell.

```Rebus
record point(x, y)

function sqdist(p, q)
  local dx, dy
  dx := x(p) - x(q)
  dy := y(p) - y(q)
  return dx * dx + dy * dy
end
```

```Rebus
function sortpoints(a, n)
  local i, j, t
  i := 1
  while i < n do {
    j := 1
    while j <= n - i do {
      if x(a[j]) > x(a[j + 1]) then {
        t := a[j]
        a[j] := a[j + 1]
        a[j + 1] := t
      }
      j := j + 1
    }
    i := i + 1
  }
  return a
end
```

```Rebus
function main()
  local pts, k, o
  pts := ARRAY(4)
  pts[1] := point(5, 1)
  pts[2] := point(2, 7)
  pts[3] := point(9, 3)
  pts[4] := point(1, 1)
  o := point(0, 0)
  pts := sortpoints(pts, 4)
  k := 1
  while k <= 4 do {
    OUTPUT := x(pts[k]) || "," || y(pts[k]) || " " || sqdist(pts[k], o)
    k := k + 1
  }
end
```
