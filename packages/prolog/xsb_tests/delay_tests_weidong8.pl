:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%------------------------------------------------------------------------
% Program for which non-trivial ANSWER COMPLETION is needed.
%------------------------------------------------------------------------

:- table p/0, q/0, s/0, r/0.

p :- p.
p :- tnot(q).

q :- p.
q :- tnot(s).

s :- tnot(r).
s :- p.

r :- tnot(s), r.

%------------------------------------------------------------------------

test :- p, fail.
test :-
	( p ->
	    ( tnot(p) -> writeln('p is undefined') ; writeln('p is true (OK)') )
	; writeln('p is false') ),
	( q ->
	    ( tnot(q) -> writeln('q is undefined') ; writeln('q is true') )
	; writeln('q is false (OK)') ),
	( s ->
	    ( tnot(s) -> writeln('s is undefined') ; writeln('s is true (OK)') )
	; writeln('s is false') ),
	( r ->
	    ( tnot(r) -> writeln('r is undefined') ; writeln('r is true') )
	; writeln('r is false (OK)') ).

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh weidong8 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
