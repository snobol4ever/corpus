:- initialization(main).
main :-
	open('plain.txt', write, A, [encoding('UTF-8')]),
	stream_property(A, bom(BA)), write(arm1_default(BA)), nl, write(A, abc), close(A),
	open('off.txt', write, B, [encoding('UTF-8'), bom(false)]),
	stream_property(B, bom(BB)), write(arm2_false(BB)), nl, close(B),
	open('on.txt', write, C, [encoding('UTF-8'), bom(true)]),
	stream_property(C, bom(BC)), write(arm3_true(BC)), nl, write(C, hello), close(C),
	open('on.txt', read, E),
	stream_property(E, bom(BE)), stream_property(E, encoding(EE)), write(arm4_reread(BE-EE)), nl,
	get_char(E, Ch), write(arm5_first_char(Ch)), nl, close(E),
	open('plain.txt', read, F),
	stream_property(F, bom(BF)), write(arm5b_nobom_reread(BF)), nl, close(F),
	open('b.bin', write, G, [type(binary), bom(true)]),
	( stream_property(G, bom(_)) -> write(arm6_binary_has_bom_WRONG) ; write(arm6_binary_no_bom) ), nl, close(G),
	halt.
