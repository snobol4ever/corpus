:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import check_variant/1,check_variant/2 from tables.
:- import xsb_error_get_tag/2 from error_handler.
:- import numbervars/1 from num_vars.

:- index(cmp/3,trie).

:- index(p/1,trie).
:- dynamic p/1.

?- assert(q(i)).

test:- assert(cmp(a,b,c)),assert(cmp(d,e,f)),fail.
test:- check_variant(cmp(a,b,c)),writeln(first_passed),fail.
test:- check_variant(cmp(d,e,f)),writeln(second_passed),fail.
test:- check_variant(cmp(_X,e,f)),writeln(third_failed),fail.
test:- check_variant(cmp(d,e,_X)),writeln(fourth_failed),fail.
test:- check_variant(cmp(d,e,_X),1),writeln(fifth_passed),fail.
test:- check_variant(p(_X)),writeln(sixth_failed),fail.
test:- catch(check_variant(q(_X)),E,(xsb_error_get_tag(E,Tag),numbervars(Tag),writeln(seventh_test(Tag)))),fail.

test.



% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh test_check_variant "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
