x(p(1)).
x(p(3)).

z(1).
z(3).

t1(X,Y) :- X is 2, x(Y).

t2(X,Y) :- X is 2, x(p(Y)).

t3(X,Y) :- X is 2, z(Y).

t4(Y,X) :- X is 2, x(Y).

t5(Y,X) :- X is 2, x(p(Y)).

t6(Y,X) :- X is 2, z(Y).

t7(Y,X) :- X is 2, Y=p(1).

%FAIL t1(Z,p(Z))
%?- t1(W,p(Z))
% W=2
% Z=1
% W=2
% Z=3

%FAIL t2(Z,Z)
%?- t2(W,Z)
% W=2
% Z=1
% W=2
% Z=3

%FAIL t3(Z,Z)
%?- t3(W,Z)
% W=2
% Z=1
% W=2
% Z=3

%FAIL t4(p(Z),Z)
%?- t4(p(Z),W)
% W=2
% Z=1
% W=2
% Z=3

%FAIL t5(Z,Z)
%?- t5(Z,W)
% W=2
% Z=1
% W=2
% Z=3

%FAIL t6(Z,Z)
%?- t6(Z,W)
% W=2
% Z=1
% W=2
% Z=3

%FAIL t7(p(Z),Z)
%?- t7(p(Z),W)
% W=2
% Z=1

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- t1(W,p(Z))'), nl, '$pj_reset', catch(( ( t1(W,p(Z)) ), write('W = '), writeq(W), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- t2(W,Z)'), nl, '$pj_reset', catch(( ( t2(W,Z) ), write('W = '), writeq(W), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- t3(W,Z)'), nl, '$pj_reset', catch(( ( t3(W,Z) ), write('W = '), writeq(W), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- t4(p(Z),W)'), nl, '$pj_reset', catch(( ( t4(p(Z),W) ), write('Z = '), writeq(Z), nl, write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- t5(Z,W)'), nl, '$pj_reset', catch(( ( t5(Z,W) ), write('Z = '), writeq(Z), nl, write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- t6(Z,W)'), nl, '$pj_reset', catch(( ( t6(Z,W) ), write('Z = '), writeq(Z), nl, write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- t7(p(Z),W)'), nl, '$pj_reset', catch(( ( t7(p(Z),W) ), write('Z = '), writeq(Z), nl, write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_main' :- between(1, 7, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
