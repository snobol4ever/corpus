:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
/*
Test of ISO incremental tabling with attributed variables in calls.
 */

:- import incr_assert/1 from increval.
:- import variant/2 from subsumes.
:- import numbervars/1 from num_vars.
%:- ensure_loaded(xsbbrat).
:- dynamic answer/1.

test:- test1.

:- [verbose_attr].

:- import get_attr/3, put_attr/3 from machine.

test0:- 
	put_attr(X,verbose,_Y),
	p1(X),
	writeln('test1t: X = '(X)),fail.
test0.

:- table p1(X) as incremental.

p1(X):- X = 3.
p1(X):- X = 2.

test1:- 
       retractall(answer(_)),
       put_attr(X,verbose,_X1),
       t1(X),register(first(t1(X))),
       (d1(4) -> true ; incr_assert(d1(4))),
       put_attr(Y,verbose,_Y1),
       t1(Y),register(second(t1(Y))),
       fail.
test1:- validate(test1(_)).
test1([first(t1(1)),first(t1(2)),first(t1(3)),second(t1(1)),second(t1(2)),second(t1(3)),second(t1(4))]).

:- table t1/1 as incremental.
t1(X) :- d1(X).
:- dynamic d1/1 as incremental.
d1(1). d1(2). d1(3).

register(Term):- 
%        writeln(Term),
	assert(answer(Term)).

validate(Term):- 
	call(Term),arg(1,Term,Correct),functor(Term,F,_),
	setof(X,answer(X),Answers),
	numbervars(Answers),numbervars(Correct),
	(validate_1(Answers,Correct) -> 
	    writeln('!!!succeeded'(F))
	 ;  writeln('!!!failed'(F,Answers,Correct)) ).

validate_1([],[]):- !.
validate_1([H|T],[H1|T1]):-
	variant(H,H1),!,%writeln(variant(H,H1)),
	validate_1(T,T1).
validate_1([H|_T],[H1|_T1]):- writeln(nomatch(H,H1)),!,fail.
validate_1(A,B):- writeln(nomatch(A,B)),fail.


% DRIVER (appended by the vendoring, CEO-700): XSB nonmt_tests/test.sh runs gentest.sh test_iso_attr "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
