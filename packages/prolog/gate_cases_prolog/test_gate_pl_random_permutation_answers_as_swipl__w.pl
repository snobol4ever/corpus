:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = err(E)), writeq(N-R), nl.
main :- t(same_elements, (numlist(1, 50, L), random_permutation(L, P), msort(P, L))),
  t(length, (random_permutation([a,b,c,d], P2), length(P2, 4))),
  t(reverse_direction, (random_permutation(Q, [x,y,z]), msort(Q, [x,y,z]))),
  t(empty, random_permutation([], [])),
  t(duplicates_kept, (random_permutation([a,a,b], P3), msort(P3, [a,a,b]))),
  t(both_unbound, random_permutation(_, _)),
  t(not_a_list, random_permutation(foo, _)).
