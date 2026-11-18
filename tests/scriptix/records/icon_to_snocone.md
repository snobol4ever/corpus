```icon
record tree(t, v, n, c)
global ROOT
procedure main();
  ROOT := tree("plus", "+", 2, [tree("num", "1", 0), tree("num", "2", 0)]);
end
```

```snocone
DATA('tree(t,v,n,c)');
OUTPUT = 'root ' t(ROOT) ' ' n(ROOT);
K = c(ROOT);
OUTPUT = 'leaves ' v(K[1]) ' ' v(K[2]);
J = ARRAY(2);
J[1] = tree('num', '3', 0);
J[2] = tree('num', '4', 0);
BACK = tree('times', '*', 2, J);
```

```icon
record tree(t, v, n, c)
global BACK
procedure main();
  write("back ", BACK.t, " ", BACK.n);
  write("back leaves ", BACK.c[1].v, " ", BACK.c[2].v);
end
```
