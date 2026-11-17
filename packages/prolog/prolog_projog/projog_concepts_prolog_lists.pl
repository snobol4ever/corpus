% Determining if a term is a list.
% (Note: Projog provides a built-in is_list(X) predicate.)

list([]).
list([X|Xs]) :- list(Xs).

%TRUE list([a,b,c])
%FAIL list(abc)

% Determining is a term is contained in a list.
% (Note: Projog provides built-in member(X,Y) and memberchk(X,Y) predicates.)

list_member(X,[X|Xs]).
list_member(X,[Y|Ys]) :- list_member(X,Ys).

%?- list_member(X, [a,b,c])
% X=a
% X=b
% X=c
%NO

%TRUE_NO list_member(a, [a,b,c])
%TRUE_NO list_member(b, [a,b,c])
%TRUE_NO list_member(c, [a,b,c])
%FAIL list_member(d, [a,b,c])
%?- list_member(a,[a,a,a])
%YES
%YES
%YES
%NO

% Finding prefixes of a list.

prefix([],Ys).
prefix([X|Xs],[X|Ys]) :- prefix(Xs,Ys).

%?- prefix(X, [a,b,c,d,e,f])
% X=[]
% X=[a]
% X=[a,b]
% X=[a,b,c]
% X=[a,b,c,d]
% X=[a,b,c,d,e]
% X=[a,b,c,d,e,f]
%NO

%TRUE prefix([a],[a,b,c])
%TRUE prefix([a,b],[a,b,c])
%TRUE prefix([a,b,c],[a,b,c])
%FAIL prefix([x,a,b,c],[a,b,c])
%FAIL prefix([a,c],[a,b,c])
%FAIL prefix([b,c],[a,b,c])
%?- prefix([X,b],[a,b,c])
% X=a
%NO

% Finding suffixes of a list.

suffix(Xs,Xs).
suffix(Xs,[Y|Ys]) :- suffix(Xs,Ys).

%?- suffix(X, [a,b,c,d,e,f])
% X=[a,b,c,d,e,f]
% X=[b,c,d,e,f]
% X=[c,d,e,f]
% X=[d,e,f]
% X=[e,f]
% X=[f]
% X=[]
%NO

%TRUE_NO suffix([c],[a,b,c])
%TRUE_NO suffix([b,c],[a,b,c])
%TRUE_NO suffix([a,b,c],[a,b,c])
%FAIL suffix([x,a,b,c],[a,b,c])
%FAIL suffix([a,c],[a,b,c])
%FAIL suffix([a,b],[a,b,c])
%?- suffix([X,c],[a,b,c])
% X=b
%NO

% Determining sublists of lists.

sublist(Xs,Ys) :- prefix(Xs,Ys).
sublist(Xs,[Y|Ys]) :- sublist(Xs,Ys).

%TRUE_NO sublist([a,b,c],[a,b,c,d,e,f])
%TRUE_NO sublist([b,c,d],[a,b,c,d,e,f])
%TRUE_NO sublist([c,d,e],[a,b,c,d,e,f])
%FAIL sublist([b,c,e],[a,b,c,d,e,f])
%?- sublist([b,X,d],[a,b,c,Y,e,f])
% X=c
% Y=d
%NO

% Appending two lists.
% (Note: Projog provides a built-in append(X,Y,Z) predicate.)

append_to_list([],Ys,Ys).
append_to_list([X|Xs],Ys,[X|Zs]) :- append_to_list(Xs,Ys,Zs).

%TRUE append_to_list([a,b,c],[d,e,f],[a,b,c,d,e,f])
%FAIL append_to_list([a,b,c],[d,e,f],[a,b,c,d,e,g])
%FAIL append_to_list([a,b,c],[d,e,f],[a,b,c,d,e,f,g])
%?- append_to_list([a,X,c],[d,e,Y],[a,b,c,Z,e,f])
% X=b
% Y=f
% Z=d
%NO
%?- append_to_list([a,X,c],[Y,e(X,Y),f],[a,b,c,d,Z,f])
% X=b
% Y=d
% Z=e(b, d)
%NO
%?- append_to_list([a,b,c],[d,e,f],X)
% X=[a,b,c,d,e,f]
%?- append_to_list([a,b,c],X,[a,b,c,d,e,f])
% X=[d,e,f]
%?- append_to_list(X,[d,e,f],[a,b,c,d,e,f])
% X=[a,b,c]
%NO

