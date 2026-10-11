
test:- forall(p(X),q(X)),writeln('forall(p(X),q(X)) succeeded'),fail.
test:- forall(q(X),p(X)),writeln('forall(q(X),p(X)) succeeded'),fail.
test:- forall(pt(X),qt(X)),writeln('forall(pt(X),qt(X)) succeeded'),fail.
test:- forall(qt(X),pt(X)),writeln('forall(qt(X),pt(X)) succeeded'),fail.


p(a).
p(b).
p(c).

q(a).
q(b).


:- table pt/1, qt/1.
pt(a).
pt(b).
pt(c).

qt(a).
qt(b).


% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh test_forall "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
