```snobol4
        TAB = TABLE()
        TAB['one'] = 1
        TAB['two'] = 2
END
```

```raku
our $TAB;
our $BACK;
say "one {$TAB<one>}";
say "two {$TAB<two>}";
$BACK = {three => 3, four => 4};
```

```snobol4
        OUTPUT = 'back three ' BACK['three']
        OUTPUT = 'back four ' BACK['four']
END
```