% Reversing the order of terms in a list.
% (Note: Projog provides a built-in reverse(X,Y) predicate.)

reverse_list(Xs,Ys) :- reverse_list(Xs,[],Ys).
reverse_list([X|Xs],Acc,Ys) :- reverse_list(Xs,[X|Acc],Ys).
reverse_list([],Ys,Ys).

%TRUE reverse_list([],[])
%TRUE_NO reverse_list([a],[a])
%FAIL reverse_list([a],[b])
%TRUE_NO reverse_list([a,b],[b,a])
%FAIL reverse_list([a,b],[a,b])
%FAIL reverse_list([a,b],[a,a])
%FAIL reverse_list([a,b],[b,b])
%FAIL reverse_list([a,b],[a])
%FAIL reverse_list([a,b],[b])
%FAIL reverse_list([a,b],[c,b,a])
%TRUE_NO reverse_list([a,b,c,d,e,f],[f,e,d,c,b,a])
%FAIL reverse_list([a,b,c,d,e,f],[f,e,d,c,a,b])
%?- reverse_list([a,b,c,X,e,Y],[f,Z,d,c,b,a])
% X=d
% Y=f
% Z=e
%NO
%?- reverse_list([a,b,c,d,e,f],X)
% X=[f,e,d,c,b,a]
%NO
%?- reverse_list([a,b,c,[1,2,3]],X)
% X=[[1,2,3],c,b,a]
%NO

% Determine if elements are next to each other in a list.
adjacent(X,Y,Zs) :- append_to_list(As,[X,Y|Ys],Zs).

%TRUE_NO adjacent(a,b,[a,b,c,d,e,f])
%TRUE_NO adjacent(c,d,[a,b,c,d,e,f])
%TRUE_NO adjacent(e,f,[a,b,c,d,e,f])
%FAIL adjacent(a,c,[a,b,c,d,e,f])
%FAIL adjacent(b,z,[a,b,c,d,e,f])
%?- adjacent(b,X,[a,b,c,d,e,f])
% X=c
%NO
%?- adjacent(X,e,[a,b,c,d,e,f])
% X=d
%NO
%?- adjacent(X,Y,[a,b,c,d,e,f])
% X=a
% Y=b
% X=b
% Y=c
% X=c
% Y=d
% X=d
% Y=e
% X=e
% Y=f
%NO

% Find the last element of a list.
% (Note: Projog provides a built-in last(X,Y) predicate.)
last_element(X,Xs) :- append_to_list(As,[X],Xs).

%TRUE_NO last_element(f,[a,b,c,d,e,f])
%FAIL last_element(a,[a,b,c,d,e,f])
%FAIL last_element(b,[a,b,c,d,e,f])
%FAIL last_element(c,[a,b,c,d,e,f])
%FAIL last_element(d,[a,b,c,d,e,f])
%FAIL last_element(e,[a,b,c,d,e,f])
%TRUE_NO last_element(f,[a,b,c,d,e,f])
%FAIL last_element(z,[a,b,c,d,e,f])
%?- last_element(X,[a,b,c,d,e,f])
% X=f
%NO
%?- last_element(f,[a,b,c,d,e,X])
% X=f
%NO

% Get a count of the number of terms contained in a list.
% (Note: Projog provides a built-in length(X,Y) predicate.)

list_length([],0).
list_length([X|Xs],A) :- list_length(Xs,B), A is B+1.

%?- list_length([],X)
% X=0
%?- list_length([a],X)
% X=1
%NO
%?- list_length([a,b],X)
% X=2
%NO
%?- list_length([a,b,c,d,e,f],X)
% X=6
%NO
%TRUE_NO list_length([a,b,c,d,e,f],6)
%FAIL list_length([a,b,c,d,e,f],5)

% Delete elements from a list.
% (Note: Projog provides a built-in delete(X,Y,Z) predicate.)

