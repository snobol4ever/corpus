% stat_driver.pl -- grades GNU Prolog's BipsPl/stat.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is stat.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% Every value these predicates return is a time or a memory figure, so a success is graded by a PROPERTY only -- the values
% are integers, never negative, and a later reading of a clock is never below an earlier one -- inside \+ \+ so that no
% number reaches the output; the documented errors and a failing unification are graded as themselves.
% NOT DRIVEN: statistics/0 -- it prints the current times and stack sizes, which differ on every run
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
    t(\+ \+ (statistics(user_time, [A, B]), integer(A), integer(B), A >= 0, B >= 0)),
    t(\+ \+ (statistics(runtime, [A, B]), integer(A), integer(B), A >= 0, B >= 0)),
    t(\+ \+ (statistics(system_time, [A, B]), integer(A), integer(B), A >= 0, B >= 0)),
    t(\+ \+ (statistics(cpu_time, [A, B]), integer(A), integer(B), A >= 0, B >= 0)),
    t(\+ \+ (statistics(real_time, [A, B]), integer(A), integer(B), A >= 0, B >= 0)),
    t(\+ \+ (statistics(local_stack, [A, B]), integer(A), integer(B), A >= 0, B >= 0)),
    t(\+ \+ (statistics(global_stack, [A, B]), integer(A), integer(B), A >= 0, B >= 0)),
    t(\+ \+ (statistics(trail_stack, [A, B]), integer(A), integer(B), A >= 0, B >= 0)),
    t(\+ \+ (statistics(cstr_stack, [A, B]), integer(A), integer(B), A >= 0, B >= 0)),
    t(\+ \+ (statistics(atoms, [A, B]), integer(A), integer(B), A > 0, B >= 0)),
    t(\+ \+ (statistics(cpu_time, [A, _]), statistics(cpu_time, [C, _]), C >= A)),
    t(\+ \+ (statistics(real_time, [A, _]), statistics(real_time, [C, _]), C >= A)),
    t(statistics(foo, [_, _])),
    t(statistics(3, _)),
    t(statistics(cpu_time, foo)),
    t(statistics(cpu_time, [_])),
    t(statistics(cpu_time, [a, _])),
    t(\+ \+ (cpu_time(T), integer(T), T >= 0)),
    t(\+ \+ (cpu_time(T), cpu_time(U), U >= T)),
    t(cpu_time(-1)),
    t(cpu_time(foo)),
    t(\+ \+ (real_time(T), integer(T), T >= 0)),
    t(\+ \+ (real_time(T), real_time(U), U >= T)),
    t(real_time(-1)),
    t(real_time(1.5)),
    t(\+ \+ (user_time(T), integer(T), T >= 0)),
    t(\+ \+ (user_time(T), user_time(U), U >= T)),
    t(user_time(-1)),
    t(user_time(foo)),
    t(\+ \+ (system_time(T), integer(T), T >= 0)),
    t(\+ \+ (system_time(T), system_time(U), U >= T)),
    t(system_time(-1)),
    t(system_time(foo)),
    true.
