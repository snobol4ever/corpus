% rung40_typetest_compound — type tests on compound-literal args (mode-3 BINARY parity)
:- initialization(main).
main :-
    ( is_list([1,2,3]) -> write(yes) ; write(no) ), nl,
    ( is_list([a|b])   -> write(yes) ; write(no) ), nl.
