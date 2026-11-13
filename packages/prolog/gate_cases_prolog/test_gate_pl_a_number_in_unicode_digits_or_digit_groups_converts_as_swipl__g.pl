:- initialization(main).
main :- ( catch(atom_number('1_2', N), _, fail) -> write(N) ; write(no) ), nl, halt.
