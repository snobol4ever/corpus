```prolog
'TWICE'(N, R) :- R is N * 2.
'SHOUT'(S, R) :- atom_concat(S, '!', R).
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