delete_from_list([X|Xs],X,Ys) :- delete_from_list(Xs,X,Ys).
delete_from_list([X|Xs],Z,[X|Ys]) :- \+ X==Z, delete_from_list(Xs, Z, Ys).
delete_from_list([],X,[]).

%TRUE_NO delete_from_list([a,z,c],z,[a,c])
%?- delete_from_list([a,z,c],y,X)
% X=[a,z,c]
%NO
%TRUE_NO delete_from_list([z,a,z,z,b,c,z,d,e,f,z],z,[a,b,c,d,e,f])
%?- delete_from_list([z,a,z,z,b,c,z,d,e,f,z],X,[a,b,c,d,e,f])
% X=z
%NO

% Select elements from a list.
% (Note: Projog provides a built-in select(X,Y,Z) predicate.)

select_from_list(X,[X|Xs],Xs).
select_from_list(X,[Y|Ys],[Y|Zs]) :- select_from_list(X,Ys,Zs).

%TRUE_NO select_from_list(b,[a,b,c],[a,c])
%FAIL select_from_list(z,[a,b,c],[a,b,c])
%?- select_from_list(z,[z,a,z,z,b,c,z,d,e,f,z],X)
% X=[a,z,z,b,c,z,d,e,f,z]
% X=[z,a,z,b,c,z,d,e,f,z]
% X=[z,a,z,b,c,z,d,e,f,z]
% X=[z,a,z,z,b,c,d,e,f,z]
% X=[z,a,z,z,b,c,z,d,e,f]
%NO

% Checks terms in list are ordered.

ordered([]).
ordered([X]).
ordered([X,Y|Ys]) :- X @=< Y, ordered([Y|Ys]).

%TRUE_NO ordered([a,b,c,d,e,f])
%FAIL ordered([a,b,c,e,d,f])

% Find permuatations of terms in a list.

permutation(Xs,[Z|Zs]) :- select_from_list(Z,Xs,Ys), permutation(Ys,Zs).
permutation([],[]).

%?- permutation([a,b],X)
% X=[a,b]
% X=[b,a]
%NO

%?- permutation([a,b,c],X)
% X=[a,b,c]
% X=[a,c,b]
% X=[b,a,c]
% X=[b,c,a]
% X=[c,a,b]
% X=[c,b,a]
%NO

%TRUE_NO permutation([a,b,c,d,e,f],[f,e,d,c,b,a])

