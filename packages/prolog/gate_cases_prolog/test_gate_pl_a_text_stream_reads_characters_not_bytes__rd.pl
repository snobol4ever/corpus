:- initialization(main).
rd(S,L) :- get_char(S,C), ( C == end_of_file -> L=[] ; L=[C|T], rd(S,T) ).
main :- open('plain.txt', read, S, []), rd(S,L), close(S), length(L,N), write(text_chars(N)), nl,
	open('plain.txt', read, S2, []), get_char(S2,_), peek_char(S2,P), get_char(S2,G), close(S2),
	( P == G -> write(peek_agrees_with_get) ; write(peek_disagrees(P,G)) ), nl,
	open('plain.txt', read, S3, []), get_char(S3,_), get_code(S3,C3), close(S3), write(second_code(C3)), nl,
	open('bom.txt', read, S4, []), get_char(S4,B1), close(S4), write(bom_skipped_first(B1)), nl,
	open('bom.txt', read, S5, [bom(false)]), get_code(S5,B2), close(S5), write(bom_kept_code(B2)), nl,
	open('plain.txt', read, S6, [type(binary)]), get_byte(S6,Y1), get_byte(S6,Y2), close(S6),
	write(binary_bytes(Y1,Y2)), nl, halt.
