% t_driver.pl -- grades GNU Prolog's BipsPl/t.pl, the developer's scratch file ("You can put your own test code in these
% files"), whose every clause and directive sits inside :- if(fail). ... :- endif. (Lon via the ceo, CEO-1312 and CEO-1523:
% every Prolog source file of the GNU package is graded through a driver; CEO-700: a library is graded by its driver, NAME_driver
% beside it). Loaded, the file defines nothing and runs none of its three initialization goals: its contract is that the
% conditional compilation skips all of it. The driver includes the file and asks for each predicate it would otherwise define,
% then calls three of them; gprolog's answer is the ref (m3 = m4 = gprolog).
:- include('t.pl').
:- initialization(main).

% t(G): every solution of G, or the formal error term G raises.
t(G) :- copy_term(G, C),
        catch(findall(C, C, L), E, true),
        (   var(E) -> R = L
        ;   E = error(F, _) -> R = error(F)
        ;   R = ball(E)
        ),
        \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).

main :-
    t(current_predicate(a/_)),
    t(current_predicate(aa/_)),
    t(current_predicate(aff/_)),
    t(current_predicate(closeall/_)),
    t(current_predicate(cross_sum/_)),
    t(current_predicate(d/_)),
    t(current_predicate(dle/_)),
    t(current_predicate(f/_)),
    t(current_predicate(hard/_)),
    t(current_predicate(ind/_)),
    t(current_predicate(is_square/_)),
    t(current_predicate(p/_)),
    t(current_predicate(q/_)),
    t(current_predicate(qw/_)),
    t(current_predicate(r/_)),
    t(current_predicate(s/_)),
    t(current_predicate(soft/_)),
    t(current_predicate(sum/_)),
    t(current_predicate(test/_)),
    t(current_predicate(v/_)),
    t(current_predicate(w/_)),
    t(current_predicate(works/_)),
    t(current_predicate(z/_)),
    t(current_predicate(z0/_)),
    t(s(3)),
    t(cross_sum(123, _)),
    t(is_square(16)),
    true.
