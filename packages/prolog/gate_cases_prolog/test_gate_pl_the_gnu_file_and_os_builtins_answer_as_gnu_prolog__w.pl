:- initialization(main).
t(G) :- catch((call(G) -> write(yes) ; write(no)), E, (copy_term(E, C), numbervars(C, 0, _), write(caught(C)))), nl.
main :-
    t(environ('SCRIP_GATE_ENV', v1)), t(environ('SCRIP_GATE_ENV', v2)), t(environ(nosuch_gate_var_xyz, _)),
    t((environ(N, v1_unique_gate_value), N == 'SCRIP_GATE_UNIQ')), t((findall(K, environ(K, _), Ks), length(Ks, L), L > 2)),
    t(environ(1, _)), t(environ(_, 1)),
    t((working_directory(W), atom(W), sub_atom(W, _, _, 0, '/gate_cwd'))), t(working_directory(1)),
    t(make_directory(wdir)), t(make_directory(wdir)), t(make_directory(_)), t(make_directory(1)),
    t(file_exists(wdir)), t(file_exists(nosuch)), t(file_exists(_)), t(file_exists(1)),
    t(file_property(wdir, type(directory))), t(file_property(wdir, type(regular))), t(file_property(wdir, permission(search))),
    t(file_property(nosuch, type(_))), t(file_property(_, type(_))), t(file_property(1, type(_))), t(file_property(wdir, foo(_))),
    t((findall(Q, (file_property(wdir, P), functor(P, Q, _)), Qs), write(Qs), write(' '))),
    t((file_property(wdir, last_modification(M)), M = dt(Y, _, _, _, _, _), integer(Y))),
    t(change_directory(wdir)), open('f.txt', write, S), write(S, hello), close(S), t(change_directory('..')),
    t(change_directory(nosuch)), t(change_directory(_)), t(change_directory(1)),
    t(file_property('wdir/f.txt', size(5))), t(file_property('wdir/f.txt', type(regular))), t(file_property('wdir/f.txt', permission(execute))),
    t((file_property('wdir/f.txt', real_file_name(RF)), sub_atom(RF, _, _, 0, '/gate_cwd/wdir/f.txt'))),
    t((directory_files(wdir, Fs), msort(Fs, SF), write(SF), write(' '))), t(directory_files(nosuch, _)), t(directory_files(_, _)), t(directory_files(1, _)),
    t(delete_file('wdir/f.txt')), t(file_exists('wdir/f.txt')), t(delete_file('wdir/f.txt')), t(delete_file(wdir)), t(delete_file(_)),
    forall(member(T, [a, b, foo, bar, f(a), [a], 1, 0, -1, 2.5, [], f(foo), g(1,2), [a,b], foo(bar), 1.5, 'hello world']),
           (term_hash(T, H), writeq(T), write(' '), write(H), nl)),
    t((term_hash(f(_), H2), var(H2))), t(term_hash(a, foo)),
    t((prolog_pid(Pid), integer(Pid), Pid > 0)), t(prolog_pid(foo)).
