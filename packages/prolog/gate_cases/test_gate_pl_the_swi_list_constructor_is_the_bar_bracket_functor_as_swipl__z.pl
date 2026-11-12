:- use_module(library(lists)).
t(G) :- catch((G -> true ; write(no)), error(E, _), writeq(E)), nl.
p('[|]'(H, _), H).
build([], []).
build([X|Xs], R) :- build(Xs, R0), R =.. ['[|]', X, R0].
main :-
    t((X1 = '[|]'(1, []), writeq(X1))),
    t((Y2 =.. ['[|]', 1, []], writeq(Y2))),
    t((functor([a], N3, A3), writeq(N3/A3))),
    t(('[|]'(H4, T4) = [a,b], writeq(H4-T4))),
    t((functor(W5, '[|]', 2), W5 = [_|_], write(list))),
    t(([a,b] =.. L6, writeq(L6))),
    t((compound_name_arity([a], N7, A7), writeq(N7/A7))),
    t((compound_name_arguments([a,b], N8, As8), writeq(N8-As8))),
    t((build([1,2,3], R9), writeq(R9))),
    t(('[|]'(1, '[|]'(2, [])) == [1,2] -> write(yes) ; write(no))),
    t((length('[|]'(1, '[|]'(2, [])), L10), writeq(L10))),
    t((p([a,b], H11), writeq(H11))),
    t((findall(Z, member(Z, '[|]'(x, '[|]'(y, []))), L12), writeq(L12))).
:- initialization((main, halt)).
