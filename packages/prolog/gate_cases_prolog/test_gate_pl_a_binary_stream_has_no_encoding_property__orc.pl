:- initialization(main).
main :- open('ob.bin', write, B, [type(binary)]),
	( stream_property(B, encoding(E)) -> format("oracle_says=~w~n", [E]) ; write('oracle_says=no_solution'), nl ),
	close(B), halt.
