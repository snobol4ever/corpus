:- use_module(library(lists)).
:- initialization(main).
t(R, G) :- catch((findall(R, G, L), \+ \+ (numbervars(L, 0, _), writeq(L))), error(E, _), \+ \+ (numbervars(E, 0, _), writeq(caught(E)))), nl.
main :-
    t(B1-E1, file_name_extension(B1, E1, 'foo.pl')),
    t(B2, file_name_extension(B2, '', 'foo.pl')),
    t(B3, file_name_extension(B3, '', 'foo')),
    t(B4, file_name_extension(B4, '.', 'foo.')),
    t(S1, text_to_string(abc, S1)), t(S2, text_to_string("x", S2)), t(S3, text_to_string([0'a], S3)), t(S4, text_to_string([a, b], S4)), t(S5, text_to_string([], S5)),
    t(S6, text_to_string(12, S6)), t(S7, text_to_string(_, S7)),
    t(x, exists_file('/etc/hostname_that_is_not_there')), t(x, exists_directory('/tmp')), t(x, exists_directory('/nonexistent/zz')), t(x, exists_file(_)),
    t(ok, (tmp_file(swb, F), open(F, write, S), write(S, hello), close(S), exists_file(F), \+ exists_directory(F), size_file(F, 5), time_file(F, T), float(T), same_file(F, F), delete_file(F), \+ exists_file(F))),
    t(x, size_file('/nonexistent/zz', _)),
    t(ok, (working_directory(O, O), sub_atom(O, _, 1, 0, /))),
    t(New, (working_directory(Old, '/tmp'), working_directory(New, Old), New == '/tmp/')),
    t(x, working_directory(_, '/nonexistent/zz')),
    t(ok, (setenv(swb_x, hello), getenv(swb_x, V), V == hello, unsetenv(swb_x), \+ getenv(swb_x, _))),
    t(P1, directory_file_path(a, b, P1)), t(P2, directory_file_path('a/', b, P2)), t(P3, directory_file_path('.', b, P3)), t(P4, directory_file_path(a, '/b', P4)),
    t(D5-F5, directory_file_path(D5, F5, 'a/b')), t(F6, directory_file_path(a, F6, 'a/b')), t(D7, directory_file_path(D7, b, 'a/b')),
    t(L8, (open_string("hello(world). foo.", S8), read(S8, T1), read(S8, T2), read(S8, T3), close(S8), L8 = [T1, T2, T3])),
    t(C9, (open_string(abc, S9), get_char(S9, C9), close(S9))),
    t(ok, (tmp_file(swbd, D), make_directory_path(D), exists_directory(D), delete_directory(D))),
    t(ok, (tmp_file(swbd2, D2), atom_concat(D2, '/a/b', DD), make_directory_path(DD), exists_directory(DD), atom_concat(D2, '/a', DA), delete_directory(DD), delete_directory(DA), delete_directory(D2))).
