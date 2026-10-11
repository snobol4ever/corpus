:- table p1/0, q1/0, p2/0, q2/0.


p2 :- tnot(q2).
q2 :- tfindall(X, r(X), L), s(L), tnot(p2).

:- table r/1.
r(a).

s(_).

test:- p2,fail.
test:- p2,tnot(p2),q2,tnot(q2)-> writeln(ok);writeln('tfinda test failure').

% DRIVER (appended by the vendoring, CEO-700): XSB sub_table_tests/stest.sh runs sgentest.sh tfinda "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
