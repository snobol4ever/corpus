```snocone
TAB = TABLE();
TAB['one'] = 1;
TAB['two'] = 2;
```

```snocone
OUTPUT = 'one ' TAB['one'];
OUTPUT = 'two ' TAB['two'];
BACK = TABLE();
BACK['three'] = 3;
BACK['four'] = 4;
```

```snocone
OUTPUT = 'back three ' BACK['three'];
OUTPUT = 'back four ' BACK['four'];
```
