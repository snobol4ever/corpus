for(Hi,Lo,Step,Hi)  :- Step<0, Lo=<Hi.
for(Hi,Lo,Step,Val) :- Step<0, plus(Hi,Step,V), Lo=<V, !, for(V,Lo,Step,Val).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the downward for/4 and never calls it; the driver counts from 10 down to 0 by step -2, as the sibling's example/0 does upward.
:- initialization((forall(for(10, 0, -2, V), (write(V), write(' '))), nl)).
