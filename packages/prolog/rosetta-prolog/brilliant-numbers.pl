factors(N, Flist):-
	factors(N, 2, 0, Flist).

factors(1, _, _, []).
factors(_, _, Cnt, []):- Cnt > 1,!.
factors(N, Start, Cnt, [Fac|FList]):-
	N1 is floor(sqrt(N)),
	between(Start, N1, Fac),
	N mod Fac =:= 0,!,
	N2 is N div Fac,
	Cnt1 is Cnt + 1,
	factors(N2, Fac, Cnt1, FList).
factors(N, _, _, [N]):- N >= 2.

brilliantList(Start, Limit, List):-
	findall(N, brilliants(Start, Limit, N), List).
nextBrilliant(Start, N):-
	brilliants(Start, inf, N).
isBrilliant(N):-
	brilliants(2, inf, N).
brilliants(Start, Limit, N):-
	between(Start, Limit, N),
	factors(N,[F1,F2]),
	F1 * F2 =:= N,
	digits(F1, D1), digits(F2, D2),
	D1 =:= D2.

digits(N, D):-
	D is 1 + floor(log10(N)).

%% generate results

run(LimitList):-
	run(LimitList, 0, 2).
run([], _, _).
run([Limit|LList], OldCount, OldLimit):-
	Limit1 is Limit - 1,
	statistics(runtime,[Start|_]),
	brilliantList(OldLimit, Limit1, BList),
	length(BList, Cnt),
	Cnt1 is OldCount + Cnt,
	Index is Cnt1 + 1,
	nextBrilliant(Limit, Bril),!,
	statistics(runtime,[Stop|_]),
	Time is Stop - Start,
	writef('first >=%8r is%8r at position%6r [time:%6r]', [Limit, Bril, Index, Time]),nl,	
	run(LList, Cnt1, Limit).

showList(List, Limit):-
	findnsols(Limit, X, (member(X, List), writef('%5r', [X])), _),
	nl, fail.
showList(_, _).
	
do:-findnsols(100, B, isBrilliant(B), BList),!,
	showList(BList, 10),nl,
	findall(N, (between(1, 6, X), N is 10^X), LimitList),
	run(LimitList).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): do/0 also prints each step's runtime, which no ref can hold; the driver prints the first 100 brilliant numbers with showList/2 and, from brilliantList/3 and nextBrilliant/2, the first >= 10^1..10^5 in do/0's own format without the time, shrunk to 10^1..10^5 (10^6 alone takes 30 s).
:- initialization((findnsols(100, B, isBrilliant(B), BL), !, showList(BL, 10), nl, forall(between(1, 5, X), (L is 10^X, L1 is L - 1, brilliantList(2, L1, Bs), length(Bs, C), I is C + 1, once(nextBrilliant(L, Br)), writef('first >=%8r is%8r at position%6r', [L, Br, I]), nl)))).
