:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- table p/1.

p(X) :- X = a, p(X).
p(a).

:- import get_calls/3 from tables.

:- p(X),fail.

test :- get_calls(p(a),_C,R), writeln(a(R)),fail.

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh tabbug1 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
