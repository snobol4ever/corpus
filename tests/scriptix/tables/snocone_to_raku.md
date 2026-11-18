```snocone
TAB = TABLE();
TAB['one'] = 1;
TAB['two'] = 2;
```

```raku
our $TAB;
our $BACK;
say "one {$TAB<one>}";
say "two {$TAB<two>}";
$BACK = {three => 3, four => 4};
```

```snocone
OUTPUT = 'back three ' BACK['three'];
OUTPUT = 'back four ' BACK['four'];
```
