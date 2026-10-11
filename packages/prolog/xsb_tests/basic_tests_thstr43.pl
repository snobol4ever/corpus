:- table a/2.

tw :- ((a(a,D) ; a(b,D) ; a(c,D)),write(D),nl ; a(Q,W),write(a(Q,W)),nl), fail.
tw.

a(a,X) :- p(1,X).
a(a,X) :- p(2,X).
a(a,X) :- p(3,X).

a(b,X) :- p(2,X).
a(b,X) :- p(3,X).
a(c,X) :- p(3,X).

p(1,10).
p(1,11).
p(2,12).
p(2,13).
p(3,14).
p(3,15).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs gentest.sh thstr43 "tw."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tw))).
