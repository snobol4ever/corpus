:- set_prolog_flag(double_quotes, string).
:- initialization(main).
t(G) :- catch((call(G) -> \+ \+ (numbervars(G, 0, _), writeq(G)) ; writeq(no)), error(E, _), \+ \+ (numbervars(E, 0, _), writeq(caught(E)))), nl.
p(X) :- X > 1.
c(X, Y) :- X > 1, Y is X * 10.
age(peter, 7). age(mary, 9). age(john, 7).
add3(A, B, C, S0, S) :- S is S0 + A + B + C.
agg_count(C) :- aggregate_all(count, member(_, [a,b,c]), C).
agg_sum(S) :- aggregate_all(sum(Q), member(Q, [1,2,3]), S).
agg_max(M) :- aggregate_all(max(R), member(R, [3,9,2]), M).
agg_bag(B) :- aggregate_all(bag(Z), member(Z, [c,a,c]), B).
agg_set(S) :- aggregate_all(set(Z), member(Z, [c,a,c]), S).
main :-
    t(partition(p, [1,2,3], _, _)), t(partition([X,O]>>compare(O,X,2), [1,2,3], _, _, _)), t(convlist(c, [1,2,3], _)),
    t(foldl([E,A0,A]>>(A is A0+E), [1,2,3], 0, _)), t(foldl([E1,E2,B0,B]>>(B is B0+E1*E2), [1,2], [3,4], 0, _)),
    t(foldl(add3, [1,4], [2,5], [3,6], 0, _)), t(scanl([S,S0,S1]>>(S1 is S0+S), [1,2,3], 0, _)),
    t(must_be(integer, a)), t(must_be(positive_integer, 0)), t(must_be(nonneg, 3)), t(must_be(list(integer), [1,a])),
    t(must_be(oneof([a,b]), c)), t(must_be(boolean, x)), t(must_be(between(1,3), 5)), t(must_be(chars, [a,b])),
    t(must_be(text, f(x))), t(must_be(rational, 1)), t(must_be(atom, _)), t(must_be(no_such_type, 1)),
    t(is_of_type(list(atom), [a,b])), t(type_error(integer, a)), t(domain_error(positive, -1)),
    t(pairs_keys_values(_, [a,b], [1,2])), t(pairs_keys([a-1,b-2], _)), t(pairs_values([a-1,b-2], _)),
    t(transpose_pairs([a-1,b-2], _)), t(map_list_to_pairs(atom_length, [ab,c], _)),
    t((list_to_heap([3-c,1-a,2-b], H), get_from_heap(H, _, _, H1), heap_size(H1, _), heap_to_list(H1, _))),
    t((empty_heap(E0), add_to_heap(E0, 5, x, E1), add_to_heap(E1, 2, y, E2), min_of_heap(E2, _, _))),
    t(aggregate(count, Y^age(Y, _), _)), t(aggregate(sum(G), N^age(N, G), _)), t(aggregate(bag(N2), age(N2, 7), _)),
    t(aggregate(max(G2, N3), age(N3, G2), _)), t(aggregate(count, N4, age(N4, _), _)),
    t(aggregate_all(term(count, bag(V)), between(1, 3, V), _)), t(aggregate_all(r(max(M)), member(M, [3,9,2]), _)),
    t(agg_count(_)), t(agg_sum(_)), t(agg_max(_)), t(agg_bag(_)), t(agg_set(_)), t(aggregate_all(count, member(_, [a,b]), _)),
    t(aggregate_all(count, K, member(K, [a,b,a]), _)),
    t(string_lines(_, ["a", "b"])), t(string_lines("x\ny\n", _)), t(dedent_lines("  a\n   b", _, [])),
    t(indent_lines("> ", "a\nb", _)),
    t((list_to_rbtree([k1-v1, k2-v2], T), rb_insert(T, k0, v0, T2), rb_keys(T2, _), rb_lookup(k2, _, T2), rb_size(T2, _), rb_visit(T2, _))),
    t((rb_new(E), rb_insert_new(E, a, 1, E1), \+ rb_insert_new(E1, a, 2, _), rb_update(E1, a, 9, E2), rb_visit(E2, _), rb_delete(E2, a, E3), rb_empty(E3))),
    t((ord_list_to_rbtree([a-1, b-2, c-3], RT), rb_min(RT, _, _), rb_max(RT, _, _), rb_next(RT, a, _, _), rb_fold([_-V, A0, A]>>(A is A0+V), RT, 0, _))),
    t((list_to_assoc([a-1, b-2], As), put_assoc(c, As, 3, As2), assoc_to_list(As2, _), assoc_to_keys(As2, _), get_assoc(b, As2, _), max_assoc(As2, _, _))),
    t((empty_assoc(EA), \+ get_assoc(x, EA, _), pairs_keys_values(PKV, [z, y], [1, 2]), list_to_assoc(PKV, A3), del_assoc(z, A3, _, A4), assoc_to_values(A4, _))),
    t(ord_union([a, c], [b, d], _)), t(ord_subtract([a, b, c], [b], _)), t(ord_intersection([a, b, c], [b, c, d], _, _)),
    t(ord_memberchk(b, [a, b, c])), t(ord_subset([a, c], [a, b, c])), t(list_to_ord_set([c, a, b, a], _)), t(ord_union([[a], [c, b], [d]], _)),
    t(option(depth(_), [depth(3), width(4)])), t(option(missing(_), [depth(3)], dflt)), t(select_option(width(_), [depth(3), width(4)], _)),
    t(merge_options([a(1)], [a(2), b(3)], _)), t(option(a(_), [a=1])),
    t(append([[1], [2, 3], []], _)), t(select(b, [a, b, c], x, _)), t(selectchk(a, [a, b, a], _)), t(nextto(_, _, [1, 2, 3])),
    t(nth0(1, [a, b, c], _, _)), t(nth1(_, [a, b, c], c, _)), t(same_length([1, 2], _)), t(clumped([a, a, b, a], _)),
    t(max_member(_, [3, 1, 4])), t(min_member(_, [3, 1, 4])), t(max_member(@=<, _, [b, c, a])), t(is_set([a, b])), t(proper_length([a, b], _)),
    t(foreach(member(X, [1, 2]), X > 0)), t(foreach(member(X, [1, 2]), X > 1)), t(string_code(_, "ab", 0'b)), t(string_code(a, "ab", _)).
