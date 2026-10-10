dutch_flag(N) :-
	length(L, N),
	repeat,
	  maplist(init,L),
	\+is_dutch_flag(L) ,
	writeln(L),
	test_sorted(L),
	sort_dutch_flag(L, TmpFlag),
	append(TmpFlag, Flag),
	writeln(Flag),
	test_sorted(Flag).


sort_dutch_flag([], [[], [], []]).

sort_dutch_flag([blue | T], [R, W, [blue|B]]) :-
	sort_dutch_flag(T, [R, W, B]).

sort_dutch_flag([red | T], [[red|R], W, B]) :-
	sort_dutch_flag(T, [R, W, B]).


sort_dutch_flag([white | T], [R, [white | W], B]) :-
	sort_dutch_flag(T, [R, W, B]).


init(C) :-
	R is random(3),
	nth0(R, [blue, red, white], C).


test_sorted(Flag) :-
	(   is_dutch_flag(Flag)
	->  write('it is a dutch flag')
	;   write('it is not a dutch flag')),
	nl,nl.

% First color must be red
is_dutch_flag([red | T]) :-
	is_dutch_flag_red(T).


is_dutch_flag_red([red|T]) :-
	is_dutch_flag_red(T);
	% second color must be white
	T = [white | T1],
	is_dutch_flag_white(T1).


is_dutch_flag_white([white | T]) :-
	is_dutch_flag_white(T);
	% last one must be blue
	T = [blue | T1],
	is_dutch_flag_blue(T1).

is_dutch_flag_blue([blue | T]) :-
	is_dutch_flag_blue(T).

is_dutch_flag_blue([]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): dutch_flag/1 draws its balls with random/1 (init/1); the driver runs its steps on a fixed unsorted row of ten balls: prints it, tests it, sorts it with the solver sort_dutch_flag/2, prints and tests the result.
:- initialization((L = [white, blue, red, blue, white, red, red, blue, white, red], writeln(L), test_sorted(L), sort_dutch_flag(L, T), append(T, F), writeln(F), test_sorted(F))).
