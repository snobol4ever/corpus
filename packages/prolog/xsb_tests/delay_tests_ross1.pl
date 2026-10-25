:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
test :- p(X), writeln(X), fail ; true.

%-----------------------------------------------------------------------

:- table p/1.

p(X) :- t(X,Y,Z), tnot(p(Y)), tnot(p(Z)).
p(b).

t(a,b,a).
t(a,a,b).

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh ross1 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
