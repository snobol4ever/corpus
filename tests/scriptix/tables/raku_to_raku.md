```raku
our $TAB = {one => 1, two => 2};
```

```raku
our $TAB;
our $BACK;
say "one {$TAB<one>}";
say "two {$TAB<two>}";
$BACK = {three => 3, four => 4};
```

```raku
our $BACK;
say "back three {$BACK<three>}";
say "back four {$BACK<four>}";
```
