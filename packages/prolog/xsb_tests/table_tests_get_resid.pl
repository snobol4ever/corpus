:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- table groundPattern/2 as incremental.
:- import variant_get_residual/2 from tables.

groundPattern([], []).
groundPattern([F|R],[true |RP]) :-
	nonvar(F),
	groundPattern(R,RP).
groundPattern([F|R],[false|RP]) :- 
	var(F),
	groundPattern(R,RP).

vcall_wrap(X) :-
	(call(X), fail
	;
	    (  variant_get_residual(X,[])
	    ;  fail
	    )
	).

call_wrap(X) :-
	(call(X), fail
	;
	    (  get_residual(X,[])
	    ;  fail
	    )
	).

test:- testv,fail.
test:- abolish_all_tables,fail.
test:- testu,fail.
test:- variant_get_residual(groundPattern(X,Y),[]),writeln(open(X,Y)),fail.
test.

testv:-   vcall_wrap(groundPattern([(1), (2)], P1)),writeln(var_gg(P1)),fail.
testv:-   vcall_wrap(groundPattern([(1), _X], P2)),writeln(var_gv(P2)),fail.
testv.

testu:-   call_wrap(groundPattern([(1), (2)], P1)),writeln(unif_gg(P1)),fail.
testu:-   call_wrap(groundPattern([(1), _X], P2)),writeln(unif_gv(P2)),fail.
testu.

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh get_resid "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
