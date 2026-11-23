# Collatz and Hanoi: loops and recursion

Program of the Rebus Lab walks (developer_08, 2026-11-23): the same program as the notebook `collatz.ipynb`, one fence a cell (a leading %%rebus line of a cell is the notebook's cell magic and is not in the fence).

```Rebus
# Collatz and Hanoi: loops and recursion
function collatz(n)
  local steps
  steps := 0
  while n ~= 1 do {
    if n % 2 = 0 then n := n / 2 else n := 3 * n + 1
    steps := steps + 1
  }
  return steps
end
```

```Rebus
function longest(limit)
  local i, best, bi, c
  best := 0
  bi := 1
  i := 1
  while i <= limit do {
    c := collatz(i)
    if c > best then {
      best := c
      bi := i
    }
    i := i + 1
  }
  return bi
end
```

```Rebus
function hanoi(n, src, dst, via)
  if n = 0 then return 0
  return hanoi(n - 1, src, via, dst) + 1 + hanoi(n - 1, via, dst, src)
end

function main()
  OUTPUT := "collatz 27 " || collatz(27)
  OUTPUT := "longest under 30 " || longest(30)
  OUTPUT := "hanoi 5 " || hanoi(5, "a", "c", "b")
end
```
