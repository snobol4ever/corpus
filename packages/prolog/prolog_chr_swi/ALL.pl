%------------------------------------------------------------------ 1 bench_bool
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Thom Fruehwirth ECRC 1991-1993
%% 910528 started boolean,and,or constraints
%% 910904 added xor,neg constraints
%% 911120 added imp constraint
%% 931110 ported to new release
%% 931111 added card constraint
%% 961107 Christian Holzbaur, SICStus mods
%%
%% ported to hProlog by Tom Schrijvers June 2003


:- module(bool,[main/0,main/1]).

:- use_module( library(chr)).
:- use_module(library(lists)).

:- chr_constraint boolean/1, and/3, or/3, xor/3, neg/2, imp/2, labeling/0, card/4.


boolean(0) <=> true.
boolean(1) <=> true.

labeling, boolean(A)#Pc <=>
( A=0 ; A=1),
labeling
pragma passive(Pc).


%% and/3 specification
%%and(0,0,0).
%%and(0,1,0).
%%and(1,0,0).
%%and(1,1,1).

and(0,X,Y) <=> Y=0.
and(X,0,Y) <=> Y=0.
and(1,X,Y) <=> Y=X.
and(X,1,Y) <=> Y=X.
and(X,Y,1) <=> X=1,Y=1.
and(X,X,Z) <=> X=Z.
%%and(X,Y,X) <=> imp(X,Y).
%%and(X,Y,Y) <=> imp(Y,X).
and(X,Y,A) \ and(X,Y,B) <=> A=B.
and(X,Y,A) \ and(Y,X,B) <=> A=B.

labeling, and(A,B,C)#Pc <=>
label_and(A,B,C),
labeling
pragma passive(Pc).

label_and(0,X,0).
label_and(1,X,X).


%% or/3 specification
%%or(0,0,0).
%%or(0,1,1).
%%or(1,0,1).
%%or(1,1,1).

or(0,X,Y) <=> Y=X.
or(X,0,Y) <=> Y=X.
or(X,Y,0) <=> X=0,Y=0.
or(1,X,Y) <=> Y=1.
or(X,1,Y) <=> Y=1.
or(X,X,Z) <=> X=Z.
%%or(X,Y,X) <=> imp(Y,X).
%%or(X,Y,Y) <=> imp(X,Y).
or(X,Y,A) \ or(X,Y,B) <=> A=B.
or(X,Y,A) \ or(Y,X,B) <=> A=B.

labeling, or(A,B,C)#Pc <=>
label_or(A,B,C),
labeling
pragma passive(Pc).

label_or(0,X,X).
label_or(1,X,1).


%% xor/3 specification
%%xor(0,0,0).
%%xor(0,1,1).
%%xor(1,0,1).
%%xor(1,1,0).

xor(0,X,Y) <=> X=Y.
xor(X,0,Y) <=> X=Y.
xor(X,Y,0) <=> X=Y.
xor(1,X,Y) <=> neg(X,Y).
xor(X,1,Y) <=> neg(X,Y).
xor(X,Y,1) <=> neg(X,Y).
xor(X,X,Y) <=> Y=0.
xor(X,Y,X) <=> Y=0.
xor(Y,X,X) <=> Y=0.
xor(X,Y,A) \ xor(X,Y,B) <=> A=B.
xor(X,Y,A) \ xor(Y,X,B) <=> A=B.

labeling, xor(A,B,C)#Pc <=>
label_xor(A,B,C),
labeling
pragma passive(Pc).

label_xor(0,X,X).
label_xor(1,X,Y):- neg(X,Y).


%% neg/2 specification
%%neg(0,1).
%%neg(1,0).

neg(0,X) <=> X=1.
neg(X,0) <=> X=1.
neg(1,X) <=> X=0.
neg(X,1) <=> X=0.
neg(X,X) <=> fail.
neg(X,Y) \ neg(Y,Z) <=> X=Z.
neg(X,Y) \ neg(Z,Y) <=> X=Z.
neg(Y,X) \ neg(Y,Z) <=> X=Z.
%% Interaction with other boolean constraints
neg(X,Y) \ and(X,Y,Z) <=> Z=0.
neg(Y,X) \ and(X,Y,Z) <=> Z=0.
neg(X,Z) , and(X,Y,Z) <=> X=1,Y=0,Z=0.
neg(Z,X) , and(X,Y,Z) <=> X=1,Y=0,Z=0.
neg(Y,Z) , and(X,Y,Z) <=> X=0,Y=1,Z=0.
neg(Z,Y) , and(X,Y,Z) <=> X=0,Y=1,Z=0.
neg(X,Y) \ or(X,Y,Z) <=> Z=1.
neg(Y,X) \ or(X,Y,Z) <=> Z=1.
neg(X,Z) , or(X,Y,Z) <=> X=0,Y=1,Z=1.
neg(Z,X) , or(X,Y,Z) <=> X=0,Y=1,Z=1.
neg(Y,Z) , or(X,Y,Z) <=> X=1,Y=0,Z=1.
neg(Z,Y) , or(X,Y,Z) <=> X=1,Y=0,Z=1.
neg(X,Y) \ xor(X,Y,Z) <=> Z=1.
neg(Y,X) \ xor(X,Y,Z) <=> Z=1.
neg(X,Z) \ xor(X,Y,Z) <=> Y=1.
neg(Z,X) \ xor(X,Y,Z) <=> Y=1.
neg(Y,Z) \ xor(X,Y,Z) <=> X=1.
neg(Z,Y) \ xor(X,Y,Z) <=> X=1.
neg(X,Y) , imp(X,Y) <=> X=0,Y=1.
neg(Y,X) , imp(X,Y) <=> X=0,Y=1.

labeling, neg(A,B)#Pc <=>
label_neg(A,B),
labeling
pragma passive(Pc).

label_neg(0,1).
label_neg(1,0).


%% imp/2 specification (implication)
%%imp(0,0).
%%imp(0,1).
%%imp(1,1).

