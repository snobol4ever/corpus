:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

/* Tests DTF creation and garbage collection of two tables for
different predicates. */

:- table tpred/1.
tpred(X):- p(X).

:- table upred/1.
upred(X):- p(X).

p(f(1)).
p(f(2)).
p(f(3)).
p(g(1)).
p(g(2)).
p(g(3)).

%------------------
:- dynamic tr/1.
:- index(tr/1,trie).

test:- assert(tr(a)),assert(tr(b)),assert(tr(c)),fail.

test:- tpred(_X),fail.
test:-  tpred(X),tr(Y),
	abolish_table_pred(tpred/1),
	writeln((X,Y)),fail.

test:- upred(_X),fail.
test:-  upred(X),tr(Y),
	abolish_table_pred(upred/1),
	fail.

test:- get_residual(tpred(X),_),writeln(first(X)),fail.
test:- get_residual(upred(X),_),writeln(first(X)),fail.
test:- gc_tables(N),writeln(remaining(N)).


% DRIVER (appended by the vendoring, CEO-700): XSB sub_table_tests/stest.sh runs sgentest.sh abol_test3a "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
