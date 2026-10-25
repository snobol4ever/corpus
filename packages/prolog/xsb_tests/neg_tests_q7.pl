:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- index(hitb/2, [1+2,2,1], 5388).

:- export completeBody/2, test/0.
:- import hitb/2 from usermod.

:- edb hitb/2. %:5388.

:- import ensure_dync_loaded/1 from consult.
:- ensure_dync_loaded('genome.P').

:- suppl_table(2).

%-----------------------------------------------------------------------

test :- completeBody(X,Y), writeln(completeBody(X,Y)), fail ; true.

%-----------------------------------------------------------------------

completeBody(P,Q) :- 
	b(P, Q).

b(A, B) :- 
	a(A, B),
	tnot(different(A, B)),
	A @> B.

a(P, Q) :- 
	hit(P, F),
	hit(Q, F),
	\+ P = Q.

different(A, B) :- different(B, A).

different(A, B) :- 
	a(A, B),
	hit(A, Y),
	\+ hit(B, Y),
	hit(C, Y),
	\+ A = C.

hit(sts(X),Y) :- hitb(X,Y).


% DRIVER (appended by the vendoring, CEO-700): XSB neg_tests/test.sh runs gentest.sh q7 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
