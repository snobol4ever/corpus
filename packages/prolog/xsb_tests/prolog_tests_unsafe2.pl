:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- compiler_options([xpp_on]).
#include "extensions_xsb.h"

:- import shell/1 from shell.
:- import numbervars/1 from num_vars.

test :-
	p(X,Y), numbervars([X,Y]), writeln(incomplete_p(X,Y)), fail.
test :-
	p(X,Y), numbervars([X,Y]), writeln(completed_p(X,Y)), fail.
%test :- shell(['rm unsafe2', XSB_OBJ_EXTENSION_ATOM]),
%	fmt_write('unsafe2%s removed', arg(XSB_OBJ_EXTENSION_ATOM)).

p(X1, X2) :-
        p1(Y1, Y2), s(X1, X2, Y1, Y2).

:- table p1/2.

p1(X, X).

s(X, X, [], X).
s([X], X, [], X).
s([X], X, [_], X).


% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh unsafe2 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
