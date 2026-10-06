% const_io_driver.pl -- grades GNU Prolog's BipsPl/const_io.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% const_io_driver beside it). gprolog's answer is const_io.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% const_io.pl is GNU's to-atom / to-chars / to-codes family (write, writeq, write_canonical, display, print, write_term,
% format) and its from-atom / from-chars / from-codes family (read, read_term, read_token): every one returns a value, so
% each runs under t/1 and the bound text is graded.
:- initialization(main).

% t(G): every solution of G, or the formal error term G raises.
t(G) :- copy_term(G, C),
        catch(findall(C, C, L), E, true),
        (   var(E) -> R = L
        ;   E = error(F, _) -> R = error(F)
        ;   R = ball(E)
        ),
        \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).

% o(G): for a goal whose effect is OUTPUT -- what it printed between < and >, then true, fail or the formal error term.
o(G) :- write('<'),
        catch(( G -> R = true ; R = fail ), E, ( E = error(F, _) -> R = error(F) ; R = ball(E) )),
        write('> '), writeq(R), nl.

main :-
    t(write_to_atom(_, f('X', y, 'a b', [1,2]))),
    t(write_to_atom('f(x)', f(x))),
    t(write_to_atom(abc, f(x))),
    t(write_to_atom(f(x), a)),
    t(write_to_chars(_, 'A'+b)),
    t(write_to_chars(_, '$VAR'(25))),
    t(write_to_codes(_, - (1))),
    t(write_to_codes(_, [])),
    t(writeq_to_atom(_, f('X', 'a b', [], '\n'))),
    t(writeq_to_atom(_, - (1))),
    t(writeq_to_chars(_, 'it''s')),
    t(writeq_to_codes(_, '$VAR'(25))),
    t(write_canonical_to_atom(_, [a|'B'])),
    t(write_canonical_to_atom(_, '$VAR'(25))),
    t(write_canonical_to_chars(_, 1+2)),
    t(write_canonical_to_codes(_, 'x y')),
    t(display_to_atom(_, 1+2*3)),
    t(display_to_atom(_, - (1))),
    t(display_to_chars(_, 'a b')),
    t(display_to_codes(_, [x])),
    t(print_to_atom(_, f('$VAR'(1), 'a b'))),
    t(print_to_chars(_, 1+2)),
    t(print_to_codes(_, ab)),
    t(write_term_to_atom(_, 'a b'+'$VAR'(2), [quoted(true), numbervars(true)])),
    t(write_term_to_atom(_, 1+2, [ignore_ops(true)])),
    t(write_term_to_atom(_, x, [bad])),
    t(write_term_to_chars(_, f('$VAR'(2)), [numbervars(false)])),
    t(write_term_to_chars(_, x, _)),
    t(write_term_to_codes(_, 'A', [quoted(true)])),
    t(write_term_to_codes(_, x, [quoted(maybe)])),
    t(format_to_atom(_, '~w-~a ~d', [x, y, 42])),
    t(format_to_atom(_, "~q|~2f", ['A', 1.5])),
    t(format_to_atom(_, '~a', [])),
    t(format_to_atom(_, '~y', [x])),
    t(format_to_chars(_, '~q', ['A'])),
    t(format_to_chars(_, '~d', [abc])),
    t(format_to_codes(_, '~a~n', [z])),
    t(format_to_codes(_, '~8r', [64])),
    t(read_from_atom('foo(X, Y, X).', _)),
    t(read_from_atom('[1, 2|T].', _)),
    t(read_from_atom('foo(', _)),
    t(read_from_atom(_, _)),
    t(read_from_atom('', _)),
    t(read_from_atom('a.', b)),
    t(read_from_chars([a,'(',b,')','.'], _)),
    t(read_from_chars(_, _)),
    t(read_from_codes("1 + 2 * 3.", _)),
    t(read_from_codes("- 1.", _)),
    t(read_term_from_atom('f(X, _Y, Z, X).', _, [variable_names(_)])),
    t(read_term_from_atom('f(X, _Y, Z, X).', _, [singletons(_)])),
    t(read_term_from_atom('g(A, B).', _, [variables(_)])),
    t(read_term_from_atom('a.', _, [nope])),
    t(read_term_from_chars([h,'(','X',')','.'], _, [variable_names(_)])),
    t(read_term_from_chars([h,'(','.'], _, [syntax_error(fail)])),
    t(read_term_from_codes("k(a).", _, [])),
    t(read_term_from_codes("k(a).", _, foo)),
    t(read_token_from_atom('foo(bar)', _)),
    t(read_token_from_atom('X', _)),
    t(read_token_from_atom('123 abc', _)),
    t(read_token_from_atom('"str"', _)),
    t(read_token_from_atom('', _)),
    t(read_token_from_atom('( x', _)),
    t(read_token_from_atom(_, _)),
    t(read_token_from_chars(['''',a,' ',b,''''], _)),
    t(read_token_from_chars([',', a], _)),
    t(read_token_from_codes("3.25", _)),
    t(read_token_from_codes("_Var", _)),
    true.
