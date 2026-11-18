```rebus
function main()
  TAB := TABLE()
  TAB["one"] := 1
  TAB["two"] := 2
end
```

```snobol4
        OUTPUT = 'one ' TAB['one']
        OUTPUT = 'two ' TAB['two']
        BACK = TABLE()
        BACK['three'] = 3
        BACK['four'] = 4
END
```

```rebus
function main()
  OUTPUT := "back three " || BACK["three"]
  OUTPUT := "back four " || BACK["four"]
end
```
