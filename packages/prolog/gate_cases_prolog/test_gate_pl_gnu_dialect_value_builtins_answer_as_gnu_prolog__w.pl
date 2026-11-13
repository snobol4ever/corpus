:- initialization(main).
formal(error(F, _), F) :- !.
formal(B, B).
t(Name, G) :- write(Name), write(': '), catch((G -> true ; write(failed)), E, (formal(E, F), write(caught(F)))), nl.
rd(S) :- read_term(S, T, []), ( T == end_of_file -> true ; last_read_start_line_column(L, C), line_count(S, N), line_position(S, P), stream_line_column(S, L2, C2),
    \+ \+ (numbervars(T, 0, _), writeq(T-start(L, C)-after(N, P, L2, C2))), nl, rd(S) ).
main :-
    t(sort1, (L1 = [b, a, c, b, f(y)], sort(L1), write(L1))),
    t(sort1_not_undone, (L2 = [c, a], ( sort(L2), fail ; true ), write(L2))),
    t(msort1, (L3 = [b, a, b], msort(L3), write(L3))),
    t(keysort1_stable, (L4 = [b-1, a-2, b-0, a-1], keysort(L4), write(L4))),
    t(sort1_empty, (L5 = [], sort(L5), write(L5))),
    t(sort1_partial, sort([a|_])), t(sort1_not_list, sort(foo)), t(keysort1_not_pair, keysort([a])),
    t(reader, (open('src.pl', read, S), rd(S), character_count(S, CC), write(chars(CC)), close(S))),
    t(g_vars, (g_read(unset_key, U), g_assign(k1, f(Z)), Z = bound, g_read(k1, V), g_assign(k2, 7), g_read(k2, W), V = f(Q), ( var(Q) -> Vs = copied ; Vs = shared ), write([U, Vs, W]))),
    t(list, (list([a, b]), \+ list([a|_]), \+ list(foo), write(ok))),
    t(memberchk, (memberchk(X, [p, q]), write(X))),
    t(decompose, (decompose_file_name('/a/b/c.pl', D, P, Sx), decompose_file_name(abc, D2, P2, S2), writeq([D, P, Sx, D2, P2, S2]))),
    t(relative, (is_relative_file_name('a/b'), \+ is_relative_file_name('/a'), write(ok))),
    t(prolog_file_name, (prolog_file_name(user, F1), prolog_file_name('x.txt', F2), prolog_file_name(src, F3), prolog_file_name(nosuch, F4), writeq([F1, F2, F3, F4]))),
    t(absolute, (absolute_file_name('/a/./b//c/../d', A1), absolute_file_name(user, A2), writeq([A1, A2]))),
    t(aux_names, ('$make_aux_name'(foo, 2, 3, AN), '$aux_name'(AN), '$pred_without_aux'(AN, 9, F, Ar), '$pred_without_aux'(bar, 1, F5, A5), writeq([AN, F, Ar, F5, A5]))),
    halt.