%?- permutation([q,w,e,r,t,y,u,i,o,p,a,s,d,f,g,h,j,k,l,z,x,c,v,b,n,m],[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,Z])
% Z=z
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- list_member(X, [a,b,c])'), nl, '$pj_reset', catch(( ( list_member(X, [a,b,c]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- list_member(a,[a,a,a])'), nl, '$pj_reset', catch(( ( list_member(a,[a,a,a]) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- prefix(X, [a,b,c,d,e,f])'), nl, '$pj_reset', catch(( ( prefix(X, [a,b,c,d,e,f]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- prefix([X,b],[a,b,c])'), nl, '$pj_reset', catch(( ( prefix([X,b],[a,b,c]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- suffix(X, [a,b,c,d,e,f])'), nl, '$pj_reset', catch(( ( suffix(X, [a,b,c,d,e,f]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- suffix([X,c],[a,b,c])'), nl, '$pj_reset', catch(( ( suffix([X,c],[a,b,c]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- sublist([b,X,d],[a,b,c,Y,e,f])'), nl, '$pj_reset', catch(( ( sublist([b,X,d],[a,b,c,Y,e,f]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- append_to_list([a,X,c],[d,e,Y],[a,b,c,Z,e,f])'), nl, '$pj_reset', catch(( ( append_to_list([a,X,c],[d,e,Y],[a,b,c,Z,e,f]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- append_to_list([a,X,c],[Y,e(X,Y),f],[a,b,c,d,Z,f])'), nl, '$pj_reset', catch(( ( append_to_list([a,X,c],[Y,e(X,Y),f],[a,b,c,d,Z,f]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- append_to_list([a,b,c],[d,e,f],X)'), nl, '$pj_reset', catch(( ( append_to_list([a,b,c],[d,e,f],X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- append_to_list([a,b,c],X,[a,b,c,d,e,f])'), nl, '$pj_reset', catch(( ( append_to_list([a,b,c],X,[a,b,c,d,e,f]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- append_to_list(X,[d,e,f],[a,b,c,d,e,f])'), nl, '$pj_reset', catch(( ( append_to_list(X,[d,e,f],[a,b,c,d,e,f]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- reverse_list([a,b,c,X,e,Y],[f,Z,d,c,b,a])'), nl, '$pj_reset', catch(( ( reverse_list([a,b,c,X,e,Y],[f,Z,d,c,b,a]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- reverse_list([a,b,c,d,e,f],X)'), nl, '$pj_reset', catch(( ( reverse_list([a,b,c,d,e,f],X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_q'(15) :- write('?- reverse_list([a,b,c,[1,2,3]],X)'), nl, '$pj_reset', catch(( ( reverse_list([a,b,c,[1,2,3]],X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(15).
'$pj_q'(16) :- write('?- adjacent(b,X,[a,b,c,d,e,f])'), nl, '$pj_reset', catch(( ( adjacent(b,X,[a,b,c,d,e,f]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(16).
'$pj_q'(17) :- write('?- adjacent(X,e,[a,b,c,d,e,f])'), nl, '$pj_reset', catch(( ( adjacent(X,e,[a,b,c,d,e,f]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(17).
'$pj_q'(18) :- write('?- adjacent(X,Y,[a,b,c,d,e,f])'), nl, '$pj_reset', catch(( ( adjacent(X,Y,[a,b,c,d,e,f]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(18).
'$pj_q'(19) :- write('?- last_element(X,[a,b,c,d,e,f])'), nl, '$pj_reset', catch(( ( last_element(X,[a,b,c,d,e,f]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(19).
'$pj_q'(20) :- write('?- last_element(f,[a,b,c,d,e,X])'), nl, '$pj_reset', catch(( ( last_element(f,[a,b,c,d,e,X]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(20).
'$pj_q'(21) :- write('?- list_length([],X)'), nl, '$pj_reset', catch(( ( list_length([],X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(21).
'$pj_q'(22) :- write('?- list_length([a],X)'), nl, '$pj_reset', catch(( ( list_length([a],X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(22).
'$pj_q'(23) :- write('?- list_length([a,b],X)'), nl, '$pj_reset', catch(( ( list_length([a,b],X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(23).
'$pj_q'(24) :- write('?- list_length([a,b,c,d,e,f],X)'), nl, '$pj_reset', catch(( ( list_length([a,b,c,d,e,f],X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(24).
'$pj_q'(25) :- write('?- delete_from_list([a,z,c],y,X)'), nl, '$pj_reset', catch(( ( delete_from_list([a,z,c],y,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(25).
'$pj_q'(26) :- write('?- delete_from_list([z,a,z,z,b,c,z,d,e,f,z],X,[a,b,c,d,e,f])'), nl, '$pj_reset', catch(( ( delete_from_list([z,a,z,z,b,c,z,d,e,f,z],X,[a,b,c,d,e,f]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(26).
'$pj_q'(27) :- write('?- select_from_list(z,[z,a,z,z,b,c,z,d,e,f,z],X)'), nl, '$pj_reset', catch(( ( select_from_list(z,[z,a,z,z,b,c,z,d,e,f,z],X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(27).
'$pj_q'(28) :- write('?- permutation([a,b],X)'), nl, '$pj_reset', catch(( ( permutation([a,b],X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(28).
'$pj_q'(29) :- write('?- permutation([a,b,c],X)'), nl, '$pj_reset', catch(( ( permutation([a,b,c],X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(29).
'$pj_q'(30) :- write('?- permutation([q,w,e,r,t,y,u,i,o,p,a,s,d,f,g,h,j,k,l,z,x,c,v,b,n,m],[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,Z])'), nl, '$pj_reset', catch(( ( permutation([q,w,e,r,t,y,u,i,o,p,a,s,d,f,g,h,j,k,l,z,x,c,v,b,n,m],[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,Z]) ), write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(30).
'$pj_main' :- between(1, 30, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
