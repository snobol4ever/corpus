%------------------------------------------------------------------------
% Program that causes a seg fault (while performing simplification).
%
% Both types of negative simplification are possible.
% Model T = {p}, F = {q}, U = {u}.
%------------------------------------------------------------------------

:- auto_table.

p :- tnot(q),p.
p :- tnot(q).

q :- tnot(p),q.

r :- tnot(r),p.

%------------------------------------------------------------------------

test :- r, fail.
test :- ( p ->	( tnot(p) -> writeln('p is undefined')
		; writeln('p is true (OK)') )
	; writeln('p is false') ),
        ( q ->  ( tnot(q) -> writeln('q is undefined')
		; writeln('q is true') )
	; writeln('q is false (OK)') ),
        ( r ->  ( tnot(r) -> writeln('r is undefined (OK)')
		; writeln('r is true') )
	; writeln('r is false') ).

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh seg4 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
