mortal(X) :- man(Y).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block's mortal(X) :- man(Y) is the page's example of a singleton variable and calls man/1 of variables-1, so the driver takes that block over (CEO-1613; this block's mortal/1 clause comes first) and asks the page's queries mortal(socrates) and mortal(zeus), both of which it answers yes.
:- include('variables-1.pl').
:- initialization(forall(member(Q, [socrates, zeus]), ((mortal(Q) -> R = yes ; R = no), format("mortal(~w): ~w~n", [Q, R])))).
