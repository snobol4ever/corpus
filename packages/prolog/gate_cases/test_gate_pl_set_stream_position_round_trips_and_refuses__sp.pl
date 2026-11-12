:- initialization(main).
p(N, G) :- ( catch(G, E, (write(N-ball(E)), nl)) -> true ; write(N-failed), nl ).
main :-
	p(binary_roundtrip, ( open('terms.pl', read, S1, [type(binary), reposition(true)]),
		stream_property(S1, position(P1)), get_byte(S1, B1), get_byte(S1, _),
		set_stream_position(S1, P1), get_byte(S1, B3), write(same(B1 == B3)), nl, close(S1) )),
	p(instantiation, ( open('terms.pl', read, S2, [reposition(true)]), set_stream_position(S2, _) )),
	p(domain, ( open('terms.pl', read, S3, [reposition(true)]), set_stream_position(S3, foo) )),
	p(permission, ( open('terms.pl', read, S4, [reposition(false)]),
		stream_property(S4, position(P4)), set_stream_position(S4, P4) )),
	p(no_such_stream, set_stream_position(no_such_alias, foo)),
	halt.
