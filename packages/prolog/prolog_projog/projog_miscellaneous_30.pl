is_edge(Term,Edge) :-
 Term =.. [ParentName|Children],
 member(Child,Children),
 (
   Child =.. [ChildName|_],
   Edge = ParentName-ChildName
 ;
   is_edge(Child,Edge)
 ).

%?- Term=f(i(k(c))), is_edge(Term, Edge)
% Edge=f - i
% Term=f(i(k(c)))
% Edge=i - k
% Term=f(i(k(c)))
% Edge=k - c
% Term=f(i(k(c)))
%NO

%?- is_edge(f(g(a),h(b),i(k(c))), Edge)
% Edge=f - g
% Edge=g - a
% Edge=f - h
% Edge=h - b
% Edge=f - i
% Edge=i - k
% Edge=k - c
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- Term=f(i(k(c))), is_edge(Term, Edge)'), nl, '$pj_reset', catch(( ( Term=f(i(k(c))), is_edge(Term, Edge) ), write('Term = '), writeq(Term), nl, write('Edge = '), writeq(Edge), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- is_edge(f(g(a),h(b),i(k(c))), Edge)'), nl, '$pj_reset', catch(( ( is_edge(f(g(a),h(b),i(k(c))), Edge) ), write('Edge = '), writeq(Edge), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
