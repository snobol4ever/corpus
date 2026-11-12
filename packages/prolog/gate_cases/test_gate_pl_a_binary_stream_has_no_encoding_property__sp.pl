:- initialization(main).
main :- open('b.bin', write, B, [type(binary)]),
	( stream_property(B, encoding(E1)) -> write(bin_encoding(E1)) ; write(bin_no_encoding) ), nl,
	( stream_property(B, type(T1)) -> write(bin_type(T1)) ; write(bin_no_type) ), nl,
	close(B),
	open('t.txt', write, S, [type(text), encoding(utf8)]),
	( stream_property(S, encoding(E2)) -> write(txt_encoding(E2)) ; write(txt_no_encoding) ), nl,
	( stream_property(S, type(T2)) -> write(txt_type(T2)) ; write(txt_no_type) ), nl,
	close(S),
	open('p.txt', write, P, []),
	( stream_property(P, encoding(E3)) -> write(plain_encoding(E3)) ; write(plain_no_encoding) ), nl,
	close(P), halt.
