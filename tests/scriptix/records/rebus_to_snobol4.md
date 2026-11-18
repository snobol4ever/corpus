```rebus
record tree(t, v, n, c)
function main()
  K := ARRAY(2)
  K[1] := tree("num", "1", 0)
  K[2] := tree("num", "2", 0)
  ROOT := tree("plus", "+", 2, K)
end
```

```snobol4
        DATA('tree(t,v,n,c)')
        OUTPUT = 'root ' t(ROOT) ' ' n(ROOT)
        K = c(ROOT)
        OUTPUT = 'leaves ' v(K[1]) ' ' v(K[2])
        J = ARRAY(2)
        J[1] = tree('num', '3', 0)
        J[2] = tree('num', '4', 0)
        BACK = tree('times', '*', 2, J)
END
```

```rebus
function main()
  OUTPUT := "back " || t(BACK) || " " || n(BACK)
  K := c(BACK)
  OUTPUT := "back leaves " || v(K[1]) || " " || v(K[2])
end
```
