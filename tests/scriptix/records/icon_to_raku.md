```icon
record tree(t, v, n, c)
global ROOT
procedure main();
  ROOT := tree("plus", "+", 2, [tree("num", "1", 0), tree("num", "2", 0)]);
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

```icon
record tree(t, v, n, c)
global BACK
procedure main();
  write("back ", BACK.t, " ", BACK.n);
  write("back leaves ", BACK.c[1].v, " ", BACK.c[2].v);
end
```
