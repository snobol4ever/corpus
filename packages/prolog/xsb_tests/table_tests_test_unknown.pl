:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import xsb_error_get_tag/2,misc_error/1 from error_handler.
:- import numbervars/1 from num_vars.

my_unknown_predicate_hook(X):- 
			       nv_writeln(this_is_my_undefined_warning_about(X)),
			       misc_error(unknown_predicate).
			       
nv_writeln(Term):- numbervars(Term),writeln(Term).

test:- set_prolog_flag(unknown,error),fail.
test:- catch(foo(_X),E,(xsb_error_get_tag(E,T),nv_writeln(T))),fail.
test:- catch(bar:foo(_X),E,(xsb_error_get_tag(E,T),nv_writeln(T))),fail.
test:- catch(table_foo(_X),E,(xsb_error_get_tag(E,T),nv_writeln(table_foo(T)))),fail.
test:- set_prolog_flag(unknown,undefined),fail.
test:- foo(_X),fail.
test:- table_foo(_X),fail.
test:- get_residual(table_foo(X),Y),nv_writeln(get_residual(table_foo(X),Y)),fail.
test:- get_residual(loader:wcs_undefined(X),Y),nv_writeln(get_residual(wcs_undefined(X),Y)),fail.
test:- set_prolog_flag(unknown,fail),fail.
test:- foo(_X),writeln('unknown failure incorrectly succeeded.'),fail.
test:- set_prolog_flag(unknown,user_hook),assert(unknown_predicate_hook(my_unknown_predicate_hook(_X))),fail.
test:- catch(foo(_X),E,(xsb_error_get_tag(E,T),nv_writeln(T))),fail.
test.

:- table table_foo/1.
table_foo(X):- foo(X).

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh test_unknown "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
