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

```prolog
:- 'TWICE'(7, R), write('twice '), write(R), nl.
:- 'SHOUT'(seven, R), write('shout '), write(R), nl.
```
