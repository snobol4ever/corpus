%- 1 projog_CompiledPredicateSourceGeneratorTest_CompiledPredicateSourceGeneratorTest
testNumericComparison(A,B,C) :- C=a, A>B.
testNumericComparison(A,B,C) :- C=b, A>=B.
testNumericComparison(A,B,C) :- C=c, A<B.
testNumericComparison(A,B,C) :- C=d, A=<B.
testNumericComparison(A,B,C) :- C=e, A=:=B.
testNumericComparison(A,B,C) :- C=f, A=\=B.
testNumericComparison(A,B,C) :- C=g, A-B>B+3.
testNumericComparison(A,B,C) :- C=h, A<7, 5=<B.

%?- testNumericComparison(5,5,X)
% X=b
% X=d
% X=e
% X=h

%?- testNumericComparison(6.5,6.5,X)
% X=b
% X=d
% X=e
% X=h

%?- testNumericComparison(5,5.0,X)
% X=b
% X=d
% X=e
% X=h

%?- testNumericComparison(42,41,X)
% X=a
% X=b
% X=f
%NO

%?- testNumericComparison(41.1,41,X)
% X=a
% X=b
% X=f
%NO

%?- testNumericComparison(7,8,X)
% X=c
% X=d
% X=f
%NO

%?- testNumericComparison(7,7.1,X)
% X=c
% X=d
% X=f
%NO

%?- testNumericComparison(17,7,X)
% X=a
% X=b
% X=f
%NO

%?- testNumericComparison(18,7,X)
% X=a
% X=b
% X=f
% X=g
%NO

% Note: the reason "g" matches is because "B+3" causes an overflow which results in a negative value.
%?- testNumericComparison(9223372036854775806, 9223372036854775807, X)
% X=c
% X=d
% X=f
% X=g
%NO

% Note: the reason "g" matches is because "B+3" causes an overflow which results in a negative value.
%?- testNumericComparison(9223372036854775807, 9223372036854775806, X)
% X=a
% X=b
% X=f
% X=g
%NO

% Note: the reason "g" matches is because "B+3" causes an overflow which results in a negative value.
%?- testNumericComparison(9223372036854775807, 9223372036854775807, X)
% X=b
% X=d
% X=e
% X=g
%NO

% Note: the reason "g" matches is because "B+3" causes an overflow which results in a negative value.
%?- testNumericComparison(9223372036854775806, 9223372036854775806, X)
% X=b
% X=d
% X=e
% X=g
%NO

%?- testNumericComparison(-9223372036854775808, -9223372036854775807, X)
% X=c
% X=d
% X=f
% X=g
%NO

%?- testNumericComparison(-9223372036854775807, -9223372036854775808, X)
% X=a
% X=b
% X=f
% X=g
%NO

%?- testNumericComparison(-9223372036854775808, -9223372036854775808, X)
% X=b
% X=d
% X=e
% X=g
%NO

%?- testNumericComparison(-9223372036854775807, -9223372036854775807, X)
% X=b
% X=d
% X=e
% X=g
%NO

%TRUE_NO testNumericComparison(6,6,d)

%FAIL testNumericComparison(17,7,g)
%TRUE_NO testNumericComparison(18,7,g)

%TRUE testNumericComparison(6,5,h)
%TRUE testNumericComparison(6,6,h)
%FAIL testNumericComparison(7,6,h)
%FAIL testNumericComparison(6,4,h)

testTailRecursiveAppend([], Ys, Ys).
testTailRecursiveAppend([X | Xs], Ys, [X | Zs]) :- testTailRecursiveAppend(Xs, Ys, Zs).

%?- testTailRecursiveAppend(A,B,[a,b,c])
% A=[]
% B=[a,b,c]
% A=[a]
% B=[b,c]
% A=[a,b]
% B=[c]
% A=[a,b,c]
% B=[]
%NO

%?- testTailRecursiveAppend([a,b,c,d,e],[f,g,h],X)
% X=[a,b,c,d,e,f,g,h]

%?- testTailRecursiveAppend([],[a,b,c,d,e,f,g,h],X)
% X=[a,b,c,d,e,f,g,h]

%?- testTailRecursiveAppend([a,b,c,d,e,f,g,h],[],X)
% X=[a,b,c,d,e,f,g,h]

%TRUE testTailRecursiveAppend([a,b,c,d,e],[f,g,h],[a,b,c,d,e,f,g,h])
%FAIL testTailRecursiveAppend([a,b,c,d,e],[f,g,h],[a,b,c,d,e,f,g,x])
%FAIL testTailRecursiveAppend([a,b,c,d,e],[f,g,h],[a,b,c,d,e,f,g,h,i])
%FAIL testTailRecursiveAppend([a,b,c,d,e],[f,g,h],[a,b,c,d,e,f,g])

testTailRecursiveRepeat(N). 
testTailRecursiveRepeat(N) :- N > 1, N1 is N-1, testTailRecursiveRepeat(N1).

%?- testTailRecursiveRepeat(3)
%YES
%YES
%YES
%NO

singleFactSingleArgument(42).

singleFactMultipleArguments(2,4,16).

multipleFactsSingleArgument(qwerty).
multipleFactsSingleArgument([a,b,c]).
multipleFactsSingleArgument(fghj).
multipleFactsSingleArgument([a,s,d,f]).
multipleFactsSingleArgument([x,y,z]).

multipleFactsMultipleArguments([q,w,e,r,t,y],[u,i,o,p]).
multipleFactsMultipleArguments([a,s,d,f],[g,h,j,k,l]).
multipleFactsMultipleArguments([z,x,c],[v,b,n,m]).

singleClauseAlwaysTrue(_).

testConjunction(X,Y,Z) :-
 multipleFactsMultipleArguments(X, Y),
 testTailRecursiveAppend(X, Y, A),
 singleFactMultipleArguments(B1, B2, B3),
 testTailRecursiveAppend([B1,B2,B3], A, C),
 multipleFactsSingleArgument(D),
 is_list(D),
 testTailRecursiveAppend(C, D, E),
 length(E,Length),
 singleClauseAlwaysTrue(Z),
 singleFactSingleArgument(F),
 G is (F*2)+Length,
 true,
 testTailRecursiveAppend(E, [G,Length], Z),
 H is F-39,
 testTailRecursiveRepeat(H).

% TODO test with trace enabled

%?- testConjunction(X,Y,Z)
% X=[q,w,e,r,t,y]
% Y=[u,i,o,p]
% Z=[2,4,16,q,w,e,r,t,y,u,i,o,p,a,b,c,100,16]
% X=[q,w,e,r,t,y]
% Y=[u,i,o,p]
% Z=[2,4,16,q,w,e,r,t,y,u,i,o,p,a,b,c,100,16]
% X=[q,w,e,r,t,y]
% Y=[u,i,o,p]
% Z=[2,4,16,q,w,e,r,t,y,u,i,o,p,a,b,c,100,16]
% X=[q,w,e,r,t,y]
% Y=[u,i,o,p]
% Z=[2,4,16,q,w,e,r,t,y,u,i,o,p,a,s,d,f,101,17]
% X=[q,w,e,r,t,y]
% Y=[u,i,o,p]
% Z=[2,4,16,q,w,e,r,t,y,u,i,o,p,a,s,d,f,101,17]
% X=[q,w,e,r,t,y]
% Y=[u,i,o,p]
% Z=[2,4,16,q,w,e,r,t,y,u,i,o,p,a,s,d,f,101,17]
% X=[q,w,e,r,t,y]
% Y=[u,i,o,p]
% Z=[2,4,16,q,w,e,r,t,y,u,i,o,p,x,y,z,100,16]
% X=[q,w,e,r,t,y]
% Y=[u,i,o,p]
% Z=[2,4,16,q,w,e,r,t,y,u,i,o,p,x,y,z,100,16]
% X=[q,w,e,r,t,y]
% Y=[u,i,o,p]
% Z=[2,4,16,q,w,e,r,t,y,u,i,o,p,x,y,z,100,16]
% X=[a,s,d,f]
% Y=[g,h,j,k,l]
% Z=[2,4,16,a,s,d,f,g,h,j,k,l,a,b,c,99,15]
% X=[a,s,d,f]
% Y=[g,h,j,k,l]
% Z=[2,4,16,a,s,d,f,g,h,j,k,l,a,b,c,99,15]
% X=[a,s,d,f]
% Y=[g,h,j,k,l]
% Z=[2,4,16,a,s,d,f,g,h,j,k,l,a,b,c,99,15]
% X=[a,s,d,f]
% Y=[g,h,j,k,l]
% Z=[2,4,16,a,s,d,f,g,h,j,k,l,a,s,d,f,100,16]
% X=[a,s,d,f]
% Y=[g,h,j,k,l]
% Z=[2,4,16,a,s,d,f,g,h,j,k,l,a,s,d,f,100,16]
% X=[a,s,d,f]
% Y=[g,h,j,k,l]
% Z=[2,4,16,a,s,d,f,g,h,j,k,l,a,s,d,f,100,16]
% X=[a,s,d,f]
% Y=[g,h,j,k,l]
% Z=[2,4,16,a,s,d,f,g,h,j,k,l,x,y,z,99,15]
% X=[a,s,d,f]
% Y=[g,h,j,k,l]
% Z=[2,4,16,a,s,d,f,g,h,j,k,l,x,y,z,99,15]
% X=[a,s,d,f]
% Y=[g,h,j,k,l]
% Z=[2,4,16,a,s,d,f,g,h,j,k,l,x,y,z,99,15]
% X=[z,x,c]
% Y=[v,b,n,m]
% Z=[2,4,16,z,x,c,v,b,n,m,a,b,c,97,13]
% X=[z,x,c]
% Y=[v,b,n,m]
% Z=[2,4,16,z,x,c,v,b,n,m,a,b,c,97,13]
% X=[z,x,c]
% Y=[v,b,n,m]
% Z=[2,4,16,z,x,c,v,b,n,m,a,b,c,97,13]
% X=[z,x,c]
% Y=[v,b,n,m]
% Z=[2,4,16,z,x,c,v,b,n,m,a,s,d,f,98,14]
% X=[z,x,c]
% Y=[v,b,n,m]
% Z=[2,4,16,z,x,c,v,b,n,m,a,s,d,f,98,14]
% X=[z,x,c]
% Y=[v,b,n,m]
% Z=[2,4,16,z,x,c,v,b,n,m,a,s,d,f,98,14]
% X=[z,x,c]
% Y=[v,b,n,m]
% Z=[2,4,16,z,x,c,v,b,n,m,x,y,z,97,13]
% X=[z,x,c]
% Y=[v,b,n,m]
% Z=[2,4,16,z,x,c,v,b,n,m,x,y,z,97,13]
% X=[z,x,c]
% Y=[v,b,n,m]
% Z=[2,4,16,z,x,c,v,b,n,m,x,y,z,97,13]
%NO

testOnce(A,B,C,D,E,F,G) :- 
 once(true),
 once(multipleFactsMultipleArguments(A,B)),
 once(singleFactSingleArgument(X)),
 once(repeat(3)),
 once(length(C,D)),
 once(E=X),
 once(testTailRecursiveAppend(A,B,F)),
 once(G).

%?- testOnce(A,B,C,D,E,F,true)
% A=[q,w,e,r,t,y]
% B=[u,i,o,p]
% C=[]
% D=0
% E=42
% F=[q,w,e,r,t,y,u,i,o,p]

%?- testOnce(A,B,C,D,E,F,E<43)
% A=[q,w,e,r,t,y]
% B=[u,i,o,p]
% C=[]
% D=0
% E=42
% F=[q,w,e,r,t,y,u,i,o,p]

%?- testOnce([a,s,A,f],B,[a,b,c],D,42,F,true)
% A=d
% B=[g,h,j,k,l]
% D=3
% F=[a,s,d,f,g,h,j,k,l]

%?- testOnce(A,B,C,3,E,F,true)
% A=[q,w,e,r,t,y]
% B=[u,i,o,p]
% C=[E0,E1,E2]
% E=42
% F=[q,w,e,r,t,y,u,i,o,p]

%FAIL testOnce(A,B,C,D,41,F,true)
%FAIL testOnce(A,B,C,D,E,F,fail)
%FAIL testOnce(A,B,C,D,E,F,E>43)

testWrite(X) :- writeln('hello, "world"!'), write('hello, "'), write(X), write('"!').

%?- testWrite('everyone')
%OUTPUT
%hello, "world"!
%hello, "everyone"!
%OUTPUT
%YES

testNot(X) :- X=1, \+ true.
testNot(X) :- X=2, \+ fail.
testNot(X) :- atom(X), \+ X.
testNot(X) :- X=4, \+ repeat(X).
testNot(X) :- X=5, \+ number(X).
testNot(X) :- X=6, \+ atom(X).
testNot(X) :- X=7, \+ [A,B,C,D,E]=[1,2,3,4,5].
testNot(X) :- C=3, D=5, \+ [A,B,C,9,D,E]=[1,2,3,4,5,6], A=42, B=7, E=51, X is A+B+C+D+E.

%?- testNot(X)
% X=2
% X=6
% X=108

%TRUE_NO testNot(fail)
%FAIL testNot(true)

% TODO expand to b test unify consequent arguments

testAnonymous(p(X,Y),_,Y) :- singleFactSingleArgument(X).

%?- testAnonymous(X,32,12)
% X=p(42, 12)

% TODO review cut examples (including where cut makes multi-clause predicate non-retryable)
testCutSingleRuleMultipleResults :- repeat(5), !, repeat(3).

%?- testCutSingleRuleMultipleResults
%YES
%YES
%YES
%NO

testCutSingleRuleSingleResult :- 1<2, !, 2>1.

%TRUE testCutSingleRuleSingleResult

testCutManyRules(X,Y,RuleNo) :- RuleNo=1, X>5, !, Y<7, repeat(3).
testCutManyRules(X,Y,RuleNo) :- RuleNo=2, X<3, !, Y<7, repeat(7), !, repeat(3), !.
testCutManyRules(X,Y,RuleNo) :- RuleNo=3.
testCutManyRules(X,Y,RuleNo) :- RuleNo=4, X>3, !, Y<7, repeat(3), !.
testCutManyRules(X,Y,RuleNo) :- RuleNo=5, repeat(2).

%?- testCutManyRules(6, 6, RuleNo)
% RuleNo=1
% RuleNo=1
% RuleNo=1
%NO

%FAIL testCutManyRules(6, 7, RuleNo)

%?- testCutManyRules(2, 6, RuleNo)
% RuleNo=2

%FAIL testCutManyRules(2, 7, RuleNo)

%?- testCutManyRules(4, 6, RuleNo)
% RuleNo=3
% RuleNo=4

%?- testCutManyRules(4, 7, RuleNo)
% RuleNo=3
%NO

%?- testCutManyRules(3, 6, RuleNo)
% RuleNo=3
% RuleNo=5
% RuleNo=5

