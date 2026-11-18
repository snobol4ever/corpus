```rebus
record tree(t, v, n, c)
function main()
  K := ARRAY(2)
  K[1] := tree("num", "1", 0)
  K[2] := tree("num", "2", 0)
  ROOT := tree("plus", "+", 2, K)
end
```

```raku
class tree { has $.t; has $.v; has $.n; has $.c; }
our $ROOT;
our $BACK;
say "root {$ROOT.t} {$ROOT.n}";
say "leaves {$ROOT.c[0].v} {$ROOT.c[1].v}";
$BACK = tree.new(t => 'times', v => '*', n => 2, c => [tree.new(t => 'num', v => '3', n => 0), tree.new(t => 'num', v => '4', n => 0)]);
```

```rebus
function main()
  OUTPUT := "back " || t(BACK) || " " || n(BACK)
  K := c(BACK)
  OUTPUT := "back leaves " || v(K[1]) || " " || v(K[2])
end
```
