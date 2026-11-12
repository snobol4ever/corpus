:- initialization(main, main).
main :-
    ( getenv('TMPDIR', D) -> true ; D = '/tmp' ), atom_concat(D, '/scrip-dt03.txt', Name),
    File = 'test-dir/sub/f.txt',
    get_time(Now),
    setup_call_cleanup(open(Name, write, Out, [encoding(utf8)]), format(Out, '~q.~n', [#{name:File, created:Now}]), close(Out)),
    setup_call_cleanup(open(Name, read, In, [encoding(utf8)]), read(In, Term), close(In)),
    ( Term.name == File -> writeln(name_ok) ; writeln(name_bad) ),
    ( abs(Term.created - Now) < 1 -> writeln(created_ok) ; writeln(created_bad) ),
    ( is_dict(Term, Tag), Tag == # -> writeln(tag_hash) ; writeln(tag_other) ),
    dict_pairs(Term, _, Pairs), length(Pairs, N), writeq(keys(N)), nl,
    delete_file(Name).
