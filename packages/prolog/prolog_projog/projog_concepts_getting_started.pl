% "Hello world" example.

%?- write('hello, world'), nl
%OUTPUT 
%hello, world
%
%OUTPUT
%YES

% Dynamically populate knowledge base with facts.

%TRUE asserta(message(hi, world))
%TRUE assertz(message(hello, everyone))
%TRUE asserta(message(hello, world))

% Query using new facts added to the knowledge base.

%TRUE message(hello, everyone)
%FAIL message(hi, everyone)

%?- message(X, Y)
% X=hello
% Y=world
% X=hi
% Y=world
% X=hello
% Y=everyone

%?- message(hello, Y)
% Y=world
% Y=everyone

% Simple example of both unification and arithmetic.

%?- W=X, X=1+1, Y is W, Z is -W
% W=1 + 1
% X=1 + 1
% Y=2
% Z=-2

% Populate the knowledge base with clauses read from a file containing Prolog syntax.

%TRUE consult('towers-of-hanoi-example.pl')

% View the definition of hanoi that has just been parsed from the consulted file.

%?- listing(hanoi)
%OUTPUT
%hanoi(N) :- move(N, left, centre, right)
%
%OUTPUT
%YES

% Use the clauses loaded from towers-of-hanoi-example.pl in a query.

%?- hanoi(2)
%OUTPUT
%[move,a,disc,from,the,left,pole,to,the,right,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,right,pole,to,the,centre,pole]
%
%OUTPUT
%YES

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- write(\'hello, world\'), nl'), nl, '$pj_reset', catch(( ( write('hello, world'), nl ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- message(X, Y)'), nl, '$pj_reset', catch(( ( message(X, Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- message(hello, Y)'), nl, '$pj_reset', catch(( ( message(hello, Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- W=X, X=1+1, Y is W, Z is -W'), nl, '$pj_reset', catch(( ( W=X, X=1+1, Y is W, Z is -W ), write('W = '), writeq(W), nl, write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- listing(hanoi)'), nl, '$pj_reset', catch(( ( listing(hanoi) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- hanoi(2)'), nl, '$pj_reset', catch(( ( hanoi(2) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_main' :- between(1, 6, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
