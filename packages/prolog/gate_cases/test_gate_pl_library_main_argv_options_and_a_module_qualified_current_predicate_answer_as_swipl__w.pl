:- use_module(library(plunit)).
:- use_module(library(main)).
:- use_module(library(optparse)).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = E), writeq(N-R), nl.
tv(N, G, V) :- catch((G -> R = V ; R = no), error(E, _), R = E), writeq(N-R), nl.
foo.
:- begin_tests(g).
opt_type(v, verbose, boolean).
opt_type(n, count, integer).
test(g) :- M = plunit_g, t(own, current_predicate(M:opt_type/3)), t(lit, current_predicate(plunit_g:opt_type/3)),
    t(user_visible, current_predicate(M:foo/0)), t(user_q, current_predicate(user:foo/0)), t(missing, current_predicate(M:nope/0)),
    t(other_unit, current_predicate(plunit_u:opt_type/3)), t(user_opt_type, current_predicate(user:opt_type/3)),
    t(arity_enum, findall(A, current_predicate(M:opt_type/A), [3])), t(not_atom, current_predicate(1:foo/0)), t(bad_pi, current_predicate(M:foo)),
    argv_options(['-v', '-n', '3', a], P, O), writeq(guided-(P-O)), nl.
:- end_tests(g).
:- begin_tests(h).
opt_type(x, y, boolean).
test(h) :- argv_options(['-x', c], P, O), writeq(guided_other_unit-(P-O)), nl.
:- end_tests(h).
:- begin_tests(u).
test(u) :- t(u_own, current_predicate(plunit_u:opt_type/3)), argv_options(['--name=arg', '--pi=3.14', a1], P, O), writeq(unguided-(P-O)), nl.
:- end_tests(u).
go :- run_tests, argv_options([b, '--no-x'], P, O), writeq(user_unguided-(P-O)), nl,
    tv(optparse, opt_parse([[opt(verbose), type(boolean), default(false), shortflags([v]), longflags([verbose])]], ['-v', f], Opts, Pos), Opts-Pos).
