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

```raku
sub TWICE($n) { ... }
sub SHOUT($s) { ... }
say "twice {TWICE(7)}";
say "shout {SHOUT('seven')}";
```
