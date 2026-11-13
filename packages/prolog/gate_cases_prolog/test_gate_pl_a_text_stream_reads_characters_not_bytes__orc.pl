:- initialization(main, main).
rd(S,L) :- get_char(S,C), ( C == end_of_file -> L=[] ; L=[C|T], rd(S,T) ).
main :- open('plain.txt', read, S, []), rd(S,L), close(S), length(L,N),
	open('bom.txt', read, S4, []), get_char(S4,B1), close(S4), format("chars=~w bom_first=~q~n",[N,B1]).
