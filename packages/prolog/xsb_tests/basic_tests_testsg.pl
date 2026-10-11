:- [acyl,'tcyl-24-24-2'].

:- table sg/2.

test :- statistics, sg(1,_F), fail.
test :- statistics.

tw :- sg(1,F), write(sg(1,F)), nl, fail.
tw.

sg(X,Y) :- cyl(X,X1), sg(X1,Y1), acyl(Y1,Y).
sg(X,X).


% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs gentest.sh testsg "[acyl,'tcyl-24-24-2'],tw."
:- consult(basic_tests_acyl).
:- consult(basic_tests_tcyl_24_24_2).
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tw))).
