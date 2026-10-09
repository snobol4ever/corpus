for(Lo,Hi,Step,Lo)  :- Step>0, Lo=<Hi.
for(Lo,Hi,Step,Val) :- Step>0, plus(Lo,Step,V), V=<Hi, !, for(V,Hi,Step,Val).

example :-
  for(0,10,2,Val), write(Val), write(' '), fail.
example.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines example/0 and never calls it; the driver calls it once at load.
:- initialization(example).
