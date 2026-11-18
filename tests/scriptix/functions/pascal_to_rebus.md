```pascal
{$mode objfpc}
program define;
function TWICE(n: integer): integer;
begin
  TWICE := n * 2
end;
function SHOUT(s: string): string;
begin
  SHOUT := s + '!'
end;
begin
end.
```

```rebus
function main()
  OUTPUT := "twice " || TWICE(7)
  OUTPUT := "shout " || SHOUT("seven")
end
```
