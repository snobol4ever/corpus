:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

% TES: not all of the possible double-tabling errors are caught yet.  For instance,
% table foo/1 as incremental.

:- import xsb_error_get_tag/2 from error_handler.

test:- (table foo/1 as variant,incremental),fail.
test:- catch((table foo/1 as variant,incremental),E,(xsb_error_get_tag(E,M),writeln(M))),fail.
test:- (table bar/1 as variant,incremental,if_not_tabled),fail.
test:- (table bar/1 as variant,incremental,if_not_tabled),fail.
test.

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh test_tab_interact "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
