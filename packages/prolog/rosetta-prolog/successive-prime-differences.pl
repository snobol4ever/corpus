prime(2).     % use swi prolog
prime(N):-
	N /\ 1 > 0,              % odd
	M is floor(sqrt(N)) - 1, % reverse 2*I+1
	Max is M // 2,           % integer division
	forall(between(1, Max, I), N mod (2*I+1) > 0).

primesByDiffs([],_,[]).
primesByDiffs([Prime|Primes], Diff, [Slide|Slides]):-
	length(Diff, Len0),
	Len is Len0 + 1,
	length(Slide, Len),
	append(Slide, _, [Prime|Primes]),
	select(Diff, Slide),!,
	primesByDiffs(Primes, Diff, Slides).
primesByDiffs([_|Primes], Diff, Slides):-
	primesByDiffs(Primes, Diff, Slides).

select([],_).
select([Diff|Diffs],[S1, S2|Stail]):-
	S2 is S1 + Diff,
	select(Diffs, [S2|Stail]).

run([],_).
run([Diff|Dtail], PrimeList):-
	statistics(runtime,[Start|_]),
	primesByDiffs(PrimeList, Diff, SlideList),	
	length(SlideList, Num),
	statistics(runtime,[Stop|_]),
	Runtime is Stop - Start,
	SlideList = [First|SlideTail],
	format('~|~w~t~7+ number: ~|~t~d~4+ [time(ms) ~|~t~d~3+] first: ~|~w~t~22+',[Diff, Num, Runtime, First]),
	writeLast(SlideTail),!, nl,
	run(Dtail, PrimeList).

writeLast([]).
writeLast(SlideTail):-
	last(SlideTail, Last),
	format('last: ~w',[Last]).

do:-	Num is 1000000,
	statistics(runtime,[Start|_]),
	numlist(2, Num, List),
	include(prime, List, PrimeList),
	length(PrimeList, NumPrimes),
	statistics(runtime,[Stop|_]),
	RunTime is Stop - Start,
	format('there are ~w primes until ~w [time(ms) ~w]~n',[NumPrimes, Num, RunTime]),
	DiffList = [[1], [2], [2,2], [2,4], [4,2], [2,4,6],
		    [2,6,4], [4,2,6], [4,6,2], [6,2,4], [6,4,2]],
	run(DiffList, PrimeList).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): do/0 prints its runtime and takes 25 s over primes below 1,000,000; the driver calls primesByDiffs/3 over the primes below 100,000 (shrunk) for do/0's eleven difference lists and prints run/2's lines without the time.
:- initialization((numlist(2, 100000, L), include(prime, L, PL), length(PL, NP), format('there are ~w primes until ~w~n', [NP, 100000]), forall(member(D, [[1], [2], [2,2], [2,4], [4,2], [2,4,6], [2,6,4], [4,2,6], [4,6,2], [6,2,4], [6,4,2]]), (primesByDiffs(PL, D, SL), length(SL, Num), SL = [First|Tail], format('~|~w~t~7+ number: ~|~t~d~4+ first: ~|~w~t~22+', [D, Num, First]), once(writeLast(Tail)), nl)))).
