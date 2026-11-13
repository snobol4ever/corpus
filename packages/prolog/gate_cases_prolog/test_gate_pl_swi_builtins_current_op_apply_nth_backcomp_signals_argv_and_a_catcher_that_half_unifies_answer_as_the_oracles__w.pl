:- use_module(library(lists)).
:- initialization(main).
t(T, G) :- catch((call(G) -> \+ \+ (numbervars(T, 0, _), writeq(T)) ; writeq(no)), error(E, _), \+ \+ (numbervars(E, 0, _), writeq(caught(E)))), nl.
nd(G, D) :- setup_call_cleanup(true, G, Det = true), ( Det == true -> D = det ; D = nondet ).
main :-
    t(yes, current_op(_, _, 1)), t(yes, current_op(_, 1, _)), t(yes, current_op(_, xxx, _)), t(yes, current_op(x, _, _)), t(yes, current_op(1.2, _, _)),
    t(yes, current_op(1201, _, _)), t(yes, current_op(-1, _, _)), t(yes, current_op(_, f(x), _)), t(yes, current_op(_, _, f(x))), t(yes, current_op(_, [], _)),
    t(yes, apply(1, [a, b])), t(yes, apply(foo, [])), t(R3, (apply(atom_length, [abc, R3]))), t(yes, apply(_, [a])),
    t(yes, nth0(-1, [a], _)), t(yes, nth0(a, [a], _)), t(yes, nth0(1.0, [a, b], _)), t(E4, nth0(1, [a, b, c], E4)), t(E5, nth1(2, [a, b, c], E5)),
    t(yes, nth1(0, [a], _)), t(yes, nth1(a, [a], _)), t(yes, nth0(5, [a], _)), t(L6, findall(I-E6, nth0(I, [a, b], E6), L6)), t(L7, findall(I7, nth1(I7, [a, b, a], a), L7)),
    t(D8, nd(nth0(1, [a, b, c], _), D8)), t(D9, nd(nth1(2, [a, b, c], _), D9)), t(D10, nd(nth0(_, [a, b, c], b), D10)),
    t(S11, sformat(S11, '~w-~w', [a, b])), t(S12, sformat(S12, 'plain')),
    t(O13-N13, (on_signal(int, O13, handler), on_signal(int, N13, default))), t(O14, (on_signal(usr1, _, h1), on_signal(usr1, O14, h2))),
    t(V15, (nb_linkval(k15, v15), nb_getval(k15, V15))),
    t(yes, ansi_format([bold], 'x~w~n', [y])),
    t(R16, catch_with_backtrace(throw(oops), oops, R16 = caught)), t(R17, catch_with_backtrace(R17 = fine, _, true)),
    t(A18, (current_prolog_flag(argv, A18))),
    t(yes, current_prolog_flag(no_such_flag_x, _)).
