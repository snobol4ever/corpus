% file_driver.pl -- grades GNU Prolog's BipsPl/file.pl through the built-ins it defines: absolute_file_name/2,
% is_absolute_file_name/1, is_relative_file_name/1, decompose_file_name/4 and prolog_file_name/2 (Lon via the ceo, CEO-1312 and
% CEO-1523: every Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by
% its driver, NAME_driver beside it). gprolog's answer is file.pl's own code; SCRIP is graded three-way against it (m3 = m4 =
% gprolog). Every call prints every solution or the formal error term it raises. A path the answer would carry the run's own
% directory or home in (a relative path, ~, $HOME) is checked by property only, so the ref holds wherever the run starts.
:- initialization(main).

% t(G): every solution of G, or the formal error term G raises.
t(G) :- copy_term(G, C),
        catch(findall(C, C, L), E, true),
        (   var(E) -> R = L
        ;   E = error(F, _) -> R = error(F)
        ;   R = ball(E)
        ),
        \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).

% p(N, G): whether G holds, or the formal error term it raises, printed under the name N.
p(N, G) :- copy_term(G, C),
        catch(( C -> R = true ; R = false ), E, ( E = error(F, _) -> R = error(F) ; R = ball(E) )),
        write(N), write(' => '), writeq(R), nl.

main :-
    t(absolute_file_name('/a/b/c', _)),
    t(absolute_file_name('/a/b/../c', _)),
    t(absolute_file_name('/a/./b/./c', _)),
    t(absolute_file_name('/a//b', _)),
    t(absolute_file_name('/a/b/', _)),
    t(absolute_file_name('/', _)),
    t(absolute_file_name('/..', _)),
    t(absolute_file_name(user, _)),
    t(absolute_file_name(_, _)),
    t(absolute_file_name(42, _)),
    t(absolute_file_name('/a/b', '/a/b')),
    t(absolute_file_name('/a/b', '/a/c')),
    p(relative_path_becomes_absolute, (absolute_file_name('x/y.pl', A1), is_absolute_file_name(A1), sub_atom(A1, _, _, 0, '/x/y.pl'))),
    p(dot_is_the_working_directory, (absolute_file_name('.', A2), working_directory(W), A2 == W)),
    p(tilde_is_home, (absolute_file_name('~/f', A3), is_absolute_file_name(A3), sub_atom(A3, _, _, 0, '/f'))),
    p(dollar_home_is_expanded, (absolute_file_name('$HOME/g', A4), is_absolute_file_name(A4), sub_atom(A4, _, _, 0, '/g'))),
    t(is_absolute_file_name('/a/b')),
    t(is_absolute_file_name('a/b')),
    t(is_absolute_file_name('~/a')),
    t(is_absolute_file_name(user)),
    t(is_absolute_file_name(_)),
    t(is_relative_file_name('a/b')),
    t(is_relative_file_name('/a/b')),
    t(is_relative_file_name('.')),
    t(is_relative_file_name(_)),
    t(decompose_file_name('/a/b/c.pl', _, _, _)),
    t(decompose_file_name('c.pl', _, _, _)),
    t(decompose_file_name(noext, _, _, _)),
    t(decompose_file_name('dir/', _, _, _)),
    t(decompose_file_name('a.b.c', _, _, _)),
    t(decompose_file_name('x/y.z/w', _, _, _)),
    t(decompose_file_name('.hidden', _, _, _)),
    t(decompose_file_name(_, _, _, _)),
    t(prolog_file_name(foo, _)),
    t(prolog_file_name('foo.pl', _)),
    t(prolog_file_name('foo.pro', _)),
    t(prolog_file_name('dir/sub/prog', _)),
    t(prolog_file_name(user, _)),
    t(prolog_file_name(_, _)),
    true.
