:- initialization(main).
main :- A = 'it''s', open('rtq.txt', write, S), writeq(S, A), write(S, '.'), nl(S), close(S),
	open('rtq.txt', read, R), read(R, B), close(R),
	( A == B -> write(user_output, '@roundtrip_ok@') ; write(user_output, '@roundtrip_broken@'), writeq(user_output, B) ), nl(user_output).
