:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- table p1/0, q1/0, p2/0, q2/0.


p2 :- tnot(q2).
q2 :- tfindall(X, r(X), L), s(L), tnot(p2).

:- table r/1.
r(a).

s(_).

test:- p2,fail.
test:- p2,tnot(p2),q2,tnot(q2)-> writeln(ok);writeln('tfinda test failure').

% DRIVER (appended by the vendoring, CEO-700): XSB sub_table_tests/stest.sh runs sgentest.sh tfinda "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
