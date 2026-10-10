do_it(N) :-	
	card_sets(N, Cards, Sets),
	!,
	format('Cards: ~n'),
	maplist(print_card, Cards),
	format('~nSets: ~n'),
	maplist(print_set, Sets).
	
print_card(Card) :- format('  ~p ~p ~p ~p~n', Card).
print_set(Set) :- maplist(print_card, Set), nl.

n(9,4).
n(12,6).

card_sets(N, Cards, Sets) :-
	n(N,L),
	repeat,
	random_deal(N, Cards),	
	setof(Set, is_card_set(Cards, Set), Sets),	
	length(Sets, L).

random_card([C,S,N,Sh]) :-
	random_member(C, [red, green, purple]),
	random_member(S, [oval, squiggle, diamond]),
	random_member(N, [one, two, three]),
	random_member(Sh, [solid, open, striped]).
	
random_deal(N, Cards) :-
	length(Cards, N),
	maplist(random_card, Cards).
	
is_card_set(Cards, Result) :-
	select(C1, Cards, Rest),
	select(C2, Rest, Rest2),
	select(C3, Rest2, _),
	
	match(C1, C2, C3),
	sort([C1,C2,C3], Result).
	
match([],[],[]).
match([A|T1],[A|T2],[A|T3]) :-
	match(T1,T2,T3).
match([A|T1],[B|T2],[C|T3]) :-
	dif(A,B), dif(B,C), dif(A,C),
	match(T1,T2,T3).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): do_it/1 deals its cards with random_member/2, which no ref can hold; the driver gives the solver beneath it, is_card_set/2, one fixed nine-card deal with exactly four sets and prints cards and sets in do_it/1's format.
:- initialization((Cards = [[green,squiggle,one,solid],[red,squiggle,two,solid],[purple,squiggle,two,solid],[red,squiggle,two,striped],[red,diamond,one,striped],[green,oval,three,striped],[purple,oval,three,solid],[red,oval,three,open],[green,squiggle,two,open]], setof(Set, is_card_set(Cards, Set), Sets), format('Cards: ~n'), maplist(print_card, Cards), format('~nSets: ~n'), maplist(print_set, Sets))).
