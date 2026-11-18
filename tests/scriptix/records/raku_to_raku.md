```raku
class tree { has $.t; has $.v; has $.n; has $.c; }
our $ROOT = tree.new(t => 'plus', v => '+', n => 2, c => [tree.new(t => 'num', v => '1', n => 0), tree.new(t => 'num', v => '2', n => 0)]);
```

```raku
class tree { has $.t; has $.v; has $.n; has $.c; }
our $ROOT;
our $BACK;
say "root {$ROOT.t} {$ROOT.n}";
say "leaves {$ROOT.c[0].v} {$ROOT.c[1].v}";
$BACK = tree.new(t => 'times', v => '*', n => 2, c => [tree.new(t => 'num', v => '3', n => 0), tree.new(t => 'num', v => '4', n => 0)]);
```

```raku
our $BACK;
say "back {$BACK.t} {$BACK.n}";
say "back leaves {$BACK.c[0].v} {$BACK.c[1].v}";
```
