:- initialization(main).
main :- list_to_rbtree([k1-v1, k2-v2], T), rb_insert(T, k0, v0, T2), rb_keys(T2, Ks), write(Ks), nl.
