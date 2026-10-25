:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
?-
     machine:put_attr(V2,aaaa,[=(x,X)]),
     assert:assert(
            (
              abc(qqq(V1, [X], Y, V2, ppp(V1))) :- true, rrr([X,Y])
	      		  ),
            3,
            1
          ).


test :- abc(qqq(V1, [a], b, _, ppp(V1))),writeln(succeeded).

rrr([a,b]).


% DRIVER (appended by the vendoring, CEO-700): XSB attv_tests/test.sh runs gentest.sh attvar_assert_regalloc "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