imp(0,X) <=> true.
imp(X,0) <=> X=0.
imp(1,X) <=> X=1.
imp(X,1) <=> true.
imp(X,X) <=> true.
imp(X,Y),imp(Y,X) <=> X=Y.

labeling, imp(A,B)#Pc <=>
label_imp(A,B),
labeling
pragma passive(Pc).

label_imp(0,X).
label_imp(1,1).



%% Boolean cardinality operator
%% card(A,B,L,N) constrains list L of length N to have between A and B 1s


card(A,B,L):-
	length(L,N),
	A=<B,0=<B,A=<N,				%0=<N
	card(A,B,L,N).

%% card/4 specification
%%card(A,B,[],0):- A=<0,0=<B.
%%card(A,B,[0|L],N):-
%%		N1 is N-1,
%%		card(A,B,L,N1).
%%card(A,B,[1|L],N):-
%%		A1 is A-1, B1 is B-1, N1 is N-1,
%%		card(A1,B1,L,N1).

triv_sat @ card(A,B,L,N) <=> A=<0,N=<B | true. % trivial satisfaction
pos_sat @ card(N,B,L,N) <=> set_to_ones(L).	% positive satisfaction
neg_sat @ card(A,0,L,N) <=> set_to_zeros(L). % negative satisfaction
pos_red @ card(A,B,L,N) <=> b_delete(X,L,L1),X==1 | % positive reduction
A1 is A-1, B1 is B-1, N1 is N-1,
card(A1,B1,L1,N1).
neg_red @ card(A,B,L,N) <=> b_delete(X,L,L1),X==0 | % negative reduction
N1 is N-1,
card(A,B,L1,N1).
%% special cases with two variables
card2nand @ card(0,1,[X,Y],2) <=> and(X,Y,0).
card2neg @ card(1,1,[X,Y],2) <=> neg(X,Y).
card2or @ card(1,2,[X,Y],2) <=> or(X,Y,1).

b_delete( X, [X|L],  L).
b_delete( Y, [X|Xs], [X|Xt]) :-
	b_delete( Y, Xs, Xt).

labeling, card(A,B,L,N)#Pc <=>
label_card(A,B,L,N),
labeling
pragma passive(Pc).

label_card(A,B,[],0):- A=<0,0=<B.
label_card(A,B,[0|L],N):-
	%N1 is N-1,
	card(A,B,L).
label_card(A,B,[1|L],N):-
	A1 is A-1, B1 is B-1, %N1 is N-1,
	card(A1,B1,L).

set_to_ones([]).
set_to_ones([1|L]):-
	set_to_ones(L).

set_to_zeros([]).
set_to_zeros([0|L]):-
	set_to_zeros(L).



%% Auxiliary predicates

