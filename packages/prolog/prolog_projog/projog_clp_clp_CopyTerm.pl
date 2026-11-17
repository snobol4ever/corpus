:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%?- X#=5, copy_term(X,Y)
% X=5
% Y=5

%?- X#=5, copy_term(f(X),Y)
% X=5
% Y=f(5)

%?- X#>5, copy_term(X,Y)
%ERROR CLP_VARIABLE does not support copy, so is not suitable for use in this scenario

%?- X#>5, copy_term(f(X),Y)
%ERROR CLP_VARIABLE does not support copy, so is not suitable for use in this scenario

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X#=5, copy_term(X,Y)'), nl, '$pj_reset', catch(( ( X#=5, copy_term(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X#=5, copy_term(f(X),Y)'), nl, '$pj_reset', catch(( ( X#=5, copy_term(f(X),Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X#>5, copy_term(X,Y)'), nl, '$pj_reset', catch(( ( X#>5, copy_term(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- X#>5, copy_term(f(X),Y)'), nl, '$pj_reset', catch(( ( X#>5, copy_term(f(X),Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_main' :- between(1, 4, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
