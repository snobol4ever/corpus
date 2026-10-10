loop(I) :-
	writeln(I),
	I1 is I+1,
	loop(I1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines loop/1, which prints integers forever, and never calls it; the driver bounds it with call_with_depth_limit/3 (depth 21: 1..20).
:- initialization(call_with_depth_limit(loop(1), 21, _)).
