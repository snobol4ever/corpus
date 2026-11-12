:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), (functor(E, F, A), R = F/A-E)), ( R = (type_error/2-type_error(K, _)) -> R2 = type_error(K) ; R2 = R ), writeq(N-R2), nl.
main :- t(hex40, (variant_sha1(this_is_an_atom, H), atom_length(H, 40), atom_codes(H, Cs), forall(member(C, Cs), (code_type(C, digit) ; (C >= 0'a, C =< 0'f))))),
    t(renaming, (variant_sha1(x(A), H1), variant_sha1(x(B), H2), H1 == H2)),
    t(not_variant, (variant_sha1(x(C, C), H3), variant_sha1(x(C, D), H4), H3 \== H4)),
    t(shared, (S = x(E), variant_sha1(x(S, S), H5), variant_sha1(x(x(E), x(E)), H6), H5 == H6)),
    t(float, (variant_sha1(1.0, H7), variant_sha1(2.0, H7))),
    t(cyclic, (Y = a(Y), variant_sha1(Y, _))),
    t(attvar, (dif(X, 3), variant_sha1(X, _))),
    t(holds_attvar, (dif(X2, 3), variant_sha1(x(a(X2)), _))),
    t(hash_attvar_plain, (freeze(Q, true), variant_hash(x(P, P), V1), variant_hash(x(Q, Q), V2), V1 == V2)), halt.
