```snobol4
        TAB = TABLE()
        TAB['one'] = 1
        TAB['two'] = 2
END
```

```snocone
OUTPUT = 'one ' TAB['one'];
OUTPUT = 'two ' TAB['two'];
BACK = TABLE();
BACK['three'] = 3;
BACK['four'] = 4;
```

```snobol4
        OUTPUT = 'back three ' BACK['three']
        OUTPUT = 'back four ' BACK['four']
END
```
