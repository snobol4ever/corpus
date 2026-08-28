%------------------------------------------- 1 rung40_typetest_compound_callable
:- initialization(main).
main :-
    ( callable(f(x)) -> write(yes) ; write(no) ), nl,
    ( atom(f(x))     -> write(yes) ; write(no) ), nl.
%------------------------------------------- 2 rung40_typetest_compound_compound
:- initialization(main).
main :-
    ( compound(f(a,b)) -> write(yes) ; write(no) ), nl,
    ( compound(foo)    -> write(yes) ; write(no) ), nl.
%--------------------------------------------- 3 rung40_typetest_compound_ground
:- initialization(main).
main :-
    ( ground(g(a,b))  -> write(yes) ; write(no) ), nl,
    ( ground(g(a,X))  -> write(yes) ; write(no) ), nl.
%-------------------------------------------- 4 rung40_typetest_compound_is_list
% rung40_typetest_compound — type tests on compound-literal args (mode-3 BINARY parity)
:- initialization(main).
main :-
    ( is_list([1,2,3]) -> write(yes) ; write(no) ), nl,
    ( is_list([a|b])   -> write(yes) ; write(no) ), nl.
