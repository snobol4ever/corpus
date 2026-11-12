:- initialization(main).
main :- ( stream_property(S, alias(user_input)), stream_property(S, mode(M)) -> R1 = M ; R1 = none ),
	( stream_property(T, alias(user_input)), stream_property(T, input) -> R2 = input ; R2 = none ),
	( stream_property(U, alias(user_input)), stream_property(U, type(Y)) -> R3 = Y ; R3 = none ),
	write(R1), nl, write(R2), nl, write(R3), nl, halt.
