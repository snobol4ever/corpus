% print_driver.pl -- grades GNU Prolog's BipsPl/print.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% print_driver beside it). gprolog's answer is print.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% print/1,2 consult the user hook portray/1 (defined below, as the manual documents); get_print_stream/1 is called where
% the manual says it is useful -- inside portray/1 -- and once outside, by property only (a stream term is never printed).
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

portray(secret(_)) :- get_print_stream(S), write(S, '**hidden**').
portray(plain(X)) :- write('#'), write(X).
portray(where) :- get_print_stream(S), ( stream_property(S, alias(user_output)) -> write(S, user_output) ; write(S, other) ).

main :-
    o(print('hello world')),
    o(print(f('A', b, 'it''s'))),
    o(print('$VAR'(2))),
    o(print(1+2*3-(4-5))),
    o(print([plain(1), b, plain('C')])),
    o(print([secret(1), open, secret(2)])),
    o(print(g(secret(x), where))),
    o(print(where)),
    o(print(user_output, secret(1))),
    o(print(user_output, f('$VAR'(25), where))),
    o(print(_, x)),
    o(print(nosuch, x)),
    o(print(user_input, x)),
    o((get_print_stream(S), stream_property(S, alias(user_output)))),
    t(get_print_stream(foo)),
    true.
