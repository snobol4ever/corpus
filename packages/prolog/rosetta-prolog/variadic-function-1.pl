printAll( List ) :- forall( member(X,List), (write(X), nl)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines printAll/1 and never calls it; the driver prints five arguments, one a line.
:- initialization(printAll(['Mary', had, a, little, lamb])).
