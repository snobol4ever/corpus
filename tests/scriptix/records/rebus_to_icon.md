```rebus
record tree(t, v, n, c)
function main()
  K := ARRAY(2)
  K[1] := tree("num", "1", 0)
  K[2] := tree("num", "2", 0)
  ROOT := tree("plus", "+", 2, K)
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

```rebus
record tree(t, v, n, c)
function main()
  OUTPUT := "back " || t(BACK) || " " || n(BACK)
  K := c(BACK)
  OUTPUT := "back leaves " || v(K[1]) || " " || v(K[2])
end
```
