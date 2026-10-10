rosetta_sleep(Time) :-
	writeln('Sleeping...'),
	sleep(Time),
	writeln('Awake!').

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines rosetta_sleep/1 and never calls it; the driver sleeps one second between its two lines.
:- initialization(rosetta_sleep(1)).
