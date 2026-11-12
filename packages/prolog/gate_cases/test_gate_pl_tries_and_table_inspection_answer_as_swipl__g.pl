:- initialization(main).
r(G) :- ( catch(G, error(F, _), (( atom(F) -> writeq(ex(F)) ; functor(F, N, _), arg(1, F, A), writeq(ex(N, A)) ), nl, fail)) -> writeq(yes) ; writeq(no) ), nl.
:- table a/2.
a(X, Y) :- a(X, Z), e(Z, Y).
a(X, Y) :- e(X, Y).
e(1, 2). e(2, 3).
cnt(T, N) :- findall(x, trie_gen(T, _, _), L), length(L, N).
main :-
  trie_new(T),
  r(trie_insert(T, b, 1)), r(trie_insert(T, b, 1)), r(trie_insert(T, b, 2)),
  r(trie_update(T, b, 3)), trie_lookup(T, b, Vb), writeq(Vb), nl,
  r(trie_insert(T, f(X, Y, X), v(Y))), r(trie_lookup(T, f(_, _, _), _)), r(trie_lookup(T, f(Q, _, Q), _)),
  trie_lookup(T, f(Q1, R1, Q1), Vf), ( Vf = v(W1), var(W1), W1 \== R1 -> writeq(fresh_value) ; writeq(bound_value) ), nl,
  r(trie_insert(T, [1, 2, 3], z)), r(trie_insert(T, 1.0, x)), r(trie_insert(T, 1, y)), trie_lookup(T, 1, V1), writeq(V1), nl,
  r(trie_insert(T, g(h(i(j)), [k|l]), deep)), r(trie_lookup(T, g(h(i(j)), [k|l]), _)), r(trie_lookup(T, g(h(i(j)), [k]), _)),
  cnt(T, N0), writeq(N0), nl,
  findall(K, (trie_gen(T, K, _), ground(K)), G0), msort(G0, G1), writeq(G1), nl,
  r(trie_gen(T, f(a, _, a), _)), r(trie_gen(T, f(a, _, b), _)),
  r(trie_delete(T, b, Vd)), writeq(Vd), nl, r(trie_delete(T, b, _)),
  cnt(T, N1), writeq(N1), nl,
  trie_insert(T, c, 9, Node), trie_term(Node, Tm), writeq(Tm), nl,
  length(Big, 2000), r(trie_insert(T, big(Big), long)), r(trie_lookup(T, big(Big), _)), length(Big2, 2000), r(trie_lookup(T, big(Big2), _)),
  trie_destroy(T), r(trie_gen(T, _, _)), r(trie_insert(T, a, b)), r(trie_insert(foo, a, b)), r(trie_gen(_, _, _)),
  findall(P-Q2, a(P, Q2), _), ( a(2, _) -> true ; true ), ( a(3, _) -> true ; true ),
  findall(V, current_table(V, _), Vs), length(Vs, NT), writeq(tables(NT)), nl,
  '$tbl_local_variant_table'(VT), cnt(VT, NV), writeq(variants(NV)), nl,
  current_table(a(_, _), AT), '$tbl_table_status'(AT, S, Wr, Sk), writeq(S), nl,
  findall(G, (trie_gen(AT, Sk, _), Wr = _:G), Ws), msort(Ws, Ws1), writeq(Ws1), nl,
  current_table(a(3, _), A3), cnt(A3, N3), writeq(empty_table(N3)), nl,
  r(current_table(a(4, _), _)),
  abolish_all_tables, findall(V, current_table(V, _), V2), length(V2, NT2), writeq(tables(NT2)), nl,
  findall(P-Q3, a(P, Q3), L3), msort(L3, L4), writeq(L4), nl,
  halt.
