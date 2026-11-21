```prolog
:- nb_setval('SEQ', [10, 20, 30]).
```

```pascal
{$mode objfpc}
program use;
var SEQ: array[1..3] of integer; external name 'SEQ';
    BACK: array[1..3] of integer;
begin
  writeln('size ', high(SEQ) - low(SEQ) + 1);
  writeln('second ', SEQ[2]);
  BACK[1] := 40;
  BACK[2] := 50;
  BACK[3] := 60
end.
```

```prolog
:- nb_getval('BACK', S), length(S, N), write('back size '), write(N), nl, nth1(2, S, E), write('back second '), write(E), nl.
```
