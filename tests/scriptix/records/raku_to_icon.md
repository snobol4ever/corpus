```raku
class tree { has $.t; has $.v; has $.n; has $.c; }
our $ROOT = tree.new(t => 'plus', v => '+', n => 2, c => [tree.new(t => 'num', v => '1', n => 0), tree.new(t => 'num', v => '2', n => 0)]);
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

```raku
our $BACK;
say "back {$BACK.t} {$BACK.n}";
say "back leaves {$BACK.c[0].v} {$BACK.c[1].v}";
```
