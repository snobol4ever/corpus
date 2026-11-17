% Atoms unify if and only if they are the same atom.
%FAIL atom1=atom2
%TRUE atom1=atom1

% Numbers unify if and only if they are the same number.
%FAIL 1=2
%TRUE 1=1

% If variable V is instantiated and term T is not a variable 
% then V and T unify if and only if
% the term instantiated on V unifies with T.
%FAIL X=atom1, X=atom2
%?- X=atom1, X=atom1
% X=atom1

% If variable V is instantiated and term T is an instantiated variable 
% then V and T unify if and only if 
% the term instantiated on V unifies with the term instantiated on T.
%FAIL X=atom1, Y=atom2, X=Y
%?- X=atom1, Y=atom1, X=Y
% X=atom1
% Y=atom1

% If variable V is instantiated and term T is an uninstantiated variable
% then V and T unifed by instantiating on T the term instantiated on V.
%?- X=atom1, X=Y
% X=atom1
% Y=atom1

% Structures unify if, and only if,
% a) their names unify
% b) they have the same number of arguments
% and c) their arguments unify.
%FAIL structure1(atom1,atom2,atom3)=structure2(atom1,atom2,atom3)
%FAIL structure1(atom1,atom2,atom3)=structure1(atom1,atom2)
%FAIL structure1(atom1,atom2,atom3)=structure1(atom1,atom2,atom4)
%TRUE structure1(atom1,atom2,atom3)=structure1(atom1,atom2,atom3)
%?- structure1(atom1,X,atom3)=structure1(atom1,atom2,Y)
% X=atom2
% Y=atom3

% Lists unify if and only if both their heads and their tails unify.
%FAIL [atom,atom2,atom3]=[atom1,atom2]
%FAIL [atom1,atom2,atom3]=[atom1,atom2,atom4]
%FAIL [atom1,atom2]=[atom2,X]

%?- [atom1,atom2,atom3]=[X,Y,Z]
% X=atom1
% Y=atom2
% Z=atom3

%?- [atom1]=[X|Y]
% X=atom1
% Y=[]

%?- [atom1,atom2,atom3]=[X,Y|Z]
% X=atom1
% Y=atom2
% Z=[atom3]

%?- [X|Y]=[atom1,atom2,atom3]
% X=atom1
% Y=[atom2,atom3]

%?- [atom1,atom2]=[atom1|X]
% X=[atom2]

%?- [atom1|Y]=[X|atom2]
% X=atom1
% Y=atom2

%?- [[atom1,Y]|Z]=[[X,atom2],[atom3,atom4]]
% X=atom1
% Y=atom2
% Z=[[atom3,atom4]]

%?- A=atom1, B=atom2, C=atom3, D=[A,B,C]
% A=atom1
% B=atom2
% C=atom3
% D=[atom1,atom2,atom3]

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X=atom1, X=atom1'), nl, '$pj_reset', catch(( ( X=atom1, X=atom1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X=atom1, Y=atom1, X=Y'), nl, '$pj_reset', catch(( ( X=atom1, Y=atom1, X=Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X=atom1, X=Y'), nl, '$pj_reset', catch(( ( X=atom1, X=Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- structure1(atom1,X,atom3)=structure1(atom1,atom2,Y)'), nl, '$pj_reset', catch(( ( structure1(atom1,X,atom3)=structure1(atom1,atom2,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- [atom1,atom2,atom3]=[X,Y,Z]'), nl, '$pj_reset', catch(( ( [atom1,atom2,atom3]=[X,Y,Z] ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- [atom1]=[X|Y]'), nl, '$pj_reset', catch(( ( [atom1]=[X|Y] ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- [atom1,atom2,atom3]=[X,Y|Z]'), nl, '$pj_reset', catch(( ( [atom1,atom2,atom3]=[X,Y|Z] ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- [X|Y]=[atom1,atom2,atom3]'), nl, '$pj_reset', catch(( ( [X|Y]=[atom1,atom2,atom3] ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- [atom1,atom2]=[atom1|X]'), nl, '$pj_reset', catch(( ( [atom1,atom2]=[atom1|X] ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- [atom1|Y]=[X|atom2]'), nl, '$pj_reset', catch(( ( [atom1|Y]=[X|atom2] ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- [[atom1,Y]|Z]=[[X,atom2],[atom3,atom4]]'), nl, '$pj_reset', catch(( ( [[atom1,Y]|Z]=[[X,atom2],[atom3,atom4]] ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- A=atom1, B=atom2, C=atom3, D=[A,B,C]'), nl, '$pj_reset', catch(( ( A=atom1, B=atom2, C=atom3, D=[A,B,C] ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write('D = '), writeq(D), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_main' :- between(1, 12, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
