```icon
procedure TWICE(n);
  return n * 2;
end
procedure SHOUT(s);
  return s || "!";
end
```

```snobol4
        OUTPUT = 'twice ' TWICE(7)
        OUTPUT = 'shout ' SHOUT('seven')
END
```
