:- use_module(library(lists)).
:- initialization(main).
t(T, G) :- catch((call(G) -> \+ \+ (numbervars(T, 0, _), writeq(T)) ; writeq(no)), error(E, _), \+ \+ (numbervars(E, 0, _), writeq(caught(E)))), nl.
chess(♔, ♕).
chess(Q, K) :- Q = K.
bang(!(A), r(A)) :- !.
bang(X, X).
dcgv(St) --> St.
sym(X) :- X = ♔, true.
nbsp(A, B) :- A = foo, B = bar.
main :-
    t(X1, X1 = "ab
cd"),
    t(X2, X2 = 'ef
gh'),
    t(X3, X3 = `ij
kl`),
    t(L4, (L4 = "line1
line2", atom_length(L4, _))),
    t(S, (sym(S))),
    t(N, (X5 = ♔ , atom_length(X5, N))),
    t(r(A,B), nbsp(A, B)),
    t(R, bang(!(3), R)),
    t(R2, bang(!, R2)),
    t(R3, (dcgv([a], [a|T3], T3), R3 = ok)),
    t(R4, (dcgv(foo, S4, []), R4 = S4)),
    t(r(Q,K), chess(Q, K)),
    t(Len, (atom_codes('♔♕', Cs), length(Cs, Len))),
    t(Ts, (findall(X, member(X, [♔, '♕♖', a]), Ts))).
foo --> [x].
