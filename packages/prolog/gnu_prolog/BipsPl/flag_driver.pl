% flag_driver.pl -- grades GNU Prolog's BipsPl/flag.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is flag.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents (8.22.1, 8.22.2, 8.27.1-8.27.4); an error prints as its
% ISO formal term only. current_prolog_flag/2 is called on ISO flags by a bound name only (never enumerating the flags);
% a flag set here is restored. The run has no program arguments; argument_value(0, A) is the program's path and environ/2's
% values are the environment's, so both are checked by property only and never printed.
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
    t(current_prolog_flag(bounded, _)),
    t(current_prolog_flag(bounded, nonsense)),
    t(current_prolog_flag(max_integer, _)),
    t(current_prolog_flag(min_integer, _)),
    t(current_prolog_flag(integer_rounding_function, _)),
    t(current_prolog_flag(max_arity, _)),
    t(current_prolog_flag(char_conversion, _)),
    t(current_prolog_flag(debug, _)),
    t(current_prolog_flag(unknown, _)),
    t(current_prolog_flag(double_quotes, _)),
    t(current_prolog_flag(no_such_flag, _)),
    t(current_prolog_flag(3, _)),
    t(set_prolog_flag(double_quotes, atom)),
    t(current_prolog_flag(double_quotes, _)),
    t(set_prolog_flag(double_quotes, codes)),
    t(set_prolog_flag(unknown, fail)),
    t(current_prolog_flag(unknown, _)),
    t(set_prolog_flag(unknown, error)),
    t(set_prolog_flag(char_conversion, off)),
    t(set_prolog_flag(_, on)),
    t(set_prolog_flag(char_conversion, _)),
    t(set_prolog_flag(3, on)),
    t(set_prolog_flag(no_such_flag, on)),
    t(set_prolog_flag(double_quotes, bogus)),
    t(set_prolog_flag(bounded, false)),
    t(argument_counter(_)),
    t(argument_counter(7)),
    t(argument_counter(foo)),
    t(argument_list(_)),
    t(argument_list([x])),
    t(argument_list(foo)),
    t(\+ \+ (argument_value(0, A), atom(A))),
    t(argument_value(1, _)),
    t(argument_value(_, _)),
    t(argument_value(a, _)),
    t(argument_value(-1, _)),
    t(argument_value(0, 3)),
    t(\+ \+ (environ(N, V), atom(N), atom(V))),
    t(environ(gdrv_no_such_variable, _)),
    t(environ(3, _)),
    t(environ(gdrv_no_such_variable, 3)),
    true.
