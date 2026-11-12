:- initialization(main).
term(int, 1).
term(cyclic, X) :- X = f(X).
term(pair, P) :- P = p(Q), Q = q(P).
term(list, [a,b]).
chk(N, G) :- write(N), write(': '), ( catch(G, E, (write(caught(E)), fail)) -> write(yes) ; write(no) ), nl.
main :-
  chk(self, ( X = f(X), copy_term(X, Y), Y = f(Z), Z == Y )),
  chk(self_fresh, ( X2 = f(X2), copy_term(X2, Y2), Y2 \== X2 )),
  chk(mutual, ( A = f(B), B = g(A), copy_term(A, C), C = f(D), D = g(E), E == C )),
  chk(sharing, ( S = g(S, V, V), copy_term(S, T), T = g(T1, W1, W2), T1 == T, W1 == W2, var(W1), W1 \== V )),
  chk(deep, ( L = [a, h(L), b], copy_term(L, M), M = [a, h(M2), b], M2 == M )),
  chk(nested, ( N = n(k(N), 1, N), copy_term(N, O), O = n(k(O1), 1, O2), O1 == O, O2 == O )),
  chk(findall, ( findall(T3, term(_, T3), L3), length(L3, 4), L3 = [_, F, P, _], F = f(F1), F1 == F, P = p(q(P1)), P1 == P )),
  chk(acyclic_after_copy, ( X4 = f(X4), copy_term(X4, Y4), \+ acyclic_term(Y4) )),
  chk(ground_cyclic, ( G = f(G, 1), copy_term(G, H), H = f(H1, 1), H1 == H )),
  halt.
