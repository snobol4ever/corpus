:- module(w, []).
:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = E), ( atom(R), atom_length(R, L), L > 60 -> sub_atom(R, 0, 20, _, R1) ; R1 = R ), writeq(N-R1), nl.
seg(N, S) :- length(L, N), maplist(=(a), L), atom_chars(S, L).
magic_pred_123.
in_dir(F) :- file_directory_name(F, D), file_base_name(F, B), directory_files(D, Fs), memberchk(B, Fs).
main :- t(dirfiles_missing, directory_files(magic_nosuch_dir_9, _)),
    t(dirfiles_not_a_dir, directory_files('w.pl', _)),
    t(agc_counts, (statistics(agc, A0), garbage_collect_atoms, statistics(agc, A1), A1 > A0)),
    t(pp_file_direct, (once(predicate_property(_:magic_pred_123, file(F1))), file_base_name(F1, B1), B1 == 'w.pl', in_dir(F1))),
    G = predicate_property(M:magic_pred_123, file(F2)), t(pp_file_called, (call(G), nonvar(M), file_base_name(F2, 'w.pl'), in_dir(F2))),
    t(pp_order, findall(P, (predicate_property(magic_pred_123, P), memberchk(P, [static, file(_), defined])), [static, file(_), defined])),
    seg(4095, S5), seg(4096, S6), seg(40000, S40), atomic_list_concat([S40, abc], /, P40),
    t(fbn_4095, file_base_name(S5, _)), t(fbn_4096, file_base_name(S6, _)),
    t(fdn_4096_seg, (file_directory_name(S6, D6), D6 == '.')), t(fdn_40000_dir, file_directory_name(P40, _)),
    t(afn_4095, absolute_file_name(S5, _, [access(read), file_errors(fail)])), t(afn_4096, absolute_file_name(S6, _, [access(read)])),
    t(fdn_abc, (file_directory_name(abc, D), D == '.')), t(fbn_slash, (file_base_name('aaa/', B), B == aaa)).
