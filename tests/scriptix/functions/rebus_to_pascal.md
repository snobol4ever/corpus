```rebus
function TWICE(n)
  return n * 2
end
function SHOUT(s)
  return s || "!"
end
function main()
end
```

```pascal
{$mode objfpc}
program use;
function TWICE(n: integer): integer; external name 'TWICE';
function SHOUT(s: string): string; external name 'SHOUT';
begin
  writeln('twice ', TWICE(7));
  writeln('shout ', SHOUT('seven'))
end.
```
