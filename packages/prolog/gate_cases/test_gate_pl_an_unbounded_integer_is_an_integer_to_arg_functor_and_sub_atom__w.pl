t(G) :- catch((G -> R = yes ; R = no), error(E, _), R = err(E)), writeq(R), nl.
main :- B = 18446744073709551616000, N is -B, M is 2^63 + 5,
        t(integer(B)),
        t(arg(N, t(1,2,3), _)), t(arg(B, t(1,2,3), _)),
        t(functor(_, f, N)),
        t(sub_atom(abc, B, _, _, _)), t(sub_atom(abc, _, N, _, _)), t(sub_atom(abc, _, _, B, _)), t(sub_atom(abc, N, _, _, _)),
        t(sub_atom(abc, M, _, _, _)),
        halt.
:- initialization(main).
