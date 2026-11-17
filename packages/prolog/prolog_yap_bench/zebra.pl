% YAP compatibility, the grader 2026-11-17: the program below is the YAP JIT example as YAP ships it; these lines give swipl and SCRIP
% the YAP builtins it may call (it takes no command-line argument).
number_atom(N, A) :- atom_number(A, N).
yap_flag(F, V) :- set_prolog_flag(F, V).

:- initialization(main).

houses([house(_, _, _, _, _),
	house(_, _, _, _, _),
	house(_, _, _, _, _),
	house(_, _, _, _, _),
	house(_, _, _, _, _)]).


right_of(A, B, [B, A | _]).

right_of(A, B, [_ | Y]) :-
	right_of(A, B, Y).


next_to(A, B, [A, B | _]).

next_to(A, B, [B, A | _]).

next_to(A, B, [_ | Y]) :-
	next_to(A, B, Y).


my_member(X, [X|_]).

my_member(X, [_|Y]) :-
	my_member(X, Y).


print_houses([]).

print_houses([A|B]) :-
	write(A), nl,
	print_houses(B).

main:-
	houses(Houses),
	my_member(house(red, english, _, _, _), Houses),
	my_member(house(_, spanish, dog, _, _), Houses),
	my_member(house(green, _, _, coffee, _), Houses),
	my_member(house(_, ukrainian, _, tea, _), Houses),
	right_of(house(green,_,_,_,_), house(ivory,_,_,_,_), Houses),
	my_member(house(_, _, snails, _, winstons), Houses),
	my_member(house(yellow, _, _, _, kools), Houses),
	Houses = [_, _, house(_, _, _, milk, _), _,_],
	Houses = [house(_, norwegian, _, _, _)|_],
	next_to(house(_,_,_,_,chesterfields), house(_,_,fox,_,_), Houses),
	next_to(house(_,_,_,_,kools), house(_,_,horse,_,_), Houses),
	my_member(house(_, _, _, orange_juice, lucky_strikes), Houses),
	my_member(house(_, japanese, _, _, parliaments), Houses),
	next_to(house(_,norwegian,_,_,_), house(blue,_,_,_,_), Houses),
	my_member(house(_, _, zebra, _, _), Houses),
	my_member(house(_, _, _, water, _), Houses),
        statistics.
