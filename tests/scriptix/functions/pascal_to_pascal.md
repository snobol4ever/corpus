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

```pascal
{$mode objfpc}
program use;
begin
  writeln('twice ', TWICE(7));
  writeln('shout ', SHOUT('seven'))
end.
```
