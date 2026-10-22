:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%------------------------------------------------------------------------
% Program that used to give wrong results (shows the need for junking
% answers at new_answer_dealloc time).
%
% Model T = {p}, F = {q,r}, U = {}.
%------------------------------------------------------------------------

:- table p/0, q/0, r/0.

p :- tnot(q).

q :- tnot(p),tnot(r),q.

r :- tnot(p),tnot(q).

%------------------------------------------------------------------------

test :- r, fail.
test :- ( p ->	( tnot(p) -> writeln('p is undefined')
		; writeln('p is true (OK)') )
	; writeln('p is false') ),
        ( q ->  ( tnot(q) -> writeln('q is undefined')
		; writeln('q is true') )
	; writeln('q is false (OK)') ),
	( r ->  ( tnot(r) -> writeln('r is undefined')
		; writeln('r is true') )
	; writeln('r is false (OK)') ).

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh fr30 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
