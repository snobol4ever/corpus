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

```icon
global TWICE, SHOUT;
procedure main();
  write("twice ", TWICE(7));
  write("shout ", SHOUT("seven"));
end
```
