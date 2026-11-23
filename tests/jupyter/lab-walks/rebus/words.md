# Words: reverse, palindromes and vowels

Program of the Rebus Lab walks (developer_08, 2026-11-23): the same program as the notebook `words.ipynb`, one fence a cell (a leading %%rebus line of a cell is the notebook's cell magic and is not in the fence).

```Rebus
# Words: reverse, palindromes and vowels
function rev(s)
  local i, r
  r := ""
  i := size(s)
  while i >= 1 do {
    r := r || SUBSTR(s, i, 1)
    i := i - 1
  }
  return r
end
```

```Rebus
function ispal(s)
  if s == rev(s) then return s
  fail
end

function isvowel(c)
  if c == "a" then return 1
  if c == "e" then return 1
  if c == "i" then return 1
  if c == "o" then return 1
  if c == "u" then return 1
  fail
end

function vowels(s)
  local i, n, c
  n := 0
  i := 1
  while i <= size(s) do {
    c := SUBSTR(s, i, 1)
    if isvowel(c) then n := n + 1
    i := i + 1
  }
  return n
end
```

```Rebus
function main()
  OUTPUT := rev("stressed")
  OUTPUT := vowels("encyclopedia")
  if ispal("level") then OUTPUT := "level yes"
  if ispal("scrip") then OUTPUT := "scrip yes" else OUTPUT := "scrip no"
end
```
