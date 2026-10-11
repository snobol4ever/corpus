
:- import get_call/3 from tables.
:- import numbervars/1 from num_vars.

:- dynamic p/1 as incremental.
p(a).

:- table q/1 as incremental.
q(a).


test:- q(_X),fail.
test:- get_call(q(X),_Y,Z),
       numbervars(get_call(q(X),Z)),
       writeln(get_call(q(X),Z)),fail.
test:- p(_X),fail.
test:- get_call(p(X),Y,Z),
       numbervars(get_call(p(X),Y,Z)),
       writeln(get_call(p(X),Y,Z)).

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh test_get_call "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
