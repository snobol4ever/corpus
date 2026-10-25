:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import incr_trans_depends/2,incr_assert/1 from increval.
:- import numbervars/1 from num_vars.

:- dynamic d/2 as incremental,abstract(0).
%:- dynamic d/2 as incremental.
d(1,2).
d(2,3).
d(3,2).

:- table anc/2 as incremental.

anc(X,Y):- d(X,Y).
anc(X,Y):- anc(X,Z),d(Z,Y).

test:- anc(1,Y),writeln(anc_1(1,Y)),fail.
test:- incr_trans_depends(anc(1,B),G),numbervars(B-G),writeln(trans_depends(anc(1,B),G)),fail.
test:- incr_assert(d(3,4)),fail.
test:- anc(1,Y),writeln(anc_2(1,Y)),fail.
test.



% DRIVER (appended by the vendoring, CEO-700): XSB incremental_tests/test.sh runs gentest.sh test_idg_abstract "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
