:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

/* Added this test to ensure that we check for stack reallocation
   before placing a completion suspension choice point. */

:- table win/2.

test(N):- 
	win(1,N),
	writeln(won).

win(A,N):- cycle(A,B,N),tnot(win(B,N)).

cycle(A,B,N):- 
	integer(A),
	A > 0,
	(A < N -> 
	    B is A + 1
	  ; (A == N -> (B = 1 ; B = A) ) ).




% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh tabsimp_seq "test(20000)."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test(20000)))).
