mortal(X) :- man(X).
man(socrates).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines mortal/1 and man/1 and never calls them; the driver asks the Rosetta page's own queries mortal(socrates) and mortal(zeus) (variables-3, -4).
:- initialization(forall(member(Q, [socrates, zeus]), ((mortal(Q) -> R = yes ; R = no), format("mortal(~w): ~w~n", [Q, R])))).
