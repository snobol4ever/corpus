```raku
class tree { has $.t; has $.v; has $.n; has $.c; }
our $ROOT = tree.new(t => 'plus', v => '+', n => 2, c => [tree.new(t => 'num', v => '1', n => 0), tree.new(t => 'num', v => '2', n => 0)]);
```

```rebus
record tree(t, v, n, c)
function main()
  OUTPUT := "root " || t(ROOT) || " " || n(ROOT)
  K := c(ROOT)
  OUTPUT := "leaves " || v(K[1]) || " " || v(K[2])
  J := ARRAY(2)
  J[1] := tree("num", "3", 0)
  J[2] := tree("num", "4", 0)
  BACK := tree("times", "*", 2, J)
end
```

```raku
our $BACK;
say "back {$BACK.t} {$BACK.n}";
say "back leaves {$BACK.c[0].v} {$BACK.c[1].v}";
```
