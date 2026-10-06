% expand_driver.pl -- grades GNU Prolog's BipsPl/expand.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is expand.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% expand_term/2 is driven on DCG rules (terminals, non-terminals, {}/1, !, \+, if-then-else, disjunction, pushback,
% call//N, a variable body), on non-DCG terms, on a variable, and through a user term_expansion/2 the driver asserts at run
% time; phrase/2 and phrase/3 run the DCGs this driver defines (greeting//0, who//0, ab//0, nums//1).
:- initialization(main).

greeting --> [hello], who.

who --> [world].
who --> [prolog].

ab --> [].
ab --> [a], ab, [b].

nums([N|Ns]) --> [N], { integer(N) }, nums(Ns).
nums([]) --> [].

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
    t(expand_term((a --> b, c), _)),
    t(expand_term((a --> [x], b), _)),
    t(expand_term((a --> [x, y]), _)),
    t(expand_term((a --> []), _)),
    t(expand_term((a(X) --> {X = 1}, !, b), _)),
    t(expand_term((a --> b ; c), _)),
    t(expand_term((a --> \+ b), _)),
    t(expand_term((a --> b -> c ; d), _)),
    t(expand_term((a --> b, {c}, [d]), _)),
    t(expand_term((a --> [x], !, [y]), _)),
    t(expand_term((a, [p] --> b), _)),
    t(expand_term((a --> call(foo, x)), _)),
    t(expand_term((a --> _), _)),
    t(expand_term(foo(x), _)),
    t(expand_term((h :- b), _)),
    t(expand_term(_, _)),
    t(expand_term((a --> b), (a(S0, S) :- b(S0, S)))),
    t(expand_term((a --> b), (a :- b))),
    t(expand_term((a --> 3), _)),
    t(expand_term((3 --> a), _)),
    t(expand_term((_ --> a), _)),
    t(phrase(greeting, [hello, world])),
    t(phrase(greeting, [hello, _])),
    t(phrase(greeting, [hello, there])),
    t(phrase(ab, [a, a, b, b])),
    t(phrase(ab, [a, b, b])),
    t(phrase(nums(_), [1, 2])),
    t(phrase(_, [a])),
    t(phrase(3, [a])),
    t(phrase(nosuchnt, [a])),
    t(phrase(nums(_), [1, 2, x], _)),
    t(phrase(greeting, [hello, prolog, extra], _)),
    t(phrase(([a], [b]), [a, b, c], _)),
    t(phrase([a], [a, b], [b])),
    t(phrase([a], [a, b], [])),
    t(phrase(who, _, [])),
    t(phrase(_, [a], [])),
    assertz((term_expansion(magic(M), expanded(M)))),
    t(expand_term(magic(1), _)),
    t(expand_term((magic(2) --> b), _)),
    t(expand_term(other(3), _)),
    true.
