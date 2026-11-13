d(N, G) :- setup_call_cleanup(true, G, F = c), ( F == c -> R = det ; R = nondet ), writeq(N-R), nl.
t(N, G) :- ( catch(findall(G, G, L), E, (L = e(E))) -> true ; L = failed ), writeq(N-L), nl.
loop(_, 0) :- !.
loop(H, N) :- call(H), N1 is N-1, loop(H, N1).
h1 :- catch(nb_getval(k, _), _, true).
h2 :- atom_concat(ab, cd, _).
h3 :- atom_concat(ab, _, abcd).
p(X) :- catch(member(X, [1,2,3]), _, true).
q(X) :- catch((member(X, [1,2,3]), !), _, true).
s(R) :- ( catch(true, _, true), X = 1, fail ; var(X) -> R = undone ; R = kept(X) ).
u(R) :- ( atom_concat(ab, cd, A), A = abcd, X = 1, fail ; var(X) -> R = undone ; R = kept(X) ).
v(R) :- ( between(5, 5, B), X = B, fail ; var(X) -> R = undone ; R = kept(X) ).
z(X) :- catch((between(1, 3, X), X > 1, throw(hit(X))), hit(X), true).
main :- nb_setval(k, 0),
        d(catch, catch(nb_getval(k, _), _, true)), d(catch_true, catch(true, _, true)), d(atom_concat_ppm, atom_concat(ab, cd, _)),
        d(atom_concat_pmp, atom_concat(ab, _, abcd)), d(sub_atom, sub_atom(abc, 0, 1, _, _)), d(between_last, between(3, 3, _)),
        d(atom_concat_mmp, atom_concat(_, _, ab)), d(between, between(1, 3, _)),
        loop(h1, 20000), loop(h2, 20000), loop(h3, 20000), writeq(loops-done), nl,
        t(p, p(_)), t(q, q(_)), t(s, s(_)), t(u, u(_)), t(v, v(_)), t(z, z(_)), t(sub, sub_atom(abcab, _, 2, _, ab)),
        t(acpmp, atom_concat(abcde, _, abcd)), t(acmmp, atom_concat(_, _, abc)),
        halt.
:- initialization(main).
