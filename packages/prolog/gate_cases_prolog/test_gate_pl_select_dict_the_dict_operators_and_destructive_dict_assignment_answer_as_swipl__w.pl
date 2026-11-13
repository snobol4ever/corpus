:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = err(E)), writeq(N-R), nl.
kv(D, T-P) :- dict_pairs(D, T0, P), ( var(T0) -> T = var ; T = T0 ).
main :- t(get5, (get_dict(k1, a{k1:v1}, V, D, v2), V == v1, D == a{k1:v2})),
  t(get5_list, (get_dict(k1, [k1:v1], V2, D2, v2), V2 == v1, kv(D2, var-[k1-v2]))),
  t(get5_mismatch, get_dict(k1, a{k1:v1}, v2, _, v2)),
  t(select_tag_mismatch, select_dict(b{k1:v1}, a{k1:v1}, _)),
  t(select_var_tag, (select_dict(T{k1:Y}, a{k1:v1, k2:v2}, R2), T == a, Y == v1, kv(R2, var-[k2-v2]))),
  t(select_list, (select_dict([x(1)], [x(1),z(3)], R3), kv(R3, var-[z-3]))),
  t(sub, (T2{k1:Z} :< a{k1:v1, k2:v2}, T2 == a, Z == v1)),
  t(sub_missing, a{x:_} :< a{y:2}),
  t(join, (T3{k1:W, k2:W2} >:< a{k1:v1, k3:v3}, T3 == a, W == v1, var(W2))),
  t(join_clash, a{k1:v1} >:< a{k1:v2}),
  t(bset, (DD = a{k1:v1}, b_set_dict(k1, DD, v2), DD == a{k1:v2})),
  t(bset_undone, (DD2 = a{k1:v1}, (b_set_dict(k1, DD2, v2), fail ; true), DD2 == a{k1:v1})),
  t(nbset_kept, (DD3 = a{k1:v1}, (nb_set_dict(k1, DD3, v2), fail ; true), DD3 == a{k1:v2})),
  t(bset_missing, (DD4 = a{k1:v1}, b_set_dict(k9, DD4, v2))),
  t(dict_key, dict_pairs(_, a, ["k1"-v1])).
