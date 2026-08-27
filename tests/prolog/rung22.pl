%-------------------------------------------------------------------- 1 wc_atoms
:- initialization(main).
main :-
    write_canonical(hello), nl,
    write_canonical('Hello'), nl,
    write_canonical([]), nl.
%----------------------------------------------------------------- 2 wc_compound
:- initialization(main).
main :-
    write_canonical(f(a,b)), nl,
    write_canonical(g(1,2,3)), nl.
%----------------------------------------------------------- 3 wc_ops_as_functor
:- initialization(main).
main :-
    write_canonical(1+2), nl,
    write_canonical(a-b), nl.
%---------------------------------------------------------------- 4 writeq_atoms
:- initialization(main).
main :-
    writeq(hello), nl,
    writeq('Hello'), nl,
    writeq([]), nl.
%------------------------------------------------------------------ 5 writeq_ops
:- initialization(main).
main :-
    writeq(1+2), nl,
    writeq(f(a,b)), nl,
    writeq(a-b), nl.