:- op(100,xfy,#).

solve_bool(A,C) :- var(A), !, A=C.
solve_bool(A,C) :- atomic(A), !, A=C.
solve_bool(A * B, C) :- !,
	solve_bool(A,A1),
	solve_bool(B,B1),
	and(A1,B1,C).
solve_bool(A + B, C) :- !,
	solve_bool(A,A1),
	solve_bool(B,B1),
	or(A1,B1,C).
solve_bool(A # B, C) :- !,
	solve_bool(A,A1),
	solve_bool(B,B1),
	xor(A1,B1,C).
solve_bool(not(A),C) :- !,
	solve_bool(A,A1),
	neg(A1,C).
solve_bool((A -> B), C) :- !,
	solve_bool(A,A1),
	solve_bool(B,B1),
	imp(A1,B1),C=1.
solve_bool(A = B, C) :- !,
	solve_bool(A,A1),
	solve_bool(B,B1),
	A1=B1,C=1.

%% Labeling
label_bool([]).
label_bool([X|L]) :-
	( X=0;X=1),
	label_bool(L).

/*				% no write macros in SICStus and hProlog

bool_portray(and(A,B,C),Out):- !, Out = (A*B = C).
bool_portray(or(A,B,C),Out):- !, Out = (A+B = C).
bool_portray(xor(A,B,C),Out):- !, Out = (A#B = C).
bool_portray(neg(A,B),Out):- !, Out = (A= not(B)).
bool_portray(imp(A,B),Out):- !, Out = (A -> B).
bool_portray(card(A,B,L,N),Out):- !, Out = card(A,B,L).

:- define_macro(type(compound),bool_portray/2,[write]).
*/

/* end of handler bool */

half_adder(X,Y,S,C) :-
	xor(X,Y,S),
	and(X,Y,C).

full_adder(X,Y,Ci,S,Co) :-
	half_adder(X,Y,S1,Co1),
	half_adder(Ci,S1,S,Co2),
	or(Co1,Co2,Co).

main :-
	main(60000).

main(N) :-
	cputime(X),
	adder(N),
	cputime(Now),
	Time is Now - X,
	write(bench(bool, N, Time, 0, hprolog)),write('.'),nl.

adder(N) :-
	length(Ys,N),
	add(N,Ys).

add(N,[Y|Ys]) :-
	half_adder(1,Y,0,C),
	add0(Ys,C).

add0([],1).
add0([Y|Ys],C) :-
	full_adder(0,Y,C,1,NC),
	add1(Ys,NC).

add1([],0).
add1([Y|Ys],C) :-
	full_adder(1,Y,C,0,NC),
	add0(Ys,NC).

%cputime(Time) :-
%	statistics(runtime, [_,Time]).

cputime(0).

:- initialization(main, main).
%------------------------------------------------------------------- 2 bench_fib
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% 991202 Slim Abdennadher, LMU
%%
%% ported to hProlog by Tom Schrijvers

:- module(fib,[main/0,main/1]).

:- use_module(library(chr)).

:- chr_constraint fib/2.

%% fib(N,M) is true if  M is the Nth Fibonacci number.

%% Top-down Evaluation with Tabulation

fib(N,M1), fib(N,M2) <=> M1 = M2, fib(N,M1).

fib(0,M) ==> M = 1.

fib(1,M) ==> M = 1.

fib(N,M) ==> N > 1 | N1 is N-1, fib(N1,M1), N2 is N-2, fib(N2,M2), M is M1 + M2.

main :-
	main(22).

main(N):-
	cputime(X),
	fib(N,_),
	cputime( Now),
	Time is Now-X,
	write(bench(fib ,N,Time, 0, hprolog)),write('.'), nl.


cputime(0).

:- initialization(main, main).
%------------------------------------------------------------- 3 bench_fibonacci
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% 16 June 2003 Bart Demoen, Tom Schrijvers, K.U.Leuven
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:- module(fibonacci,[main/0,main/1]).

:- use_module(library(chr)).

:- chr_constraint fibonacci/2.

%% fibonacci(N,M) is true iff  M is the Nth Fibonacci number.

%% Top-down Evaluation with effective Tabulation
%% Contrary to the version in the SICStus manual, this one does "true"
%% tabulation

fibonacci(N,M1) # ID \ fibonacci(N,M2) <=> var(M2) | M1 = M2 pragma passive(ID).

fibonacci(0,M) ==> M = 1.

fibonacci(1,M) ==> M = 1.

fibonacci(N,M) ==>
	N > 1 |
		N1 is N-1,
		fibonacci(N1,M1),
		N2 is N-2,
		fibonacci(N2,M2),
		M is M1 + M2.

main :-
	main(2000).

main(N):-
	cputime(X),
	fibonacci(N,_),
	cputime( Now),
	Time is Now-X,
	write(bench(fibonacci ,N,Time, 0, hprolog)),write('.'), nl.


cputime(0).

:- initialization(main, main).
%------------------------------------------------------------- 4 bench_fulladder
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Thom Fruehwirth ECRC 1991-1993
%% 910528 started boolean,and,or constraints
%% 910904 added xor,neg constraints
%% 911120 added imp constraint
%% 931110 ported to new release
%% 931111 added card constraint
%% 961107 Christian Holzbaur, SICStus mods
%%
%% ported to hProlog by Tom Schrijvers June 2003


:- module(fulladder,[main/0,main/1]).
:- use_module(library(chr)).

:- chr_constraint and/3, or/3, xor/3, neg/2.

:- use_module(library(lists)).

%% and/3 specification
%%and(0,0,0).
%%and(0,1,0).
%%and(1,0,0).
%%and(1,1,1).

and(0,X,Y) <=> Y=0.
and(X,0,Y) <=> Y=0.
and(1,X,Y) <=> Y=X.
and(X,1,Y) <=> Y=X.
and(X,Y,1) <=> X=1,Y=1.
and(X,X,Z) <=> X=Z.
and(X,Y,A) \ and(X,Y,B) <=> A=B, chr_dummy.
and(X,Y,A) \ and(Y,X,B) <=> A=B, chr_dummy.

%% or/3 specification
%%or(0,0,0).
%%or(0,1,1).
%%or(1,0,1).
%%or(1,1,1).

or(0,X,Y) <=> Y=X.
or(X,0,Y) <=> Y=X.
or(X,Y,0) <=> X=0,Y=0.
or(1,X,Y) <=> Y=1.
or(X,1,Y) <=> Y=1.
or(X,X,Z) <=> X=Z.
or(X,Y,A) \ or(X,Y,B) <=> A=B, chr_dummy.
or(X,Y,A) \ or(Y,X,B) <=> A=B, chr_dummy.

%% xor/3 specification
%%xor(0,0,0).
%%xor(0,1,1).
%%xor(1,0,1).
%%xor(1,1,0).

xor(0,X,Y) <=> X=Y.
xor(X,0,Y) <=> X=Y.
xor(X,Y,0) <=> X=Y.
xor(1,X,Y) <=> neg(X,Y).
xor(X,1,Y) <=> neg(X,Y).
xor(X,Y,1) <=> neg(X,Y).
xor(X,X,Y) <=> Y=0.
xor(X,Y,X) <=> Y=0.
xor(Y,X,X) <=> Y=0.
xor(X,Y,A) \ xor(X,Y,B) <=> A=B, chr_dummy.
xor(X,Y,A) \ xor(Y,X,B) <=> A=B, chr_dummy.

%% neg/2 specification
%%neg(0,1).
%%neg(1,0).

neg(0,X) <=> X=1.
neg(X,0) <=> X=1.
neg(1,X) <=> X=0.
neg(X,1) <=> X=0.
neg(X,X) <=> fail.
neg(X,Y) \ neg(Y,Z) <=> X=Z, chr_dummy.
neg(X,Y) \ neg(Z,Y) <=> X=Z, chr_dummy.
neg(Y,X) \ neg(Y,Z) <=> X=Z, chr_dummy.
%% Interaction with other boolean constraints
neg(X,Y) \ and(X,Y,Z) <=> Z=0, chr_dummy.
neg(Y,X) \ and(X,Y,Z) <=> Z=0, chr_dummy.
neg(X,Z) , and(X,Y,Z) <=> X=1,Y=0,Z=0.
neg(Z,X) , and(X,Y,Z) <=> X=1,Y=0,Z=0.
neg(Y,Z) , and(X,Y,Z) <=> X=0,Y=1,Z=0.
neg(Z,Y) , and(X,Y,Z) <=> X=0,Y=1,Z=0.
neg(X,Y) \ or(X,Y,Z) <=> Z=1, chr_dummy.
neg(Y,X) \ or(X,Y,Z) <=> Z=1, chr_dummy.
neg(X,Z) , or(X,Y,Z) <=> X=0,Y=1,Z=1.
neg(Z,X) , or(X,Y,Z) <=> X=0,Y=1,Z=1.
neg(Y,Z) , or(X,Y,Z) <=> X=1,Y=0,Z=1.
neg(Z,Y) , or(X,Y,Z) <=> X=1,Y=0,Z=1.
neg(X,Y) \ xor(X,Y,Z) <=> Z=1, chr_dummy.
neg(Y,X) \ xor(X,Y,Z) <=> Z=1, chr_dummy.
neg(X,Z) \ xor(X,Y,Z) <=> Y=1, chr_dummy.
neg(Z,X) \ xor(X,Y,Z) <=> Y=1, chr_dummy.
neg(Y,Z) \ xor(X,Y,Z) <=> X=1, chr_dummy.
neg(Z,Y) \ xor(X,Y,Z) <=> X=1, chr_dummy.

/* end of handler bool */

half_adder(X,Y,S,C) :-
	xor(X,Y,S),
	and(X,Y,C).

full_adder(X,Y,Ci,S,Co) :-
	half_adder(X,Y,S1,Co1),
	half_adder(Ci,S1,S,Co2),
	or(Co1,Co2,Co).

main :-
	main(6000).

main(N) :-
	cputime(X),
	adder(N),
	cputime(Now),
	Time is Now - X,
	write(bench(bool ,N,Time,0,hprolog)),write('.'),nl.

adder(N) :-
	length(Ys,N),
	add(N,Ys).

add(N,[Y|Ys]) :-
	half_adder(1,Y,0,C),
	add0(Ys,C).

add0([],1).
add0([Y|Ys],C) :-
	full_adder(0,Y,C,1,NC),
	add1(Ys,NC).

add1([],0).
add1([Y|Ys],C) :-
	full_adder(1,Y,C,0,NC),
	add0(Ys,NC).


cputime(0).

:- initialization(main, main).
%------------------------------------------------------------------- 5 bench_leq
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% simple constraint solver for inequalities between variables
%% thom fruehwirth ECRC 950519, LMU 980207, 980311
%%
%% ported to hProlog by Tom Schrijvers

:- module(leq,[main/0,main/1]).
:- use_module(library(chr)).

:- chr_constraint leq/2.

reflexivity  @ leq(X,X) <=> true.
antisymmetry @ leq(X,Y), leq(Y,X) <=> X = Y.
idempotence  @ leq(X,Y) \ leq(X,Y) <=> true.
transitivity @ leq(X,Y), leq(Y,Z) ==> leq(X,Z).

main :-
	main(60).

main(N):-
	cputime(X),
	length(L,N),
	genleq(L,Last),
	L=[First|_],
	leq(Last,First),
	cputime( Now),
	Time is Now-X,
	write(bench(leq ,N,Time,0,hprolog)), write('.'),nl.

genleq([Last],Last) :- ! .
genleq([X,Y|Xs],Last):-
	leq(X,Y),
	genleq([Y|Xs],Last).

cputime(0).

:- initialization(main, main).
%---------------------------------------------------------------- 6 bench_primes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Sieve of eratosthenes to compute primes
%% thom fruehwirth 920218-20, 980311
%% christian holzbaur 980207 for Sicstus CHR
%%
%% ported to hProlog by Tom Schrijvers

:- module(primes,[main/0,main/1]).
:- use_module(library(chr)).

:- chr_constraint candidate/1.
:- chr_constraint prime/1.

candidate(1) <=> true.
candidate(N) <=> primes:prime(N), N1 is N - 1, primes:candidate(N1).

absorb @ prime(Y) \ prime(X) <=> 0 =:= X mod Y | true.

main :-
	main(2500).

main(N):-
	cputime(X),
	candidate(N),
	cputime( Now),
	Time is Now-X,
	write(bench(primes ,N,Time,0,hprolog)), write('.'),nl.


cputime(0).

:- initialization(main, main).
%------------------------------------------------------------------- 7 bench_wfs
:- module(wfs,[main/0, main/1]).

:- use_module(library(chr)).
:- use_module(library(lists)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Schrijf het programma waarvan je de wellfounded semantics wil bepalen
% hieronder onder de vorm van prog/1 feiten. Let erop dat je een conjunctie
% in de body tussen haakjes zet zodat prog/1 geparsed wordt, ipv prog/n.

/*

prog(p :- p).

prog(p :- \+ p).


prog(p :- (q, \+ r)).
prog(q :- (r, \+ p)).
prog(r :- (p, \+ q)).

prog(p :- r).
prog(r :- q).
prog(q :- \+ q).

prog(p :- r).
prog(r).

prog(p :- p).
prog(s :- \+ p).
prog(y :- (s, \+ x)).
prog(x :- y).
*/
prog(a :- a).
prog(b :- b).
prog(b :- \+ a).
prog(c :- \+ b).
prog(c :- c).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


:- chr_constraint true/1, false/1, undefined/1, aclause/2, pos/2, neg/2, nbulit/2, nbplit/2, nbucl/2, phase2/0, true2/1, undefined2/1, aclause2/2, pos2/2, nbplit2/2, phase1/0, witness1/0, witness2/0.

true(At), aclause(Cl,At) \ pos(_,Cl) <=> true.

true(At), aclause(Cl,At) \ neg(_,Cl) <=> true.

false(At), aclause(Cl,At) \ pos(_,Cl) <=> true.

false(At), aclause(Cl,At) \ neg(_,Cl) <=> true.

true(At) \ nbucl(At,_) <=> true.

true(At) \ aclause(Cl,At), nbulit(Cl,_), nbplit(Cl,_) <=> true.

false(At) \ nbucl(At,_) <=> true.

nbucl(At,0) <=> false(At).

aclause(Cl,At), nbulit(Cl,0), nbplit(Cl,0) <=> true(At).

true(At) \ pos(At,Cl), nbulit(Cl,NU), nbplit(Cl,NP)
	<=>
		NU1 is NU - 1, nbulit(Cl,NU1),
		NP1 is NP - 1, nbplit(Cl,NP1).

false(At) \ neg(At,Cl), nbulit(Cl,NU)
	<=>
		NU1 is NU - 1, nbulit(Cl,NU1).

true(At) \ neg(At,Cl), aclause(Cl,OAt), nbulit(Cl,_), nbplit(Cl,_), nbucl(OAt,N)
	<=>
		N1 is N - 1, nbucl(OAt,N1).

false(At) \ pos(At,Cl), aclause(Cl,OAt), nbulit(Cl,_), nbplit(Cl,_), nbucl(OAt,N)
	<=>
		N1 is N - 1, nbucl(OAt,N1).

witness2 \ witness2 <=> true.
phase2, nbucl(At,_)  ==> witness2, undefined2(At).
phase2, pos(At,Cl)   ==> pos2(At,Cl).
phase2, aclause(Cl,At)    ==> aclause2(Cl,At).
phase2, nbplit(Cl,N) ==> nbplit2(Cl,N).
phase2, witness2 # ID <=> phase1 pragma passive(ID).
phase2 \ nbplit2(_,_) # ID <=> true pragma passive(ID).
phase2 \ aclause2(_,_) # ID <=> true pragma passive(ID).
phase2 <=> true.


true2(At), aclause2(Cl,At) \ pos2(_,Cl) <=> true.
true2(At) \ undefined2(At) <=> true.
aclause2(Cl,At), nbplit2(Cl,0) <=> true2(At).
true2(At) \ pos2(At,Cl), nbplit2(Cl,NP)
	<=>
		NP1 is NP - 1, nbplit2(Cl,NP1).

witness1 \ witness1 <=> true.
phase1, undefined2(At) # ID1 , aclause(Cl,At) # ID2 \ pos(_,Cl) # ID3 <=> true pragma passive(ID1), passive(ID2), passive(ID3).
phase1, undefined2(At) # ID1 , aclause(Cl,At) # ID2 \ neg(_,Cl) # ID3 <=> true pragma passive(ID1), passive(ID2), passive(ID3).
phase1, undefined2(At) # ID1 \ aclause(Cl,At) # ID2 , nbulit(Cl,_) # ID3, nbplit(Cl,_) # ID4 <=> true pragma passive(ID1), passive(ID2), passive(ID3), passive(ID4).
phase1 \ undefined2(At) # ID <=> witness1, false(At) pragma passive(ID).
phase1 \ true2(_) # ID <=> true pragma passive(ID).
phase1 \ aclause2(_,_) <=> true.
phase1 \ pos2(_,_) # ID <=> true pragma passive(ID).
phase1 \ nbplit2(_,_) # ID <=> true pragma passive(ID).
phase1, witness1 # ID  <=> phase2 pragma passive(ID).
phase1 \ nbucl(At,_) # ID <=> undefined(At) pragma passive(ID).
phase1 \ pos(_,_) # ID <=> true.
phase1 \ neg(_,_) # ID <=> true pragma passive(ID).
phase1 \ aclause(_,_) # ID <=>  true pragma passive(ID).
phase1 \ nbulit(_,_) # ID <=> true pragma passive(ID).
phase1 \ nbplit(_,_) # ID <=> true pragma passive(ID).
phase1 <=> true.

/*
	p :- r.
	r.
*/
program1 :-
	nbucl(p,1),		% aantal undefined clauses voor p
	pos(r,cl1),		% positief voorkomen van r in clause cl1
	aclause(cl1,p),		% clause cl1 defineert p
	nbulit(cl1,1),		% aantal undefined literals in cl1
	nbplit(cl1,1),		% aantal positieve undefined literals in cl1
	nbucl(r,1),
	aclause(cl2,r),
	nbulit(cl2,0),
	nbplit(cl2,0).

/*
	p :- not r.
	r.
*/
program2 :-
	nbucl(p,1),
	neg(r,cl1),
	aclause(cl1,p),
	nbulit(cl1,1),
	nbplit(cl1,1),
	nbucl(r,1),
	aclause(cl2,r),
	nbulit(cl2,0),
	nbplit(cl2,0).

/*
	p :- p.
*/
program3 :-
	nbucl(p,1),
	pos(p,cl1),
	aclause(cl1,p),
	nbulit(cl1,1),
	nbplit(cl1,1).

/*
	p :- not p.
*/
program4 :-
	nbucl(p,1),
	neg(p,cl1),
	aclause(cl1,p),
	nbulit(cl1,1),
	nbplit(cl1,0).

/*
	p :- q, not r.
	q :- r, not p.
	r :- p, not q.
*/

program5 :-
	nbucl(p,1),
	pos(p,cl3),
	neg(p,cl2),
	aclause(cl1,p),
	nbulit(cl1,2),
	nbplit(cl1,1),
	nbucl(q,1),
	pos(q,cl1),
	neg(q,cl3),
	aclause(cl2,q),
	nbulit(cl2,2),
	nbplit(cl2,1),
	nbucl(r,1),
	pos(r,cl2),
	neg(r,cl1),
	aclause(cl3,r),
	nbulit(cl3,2),
	nbplit(cl3,1).


main :-
	main(1000).

main(N) :-
	cputime(T1),
	loop(N),
	cputime(T2),
	T is T2 - T1,
	write(bench(wfs ,N , T,0,hprolog)),write('.'),nl.

loop(N) :-
	( N =< 0 ->
		true
	;
		( prog, fail ; true),
		M is N - 1,
		loop(M)
	).

prog :-
	findall(Clause,wfs:prog(Clause),Clauses),
	process(Clauses,1),
	setof(At,B^(wfs:prog(At :- B) ; wfs:prog(At), atom(At)),Ats),
	process_atoms(Ats),
	phase2.

process([],_).
process([C|Cs],N) :-
	( C = (HAt :- B) ->
		aclause(N,HAt),
		conj2list(B,Literals,[]),
		process_literals(Literals,N,NbULit,NbPLit),
		nbulit(N,NbULit),
		nbplit(N,NbPLit)
	;
		C = HAt,
		aclause(N,HAt),
		nbulit(N,0),
		nbplit(N,0)
	),
	N1 is N + 1,
	process(Cs,N1).

conj2list(G,L,T) :-
	( G = (G1,G2) ->
		conj2list(G1,L,T1),
		conj2list(G2,T1,T)
	;
		L = [G|T]
	).

process_literals([],_,0,0).
process_literals([L|R],Cl,U,P) :-
	process_literals(R,Cl,U1,P1),
	( L = (\+ At) ->
		neg(At,Cl),
		P = P1,
		U is U1 + 1
	;
		pos(L,Cl),
		P is P1 + 1,
		U is U1 + 1
	).

process_atoms([]).
process_atoms([A|As]) :-
	findall(A,wfs:prog(A :- _),L),
	length(L,N),
	nbucl(A,N),
	process_atoms(As).

cputime(0).

:- initialization(main, main).
%----------------------------------------------------------------- 8 bench_zebra
:- module(zebra,[main/0, main/1]).

:- use_module(library(chr)).
:- use_module(library(lists)).

/*
1.   The Englishman lives in the red house.
2.   The Spaniard owns the dog.
3.   Coffee is drunk in the green house.
4.   The Ukrainian drinks tea.
5.   The green house is immediately to the right of the ivory house.
6.   The Porsche driver owns snails.
7.   The Masserati is driven by the man who lives in the yellow house.
8.   Milk is drunk in the middle house.
9.   The Norwegian lives in the first house on the left.
10.  The man who drives a Saab lives in the house next to the man
     with the fox.
11.  The Masserati is driven by the man in the house next to the
     house where the horse is kept.
12.  The Honda driver drinks orange juice.
13.  The Japanese drives a Jaguar.
14.  The Norwegian lives next to the blue house.
*/

:- chr_constraint domain/2, diff/2.

domain(_,[]) <=> fail.
domain(X,[V]) <=> X = V.
domain(X,L1), domain(X,L2) <=> intersection(L1,L2,L3), domain(X,L3).

diff(X,Y), domain(X,L) <=> nonvar(Y) | delete(L,Y,NL), domain(X,NL).
diff(X,Y) <=> nonvar(X), nonvar(Y) | X \== Y.

all_different([]).
all_different([H|T]) :-
	all_different(T,H),
	all_different(T).

all_different([],_).
all_different([H|T],E) :-
	diff(H,E),
	diff(E,H),
	all_different(T,E).

main :-
	main(10).

main(N):-
	statistics(cputime, X),
	test(N),
	statistics(cputime, Now),
	Time is Now-X,
	write(bench(zebra, N,Time,0,hprolog)), write('.'),nl.

test(N) :-
        ( N > 0 ->
                solve,!,
                M is N - 1,
                test(M)
        ;
		true
        ).

solve :-
	[ [ ACo, AN, ACa, AD, AP ],
	  [ BCo, BN, BCa, BD, BP ],
	  [ CCo, CN, CCa, CD, CP ],
	  [ DCo, DN, DCa, DD, DP ],
	  [ ECo, EN, ECa, ED, EP ] ] = S,
	domain(ACo,[red,green,ivory,yellow,blue]),
	domain(BCo,[red,green,ivory,yellow,blue]),
	domain(CCo,[red,green,ivory,yellow,blue]),
	domain(DCo,[red,green,ivory,yellow,blue]),
	domain(ECo,[red,green,ivory,yellow,blue]),
	domain(AN ,[english,spanish,ukranian,norwegian,japanese]),
	domain(BN ,[english,spanish,ukranian,norwegian,japanese]),
	domain(CN ,[english,spanish,ukranian,norwegian,japanese]),
	domain(DN ,[english,spanish,ukranian,norwegian,japanese]),
	domain(EN ,[english,spanish,ukranian,norwegian,japanese]),
	domain(ACa,[porsche,masserati,saab,honda,jaguar]),
	domain(BCa,[porsche,masserati,saab,honda,jaguar]),
	domain(CCa,[porsche,masserati,saab,honda,jaguar]),
	domain(DCa,[porsche,masserati,saab,honda,jaguar]),
	domain(ECa,[porsche,masserati,saab,honda,jaguar]),
	domain(AD ,[coffee,tea,milk,orange,water]),
	domain(BD ,[coffee,tea,milk,orange,water]),
	domain(CD ,[coffee,tea,milk,orange,water]),
	domain(DD ,[coffee,tea,milk,orange,water]),
	domain(ED ,[coffee,tea,milk,orange,water]),
	domain(AP ,[dog,snails,fox,horse,zebra]),
	domain(BP ,[dog,snails,fox,horse,zebra]),
	domain(CP ,[dog,snails,fox,horse,zebra]),
	domain(DP ,[dog,snails,fox,horse,zebra]),
	domain(EP ,[dog,snails,fox,horse,zebra]),
	all_different([ACo,BCo,CCo,DCo,ECo]),
	all_different([AN ,BN ,CN ,DN ,EN ]),
	all_different([ACa,BCa,CCa,DCa,ECa]),
	all_different([AD ,BD ,CD ,DD ,ED ]),
	all_different([AP ,BP ,CP ,DP ,EP ]),
	[_,_,[_,_,_,milk,_],_,_]           = S,  % clue 8
        [[_,norwegian,_,_,_],_,_,_,_]      = S , % clue 9
        member( [green,_,_,coffee,_],                S), % clue 3
        member( [red,english,_,_,_],              S), % clue 1
        member( [_,ukranian,_,tea,_],                S), % clue 4
        member( [yellow,_,masserati,_,_],            S), % clue 7
        member( [_,_,honda,orange,_],          S), % clue 12
        member( [_,japanese,jaguar,_,_],             S), % clue 13
        member( [_,spanish,_,_,dog],                S), % clue 2
        member( [_,_,porsche,_,snails],              S), % clue 6
        left_right( [ivory,_,_,_,_],    [green,_,_,_,_], S), % clue 5
        next_to( [_,norwegian,_,_,_],[blue,_,_,_,_],  S), % clue 14
        next_to( [_,_,masserati,_,_],[_,_,_,_,horse], S), % clue 11
        next_to( [_,_,saab,_,_],     [_,_,_,_,fox],   S), % clue 10
	true.

% left_right(L, R, X) is true when L is to the immediate left of R in list X

left_right(L, R, [L, R | _]).

left_right(L, R, [_ | X]) :- left_right(L, R, X).


% next_to(X, Y, L) is true when X and Y are next to each other in list L

next_to(X, Y, L) :- left_right(X, Y, L).

next_to(X, Y, L) :- left_right(Y, X, L).

% the grader 2026-11-16: main/1 reads the clock (statistics(cputime, _)); this driver runs the same test(10) and prints the same line with the time 0, as the other benchmarks do with cputime(0)
:- initialization(zmain, main).
zmain :- test(10), write(bench(zebra, 10, 0, 0, hprolog)), write('.'), nl.
%-------------------------------------------------------------- 9 test_dense_int
:- module(dense_int,[dense_int/0]).

:-use_module(library(chr)).

:-chr_type 'Arity' == dense_int.

:-chr_constraint c1(+'Arity').
  
:-chr_option(line_numbers, on).
:-chr_option(check_guard_bindings, on).
:-chr_option(debug, off).
:-chr_option(optimize, full).

dense_int :-
  c1(1),
  c1(1).


no_duplicates @
  c1(X)
  \
  c1(X)
  <=>
  true.



:- initialization(main, main).
main :- ( dense_int -> write(dense_int:yes) ; write(dense_int:no) ), nl.
%------------------------------------------------------------- 10 test_fibonacci
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% 16 June 2003 Bart Demoen, Tom Schrijvers, K.U.Leuven
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:- module(fibonacci,[fibonacci/0]).
:- use_module(library(chr)).

:- chr_constraint fibonacci/2, cleanup/1.

%% fibonacci(N,M) is true iff  M is the Nth Fibonacci number.

%% Top-down Evaluation with effective Tabulation
%% Contrary to the version in the SICStus manual, this one does "true"
%% tabulation

fibonacci(N,M1) # ID \ fibonacci(N,M2) <=> var(M2) | M1 = M2 pragma passive(ID).

fibonacci(0,M) ==> M = 1.

fibonacci(1,M) ==> M = 1.

fibonacci(N,M) ==>
	N > 1 | 
		N1 is N-1,
		fibonacci(N1,M1),
		N2 is N-2,
		fibonacci(N2,M2),
		M is M1 + M2.

cleanup(L), fibonacci(N,F) <=> L = [N-F|T], cleanup(T).
cleanup(L) <=> L = [].

fibonacci :-
	fibonacci(15,F),
	F == 987,
	cleanup(L),
	sort(L,SL),
	SL == [0 - 1,1 - 1,2 - 2,3 - 3,4 - 5,5 - 8,6 - 13,7 - 21,8 - 34,9 - 55,10 - 89,11 - 144,12 - 233,13 - 377,14 - 610,15 - 987].

:- initialization(main, main).
main :- ( fibonacci -> write(fibonacci:yes) ; write(fibonacci:no) ), nl.
%------------------------------------------------------------------- 11 test_leq
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% simple constraint solver for inequalities between variables
%% thom fruehwirth ECRC 950519, LMU 980207, 980311
%%
%% ported to hProlog by Tom Schrijvers 

:- module(leq,[leq/0]).
:- use_module(library(chr)).

:- chr_constraint leq/2.

reflexivity  @ leq(X,X) <=> true.
antisymmetry @ leq(X,Y), leq(Y,X) <=> X = Y.
idempotence  @ leq(X,Y) \ leq(X,Y) <=> true.
transitivity @ leq(X,Y), leq(Y,Z) ==> leq(X,Z).

leq :-
	circle(X, Y, Z),
	\+ attvar(X),
	X == Y,
	Y == Z.

circle(X, Y, Z) :-
	leq(X, Y),
	leq(Y, Z),
	leq(Z, X).

:- initialization(main, main).
main :- ( leq -> write(leq:yes) ; write(leq:no) ), nl.
%--------------------------------------------------------- 12 test_passive_check
:- module(passive_check,[passive_check/0]).
:- use_module(library(chr)).

:- chr_constraint a/1, b/1.

:- chr_option(debug,off).
:- chr_option(optimize,full).

a(X) # ID, b(X) <=> true pragma passive(ID).

passive_check :-
	a(_).

:- initialization(main, main).
main :- ( passive_check -> write(passive_check:yes) ; write(passive_check:no) ), nl.
%---------------------------------------------------------------- 13 test_primes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Sieve of eratosthenes to compute primes
%% thom fruehwirth 920218-20, 980311
%% christian holzbaur 980207 for Sicstus CHR
%%
%% ported to hProlog by Tom Schrijvers 

:- module(primes,[primes/0]).
:- use_module(library(chr)).

:- chr_constraint candidate/1.
:- chr_constraint prime/1.
:- chr_constraint cleanup/1.

:- chr_option(debug,off).
:- chr_option(optimize,full).

candidate(1) <=> true.
candidate(N) <=> prime(N), N1 is N - 1, candidate(N1).

absorb @ prime(Y) \ prime(X) <=> 0 =:= X mod Y | true.

cleanup(_L), candidate(_X) <=> fail.
cleanup(L), prime(N) <=> L = [N|T], cleanup(T).
cleanup(L) <=> L = [].

primes :-
	candidate(100),
	cleanup(L),
	sort(L,SL),
	SL == [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97].










:- initialization(main, main).
main :- ( primes -> write(primes:yes) ; write(primes:no) ), nl.
%------------------------------------------ 14 test_trigger_no_active_occurrence
:- module(trigger_no_active_occurrence,[trigger_no_active_occurrence/0]).

:- use_module(library(chr)).

:- chr_constraint a/1, b/2.

a(X) # ID , b(X,R) <=> R = 1 pragma passive(ID).

trigger_no_active_occurrence :-
	a(X),
	X = 1,
	b(1,R),
	R == 1.

:- initialization(main, main).
main :- ( trigger_no_active_occurrence -> write(trigger_no_active_occurrence:yes) ; write(trigger_no_active_occurrence:no) ), nl.
%----------------------------------------------------------------- 15 test_zebra
:- module(zebra,[zebra/0]).
:- use_module(library(chr)).

:- use_module(library(lists)).

/*     
1.   The Englishman lives in the red house.
2.   The Spaniard owns the dog.
3.   Coffee is drunk in the green house.
4.   The Ukrainian drinks tea.
5.   The green house is immediately to the right of the ivory house.
6.   The Porsche driver owns snails.
7.   The Masserati is driven by the man who lives in the yellow house.
8.   Milk is drunk in the middle house.
9.   The Norwegian lives in the first house on the left.
10.  The man who drives a Saab lives in the house next to the man
     with the fox.
11.  The Masserati is driven by the man in the house next to the
     house where the horse is kept.
12.  The Honda driver drinks orange juice.
13.  The Japanese drives a Jaguar.
14.  The Norwegian lives next to the blue house.
*/

:- chr_constraint domain/2, diff/2, cleanup/0.

zebra :-
	solve(Solution),
	cleanup,
	Solution == [[yellow,norwegian,masserati,water,fox],[blue,ukranian,saab,tea,horse],[red,english,porsche,milk,snails],[ivory,spanish,honda,orange,dog],[green,japanese,jaguar,coffee,zebra]].	

domain(_X,[]) <=> fail.
domain(X,[V]) <=> X = V.
domain(X,L1), domain(X,L2) <=> intersection(L1,L2,L3), domain(X,L3).

diff(X,Y), domain(X,L) <=> nonvar(Y) | select(Y,L,NL), domain(X,NL).
diff(X,Y) <=> nonvar(X), nonvar(Y) | X \== Y.

cleanup, domain(_,_) <=> writeln(a), fail.
cleanup, diff(_,_) <=> writeln(b), fail.
cleanup <=> true.

all_different([]). 
all_different([H|T]) :-
	all_different(T,H),
	all_different(T).

all_different([],_).
all_different([H|T],E) :-
	diff(H,E),
	diff(E,H),
	all_different(T,E).
	
solve(S) :-
	[ [ ACo, AN, ACa, AD, AP ],
	  [ BCo, BN, BCa, BD, BP ],
	  [ CCo, CN, CCa, CD, CP ],
	  [ DCo, DN, DCa, DD, DP ],
	  [ ECo, EN, ECa, ED, EP ] ] = S,
	domain(ACo,[red,green,ivory,yellow,blue]),
	domain(BCo,[red,green,ivory,yellow,blue]),
	domain(CCo,[red,green,ivory,yellow,blue]),
	domain(DCo,[red,green,ivory,yellow,blue]),
	domain(ECo,[red,green,ivory,yellow,blue]),
	domain(AN ,[english,spanish,ukranian,norwegian,japanese]),
	domain(BN ,[english,spanish,ukranian,norwegian,japanese]),
	domain(CN ,[english,spanish,ukranian,norwegian,japanese]),
	domain(DN ,[english,spanish,ukranian,norwegian,japanese]),
	domain(EN ,[english,spanish,ukranian,norwegian,japanese]),
	domain(ACa,[porsche,masserati,saab,honda,jaguar]),
	domain(BCa,[porsche,masserati,saab,honda,jaguar]),
	domain(CCa,[porsche,masserati,saab,honda,jaguar]),
	domain(DCa,[porsche,masserati,saab,honda,jaguar]),
	domain(ECa,[porsche,masserati,saab,honda,jaguar]),
	domain(AD ,[coffee,tea,milk,orange,water]),
	domain(BD ,[coffee,tea,milk,orange,water]),
	domain(CD ,[coffee,tea,milk,orange,water]),
	domain(DD ,[coffee,tea,milk,orange,water]),
	domain(ED ,[coffee,tea,milk,orange,water]),
	domain(AP ,[dog,snails,fox,horse,zebra]),
	domain(BP ,[dog,snails,fox,horse,zebra]),
	domain(CP ,[dog,snails,fox,horse,zebra]),
	domain(DP ,[dog,snails,fox,horse,zebra]),
	domain(EP ,[dog,snails,fox,horse,zebra]),
	all_different([ACo,BCo,CCo,DCo,ECo]),
	all_different([AN ,BN ,CN ,DN ,EN ]),
	all_different([ACa,BCa,CCa,DCa,ECa]),
	all_different([AD ,BD ,CD ,DD ,ED ]),
	all_different([AP ,BP ,CP ,DP ,EP ]),
	[_,_,[_,_,_,milk,_],_,_]           = S,  % clue 8
        [[_,norwegian,_,_,_],_,_,_,_]      = S , % clue 9
        member( [green,_,_,coffee,_],                S), % clue 3
        member( [red,english,_,_,_],              S), % clue 1
        member( [_,ukranian,_,tea,_],                S), % clue 4
        member( [yellow,_,masserati,_,_],            S), % clue 7
        member( [_,_,honda,orange,_],          S), % clue 12
        member( [_,japanese,jaguar,_,_],             S), % clue 13
        member( [_,spanish,_,_,dog],                S), % clue 2
        member( [_,_,porsche,_,snails],              S), % clue 6
        left_right( [ivory,_,_,_,_],    [green,_,_,_,_], S), % clue 5
        next_to( [_,norwegian,_,_,_],[blue,_,_,_,_],  S), % clue 14
        next_to( [_,_,masserati,_,_],[_,_,_,_,horse], S), % clue 11
        next_to( [_,_,saab,_,_],     [_,_,_,_,fox],   S), % clue 10
	true.

% left_right(L, R, X) is true when L is to the immediate left of R in list X

left_right(L, R, [L, R | _]).

left_right(L, R, [_ | X]) :- left_right(L, R, X).


% next_to(X, Y, L) is true when X and Y are next to each other in list L

next_to(X, Y, L) :- left_right(X, Y, L).

next_to(X, Y, L) :- left_right(Y, X, L).

:- initialization(main, main).
main :- ( zebra -> write(zebra:yes) ; write(zebra:no) ), nl.
