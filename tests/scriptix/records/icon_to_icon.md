```icon
record tree(t, v, n, c)
global ROOT
procedure main();
  ROOT := tree("plus", "+", 2, [tree("num", "1", 0), tree("num", "2", 0)]);
end
```

```icon
record tree(t, v, n, c)
global ROOT, BACK
procedure main();
  write("root ", ROOT.t, " ", ROOT.n);
  write("leaves ", ROOT.c[1].v, " ", ROOT.c[2].v);
  BACK := tree("times", "*", 2, [tree("num", "3", 0), tree("num", "4", 0)]);
end
```

```icon
record tree(t, v, n, c)
global BACK
procedure main();
  write("back ", BACK.t, " ", BACK.n);
  write("back leaves ", BACK.c[1].v, " ", BACK.c[2].v);
end
```
