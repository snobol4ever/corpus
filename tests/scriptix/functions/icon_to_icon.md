```icon
procedure TWICE(n);
  return n * 2;
end
procedure SHOUT(s);
  return s || "!";
end
```

```icon
procedure main();
  write("twice ", TWICE(7));
  write("shout ", SHOUT("seven"));
end
```
