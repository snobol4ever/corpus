:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- [testretract1].
:- [testretract2].
:- [testretract3].
:- [testretract4].
:- [testretract5].

%%%% TEST ASSERTAI!

test :- 
	test_0a,  %testretract0.
	test_a,
	test_b,
	test_c,
	test_d,
	test_r,
%	test_nr,
	test_cm,
	test0,  %testretract1.
	test0a,
	test1,
	test2,
	test5_3, %testretract3
	test5,   %testretract4
	test6,
	test7,
	test8,
	!,writeln('Test succeeded.').
test :- writeln('Test failed.').


%:- test.


% DRIVER (appended by the vendoring, CEO-700): XSB retract_tests/test.sh runs gentest.sh testretract "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
