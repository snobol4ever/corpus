% pretty_driver.pl -- grades GNU Prolog's BipsPl/pretty.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% pretty_driver beside it). gprolog's answer is pretty.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% portray_clause/1,2 is output (o/1, the clause and its newline are the predicate's text); the variable binders run under
% t/1, whose writeq shows '$VAR'(N) as a letter and '$VARNAME'(Name) as Name.
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
    o(portray_clause(foo)),
    o(portray_clause(foo(X, _, X, 'A b', [x|_]))),
    o(portray_clause((foo(X1, Y1) :- bar(X1), \+ baz(Z1), (Z1 = 1 ; Y1 = 2)))),
    o(portray_clause((a :- b -> c ; d))),
    o(portray_clause((:- dynamic(p/1)))),
    o(portray_clause(_)),
    o(portray_clause(1)),
    o(portray_clause(user_output, f('$VAR'(1), _))),
    o(portray_clause(nosuch, f)),
    t(name_singleton_vars(f(B, _, B))),
    t(name_singleton_vars(g(a))),
    t(name_query_vars(['X'=_, 'Y'=_], _)),
    t(name_query_vars(['X'=_, 'Y'=a, 'Z'=_], _)),
    t(name_query_vars(_, _)),
    t(bind_variables(f(_, _, _), [from(3)])),
    t(bind_variables(f(_, _, '$VAR'(5)), [from(4), exclude(['$VAR'(5)])])),
    t(bind_variables(f(_, _), [namevars])),
    t(bind_variables(f(_, _), [numbervars, next(2)])),
    t(bind_variables(f(_, _), [next(5)])),
    t(bind_variables(f(_), [foo])),
    t(bind_variables(f(_), _)),
    t(numbervars(f(_, _, _), 0, _)),
    t(numbervars(f(A, _, A), 23, _)),
    t(numbervars(f(_), 0, 5)),
    t(numbervars(f(_), a, _)),
    t(numbervars(f(_), _, _)),
    t(numbervars(g(_, _))),
    t(numbervars(g(a))),
    true.
