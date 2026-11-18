```rebus
function TWICE(n)
  return n * 2
end
function SHOUT(s)
  return s || "!"
end
function main()
end
```

```rebus
function main()
  OUTPUT := "twice " || TWICE(7)
  OUTPUT := "shout " || SHOUT("seven")
end
```
