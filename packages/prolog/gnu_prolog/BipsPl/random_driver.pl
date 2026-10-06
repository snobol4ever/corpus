% random_driver.pl -- grades GNU Prolog's BipsPl/random.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is random.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents (8.25); an error prints as its ISO formal term only.
% No random value and no seed is ever printed: each value is checked by a property under \+ \+ (range, type, the seed
% read back, the same seed giving the same sequence), so the solution carries no binding. random/3 on a float bound is checked
% for its range only: the manual (8.25.4) says the result is then a float, but gprolog 1.4.5 returns an integer
% (random(1.0, 2.0, X) gives X = 1), so the type is not graded.
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
    t(set_seed(42)),
    t(set_seed(_)),
    t(set_seed(a)),
    t(set_seed(-1)),
    t(\+ \+ (set_seed(42), get_seed(42))),
    t(\+ \+ (set_seed(42), get_seed(43))),
    t(\+ \+ (get_seed(S), integer(S), S >= 0)),
    t(get_seed(a)),
    t(\+ \+ (random(X), float(X), X >= 0.0, X < 1.0)),
    t(\+ \+ (set_seed(7), random(X), set_seed(7), random(Y), X == Y)),
    t(random(0.5)),
    t(\+ \+ (random(1, 10, X), integer(X), X >= 1, X < 10)),
    t(\+ \+ (random(-3, 3, X), integer(X), X >= -3, X < 3)),
    t(\+ \+ (random(1.0, 2, X), X >= 1.0, X < 2)),
    t(\+ \+ (random(5, 6, X), X == 5)),
    t(\+ \+ (set_seed(11), random(1, 1000, X), set_seed(11), random(1, 1000, Y), X == Y)),
    t(random(_, 10, _)),
    t(random(1, _, _)),
    t(random(a, 10, _)),
    t(random(1, b, _)),
    t(random(1, 10, 3)),
    t(randomize),
    t(\+ \+ (randomize, random(X), float(X), X >= 0.0, X < 1.0)),
    t(\+ \+ (randomize, get_seed(S), integer(S), S >= 0)),
    true.
