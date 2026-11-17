%?- X '=' a
%X=a

%?- write_canonical(a'='b)
%OUTPUT =(a, b)
%YES

%?- X = @, Y = '@', X=Y
%X=@
%Y=@

%?- X='(', true
%X=(

%?- X=(, true
%ERROR No matching ) for ( Line: X=(, true.

%?- X=p()
%ERROR No arguments to parse Line: X=p().

%?- X=p(a, b c)
%ERROR No suitable operands Line: X=p(a, b c).

%?- X=[a,b
%ERROR No matching ] for [ Line: X=[a,b.

%?- X=[a,b c]
%ERROR No suitable operands Line: X=[a,b c].

%?- X=[a,b|c,d]
%ERROR Expected ] Line: X=[a,b|c,d].

%?- X=[a,b|c|d]
%ERROR Expected ] Line: X=[a,b|c|d].

%?- X=(a b)
%ERROR No suitable operands Line: X=(a b).

%?- X='.'
%X=.

%?- X : 2 = 1 : 2
%X=1

%?- 1 : X = 1 : 2
%X=2

%?- 1 : 2 = X : 2
%X=1

%?- 1 : 2 = 1 : X
%X=2

%?- X=p(','(1,2)), write_canonical(X)
%OUTPUT p(,(1, 2))
%X=p(1 , 2)

%?- X=p(1,','(1+2)), write_canonical(X)
%OUTPUT p(1, ,(+(1, 2)))
%X=p(1, ,(1 + 2))

%?- X=p(1,(2+3)), write_canonical(X)
%OUTPUT p(1, +(2, 3))
%X=p(1, 2 + 3)

%?- X=p(1,','(2,3)), write_canonical(X)
%OUTPUT p(1, ,(2, 3))
%X=p(1, 2 , 3)

%?- X=p(1,','(2+3)), write_canonical(X)
%OUTPUT p(1, ,(+(2, 3)))
%X=p(1, ,(2 + 3))

%?- X=p(1,2','(3+4),5), write_canonical(X)
%OUTPUT p(1, 2, +(3, 4), 5)
%X=p(1, 2, 3 + 4, 5)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X \'=\' a'), nl, '$pj_reset', catch(( ( X '=' a ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- write_canonical(a\'=\'b)'), nl, '$pj_reset', catch(( ( write_canonical(a'='b) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X = @, Y = \'@\', X=Y'), nl, '$pj_reset', catch(( ( X = @, Y = '@', X=Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- X=\'(\', true'), nl, '$pj_reset', catch(( ( X='(', true ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- X=(, true'), nl, '$pj_reset', catch(( ( X=(, true ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- X=p()'), nl, '$pj_reset', catch(( ( X=p() ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- X=p(a, b c)'), nl, '$pj_reset', catch(( ( X=p(a, b c) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- X=[a,b'), nl, '$pj_reset', catch(( ( X=[a,b ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- X=[a,b c]'), nl, '$pj_reset', catch(( ( X=[a,b c] ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- X=[a,b|c,d]'), nl, '$pj_reset', catch(( ( X=[a,b|c,d] ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- X=[a,b|c|d]'), nl, '$pj_reset', catch(( ( X=[a,b|c|d] ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- X=(a b)'), nl, '$pj_reset', catch(( ( X=(a b) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- X=\'.\''), nl, '$pj_reset', catch(( ( X='.' ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- X : 2 = 1 : 2'), nl, '$pj_reset', catch(( ( X : 2 = 1 : 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_q'(15) :- write('?- 1 : X = 1 : 2'), nl, '$pj_reset', catch(( ( 1 : X = 1 : 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(15).
'$pj_q'(16) :- write('?- 1 : 2 = X : 2'), nl, '$pj_reset', catch(( ( 1 : 2 = X : 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(16).
'$pj_q'(17) :- write('?- 1 : 2 = 1 : X'), nl, '$pj_reset', catch(( ( 1 : 2 = 1 : X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(17).
'$pj_q'(18) :- write('?- X=p(\',\'(1,2)), write_canonical(X)'), nl, '$pj_reset', catch(( ( X=p(','(1,2)), write_canonical(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(18).
'$pj_q'(19) :- write('?- X=p(1,\',\'(1+2)), write_canonical(X)'), nl, '$pj_reset', catch(( ( X=p(1,','(1+2)), write_canonical(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(19).
'$pj_q'(20) :- write('?- X=p(1,(2+3)), write_canonical(X)'), nl, '$pj_reset', catch(( ( X=p(1,(2+3)), write_canonical(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(20).
'$pj_q'(21) :- write('?- X=p(1,\',\'(2,3)), write_canonical(X)'), nl, '$pj_reset', catch(( ( X=p(1,','(2,3)), write_canonical(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(21).
'$pj_q'(22) :- write('?- X=p(1,\',\'(2+3)), write_canonical(X)'), nl, '$pj_reset', catch(( ( X=p(1,','(2+3)), write_canonical(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(22).
'$pj_q'(23) :- write('?- X=p(1,2\',\'(3+4),5), write_canonical(X)'), nl, '$pj_reset', catch(( ( X=p(1,2','(3+4),5), write_canonical(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(23).
'$pj_main' :- between(1, 23, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
