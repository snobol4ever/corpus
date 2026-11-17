word2chars([],[]).
word2chars([Word|RestWords],[Chars|RestChars]) :-
 atom_chars(Word,Chars),
 word2chars(RestWords,RestChars).

test(X, Y) :- word2chars(X, Y).

%?- word2chars(X, [[d,o],[o,r,e],[m,a],[l,i,s],[u,r],[a,s],[p,o],[s,o],[p,i,r,u,s],[o,k,e,r],[a,l],[a,d,a,m],[i,k]])
% X=[do,ore,ma,lis,ur,as,po,so,pirus,oker,al,adam,ik]

% TODO Remove ! from query once compiled mode is smart eniugh to know that word2chars is not retryable.
% Currently interpreted mode does detect this but compiled mode doesn't - which is why without the ! there is a difference
% in behaviour when this test is run in the two different modes.
%?- test(X, [[d,o],[o,r,e],[m,a],[l,i,s],[u,r],[a,s],[p,o],[s,o],[p,i,r,u,s],[o,k,e,r],[a,l],[a,d,a,m],[i,k]]), !
% X=[do,ore,ma,lis,ur,as,po,so,pirus,oker,al,adam,ik]
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- word2chars(X, [[d,o],[o,r,e],[m,a],[l,i,s],[u,r],[a,s],[p,o],[s,o],[p,i,r,u,s],[o,k,e,r],[a,l],[a,d,a,m],[i,k]])'), nl, '$pj_reset', catch(( ( word2chars(X, [[d,o],[o,r,e],[m,a],[l,i,s],[u,r],[a,s],[p,o],[s,o],[p,i,r,u,s],[o,k,e,r],[a,l],[a,d,a,m],[i,k]]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- test(X, [[d,o],[o,r,e],[m,a],[l,i,s],[u,r],[a,s],[p,o],[s,o],[p,i,r,u,s],[o,k,e,r],[a,l],[a,d,a,m],[i,k]]), !'), nl, '$pj_reset', catch(( ( test(X, [[d,o],[o,r,e],[m,a],[l,i,s],[u,r],[a,s],[p,o],[s,o],[p,i,r,u,s],[o,k,e,r],[a,l],[a,d,a,m],[i,k]]), ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
