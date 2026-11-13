:- initialization(main).
main :-	format('~8594t~8|', []), nl,
	format('~`-t~10|~w~n', [end]),
	format('~w~t~10|~w~n', [ab, cd]),
	format('~t~w~10|~n', [right]),
	format('~w~t~8|~w~t~16|~w~n', [a,b,c]),
	halt.
