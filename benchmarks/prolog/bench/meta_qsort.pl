% meta_qsort — a meta-interpreter running the Warren qsort benchmark (van Roy suite).
% Bottleneck: clause/call indirection through interpret/1-2 (meta-level dispatch).
% Source: SWI-Prolog/bench (meta_qsort, Ralph M. Haygood). Prints ok on success.
:- initialization(main).
main :- (meta_qsort -> write(ok) ; write(failed)), nl.
meta_qsort :- interpret(qsort).
interpret(Goal) :- interpret(Goal, Rest), ( nonvar(Rest), !, interpret(Rest) ; true ).
interpret(G, _) :- var(G), !, fail.
interpret((A, B), Rest) :- !, interpret(A, Rest0), ( nonvar(Rest0) -> Rest = (Rest0, B) ; interpret(B, Rest) ).
interpret((A ; B), Rest) :- !, interpret_disjunction(A, B, Rest).
interpret((A -> B), Rest) :- !, interpret_disjunction((A -> B), fail, Rest).
interpret(\+A, Rest) :- !, interpret_disjunction((A -> fail), true, Rest).
interpret(!, true) :- !.
interpret(G, _) :- number(G), !, fail.
interpret(G, _) :- is_built_in(G), !, interpret_built_in(G).
interpret(G, _) :- define(G, Body), interpret(Body).
interpret_disjunction((A -> B), _, Rest) :- interpret(A, Rest0), !, ( nonvar(Rest0) -> Rest = (Rest0 -> B) ; interpret(B, Rest) ).
interpret_disjunction((_ -> _), C, Rest) :- !, interpret(C, Rest).
interpret_disjunction(A, _, Rest) :- interpret(A, Rest).
interpret_disjunction(_, B, Rest) :- interpret(B, Rest).
is_built_in(true).
is_built_in(_=<_).
interpret_built_in(true).
interpret_built_in(X=<Y) :- X =< Y.
define(qsort,(qsort([27,74,17,33,94,18,46,83,65,2,32,53,28,85,99,47,28,82,6,11,55,29,39,81,90,37,10,0,66,51,7,21,85,27,31,63,75,4,95,99,11,28,61,74,18,92,40,53,59,8],_,[]))).
define(qsort([X|L],R,R0),(partition(L,X,L1,L2),qsort(L2,R1,R0),qsort(L1,R,[X|R1]))).
define(qsort([],R,R),true).
define(partition([X|L],Y,[X|L1],L2),(X=<Y,!,partition(L,Y,L1,L2))).
define(partition([X|L],Y,L1,[X|L2]),(partition(L,Y,L1,L2))).
define(partition([],_,[],[]),true).
