:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
/*****************************************************************
This file contains an XSB predicate, fibp/2, which computes the
fibonacci function.  It uses the naive doubly recursive algorithm and
calls a foreign function, fibr, to compute the recursive cases.
(fibr, in turn calls this fibp to handle its recursive cases.)

fibr should be compiled before executing this function.  It can be
compiled (in most cases) with:

| ?- [fibr].
*****************************************************************/

:- import fibr/2 from fibr.  %% foreign code to handle recursive case
:- import for/3 from basics.

:- (windows_os64 -> shell('nmake /f MakefileFibp_w64')
   ; windows_os -> shell('nmake /f MakefileFibp')
   ; true
   ).

:- [fibr].  %% be sure foreign code is compiled and loaded.

test :-
	for(N,0,20),
	fibp(N,F),
	writeln(fibp(N,F)),
	fail.
test.	


fibp(N,F) :-
	(N =< 1
	 ->	F = 1
	 ;	N1 is N-1,
		fibr(N1,F1),
		N2 is N-2,
		fibr(N2,F2),
		F is F1+F2
	).

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh (commented out there) runs gentest.sh fibp "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
