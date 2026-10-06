% write_driver.pl -- grades GNU Prolog's BipsPl/write.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% write_driver beside it). gprolog's answer is write.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% write.pl is all output: each call runs under o/1, so the text it printed is graded. No unbound variable is ever written
% (its name is an address); '$VAR'(N) terms stand in for variables where numbervars is under test.
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
    o(write('hello world')),
    o(write([a,'B',1.5,'it''s'])),
    o(write(1+2*3-(4-5))),
    o(write(- (1))),
    o(write(1 - -1)),
    o(write(- a)),
    o(write(f(',', '|', [], {}, '{}'(x)))),
    o(write('$VAR'(1))),
    o(write(user_output, f(x, 'Y'))),
    o(write(_, foo)),
    o(write(1, foo)),
    o(write(nosuch, foo)),
    o(write(user_input, foo)),
    o(writeq('hello world')),
    o(writeq([a,'B',[],{}])),
    o(writeq('\n')),
    o(writeq('it''s')),
    o(writeq(f(;, '|', (a:-b), (:-)))),
    o(writeq('$VAR'(27))),
    o(writeq(- (1))),
    o(writeq(-(1.5))),
    o(writeq(1.0e10)),
    o(writeq(user_output, {a,b})),
    o(writeq(nosuch, x)),
    o(write_canonical([a,'B'|c])),
    o(write_canonical(1+2)),
    o(write_canonical('$VAR'(1))),
    o(write_canonical(user_output, f('X', y))),
    o(write_canonical(_, x)),
    o(display(1+2*3)),
    o(display('hello world')),
    o(display([a,b])),
    o(display(user_output, - (1))),
    o(display(user_input, x)),
    o(write_term('a b', [quoted(true)])),
    o(write_term(1+2, [ignore_ops(true)])),
    o(write_term('$VAR'(3), [numbervars(true)])),
    o(write_term('$VAR'(3), [numbervars(false)])),
    o(write_term([1,2,3,4,5,6], [max_depth(3)])),
    o(write_term(f(g(h(i(j)))), [max_depth(2)])),
    o(write_term(f(a,b), [space_args(true)])),
    o(write_term((a,b), [priority(999)])),
    o(write_term(f(X,Y), [variable_names(['X'=X,'Y'=Y])])),
    o(write_term(f(x), [bogus(1)])),
    o(write_term(f(x), [quoted(maybe)])),
    o(write_term(f(x), _)),
    o(write_term(f(x), foo)),
    o(write_term(user_output, 'X', [quoted(true)])),
    o(write_term(user_output, [a,b], [max_depth(1)])),
    o(write_term(nosuch, a, [])),
    o(nl),
    o(nl(user_output)),
    o(nl(user_input)),
    o(nl(_)),
    true.
