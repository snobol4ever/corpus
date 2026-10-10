execute( Term ) :-
  Term =.. [F | Args],
  forall( member(X,Args), (G =.. [F,X], G, nl) ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines execute/1 and never calls it; the driver applies write/1 to five arguments, one a line.
:- initialization(execute(write('Mary', had, a, little, lamb))).
