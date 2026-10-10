o(O) :- member(O, [0,1,2,3,4,5,6,7]).

octal([O]) :- o(O).
octal([A|B]) :-
	octal(O),
	o(T),
	append(O, [T], [A|B]),
	dif(A, 0).
	
octalize :-
	forall(
		octal(X),
		(maplist(write, X), nl)
	).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): octalize/0 counts in octal forever; the driver runs its loop over octal/1 bounded to the first 65 numbers (0 .. 100 octal).
:- initialization(forall(limit(65, octal(X)), (maplist(write, X), nl))).
