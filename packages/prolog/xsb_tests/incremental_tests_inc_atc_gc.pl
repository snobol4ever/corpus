:- table p/1 as incremental.

p(1).
p(2).
p(3).

test:- p(X),abolish_table_call(p(_)),writeln(p1(X)),fail.
test:- writeln('--------------'),fail.
test:- get_residual(p(X),_),writeln(p2(X)),fail.
test.

% DRIVER (appended by the vendoring, CEO-700): XSB incremental_tests/test.sh runs gentest.sh inc_atc_gc "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
