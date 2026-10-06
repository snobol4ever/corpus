% le_interf_driver.pl -- grades GNU Prolog's BipsPl/le_interf.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is le_interf.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% The linedit prompt and completion list are in-memory state: no terminal is read or written. GNU's manual (The line
% editor, Completion) documents that every atom that appears in the system joins the completion list, so a prefix query
% answers every atom of this file that begins with the prefix (the prefix itself included), in GNU's sorted order.
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
    t(get_linedit_prompt(_)),
    t(get_linedit_prompt(nope)),
    t(get_linedit_prompt(123)),
    t(set_linedit_prompt('zqw> ')),
    t(get_linedit_prompt(_)),
    t(get_linedit_prompt('zqw> ')),
    t(set_linedit_prompt('')),
    t(get_linedit_prompt(_)),
    t(set_linedit_prompt(_)),
    t(set_linedit_prompt(123)),
    t(set_linedit_prompt(f(x))),
    t(add_linedit_completion(zqwalpha)),
    t(add_linedit_completion(zqwalphabet)),
    t(add_linedit_completion(zqw_beta2)),
    t(add_linedit_completion('zqw gamma')),
    t(add_linedit_completion('')),
    t(add_linedit_completion(_)),
    t(add_linedit_completion(12)),
    t(add_linedit_completion(f(zqw))),
    t(find_linedit_completion(zqwalp, _)),
    t(find_linedit_completion(zqw_, _)),
    t(find_linedit_completion(zqwalpha, zqwalphabet)),
    t(find_linedit_completion(zqwalphabet, zqwalpha)),
    t(find_linedit_completion(zqwnothing, zqwnothing_else)),
    t(find_linedit_completion(_, _)),
    t(find_linedit_completion(12, _)),
    t(find_linedit_completion(zqw, 12)),
    true.
