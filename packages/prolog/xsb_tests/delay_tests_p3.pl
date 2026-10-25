:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%------------------------------------------------------------------------
% Program for which everything is undefined.
%------------------------------------------------------------------------

:- table p/0, q/0, r/0.

p :- tnot(q), fail.
p :- tnot(r).

q :- p.

r :- p.

%------------------------------------------------------------------------

test :- p, fail.
test :-
        ( p ->
	    ( tnot(p) -> writeln('p is undefined (OK)') ; writeln('p is true') )
	; writeln('p is false') ),
        ( q ->
	    ( tnot(q) -> writeln('q is undefined (OK)') ; writeln('q is true') )
	; writeln('q is false') ),
        ( r ->
	    ( tnot(r) -> writeln('r is undefined (OK)') ; writeln('r is true') )
	; writeln('r is false') ).

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh p3 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
