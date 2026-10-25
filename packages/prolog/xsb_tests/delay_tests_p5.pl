:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%------------------------------------------------------------------------
% Program in which {p,q} should fail while {r} should succeed.
% Needs negative simplification (for the answer of r).
%------------------------------------------------------------------------

:- table p/0, q/0, r/0.

p :- tnot(q), fail.
p :- tnot(r), fail.

q :- p.

r :- tnot(p).

%------------------------------------------------------------------------

test :- p, fail.
test :-
        ( p ->
	    ( tnot(p) -> writeln('p is undefined') ; writeln('p is true') )
	; writeln('p is false (OK)') ),
        ( q ->
	    ( tnot(q) -> writeln('q is undefined') ; writeln('q is true') )
	; writeln('q is false (OK)') ),
        ( r ->
	    ( tnot(r) -> writeln('r is undefined') ; writeln('r is true (OK)') )
	; writeln('r is false') ).

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh p5 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
