:- import numbervars/1 from num_vars.
:- import dynamic_pred_has_clauses/2 from assert.

test:- catch(dynamic_pred_has_clauses(2,_F),error(E,_),writeln(E)),fail.
test:- catch(dynamic_pred_has_clauses(p(_X),_F),error(E,_),(numbervars(E),writeln(E))),fail.
%test:- catch(dynamic_pred_has_clauses(u(_X),_F),error(E,_),(numbervars(E),writeln(E))),fail.
test:- dynamic_pred_has_clauses(d_1(_X),Cl),writeln(d_1(Cl)),fail.
test:- dynamic_pred_has_clauses(d_2(_X),Cl),writeln(d_2(Cl)),fail.
test:- dynamic_pred_has_clauses(d_3(_X),Cl),writeln(d_3(Cl)),fail.
test:- dynamic_pred_has_clauses(d_4(_X),Cl),writeln(d_4(Cl)),fail.
test.

p(0).

:- dynamic d_1/1.

:- dynamic d_2/1.
d_2(1).

:- dynamic d_3/1 as incremental.


:- dynamic d_4/1 as incremental.
d_4(1).

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh test_dphc "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
