:- module(b, []).
:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = E), writeq(N-R), nl.
main :- t(int_right, (atom_concat(a, 1, X), X == a1)), t(float_left, (atom_concat(1.5, b, Y), Y == '1.5b')), G = atom_concat(a, 2, Z), t(called, (call(G), Z == a2)),
    t(split_number, (findall(P+Q, atom_concat(P, Q, 12), L), L == [''+'12', '1'+'2', '12'+''])), t(compound_whole, atom_concat(_, _, f(x))), t(compound_part, atom_concat(a, f(1), _)),
    t(plain_atoms, (atom_concat(X5, b, ab), X5 == a)).
