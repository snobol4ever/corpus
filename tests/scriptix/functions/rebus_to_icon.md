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

```icon
global TWICE, SHOUT
procedure main();
  write("twice ", TWICE(7));
  write("shout ", SHOUT("seven"));
end
```
