```pascal
{$mode objfpc}
program define;
var SEQ: array[1..3] of integer;
begin
  SEQ[1] := 10;
  SEQ[2] := 20;
  SEQ[3] := 30
end.
```

```prolog
:- nb_getval('SEQ', S), length(S, N), write('size '), write(N), nl, nth1(2, S, E), write('second '), write(E), nl.
:- nb_setval('BACK', [40, 50, 60]).
```

```pascal
{$mode objfpc}
program final;
var BACK: array[1..3] of integer; external name 'BACK';
begin
  writeln('back size ', high(BACK) - low(BACK) + 1);
  writeln('back second ', BACK[2])
end.
```
