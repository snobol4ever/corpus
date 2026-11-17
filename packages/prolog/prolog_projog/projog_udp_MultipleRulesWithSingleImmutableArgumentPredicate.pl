% test of single argument immutable facts

p(a).
p(b).
p('2').
p(1).
p(0).
p(-1).
p(7.5).
p(7.5).
p(7.5).
p(7.5).
p(7.5).
p(7.0).
p([]).
p(a).
p(a).
p(1).
p(z(a,b)).
p(y(a,b)).
p(x(a,b)).
p(z(a,b)).
p(x(a,c)).
p(x(a,d)).
p(x(a,b,c)).
p(z(a,b)).
p(a).
p([a]).
p([a,b,c]).
p([a,b]).
p([b,a]).
p([a,b,c]).

%FAIL p(c)
%FAIL p(1.0)
%FAIL p(2)
%FAIL p(7)
%FAIL p(7.6)
%FAIL p(z(a,c))
%FAIL p(q(a,b))
%FAIL p([b])
%FAIL p([a,c,b])
%FAIL p([a,b,c,d])

%TRUE p(b)
%TRUE p('2')
%TRUE p(0)
%TRUE p(-1)
%TRUE p(7.0)
%TRUE p([])
%TRUE p(y(a,b))
%TRUE p(x(a,b))
%TRUE p(x(a,c))
%TRUE p(x(a,b,c))
%TRUE p([a])
%TRUE p([a,b])
%TRUE p([b,a])

%?- p(a)
%YES
%YES
%YES
%YES

%?- p(1)
%YES
%YES

%?- p(7.5)
%YES
%YES
%YES
%YES
%YES

%?- p(z(a,b))
%YES
%YES
%YES

%?- p([a,b,c])
%YES
%YES

%?- p(x(a,X))
% X=b
% X=c
% X=d

%?- p(X)
% X=a
% X=b
% X=2
% X=1
% X=0
% X=-1
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.0
% X=[]
% X=a
% X=a
% X=1
% X=z(a, b)
% X=y(a, b)
% X=x(a, b)
% X=z(a, b)
% X=x(a, c)
% X=x(a, d)
% X=x(a, b, c)
% X=z(a, b)
% X=a
% X=[a]
% X=[a,b,c]
% X=[a,b]
% X=[b,a]
% X=[a,b,c]

%?- p(X), p(X)
% X=a
% X=a
% X=a
% X=a
% X=b
% X=2
% X=1
% X=1
% X=0
% X=-1
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.5
% X=7.0
% X=[]
% X=a
% X=a
% X=a
% X=a
% X=a
% X=a
% X=a
% X=a
% X=1
% X=1
% X=z(a, b)
% X=z(a, b)
% X=z(a, b)
% X=y(a, b)
% X=x(a, b)
% X=z(a, b)
% X=z(a, b)
% X=z(a, b)
% X=x(a, c)
% X=x(a, d)
% X=x(a, b, c)
% X=z(a, b)
% X=z(a, b)
% X=z(a, b)
% X=a
% X=a
% X=a
% X=a
% X=[a]
% X=[a,b,c]
% X=[a,b,c]
% X=[a,b]
% X=[b,a]
% X=[a,b,c]
% X=[a,b,c]

%TRUE trace

% test trace when fails
%?- p(z)
%OUTPUT
%[1] CALL p(z)
%[1] FAIL p(z)
%
%OUTPUT
%NO

% test trace when succeeds once
%?- p(b)
%OUTPUT
%[1] CALL p(b)
%[1] EXIT p(b)
%
%OUTPUT
%YES

% test trace when succeeds multiple times
%?- p(z(a,b))
%OUTPUT
%[1] CALL p(z(a, b))
%[1] EXIT p(z(a, b))
%
%OUTPUT
%YES
%OUTPUT
%[1] REDO p(z(a, b))
%[1] EXIT p(z(a, b))
%
%OUTPUT
%YES
%OUTPUT
%[1] REDO p(z(a, b))
%[1] EXIT p(z(a, b))
%
%OUTPUT
%YES

% test trace when argument contains a variable and so will not use index
%?- p(x(a,X))
%OUTPUT
%[1] CALL p(x(a, X))
%[1] EXIT p(x(a, b))
%
%OUTPUT
% X=b
%OUTPUT
%[1] REDO p(x(a, b))
%[1] EXIT p(x(a, c))
%
%OUTPUT
% X=c
%OUTPUT
%[1] REDO p(x(a, c))
%[1] EXIT p(x(a, d))
%
%OUTPUT
% X=d

% test trace when argument contains a variable and so will not use index and query does not succeed
%?- p(x(q,X))
%OUTPUT
%[1] CALL p(x(q, X))
%[1] FAIL p(x(q, X))
%
%OUTPUT
%NO

% another test of trace when argument contains a variable and so will not use index
%?- p(z(a,X))
%OUTPUT
%[1] CALL p(z(a, X))
%[1] EXIT p(z(a, b))
%
%OUTPUT
% X=b
%OUTPUT
%[1] REDO p(z(a, b))
%[1] EXIT p(z(a, b))
%
%OUTPUT
% X=b
%OUTPUT
%[1] REDO p(z(a, b))
%[1] EXIT p(z(a, b))
%
%OUTPUT
% X=b

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(a)'), nl, '$pj_reset', catch(( ( p(a) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(1)'), nl, '$pj_reset', catch(( ( p(1) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- p(7.5)'), nl, '$pj_reset', catch(( ( p(7.5) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p(z(a,b))'), nl, '$pj_reset', catch(( ( p(z(a,b)) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p([a,b,c])'), nl, '$pj_reset', catch(( ( p([a,b,c]) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- p(x(a,X))'), nl, '$pj_reset', catch(( ( p(x(a,X)) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- p(X)'), nl, '$pj_reset', catch(( ( p(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- p(X), p(X)'), nl, '$pj_reset', catch(( ( p(X), p(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- p(z)'), nl, '$pj_reset', catch(( ( p(z) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- p(b)'), nl, '$pj_reset', catch(( ( p(b) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- p(z(a,b))'), nl, '$pj_reset', catch(( ( p(z(a,b)) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- p(x(a,X))'), nl, '$pj_reset', catch(( ( p(x(a,X)) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- p(x(q,X))'), nl, '$pj_reset', catch(( ( p(x(q,X)) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- p(z(a,X))'), nl, '$pj_reset', catch(( ( p(z(a,X)) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_main' :- between(1, 14, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