testCalculatables(A,B,C) :- A is 1000, Z is 500*2, A is Z.
testCalculatables(A,B,C) :- Y is 1.5, A is Y.
testCalculatables(A,B,C) :- A is B+C.
testCalculatables(A,B,C) :- A is B-C.
testCalculatables(A,B,C) :- A is B*C.
testCalculatables(A,B,C) :- A is B//C.
testCalculatables(A,B,C) :- A is (B//C)+B*C-2.
testCalculatables(A,B,C) :- A=Z, Z is (B//C)+B*C-(1.25+0.25+1).
testCalculatables(A,B,C) :- Z is B+C, A is Z.

%TRUE notrace
%?- testCalculatables(X, 3, 7)
% X=1000
% X=1.5
% X=10
% X=-4
% X=21
% X=0
% X=19
% X=18.5
% X=10

%TRUE trace
%?- testCalculatables(X, 3, 7)
%OUTPUT
%[1] CALL testCalculatables(X, 3, 7)
%[1] EXIT testCalculatables(1000, 3, 7)
%
%OUTPUT
% X=1000
%OUTPUT
%[1] REDO testCalculatables(1000, 3, 7)
%[1] EXIT testCalculatables(1.5, 3, 7)
%
%OUTPUT
% X=1.5
%OUTPUT
%[1] REDO testCalculatables(1.5, 3, 7)
%[1] EXIT testCalculatables(10, 3, 7)
%
%OUTPUT
% X=10
%OUTPUT
%[1] REDO testCalculatables(10, 3, 7)
%[1] EXIT testCalculatables(-4, 3, 7)
%
%OUTPUT
% X=-4
%OUTPUT
%[1] REDO testCalculatables(-4, 3, 7)
%[1] EXIT testCalculatables(21, 3, 7)
%
%OUTPUT
% X=21
%OUTPUT
%[1] REDO testCalculatables(21, 3, 7)
%[1] EXIT testCalculatables(0, 3, 7)
%
%OUTPUT
% X=0
%OUTPUT
%[1] REDO testCalculatables(0, 3, 7)
%[1] EXIT testCalculatables(19, 3, 7)
%
%OUTPUT
% X=19
%OUTPUT
%[1] REDO testCalculatables(19, 3, 7)
%[1] EXIT testCalculatables(18.5, 3, 7)
%
%OUTPUT
% X=18.5
%OUTPUT
%[1] REDO testCalculatables(18.5, 3, 7)
%[1] EXIT testCalculatables(10, 3, 7)
%
%OUTPUT
% X=10

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- testNumericComparison(5,5,X)'), nl, '$pj_reset', catch(( ( testNumericComparison(5,5,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- testNumericComparison(6.5,6.5,X)'), nl, '$pj_reset', catch(( ( testNumericComparison(6.5,6.5,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- testNumericComparison(5,5.0,X)'), nl, '$pj_reset', catch(( ( testNumericComparison(5,5.0,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- testNumericComparison(42,41,X)'), nl, '$pj_reset', catch(( ( testNumericComparison(42,41,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- testNumericComparison(41.1,41,X)'), nl, '$pj_reset', catch(( ( testNumericComparison(41.1,41,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- testNumericComparison(7,8,X)'), nl, '$pj_reset', catch(( ( testNumericComparison(7,8,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- testNumericComparison(7,7.1,X)'), nl, '$pj_reset', catch(( ( testNumericComparison(7,7.1,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- testNumericComparison(17,7,X)'), nl, '$pj_reset', catch(( ( testNumericComparison(17,7,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- testNumericComparison(18,7,X)'), nl, '$pj_reset', catch(( ( testNumericComparison(18,7,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- testNumericComparison(9223372036854775806, 9223372036854775807, X)'), nl, '$pj_reset', catch(( ( testNumericComparison(9223372036854775806, 9223372036854775807, X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- testNumericComparison(9223372036854775807, 9223372036854775806, X)'), nl, '$pj_reset', catch(( ( testNumericComparison(9223372036854775807, 9223372036854775806, X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- testNumericComparison(9223372036854775807, 9223372036854775807, X)'), nl, '$pj_reset', catch(( ( testNumericComparison(9223372036854775807, 9223372036854775807, X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- testNumericComparison(9223372036854775806, 9223372036854775806, X)'), nl, '$pj_reset', catch(( ( testNumericComparison(9223372036854775806, 9223372036854775806, X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- testNumericComparison(-9223372036854775808, -9223372036854775807, X)'), nl, '$pj_reset', catch(( ( testNumericComparison(-9223372036854775808, -9223372036854775807, X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_q'(15) :- write('?- testNumericComparison(-9223372036854775807, -9223372036854775808, X)'), nl, '$pj_reset', catch(( ( testNumericComparison(-9223372036854775807, -9223372036854775808, X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(15).
'$pj_q'(16) :- write('?- testNumericComparison(-9223372036854775808, -9223372036854775808, X)'), nl, '$pj_reset', catch(( ( testNumericComparison(-9223372036854775808, -9223372036854775808, X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(16).
'$pj_q'(17) :- write('?- testNumericComparison(-9223372036854775807, -9223372036854775807, X)'), nl, '$pj_reset', catch(( ( testNumericComparison(-9223372036854775807, -9223372036854775807, X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(17).
'$pj_q'(18) :- write('?- testTailRecursiveAppend(A,B,[a,b,c])'), nl, '$pj_reset', catch(( ( testTailRecursiveAppend(A,B,[a,b,c]) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(18).
'$pj_q'(19) :- write('?- testTailRecursiveAppend([a,b,c,d,e],[f,g,h],X)'), nl, '$pj_reset', catch(( ( testTailRecursiveAppend([a,b,c,d,e],[f,g,h],X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(19).
'$pj_q'(20) :- write('?- testTailRecursiveAppend([],[a,b,c,d,e,f,g,h],X)'), nl, '$pj_reset', catch(( ( testTailRecursiveAppend([],[a,b,c,d,e,f,g,h],X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(20).
'$pj_q'(21) :- write('?- testTailRecursiveAppend([a,b,c,d,e,f,g,h],[],X)'), nl, '$pj_reset', catch(( ( testTailRecursiveAppend([a,b,c,d,e,f,g,h],[],X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(21).
'$pj_q'(22) :- write('?- testTailRecursiveRepeat(3)'), nl, '$pj_reset', catch(( ( testTailRecursiveRepeat(3) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(22).
'$pj_q'(23) :- write('?- testConjunction(X,Y,Z)'), nl, '$pj_reset', catch(( ( testConjunction(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(23).
'$pj_q'(24) :- write('?- testOnce(A,B,C,D,E,F,true)'), nl, '$pj_reset', catch(( ( testOnce(A,B,C,D,E,F,true) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write('D = '), writeq(D), nl, write('E = '), writeq(E), nl, write('F = '), writeq(F), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(24).
'$pj_q'(25) :- write('?- testOnce(A,B,C,D,E,F,E<43)'), nl, '$pj_reset', catch(( ( testOnce(A,B,C,D,E,F,E<43) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write('D = '), writeq(D), nl, write('E = '), writeq(E), nl, write('F = '), writeq(F), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(25).
'$pj_q'(26) :- write('?- testOnce([a,s,A,f],B,[a,b,c],D,42,F,true)'), nl, '$pj_reset', catch(( ( testOnce([a,s,A,f],B,[a,b,c],D,42,F,true) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('D = '), writeq(D), nl, write('F = '), writeq(F), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(26).
'$pj_q'(27) :- write('?- testOnce(A,B,C,3,E,F,true)'), nl, '$pj_reset', catch(( ( testOnce(A,B,C,3,E,F,true) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write('E = '), writeq(E), nl, write('F = '), writeq(F), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(27).
'$pj_q'(28) :- write('?- testWrite(\'everyone\')'), nl, '$pj_reset', catch(( ( testWrite('everyone') ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(28).
'$pj_q'(29) :- write('?- testNot(X)'), nl, '$pj_reset', catch(( ( testNot(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(29).
'$pj_q'(30) :- write('?- testAnonymous(X,32,12)'), nl, '$pj_reset', catch(( ( testAnonymous(X,32,12) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(30).
'$pj_q'(31) :- write('?- testCutSingleRuleMultipleResults'), nl, '$pj_reset', catch(( ( testCutSingleRuleMultipleResults ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(31).
'$pj_q'(32) :- write('?- testCutManyRules(6, 6, RuleNo)'), nl, '$pj_reset', catch(( ( testCutManyRules(6, 6, RuleNo) ), write('RuleNo = '), writeq(RuleNo), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(32).
'$pj_q'(33) :- write('?- testCutManyRules(2, 6, RuleNo)'), nl, '$pj_reset', catch(( ( testCutManyRules(2, 6, RuleNo) ), write('RuleNo = '), writeq(RuleNo), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(33).
'$pj_q'(34) :- write('?- testCutManyRules(4, 6, RuleNo)'), nl, '$pj_reset', catch(( ( testCutManyRules(4, 6, RuleNo) ), write('RuleNo = '), writeq(RuleNo), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(34).
'$pj_q'(35) :- write('?- testCutManyRules(4, 7, RuleNo)'), nl, '$pj_reset', catch(( ( testCutManyRules(4, 7, RuleNo) ), write('RuleNo = '), writeq(RuleNo), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(35).
'$pj_q'(36) :- write('?- testCutManyRules(3, 6, RuleNo)'), nl, '$pj_reset', catch(( ( testCutManyRules(3, 6, RuleNo) ), write('RuleNo = '), writeq(RuleNo), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(36).
'$pj_q'(37) :- write('?- testCalculatables(X, 3, 7)'), nl, '$pj_reset', catch(( ( testCalculatables(X, 3, 7) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(37).
'$pj_q'(38) :- write('?- testCalculatables(X, 3, 7)'), nl, '$pj_reset', catch(( ( testCalculatables(X, 3, 7) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(38).
'$pj_main' :- between(1, 38, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%----------------------------------------- 2 projog_applications_cryptarithmetic
send_more_money([S,E,N,D],[M,O,R,E],[M,O,N,E,Y]) :-
  Vars = [S,E,N,D,M,O,R,Y],
  Vars ins 0..9,
  S #\= 0,
  M #\= 0,
  all_different(Vars),
  1000*S + 100*E + 10*N + D +
  1000*M + 100*O + 10*R + E #=
  10000*M + 1000*O + 100*N + 10*E + Y,
  label(Vars).

%?- send_more_money(Send,More,Money)
% Money = [1,0,6,5,2]
% More = [1,0,8,5]
% Send = [9,5,6,7]
%NO

donald_gerald_robert([D,O,N,A,L,D],[G,E,R,A,L,D],[R,O,B,E,R,T]) :-
  Vars = [D,O,N,A,L,G,E,R,B,T],
  Vars ins 0..9,
  all_different(Vars),
  100000*D + 10000*O + 1000*N + 100*A + 10*L + D +
  100000*G + 10000*E + 1000*R + 100*A + 10*L + D #=
  100000*R + 10000*O + 1000*B + 100*E + 10*R + T,
  label(Vars).

%?- donald_gerald_robert(Donald,Gerald,Robert)
% Donald = [5,2,6,4,8,5]
% Gerald = [1,9,7,4,8,5]
% Robert = [7,2,3,9,7,0]
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- send_more_money(Send,More,Money)'), nl, '$pj_reset', catch(( ( send_more_money(Send,More,Money) ), write('Send = '), writeq(Send), nl, write('More = '), writeq(More), nl, write('Money = '), writeq(Money), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- donald_gerald_robert(Donald,Gerald,Robert)'), nl, '$pj_reset', catch(( ( donald_gerald_robert(Donald,Gerald,Robert) ), write('Donald = '), writeq(Donald), nl, write('Gerald = '), writeq(Gerald), nl, write('Robert = '), writeq(Robert), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%-------------------------------------------- 3 projog_applications_eight_queens
queens(Ys) :-
  Ys = [_,_,_,_,_,_,_,_],
  Ys ins 1..8,
  all_different(Ys),
  safe(Ys),
  label(Ys).

safe([]).
safe([Y|Ys]) :-
  no_attack(Y,Ys,1),
  safe(Ys).

no_attack(_,[],_).
no_attack(Y1,[Y2|Ys],D) :-
  D #\= Y1-Y2,
  D #\= Y2-Y1,
  D1 is D+1,
  no_attack(Y1,Ys,D1).

%?- queens(X)
% X = [1,5,8,6,3,7,2,4]
% X = [1,6,8,3,7,4,2,5]
% X = [1,7,4,6,8,2,5,3]
% X = [1,7,5,8,2,4,6,3]
% X = [2,4,6,8,3,1,7,5]
% X = [2,5,7,4,1,8,6,3]
% X = [2,5,7,1,3,8,6,4]
% X = [2,6,1,7,4,8,3,5]
% X = [2,6,8,3,1,4,7,5]
% X = [2,7,3,6,8,5,1,4]
% X = [2,7,5,8,1,4,6,3]
% X = [2,8,6,1,3,5,7,4]
% X = [3,5,2,8,6,4,7,1]
% X = [3,5,2,8,1,7,4,6]
% X = [3,6,2,5,8,1,7,4]
% X = [3,6,2,7,5,1,8,4]
% X = [3,6,2,7,1,4,8,5]
% X = [3,7,2,8,5,1,4,6]
% X = [3,7,2,8,6,4,1,5]
% X = [3,6,4,2,8,5,7,1]
% X = [3,6,4,1,8,5,7,2]
% X = [3,8,4,7,1,6,2,5]
% X = [3,1,7,5,8,2,4,6]
% X = [3,5,7,1,4,2,8,6]
% X = [3,6,8,1,4,7,5,2]
% X = [3,6,8,1,5,7,2,4]
% X = [3,6,8,2,4,1,7,5]
% X = [3,5,8,4,1,7,2,6]
% X = [4,7,5,2,6,1,3,8]
% X = [4,6,8,2,7,1,3,5]
% X = [4,7,5,3,1,6,8,2]
% X = [4,8,5,3,1,7,2,6]
% X = [4,6,8,3,1,7,5,2]
% X = [4,2,7,3,6,8,1,5]
% X = [4,2,7,3,6,8,5,1]
% X = [4,8,1,3,6,2,7,5]
% X = [4,2,7,5,1,8,6,3]
% X = [4,6,1,5,2,8,3,7]
% X = [4,2,8,5,7,1,3,6]
% X = [4,8,1,5,7,2,6,3]
% X = [4,2,8,6,1,3,5,7]
% X = [4,7,1,8,5,2,6,3]
% X = [4,7,3,8,2,5,1,6]
% X = [4,1,5,8,2,7,3,6]
% X = [4,2,5,8,6,1,3,7]
% X = [4,1,5,8,6,3,7,2]
% X = [5,8,4,1,3,6,2,7]
% X = [5,7,4,1,3,8,6,2]
% X = [5,8,4,1,7,2,6,3]
% X = [5,2,6,1,7,4,8,3]
% X = [5,2,8,1,4,7,3,6]
% X = [5,7,1,3,8,6,4,2]
% X = [5,1,8,4,2,7,3,6]
% X = [5,7,1,4,2,8,6,3]
% X = [5,3,8,4,7,1,6,2]
% X = [5,7,2,4,8,1,3,6]
% X = [5,1,8,6,3,7,2,4]
% X = [5,7,2,6,3,1,4,8]
% X = [5,7,2,6,3,1,8,4]
% X = [5,3,1,6,8,2,4,7]
% X = [5,1,4,6,8,2,7,3]
% X = [5,2,4,6,8,3,1,7]
% X = [5,3,1,7,2,8,6,4]
% X = [5,2,4,7,3,8,6,1]
% X = [6,3,1,8,4,2,7,5]
% X = [6,3,1,7,5,8,2,4]
% X = [6,3,1,8,5,2,4,7]
% X = [6,4,1,5,8,2,7,3]
% X = [6,8,2,4,1,7,5,3]
% X = [6,4,2,8,5,7,1,3]
% X = [6,1,5,2,8,3,7,4]
% X = [6,3,5,8,1,4,2,7]
% X = [6,3,5,7,1,4,2,8]
% X = [6,2,7,1,4,8,5,3]
% X = [6,2,7,1,3,5,8,4]
% X = [6,3,7,2,8,5,1,4]
% X = [6,3,7,2,4,8,1,5]
% X = [6,3,7,4,1,8,2,5]
% X = [6,4,7,1,8,2,5,3]
% X = [6,4,7,1,3,5,2,8]
% X = [7,1,3,8,6,4,2,5]
% X = [7,2,4,1,8,5,3,6]
% X = [7,2,6,3,1,4,8,5]
% X = [7,3,1,6,8,5,2,4]
% X = [7,3,8,2,5,1,6,4]
% X = [7,4,2,8,6,1,3,5]
% X = [7,4,2,5,8,1,3,6]
% X = [7,5,3,1,6,8,2,4]
% X = [8,2,4,1,7,5,3,6]
% X = [8,2,5,3,1,7,4,6]
% X = [8,3,1,6,2,5,7,4]
% X = [8,4,1,3,6,2,7,5]
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- queens(X)'), nl, '$pj_reset', catch(( ( queens(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------- 4 projog_applications_full_adder
full_adder(Input1,Input2,Input3,Output1,Output2) :-
  Output1 #<==> (Input1 #\ Input2) #\ Input3,
  Output2 #<==> (Input1 #/\ Input2) #\/ (Input3 #/\ (Input1 #\ Input2)).

%?- full_adder(1,1,1,Output1,Output2)
% Output1 = 1
% Output2 = 1

%?- full_adder(1,1,0,Output1,Output2)
% Output1 = 0
% Output2 = 1

%?- full_adder(1,0,1,Output1,Output2)
% Output1 = 0
% Output2 = 1

%?- full_adder(0,1,1,Output1,Output2)
% Output1 = 0
% Output2 = 1

%?- full_adder(1,0,0,Output1,Output2)
% Output1 = 1
% Output2 = 0

%?- full_adder(0,1,0,Output1,Output2)
% Output1 = 1
% Output2 = 0

%?- full_adder(0,0,1,Output1,Output2)
% Output1 = 1
% Output2 = 0

%?- full_adder(0,0,0,Output1,Output2)
% Output1 = 0
% Output2 = 0

%?- full_adder(0,Input2,Input3,Output1,1)
% Input2 = 1
% Input3 = 1
% Output1 = 0

%?- full_adder(Input1,0,Input3,Output1,1)
% Input1 = 1
% Input3 = 1
% Output1 = 0

%?- full_adder(Input1,Input2,0,Output1,1)
% Input1 = 1
% Input2 = 1
% Output1 = 0

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- full_adder(1,1,1,Output1,Output2)'), nl, '$pj_reset', catch(( ( full_adder(1,1,1,Output1,Output2) ), write('Output1 = '), writeq(Output1), nl, write('Output2 = '), writeq(Output2), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- full_adder(1,1,0,Output1,Output2)'), nl, '$pj_reset', catch(( ( full_adder(1,1,0,Output1,Output2) ), write('Output1 = '), writeq(Output1), nl, write('Output2 = '), writeq(Output2), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- full_adder(1,0,1,Output1,Output2)'), nl, '$pj_reset', catch(( ( full_adder(1,0,1,Output1,Output2) ), write('Output1 = '), writeq(Output1), nl, write('Output2 = '), writeq(Output2), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- full_adder(0,1,1,Output1,Output2)'), nl, '$pj_reset', catch(( ( full_adder(0,1,1,Output1,Output2) ), write('Output1 = '), writeq(Output1), nl, write('Output2 = '), writeq(Output2), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- full_adder(1,0,0,Output1,Output2)'), nl, '$pj_reset', catch(( ( full_adder(1,0,0,Output1,Output2) ), write('Output1 = '), writeq(Output1), nl, write('Output2 = '), writeq(Output2), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- full_adder(0,1,0,Output1,Output2)'), nl, '$pj_reset', catch(( ( full_adder(0,1,0,Output1,Output2) ), write('Output1 = '), writeq(Output1), nl, write('Output2 = '), writeq(Output2), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- full_adder(0,0,1,Output1,Output2)'), nl, '$pj_reset', catch(( ( full_adder(0,0,1,Output1,Output2) ), write('Output1 = '), writeq(Output1), nl, write('Output2 = '), writeq(Output2), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- full_adder(0,0,0,Output1,Output2)'), nl, '$pj_reset', catch(( ( full_adder(0,0,0,Output1,Output2) ), write('Output1 = '), writeq(Output1), nl, write('Output2 = '), writeq(Output2), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- full_adder(0,Input2,Input3,Output1,1)'), nl, '$pj_reset', catch(( ( full_adder(0,Input2,Input3,Output1,1) ), write('Input2 = '), writeq(Input2), nl, write('Input3 = '), writeq(Input3), nl, write('Output1 = '), writeq(Output1), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- full_adder(Input1,0,Input3,Output1,1)'), nl, '$pj_reset', catch(( ( full_adder(Input1,0,Input3,Output1,1) ), write('Input1 = '), writeq(Input1), nl, write('Input3 = '), writeq(Input3), nl, write('Output1 = '), writeq(Output1), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- full_adder(Input1,Input2,0,Output1,1)'), nl, '$pj_reset', catch(( ( full_adder(Input1,Input2,0,Output1,1) ), write('Input1 = '), writeq(Input1), nl, write('Input2 = '), writeq(Input2), nl, write('Output1 = '), writeq(Output1), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_main' :- between(1, 11, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%-------------------------------- 5 projog_applications_multiple_choice_question
solve(X) :-
  X = [A1,A2,A3,A4,A5,A6],
  X ins 0..1,
  A1 #<==> 5 #= A2+A3+A4+A5+A6,    % All of the below
  A2 #<==> 0 #= A3+A4+A5+A6,       % None of the below
  A3 #<==> 2 #= A1+A2,             % All of the above
  A4 #<==> 1 #= A1+A2+A3,          % One of the above
  A5 #<==> 0 #= A1+A2+A3+A4,       % None of the above
  A6 #<==> 0 #= A1+A2+A3+A4+A5,    % None of the above
  label(X).

%?- solve(X)
% X = [0,0,0,0,1,0]
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- solve(X)'), nl, '$pj_reset', catch(( ( solve(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%----------------------------------------- 6 projog_applications_towers_of_hanoi
hanoi(N) :- move(N,left,centre,right).

move(0,_,_,_) :- !.
move(N,A,B,C) :-
  M is N-1,
  move(M,A,C,B), inform(A,B), move(M,C,B,A).

inform(X,Y) :-
  write([move,a,disc,from,the,X,pole,to,the,Y,pole]),
  nl.

%?- hanoi(3)
%OUTPUT
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,left,pole,to,the,right,pole]
%[move,a,disc,from,the,centre,pole,to,the,right,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,right,pole,to,the,left,pole]
%[move,a,disc,from,the,right,pole,to,the,centre,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%
%OUTPUT
%YES

%?- hanoi(5)
%OUTPUT
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,left,pole,to,the,right,pole]
%[move,a,disc,from,the,centre,pole,to,the,right,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,right,pole,to,the,left,pole]
%[move,a,disc,from,the,right,pole,to,the,centre,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,left,pole,to,the,right,pole]
%[move,a,disc,from,the,centre,pole,to,the,right,pole]
%[move,a,disc,from,the,centre,pole,to,the,left,pole]
%[move,a,disc,from,the,right,pole,to,the,left,pole]
%[move,a,disc,from,the,centre,pole,to,the,right,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,left,pole,to,the,right,pole]
%[move,a,disc,from,the,centre,pole,to,the,right,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,right,pole,to,the,left,pole]
%[move,a,disc,from,the,right,pole,to,the,centre,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,right,pole,to,the,left,pole]
%[move,a,disc,from,the,centre,pole,to,the,right,pole]
%[move,a,disc,from,the,centre,pole,to,the,left,pole]
%[move,a,disc,from,the,right,pole,to,the,left,pole]
%[move,a,disc,from,the,right,pole,to,the,centre,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,left,pole,to,the,right,pole]
%[move,a,disc,from,the,centre,pole,to,the,right,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,right,pole,to,the,left,pole]
%[move,a,disc,from,the,right,pole,to,the,centre,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%
%OUTPUT
%YES

%?- hanoi(X)
% X=0

%?- hanoi(x)
%ERROR Cannot find arithmetic operator: x/0

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- hanoi(3)'), nl, '$pj_reset', catch(( ( hanoi(3) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- hanoi(5)'), nl, '$pj_reset', catch(( ( hanoi(5) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- hanoi(X)'), nl, '$pj_reset', catch(( ( hanoi(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- hanoi(x)'), nl, '$pj_reset', catch(( ( hanoi(x) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_main' :- between(1, 4, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%-------------------------------------------- 7 projog_applications_zebra_puzzle
solve(People,Doors,Pets,Cigarettes,Drink) :-
  People = [english-English,spainiard-Spainiard,ukrainian-Ukrainian,norwegian-Norwegian,japanese-Japanese],
  init(People),
  Doors = [red-Red,green-Green,ivory-Ivory,yellow-Yellow,blue-Blue],
  init(Doors),
  Pets = [dog-Dog,snails-Snails,fox-Fox,horse-Horse,zebra-_],
  init(Pets),
  Cigarettes = [oldGold-OldGold,kools-Kools,chesterfields-Chesterfields,luckyStrike-LuckyStrike,parliaments-Parliaments],
  init(Cigarettes),
  Drink = [coffee-Coffee,tea-Tea,milk-Milk,juice-Juice,water-_],
  init(Drink),
  % The Englishman lives in the red house.
  English #= Red,
  % The Spaniard owns the dog.
  Spainiard #= Dog,
  % Coffee is drunk in the green house.
  Coffee #= Green,
  % The Ukrainian drinks tea.
  Ukrainian #= Tea,
  % The green house is immediately to the right of the ivory house.
  Green #= Ivory+1,
  % The Old Gold smoker owns snails.
  OldGold #= Snails,
  % Kools are smoked in the yellow house.
  Kools #= Yellow,
  % Milk is drunk in the middle house.
  Milk #= 3,
  % The Norwegian lives in the first house.
  Norwegian #= 1,
  % The man who smokes Chesterfields lives in the house next to the man with the fox.
  abs(Chesterfields - Fox) #= 1,
  % Kools are smoked in the house next to the house where the horse is kept.
  abs(Kools - Horse) #= 1,
  % The Lucky Strike smoker drinks orange juice.
  LuckyStrike #= Juice,
  % The Japanese smokes Parliaments.
  Japanese #= Parliaments,
  % The Norwegian lives next to the blue house.
  abs(Norwegian - Blue) #= 1,
  flatten([People,Doors,Pets,Cigarettes,Drink],ObjectPairs),
  pairs_values(ObjectPairs,Variables),
  label(Variables).

init(ObjectPairs) :-
  pairs_values(ObjectPairs,Variables),
  Variables ins 1..5,
  all_different(Variables).

%?- solve(People,Doors,Pets,Cigarettes,Drink)
% Cigarettes = [oldGold - 3,kools - 1,chesterfields - 2,luckyStrike - 4,parliaments - 5]
% Doors = [red - 3,green - 5,ivory - 4,yellow - 1,blue - 2]
% Drink = [coffee - 5,tea - 2,milk - 3,juice - 4,water - 1]
% People = [english - 3,spainiard - 4,ukrainian - 2,norwegian - 1,japanese - 5]
% Pets = [dog - 4,snails - 3,fox - 1,horse - 2,zebra - 5]
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- solve(People,Doors,Pets,Cigarettes,Drink)'), nl, '$pj_reset', catch(( ( solve(People,Doors,Pets,Cigarettes,Drink) ), write('People = '), writeq(People), nl, write('Doors = '), writeq(Doors), nl, write('Pets = '), writeq(Pets), nl, write('Cigarettes = '), writeq(Cigarettes), nl, write('Drink = '), writeq(Drink), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------------------------------------------------------------- 8 projog_clp_clp1
:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%?- [Y,Z] ins 1..3, X in 1..2, Y#=X+2, all_different([X,Y,Z])
% X = 1
% Y = 3
% Z = 2

%?- [Y,Z] ins 1..3, X in 1..2, all_different([X,Y,Z]), Y#=X+2
% X = 1
% Y = 3
% Z = 2

%?- [Y,Z] ins 1..3, Y#=X+2, X in 1..2, all_different([X,Y,Z])
% X = 1
% Y = 3
% Z = 2

%?- [Y,Z] ins 1..3, Y#=X+2, all_different([X,Y,Z]), X in 1..2
% X = 1
% Y = 3
% Z = 2

%?- [Y,Z] ins 1..3, all_different([X,Y,Z]), Y#=X+2, X in 1..2
% X = 1
% Y = 3
% Z = 2

%?- [Y,Z] ins 1..3, all_different([X,Y,Z]), X in 1..2, Y#=X+2
% X = 1
% Y = 3
% Z = 2

%?- X in 1..2, [Y,Z] ins 1..3, Y#=X+2, all_different([X,Y,Z])
% X = 1
% Y = 3
% Z = 2

%?- X in 1..2, [Y,Z] ins 1..3, all_different([X,Y,Z]), Y#=X+2
% X = 1
% Y = 3
% Z = 2

%?- X in 1..2, Y#=X+2, [Y,Z] ins 1..3, all_different([X,Y,Z])
% X = 1
% Y = 3
% Z = 2

%?- X in 1..2, Y#=X+2, all_different([X,Y,Z]), [Y,Z] ins 1..3
% X = 1
% Y = 3
% Z = 2

%?- X in 1..2, all_different([X,Y,Z]), Y#=X+2, [Y,Z] ins 1..3
% X = 1
% Y = 3
% Z = 2

%?- X in 1..2, all_different([X,Y,Z]), [Y,Z] ins 1..3, Y#=X+2
% X = 1
% Y = 3
% Z = 2

%?- Y#=X+2, X in 1..2, [Y,Z] ins 1..3, all_different([X,Y,Z])
% X = 1
% Y = 3
% Z = 2

%?- Y#=X+2, X in 1..2, all_different([X,Y,Z]), [Y,Z] ins 1..3
% X = 1
% Y = 3
% Z = 2

%?- Y#=X+2, [Y,Z] ins 1..3, X in 1..2, all_different([X,Y,Z])
% X = 1
% Y = 3
% Z = 2

%?- Y#=X+2, [Y,Z] ins 1..3, all_different([X,Y,Z]), X in 1..2
% X = 1
% Y = 3
% Z = 2

%?- Y#=X+2, all_different([X,Y,Z]), [Y,Z] ins 1..3, X in 1..2
% X = 1
% Y = 3
% Z = 2

%?- Y#=X+2, all_different([X,Y,Z]), X in 1..2, [Y,Z] ins 1..3
% X = 1
% Y = 3
% Z = 2

%?- all_different([X,Y,Z]), X in 1..2, Y#=X+2, [Y,Z] ins 1..3
% X = 1
% Y = 3
% Z = 2

%?- all_different([X,Y,Z]), X in 1..2, [Y,Z] ins 1..3, Y#=X+2
% X = 1
% Y = 3
% Z = 2

%?- all_different([X,Y,Z]), Y#=X+2, X in 1..2, [Y,Z] ins 1..3
% X = 1
% Y = 3
% Z = 2

%?- all_different([X,Y,Z]), Y#=X+2, [Y,Z] ins 1..3, X in 1..2
% X = 1
% Y = 3
% Z = 2

%?- all_different([X,Y,Z]), [Y,Z] ins 1..3, Y#=X+2, X in 1..2
% X = 1
% Y = 3
% Z = 2

%?- all_different([X,Y,Z]), [Y,Z] ins 1..3, X in 1..2, Y#=X+2
% X = 1
% Y = 3
% Z = 2

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- [Y,Z] ins 1..3, X in 1..2, Y#=X+2, all_different([X,Y,Z])'), nl, '$pj_reset', catch(( ( [Y,Z] ins 1..3, X in 1..2, Y#=X+2, all_different([X,Y,Z]) ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- [Y,Z] ins 1..3, X in 1..2, all_different([X,Y,Z]), Y#=X+2'), nl, '$pj_reset', catch(( ( [Y,Z] ins 1..3, X in 1..2, all_different([X,Y,Z]), Y#=X+2 ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- [Y,Z] ins 1..3, Y#=X+2, X in 1..2, all_different([X,Y,Z])'), nl, '$pj_reset', catch(( ( [Y,Z] ins 1..3, Y#=X+2, X in 1..2, all_different([X,Y,Z]) ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- [Y,Z] ins 1..3, Y#=X+2, all_different([X,Y,Z]), X in 1..2'), nl, '$pj_reset', catch(( ( [Y,Z] ins 1..3, Y#=X+2, all_different([X,Y,Z]), X in 1..2 ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- [Y,Z] ins 1..3, all_different([X,Y,Z]), Y#=X+2, X in 1..2'), nl, '$pj_reset', catch(( ( [Y,Z] ins 1..3, all_different([X,Y,Z]), Y#=X+2, X in 1..2 ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- [Y,Z] ins 1..3, all_different([X,Y,Z]), X in 1..2, Y#=X+2'), nl, '$pj_reset', catch(( ( [Y,Z] ins 1..3, all_different([X,Y,Z]), X in 1..2, Y#=X+2 ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- X in 1..2, [Y,Z] ins 1..3, Y#=X+2, all_different([X,Y,Z])'), nl, '$pj_reset', catch(( ( X in 1..2, [Y,Z] ins 1..3, Y#=X+2, all_different([X,Y,Z]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- X in 1..2, [Y,Z] ins 1..3, all_different([X,Y,Z]), Y#=X+2'), nl, '$pj_reset', catch(( ( X in 1..2, [Y,Z] ins 1..3, all_different([X,Y,Z]), Y#=X+2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- X in 1..2, Y#=X+2, [Y,Z] ins 1..3, all_different([X,Y,Z])'), nl, '$pj_reset', catch(( ( X in 1..2, Y#=X+2, [Y,Z] ins 1..3, all_different([X,Y,Z]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- X in 1..2, Y#=X+2, all_different([X,Y,Z]), [Y,Z] ins 1..3'), nl, '$pj_reset', catch(( ( X in 1..2, Y#=X+2, all_different([X,Y,Z]), [Y,Z] ins 1..3 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- X in 1..2, all_different([X,Y,Z]), Y#=X+2, [Y,Z] ins 1..3'), nl, '$pj_reset', catch(( ( X in 1..2, all_different([X,Y,Z]), Y#=X+2, [Y,Z] ins 1..3 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- X in 1..2, all_different([X,Y,Z]), [Y,Z] ins 1..3, Y#=X+2'), nl, '$pj_reset', catch(( ( X in 1..2, all_different([X,Y,Z]), [Y,Z] ins 1..3, Y#=X+2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- Y#=X+2, X in 1..2, [Y,Z] ins 1..3, all_different([X,Y,Z])'), nl, '$pj_reset', catch(( ( Y#=X+2, X in 1..2, [Y,Z] ins 1..3, all_different([X,Y,Z]) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- Y#=X+2, X in 1..2, all_different([X,Y,Z]), [Y,Z] ins 1..3'), nl, '$pj_reset', catch(( ( Y#=X+2, X in 1..2, all_different([X,Y,Z]), [Y,Z] ins 1..3 ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_q'(15) :- write('?- Y#=X+2, [Y,Z] ins 1..3, X in 1..2, all_different([X,Y,Z])'), nl, '$pj_reset', catch(( ( Y#=X+2, [Y,Z] ins 1..3, X in 1..2, all_different([X,Y,Z]) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(15).
'$pj_q'(16) :- write('?- Y#=X+2, [Y,Z] ins 1..3, all_different([X,Y,Z]), X in 1..2'), nl, '$pj_reset', catch(( ( Y#=X+2, [Y,Z] ins 1..3, all_different([X,Y,Z]), X in 1..2 ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(16).
'$pj_q'(17) :- write('?- Y#=X+2, all_different([X,Y,Z]), [Y,Z] ins 1..3, X in 1..2'), nl, '$pj_reset', catch(( ( Y#=X+2, all_different([X,Y,Z]), [Y,Z] ins 1..3, X in 1..2 ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(17).
'$pj_q'(18) :- write('?- Y#=X+2, all_different([X,Y,Z]), X in 1..2, [Y,Z] ins 1..3'), nl, '$pj_reset', catch(( ( Y#=X+2, all_different([X,Y,Z]), X in 1..2, [Y,Z] ins 1..3 ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(18).
'$pj_q'(19) :- write('?- all_different([X,Y,Z]), X in 1..2, Y#=X+2, [Y,Z] ins 1..3'), nl, '$pj_reset', catch(( ( all_different([X,Y,Z]), X in 1..2, Y#=X+2, [Y,Z] ins 1..3 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(19).
'$pj_q'(20) :- write('?- all_different([X,Y,Z]), X in 1..2, [Y,Z] ins 1..3, Y#=X+2'), nl, '$pj_reset', catch(( ( all_different([X,Y,Z]), X in 1..2, [Y,Z] ins 1..3, Y#=X+2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(20).
'$pj_q'(21) :- write('?- all_different([X,Y,Z]), Y#=X+2, X in 1..2, [Y,Z] ins 1..3'), nl, '$pj_reset', catch(( ( all_different([X,Y,Z]), Y#=X+2, X in 1..2, [Y,Z] ins 1..3 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(21).
'$pj_q'(22) :- write('?- all_different([X,Y,Z]), Y#=X+2, [Y,Z] ins 1..3, X in 1..2'), nl, '$pj_reset', catch(( ( all_different([X,Y,Z]), Y#=X+2, [Y,Z] ins 1..3, X in 1..2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(22).
'$pj_q'(23) :- write('?- all_different([X,Y,Z]), [Y,Z] ins 1..3, Y#=X+2, X in 1..2'), nl, '$pj_reset', catch(( ( all_different([X,Y,Z]), [Y,Z] ins 1..3, Y#=X+2, X in 1..2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(23).
'$pj_q'(24) :- write('?- all_different([X,Y,Z]), [Y,Z] ins 1..3, X in 1..2, Y#=X+2'), nl, '$pj_reset', catch(( ( all_different([X,Y,Z]), [Y,Z] ins 1..3, X in 1..2, Y#=X+2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(24).
'$pj_main' :- between(1, 24, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------------------------------------------------------------- 9 projog_clp_clp2
:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%?- [X,Y,Z] ins 7..10, Y#<X, Z#>X+1
% X=8
% Y=7
% Z=10

%FAIL [X,Y,Z] ins 7..10, Y#<X, Z#>X+2

%?- X in 7..9, Y#=X+2, X#=7
% X = 7
% Y = 9

%?- X in 7..9, X#=7, Y#=X+2
% X = 7
% Y = 9

%?- Y#=X+2, X in 7..9, X#=7
% X = 7
% Y = 9

%?- Y#=X+2, X#=7, X in 7..9
% X = 7
% Y = 9

%?- X#=7, Y#=X+2, X in 7..9
% X = 7
% Y = 9

%?- X#=7, X in 7..9, Y#=X+2
% X = 7
% Y = 9

%?- [X,Y] in 7..9, Y#=X+2
% X = 7
% Y = 9

%?- Y#=X+2, [X,Y] in 7..9
% X = 7
% Y = 9

%?- [X,Y] in 7..9, Y-2#=X
% X = 7
% Y = 9

%?- Y-2#=X, [X,Y] in 7..9
% X = 7
% Y = 9

%FAIL X in 7..9, Y#=X+2, X#=6
%FAIL X in 7..9, X#=6, Y#=X+2
%FAIL Y#=X+2, X in 7..9, X#=6
%FAIL Y#=X+2, X#=6, X in 7..9
%FAIL X#=6, Y#=X+2, X in 7..9
%FAIL X#=6, X in 7..9, Y#=X+2
%FAIL [X,Y] ins 7..9, Y#=X+2, X#=8
%FAIL [X,Y] ins 7..9, X#=8, Y#=X+2
%FAIL Y#=X+2, [X,Y] ins 7..9, X#=8
%FAIL Y#=X+2, X#=8, [X,Y] ins 7..9
%FAIL X#=8, Y#=X+2, [X,Y] ins 7..9
%FAIL X#=8, [X,Y] ins 7..9, Y#=X+2

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- [X,Y,Z] ins 7..10, Y#<X, Z#>X+1'), nl, '$pj_reset', catch(( ( [X,Y,Z] ins 7..10, Y#<X, Z#>X+1 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X in 7..9, Y#=X+2, X#=7'), nl, '$pj_reset', catch(( ( X in 7..9, Y#=X+2, X#=7 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X in 7..9, X#=7, Y#=X+2'), nl, '$pj_reset', catch(( ( X in 7..9, X#=7, Y#=X+2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- Y#=X+2, X in 7..9, X#=7'), nl, '$pj_reset', catch(( ( Y#=X+2, X in 7..9, X#=7 ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- Y#=X+2, X#=7, X in 7..9'), nl, '$pj_reset', catch(( ( Y#=X+2, X#=7, X in 7..9 ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- X#=7, Y#=X+2, X in 7..9'), nl, '$pj_reset', catch(( ( X#=7, Y#=X+2, X in 7..9 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- X#=7, X in 7..9, Y#=X+2'), nl, '$pj_reset', catch(( ( X#=7, X in 7..9, Y#=X+2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- [X,Y] in 7..9, Y#=X+2'), nl, '$pj_reset', catch(( ( [X,Y] in 7..9, Y#=X+2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- Y#=X+2, [X,Y] in 7..9'), nl, '$pj_reset', catch(( ( Y#=X+2, [X,Y] in 7..9 ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- [X,Y] in 7..9, Y-2#=X'), nl, '$pj_reset', catch(( ( [X,Y] in 7..9, Y-2#=X ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- Y-2#=X, [X,Y] in 7..9'), nl, '$pj_reset', catch(( ( Y-2#=X, [X,Y] in 7..9 ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_main' :- between(1, 11, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------------------------------------------------------------ 10 projog_clp_clp3
:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%?- X in 7..9, Y#=X+2, X=7
% X = 7
% Y = 9

%?- X in 7..9, X=7, Y#=X+2
% X = 7
% Y = 9

%?- Y#=X+2, X in 7..9, X=7
% X = 7
% Y = 9

%?- Y#=X+2, X=7, X in 7..9
% X = 7
% Y = 9

%?- X=7, Y#=X+2, X in 7..9
% X = 7
% Y = 9

%?- X=7, X in 7..9, Y#=X+2
% X = 7
% Y = 9

%FAIL X in 7..9, Y#=X+2, X=6
%FAIL X in 7..9, X=6, Y#=X+2
%FAIL Y#=X+2, X in 7..9, X=6
%FAIL Y#=X+2, X=6, X in 7..9
%FAIL X=6, Y#=X+2, X in 7..9
%FAIL X=6, X in 7..9, Y#=X+2
%FAIL [X,Y] ins 7..9, Y#=X+2, X=8
%FAIL [X,Y] ins 7..9, X=8, Y#=X+2
%FAIL Y#=X+2, [X,Y] ins 7..9, X=8
%FAIL Y#=X+2, X=8, [X,Y] ins 7..9
%FAIL X=8, Y#=X+2, [X,Y] ins 7..9
%FAIL X=8, [X,Y] ins 7..9, Y#=X+2

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X in 7..9, Y#=X+2, X=7'), nl, '$pj_reset', catch(( ( X in 7..9, Y#=X+2, X=7 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X in 7..9, X=7, Y#=X+2'), nl, '$pj_reset', catch(( ( X in 7..9, X=7, Y#=X+2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- Y#=X+2, X in 7..9, X=7'), nl, '$pj_reset', catch(( ( Y#=X+2, X in 7..9, X=7 ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- Y#=X+2, X=7, X in 7..9'), nl, '$pj_reset', catch(( ( Y#=X+2, X=7, X in 7..9 ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- X=7, Y#=X+2, X in 7..9'), nl, '$pj_reset', catch(( ( X=7, Y#=X+2, X in 7..9 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- X=7, X in 7..9, Y#=X+2'), nl, '$pj_reset', catch(( ( X=7, X in 7..9, Y#=X+2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_main' :- between(1, 6, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------------------------------------------------------------ 11 projog_clp_clp4
:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%?- Y in 2..4, Z in 7..9, X#=Y*Z, label([X])
% X = 14
% Y = 2
% Z = 7
% X = 16
% Y = 2
% Z = 8
% X = 18
% Y = 2
% Z = 9
% X = 21
% Y = 3
% Z = 7
% X = 24
% Y = 3
% Z = 8
% X = 27
% Y = 3
% Z = 9
% X = 28
% Y = 4
% Z = 7
% X = 32
% Y = 4
% Z = 8
% X = 36
% Y = 4
% Z = 9
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- Y in 2..4, Z in 7..9, X#=Y*Z, label([X])'), nl, '$pj_reset', catch(( ( Y in 2..4, Z in 7..9, X#=Y*Z, label([X]) ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------------------------------------------------------------ 12 projog_clp_clp5
:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%?- 3*X - 2*Y #= 12, 2*Y #= X, [X,Y] ins -50..50, label([X])
% X = 6
% Y = 3
%NO

%?- Y#>=2, Y#=<X+1, 2*Y#=<8-X, label([X])
% X = 1
% Y = 2
% X = 2
% Y = 2
% X = 3
% Y = 2
% X = 4
% Y = 2
% X = 2
% Y = 3
%NO

%?- X#>=2, Y#>=2, Y#=<X+1, 2*Y#=<8-X, Z#=2*X+3*Y, label([Z])
% X = 2
% Y = 2
% Z = 10
% X = 3
% Y = 2
% Z = 12
% X = 4
% Y = 2
% Z = 14
% X = 2
% Y = 3
% Z = 13
%NO

%?- X#>=2, Y#>=2, Y*2#=<8-X
% X = 2..4
% Y = 2..3

%?- Y in 1..3, X+1#=Y+2
% X = 2..4
% Y = 1..3

%?- Y in 1..3, X+1#=Y+2, label([X])
% X=2
% Y=1
% X=3
% Y=2
% X=4
% Y=3
%NO

%?- X+1#=Y+2, Y in 1..3, label([X])
% X=2
% Y=1
% X=3
% Y=2
% X=4
% Y=3
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- 3*X - 2*Y #= 12, 2*Y #= X, [X,Y] ins -50..50, label([X])'), nl, '$pj_reset', catch(( ( 3*X - 2*Y #= 12, 2*Y #= X, [X,Y] ins -50..50, label([X]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- Y#>=2, Y#=<X+1, 2*Y#=<8-X, label([X])'), nl, '$pj_reset', catch(( ( Y#>=2, Y#=<X+1, 2*Y#=<8-X, label([X]) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X#>=2, Y#>=2, Y#=<X+1, 2*Y#=<8-X, Z#=2*X+3*Y, label([Z])'), nl, '$pj_reset', catch(( ( X#>=2, Y#>=2, Y#=<X+1, 2*Y#=<8-X, Z#=2*X+3*Y, label([Z]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- X#>=2, Y#>=2, Y*2#=<8-X'), nl, '$pj_reset', catch(( ( X#>=2, Y#>=2, Y*2#=<8-X ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- Y in 1..3, X+1#=Y+2'), nl, '$pj_reset', catch(( ( Y in 1..3, X+1#=Y+2 ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- Y in 1..3, X+1#=Y+2, label([X])'), nl, '$pj_reset', catch(( ( Y in 1..3, X+1#=Y+2, label([X]) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- X+1#=Y+2, Y in 1..3, label([X])'), nl, '$pj_reset', catch(( ( X+1#=Y+2, Y in 1..3, label([X]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_main' :- between(1, 7, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------------------------------------------------------------ 13 projog_clp_clp6
:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%?- X in 1..5, Y in 0..4, Y#>X, Z#=X+Y+1, label([X])
% X=1
% Y=2
% Z=4
% X=1
% Y=3
% Z=5
% X=1
% Y=4
% Z=6
% X=2
% Y=3
% Z=6
% X=2
% Y=4
% Z=7
% X=3
% Y=4
% Z=8
%NO

%?- X in 1..5, Y in 0..4, X#<Y, Z#=X+Y+1, label([X])
% X=1
% Y=2
% Z=4
% X=1
% Y=3
% Z=5
% X=1
% Y=4
% Z=6
% X=2
% Y=3
% Z=6
% X=2
% Y=4
% Z=7
% X=3
% Y=4
% Z=8
%NO

%?- X in -5..-1, Y in -4..0, X#>Y, Z#=X+Y+1, label([X])
% X=-3
% Y=-4
% Z=-6
% X=-2
% Y=-4
% Z=-5
% X=-2
% Y=-3
% Z=-4
% X=-1
% Y=-4
% Z=-4
% X=-1
% Y=-3
% Z=-3
% X=-1
% Y=-2
% Z=-2
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X in 1..5, Y in 0..4, Y#>X, Z#=X+Y+1, label([X])'), nl, '$pj_reset', catch(( ( X in 1..5, Y in 0..4, Y#>X, Z#=X+Y+1, label([X]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X in 1..5, Y in 0..4, X#<Y, Z#=X+Y+1, label([X])'), nl, '$pj_reset', catch(( ( X in 1..5, Y in 0..4, X#<Y, Z#=X+Y+1, label([X]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X in -5..-1, Y in -4..0, X#>Y, Z#=X+Y+1, label([X])'), nl, '$pj_reset', catch(( ( X in -5..-1, Y in -4..0, X#>Y, Z#=X+Y+1, label([X]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------------------------------------------------------------ 14 projog_clp_clp7
:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%?- [X,Y] ins 1..2, repeat(2), X#=Y, label([X])
% X=1
% Y=1
% X=2
% Y=2
% X=1
% Y=1
% X=2
% Y=2
%NO

%?- repeat(2), X in 1..3, \+ integer(X), label([X])
% X=1
% X=2
% X=3
% X=1
% X=2
% X=3
%NO

%?- X in 1..3, repeat(2), \+ integer(X), label([X])
% X=1
% X=2
% X=3
% X=1
% X=2
% X=3
%NO

p(7).
p(8).
p(9).

%?- X in 1..3, p(Y), label([X]), Z is X*Y
% X=1
% Y=7
% Z=7
% X=2
% Y=7
% Z=14
% X=3
% Y=7
% Z=21
% X=1
% Y=8
% Z=8
% X=2
% Y=8
% Z=16
% X=3
% Y=8
% Z=24
% X=1
% Y=9
% Z=9
% X=2
% Y=9
% Z=18
% X=3
% Y=9
% Z=27
%NO

%?- p(Y), X in 1..3, label([X]), Z is X*Y
% X=1
% Y=7
% Z=7
% X=2
% Y=7
% Z=14
% X=3
% Y=7
% Z=21
% X=1
% Y=8
% Z=8
% X=2
% Y=8
% Z=16
% X=3
% Y=8
% Z=24
% X=1
% Y=9
% Z=9
% X=2
% Y=9
% Z=18
% X=3
% Y=9
% Z=27
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- [X,Y] ins 1..2, repeat(2), X#=Y, label([X])'), nl, '$pj_reset', catch(( ( [X,Y] ins 1..2, repeat(2), X#=Y, label([X]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- repeat(2), X in 1..3, \\+ integer(X), label([X])'), nl, '$pj_reset', catch(( ( repeat(2), X in 1..3, \+ integer(X), label([X]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X in 1..3, repeat(2), \\+ integer(X), label([X])'), nl, '$pj_reset', catch(( ( X in 1..3, repeat(2), \+ integer(X), label([X]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- X in 1..3, p(Y), label([X]), Z is X*Y'), nl, '$pj_reset', catch(( ( X in 1..3, p(Y), label([X]), Z is X*Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p(Y), X in 1..3, label([X]), Z is X*Y'), nl, '$pj_reset', catch(( ( p(Y), X in 1..3, label([X]), Z is X*Y ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_main' :- between(1, 5, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------------------------------------------------------------ 15 projog_clp_clp8
:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%FAIL X in 1..3, integer(X)

%?- X in 1..3, label([X]), integer(X)
% X=1
% X=2
% X=3
%NO

%?- X in 1..3, \+ integer(X), label([X]), integer(X)
% X=1
% X=2
% X=3
%NO

%?- X in 1..3, X=1, integer(X)
% X=1

%?- X in 1..3, 1=X, integer(X)
% X=1

%?- X in 1..3, X#=1, integer(X)
% X=1

%?- X in 1..3, 1#=X, integer(X)
% X=1

%?- X in 0..3, Y#=X+2, 1=X, integer(X), integer(Y)
% X=1
% Y=3

%?- X in 0..3, Y#=X+2, X=1, integer(X), integer(Y)
% X=1
% Y=3

%?- X in 0..3, Y#=X+2, X#=1, integer(X), integer(Y)
% X=1
% Y=3

%?- X in 0..3, Y#=X+2, 1=X, integer(X), integer(Y)
% X=1
% Y=3

%?- X in 0..3, Y#=X+2, 1#=X, integer(X), integer(Y)
% X=1
% Y=3

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X in 1..3, label([X]), integer(X)'), nl, '$pj_reset', catch(( ( X in 1..3, label([X]), integer(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X in 1..3, \\+ integer(X), label([X]), integer(X)'), nl, '$pj_reset', catch(( ( X in 1..3, \+ integer(X), label([X]), integer(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X in 1..3, X=1, integer(X)'), nl, '$pj_reset', catch(( ( X in 1..3, X=1, integer(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- X in 1..3, 1=X, integer(X)'), nl, '$pj_reset', catch(( ( X in 1..3, 1=X, integer(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- X in 1..3, X#=1, integer(X)'), nl, '$pj_reset', catch(( ( X in 1..3, X#=1, integer(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- X in 1..3, 1#=X, integer(X)'), nl, '$pj_reset', catch(( ( X in 1..3, 1#=X, integer(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- X in 0..3, Y#=X+2, 1=X, integer(X), integer(Y)'), nl, '$pj_reset', catch(( ( X in 0..3, Y#=X+2, 1=X, integer(X), integer(Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- X in 0..3, Y#=X+2, X=1, integer(X), integer(Y)'), nl, '$pj_reset', catch(( ( X in 0..3, Y#=X+2, X=1, integer(X), integer(Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- X in 0..3, Y#=X+2, X#=1, integer(X), integer(Y)'), nl, '$pj_reset', catch(( ( X in 0..3, Y#=X+2, X#=1, integer(X), integer(Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- X in 0..3, Y#=X+2, 1=X, integer(X), integer(Y)'), nl, '$pj_reset', catch(( ( X in 0..3, Y#=X+2, 1=X, integer(X), integer(Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- X in 0..3, Y#=X+2, 1#=X, integer(X), integer(Y)'), nl, '$pj_reset', catch(( ( X in 0..3, Y#=X+2, 1#=X, integer(X), integer(Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_main' :- between(1, 11, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------------------------------------------------------------ 16 projog_clp_clp9
:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%?- X in -1..1
% X=-1..1

%?- X in -1..1, X#\=-1
% X=0..1

%?- X in -1..1, X#\=0
% X={-1, 1}

%?- X in -1..1, X#\=1
% X=-1..0

%?- X in -1..1, X#>0
% X=1

%?- X in -1..1, X#<0
% X=-1



%?- X in 9223372036854775805..9223372036854775807
% X=9223372036854775805..9223372036854775807

%?- X in 9223372036854775805..9223372036854775807, X#\=9223372036854775805
% X=9223372036854775806..9223372036854775807

%?- X in 9223372036854775805..9223372036854775807, X#\=9223372036854775806
% X={9223372036854775805, 9223372036854775807}

%?- X in 9223372036854775805..9223372036854775807, X#\=9223372036854775807
% X=9223372036854775805..9223372036854775806

%?- X in 9223372036854775805..9223372036854775807, X#>9223372036854775806
% X=9223372036854775807

%?- X in 9223372036854775805..9223372036854775807, X#<9223372036854775806
% X=9223372036854775805



%?- X in -9223372036854775808..-9223372036854775806
% X=-9223372036854775808..-9223372036854775806

%?- X in -9223372036854775808..-9223372036854775806, X#\=-9223372036854775808
% X=-9223372036854775807..-9223372036854775806

%?- X in -9223372036854775808..-9223372036854775806, X#\=-9223372036854775807
% X={-9223372036854775808, -9223372036854775806}

%?- X in -9223372036854775808..-9223372036854775806, X#\=-9223372036854775806
% X=-9223372036854775808..-9223372036854775807

%?- X in -9223372036854775808..-9223372036854775806, X#>-9223372036854775807
% X=-9223372036854775806

%?- X in -9223372036854775808..-9223372036854775806, X#<-9223372036854775807
% X=-9223372036854775808

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X in -1..1'), nl, '$pj_reset', catch(( ( X in -1..1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X in -1..1, X#\\=-1'), nl, '$pj_reset', catch(( ( X in -1..1, X#\=-1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X in -1..1, X#\\=0'), nl, '$pj_reset', catch(( ( X in -1..1, X#\=0 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- X in -1..1, X#\\=1'), nl, '$pj_reset', catch(( ( X in -1..1, X#\=1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- X in -1..1, X#>0'), nl, '$pj_reset', catch(( ( X in -1..1, X#>0 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- X in -1..1, X#<0'), nl, '$pj_reset', catch(( ( X in -1..1, X#<0 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- X in 9223372036854775805..9223372036854775807'), nl, '$pj_reset', catch(( ( X in 9223372036854775805..9223372036854775807 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- X in 9223372036854775805..9223372036854775807, X#\\=9223372036854775805'), nl, '$pj_reset', catch(( ( X in 9223372036854775805..9223372036854775807, X#\=9223372036854775805 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- X in 9223372036854775805..9223372036854775807, X#\\=9223372036854775806'), nl, '$pj_reset', catch(( ( X in 9223372036854775805..9223372036854775807, X#\=9223372036854775806 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- X in 9223372036854775805..9223372036854775807, X#\\=9223372036854775807'), nl, '$pj_reset', catch(( ( X in 9223372036854775805..9223372036854775807, X#\=9223372036854775807 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- X in 9223372036854775805..9223372036854775807, X#>9223372036854775806'), nl, '$pj_reset', catch(( ( X in 9223372036854775805..9223372036854775807, X#>9223372036854775806 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- X in 9223372036854775805..9223372036854775807, X#<9223372036854775806'), nl, '$pj_reset', catch(( ( X in 9223372036854775805..9223372036854775807, X#<9223372036854775806 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- X in -9223372036854775808..-9223372036854775806'), nl, '$pj_reset', catch(( ( X in -9223372036854775808..-9223372036854775806 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- X in -9223372036854775808..-9223372036854775806, X#\\=-9223372036854775808'), nl, '$pj_reset', catch(( ( X in -9223372036854775808..-9223372036854775806, X#\=-9223372036854775808 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_q'(15) :- write('?- X in -9223372036854775808..-9223372036854775806, X#\\=-9223372036854775807'), nl, '$pj_reset', catch(( ( X in -9223372036854775808..-9223372036854775806, X#\=-9223372036854775807 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(15).
'$pj_q'(16) :- write('?- X in -9223372036854775808..-9223372036854775806, X#\\=-9223372036854775806'), nl, '$pj_reset', catch(( ( X in -9223372036854775808..-9223372036854775806, X#\=-9223372036854775806 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(16).
'$pj_q'(17) :- write('?- X in -9223372036854775808..-9223372036854775806, X#>-9223372036854775807'), nl, '$pj_reset', catch(( ( X in -9223372036854775808..-9223372036854775806, X#>-9223372036854775807 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(17).
'$pj_q'(18) :- write('?- X in -9223372036854775808..-9223372036854775806, X#<-9223372036854775807'), nl, '$pj_reset', catch(( ( X in -9223372036854775808..-9223372036854775806, X#<-9223372036854775807 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(18).
'$pj_main' :- between(1, 18, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 17 projog_clp_clp_CopyTerm
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
%------------------------------------------------------- 18 projog_clp_clp_Equal
:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%?- [X,Y] ins 1..3, X=Y
% X=1..3
% Y=1..3

%?- [X,Y] ins 1..3, X=Y, Y=2
% X=2
% Y=2

%FAIL [X,Y] ins 1..3, X=Y, Y=4

%?- X in 1..4, Y in 2..5, X=Y
% X=2..4
% Y=2..4

%FAIL X in 1..4, Y in 2..5, X=Y, X#=1

%?- X#=2, Y in 1..3, X=Y
% X=2
% Y=2

%?- X in 12..18, Y in 13..22, X#\=14, Y#\=16, X=Y
% X={13, 15, 17, 18}
% Y={13, 15, 17, 18}

%?- X in 1..4, Y=2, X=Y
% X=2
% Y=2

%FAIL X in 1..4, Y=5, X=Y

%FAIL X in 1..3, Y in 4..6, X=Y

%?- X in 1..4, f(X)=f(X)
% X=1..4

%?- X in 1..4, Y in 2..5, f(X)=f(Y)
% X=2..4
% Y=2..4
%FAIL X in 1..4, Y in 5..8, f(X)=f(Y)

%?- X in 1..5, Y in 4..9, f(X)=f(4), X=Y
% X=4
% Y=4
%?- X in 1..4, Y in 4..7, f(X)=f(2), f(5)=f(Y)
% X=2
% Y=5
%FAIL X in 1..4, f(X)=f(0)
%FAIL X in 1..4, f(5)=f(X)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- [X,Y] ins 1..3, X=Y'), nl, '$pj_reset', catch(( ( [X,Y] ins 1..3, X=Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- [X,Y] ins 1..3, X=Y, Y=2'), nl, '$pj_reset', catch(( ( [X,Y] ins 1..3, X=Y, Y=2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X in 1..4, Y in 2..5, X=Y'), nl, '$pj_reset', catch(( ( X in 1..4, Y in 2..5, X=Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- X#=2, Y in 1..3, X=Y'), nl, '$pj_reset', catch(( ( X#=2, Y in 1..3, X=Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- X in 12..18, Y in 13..22, X#\\=14, Y#\\=16, X=Y'), nl, '$pj_reset', catch(( ( X in 12..18, Y in 13..22, X#\=14, Y#\=16, X=Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- X in 1..4, Y=2, X=Y'), nl, '$pj_reset', catch(( ( X in 1..4, Y=2, X=Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- X in 1..4, f(X)=f(X)'), nl, '$pj_reset', catch(( ( X in 1..4, f(X)=f(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- X in 1..4, Y in 2..5, f(X)=f(Y)'), nl, '$pj_reset', catch(( ( X in 1..4, Y in 2..5, f(X)=f(Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- X in 1..5, Y in 4..9, f(X)=f(4), X=Y'), nl, '$pj_reset', catch(( ( X in 1..5, Y in 4..9, f(X)=f(4), X=Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- X in 1..4, Y in 4..7, f(X)=f(2), f(5)=f(Y)'), nl, '$pj_reset', catch(( ( X in 1..4, Y in 4..7, f(X)=f(2), f(5)=f(Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_main' :- between(1, 10, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------------------------------------------- 19 projog_clp_clp_NotStrictEquality
:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%?- [X,Y] ins 1..3, X\==Y
% X=1..3
% Y=1..3

%?- X in 1..3, X#=Y, X\==Y
% X=1..3
% Y=1..3

%?- X#=Y, X in 1..3, X\==Y
% X=1..3
% Y=1..3

%?- X in 1..3, 2\==X
% X=1..3

%?- X in 1..3, X\==2
% X=1..3

%?- X #=1, 2\==X
% X=1

%?- X #=1, X\==2
% X=1

%?- X\==1, X #=1
% X=1

%FAIL [X,Y] ins 1..3, X=Y, X\==Y

%FAIL X in 1..3, X=Y, X\==Y

%FAIL X=Y, X in 1..3, X\==Y

%FAIL X#=1, 1\==X

%FAIL X#=1, X\==1

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- [X,Y] ins 1..3, X\\==Y'), nl, '$pj_reset', catch(( ( [X,Y] ins 1..3, X\==Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X in 1..3, X#=Y, X\\==Y'), nl, '$pj_reset', catch(( ( X in 1..3, X#=Y, X\==Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X#=Y, X in 1..3, X\\==Y'), nl, '$pj_reset', catch(( ( X#=Y, X in 1..3, X\==Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- X in 1..3, 2\\==X'), nl, '$pj_reset', catch(( ( X in 1..3, 2\==X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- X in 1..3, X\\==2'), nl, '$pj_reset', catch(( ( X in 1..3, X\==2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- X #=1, 2\\==X'), nl, '$pj_reset', catch(( ( X #=1, 2\==X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- X #=1, X\\==2'), nl, '$pj_reset', catch(( ( X #=1, X\==2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- X\\==1, X #=1'), nl, '$pj_reset', catch(( ( X\==1, X #=1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_main' :- between(1, 8, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------------------------------------------------ 20 projog_clp_clp_NotUnifiable
:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%FAIL X in 7..9, X\=7

%FAIL X in 7..9, 8\=X

%FAIL X in 7..9, X\=9

%?- X in 7..9, X\=6
% X=7..9

%?- X in 7..9, 10\=X
% X=7..9

%FAIL X#=2, Y in 1..3, X\=Y

%FAIL X in 7..9, Y in 9..12, X\=Y

%?- X in 7..9, Y in 10..12, X\=Y
% X=7..9
% Y=10..12

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X in 7..9, X\\=6'), nl, '$pj_reset', catch(( ( X in 7..9, X\=6 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X in 7..9, 10\\=X'), nl, '$pj_reset', catch(( ( X in 7..9, 10\=X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X in 7..9, Y in 10..12, X\\=Y'), nl, '$pj_reset', catch(( ( X in 7..9, Y in 10..12, X\=Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------- 21 projog_clp_clp_StrictEquality
:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%FAIL [X,Y] ins 1..3, X==Y

%FAIL X in 1..3, X#=Y, X==Y

%FAIL X#=Y, X in 1..3, X==Y

%FAIL X in 1..3, 2==X

%FAIL X in 1..3, X==2

%FAIL X #=1, 2==X

%FAIL X #=1, X==2

%FAIL X==1, X#=1

%?- [X,Y] ins 1..3, X=Y, X==Y
% X=1..3
% Y=1..3

%?- X in 1..3, X=Y, X==Y
% X=1..3
% Y=1..3

%?- X=Y, X in 1..3, X==Y
% X=1..3
% Y=1..3

%?- X#=1, 1==X
% X=1

%?- X#=1, X==1
% X=1

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- [X,Y] ins 1..3, X=Y, X==Y'), nl, '$pj_reset', catch(( ( [X,Y] ins 1..3, X=Y, X==Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X in 1..3, X=Y, X==Y'), nl, '$pj_reset', catch(( ( X in 1..3, X=Y, X==Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X=Y, X in 1..3, X==Y'), nl, '$pj_reset', catch(( ( X=Y, X in 1..3, X==Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- X#=1, 1==X'), nl, '$pj_reset', catch(( ( X#=1, 1==X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- X#=1, X==1'), nl, '$pj_reset', catch(( ( X#=1, X==1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_main' :- between(1, 5, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------------------------------------------------------ 22 projog_clp_set_square
:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
% A+B+C=17
% * + +
% D+E+F=77
% + + +
% G+H+I=10
% = = =
% 1 1 1
% 1 9 6
set_square(A,B,C,D,E,F,G,H,I) :-
  Vars = [A,B,C,D,E,F,G,H,I],
  Vars ins 1..9,
  all_different(Vars),
  17 #= A+B+C,
  77 #= (D+E)*F,
  10 #= G+H+I,
  11 #= (A*D)+G,
  19 #= B+E+H,
  16 #= C+F+I,
  label(Vars).

%?- set_square(A,B,C,D,E,F,G,H,I)
% A = 3
% B = 6
% C = 8
% D = 2
% E = 9
% F = 7
% G = 5
% H = 4
% I = 1
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- set_square(A,B,C,D,E,F,G,H,I)'), nl, '$pj_reset', catch(( ( set_square(A,B,C,D,E,F,G,H,I) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write('D = '), writeq(D), nl, write('E = '), writeq(E), nl, write('F = '), writeq(F), nl, write('G = '), writeq(G), nl, write('H = '), writeq(H), nl, write('I = '), writeq(I), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------------- 23 projog_clp_sudoku
:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
sudoku(X) :-
  X = [
   A1,A2,A3,A4,A5,A6,A7,A8,A9,
   B1,B2,B3,B4,B5,B6,B7,B8,B9,
   C1,C2,C3,C4,C5,C6,C7,C8,C9,
   D1,D2,D3,D4,D5,D6,D7,D8,D9,
   E1,E2,E3,E4,E5,E6,E7,E8,E9,
   F1,F2,F3,F4,F5,F6,F7,F8,F9,
   G1,G2,G3,G4,G5,G6,G7,G8,G9,
   H1,H2,H3,H4,H5,H6,H7,H8,H9,
   I1,I2,I3,I4,I5,I6,I7,I8,I9
  ],
  X ins 1..9,
  % row
  all_different([A1,A2,A3,A4,A5,A6,A7,A8,A9]),
  all_different([B1,B2,B3,B4,B5,B6,B7,B8,B9]),
  all_different([C1,C2,C3,C4,C5,C6,C7,C8,C9]),
  all_different([D1,D2,D3,D4,D5,D6,D7,D8,D9]),
  all_different([E1,E2,E3,E4,E5,E6,E7,E8,E9]),
  all_different([F1,F2,F3,F4,F5,F6,F7,F8,F9]),
  all_different([G1,G2,G3,G4,G5,G6,G7,G8,G9]),
  all_different([H1,H2,H3,H4,H5,H6,H7,H8,H9]),
  all_different([I1,I2,I3,I4,I5,I6,I7,I8,I9]),
  % column
  all_different([A1,B1,C1,D1,E1,F1,G1,H1,I1]),
  all_different([A2,B2,C2,D2,E2,F2,G2,H2,I2]),
  all_different([A3,B3,C3,D3,E3,F3,G3,H3,I3]),
  all_different([A4,B4,C4,D4,E4,F4,G4,H4,I4]),
  all_different([A5,B5,C5,D5,E5,F5,G5,H5,I5]),
  all_different([A6,B6,C6,D6,E6,F6,G6,H6,I6]),
  all_different([A7,B7,C7,D7,E7,F7,G7,H7,I7]),
  all_different([A8,B8,C8,D8,E8,F8,G8,H8,I8]),
  all_different([A9,B9,C9,D9,E9,F9,G9,H9,I9]),
  % inner squares
  all_different([A1,A2,A3,B1,B2,B3,C1,C2,C3]),
  all_different([A4,A5,A6,B4,B5,B6,C4,C5,C6]),
  all_different([A7,A8,A9,B7,B8,B9,C7,C8,C9]),
  all_different([D1,D2,D3,E1,E2,E3,F1,F2,F3]),
  all_different([D4,D5,D6,E4,E5,E6,F4,F5,F6]),
  all_different([D7,D8,D9,E7,E8,E9,F7,F8,F9]),
  all_different([G1,G2,G3,H1,H2,H3,I1,I2,I3]),
  all_different([G4,G5,G6,H4,H5,H6,I4,I5,I6]),
  all_different([G7,G8,G9,H7,H8,H9,I7,I8,I9]),
  label(X).

%?- sudoku(X)
% X = [1,2,3,4,5,6,7,8,9,4,5,6,7,8,9,1,2,3,7,8,9,1,2,3,4,5,6,2,6,1,9,3,4,8,7,5,8,3,4,5,1,7,6,9,2,5,9,7,2,6,8,3,1,4,3,1,2,6,7,5,9,4,8,6,4,5,8,9,1,2,3,7,9,7,8,3,4,2,5,6,1]
% X = [1,2,3,4,5,6,7,8,9,4,5,6,7,8,9,1,2,3,7,8,9,1,2,3,4,5,6,2,6,1,9,3,4,8,7,5,8,3,4,5,1,7,6,9,2,5,9,7,2,6,8,3,1,4,3,1,2,6,7,5,9,4,8,9,7,8,3,4,2,5,6,1,6,4,5,8,9,1,2,3,7]
% X = [1,2,3,4,5,6,7,8,9,4,5,6,7,8,9,1,2,3,7,8,9,1,2,3,4,5,6,2,6,1,9,3,4,8,7,5,8,3,4,5,1,7,6,9,2,5,9,7,2,6,8,3,1,4,3,1,5,6,7,2,9,4,8,6,4,2,8,9,1,5,3,7,9,7,8,3,4,5,2,6,1]
% X = [1,2,3,4,5,6,7,8,9,4,5,6,7,8,9,1,2,3,7,8,9,1,2,3,4,5,6,2,6,1,9,3,4,8,7,5,8,3,4,5,1,7,6,9,2,5,9,7,2,6,8,3,1,4,3,1,5,6,7,2,9,4,8,9,7,8,3,4,5,2,6,1,6,4,2,8,9,1,5,3,7]
%QUIT

data([
  9,_,_,_,_,7,_,2,_,
  5,7,4,_,_,_,9,_,_,
  2,_,_,6,5,_,_,_,_,
  _,_,_,4,_,_,8,5,_,
  _,_,7,_,6,_,3,_,_,
  _,4,5,_,_,2,_,_,_,
  _,_,_,_,9,4,_,_,8,
  _,_,8,_,_,_,4,9,7,
  _,5,_,7,_,_,_,_,1
]).
data([
  _,_,_,_,_,_,_,_,8,
  _,1,_,_,5,9,_,2,_,
  7,_,_,_,_,4,_,_,3,
  _,6,9,_,_,_,_,_,5,
  _,_,4,_,_,_,3,_,_,
  5,_,_,_,_,_,7,9,_,
  6,_,_,7,_,_,_,_,2,
  _,4,_,2,1,_,_,6,_,
  9,_,_,_,_,_,_,_,_
]).
data([
  6,9,_,8,_,_,2,_,5,
  _,_,_,_,_,5,_,3,_,
  _,_,2,_,_,_,_,_,_,
  _,_,8,_,2,_,_,7,_,
  _,_,6,_,_,_,9,_,_,
  _,5,_,_,4,_,3,_,_,
  _,_,_,_,_,_,1,_,_,
  _,6,_,3,_,_,_,_,_,
  3,_,7,_,_,1,_,4,6
]).

%?- data(X), sudoku(X)
% X = [9,3,6,8,4,7,1,2,5,5,7,4,2,1,3,9,8,6,2,8,1,6,5,9,7,4,3,6,9,3,4,7,1,8,5,2,8,2,7,9,6,5,3,1,4,1,4,5,3,8,2,6,7,9,7,6,2,1,9,4,5,3,8,3,1,8,5,2,6,4,9,7,4,5,9,7,3,8,2,6,1]
% X = [3,2,5,6,7,1,9,4,8,4,1,8,3,5,9,6,2,7,7,9,6,8,2,4,1,5,3,1,6,9,4,3,7,2,8,5,2,7,4,9,8,5,3,1,6,5,8,3,1,6,2,7,9,4,6,5,1,7,9,8,4,3,2,8,4,7,2,1,3,5,6,9,9,3,2,5,4,6,8,7,1]
% X = [6,9,3,8,7,4,2,1,5,8,1,4,2,9,5,6,3,7,5,7,2,1,3,6,4,9,8,1,3,8,6,2,9,5,7,4,7,4,6,5,1,3,9,8,2,2,5,9,7,4,8,3,6,1,9,8,5,4,6,7,1,2,3,4,6,1,3,8,2,7,5,9,3,2,7,9,5,1,8,4,6]
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- sudoku(X)'), nl, '$pj_reset', catch(( ( sudoku(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- data(X), sudoku(X)'), nl, '$pj_reset', catch(( ( data(X), sudoku(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%-------------------------------------------- 24 projog_concepts_getting_started
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
%------------------------------------------ 25 projog_concepts_prolog_arithmetic
%?- X is 45345
% X=45345

%?- X is -876878
% X=-876878

%?- X is 2+1
% X=3

%?- X is 12-5
% X=7

%?- X is 6*7
% X=42

%?- X is 6/2
% X=3

%?- X is 6//2
% X=3

%?- X is 7/2
% X=3.5

%?- X is 7//2
% X=3

%?- X is 7 * 4 // 2
% X=14

%?- X is 5 mod 3
% X=2

%?- X is 2147483647 + 1
% X=2147483648

%?- X is -2147483648 - 1
% X=-2147483649

% The maximum integer value that can be represented is 9223372036854775807

%?- X is 9223372036854775807
% X=9223372036854775807

%?- X is 9223372036854775806 + 1
% X=9223372036854775807

%?- X is 9223372036854775806 + 2
% X=-9223372036854775808

% The minimum integer value that can be represented is -9223372036854775808

%?- X is -9223372036854775808
% X=-9223372036854775808

%?- X is -9223372036854775807 - 1
% X=-9223372036854775808

%?- X is -9223372036854775807 - 2
% X=9223372036854775807

% Prolog evaluates numerical expressions using the BODMAS rule to determine the order in which operations are performed.

%?- X is 1+2*3
% X=7

%?- X is 2*3+1
% X=7

%?- X is (1+2)*3
% X=9

%?- X is 2*(3+1)
% X=8

%?- X is -(4+6)
% X=-10

% Variables must be instantiated to numerical terms before they can be used in calculations.

%?- X is 1 + Y
%ERROR Cannot get Numeric for term: Y of type: VARIABLE

%?- Y = 4, X is 1 + Y
% Y=4
% X=5

%?- Y = 6-2, X is 1 + Y
% Y=6 - 2
% X=5

%?- Y = 2*4, X is -Y
% Y=2 * 4
% X=-8

% Examples of using decimal point numbers in calculations.

%?- X is 1.3 + 1.2
% X=2.5

%?- X is 1.3 + 1
% X=2.3

%?- X is 1 + 1.2
% X=2.2

%?- X is 3.5 - 1.25
% X=2.25

%?- X is 3.5 - 1
% X=2.5

%?- X is 3 - 1.25
% X=1.75

%?- X is -9.6
% X=-9.6

%?- Y = 9.6, X is -Y
% Y=9.6
% X=-9.6

%?- X is 6.3 * 2.75
% X=17.325

%?- X is 6.3 * 2
% X=12.6

%?- X is 6 * 2.75
% X=16.5

%?- X is 8.5 / 2.5
% X=3.4

%?- X is 8.5 / 2
% X=4.25

%?- X is 8 / 2.5
% X=3.2

%?- X is 5 mod 2
% X=1

%?- X is 5 mod -2
% X=-1

%?- X is -5 mod -2
% X=-1

%?- X is -5 mod 2
% X=1

%?- X is 5 rem 2
% X=1

%?- X is 5 rem -2
% X=1

%?- X is -5 rem -2
% X=-1

%?- X is -5 rem 2
% X=-1

%?- X is 2 mod -5
% X=-3

%?- X is 2 rem -5
% X=2

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X is 45345'), nl, '$pj_reset', catch(( ( X is 45345 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X is -876878'), nl, '$pj_reset', catch(( ( X is -876878 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X is 2+1'), nl, '$pj_reset', catch(( ( X is 2+1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- X is 12-5'), nl, '$pj_reset', catch(( ( X is 12-5 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- X is 6*7'), nl, '$pj_reset', catch(( ( X is 6*7 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- X is 6/2'), nl, '$pj_reset', catch(( ( X is 6/2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- X is 6//2'), nl, '$pj_reset', catch(( ( X is 6//2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- X is 7/2'), nl, '$pj_reset', catch(( ( X is 7/2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- X is 7//2'), nl, '$pj_reset', catch(( ( X is 7//2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- X is 7 * 4 // 2'), nl, '$pj_reset', catch(( ( X is 7 * 4 // 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- X is 5 mod 3'), nl, '$pj_reset', catch(( ( X is 5 mod 3 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- X is 2147483647 + 1'), nl, '$pj_reset', catch(( ( X is 2147483647 + 1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- X is -2147483648 - 1'), nl, '$pj_reset', catch(( ( X is -2147483648 - 1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- X is 9223372036854775807'), nl, '$pj_reset', catch(( ( X is 9223372036854775807 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_q'(15) :- write('?- X is 9223372036854775806 + 1'), nl, '$pj_reset', catch(( ( X is 9223372036854775806 + 1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(15).
'$pj_q'(16) :- write('?- X is 9223372036854775806 + 2'), nl, '$pj_reset', catch(( ( X is 9223372036854775806 + 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(16).
'$pj_q'(17) :- write('?- X is -9223372036854775808'), nl, '$pj_reset', catch(( ( X is -9223372036854775808 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(17).
'$pj_q'(18) :- write('?- X is -9223372036854775807 - 1'), nl, '$pj_reset', catch(( ( X is -9223372036854775807 - 1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(18).
'$pj_q'(19) :- write('?- X is -9223372036854775807 - 2'), nl, '$pj_reset', catch(( ( X is -9223372036854775807 - 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(19).
'$pj_q'(20) :- write('?- X is 1+2*3'), nl, '$pj_reset', catch(( ( X is 1+2*3 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(20).
'$pj_q'(21) :- write('?- X is 2*3+1'), nl, '$pj_reset', catch(( ( X is 2*3+1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(21).
'$pj_q'(22) :- write('?- X is (1+2)*3'), nl, '$pj_reset', catch(( ( X is (1+2)*3 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(22).
'$pj_q'(23) :- write('?- X is 2*(3+1)'), nl, '$pj_reset', catch(( ( X is 2*(3+1) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(23).
'$pj_q'(24) :- write('?- X is -(4+6)'), nl, '$pj_reset', catch(( ( X is -(4+6) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(24).
'$pj_q'(25) :- write('?- X is 1 + Y'), nl, '$pj_reset', catch(( ( X is 1 + Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(25).
'$pj_q'(26) :- write('?- Y = 4, X is 1 + Y'), nl, '$pj_reset', catch(( ( Y = 4, X is 1 + Y ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(26).
'$pj_q'(27) :- write('?- Y = 6-2, X is 1 + Y'), nl, '$pj_reset', catch(( ( Y = 6-2, X is 1 + Y ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(27).
'$pj_q'(28) :- write('?- Y = 2*4, X is -Y'), nl, '$pj_reset', catch(( ( Y = 2*4, X is -Y ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(28).
'$pj_q'(29) :- write('?- X is 1.3 + 1.2'), nl, '$pj_reset', catch(( ( X is 1.3 + 1.2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(29).
'$pj_q'(30) :- write('?- X is 1.3 + 1'), nl, '$pj_reset', catch(( ( X is 1.3 + 1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(30).
'$pj_q'(31) :- write('?- X is 1 + 1.2'), nl, '$pj_reset', catch(( ( X is 1 + 1.2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(31).
'$pj_q'(32) :- write('?- X is 3.5 - 1.25'), nl, '$pj_reset', catch(( ( X is 3.5 - 1.25 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(32).
'$pj_q'(33) :- write('?- X is 3.5 - 1'), nl, '$pj_reset', catch(( ( X is 3.5 - 1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(33).
'$pj_q'(34) :- write('?- X is 3 - 1.25'), nl, '$pj_reset', catch(( ( X is 3 - 1.25 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(34).
'$pj_q'(35) :- write('?- X is -9.6'), nl, '$pj_reset', catch(( ( X is -9.6 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(35).
'$pj_q'(36) :- write('?- Y = 9.6, X is -Y'), nl, '$pj_reset', catch(( ( Y = 9.6, X is -Y ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(36).
'$pj_q'(37) :- write('?- X is 6.3 * 2.75'), nl, '$pj_reset', catch(( ( X is 6.3 * 2.75 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(37).
'$pj_q'(38) :- write('?- X is 6.3 * 2'), nl, '$pj_reset', catch(( ( X is 6.3 * 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(38).
'$pj_q'(39) :- write('?- X is 6 * 2.75'), nl, '$pj_reset', catch(( ( X is 6 * 2.75 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(39).
'$pj_q'(40) :- write('?- X is 8.5 / 2.5'), nl, '$pj_reset', catch(( ( X is 8.5 / 2.5 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(40).
'$pj_q'(41) :- write('?- X is 8.5 / 2'), nl, '$pj_reset', catch(( ( X is 8.5 / 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(41).
'$pj_q'(42) :- write('?- X is 8 / 2.5'), nl, '$pj_reset', catch(( ( X is 8 / 2.5 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(42).
'$pj_q'(43) :- write('?- X is 5 mod 2'), nl, '$pj_reset', catch(( ( X is 5 mod 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(43).
'$pj_q'(44) :- write('?- X is 5 mod -2'), nl, '$pj_reset', catch(( ( X is 5 mod -2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(44).
'$pj_q'(45) :- write('?- X is -5 mod -2'), nl, '$pj_reset', catch(( ( X is -5 mod -2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(45).
'$pj_q'(46) :- write('?- X is -5 mod 2'), nl, '$pj_reset', catch(( ( X is -5 mod 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(46).
'$pj_q'(47) :- write('?- X is 5 rem 2'), nl, '$pj_reset', catch(( ( X is 5 rem 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(47).
'$pj_q'(48) :- write('?- X is 5 rem -2'), nl, '$pj_reset', catch(( ( X is 5 rem -2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(48).
'$pj_q'(49) :- write('?- X is -5 rem -2'), nl, '$pj_reset', catch(( ( X is -5 rem -2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(49).
'$pj_q'(50) :- write('?- X is -5 rem 2'), nl, '$pj_reset', catch(( ( X is -5 rem 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(50).
'$pj_q'(51) :- write('?- X is 2 mod -5'), nl, '$pj_reset', catch(( ( X is 2 mod -5 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(51).
'$pj_q'(52) :- write('?- X is 2 rem -5'), nl, '$pj_reset', catch(( ( X is 2 rem -5 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(52).
'$pj_main' :- between(1, 52, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------------------------------------------- 26 projog_concepts_prolog_debugging
p2(1).
p2(2).
p2(3).

p(a).
p(b) :- p2(3).
p(c).

p(x, y).

% Enable exhaustive tracing.

%TRUE trace

% Run queries - note debug information for both p and p2.

%?- p(X)
%OUTPUT
%[1] CALL p(X)
%[1] EXIT p(a)
%
%OUTPUT
% X=a
%OUTPUT
%[1] REDO p(a)
%[2] CALL p2(3)
%[2] EXIT p2(3)
%[1] EXIT p(b)
%
%OUTPUT
% X=b
%OUTPUT
%[1] REDO p(b)
%[1] EXIT p(c)
%
%OUTPUT
% X=c

%?- p(d)
%OUTPUT
%[1] CALL p(d)
%[1] FAIL p(d)
%
%OUTPUT

% Disable exhaustive tracing.

%TRUE notrace

% Re-run same queries - note no debug information.

%?- p(X)
% X=a
% X=b
% X=c

%FAIL p(d)

% Add spypoint

%TRUE debugging

%TRUE spy(p)

%?- debugging
%OUTPUT
%p/1
%p/2
%
%OUTPUT
%YES

% Run query - note debug information for p only.

%?- p(X)
%OUTPUT
%[1] CALL p(X)
%[1] EXIT p(a)
%
%OUTPUT
% X=a
%OUTPUT
%[1] REDO p(a)
%[1] EXIT p(b)
%
%OUTPUT
% X=b
%OUTPUT
%[1] REDO p(b)
%[1] EXIT p(c)
%
%OUTPUT
% X=c

%?- p(d)
%OUTPUT
%[1] CALL p(d)
%[1] FAIL p(d)
%
%OUTPUT

% Remove spypoint.

%TRUE nospy(p)

%TRUE debugging

% Add spypoints then remove all of them at once with 'nodebug'.

%TRUE spy(p)
%TRUE spy(p2)
%?- debugging
%OUTPUT
%p/1
%p/2
%p2/1
%
%OUTPUT
%YES
%TRUE nodebug
%TRUE debugging

% If you provide "spy" with an atom it will apply spypoints to all predicates with that name.
% To be more specific you can provide a structure in order to only apply a spypoint for the predicate with both the specified name (functor) and number of arguments (arity).

%TRUE spy('/'(p,1))

%?- debugging
%OUTPUT
%p/1
%
%OUTPUT
%YES

%TRUE nodebug

% Spy points can only be applied to atoms and structures

%?- spy(1)
%ERROR Expected an atom or a structure but got a INTEGER with value: 1

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(X)'), nl, '$pj_reset', catch(( ( p(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(d)'), nl, '$pj_reset', catch(( ( p(d) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- p(X)'), nl, '$pj_reset', catch(( ( p(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- debugging'), nl, '$pj_reset', catch(( ( debugging ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p(X)'), nl, '$pj_reset', catch(( ( p(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- p(d)'), nl, '$pj_reset', catch(( ( p(d) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- debugging'), nl, '$pj_reset', catch(( ( debugging ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- debugging'), nl, '$pj_reset', catch(( ( debugging ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- spy(1)'), nl, '$pj_reset', catch(( ( spy(1) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_main' :- between(1, 9, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------- 27 projog_concepts_prolog_introduction
% Facts.
father(homer,bart).
father(homer,lisa).
father(homer,maggie).

mother(marge,bart).
mother(marge,lisa).
mother(marge,maggie).

father(ned,rod).
father(ned,todd).

male(homer).
male(bart).
male(ned).
male(rod).
male(todd).

% Rules.
parents(F,M,C) :- father(F,C), mother(M,C).

siblings(A,B) :- parents(F,M,A), parents(F,M,B).
brother(A,B) :- siblings(A,B), male(B).

% Simple questions - true if the fact exists in the knowledge base, else false.

%TRUE father(homer,bart)
%TRUE father(homer,lisa)
%TRUE father(homer,maggie)
%FAIL father(homer,rod)
%FAIL father(homer,ralph)

% Question using a variable.

%?- father(homer,C)
% C=bart
% C=lisa
% C=maggie

%?- father(ned,C)
% C=rod
% C=todd

% Question using two variables - evaluation of the query uses backtracking to find multiple solutions.

%?- father(F,C)
% F=homer
% C=bart
% F=homer
% C=lisa
% F=homer
% C=maggie
% F=ned
% C=rod
% F=ned
% C=todd

%?- parents(homer,marge,C)
% C=bart
% C=lisa
% C=maggie

%?- brother(lisa,X)
% X=bart
%NO
%?- brother(bart,X)
% X=bart
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- father(homer,C)'), nl, '$pj_reset', catch(( ( father(homer,C) ), write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- father(ned,C)'), nl, '$pj_reset', catch(( ( father(ned,C) ), write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- father(F,C)'), nl, '$pj_reset', catch(( ( father(F,C) ), write('F = '), writeq(F), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- parents(homer,marge,C)'), nl, '$pj_reset', catch(( ( parents(homer,marge,C) ), write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- brother(lisa,X)'), nl, '$pj_reset', catch(( ( brother(lisa,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- brother(bart,X)'), nl, '$pj_reset', catch(( ( brother(bart,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_main' :- between(1, 6, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%----------------------------------------------- 28 projog_concepts_prolog_lists
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
%------------------------------------- 29 projog_concepts_prolog_term_comparison
% Examples of comparing a uninstantiated variable to a whole number.

%?- X @< 2
% X=UNINSTANTIATED VARIABLE

%FAIL 2 @< X

%?- X @=< 2
% X=UNINSTANTIATED VARIABLE

%FAIL 2 @=< X

%FAIL X @> 2

%?- 2 @> X
% X=UNINSTANTIATED VARIABLE

%FAIL X @>= 2

%?- 2 @>= X
% X=UNINSTANTIATED VARIABLE

% Examples of comparing a uninstantiated variable to an atom.

%?- X @< atom
% X=UNINSTANTIATED VARIABLE

%FAIL atom @< X

%?- X @=< atom
% X=UNINSTANTIATED VARIABLE

%FAIL atom @=< X

%FAIL X @> atom

%?- atom @> X
% X=UNINSTANTIATED VARIABLE

%FAIL X @>= atom

%?- atom @>= X
% X=UNINSTANTIATED VARIABLE

% Examples of comparing a uninstantiated variable to a structure.

%?- X @< structure(a,b,c)
% X=UNINSTANTIATED VARIABLE

%FAIL structure(a,b,c) @< X

%?- X @=< structure(a,b,c)
% X=UNINSTANTIATED VARIABLE

%FAIL structure(a,b,c) @=< X

%FAIL X @> structure(a,b,c)

%?- structure(a,b,c) @> X
% X=UNINSTANTIATED VARIABLE

%FAIL X @>= structure(a,b,c)

%?- structure(a,b,c) @>= X
% X=UNINSTANTIATED VARIABLE

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X @< 2'), nl, '$pj_reset', catch(( ( X @< 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X @=< 2'), nl, '$pj_reset', catch(( ( X @=< 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- 2 @> X'), nl, '$pj_reset', catch(( ( 2 @> X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- 2 @>= X'), nl, '$pj_reset', catch(( ( 2 @>= X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- X @< atom'), nl, '$pj_reset', catch(( ( X @< atom ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- X @=< atom'), nl, '$pj_reset', catch(( ( X @=< atom ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- atom @> X'), nl, '$pj_reset', catch(( ( atom @> X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- atom @>= X'), nl, '$pj_reset', catch(( ( atom @>= X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- X @< structure(a,b,c)'), nl, '$pj_reset', catch(( ( X @< structure(a,b,c) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- X @=< structure(a,b,c)'), nl, '$pj_reset', catch(( ( X @=< structure(a,b,c) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- structure(a,b,c) @> X'), nl, '$pj_reset', catch(( ( structure(a,b,c) @> X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- structure(a,b,c) @>= X'), nl, '$pj_reset', catch(( ( structure(a,b,c) @>= X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_main' :- between(1, 12, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%----------------------------------------- 30 projog_concepts_prolog_unification
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
%---------------------------------------------------- 31 projog_miscellaneous_10
% try to replace W,X,Y,Z and T variables with '_' - no longer works

qwerty1(L1, L2) :- L1=L2.
%?- qwerty1([a,B,c], [A,b(A,x),c])
% A=a
% B=b(a, x)

qwerty2(L1,L2) :- L1=[W,b(X,Y),Z], L1=L2.
%?- qwerty2([a,B,c], [A,b(A,x),c])
% A=a
% B=b(a, x)

qwerty3(L1,L2) :- L1=L2, L1=[W,b(X,Y),Z].
%?- qwerty3([a,B,c], [A,b(A,x),c])
% A=a
% B=b(a, x)

%?- L1=[a,B,c], L2=[A,b(A,x),c], L1=[_,b(T,x),_], L1=L2
% A=a
% B=b(a, x)
% L1=[a,b(a, x),c]
% L2=[a,b(a, x),c]
% T=a

qwerty4(P1,P2) :- P1=p(W,b(X,Y),Z), P1=P2.
%?- qwerty4(p(a,B,c), p(A,b(A,x),c))
% A=a
% B=b(a, x)

%?- P1=p(a,B,c), P2=p(A,b(A,x),c), P1=p(_,b(T,x),_), P1=P2
% A=a
% B=b(a, x)
% P1=p(a, b(a, x), c)
% P2=p(a, b(a, x), c)
% T=a

qwerty5(L1,L2) :- L1=[Q,b(X,Y),Z], L1=L2.
%?- qwerty5([a,B,c], [A,b(A,x),c])
% A=a
% B=b(a, x)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- qwerty1([a,B,c], [A,b(A,x),c])'), nl, '$pj_reset', catch(( ( qwerty1([a,B,c], [A,b(A,x),c]) ), write('B = '), writeq(B), nl, write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- qwerty2([a,B,c], [A,b(A,x),c])'), nl, '$pj_reset', catch(( ( qwerty2([a,B,c], [A,b(A,x),c]) ), write('B = '), writeq(B), nl, write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- qwerty3([a,B,c], [A,b(A,x),c])'), nl, '$pj_reset', catch(( ( qwerty3([a,B,c], [A,b(A,x),c]) ), write('B = '), writeq(B), nl, write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- L1=[a,B,c], L2=[A,b(A,x),c], L1=[_,b(T,x),_], L1=L2'), nl, '$pj_reset', catch(( ( L1=[a,B,c], L2=[A,b(A,x),c], L1=[_,b(T,x),_], L1=L2 ), write('L1 = '), writeq(L1), nl, write('B = '), writeq(B), nl, write('L2 = '), writeq(L2), nl, write('A = '), writeq(A), nl, write('T = '), writeq(T), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- qwerty4(p(a,B,c), p(A,b(A,x),c))'), nl, '$pj_reset', catch(( ( qwerty4(p(a,B,c), p(A,b(A,x),c)) ), write('B = '), writeq(B), nl, write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- P1=p(a,B,c), P2=p(A,b(A,x),c), P1=p(_,b(T,x),_), P1=P2'), nl, '$pj_reset', catch(( ( P1=p(a,B,c), P2=p(A,b(A,x),c), P1=p(_,b(T,x),_), P1=P2 ), write('P1 = '), writeq(P1), nl, write('B = '), writeq(B), nl, write('P2 = '), writeq(P2), nl, write('A = '), writeq(A), nl, write('T = '), writeq(T), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- qwerty5([a,B,c], [A,b(A,x),c])'), nl, '$pj_reset', catch(( ( qwerty5([a,B,c], [A,b(A,x),c]) ), write('B = '), writeq(B), nl, write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_main' :- between(1, 7, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 32 projog_miscellaneous_11
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
%---------------------------------------------------- 33 projog_miscellaneous_12
x1(W,Z) :- W is 1, Z is 2.

%FAIL x1(X,X)
%?- x1(X,Y)
% X=1
% Y=2

x2(W,Z) :- W is 1, Z == 1.

%?- x2(X,X)
% X=1
%FAIL x2(X,Y)

x3(X, Y) :- X = Y, x1(X,Y).
%FAIL x3(X,X)
%FAIL x3(X,Y)

x4(X, Y) :- X = Y, x2(X,Y).
%?- x4(X,Y)
% X=1
% Y=1
%?- x4(X,X)
% X=1

%?- X=Y, x2(X,Y)
% X=1
% Y=1

%?- Y=X, x2(X,Y)
% X=1
% Y=1

q(1).
q(2).
q(3).

x5(X, Y) :- X = Y, q(X).

%?- x5(X,Y)
% X=1
% Y=1
% X=2
% Y=2
% X=3
% Y=3

%?- x5(X,X)
% X=1
% X=2
% X=3

x6(X, Y) :- X = Y, q(Y).

%?- x6(X,Y)
% X=1
% Y=1
% X=2
% Y=2
% X=3
% Y=3

%?- x6(X,X)
% X=1
% X=2
% X=3

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x1(X,Y)'), nl, '$pj_reset', catch(( ( x1(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- x2(X,X)'), nl, '$pj_reset', catch(( ( x2(X,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- x4(X,Y)'), nl, '$pj_reset', catch(( ( x4(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- x4(X,X)'), nl, '$pj_reset', catch(( ( x4(X,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- X=Y, x2(X,Y)'), nl, '$pj_reset', catch(( ( X=Y, x2(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- Y=X, x2(X,Y)'), nl, '$pj_reset', catch(( ( Y=X, x2(X,Y) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- x5(X,Y)'), nl, '$pj_reset', catch(( ( x5(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- x5(X,X)'), nl, '$pj_reset', catch(( ( x5(X,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- x6(X,Y)'), nl, '$pj_reset', catch(( ( x6(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- x6(X,X)'), nl, '$pj_reset', catch(( ( x6(X,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_main' :- between(1, 10, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 34 projog_miscellaneous_13
q(1).
q(2).
q(3).

x(X, Y) :- q(X), q(Y).

%?- x(Z,Z)
% Z=1
% Z=2
% Z=3

%?- x(A,B)
% A=1
% B=1
% A=1
% B=2
% A=1
% B=3
% A=2
% B=1
% A=2
% B=2
% A=2
% B=3
% A=3
% B=1
% A=3
% B=2
% A=3
% B=3

% test having anonymous variables ('_') in query arguments

%?- x(_,_)
%YES
%YES
%YES
%YES
%YES
%YES
%YES
%YES
%YES

qwerty :- X=Y, q(X), q(Y).
%?- qwerty
%YES
%YES
%YES

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x(Z,Z)'), nl, '$pj_reset', catch(( ( x(Z,Z) ), write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- x(A,B)'), nl, '$pj_reset', catch(( ( x(A,B) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- x(_,_)'), nl, '$pj_reset', catch(( ( x(_,_) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- qwerty'), nl, '$pj_reset', catch(( ( qwerty ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_main' :- between(1, 4, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 35 projog_miscellaneous_14
x(q(1)).
x(q(2)).
x(q(3)).

qwerty(X,Y) :- X=Y, x(q(X)), x(q(Y)).
%?- qwerty(X,Y)
% X=1
% Y=1
% X=2
% Y=2
% X=3
% Y=3

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- qwerty(X,Y)'), nl, '$pj_reset', catch(( ( qwerty(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 36 projog_miscellaneous_15
append2([],Ys,Ys) :-  true.
append1([X|Xs],Ys,[X|Zs]) :- append2(Xs,Ys,Zs).

%?- append1([X],[p(X)],[a,Y])
% X=a
% Y=p(a)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- append1([X],[p(X)],[a,Y])'), nl, '$pj_reset', catch(( ( append1([X],[p(X)],[a,Y]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 37 projog_miscellaneous_16
p(1).
p(I) :- I is 1*1+1/1.
p(3).

test1(X, Y) :- X = A, B = Y, p(X), p(Y), X=Y.
test1(X, Y) :- X = A, B = Y, p(A), p(B), X=Y.
test1(X, Y) :- X = A, B = Y, p(X), p(B), X=B.
test1(X, Y) :- X = A, B = Y, p(X), p(B), B=A.

test2(X, Y) :- X = A, p(X), B = Y, p(Y), X=Y.
test2(X, Y) :- X = A, p(A), B = Y, p(B), X=Y.
test2(X, Y) :- X = A, p(X), B = Y, p(B), X=B.
test2(X, Y) :- X = A, p(X), B = Y, p(B), B=A.

test3(X, Y) :- x(a(b(X,2,[a,b|B]))) = x(a(b(A,2,[a,b|Y]))), p(X), p(Y), X=Y, p(X), p(Y), p(A), p(B).
test3(X, Y) :- x(a(b(X,2,[a,b|B]))) = x(a(b(A,2,[a,b|Y]))), p(A), p(B), X=Y, p(A), p(B), p(X), p(Y).
test3(X, Y) :- x(a(b(X,2,[a,b|B]))) = x(a(b(A,2,[a,b|Y]))), p(X), p(B), X=B, p(A), p(X), p(B), p(Y).
test3(X, Y) :- x(a(b(X,2,[a,b|B]))) = x(a(b(A,2,[a,b|Y]))), p(X), p(B), B=A, p(Y), p(B), p(X), p(A).

test4(X, Y) :- X = A, B = Y, X=Y, p(X), p(Y).
test4(X, Y) :- X = A, B = Y, X=Y, p(A), p(B).
test4(X, Y) :- X = A, B = Y, X=B, p(X), p(B).
test4(X, Y) :- X = A, B = Y, B=A, p(X), p(B).

test5(X, Y) :- X=Y, X = A, B = Y, p(X), p(Y).
test5(X, Y) :- X=Y, X = A, B = Y, p(A), p(B).
test5(X, Y) :- X=B, X = A, B = Y, p(X), p(B).
test5(X, Y) :- B=A, X = A, B = Y, p(X), p(B).

test6(X, Y) :- p(X), p(Y), X=Y, X = A, B = Y.
test6(X, Y) :- p(A), p(B), X=Y, X = A, B = Y.
test6(X, Y) :- p(X), p(B), X=B, X = A, B = Y.
test6(X, Y) :- p(X), p(B), B=A, X = A, B = Y.

%FAIL test1(1,2)
%FAIL test1(W,5)

%FAIL test2(1,2)
%FAIL test2(W,5)

%FAIL test3(1,2)
%FAIL test3(W,5)

%FAIL test4(1,2)
%FAIL test4(W,5)

%FAIL test5(1,2)
%FAIL test5(W,5)

%FAIL test6(1,2)
%FAIL test6(W,5)

%?- test1(W,1)
% W=1
% W=1
% W=1
% W=1
%NO

%?- test1(2,W)
% W=2
% W=2
% W=2
% W=2
%NO

%?- test2(W,1)
% W=1
% W=1
% W=1
% W=1
%NO

%?- test2(2,W)
% W=2
% W=2
% W=2
% W=2
%NO

%?- test3(W,1)
% W=1
% W=1
% W=1
% W=1
%NO

%?- test3(2,W)
% W=2
% W=2
% W=2
% W=2
%NO

%?- test4(W,1)
% W=1
% W=1
% W=1
% W=1
%NO

%?- test4(2,W)
% W=2
% W=2
% W=2
% W=2
%NO

%?- test5(W,1)
% W=1
% W=1
% W=1
% W=1
%NO

%?- test5(2,W)
% W=2
% W=2
% W=2
% W=2
%NO

%?- test6(W,1)
% W=1
% W=1
% W=1
% W=1
%NO

%?- test6(2,W)
% W=2
% W=2
% W=2
% W=2
%NO

%?- test1(W,Z)
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3

%?- test2(W,Z)
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3

%?- test3(W,Z)
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3

%?- test4(W,Z)
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3

%?- test5(W,Z)
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3

%?- test6(W,Z)
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test1(W,1)'), nl, '$pj_reset', catch(( ( test1(W,1) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- test1(2,W)'), nl, '$pj_reset', catch(( ( test1(2,W) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- test2(W,1)'), nl, '$pj_reset', catch(( ( test2(W,1) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- test2(2,W)'), nl, '$pj_reset', catch(( ( test2(2,W) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- test3(W,1)'), nl, '$pj_reset', catch(( ( test3(W,1) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- test3(2,W)'), nl, '$pj_reset', catch(( ( test3(2,W) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- test4(W,1)'), nl, '$pj_reset', catch(( ( test4(W,1) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- test4(2,W)'), nl, '$pj_reset', catch(( ( test4(2,W) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- test5(W,1)'), nl, '$pj_reset', catch(( ( test5(W,1) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- test5(2,W)'), nl, '$pj_reset', catch(( ( test5(2,W) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- test6(W,1)'), nl, '$pj_reset', catch(( ( test6(W,1) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- test6(2,W)'), nl, '$pj_reset', catch(( ( test6(2,W) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- test1(W,Z)'), nl, '$pj_reset', catch(( ( test1(W,Z) ), write('W = '), writeq(W), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- test2(W,Z)'), nl, '$pj_reset', catch(( ( test2(W,Z) ), write('W = '), writeq(W), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_q'(15) :- write('?- test3(W,Z)'), nl, '$pj_reset', catch(( ( test3(W,Z) ), write('W = '), writeq(W), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(15).
'$pj_q'(16) :- write('?- test4(W,Z)'), nl, '$pj_reset', catch(( ( test4(W,Z) ), write('W = '), writeq(W), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(16).
'$pj_q'(17) :- write('?- test5(W,Z)'), nl, '$pj_reset', catch(( ( test5(W,Z) ), write('W = '), writeq(W), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(17).
'$pj_q'(18) :- write('?- test6(W,Z)'), nl, '$pj_reset', catch(( ( test6(W,Z) ), write('W = '), writeq(W), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(18).
'$pj_main' :- between(1, 18, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 38 projog_miscellaneous_17
p(p(p(1))).
p(p(p(2))).
p(p(p(3))).

test1(X,Y) :- X=A, B=Y, Y=3, C=p(A), p(C).
test1(X,Y) :- X=A, B=Y, C=p(A), Y=2, p(C).

%?- test1(p(X), X)
% X=3
% X=2

p2(I) :- I=I2, p(p(p(I2))), 1 is I mod 2.

test2(V, W, X, Y, Z) :- A=p(X), p(Y)=B, p(A)=C, D=p(B), p(C), p(D), p(Z)=C, p2(T), W is X, C=D, V is T*T.

test3(X,Y) :- A=Y, Y=B, test2(X, A, Y, B, p(B)).
%?- test3(X, Y)
% X=1
% Y=1
% X=9
% Y=1
% X=1
% Y=2
% X=9
% Y=2
% X=1
% Y=3
% X=9
% Y=3

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test1(p(X), X)'), nl, '$pj_reset', catch(( ( test1(p(X), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- test3(X, Y)'), nl, '$pj_reset', catch(( ( test3(X, Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 39 projog_miscellaneous_18
p(1).
p(2).
p(3).
p(4).
p(5).

test(V) :- p(T), V is T*T.

%?- test(X)
% X=1
% X=4
% X=9
% X=16
% X=25

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test(X)'), nl, '$pj_reset', catch(( ( test(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%----------------------------------------------------- 40 projog_miscellaneous_2
% simple example of query of an implication giving many results
%?- father(C,F)
% F=tom
% C=harry
% F=fred
% C=john
% F=fred
% C=mary
%?- parent(C,M,F)
% M=ann
% F=fred
% C=john
% M=ann
% F=fred
% C=mary
% M=jane
% F=tom
% C=harry

female(mary).
mother(john,ann).
mother(mary,ann).
mother(harry,jane).
father(harry,tom).
father(john,fred).
father(mary,fred).
parent(C,M,F) :- mother(C,M),father(C,F).

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- father(C,F)'), nl, '$pj_reset', catch(( ( father(C,F) ), write('C = '), writeq(C), nl, write('F = '), writeq(F), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- parent(C,M,F)'), nl, '$pj_reset', catch(( ( parent(C,M,F) ), write('C = '), writeq(C), nl, write('M = '), writeq(M), nl, write('F = '), writeq(F), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 41 projog_miscellaneous_20
test1 :- true, !.
%TRUE test1

test2 :- false, !.
%FAIL test2

test3 :- true, true, true.
%TRUE test3

test4(_) :- true.
test4(_) :- true, !.
test4(_) :- true.
%?- test4(a)
%YES
%YES

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test4(a)'), nl, '$pj_reset', catch(( ( test4(a) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 42 projog_miscellaneous_21
test1(X, Y) :- X = Y.

%?- test1(X,X)
% X=UNINSTANTIATED VARIABLE

%?- test1(X,Y)
% X=UNINSTANTIATED VARIABLE
% Y=UNINSTANTIATED VARIABLE

%?- test1(X,1)
% X=1

%?- test1(a,X)
% X=a

p(1).
p(2).
p(3).

test2(X, Y) :- p(X), p(Y).

%?- test2(X,Y)
% X=1
% Y=1
% X=1
% Y=2
% X=1
% Y=3
% X=2
% Y=1
% X=2
% Y=2
% X=2
% Y=3
% X=3
% Y=1
% X=3
% Y=2
% X=3
% Y=3

%?- test2(X,X)
% X=1
% X=2
% X=3

%?- test2(1,Y)
% Y=1
% Y=2
% Y=3

%TRUE test2(1,3)

test3(X, X) :- p(X), p(X).

%?- test3(X,Y)
% X=1
% Y=1
% X=2
% Y=2
% X=3
% Y=3

%?- test3(1,Y)
% Y=1

%TRUE test3(3,3)
%FAIL test3(1,3)

test4(X, Y) :- test1(X, Y), Y=1.
%TRUE test4(1,1)
%FAIL test4(2,2)
%?- test4(1,Y)
% Y=1
%?- test4(Y,1)
% Y=1
%?- test4(X,Y)
% X=1
% Y=1

test5(X, Y) :- test1(X, Y), X=1.
%TRUE test5(1,1)
%FAIL test5(2,2)
%?- test5(1,Y)
% Y=1
%?- test5(Y,1)
% Y=1
%?- test5(X,Y)
% X=1
% Y=1

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test1(X,X)'), nl, '$pj_reset', catch(( ( test1(X,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- test1(X,Y)'), nl, '$pj_reset', catch(( ( test1(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- test1(X,1)'), nl, '$pj_reset', catch(( ( test1(X,1) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- test1(a,X)'), nl, '$pj_reset', catch(( ( test1(a,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- test2(X,Y)'), nl, '$pj_reset', catch(( ( test2(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- test2(X,X)'), nl, '$pj_reset', catch(( ( test2(X,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- test2(1,Y)'), nl, '$pj_reset', catch(( ( test2(1,Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- test3(X,Y)'), nl, '$pj_reset', catch(( ( test3(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- test3(1,Y)'), nl, '$pj_reset', catch(( ( test3(1,Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- test4(1,Y)'), nl, '$pj_reset', catch(( ( test4(1,Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- test4(Y,1)'), nl, '$pj_reset', catch(( ( test4(Y,1) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- test4(X,Y)'), nl, '$pj_reset', catch(( ( test4(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- test5(1,Y)'), nl, '$pj_reset', catch(( ( test5(1,Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- test5(Y,1)'), nl, '$pj_reset', catch(( ( test5(Y,1) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_q'(15) :- write('?- test5(X,Y)'), nl, '$pj_reset', catch(( ( test5(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(15).
'$pj_main' :- between(1, 15, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 43 projog_miscellaneous_22
test_repeat(N).
test_repeat(N) :- N > 1, N1 is N-1, test_repeat(N1).

p(1).
p(10).
p(100).

q1('q').
q1('w').
q1('e').
q1('r').
q1('t').
q1('y').
q1('a').

q2('a').
q2('s').
q2('d').
q2('f').
q2('g').
q2('h').
q2('i').

lastquery(X,Y,Z) :- F = 1, A = B, test_repeat(1), C = D, test_repeat(F), C = X, test_repeat(F), A = Y, test_repeat(F), E = A, F = B, p(D), Z is D + F.

%?- lastquery(X,Y,Z)
% X=1
% Y=1
% Z=2
% X=10
% Y=1
% Z=11
% X=100
% Y=1
% Z=101
%NO

test1(X) :- test2(X).

test2(999) :- fail.
test2(X) :- test3(X).
test2(X) :- X=999, X<999.
test2(X) :- X=999, !, X>999.
test2(999).

test3(X) :- test4(X), test4(X).

test4(X) :- Y = X, test5(Y).
test5(X) :- X = Y, test6(Y).
test6(X) :- test7(Y), X = Y.
test7(X) :- test9(Y), Y = X.

test9(X) :- test10(Z), A = B, B = X, Y = X, Y = Z.
test10(X) :- A = B, B = X, Y = X, Y = Z, test11(Z).
test11(X) :- test12(Z), A = B, B = X, Y = Z, Y = X.
test12(X) :- A = B, B = X, Y = Z, Y = X, test13(Z).
test13(X) :- test14(Z), A = B, Y = X, B = X, Y = Z.
test14(X) :- A = B, Y = X, B = X, Y = Z, test15(Z).
test15(X) :- test16(Z), A = B, Y = X, Y = Z, B = X.
test16(X) :- A = B, Y = X, Y = Z, B = X, test17(Z).
test17(X) :- test18(Z), A = B, Y = Z, B = X, Y = X.
test18(X) :- A = B, Y = Z, B = X, Y = X, test19(Z).
test19(X) :- test20(Z), A = B, Y = Z, Y = X, B = X.
test20(X) :- A = B, Y = Z, Y = X, B = X, test21(Z).
test21(X) :- test22(Z), B = X, A = B, Y = X, Y = Z.
test22(X) :- B = X, A = B, Y = X, Y = Z, test23(Z).
test23(X) :- test24(Z), B = X, A = B, Y = Z, Y = X.
test24(X) :- B = X, A = B, Y = Z, Y = X, test25(Z).
test25(X) :- test26(Z), B = X, Y = X, A = B, Y = Z.
test26(X) :- B = X, Y = X, A = B, Y = Z, test27(Z).
test27(X) :- test28(Z), B = X, Y = X, Y = Z, A = B.
test28(X) :- B = X, Y = X, Y = Z, A = B, test29(Z).
test29(X) :- test30(Z), B = X, Y = Z, A = B, Y = X.
test30(X) :- B = X, Y = Z, A = B, Y = X, test31(Z).
test31(X) :- test32(Z), B = X, Y = Z, Y = X, A = B.
test32(X) :- B = X, Y = Z, Y = X, A = B, test33(Z).
test33(X) :- test34(Z), Y = X, A = B, B = X, Y = Z.
test34(X) :- Y = X, A = B, B = X, Y = Z, test35(Z).
test35(X) :- test36(Z), Y = X, A = B, Y = Z, B = X.
test36(X) :- Y = X, A = B, Y = Z, B = X, test37(Z).
test37(X) :- test38(Z), Y = X, B = X, A = B, Y = Z.
test38(X) :- Y = X, B = X, A = B, Y = Z, test39(Z).
test39(X) :- test40(Z), Y = X, B = X, Y = Z, A = B.
test40(X) :- Y = X, B = X, Y = Z, A = B, test41(Z).
test41(X) :- test42(Z), Y = X, Y = Z, A = B, B = X.
test42(X) :- Y = X, Y = Z, A = B, B = X, test43(Z).
test43(X) :- test44(Z), Y = X, Y = Z, B = X, A = B.
test44(X) :- Y = X, Y = Z, B = X, A = B, test45(Z).
test45(X) :- test46(Z), Y = Z, A = B, B = X, Y = X.
test46(X) :- Y = Z, A = B, B = X, Y = X, test47(Z).
test47(X) :- test48(Z), Y = Z, A = B, Y = X, B = X.
test48(X) :- Y = Z, A = B, Y = X, B = X, test49(Z).
test49(X) :- test50(Z), Y = Z, B = X, A = B, Y = X.
test50(X) :- Y = Z, B = X, A = B, Y = X, test51(Z).
test51(X) :- test52(Z), Y = Z, B = X, Y = X, A = B.
test52(X) :- Y = Z, B = X, Y = X, A = B, test53(Z).
test53(X) :- test54(Z), Y = Z, Y = X, A = B, B = X.
test54(X) :- Y = Z, Y = X, A = B, B = X, test55(Z).
test55(X) :- test56(Z), Y = Z, Y = X, B = X, A = B.
test56(X) :- Y = Z, Y = X, B = X, A = B, test100(Z).

test100(X) :- [Y] = [Z], [Y] = [X], [B] = [X], [A] = [B], test101(Z).
test101(X) :- test102(Z), [Y] = [Z], [Y] = [X], [B] = [X], [A] = [B].
test102(X) :- [V1,Y] = [V2,Z], [Y,V4] = [X,V5], [B|V6] = [X|V7], [V8|A] = [V9,B], test103(Z).
test103(X) :- test104(Z), [V1,Y] = [V2,Z], [Y,V4] = [X,V5], [B|V6] = [X|V7], [V8|A] = [V9,B].
test104(X) :- p(p(a,b,c,[V1,Y,V2])) = p(p(a,b,c,[1,Z,2])), p(p(a,b,c,[1,2,Y])) = p(p(a,b,c,[1,2,X])), p(p(a,b,c,[B,2,3])) = p(p(a,b,c,[X,2,3])), p(A) = p(B), test105(Z).
test105(X) :- test999(Z), p(p(a,b,c,[V1,Y,V2])) = p(p(a,b,c,[1,Z,2])), p(p(a,b,c,[1,2,Y])) = p(p(a,b,c,[1,2,X])), p(p(a,b,c,[B,2,3])) = p(p(a,b,c,[X,2,3])), p(A) = p(B).

test999(X) :- lastquery(A, B, X).

%TRUE_NO test1(2)
%TRUE_NO test1(11)
%TRUE_NO test1(101)
%FAIL test1(3)

%?- test1(X)
% X=2
% X=11
% X=101
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- lastquery(X,Y,Z)'), nl, '$pj_reset', catch(( ( lastquery(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- test1(X)'), nl, '$pj_reset', catch(( ( test1(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 44 projog_miscellaneous_23
y(X,X).

x([a,b,c]).
x([q,w,e]).
x([x,y,x]).

p(X) :- x(Y), y(X,Y).

%?- p([A,B,e])
% A=q
% B=w
%NO

%?-  p([A,B,C])
% A=a
% B=b
% C=c
% A=q
% B=w
% C=e
% A=x
% B=y
% C=x

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p([A,B,e])'), nl, '$pj_reset', catch(( ( p([A,B,e]) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p([A,B,C])'), nl, '$pj_reset', catch(( ( p([A,B,C]) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 45 projog_miscellaneous_24
d(a).
d(b).
d(c).

p(X, X) :- d(_).

%FAIL p(x, y)
%?- p(z, X)
% X=z
% X=z
% X=z

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(z, X)'), nl, '$pj_reset', catch(( ( p(z, X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 46 projog_miscellaneous_25
p2(X,X).
p2([a,b,c],[q,w,e]).

%?- p2([a,b,c],[X,Y,Z])
% X=a
% Y=b
% Z=c
% X=q
% Y=w
% Z=e

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p2([a,b,c],[X,Y,Z])'), nl, '$pj_reset', catch(( ( p2([a,b,c],[X,Y,Z]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 47 projog_miscellaneous_26
p(p(1)).
p(p(2)).
p(p(3)).
x(L) :- L = p(X), p(L).

%?- x(A)
% A=p(1)
% A=p(2)
% A=p(3)

%TRUE x(p(1))
%TRUE x(p(2))
%TRUE x(p(3))

%FAIL x(p(4))

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x(A)'), nl, '$pj_reset', catch(( ( x(A) ), write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 48 projog_miscellaneous_28
n(1).
n(2).
n(3).

testE(X) :- n(C), X is C+1, X>2.

%?- testE(X)
% X=3
% X=4

n(1,2,3).
n(a,b,c).
n(x,y,x).

testM1(A,B,C,E) :- n(X,Y,Z), n(A,B,C), n(X,b,H), n(V,T,V), E=V.
testM2(A,B,C,E) :- n(X,Y,Z), n(A,B,C), n(X,b,C), n(V,T,V), E=V.

%?- testM1(A,B,C,E)
% A=1
% B=2
% C=3
% E=x
% A=a
% B=b
% C=c
% E=x
% A=x
% B=y
% C=x
% E=x
%NO

%?- testM2(A,B,C,E)
% A=a
% B=b
% C=c
% E=x
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- testE(X)'), nl, '$pj_reset', catch(( ( testE(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- testM1(A,B,C,E)'), nl, '$pj_reset', catch(( ( testM1(A,B,C,E) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write('E = '), writeq(E), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- testM2(A,B,C,E)'), nl, '$pj_reset', catch(( ( testM2(A,B,C,E) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write('E = '), writeq(E), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 49 projog_miscellaneous_29
concatenate([],L,L).
concatenate([X|L1],L2,[X|L3]) :- concatenate(L1,L2,L3).

data([a,b,c]).
data([x,y,z]).
data([1,2,3]).

test1(Q) :- data(X), concatenate([q,w,e,r,t,y],X,Q).

test2(Q) :- data(X), data(D), concatenate(D,X,Q).

% TODO remove cut from both of these queries and confirm still determines if re-evaluation should succeed

%?- test1(Q), !
% Q=[q,w,e,r,t,y,a,b,c]
%NO

%?- test2(Q), !
% Q=[a,b,c,a,b,c]
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test1(Q), !'), nl, '$pj_reset', catch(( ( test1(Q), ! ), write('Q = '), writeq(Q), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- test2(Q), !'), nl, '$pj_reset', catch(( ( test2(Q), ! ), write('Q = '), writeq(Q), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%----------------------------------------------------- 50 projog_miscellaneous_3
% same predicate name included twice in conjunction of implication
%?- a(X,Y)
% X=q
% Y=e
% X=r
% Y=e

w(q,i).
w(r,i).
w(e,o).
a(X,T) :- w(X,i), w(T,o).

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- a(X,Y)'), nl, '$pj_reset', catch(( ( a(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 51 projog_miscellaneous_30
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
%---------------------------------------------------- 52 projog_miscellaneous_31
a :- true, !, true, repeat(3).
a :- true.

%?- a
%YES
%YES
%YES
%NO

b :- true, repeat(3), !, repeat(3).
b :- true.

%?- b
%YES
%YES
%YES
%NO

c1 :- true, true, !.
c1 :- true.

c2 :- true, !, true.
c2 :- true.

c3 :- !, true, true.
c3 :- true.

c4 :- !, true, !, true.
c4 :- true.

c5 :- true, !, true, !.
c5 :- true.

c6 :- !, true, true, !.
c6 :- true.

c7 :- !, true, !, true, !.
c7 :- true.

c8 :- true, !.
c8 :- true.

c9 :- !, true.
c9 :- true.

c10 :- !.
c10 :- true.

%TRUE c1
%TRUE c2
%TRUE c3
%TRUE c4
%TRUE c5
%TRUE c6
%TRUE c7
%TRUE c8
%TRUE c9
%TRUE c10

d :- true, 1>2, !.
d :- true.

%TRUE d

e :- true, true, !, 1>2.
e :- true.

%FAIL e

f :- true, fail, !, 1>2.
f :- true.

%TRUE f

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- a'), nl, '$pj_reset', catch(( ( a ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- b'), nl, '$pj_reset', catch(( ( b ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 53 projog_miscellaneous_32
writeAndRepeat(N) :- write(N), nl.
writeAndRepeat(N) :- N > 1, N1 is N-1, writeAndRepeat(N1).

%?- writeAndRepeat(0)
%OUTPUT
%0
%
%OUTPUT
%YES
%NO

%?- writeAndRepeat(1)
%OUTPUT
%1
%
%OUTPUT
%YES
%NO

%?- writeAndRepeat(3)
%OUTPUT
%3
%
%OUTPUT
%YES
%OUTPUT
%2
%
%OUTPUT
%YES
%OUTPUT
%1
%
%OUTPUT
%YES
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- writeAndRepeat(0)'), nl, '$pj_reset', catch(( ( writeAndRepeat(0) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- writeAndRepeat(1)'), nl, '$pj_reset', catch(( ( writeAndRepeat(1) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- writeAndRepeat(3)'), nl, '$pj_reset', catch(( ( writeAndRepeat(3) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 54 projog_miscellaneous_33
x(A,B,C) :- C=A+B.
x(A,B,C) :- C=A-B.
x(A,B,C) :- C=A*B.
x(A,B,C) :- C=A/B.

a(A,B,C) :- x(A,B,D), C is D.

b(A,C) :- a(A,A,C).

%?- b(5,A)
% A=10
% A=0
% A=25
% A=1

%?- b(26//4-1,A)
% A=10
% A=0
% A=25
% A=1

%?- b(5.5,A)
% A=11.0
% A=0.0
% A=30.25
% A=1.0

%?- b(-(3*7.5),A)
% A=-45.0
% A=0.0
% A=506.25
% A=1.0

%?- a(9,3,A)
% A=12
% A=6
% A=27
% A=3

%?- a(10,2.5,A)
% A=12.5
% A=7.5
% A=25.0
% A=4.0

%?- a(25.5,12,A)
% A=37.5
% A=13.5
% A=306.0
% A=2.125

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- b(5,A)'), nl, '$pj_reset', catch(( ( b(5,A) ), write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- b(26//4-1,A)'), nl, '$pj_reset', catch(( ( b(26//4-1,A) ), write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- b(5.5,A)'), nl, '$pj_reset', catch(( ( b(5.5,A) ), write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- b(-(3*7.5),A)'), nl, '$pj_reset', catch(( ( b(-(3*7.5),A) ), write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- a(9,3,A)'), nl, '$pj_reset', catch(( ( a(9,3,A) ), write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- a(10,2.5,A)'), nl, '$pj_reset', catch(( ( a(10,2.5,A) ), write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- a(25.5,12,A)'), nl, '$pj_reset', catch(( ( a(25.5,12,A) ), write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_main' :- between(1, 7, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 55 projog_miscellaneous_35
and(A,B) :- A, B.
or(A,B) :- A; B.
true(X) :- X.

%FAIL and(fail, fail)
%FAIL and(true, fail)
%FAIL and(fail, true)
%TRUE and(true, true)

%FAIL or(fail, fail)
%TRUE_NO or(true, fail)
%TRUE or(fail, true)
%?- or(true, true)
%YES
%YES

%?- X=true, X
% X=true

%FAIL X=fail, X

%FAIL true(fail)
%TRUE true(true)
%?- true(repeat(3))
%YES
%YES
%YES

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- or(true, true)'), nl, '$pj_reset', catch(( ( or(true, true) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X=true, X'), nl, '$pj_reset', catch(( ( X=true, X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- true(repeat(3))'), nl, '$pj_reset', catch(( ( true(repeat(3)) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 56 projog_miscellaneous_36
x(X,Y,Z) :- Z is X mod Y.
x(X,Y,Z) :- Z is X rem Y.

%?- x(25, 7, X)
% X=4
% X=4

%?- x(25, -7, X)
% X=-3
% X=4

%?- x(-25, 7, X)
% X=3
% X=-4

%?- x(-25, -7, X)
% X=-4
% X=-4

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x(25, 7, X)'), nl, '$pj_reset', catch(( ( x(25, 7, X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- x(25, -7, X)'), nl, '$pj_reset', catch(( ( x(25, -7, X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- x(-25, 7, X)'), nl, '$pj_reset', catch(( ( x(-25, 7, X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- x(-25, -7, X)'), nl, '$pj_reset', catch(( ( x(-25, -7, X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_main' :- between(1, 4, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 57 projog_miscellaneous_37
%?- X = ~(1,2)
% X=~(1, 2)

%?- X = +(1,2)
% X=1 + 2

%?- X = +(1+2)
% X=+(1 + 2)

%?- X = 1+(1+2)
% X=1 + (1 + 2)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X = ~(1,2)'), nl, '$pj_reset', catch(( ( X = ~(1,2) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X = +(1,2)'), nl, '$pj_reset', catch(( ( X = +(1,2) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X = +(1+2)'), nl, '$pj_reset', catch(( ( X = +(1+2) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- X = 1+(1+2)'), nl, '$pj_reset', catch(( ( X = 1+(1+2) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_main' :- between(1, 4, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 58 projog_miscellaneous_38
e(X,Y, Z) :- X = 9223372036854775807, Y is X+Z.
e(X,Y, Z) :- X = -9223372036854775808, Y is X+Z.

%?- e(X, Y, 1)
% X=9223372036854775807
% Y=-9223372036854775808
% X=-9223372036854775808
% Y=-9223372036854775807

%?- e(X, Y, -1)
% X=9223372036854775807
% Y=9223372036854775806
% X=-9223372036854775808
% Y=9223372036854775807

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- e(X, Y, 1)'), nl, '$pj_reset', catch(( ( e(X, Y, 1) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- e(X, Y, -1)'), nl, '$pj_reset', catch(( ( e(X, Y, -1) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 59 projog_miscellaneous_39
%?- open('target/39test.pl', write, Z), set_output(Z), write('?- asserta(test).'), close(Z)
% Z=target/39test.pl_output_handle

%FAIL test

%?- consult('target/39test')
%ERROR Could not read prolog source from resource: target/39test

%TRUE consult('target/39test.pl')

%TRUE test

% test ensure_loaded adds ".pl" to resource if no file extension provided

%TRUE ensure_loaded('target/39test')

%?- test
%YES
%YES

%TRUE ensure_loaded('target/39test.pl')

%?- test
%YES
%YES

%?- ensure_loaded('target/doesntexist')
%ERROR Could not read prolog source from resource: target/doesntexist.pl

%?- ensure_loaded('target/39test.pro')
%ERROR Could not read prolog source from resource: target/39test.pro

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- open(\'target/39test.pl\', write, Z), set_output(Z), write(\'?- asserta(test).\'), close(Z)'), nl, '$pj_reset', catch(( ( open('target/39test.pl', write, Z), set_output(Z), write('?- asserta(test).'), close(Z) ), write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- consult(\'target/39test\')'), nl, '$pj_reset', catch(( ( consult('target/39test') ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- test'), nl, '$pj_reset', catch(( ( test ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- test'), nl, '$pj_reset', catch(( ( test ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- ensure_loaded(\'target/doesntexist\')'), nl, '$pj_reset', catch(( ( ensure_loaded('target/doesntexist') ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- ensure_loaded(\'target/39test.pro\')'), nl, '$pj_reset', catch(( ( ensure_loaded('target/39test.pro') ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_main' :- between(1, 6, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%----------------------------------------------------- 60 projog_miscellaneous_4
% Test that same variable names are used in different sentences
% different Variable instances are created
%?- hgjhghj(X)
% X=agh
% X=aghsew
etrert(agh).
etrert(aghsew).
rtyrty(X) :- etrert(X).
hgjhghj(X) :- rtyrty(X).

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- hgjhghj(X)'), nl, '$pj_reset', catch(( ( hgjhghj(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 61 projog_miscellaneous_40
x([[X|Xs]|Ys]) :- 1<2, writef('1 %t %t %t', [X, Xs, Ys]).
x([[X|Xs]|Ys]) :- 1=2, writef('2 %t %t %t', [X, Xs, Ys]).
x([[X|Xs]|Ys]) :- 1=<2, writef('3 %t %t %t', [X, Xs, Ys]).

%?- x([[x,y,z],b,c,d])
%OUTPUT 1 x [y,z] [b,c,d]
%YES
%OUTPUT 3 x [y,z] [b,c,d]
%YES

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x([[x,y,z],b,c,d])'), nl, '$pj_reset', catch(( ( x([[x,y,z],b,c,d]) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 62 projog_miscellaneous_41
x([X], X).
x([X|Xs], Y) :- x(Xs, Y).

%?- x([a,b,c], Y)
% Y=c
%NO 
%?- x([a,b,c], c)
%YES
%NO
%FAIL x([a,b,c], a)
%FAIL x([a,b,c], b)
%FAIL x([a,b,c], d)
%FAIL x([], Y)
%FAIL x(c, Y)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x([a,b,c], Y)'), nl, '$pj_reset', catch(( ( x([a,b,c], Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- x([a,b,c], c)'), nl, '$pj_reset', catch(( ( x([a,b,c], c) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 63 projog_miscellaneous_42
x([]).
x([[X|Xs]|Ys]) :- writef('%t %t', [X, Xs]), nl, x(Ys).

%?- x([[a,b,c],[q,w,e,r,t,y],[x,y,z]])
%OUTPUT
%a [b,c]
%q [w,e,r,t,y]
%x [y,z]
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
'$pj_q'(1) :- write('?- x([[a,b,c],[q,w,e,r,t,y],[x,y,z]])'), nl, '$pj_reset', catch(( ( x([[a,b,c],[q,w,e,r,t,y],[x,y,z]]) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 64 projog_miscellaneous_43
x(L,L).
x([X|Xs],Ys) :- x(Xs,Ys).

%?- x([a,b,c], X)
% X=[a,b,c]
% X=[b,c]
% X=[c]
% X=[]
%NO

%FAIL x([a,b,c], [a,c])

%?- x(a, X)
% X=a
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x([a,b,c], X)'), nl, '$pj_reset', catch(( ( x([a,b,c], X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- x(a, X)'), nl, '$pj_reset', catch(( ( x(a, X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 65 projog_miscellaneous_44
% test recursive functions that contain cut (!) #88

x(X,Y,Z) :- Z is X+Y.
x(X,5,Z) :- x(X, 7, Z), Z<9.
x(X,Y,Z) :- Y<8, Q=Y+1, x(X,Q,Z).

y(X,Y,Z) :- Z is X+Y.
y(X,5,Z) :- !, y(X, 7, Z), Z<9.
y(X,Y,Z) :- Y<8, Q=Y+1, y(X,Q,Z).

%?- x(1,5,Z)
% Z=6
% Z=8
% Z=7
% Z=8
% Z=9
%NO

%?- y(1,5,Z)
% Z=6
% Z=8
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x(1,5,Z)'), nl, '$pj_reset', catch(( ( x(1,5,Z) ), write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- y(1,5,Z)'), nl, '$pj_reset', catch(( ( y(1,5,Z) ), write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 66 projog_miscellaneous_45
y(Y) :- Y.
x(X) :- y(X).

%TRUE x(true)
%FAIL x(fail)
%?- x(repeat(3))
%YES
%YES
%YES

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x(repeat(3))'), nl, '$pj_reset', catch(( ( x(repeat(3)) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 67 projog_miscellaneous_46
x(V) :- V = [a|_].
x(V) :- V = [_|b].
x(V) :- V = [a|b].
x(V) :- V = [X/Y|_].
x(V) :- V = [_|p(X,Y)].

%?- x(W)
% W=[a|_]
% W=[_|b]
% W=[a|b]
% W=[X / Y|_]
% W=[_|p(X, Y)]

y :- [a|b] = [a|a].
y :- [b|a] = [a|a].
y :- [a|a] = [b|a].
y :- [a|a] = [a|b].
y :- [b|a] = [a|b].
%FAIL y

z :- [a|b] = [a|b].
%TRUE z

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x(W)'), nl, '$pj_reset', catch(( ( x(W) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 68 projog_miscellaneous_47
x(X,L) :- L = [X|_].
x(X,L) :- L = [_|X].
x(X,L) :- L = [X|X].

%?- x(a,L)
% L=[a|_]
% L=[_|a]
% L=[a|a]

%?- x(a,[X,b])
% X=a
%NO

%?- x(X,[a|a])
% X=a
% X=a
% X=a

%FAIL x(a,[b|c])

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x(a,L)'), nl, '$pj_reset', catch(( ( x(a,L) ), write('L = '), writeq(L), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- x(a,[X,b])'), nl, '$pj_reset', catch(( ( x(a,[X,b]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- x(X,[a|a])'), nl, '$pj_reset', catch(( ( x(X,[a|a]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 69 projog_miscellaneous_48
x([],[]).
x([X],[X]).
x([X,Y|Ys],[X|Zs]) :- X \= Y, x([Y|Ys],Zs).

y([X],[X]).
y([X,Y|Ys],[X|Zs]) :- X \= Y, y([Y|Ys],Zs).

%?- x([a,b], X)
% X=[a,b]
%NO

%?- y([a,b], X)
% X=[a,b]
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x([a,b], X)'), nl, '$pj_reset', catch(( ( x([a,b], X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- y([a,b], X)'), nl, '$pj_reset', catch(( ( y([a,b], X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 70 projog_miscellaneous_49
x([q(X,Y)|Xs]).
x([X|Xs]) :- x(Xs).

y([q(X,Y)|Xs],[q(X1,Y1)|Xs]) :- Y > 0, Y1 is Y - 1.
y([X|Xs],[X|Xs1]) :- y(Xs,Xs1).

%?- x([a,b,q(a,b),c,d,e])
%YES
%NO
%FAIL x([a,b,t(a,b),c,d,e])

%?- y([a,b,q(a,5),c,d,e], [a,b,q(a,4),c,d,e])
%YES
%NO
%FAIL y([a,b,q(a,5),c,d,e], [a,b,q(a,6),c,d,e])
%FAIL y([a,b,q(a,0),c,d,e], [a,b,q(a,-1),c,d,e])
%?- y([a,b,q(a,5),c,d,e], [a,b,q(a,X),c,d,e])
% X=4
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x([a,b,q(a,b),c,d,e])'), nl, '$pj_reset', catch(( ( x([a,b,q(a,b),c,d,e]) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- y([a,b,q(a,5),c,d,e], [a,b,q(a,4),c,d,e])'), nl, '$pj_reset', catch(( ( y([a,b,q(a,5),c,d,e], [a,b,q(a,4),c,d,e]) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- y([a,b,q(a,5),c,d,e], [a,b,q(a,X),c,d,e])'), nl, '$pj_reset', catch(( ( y([a,b,q(a,5),c,d,e], [a,b,q(a,X),c,d,e]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%----------------------------------------------------- 71 projog_miscellaneous_5
% same variable being used more than once in a rule
test1(X,X).
test1([a,b,c],[q,w,e]).

%?- test1([a,b,c],[X,Y,Z])
% X=a
% Y=b
% Z=c
% X=q
% Y=w
% Z=e

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test1([a,b,c],[X,Y,Z])'), nl, '$pj_reset', catch(( ( test1([a,b,c],[X,Y,Z]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 72 projog_miscellaneous_50
x(X,Y) :- Y is X + 0.5.
x(X,Y) :- Y is X - 0.5.
x(X,Y) :- Y is X * 0.5.
x(X,Y) :- Y is X / 0.5.
x(X,Y) :- Y is 0.25 + X.
x(X,Y) :- Y is 25 + X.
x(X,Y) :- Y is X + X.
x(X,Y) :- Y is 0.5 + 0.5.
x(X,Y) :- Y is 0.5 + 2.
x(X,Y) :- Y is 0.5 + 0.5 + X.
x(X,Y) :- Y is 0.5 + 7 + X.

%?- x(2,Y)
% Y=2.5
% Y=1.5
% Y=1.0
% Y=4.0
% Y=2.25
% Y=27
% Y=4
% Y=1.0
% Y=2.5
% Y=3.0
% Y=9.5

%?- x(2.0,Y)
% Y=2.5
% Y=1.5
% Y=1.0
% Y=4.0
% Y=2.25
% Y=27.0
% Y=4.0
% Y=1.0
% Y=2.5
% Y=3.0
% Y=9.5

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x(2,Y)'), nl, '$pj_reset', catch(( ( x(2,Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- x(2.0,Y)'), nl, '$pj_reset', catch(( ( x(2.0,Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 73 projog_miscellaneous_51
a(Z) :- write(Z), nl, X is Z + 1, b(X).

b(Z) :- Z < 7, a(Z).

%?- b(2)
%OUTPUT
%2
%3
%4
%5
%6
%
%OUTPUT
%NO

w(Z) :- write(Z), nl, X is Z + 1, x(X).
x(Z) :- X is Z + 0.5, z(X).
z(Z) :- Z < 7, w(Z).

%?- z(0.25)
%OUTPUT
%0.25
%1.75
%3.25
%4.75
%6.25
%
%OUTPUT
%NO

q(Z) :- write('q'), nl, r(Z).
r(Z) :- write('r'), nl, z(Z).

%?- q(0.25)
%OUTPUT
%q
%r
%0.25
%1.75
%3.25
%4.75
%6.25
%
%OUTPUT
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- b(2)'), nl, '$pj_reset', catch(( ( b(2) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- z(0.25)'), nl, '$pj_reset', catch(( ( z(0.25) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- q(0.25)'), nl, '$pj_reset', catch(( ( q(0.25) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 74 projog_miscellaneous_52
%?- X = p(_), X = p(1)
% X=p(1)

%FAIL X = p(_), X = p(1), X = p(2)

%?- X = p(_), X = p(1), Y=p(_), Y=p(2)
% X=p(1)
% Y=p(2)

%TRUE p(_,_,_)=p(1,2,3)

x(X,Y) :- X = p(_), X = p(1), Y=p(_), Y=p(2).

%?- x(X,Y)
% X=p(1)
% Y=p(2)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X = p(_), X = p(1)'), nl, '$pj_reset', catch(( ( X = p(_), X = p(1) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X = p(_), X = p(1), Y=p(_), Y=p(2)'), nl, '$pj_reset', catch(( ( X = p(_), X = p(1), Y=p(_), Y=p(2) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- x(X,Y)'), nl, '$pj_reset', catch(( ( x(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 75 projog_miscellaneous_53
y0(X) :- X > 5, !.
y0(X) :- (true,!;fail), write(X), X1 is X+1, y0(X1).

%?- y0(1)
%OUTPUT 12345
%YES
%NO

y1(X, Coll) :- X > 5, !.
y1(X, Coll) :- 
  (memberchk(x(X),Coll), !, write(X); write(' ')),
  X1 is X+1, y1(X1,Coll).  

%?- y1(1, [x(0), x(1), x(2), x(4), x(5), x(6)])
%OUTPUT 12 45
%YES
%NO

y2(X, Coll) :- X > 5, !.
y2(X, Coll) :- 
  true, (memberchk(x(X),Coll), !, write(X); write(' ')),
  X1 is X+1, y2(X1,Coll).

%?- y2(1, [x(0), x(1), x(2), x(4), x(5), x(6)])
%OUTPUT 12 45
%YES
%NO

y3(X, Coll) :- X > 5 , !.
y3(X, Coll) :- memberchk(x(X), Coll) , ! , write(X) ; write(' ') , X1 is X + 1 , y3(X1, Coll).

%?- y3(1, [x(0), x(1), x(2), x(4), x(5), x(6)])
%OUTPUT 1
%YES
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- y0(1)'), nl, '$pj_reset', catch(( ( y0(1) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- y1(1, [x(0), x(1), x(2), x(4), x(5), x(6)])'), nl, '$pj_reset', catch(( ( y1(1, [x(0), x(1), x(2), x(4), x(5), x(6)]) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- y2(1, [x(0), x(1), x(2), x(4), x(5), x(6)])'), nl, '$pj_reset', catch(( ( y2(1, [x(0), x(1), x(2), x(4), x(5), x(6)]) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- y3(1, [x(0), x(1), x(2), x(4), x(5), x(6)])'), nl, '$pj_reset', catch(( ( y3(1, [x(0), x(1), x(2), x(4), x(5), x(6)]) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_main' :- between(1, 4, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 76 projog_miscellaneous_54
a.

%TRUE a

b(_).

%TRUE b(1)

c(_,_).

%TRUE c(1,2)

d(_,_,_,_,_,_,_,_,_).

%TRUE d(1,2,3,4,5,6,7,8,9)

e.
e.

%?- e
%YES
%YES

f(_).
f(_).

%?- f(1)
%YES
%YES

g(_,_).
g(_,_).

%?- g(1,2)
%YES
%YES

h(_,_,_,_,_,_,_,_,_).
h(_,_,_,_,_,_,_,_,_).

%?- h(1,2,3,4,5,6,7,8,9)
%YES
%YES

i.
i.
i.
i.
i.
i.
i.
i.
i.

%?- i
%YES
%YES
%YES
%YES
%YES
%YES
%YES
%YES
%YES

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- e'), nl, '$pj_reset', catch(( ( e ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- f(1)'), nl, '$pj_reset', catch(( ( f(1) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- g(1,2)'), nl, '$pj_reset', catch(( ( g(1,2) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- h(1,2,3,4,5,6,7,8,9)'), nl, '$pj_reset', catch(( ( h(1,2,3,4,5,6,7,8,9) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- i'), nl, '$pj_reset', catch(( ( i ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_main' :- between(1, 5, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 77 projog_miscellaneous_55
split(L,L1,L2) :- append(L1,L2,L), L1 = [_|_], L2 = [_|_].

%?- split([a,b,c,d,e],A,B)
% A=[a]
% B=[b,c,d,e]
% A=[a,b]
% B=[c,d,e]
% A=[a,b,c]
% B=[d,e]
% A=[a,b,c,d]
% B=[e]
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- split([a,b,c,d,e],A,B)'), nl, '$pj_reset', catch(( ( split([a,b,c,d,e],A,B) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 78 projog_miscellaneous_56
geven(0).
geven(X) :- godd(Y), X is Y+1, X>0.
godd(1).
godd(X) :- geven(Y), X is Y+1, X>1.

%?- geven(X), !
% X=0
%NO

%?- godd(X), !
% X=1
%NO

%?- geven(X), X>100, !
% X=102
%NO

%?- godd(X), X>100, !
% X=101
%NO

%?- geven(X), write(X), nl, X>10, !
%OUTPUT
%0
%2
%4
%6
%8
%10
%12
%
%OUTPUT
% X=12
%NO

%?- godd(X), write(X), nl, X>10, !
%OUTPUT
%1
%3
%5
%7
%9
%11
%
%OUTPUT
% X=11
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- geven(X), !'), nl, '$pj_reset', catch(( ( geven(X), ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- godd(X), !'), nl, '$pj_reset', catch(( ( godd(X), ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- geven(X), X>100, !'), nl, '$pj_reset', catch(( ( geven(X), X>100, ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- godd(X), X>100, !'), nl, '$pj_reset', catch(( ( godd(X), X>100, ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- geven(X), write(X), nl, X>10, !'), nl, '$pj_reset', catch(( ( geven(X), write(X), nl, X>10, ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- godd(X), write(X), nl, X>10, !'), nl, '$pj_reset', catch(( ( godd(X), write(X), nl, X>10, ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_main' :- between(1, 6, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 79 projog_miscellaneous_57
% example 1
x(X) :- e(Y), X is Y+4.

e(0).
e(X) :- o(Y), X is Y+1, X>0.

o(1).
o(X) :- x(Y), X is Y+1, X>1.

% example 2
e2(X) :- repeat(3), fail.
e2(X) :- e1(X).
e1(0).
e1(X) :- o3(Y), X is Y+1, X>0.

o3(X) :- o2(X).
o2(X) :- o1(X).
o1(1).
o1(X) :- e2(Y), X is Y+1, X>1.

%?- e(X), write(X), nl, X>20, !
%OUTPUT
%0
%2
%6
%8
%12
%14
%18
%20
%24
%
%OUTPUT
% X=24
%NO

%?- o(X), write(X), nl, X>20, !
%OUTPUT
%1
%5
%7
%11
%13
%17
%19
%23
%
%OUTPUT
% X=23
%NO

%?- e1(X), write(X), nl, X>10, !
%OUTPUT
%0
%2
%4
%6
%8
%10
%12
%
%OUTPUT
% X=12
%NO

%?- o1(X), write(X), nl, X>10, !
%OUTPUT
%1
%3
%5
%7
%9
%11
%
%OUTPUT
% X=11
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- e(X), write(X), nl, X>20, !'), nl, '$pj_reset', catch(( ( e(X), write(X), nl, X>20, ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- o(X), write(X), nl, X>20, !'), nl, '$pj_reset', catch(( ( o(X), write(X), nl, X>20, ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- e1(X), write(X), nl, X>10, !'), nl, '$pj_reset', catch(( ( e1(X), write(X), nl, X>10, ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- o1(X), write(X), nl, X>10, !'), nl, '$pj_reset', catch(( ( o1(X), write(X), nl, X>10, ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_main' :- between(1, 4, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 80 projog_miscellaneous_58
a(a).
a(b).
a(c).
a(d).
a(e).
a(f).
a(g).

b(1).
b(2).
b(3).
b(4).
b(5).

x(a, 1, Y, Z) :- b(Y), Y>3, b(Z), Z>3, !.
x(a, 2, Y, Z) :- b(Y), Y<3, b(Z), Z<3, !.
x(a, 3, Y, Z) :- b(Y), Y>3, b(Z), Z<3, !.
x(a, 4, Y, Z) :- b(Y), Y<3, b(Z), Z>3, !.
x(b, 1, Y, Z) :- b(Y), Y>3, b(Z), !, Z>3.
x(b, 2, Y, Z) :- b(Y), Y<3, b(Z), !, Z<3.
x(b, 3, Y, Z) :- b(Y), Y>3, b(Z), !, Z<3.
x(b, 4, Y, Z) :- b(Y), Y<3, b(Z), !, Z>3.
x(c, 1, Y, Z) :- b(Y), Y>3, !, b(Z), Z>3.
x(c, 2, Y, Z) :- b(Y), Y<3, !, b(Z), Z<3.
x(c, 3, Y, Z) :- b(Y), Y>3, !, b(Z), Z<3.
x(c, 4, Y, Z) :- b(Y), Y<3, !, b(Z), Z>3.
x(d, 1, Y, Z) :- b(Y), !, Y>3, b(Z), Z>3.
x(d, 2, Y, Z) :- b(Y), !, Y<3, b(Z), Z<3.
x(d, 3, Y, Z) :- b(Y), !, Y>3, b(Z), Z<3.
x(d, 4, Y, Z) :- b(Y), !, Y<3, b(Z), Z>3.
x(e, 1, Y, Z) :- !, b(Y), Y>3, b(Z), Z>3.
x(e, 2, Y, Z) :- !, b(Y), Y<3, b(Z), Z<3.
x(e, 3, Y, Z) :- !, b(Y), Y>3, b(Z), Z<3.
x(e, 4, Y, Z) :- !, b(Y), Y<3, b(Z), Z>3.
x(f, 1, Y, Z) :- b(Y), Y>3, b(Z), Z>3.
x(f, 2, Y, Z) :- b(Y), Y<3, b(Z), Z<3.
x(f, 3, Y, Z) :- b(Y), Y>3, b(Z), Z<3.
x(f, 4, Y, Z) :- b(Y), Y<3, b(Z), Z>3.

z :- a(A), b(B), x(A,B,Y,Z), write(A / B / Y / Z), nl, fail.

%?- z
%OUTPUT
%a / 1 / 4 / 4
%a / 2 / 1 / 1
%a / 3 / 4 / 1
%a / 4 / 1 / 4
%b / 2 / 1 / 1
%b / 3 / 4 / 1
%c / 1 / 4 / 4
%c / 1 / 4 / 5
%c / 2 / 1 / 1
%c / 2 / 1 / 2
%c / 3 / 4 / 1
%c / 3 / 4 / 2
%c / 4 / 1 / 4
%c / 4 / 1 / 5
%d / 2 / 1 / 1
%d / 2 / 1 / 2
%d / 4 / 1 / 4
%d / 4 / 1 / 5
%e / 1 / 4 / 4
%e / 1 / 4 / 5
%e / 1 / 5 / 4
%e / 1 / 5 / 5
%e / 2 / 1 / 1
%e / 2 / 1 / 2
%e / 2 / 2 / 1
%e / 2 / 2 / 2
%e / 3 / 4 / 1
%e / 3 / 4 / 2
%e / 3 / 5 / 1
%e / 3 / 5 / 2
%e / 4 / 1 / 4
%e / 4 / 1 / 5
%e / 4 / 2 / 4
%e / 4 / 2 / 5
%f / 1 / 4 / 4
%f / 1 / 4 / 5
%f / 1 / 5 / 4
%f / 1 / 5 / 5
%f / 2 / 1 / 1
%f / 2 / 1 / 2
%f / 2 / 2 / 1
%f / 2 / 2 / 2
%f / 3 / 4 / 1
%f / 3 / 4 / 2
%f / 3 / 5 / 1
%f / 3 / 5 / 2
%f / 4 / 1 / 4
%f / 4 / 1 / 5
%f / 4 / 2 / 4
%f / 4 / 2 / 5
%
%OUTPUT
%NO

test1(X,_,Y) :- X>1, !, repeat(3), Y is 3, !, X<4.
test2(X,Y):- a(X), b(Y), test1(Y, X, Z).

%?- b(Y), test1(Y, a, Z)
% Y=2
% Z=3
% Y=3
% Z=3
%NO

%?- test2(X,Y)
% X=a
% Y=2
% X=a
% Y=3
% X=b
% Y=2
% X=b
% Y=3
% X=c
% Y=2
% X=c
% Y=3
% X=d
% Y=2
% X=d
% Y=3
% X=e
% Y=2
% X=e
% Y=3
% X=f
% Y=2
% X=f
% Y=3
% X=g
% Y=2
% X=g
% Y=3
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- z'), nl, '$pj_reset', catch(( ( z ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- b(Y), test1(Y, a, Z)'), nl, '$pj_reset', catch(( ( b(Y), test1(Y, a, Z) ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- test2(X,Y)'), nl, '$pj_reset', catch(( ( test2(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 81 projog_miscellaneous_59
a(X,Y,Z):- 
 repeat(3),
 X='text in "double quotes"', write(X), nl,
 Y='text in ''single quote''', write(Y), nl,
 Z='!"$%^&*()-_+-=[]{}:;@''#~?/.>,<\\|`', write(Z), nl.

%?- a(X,Y,Z), !
%OUTPUT
%text in "double quotes"
%text in 'single quote'
%!"$%^&*()-_+-=[]{}:;@'#~?/.>,<\|`
%
%OUTPUT
% X=text in "double quotes"
% Y=text in 'single quote'
% Z=!"$%^&*()-_+-=[]{}:;@'#~?/.>,<\|`
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- a(X,Y,Z), !'), nl, '$pj_reset', catch(( ( a(X,Y,Z), ! ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%----------------------------------------------------- 82 projog_miscellaneous_6
test2_1(a).
test2_1(b).
test2_1(c).

test2_2(X, X) :- test2_1(_).
%FAIL test2_2(x,y)
%?- test2_2(X,X)
% X=UNINSTANTIATED VARIABLE
% X=UNINSTANTIATED VARIABLE
% X=UNINSTANTIATED VARIABLE

%?- test2_2(x,x)
%YES
%YES
%YES

%?- test2_2(x,X)
% X=x
% X=x
% X=x

%?- test2_2(X,y)
% X=y
% X=y
% X=y

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test2_2(X,X)'), nl, '$pj_reset', catch(( ( test2_2(X,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- test2_2(x,x)'), nl, '$pj_reset', catch(( ( test2_2(x,x) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- test2_2(x,X)'), nl, '$pj_reset', catch(( ( test2_2(x,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- test2_2(X,y)'), nl, '$pj_reset', catch(( ( test2_2(X,y) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_main' :- between(1, 4, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 83 projog_miscellaneous_60
% first

test_repeat1(N).
test_repeat1(N) :- N > 1, N1 is N-1, test_repeat1(N1).

?-assert(a1(x,y,z)).
?-assert(a1(q,w,e)).
?-assert(a1(g,h,j)).

x1(X,Y,Z) :- test_repeat1(3), a1(X,Y,Z).

y1(X,Y,Z) :- assert(a1(1,3,5)), test_repeat1(3), asserta(a1(2,4,6)), assertz(a1(3,6,9)), a1(X,Y,Z).

z1(X,Y,Z) :- assert(b1(1,2,3)), assert(b1(4,5,6)), assert(b1(7,8,9)), test_repeat1(3), b1(X,Y,Z).

% second

test_repeat2(X) :- X<100.
test_repeat2(X) :- X<1000.
test_repeat2(X) :- X<10000.

?-assert(a2(x,y,z)).
?-assert(a2(q,w,e)).
?-assert(a2(g,h,j)).

x2(X,Y,Z) :- test_repeat2(3), a2(X,Y,Z).

y2(X,Y,Z) :- assert(a2(1,3,5)), test_repeat2(3), asserta(a2(2,4,6)), assertz(a2(3,6,9)), a2(X,Y,Z).

z2(X,Y,Z) :- assert(b2(1,2,3)), assert(b2(4,5,6)), assert(b2(7,8,9)), test_repeat2(3), b2(X,Y,Z).

% third

?-assert(a3(x,y,z)).
?-assert(a3(q,w,e)).
?-assert(a3(g,h,j)).

x3(X,Y,Z) :- repeat(3), a3(X,Y,Z).

y3(X,Y,Z) :- assert(a3(1,3,5)), repeat(3), asserta(a3(2,4,6)), assertz(a3(3,6,9)), a3(X,Y,Z).

z3(X,Y,Z) :- assert(b3(1,2,3)), assert(b3(4,5,6)), assert(b3(7,8,9)), repeat(3), b3(X,Y,Z).

%?- assert(q(10,30,50)), asserta(q(20,40,60)), assertz(q(30,60,90)), q(X,Y,Z)
% X=20
% Y=40
% Z=60
% X=10
% Y=30
% Z=50
% X=30
% Y=60
% Z=90

% first

%?- 0=0, x1(X,w,Z)
% X=q
% Z=e
% X=q
% Z=e
% X=q
% Z=e
%NO

%?- 1=1, x1(X,Y,Z)
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
%NO

%?- 2=2, y1(X,Y,Z)
% X=2
% Y=4
% Z=6
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=1
% Y=3
% Z=5
% X=3
% Y=6
% Z=9
% X=2
% Y=4
% Z=6
% X=2
% Y=4
% Z=6
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=1
% Y=3
% Z=5
% X=3
% Y=6
% Z=9
% X=3
% Y=6
% Z=9
% X=2
% Y=4
% Z=6
% X=2
% Y=4
% Z=6
% X=2
% Y=4
% Z=6
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=1
% Y=3
% Z=5
% X=3
% Y=6
% Z=9
% X=3
% Y=6
% Z=9
% X=3
% Y=6
% Z=9
%NO

%?- 3=3, z1(X,Y,Z)
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
%NO

%?- 4=4, z1(X,Y,Z)
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
%NO

%TRUE retractall(b1(_,_,_))

%?- 5=5, z1(X,Y,Z)
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
%NO

%TRUE retractall(a1(1,_,_))
%TRUE retractall(a1(2,_,_))
%TRUE retractall(a1(3,_,_))
%TRUE retractall(a1(x,y,z))

%?- 6=6, x1(X,Y,Z)
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
%NO

%TRUE retractall(a1(_,h,j))

%?- 7=7, x1(X,Y,Z)
% X=q
% Y=w
% Z=e
% X=q
% Y=w
% Z=e
% X=q
% Y=w
% Z=e
%NO

%TRUE retractall(a1(q,w,e))

%FAIL 8=8, x1(X,Y,Z)

% second

%?- 0=0, x2(X,w,Z)
% X=q
% Z=e
% X=q
% Z=e
% X=q
% Z=e
%NO

%?- 1=1, x2(X,Y,Z)
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j

%?- 2=2, y2(X,Y,Z)
% X=2
% Y=4
% Z=6
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=1
% Y=3
% Z=5
% X=3
% Y=6
% Z=9
% X=2
% Y=4
% Z=6
% X=2
% Y=4
% Z=6
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=1
% Y=3
% Z=5
% X=3
% Y=6
% Z=9
% X=3
% Y=6
% Z=9
% X=2
% Y=4
% Z=6
% X=2
% Y=4
% Z=6
% X=2
% Y=4
% Z=6
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=1
% Y=3
% Z=5
% X=3
% Y=6
% Z=9
% X=3
% Y=6
% Z=9
% X=3
% Y=6
% Z=9

%?- 3=3, z2(X,Y,Z)
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9

%?- 4=4, z2(X,Y,Z)
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9

%TRUE retractall(b2(_,_,_))

%?- 5=5, z2(X,Y,Z)
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9

%TRUE retractall(a2(1,_,_))
%TRUE retractall(a2(2,_,_))
%TRUE retractall(a2(3,_,_))
%TRUE retractall(a2(x,y,z))

%?- 6=6, x2(X,Y,Z)
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j

%TRUE retractall(a2(_,h,j))

%?- 7=7, x2(X,Y,Z)
% X=q
% Y=w
% Z=e
% X=q
% Y=w
% Z=e
% X=q
% Y=w
% Z=e

%TRUE retractall(a2(q,w,e))

%FAIL 8=8, x2(X,Y,Z)

% third

%?- 0=0, x3(X,w,Z)
% X=q
% Z=e
% X=q
% Z=e
% X=q
% Z=e
%NO

%?- 1=1, x3(X,Y,Z)
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j

%?- 2=2, y3(X,Y,Z)
% X=2
% Y=4
% Z=6
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=1
% Y=3
% Z=5
% X=3
% Y=6
% Z=9
% X=2
% Y=4
% Z=6
% X=2
% Y=4
% Z=6
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=1
% Y=3
% Z=5
% X=3
% Y=6
% Z=9
% X=3
% Y=6
% Z=9
% X=2
% Y=4
% Z=6
% X=2
% Y=4
% Z=6
% X=2
% Y=4
% Z=6
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=1
% Y=3
% Z=5
% X=3
% Y=6
% Z=9
% X=3
% Y=6
% Z=9
% X=3
% Y=6
% Z=9

%?- 3=3, z3(X,Y,Z)
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9

%?- 4=4, z3(X,Y,Z)
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9

%TRUE retractall(b3(_,_,_))

%?- 5=5, z3(X,Y,Z)
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9

%TRUE retractall(a3(1,_,_))
%TRUE retractall(a3(2,_,_))
%TRUE retractall(a3(3,_,_))
%TRUE retractall(a3(x,y,z))

%?- 6=6, x3(X,Y,Z)
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j

%TRUE retractall(a3(_,h,j))

%?- 7=7, x3(X,Y,Z)
% X=q
% Y=w
% Z=e
% X=q
% Y=w
% Z=e
% X=q
% Y=w
% Z=e

%TRUE retractall(a3(q,w,e))

%FAIL 8=8, x3(X,Y,Z)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- assert(q(10,30,50)), asserta(q(20,40,60)), assertz(q(30,60,90)), q(X,Y,Z)'), nl, '$pj_reset', catch(( ( assert(q(10,30,50)), asserta(q(20,40,60)), assertz(q(30,60,90)), q(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- 0=0, x1(X,w,Z)'), nl, '$pj_reset', catch(( ( 0=0, x1(X,w,Z) ), write('X = '), writeq(X), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- 1=1, x1(X,Y,Z)'), nl, '$pj_reset', catch(( ( 1=1, x1(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- 2=2, y1(X,Y,Z)'), nl, '$pj_reset', catch(( ( 2=2, y1(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- 3=3, z1(X,Y,Z)'), nl, '$pj_reset', catch(( ( 3=3, z1(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- 4=4, z1(X,Y,Z)'), nl, '$pj_reset', catch(( ( 4=4, z1(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- 5=5, z1(X,Y,Z)'), nl, '$pj_reset', catch(( ( 5=5, z1(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- 6=6, x1(X,Y,Z)'), nl, '$pj_reset', catch(( ( 6=6, x1(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- 7=7, x1(X,Y,Z)'), nl, '$pj_reset', catch(( ( 7=7, x1(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- 0=0, x2(X,w,Z)'), nl, '$pj_reset', catch(( ( 0=0, x2(X,w,Z) ), write('X = '), writeq(X), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- 1=1, x2(X,Y,Z)'), nl, '$pj_reset', catch(( ( 1=1, x2(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- 2=2, y2(X,Y,Z)'), nl, '$pj_reset', catch(( ( 2=2, y2(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- 3=3, z2(X,Y,Z)'), nl, '$pj_reset', catch(( ( 3=3, z2(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- 4=4, z2(X,Y,Z)'), nl, '$pj_reset', catch(( ( 4=4, z2(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_q'(15) :- write('?- 5=5, z2(X,Y,Z)'), nl, '$pj_reset', catch(( ( 5=5, z2(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(15).
'$pj_q'(16) :- write('?- 6=6, x2(X,Y,Z)'), nl, '$pj_reset', catch(( ( 6=6, x2(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(16).
'$pj_q'(17) :- write('?- 7=7, x2(X,Y,Z)'), nl, '$pj_reset', catch(( ( 7=7, x2(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(17).
'$pj_q'(18) :- write('?- 0=0, x3(X,w,Z)'), nl, '$pj_reset', catch(( ( 0=0, x3(X,w,Z) ), write('X = '), writeq(X), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(18).
'$pj_q'(19) :- write('?- 1=1, x3(X,Y,Z)'), nl, '$pj_reset', catch(( ( 1=1, x3(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(19).
'$pj_q'(20) :- write('?- 2=2, y3(X,Y,Z)'), nl, '$pj_reset', catch(( ( 2=2, y3(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(20).
'$pj_q'(21) :- write('?- 3=3, z3(X,Y,Z)'), nl, '$pj_reset', catch(( ( 3=3, z3(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(21).
'$pj_q'(22) :- write('?- 4=4, z3(X,Y,Z)'), nl, '$pj_reset', catch(( ( 4=4, z3(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(22).
'$pj_q'(23) :- write('?- 5=5, z3(X,Y,Z)'), nl, '$pj_reset', catch(( ( 5=5, z3(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(23).
'$pj_q'(24) :- write('?- 6=6, x3(X,Y,Z)'), nl, '$pj_reset', catch(( ( 6=6, x3(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(24).
'$pj_q'(25) :- write('?- 7=7, x3(X,Y,Z)'), nl, '$pj_reset', catch(( ( 7=7, x3(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(25).
'$pj_main' :- between(1, 25, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 84 projog_miscellaneous_61
% see 1.07 of P-99: Ninety-Nine Prolog Problems

f(X,[X]) :- \+ is_list(X).
f([],[]).
f([X|Xs],Zs) :- f(X,Y), f(Xs,Ys), append(Y,Ys,Zs).

%?- f([a, [b, [c, d], e]], X)
% X=[a,b,c,d,e]
%NO

%?- f([a, [b, [c, d], [e, [f, [g, h, i, j, [k, l, m, [[[n, o, p, q, r], s, t], u], v, w, x, [y], z]]]]]], X)
% X=[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z]
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- f([a, [b, [c, d], e]], X)'), nl, '$pj_reset', catch(( ( f([a, [b, [c, d], e]], X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- f([a, [b, [c, d], [e, [f, [g, h, i, j, [k, l, m, [[[n, o, p, q, r], s, t], u], v, w, x, [y], z]]]]]], X)'), nl, '$pj_reset', catch(( ( f([a, [b, [c, d], [e, [f, [g, h, i, j, [k, l, m, [[[n, o, p, q, r], s, t], u], v, w, x, [y], z]]]]]], X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 85 projog_miscellaneous_62
%?- X=a:b
% X=a : b

%?- X = a : b
% X=a : b

%?- X=q:w:e:r:t:y
% X=q : w : e : r : t : y

%?- X=q:w:e/r:t:y/u:i:o
% X=q : w : e / r : t : y / u : i : o

%?- write(q:w:e/r:t:y/u:i:o)
%OUTPUT q : w : e / r : t : y / u : i : o
%YES

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X=a:b'), nl, '$pj_reset', catch(( ( X=a:b ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X = a : b'), nl, '$pj_reset', catch(( ( X = a : b ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X=q:w:e:r:t:y'), nl, '$pj_reset', catch(( ( X=q:w:e:r:t:y ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- X=q:w:e/r:t:y/u:i:o'), nl, '$pj_reset', catch(( ( X=q:w:e/r:t:y/u:i:o ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- write(q:w:e/r:t:y/u:i:o)'), nl, '$pj_reset', catch(( ( write(q:w:e/r:t:y/u:i:o) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_main' :- between(1, 5, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 86 projog_miscellaneous_63
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
%---------------------------------------------------- 87 projog_miscellaneous_64
x([a,b]).
x([a,b,c]).
x([a,b,c,d]).
x([a]).

test(List1,List2) :-
  x(List1),
  length(List1, Length1),
  Length1 > 2,
  x(List2),
  length(List2, Length2),
  Length2 > 1.

%?- test(List1, List2)
% List1=[a,b,c]
% List2=[a,b]
% List1=[a,b,c]
% List2=[a,b,c]
% List1=[a,b,c]
% List2=[a,b,c,d]
% List1=[a,b,c,d]
% List2=[a,b]
% List1=[a,b,c,d]
% List2=[a,b,c]
% List1=[a,b,c,d]
% List2=[a,b,c,d]
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test(List1, List2)'), nl, '$pj_reset', catch(( ( test(List1, List2) ), write('List1 = '), writeq(List1), nl, write('List2 = '), writeq(List2), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 88 projog_miscellaneous_65
a(1).
a(2).
a(3).

b(X, Y, Z) :- Z is X+Y.
b(X, Y, Z) :- Z is X-Y.
b(X, Y, Z) :- Z is X*Y.

c(A,B,C) :- a(A), a(B), b(A,B,C).

test(A,B,C) :- A=5; c(A,B,C).

%TRUE test(2,3,6)

%?- test(5,B,C)
% B=UNINSTANTIATED VARIABLE
% C=UNINSTANTIATED VARIABLE
%NO

%?- test(2,3,X)
% X=5
% X=-1
% X=6

%?- test(A,B,6)
% A=5
% B=UNINSTANTIATED VARIABLE
% A=2
% B=3
% A=3
% B=2
% A=3
% B=3
%NO

%?- test(A,B,C)
% A=5
% B=UNINSTANTIATED VARIABLE
% C=UNINSTANTIATED VARIABLE
% A=1
% B=1
% C=2
% A=1
% B=1
% C=0
% A=1
% B=1
% C=1
% A=1
% B=2
% C=3
% A=1
% B=2
% C=-1
% A=1
% B=2
% C=2
% A=1
% B=3
% C=4
% A=1
% B=3
% C=-2
% A=1
% B=3
% C=3
% A=2
% B=1
% C=3
% A=2
% B=1
% C=1
% A=2
% B=1
% C=2
% A=2
% B=2
% C=4
% A=2
% B=2
% C=0
% A=2
% B=2
% C=4
% A=2
% B=3
% C=5
% A=2
% B=3
% C=-1
% A=2
% B=3
% C=6
% A=3
% B=1
% C=4
% A=3
% B=1
% C=2
% A=3
% B=1
% C=3
% A=3
% B=2
% C=5
% A=3
% B=2
% C=1
% A=3
% B=2
% C=6
% A=3
% B=3
% C=6
% A=3
% B=3
% C=0
% A=3
% B=3
% C=9

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test(5,B,C)'), nl, '$pj_reset', catch(( ( test(5,B,C) ), write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- test(2,3,X)'), nl, '$pj_reset', catch(( ( test(2,3,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- test(A,B,6)'), nl, '$pj_reset', catch(( ( test(A,B,6) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- test(A,B,C)'), nl, '$pj_reset', catch(( ( test(A,B,C) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_main' :- between(1, 4, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 89 projog_miscellaneous_66
% corrected to verify fix for bug #198 - cyclic variable chains caused infinite loop

%?- X=X, numbervars(X)
% X=$VAR(0)

%?- X=Y, Y=X, numbervars(X)
% X=$VAR(0)
% Y=$VAR(0)

%?- X=Y, Y=Z, Z=X, numbervars(X)
% X=$VAR(0)
% Y=$VAR(0)
% Z=$VAR(0)

%?- [A,B,C,D,E|F]=[E,A,D,F,C|B], numbervars(A)
% A=$VAR(0)
% B=$VAR(0)
% C=$VAR(0)
% D=$VAR(0)
% E=$VAR(0)
% F=$VAR(0)

%?- p(A,B,C,D,E,F)=p(E,A,D,F,C,B), numbervars(A)
% A=$VAR(0)
% B=$VAR(0)
% C=$VAR(0)
% D=$VAR(0)
% E=$VAR(0)
% F=$VAR(0)

%?- A=p(X,Y,Z), B=p(Z,X,Y), A=B, numbervars(A)
% A=p($VAR(0), $VAR(0), $VAR(0))
% B=p($VAR(0), $VAR(0), $VAR(0))
% X=$VAR(0)
% Y=$VAR(0)
% Z=$VAR(0)

%?- P1=p(Q,W,E,R,T,Y,U,I,O,P,A,S,D,F,G,H,J,K,L,Z,X,C,V,B,N,M), P2=p(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z), P1=P2, numbervars(P1)
% A=$VAR(0)
% B=$VAR(0)
% C=$VAR(0)
% D=$VAR(0)
% E=$VAR(0)
% F=$VAR(1)
% G=$VAR(0)
% H=$VAR(0)
% I=$VAR(0)
% J=$VAR(0)
% K=$VAR(0)
% L=$VAR(2)
% M=$VAR(0)
% N=$VAR(1)
% O=$VAR(0)
% P=$VAR(0)
% P1=p($VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(1), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(2), $VAR(0), $VAR(1), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(2), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(1), $VAR(0))
% P2=p($VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(1), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(2), $VAR(0), $VAR(1), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(2), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(1), $VAR(0))
% Q=$VAR(0)
% R=$VAR(0)
% S=$VAR(2)
% T=$VAR(0)
% U=$VAR(0)
% V=$VAR(0)
% W=$VAR(0)
% X=$VAR(0)
% Y=$VAR(1)
% Z=$VAR(0)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X=X, numbervars(X)'), nl, '$pj_reset', catch(( ( X=X, numbervars(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X=Y, Y=X, numbervars(X)'), nl, '$pj_reset', catch(( ( X=Y, Y=X, numbervars(X) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X=Y, Y=Z, Z=X, numbervars(X)'), nl, '$pj_reset', catch(( ( X=Y, Y=Z, Z=X, numbervars(X) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- [A,B,C,D,E|F]=[E,A,D,F,C|B], numbervars(A)'), nl, '$pj_reset', catch(( ( [A,B,C,D,E|F]=[E,A,D,F,C|B], numbervars(A) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write('D = '), writeq(D), nl, write('E = '), writeq(E), nl, write('F = '), writeq(F), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p(A,B,C,D,E,F)=p(E,A,D,F,C,B), numbervars(A)'), nl, '$pj_reset', catch(( ( p(A,B,C,D,E,F)=p(E,A,D,F,C,B), numbervars(A) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write('D = '), writeq(D), nl, write('E = '), writeq(E), nl, write('F = '), writeq(F), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- A=p(X,Y,Z), B=p(Z,X,Y), A=B, numbervars(A)'), nl, '$pj_reset', catch(( ( A=p(X,Y,Z), B=p(Z,X,Y), A=B, numbervars(A) ), write('A = '), writeq(A), nl, write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('B = '), writeq(B), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- P1=p(Q,W,E,R,T,Y,U,I,O,P,A,S,D,F,G,H,J,K,L,Z,X,C,V,B,N,M), P2=p(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z), P1=P2, numbervars(P1)'), nl, '$pj_reset', catch(( ( P1=p(Q,W,E,R,T,Y,U,I,O,P,A,S,D,F,G,H,J,K,L,Z,X,C,V,B,N,M), P2=p(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z), P1=P2, numbervars(P1) ), write('P1 = '), writeq(P1), nl, write('Q = '), writeq(Q), nl, write('W = '), writeq(W), nl, write('E = '), writeq(E), nl, write('R = '), writeq(R), nl, write('T = '), writeq(T), nl, write('Y = '), writeq(Y), nl, write('U = '), writeq(U), nl, write('I = '), writeq(I), nl, write('O = '), writeq(O), nl, write('P = '), writeq(P), nl, write('A = '), writeq(A), nl, write('S = '), writeq(S), nl, write('D = '), writeq(D), nl, write('F = '), writeq(F), nl, write('G = '), writeq(G), nl, write('H = '), writeq(H), nl, write('J = '), writeq(J), nl, write('K = '), writeq(K), nl, write('L = '), writeq(L), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write('C = '), writeq(C), nl, write('V = '), writeq(V), nl, write('B = '), writeq(B), nl, write('N = '), writeq(N), nl, write('M = '), writeq(M), nl, write('P2 = '), writeq(P2), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_main' :- between(1, 7, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%---------------------------------------------------- 90 projog_miscellaneous_67
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
%----------------------------------------------------- 91 projog_miscellaneous_7
test3_1(X,X).

test3_2([a,b,c]).
test3_2([q,w,e]).
test3_2([x,y,z]).

test3_3(X) :- test3_2(Y), test3_1(X,Y).

%?- test3_3(X)
% X=[a,b,c]
% X=[q,w,e]
% X=[x,y,z]

%TRUE_NO test3_3([a,b,c])
%TRUE_NO test3_3([q,w,e])
%TRUE test3_3([x,y,z])
%?- test3_3([X,y,z])
% X=x
%FAIL test3_3([X,y,X])

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test3_3(X)'), nl, '$pj_reset', catch(( ( test3_3(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- test3_3([X,y,z])'), nl, '$pj_reset', catch(( ( test3_3([X,y,z]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%----------------------------------------------------- 92 projog_miscellaneous_9
test_repeat(N).
test_repeat(N) :- N > 1, N1 is N-1, test_repeat(N1).

%TRUE_NO test_repeat(1)

%?- test_repeat(2)
%YES
%YES
%NO

%?- test_repeat(3)
%YES
%YES
%YES
%NO

%?- test_repeat(7)
%YES
%YES
%YES
%YES
%YES
%YES
%YES
%NO

% check conjunction backtracks arguments in second clause before retrying first
%?- test_repeat(2), var(X), X is 1
% X=1
% X=1
%NO

%?- test_repeat(2), var(X), X = 1
% X=1
% X=1
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test_repeat(2)'), nl, '$pj_reset', catch(( ( test_repeat(2) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- test_repeat(3)'), nl, '$pj_reset', catch(( ( test_repeat(3) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- test_repeat(7)'), nl, '$pj_reset', catch(( ( test_repeat(7) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- test_repeat(2), var(X), X is 1'), nl, '$pj_reset', catch(( ( test_repeat(2), var(X), X is 1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- test_repeat(2), var(X), X = 1'), nl, '$pj_reset', catch(( ( test_repeat(2), var(X), X = 1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_main' :- between(1, 5, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%--------------- 93 projog_udp_MultipleRulesWithSingleImmutableArgumentPredicate
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
%------------------------------- 94 projog_udp_chain_of_single_result_predicates
p1(a) :- write(a).
p1(b) :- write(b).
p1(c) :- write(c).

p2(d) :- write(d).
p2(e) :- write(e).
p2(f) :- write(f).

p3(g) :- write(g).
p3(h) :- write(h).
p3(i) :- write(i).

p4(x) :- p1(b), p2(d), p3(i).
p4(y) :- p1(a), p2(f), p3(h).
p4(z) :- p1(c), p2(e), p3(g).

p5(X) :- p4(X).

% TODO should be able to resolve p5(x) to singleton but does not
% would need to add optimise method to clause action
p6 :- p5(x).

%?- p5(X)
%OUTPUT bdi
% X=x
%OUTPUT afh
% X=y
%OUTPUT ceg
% X=z

%?- p5(x)
%OUTPUT bdi
%YES

%?- p5(y)
%OUTPUT afh
%YES

%?- p5(z)
%OUTPUT ceg
%YES

%FAIL p5(w)

%?- p6
%OUTPUT bdi
%YES

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p5(X)'), nl, '$pj_reset', catch(( ( p5(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p5(x)'), nl, '$pj_reset', catch(( ( p5(x) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- p5(y)'), nl, '$pj_reset', catch(( ( p5(y) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p5(z)'), nl, '$pj_reset', catch(( ( p5(z) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p6'), nl, '$pj_reset', catch(( ( p6 ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_main' :- between(1, 5, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%----------------------------------------------- 95 projog_udp_dynamic_predicate
%FAIL p(X,Y,Z)

%TRUE assert(p(a,b,c))

%?- p(X,Y,Z)
% X=a
% Y=b
% Z=c

%TRUE p(a,b,c)
%FAIL p(z,b,c)
%FAIL p(a,z,c)
%FAIL p(a,b,z)

%TRUE assert(p(1,2,3))
%TRUE assert(p(x,y,z))

%TRUE p(a,b,c)
%TRUE_NO retract(p(a,b,c))
%FAIL p(a,b,c)

%TRUE p(x,y,z)
%TRUE retract(p(x,y,z))
%FAIL p(x,y,z)

%TRUE p(1,2,3)
%TRUE retract(p(1,2,3))
%FAIL p(1,2,3)

%TRUE assert(p(a,b,c))
%TRUE assert(p(1,2,3))
%TRUE assert(p(x,y,z))

%?- p(X,Y,Z)
% X=a
% Y=b
% Z=c
% X=1
% Y=2
% Z=3
% X=x
% Y=y
% Z=z

%TRUE p(a,b,c)
%TRUE p(1,2,3)
%TRUE p(x,y,z)
%FAIL p(a,2,3)
%FAIL p(a,y,z)
%FAIL p(1,b,c)
%FAIL p(1,y,z)
%FAIL p(x,b,c)
%FAIL p(x,2,3)
%FAIL p(a,X,3)
%FAIL p(a,y,X)
%FAIL p(1,X,c)
%FAIL p(1,y,X)
%FAIL p(x,X,c)
%FAIL p(x,2,X)
%FAIL p(a,X,X)
%FAIL p(1,X,X)
%FAIL p(x,X,X)
%FAIL p(X,b,X)
%FAIL p(X,2,X)
%FAIL p(X,y,X)
%FAIL p(X,X,c)
%FAIL p(X,X,3)
%FAIL p(X,X,z)

%?- p(a,X,Y)
% X=b
% Y=c

%?- p(1,X,Y)
% X=2
% Y=3

%?- p(x,X,Y)
% X=y
% Y=z

%?- p(X,b,c)
% X=a
%NO

%?- p(X,2,3)
% X=1
%NO

%?- p(X,y,z)
% X=x

%?- assert(p(q,X,Y))
% X=UNINSTANTIATED VARIABLE
% Y=UNINSTANTIATED VARIABLE

%TRUE p(a,b,c)
%TRUE p(1,2,3)
%TRUE p(x,y,z)
%TRUE p(q,w,e)
%TRUE p(q,2,3)

%?- assert(p(w,X,X))
% X=UNINSTANTIATED VARIABLE

%TRUE p(a,b,c)
%TRUE p(1,2,3)
%TRUE p(x,y,z)
%TRUE p(q,w,e)
%TRUE p(q,2,3)
%TRUE p(w,2,2)
%FAIL p(w,2,3)

%?- p(w,7,X)
% X=7

%?- p(w,X,9)
% X=9

%?- assert(p(X,y,u))
% X=UNINSTANTIATED VARIABLE

%TRUE_NO p(a,b,c)
%TRUE_NO p(1,2,3)
%TRUE_NO p(x,y,z)
%TRUE_NO p(q,w,e)
%TRUE_NO p(q,2,3)
%TRUE_NO p(q,e,e)
%TRUE_NO p(w,1,1)
%TRUE p(z,y,u)

%?- retract(p(X,y,u))
% X=q
% X=UNINSTANTIATED VARIABLE

%TRUE_NO p(a,b,c)
%TRUE_NO p(1,2,3)
%TRUE_NO p(x,y,z)
%TRUE p(w,1,1)
%FAIL p(q,w,e)
%FAIL p(q,e,e)
%FAIL p(X,y,u)

%TRUE retract(p(w,1,1))
%FAIL p(w,1,1)
%TRUE retract(p(x,y,z))
%FAIL p(x,y,z)
%TRUE retract(p(1,2,3))
%FAIL p(1,2,3)

%TRUE p(a,b,c)

%TRUE assert(p(d,f,g))

%TRUE_NO p(a,b,c)

%TRUE retract(p(d,f,g))
%TRUE retract(p(a,b,c))

%FAIL p(X,Y,Z)

%TRUE assert(p(t,y,u))
%TRUE assert(p(h,j,k))

%TRUE p(t,y,u)
%TRUE p(h,j,k)
%FAIL p(a,b,c)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(X,Y,Z)'), nl, '$pj_reset', catch(( ( p(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(X,Y,Z)'), nl, '$pj_reset', catch(( ( p(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- p(a,X,Y)'), nl, '$pj_reset', catch(( ( p(a,X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p(1,X,Y)'), nl, '$pj_reset', catch(( ( p(1,X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p(x,X,Y)'), nl, '$pj_reset', catch(( ( p(x,X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- p(X,b,c)'), nl, '$pj_reset', catch(( ( p(X,b,c) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- p(X,2,3)'), nl, '$pj_reset', catch(( ( p(X,2,3) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- p(X,y,z)'), nl, '$pj_reset', catch(( ( p(X,y,z) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- assert(p(q,X,Y))'), nl, '$pj_reset', catch(( ( assert(p(q,X,Y)) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- assert(p(w,X,X))'), nl, '$pj_reset', catch(( ( assert(p(w,X,X)) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- p(w,7,X)'), nl, '$pj_reset', catch(( ( p(w,7,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- p(w,X,9)'), nl, '$pj_reset', catch(( ( p(w,X,9) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- assert(p(X,y,u))'), nl, '$pj_reset', catch(( ( assert(p(X,y,u)) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- retract(p(X,y,u))'), nl, '$pj_reset', catch(( ( retract(p(X,y,u)) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_main' :- between(1, 14, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------------------------------------------------- 96 projog_udp_indexable_rules
% argument indexing avoids trying to find alternative solutions
% first argument of p/3 is indexable as all values in that position are immutable

p(a, X, Y) :- Y is X+1.
p(b, X, Y) :- Y is X-1.
p(c, X, Y) :- Y is X*2.

%?- p(a,5,Y)
% Y=6

%?- p(b,5,Y)
% Y=4

%?- p(c,5,Y)
% Y=10

%FAIL p(z,5,Y)

%?- p(X,5,Y)
% X=a
% Y=6
% X=b
% Y=4
% X=c
% Y=10

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(a,5,Y)'), nl, '$pj_reset', catch(( ( p(a,5,Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(b,5,Y)'), nl, '$pj_reset', catch(( ( p(b,5,Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- p(c,5,Y)'), nl, '$pj_reset', catch(( ( p(c,5,Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p(X,5,Y)'), nl, '$pj_reset', catch(( ( p(X,5,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_main' :- between(1, 4, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------------------- 97 projog_udp_predicate_meta_data_IndexablePredicateFactory
?- pj_add_predicate(meta_data/2, 'org.projog.core.predicate.udp.PredicateMetaData').

p(a, 1).
p(b, 2) :- repeat(2).
p(c, 2).
p(c, 3).
p(c, 3).
p(d, 4) :- repeat(2).
p(e(1), 5).
p(e(2), 6).
p(e(3), 7).
p(f, 8).

%?- meta_data(p(_, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(X,Y)
% X=a
% Y=1
% X=b
% Y=2
% X=b
% Y=2
% X=c
% Y=2
% X=c
% Y=3
% X=c
% Y=3
% X=d
% Y=4
% X=d
% Y=4
% X=e(1)
% Y=5
% X=e(2)
% Y=6
% X=e(3)
% Y=7
% X=f
% Y=8

%?- meta_data(p(a, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(a, X)
% X=1

%?- meta_data(p(_, 1), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(X, 1)
% X=a

%?- meta_data(p(b, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(b, X)
% X=2
% X=2

%?- meta_data(p(_, 4), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(X, 4)
% X=d
% X=d

%?- meta_data(p(c, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(c, _)
%YES
%YES
%YES

%?- meta_data(p(c, Y), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=factory_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=factory_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=actual_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=actual_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$SingleIndexPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=processed_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=processed_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE

%?- p(c, Y)
% Y=2
% Y=3
% Y=3

%?- meta_data(p(_, 2), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(_, 2)
%YES
%YES
%YES

%?- meta_data(p(Y, 2), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=factory_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=factory_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=actual_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=actual_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=processed_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=processed_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE

%?- p(X, 2)
% X=b
% X=b
% X=c

%?- meta_data(p(z, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.NeverSucceedsPredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%FAIL p(z, X)

%?- meta_data(p(_, 9), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.NeverSucceedsPredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%FAIL p(X, 9)

%?- meta_data(p(a, 2), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.NeverSucceedsPredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%FAIL p(a, 2)

%?- meta_data(p(e(_), _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(e(_), _)
%YES
%YES
%YES

%?- meta_data(p(e(Y), Z), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=factory_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=factory_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE

%?- p(e(X), Y)
% X=1
% Y=5
% X=2
% Y=6
% X=3
% Y=7

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- meta_data(p(_, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(X,Y)'), nl, '$pj_reset', catch(( ( p(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- meta_data(p(a, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(a, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p(a, X)'), nl, '$pj_reset', catch(( ( p(a, X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- meta_data(p(_, 1), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_, 1), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- p(X, 1)'), nl, '$pj_reset', catch(( ( p(X, 1) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- meta_data(p(b, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(b, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- p(b, X)'), nl, '$pj_reset', catch(( ( p(b, X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- meta_data(p(_, 4), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_, 4), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- p(X, 4)'), nl, '$pj_reset', catch(( ( p(X, 4) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- meta_data(p(c, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(c, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- p(c, _)'), nl, '$pj_reset', catch(( ( p(c, _) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- meta_data(p(c, Y), X)'), nl, '$pj_reset', catch(( ( meta_data(p(c, Y), X) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- p(c, Y)'), nl, '$pj_reset', catch(( ( p(c, Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_q'(15) :- write('?- meta_data(p(_, 2), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_, 2), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(15).
'$pj_q'(16) :- write('?- p(_, 2)'), nl, '$pj_reset', catch(( ( p(_, 2) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(16).
'$pj_q'(17) :- write('?- meta_data(p(Y, 2), X)'), nl, '$pj_reset', catch(( ( meta_data(p(Y, 2), X) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(17).
'$pj_q'(18) :- write('?- p(X, 2)'), nl, '$pj_reset', catch(( ( p(X, 2) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(18).
'$pj_q'(19) :- write('?- meta_data(p(z, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(z, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(19).
'$pj_q'(20) :- write('?- meta_data(p(_, 9), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_, 9), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(20).
'$pj_q'(21) :- write('?- meta_data(p(a, 2), X)'), nl, '$pj_reset', catch(( ( meta_data(p(a, 2), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(21).
'$pj_q'(22) :- write('?- meta_data(p(e(_), _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(e(_), _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(22).
'$pj_q'(23) :- write('?- p(e(_), _)'), nl, '$pj_reset', catch(( ( p(e(_), _) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(23).
'$pj_q'(24) :- write('?- meta_data(p(e(Y), Z), X)'), nl, '$pj_reset', catch(( ( meta_data(p(e(Y), Z), X) ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(24).
'$pj_q'(25) :- write('?- p(e(X), Y)'), nl, '$pj_reset', catch(( ( p(e(X), Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(25).
'$pj_main' :- between(1, 25, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%- 98 projog_udp_predicate_meta_data_LinkedHashMapPredicateFactory_multiple_arguments
?- pj_add_predicate(meta_data/2, 'org.projog.core.predicate.udp.PredicateMetaData').

p1(a, 1, x).
p1(b, X, y) :- repeat(2).
p1(c, 3, Z).

p2(a, 1, x).
p2(X, 2, y) :- repeat(2).
p2(c, 3, Z).

p3(a, 1, x).
p3(b, X, y) :- repeat(2).
p3(X, 3, z).

%?- meta_data(p1(_, _, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- meta_data(p2(_, _, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- meta_data(p3(_, _, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p1(X, Y, Z)
% X=a
% Y=1
% Z=x
% X=b
% Y=UNINSTANTIATED VARIABLE
% Z=y
% X=b
% Y=UNINSTANTIATED VARIABLE
% Z=y
% X=c
% Y=3
% Z=UNINSTANTIATED VARIABLE

%?- p2(X, Y, Z)
% X=a
% Y=1
% Z=x
% X=UNINSTANTIATED VARIABLE
% Y=2
% Z=y
% X=UNINSTANTIATED VARIABLE
% Y=2
% Z=y
% X=c
% Y=3
% Z=UNINSTANTIATED VARIABLE

%?- p3(X, Y, Z)
% X=a
% Y=1
% Z=x
% X=b
% Y=UNINSTANTIATED VARIABLE
% Z=y
% X=b
% Y=UNINSTANTIATED VARIABLE
% Z=y
% X=UNINSTANTIATED VARIABLE
% Y=3
% Z=z

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- meta_data(p1(_, _, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p1(_, _, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- meta_data(p2(_, _, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p2(_, _, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- meta_data(p3(_, _, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p3(_, _, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p1(X, Y, Z)'), nl, '$pj_reset', catch(( ( p1(X, Y, Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p2(X, Y, Z)'), nl, '$pj_reset', catch(( ( p2(X, Y, Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- p3(X, Y, Z)'), nl, '$pj_reset', catch(( ( p3(X, Y, Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_main' :- between(1, 6, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%- 99 projog_udp_predicate_meta_data_LinkedHashMapPredicateFactory_single_argument
?- pj_add_predicate(meta_data/2, 'org.projog.core.predicate.udp.PredicateMetaData').

p(a).
p(b) :- repeat(2).
p(c).
p(d(1)).
p(d(2)).
p(d(3)).
p(e).

%?- meta_data(p(_), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(X)
% X=a
% X=b
% X=b
% X=c
% X=d(1)
% X=d(2)
% X=d(3)
% X=e

%?- meta_data(p(a), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%TRUE p(a)

%?- meta_data(p(b), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(b)
%YES
%YES

%?- meta_data(p(z), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.NeverSucceedsPredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%FAIL p(z)

%?- meta_data(p(d(_)), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(d(X))
% X=1
% X=2
% X=3

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- meta_data(p(_), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(X)'), nl, '$pj_reset', catch(( ( p(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- meta_data(p(a), X)'), nl, '$pj_reset', catch(( ( meta_data(p(a), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- meta_data(p(b), X)'), nl, '$pj_reset', catch(( ( meta_data(p(b), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p(b)'), nl, '$pj_reset', catch(( ( p(b) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- meta_data(p(z), X)'), nl, '$pj_reset', catch(( ( meta_data(p(z), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- meta_data(p(d(_)), X)'), nl, '$pj_reset', catch(( ( meta_data(p(d(_)), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- p(d(X))'), nl, '$pj_reset', catch(( ( p(d(X)) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_main' :- between(1, 8, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%--------------- 100 projog_udp_predicate_meta_data_NotIndexablePredicateFactory
?- pj_add_predicate(meta_data/2, 'org.projog.core.predicate.udp.PredicateMetaData').

p(a).
p(b(_)).
p(c(1)).
p(c(2)).
p(c(3)).
p(d) :- repeat(2).
p(e(X,X)) :- repeat(2).
p(f(1)).
p(f(_)).
p(f(2)).
p(g).

%?- meta_data(p(_), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(X)
% X=a
% X=b(_)
% X=c(1)
% X=c(2)
% X=c(3)
% X=d
% X=d
% X=e(X, X)
% X=e(X, X)
% X=f(1)
% X=f(_)
% X=f(2)
% X=g

%?- meta_data(p(a), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%TRUE p(a)

%?- meta_data(p(d), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(d)
%YES
%YES

%?- meta_data(p(b(z)), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%TRUE p(b(z))

%?- meta_data(p(c(_)), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(c(X))
% X=1
% X=2
% X=3

%?- meta_data(p(e(1,1)), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(e(1,1))
%YES
%YES

%?- meta_data(p(e(1,2)), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.NeverSucceedsPredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%FAIL p(e(1,2))

%?- meta_data(p(f(3)), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%TRUE p(f(3))

%?- meta_data(p(f(_)), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(f(X))
% X=1
% X=UNINSTANTIATED VARIABLE
% X=2

%?- meta_data(p(z), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.NeverSucceedsPredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%FAIL p(z)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- meta_data(p(_), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(X)'), nl, '$pj_reset', catch(( ( p(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- meta_data(p(a), X)'), nl, '$pj_reset', catch(( ( meta_data(p(a), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- meta_data(p(d), X)'), nl, '$pj_reset', catch(( ( meta_data(p(d), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p(d)'), nl, '$pj_reset', catch(( ( p(d) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- meta_data(p(b(z)), X)'), nl, '$pj_reset', catch(( ( meta_data(p(b(z)), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- meta_data(p(c(_)), X)'), nl, '$pj_reset', catch(( ( meta_data(p(c(_)), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- p(c(X))'), nl, '$pj_reset', catch(( ( p(c(X)) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- meta_data(p(e(1,1)), X)'), nl, '$pj_reset', catch(( ( meta_data(p(e(1,1)), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- p(e(1,1))'), nl, '$pj_reset', catch(( ( p(e(1,1)) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- meta_data(p(e(1,2)), X)'), nl, '$pj_reset', catch(( ( meta_data(p(e(1,2)), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- meta_data(p(f(3)), X)'), nl, '$pj_reset', catch(( ( meta_data(p(f(3)), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- meta_data(p(f(_)), X)'), nl, '$pj_reset', catch(( ( meta_data(p(f(_)), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- p(f(X))'), nl, '$pj_reset', catch(( ( p(f(X)) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_q'(15) :- write('?- meta_data(p(z), X)'), nl, '$pj_reset', catch(( ( meta_data(p(z), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(15).
'$pj_main' :- between(1, 15, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%- 101 projog_udp_predicate_meta_data_SingleIndexPredicateFactory_multiple_arguments
?- pj_add_predicate(meta_data/2, 'org.projog.core.predicate.udp.PredicateMetaData').

p1(a, 1, x).
p1(b, X, y) :- repeat(2).
p1(c, 3, Z).
p1(a, 4, q).

p2(a, 1, x).
p2(X, 2, y) :- repeat(2).
p2(c, 3, Z).
p2(d, 1, q).

p3(a, 1, x).
p3(b, X, y) :- repeat(2).
p3(X, 3, z).
p3(d, 4, x).

%?- meta_data(p1(_, _, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$SingleIndexPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$SingleIndexPredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- meta_data(p2(_, _, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$SingleIndexPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$SingleIndexPredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- meta_data(p3(_, _, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$SingleIndexPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$SingleIndexPredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p1(X, Y, Z)
% X=a
% Y=1
% Z=x
% X=b
% Y=UNINSTANTIATED VARIABLE
% Z=y
% X=b
% Y=UNINSTANTIATED VARIABLE
% Z=y
% X=c
% Y=3
% Z=UNINSTANTIATED VARIABLE
% X=a
% Y=4
% Z=q

%?- p2(X, Y, Z)
% X=a
% Y=1
% Z=x
% X=UNINSTANTIATED VARIABLE
% Y=2
% Z=y
% X=UNINSTANTIATED VARIABLE
% Y=2
% Z=y
% X=c
% Y=3
% Z=UNINSTANTIATED VARIABLE
% X=d
% Y=1
% Z=q

%?- p3(X, Y, Z)
% X=a
% Y=1
% Z=x
% X=b
% Y=UNINSTANTIATED VARIABLE
% Z=y
% X=b
% Y=UNINSTANTIATED VARIABLE
% Z=y
% X=UNINSTANTIATED VARIABLE
% Y=3
% Z=z
% X=d
% Y=4
% Z=x

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- meta_data(p1(_, _, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p1(_, _, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- meta_data(p2(_, _, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p2(_, _, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- meta_data(p3(_, _, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p3(_, _, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p1(X, Y, Z)'), nl, '$pj_reset', catch(( ( p1(X, Y, Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p2(X, Y, Z)'), nl, '$pj_reset', catch(( ( p2(X, Y, Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- p3(X, Y, Z)'), nl, '$pj_reset', catch(( ( p3(X, Y, Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_main' :- between(1, 6, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%- 102 projog_udp_predicate_meta_data_SingleIndexPredicateFactory_single_argument
?- pj_add_predicate(meta_data/2, 'org.projog.core.predicate.udp.PredicateMetaData').

p(a).
p(b) :- repeat(2).
p(c).
p(c).
p(d(1)).
p(d(2)).
p(d(3)).
p(e).

%?- meta_data(p(_), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$SingleIndexPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$SingleIndexPredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(X)
% X=a
% X=b
% X=b
% X=c
% X=c
% X=d(1)
% X=d(2)
% X=d(3)
% X=e

%?- meta_data(p(a), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$SingleIndexPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%TRUE p(a)

%?- meta_data(p(b), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$SingleIndexPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(b)
%YES
%YES

%?- meta_data(p(c), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$SingleIndexPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(c)
%YES
%YES

%?- meta_data(p(z), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$SingleIndexPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.NeverSucceedsPredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%FAIL p(z)

%?- meta_data(p(d(_)), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$SingleIndexPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(d(X))
% X=1
% X=2
% X=3

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- meta_data(p(_), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(X)'), nl, '$pj_reset', catch(( ( p(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- meta_data(p(a), X)'), nl, '$pj_reset', catch(( ( meta_data(p(a), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- meta_data(p(b), X)'), nl, '$pj_reset', catch(( ( meta_data(p(b), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p(b)'), nl, '$pj_reset', catch(( ( p(b) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- meta_data(p(c), X)'), nl, '$pj_reset', catch(( ( meta_data(p(c), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- p(c)'), nl, '$pj_reset', catch(( ( p(c) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- meta_data(p(z), X)'), nl, '$pj_reset', catch(( ( meta_data(p(z), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- meta_data(p(d(_)), X)'), nl, '$pj_reset', catch(( ( meta_data(p(d(_)), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- p(d(X))'), nl, '$pj_reset', catch(( ( p(d(X)) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_main' :- between(1, 10, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%----- 103 projog_udp_predicate_meta_data_SingleNonRetryableRulePredicateFactory
?- pj_add_predicate(meta_data/2, 'org.projog.core.predicate.udp.PredicateMetaData').

p(a, b).

%?- meta_data(p(_, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : false
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=actual_isRetryable : false
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(X,Y)
% X=a
% Y=b

%?- meta_data(p(a, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : false
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=actual_isRetryable : false
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(a,X)
% X=b

%?- meta_data(p(_, b), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : false
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=actual_isRetryable : false
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(X,b)
% X=a

%?- meta_data(p(a, b), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : false
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=actual_isRetryable : false
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%TRUE p(a,b)

%?- meta_data(p(b, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : false
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=actual_isRetryable : false
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.NeverSucceedsPredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%FAIL p(b,X)

%?- meta_data(p(_, a), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : false
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=actual_isRetryable : false
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.NeverSucceedsPredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%FAIL p(X,a)

%?- meta_data(p(b, a), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : false
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=actual_isRetryable : false
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.NeverSucceedsPredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%FAIL p(b,a)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- meta_data(p(_, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(X,Y)'), nl, '$pj_reset', catch(( ( p(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- meta_data(p(a, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(a, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p(a,X)'), nl, '$pj_reset', catch(( ( p(a,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- meta_data(p(_, b), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_, b), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- p(X,b)'), nl, '$pj_reset', catch(( ( p(X,b) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- meta_data(p(a, b), X)'), nl, '$pj_reset', catch(( ( meta_data(p(a, b), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- meta_data(p(b, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(b, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- meta_data(p(_, a), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_, a), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- meta_data(p(b, a), X)'), nl, '$pj_reset', catch(( ( meta_data(p(b, a), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_main' :- between(1, 10, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%-------- 104 projog_udp_predicate_meta_data_SingleRetryableRulePredicateFactory
?- pj_add_predicate(meta_data/2, 'org.projog.core.predicate.udp.PredicateMetaData').

p(a, b) :- repeat(2).

%?- meta_data(p(_, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(X,Y)
% X=a
% Y=b
% X=a
% Y=b

%?- meta_data(p(a, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(a,X)
% X=b
% X=b

%?- meta_data(p(_, b), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(X,b)
% X=a
% X=a

%?- meta_data(p(a, b), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(a,b)
%YES
%YES

%?- meta_data(p(b, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.NeverSucceedsPredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%FAIL p(b,X)

%?- meta_data(p(_, a), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.NeverSucceedsPredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%FAIL p(X,a)

%?- meta_data(p(b, a), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.NeverSucceedsPredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%FAIL p(b,a)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- meta_data(p(_, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(X,Y)'), nl, '$pj_reset', catch(( ( p(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- meta_data(p(a, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(a, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p(a,X)'), nl, '$pj_reset', catch(( ( p(a,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- meta_data(p(_, b), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_, b), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- p(X,b)'), nl, '$pj_reset', catch(( ( p(X,b) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- meta_data(p(a, b), X)'), nl, '$pj_reset', catch(( ( meta_data(p(a, b), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- p(a,b)'), nl, '$pj_reset', catch(( ( p(a,b) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- meta_data(p(b, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(b, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- meta_data(p(_, a), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_, a), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- meta_data(p(b, a), X)'), nl, '$pj_reset', catch(( ( meta_data(p(b, a), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_main' :- between(1, 11, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%--------------------------- 105 projog_udp_predicate_meta_data_UnknownPredicate
?- pj_add_predicate(meta_data/2, 'org.projog.core.predicate.udp.PredicateMetaData').

%?- meta_data(p(_), X)
% X=factory_class : org.projog.core.predicate.UnknownPredicate
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.UnknownPredicate
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%FAIL p(a)

%TRUE assert(p(a)), assert(p(b)), assert(p(c))

%?- meta_data(p(_), X)
% X=factory_class : org.projog.core.predicate.udp.DynamicUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.DynamicUserDefinedPredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%TRUE p(a)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- meta_data(p(_), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- meta_data(p(_), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%--------------------------- 106 projog_udp_predicate_meta_data_multiple_clauses
?- pj_add_predicate(meta_data/2, 'org.projog.core.predicate.udp.PredicateMetaData').

p1(a) :- write(a).
p1(b) :- write(b).
p1(c) :- write(c).

p2(d) :- write(d).
p2(e) :- write(e).
p2(f) :- write(f).

p3(g) :- write(g).
p3(h) :- write(h).
p3(i) :- write(i).

p4(x) :- p1(b), p2(d), p3(i).
p4(y) :- p1(a), p2(f), p3(h).
p4(z) :- p1(c), p2(e), p3(g).

p5(X) :- p4(X).

p6 :- p5(x).

%?- p5(X)
%OUTPUT bdi
% X=x
%OUTPUT afh
% X=y
%OUTPUT ceg
% X=z

%?- p5(x)
%OUTPUT bdi
%YES

%?- p5(y)
%OUTPUT afh
%YES

%?- p5(z)
%OUTPUT ceg
%YES

%FAIL p5(w)

%?- p6
%OUTPUT bdi
%YES

%?- meta_data(p4(q), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.NeverSucceedsPredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%?- meta_data(p4(x), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%?- meta_data(p5(q), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- meta_data(p5(x), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- meta_data(p6, X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p5(X)'), nl, '$pj_reset', catch(( ( p5(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p5(x)'), nl, '$pj_reset', catch(( ( p5(x) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- p5(y)'), nl, '$pj_reset', catch(( ( p5(y) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p5(z)'), nl, '$pj_reset', catch(( ( p5(z) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p6'), nl, '$pj_reset', catch(( ( p6 ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- meta_data(p4(q), X)'), nl, '$pj_reset', catch(( ( meta_data(p4(q), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- meta_data(p4(x), X)'), nl, '$pj_reset', catch(( ( meta_data(p4(x), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- meta_data(p5(q), X)'), nl, '$pj_reset', catch(( ( meta_data(p5(q), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- meta_data(p5(x), X)'), nl, '$pj_reset', catch(( ( meta_data(p5(x), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- meta_data(p6, X)'), nl, '$pj_reset', catch(( ( meta_data(p6, X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_main' :- between(1, 10, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------------------ 107 projog_udp_predicate_meta_data_multiple_clauses_with_cut
?- pj_add_predicate(meta_data/2, 'org.projog.core.predicate.udp.PredicateMetaData').

p(a, 1, X) :- repeat.
p(a, 2, X) :- !, repeat.
p(a, 3, X) :- repeat, !.
p(a, 4, X).
p(b, 1, X) :- repeat.
p(b, 2, X) :- var(X), !.
p(b, 2, X). 
p(c, 3, x).
p(c, 3, y).
p(c, 3, z).
p(c, 4, x) :- repeat, !.
p(c, 4, y).
p(d, 1, X) :- !.
p(d, 2, X) :- repeat, !.
p(d, 2, X).
p(e, 1, X) :- repeat.
p(e, 2, X).
p(e, 2, X).
p(f, 1, x).
p(f, 2, y).
p(f, 3, z).
p(g, 1, x) :- !.
p(g, 2, y) :- !.
p(g, 3, z).

% SingleRetryableRulePredicateFactory retryable, no cut
%?- meta_data(p(a, 1, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

% SingleRetryableRulePredicateFactory retryable, has cut
%?- meta_data(p(a, 2, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

% SingleNonRetryableRulePredicateFactory - non retryable, has cut
%?- meta_data(p(a, 3, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

% SingleNonRetryableRulePredicateFactory - non retryable, no cut
%?- meta_data(p(a, 4, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

% IndexablePredicateFactory - retryable
%?- meta_data(p(f, Y, Z), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=factory_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=factory_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE

% IndexablePredicateFactory not retryable
%?- meta_data(p(g, Y, Z), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=factory_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=factory_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_isRetryable : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE

% SingleIndexPredicateFactory retryable
%?- meta_data(p(b, Y, Z), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=factory_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=factory_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$SingleIndexPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE

% SingleIndexPredicateFactory not retryable
%?- meta_data(p(d, Y, Z), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=factory_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=factory_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$SingleIndexPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_isRetryable : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE

% LinkedHashMapPredicateFactory retryable
%?- meta_data(p(c, 3, Y), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=factory_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=factory_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=actual_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=actual_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=processed_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=processed_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE

% LinkedHashMapPredicateFactory not retryable
%?- meta_data(p(c, 4, Y), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=factory_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=factory_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=actual_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=actual_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=processed_isRetryable : false
% Y=UNINSTANTIATED VARIABLE
% X=processed_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE

% NotIndexablePredicateFactory retryable
%?- meta_data(p(e, 2, Y), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=factory_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=factory_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=actual_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=actual_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=processed_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=processed_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE

% NotIndexablePredicateFactory not retryable
%?- meta_data(p(b, 2, Y), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=factory_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=factory_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=actual_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=actual_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=processed_isRetryable : false
% Y=UNINSTANTIATED VARIABLE
% X=processed_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- meta_data(p(a, 1, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(a, 1, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- meta_data(p(a, 2, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(a, 2, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- meta_data(p(a, 3, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(a, 3, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- meta_data(p(a, 4, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(a, 4, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- meta_data(p(f, Y, Z), X)'), nl, '$pj_reset', catch(( ( meta_data(p(f, Y, Z), X) ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- meta_data(p(g, Y, Z), X)'), nl, '$pj_reset', catch(( ( meta_data(p(g, Y, Z), X) ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- meta_data(p(b, Y, Z), X)'), nl, '$pj_reset', catch(( ( meta_data(p(b, Y, Z), X) ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- meta_data(p(d, Y, Z), X)'), nl, '$pj_reset', catch(( ( meta_data(p(d, Y, Z), X) ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- meta_data(p(c, 3, Y), X)'), nl, '$pj_reset', catch(( ( meta_data(p(c, 3, Y), X) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- meta_data(p(c, 4, Y), X)'), nl, '$pj_reset', catch(( ( meta_data(p(c, 4, Y), X) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- meta_data(p(e, 2, Y), X)'), nl, '$pj_reset', catch(( ( meta_data(p(e, 2, Y), X) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- meta_data(p(b, 2, Y), X)'), nl, '$pj_reset', catch(( ( meta_data(p(b, 2, Y), X) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_main' :- between(1, 12, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------- 108 projog_udp_predicates_with_single_fact_atom_atom_variable_arguments
p(a,b,X).

%FAIL p(a,a,X)
%FAIL p(b,b,X)
%FAIL p(x,y,X)
%FAIL p(x,y,z)
%FAIL p(a,a,c)
%FAIL p(b,b,c)

%TRUE p(a,b,c)
%TRUE p(a,b,b)
%TRUE p(a,b,a)
%TRUE p(a,b,z)

%?- p(A,B,C)
% A=a
% B=b
% C=UNINSTANTIATED VARIABLE

%?- p(a,b,Q)
% Q=UNINSTANTIATED VARIABLE

%?- p(a,b,Q),W=[Q]
% Q=UNINSTANTIATED VARIABLE
% W=[X]

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(A,B,C)'), nl, '$pj_reset', catch(( ( p(A,B,C) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(a,b,Q)'), nl, '$pj_reset', catch(( ( p(a,b,Q) ), write('Q = '), writeq(Q), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- p(a,b,Q),W=[Q]'), nl, '$pj_reset', catch(( ( p(a,b,Q),W=[Q] ), write('Q = '), writeq(Q), nl, write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------- 109 projog_udp_predicates_with_single_fact_atom_variable_atom_arguments
p(a,X,c).

%FAIL p(a,X,a)
%FAIL p(c,X,c)
%FAIL p(x,X,z)
%FAIL p(x,y,z)
%FAIL p(a,c,a)
%FAIL p(c,a,c)

%TRUE p(a,a,c)
%TRUE p(a,c,c)
%TRUE p(a,b,c)
%TRUE p(a,z,c)

%?- p(A,B,C)
% A=a
% B=UNINSTANTIATED VARIABLE
% C=c

%?- p(a,Q,c)
% Q=UNINSTANTIATED VARIABLE

%?- p(a,Q,c),W=[Q]
% Q=UNINSTANTIATED VARIABLE
% W=[X]

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(A,B,C)'), nl, '$pj_reset', catch(( ( p(A,B,C) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(a,Q,c)'), nl, '$pj_reset', catch(( ( p(a,Q,c) ), write('Q = '), writeq(Q), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- p(a,Q,c),W=[Q]'), nl, '$pj_reset', catch(( ( p(a,Q,c),W=[Q] ), write('Q = '), writeq(Q), nl, write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------ 110 projog_udp_predicates_with_single_fact_predicate_atom_atom_arguments
p(p(a),b,a).

%FAIL p(p(X),X,a)
%FAIL p(p(X),X,X)

%?- p(p(X),b,X)
% X=a

%?- p(p(X),Y,X)
% X=a
% Y=b

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(p(X),b,X)'), nl, '$pj_reset', catch(( ( p(p(X),b,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(p(X),Y,X)'), nl, '$pj_reset', catch(( ( p(p(X),Y,X) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%--------------- 111 projog_udp_predicates_with_single_fact_single_atom_argument
p(a).

%FAIL p(z)
%FAIL p(a,a)

%TRUE p(a)

%?- p(X)
% X=a

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(X)'), nl, '$pj_reset', catch(( ( p(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------ 112 projog_udp_predicates_with_single_fact_three_distinct_atom_arguments
p(a,b,c).

%FAIL p(a,c,b)
%FAIL p(b,a,c)
%FAIL p(b,c,a)
%FAIL p(c,a,b)
%FAIL p(c,b,a)
%FAIL p(a,a,a)
%FAIL p(b,b,b)
%FAIL p(c,c,c)
%FAIL p(x,b,c)
%FAIL p(a,x,c)
%FAIL p(a,b,x)
%FAIL p(x,x,x)
%FAIL p(x,y,z)
%FAIL p(X,X,c)
%FAIL p(X,b,X)
%FAIL p(a,X,X)
%FAIL p(X,X,X)
%FAIL p(Y,X,X)
%FAIL p(X,Y,X)
%FAIL p(X,X,Y)
%FAIL p(a,b)
%FAIL p(a,b,c,d)

%TRUE p(a,b,c)

%?- p(X,b,c)
% X=a

%?- p(a,X,c)
% X=b

%?- p(a,b,X)
% X=c

%?- p(X,Y,c)
% X=a
% Y=b

%?- p(X,b,Y)
% X=a
% Y=c

%?- p(a,X,Y)
% X=b
% Y=c

%?- p(X,Y,Z)
% X=a
% Y=b
% Z=c

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(X,b,c)'), nl, '$pj_reset', catch(( ( p(X,b,c) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(a,X,c)'), nl, '$pj_reset', catch(( ( p(a,X,c) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- p(a,b,X)'), nl, '$pj_reset', catch(( ( p(a,b,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p(X,Y,c)'), nl, '$pj_reset', catch(( ( p(X,Y,c) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p(X,b,Y)'), nl, '$pj_reset', catch(( ( p(X,b,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- p(a,X,Y)'), nl, '$pj_reset', catch(( ( p(a,X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- p(X,Y,Z)'), nl, '$pj_reset', catch(( ( p(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_main' :- between(1, 7, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%-- 113 projog_udp_predicates_with_single_fact_three_distinct_variable_arguments
p(X,Y,Z).

%TRUE p(a,a,a)
%TRUE p(b,a,a)
%TRUE p(a,b,a)
%TRUE p(a,a,b)
%TRUE p(a,b,c)
%TRUE p(x,y,z)

%?- p(A,B,C)
% A=UNINSTANTIATED VARIABLE
% B=UNINSTANTIATED VARIABLE
% C=UNINSTANTIATED VARIABLE

%?- D=x(A,B,C), p(A,B,C)
% A=UNINSTANTIATED VARIABLE
% B=UNINSTANTIATED VARIABLE
% C=UNINSTANTIATED VARIABLE
% D=x(A, B, C)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(A,B,C)'), nl, '$pj_reset', catch(( ( p(A,B,C) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- D=x(A,B,C), p(A,B,C)'), nl, '$pj_reset', catch(( ( D=x(A,B,C), p(A,B,C) ), write('D = '), writeq(D), nl, write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%----- 114 projog_udp_predicates_with_single_fact_three_identical_atom_arguments
p(a,a,a).

%FAIL p(b,a,a)
%FAIL p(a,b,a)
%FAIL p(a,a,b)
%FAIL p(X,a,b)
%FAIL p(X,b,a)
%FAIL p(a,X,b)
%FAIL p(b,X,a)
%FAIL p(a,b,X)
%FAIL p(b,a,X)

%?- p(X,Y,Z)
% X=a
% Y=a
% Z=a

%?- p(X,X,X)
% X=a

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(X,Y,Z)'), nl, '$pj_reset', catch(( ( p(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(X,X,X)'), nl, '$pj_reset', catch(( ( p(X,X,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%- 115 projog_udp_predicates_with_single_fact_three_identical_variable_arguments
p(X,X,X).

%FAIL p(b,a,a)
%FAIL p(a,b,a)
%FAIL p(a,a,b)

%TRUE p(a,a,a)
%TRUE p(b,b,b)

%FAIL p(a,a,b)

%?- p(p(X),Y,p(7))
% X=7
% Y=p(7)

%?- p(Y,p(X),p(7))
% X=7
% Y=p(7)

%?- p(Y,p(7),p(X))
% X=7
% Y=p(7)

%?- p(p(7),Y,p(X))
% X=7
% Y=p(7)

%?- p(p(7),p(X),Y)
% X=7
% Y=p(7)

%?- p(p(X),p(7),Y)
% X=7
% Y=p(7)

%?- D=x(A,B,C), p(A,B,C)
% A=UNINSTANTIATED VARIABLE
% B=UNINSTANTIATED VARIABLE
% C=UNINSTANTIATED VARIABLE
% D=x(X, X, X)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(p(X),Y,p(7))'), nl, '$pj_reset', catch(( ( p(p(X),Y,p(7)) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(Y,p(X),p(7))'), nl, '$pj_reset', catch(( ( p(Y,p(X),p(7)) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- p(Y,p(7),p(X))'), nl, '$pj_reset', catch(( ( p(Y,p(7),p(X)) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p(p(7),Y,p(X))'), nl, '$pj_reset', catch(( ( p(p(7),Y,p(X)) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p(p(7),p(X),Y)'), nl, '$pj_reset', catch(( ( p(p(7),p(X),Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- p(p(X),p(7),Y)'), nl, '$pj_reset', catch(( ( p(p(X),p(7),Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- D=x(A,B,C), p(A,B,C)'), nl, '$pj_reset', catch(( ( D=x(A,B,C), p(A,B,C) ), write('D = '), writeq(D), nl, write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_main' :- between(1, 7, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%- 116 projog_udp_predicates_with_single_fact_three_variables_two_shared_arguments
p(X,Y,X).

%FAIL p(a,b,c)
%FAIL p(a,a,c)
%FAIL p(a,c,c)

%TRUE p(a,a,a)
%TRUE p(a,b,a)
%TRUE p(x,y,x)

%FAIL p(a,c,c)

%?- p(a,b,Q)
% Q=a

%?- p(Q,b,a)
% Q=a

%?- p(A,B,C)
% A=UNINSTANTIATED VARIABLE
% B=UNINSTANTIATED VARIABLE
% C=UNINSTANTIATED VARIABLE

%?- p(A,B,C), A=7
% A=7
% B=UNINSTANTIATED VARIABLE
% C=7

%?- D=x(A,B,C), p(A,B,C)
% A=UNINSTANTIATED VARIABLE
% B=UNINSTANTIATED VARIABLE
% C=UNINSTANTIATED VARIABLE
% D=x(X, Y, X)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(a,b,Q)'), nl, '$pj_reset', catch(( ( p(a,b,Q) ), write('Q = '), writeq(Q), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(Q,b,a)'), nl, '$pj_reset', catch(( ( p(Q,b,a) ), write('Q = '), writeq(Q), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- p(A,B,C)'), nl, '$pj_reset', catch(( ( p(A,B,C) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p(A,B,C), A=7'), nl, '$pj_reset', catch(( ( p(A,B,C), A=7 ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- D=x(A,B,C), p(A,B,C)'), nl, '$pj_reset', catch(( ( D=x(A,B,C), p(A,B,C) ), write('D = '), writeq(D), nl, write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_main' :- between(1, 5, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
%------- 117 projog_udp_predicates_with_single_fact_variable_atom_atom_arguments
p(X,b,c).

%FAIL p(X,b,b)
%FAIL p(X,c,c)
%FAIL p(X,y,z)
%FAIL p(x,y,z)
%FAIL p(b,c,b)
%FAIL p(c,b,b)

%TRUE p(a,b,c)
%TRUE p(z,b,c)

%?- p(A,B,C)
% A=UNINSTANTIATED VARIABLE
% B=b
% C=c

%?- p(Q,b,c)
% Q=UNINSTANTIATED VARIABLE

%?- p(Q,b,c),W=[Q]
% Q=UNINSTANTIATED VARIABLE
% W=[X]

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(A,B,C)'), nl, '$pj_reset', catch(( ( p(A,B,C) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(Q,b,c)'), nl, '$pj_reset', catch(( ( p(Q,b,c) ), write('Q = '), writeq(Q), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- p(Q,b,c),W=[Q]'), nl, '$pj_reset', catch(( ( p(Q,b,c),W=[Q] ), write('Q = '), writeq(Q), nl, write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
