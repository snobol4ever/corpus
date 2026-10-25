:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import numbervars/1 from num_vars.
:- import when/2,unifiable/3 from constraintLib.

test:- 
	testwhen,fail.
test:- 
	test_unifiable,fail.
test.

%------------------------------------------

testwhen:- testwhen1,testwhen2,testwhen3,testwhen4,testwhen5,testwhen6,testwhen7.

testwhen1:- 
	when(nonvar(X),writeln(test(1-2,nonvar))),
	writeln(testwhen(1,nonvar)),
	X = f(_Y).
testwhen2:- 
	when(ground(X),writeln(test(2-2,ground))),
	writeln(testwhen(2,ground)),
	X = f(_Y).
testwhen3:- 
	when(ground(X),writeln(test(3-2,ground))),
	writeln(testwhen(3,ground)),
	X = a.
testwhen4:- 
	when(?=(X,Y),writeln(test(4-2,'?='))),
	writeln(testwhen(4,'?=')),
	X = Y.
testwhen5:- 
	when(?=(X,_Y),writeln(test(5-2,'?='))),
	writeln(testwhen(5,'?=')),
	X = a.
testwhen6:- 
	when(?=(X,Y),writeln(test(6-2,'?='))),
	writeln(testwhen(6,'?=')),
	X = a,Y = b.
testwhen7:- 
	when(ground(X),3>X),
	X is 2+2,
	writeln(testwhen7_failing).
testwhen7.

%------------------------------------------
test:- test_unifiable.

test_unifiable(Term1,Term2):- 
	(unifiable(Term1,Term2,List) -> 
	   numbervars(unifiable(Term1,Term2,List)),
	   writeln(yes(Term1,Term2,List))
        ;  numbervars(unifiable(Term1,Term2)),
	   writeln(no(Term1,Term2)) ).

test_unifiable:- test_unifiable(X,X),fail.
test_unifiable:- test_unifiable(_X,_Y),fail.
test_unifiable:- test_unifiable(_X,a),fail.
test_unifiable:- test_unifiable(a,_Y),fail.
test_unifiable:- test_unifiable(_X,a(_Y)),fail.
test_unifiable:- test_unifiable(b,a),fail.
test_unifiable:- test_unifiable(f(X),f(X)),fail.
test_unifiable:- test_unifiable(f(_X),f(_Y)),fail.
test_unifiable:- test_unifiable(f(_X),f(a)),fail.
test_unifiable:- test_unifiable(f(_X),f(a,_Y)),fail.
test_unifiable:- test_unifiable(f(_X,g(_Y)),f(_Z,g(b))),fail.
test_unifiable:- test_unifiable(f(_X,g(a)),f(_Z,g(b))),fail.
test.


% DRIVER (appended by the vendoring, CEO-700): XSB constraint_tests/test.sh runs gentest.sh test_constraintLib "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
