:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import truth_value/2 from tables.
:- import xsb_error_get_tag/2 from error_handler.
:- import numbervars/1 from num_vars.

:- table p/2.
p(a,b).
p(a,c):- undefined.

nt(a,b).

:- table p/1.
p(F):- truth_value(p(_),F).

test:- truth_value(p(X,Y),F),numbervars(p(X,Y)),writeln(found(p(X,Y),F)),fail.
test:- truth_value(p(c,Y),F),numbervars(p(c,Y)),writeln(found(p(c,Y),F)),fail.
test:- truth_value(nt(a,b),F),writeln(found(nt(a,b),F)),fail.
test:- truth_value(nt(b,a),F),writeln(found(nt(b,a),F)),fail.
test:- catch(truth_value(undef(a,b),_),E,(xsb_error_get_tag(E,T),writeln(T))),fail.
test:- catch(truth_value(p(_X),_),E,(xsb_error_get_tag(E,T),numbervars(T),writeln(T))),fail.
test.

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh test_model_tv "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
