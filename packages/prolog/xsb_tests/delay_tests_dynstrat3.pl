%--------------------------------------------------------------
% Program that requires some simplification.
% Its well-founded model is two valued:
%	T = {b(1), b(2), c, e(2)}
%	F = {a, d}
%--------------------------------------------------------------

:- table a/0, b/1, c/0, d/0, e/1.

a :- b(_), d.

b(X) :- c, e(X).
b(1).

c :- tnot(a).

d :- fail.

e(2).

%--------------------------------------------------------------

:- import get_calls/3, get_returns/2 from tables.

test :- a, fail.
test :-
	( a -> writeln('a is true') ; writeln('a is false (OK)') ),
	( c ->
	    ( tnot(c) -> writeln('c is undefined') ; writeln('c is true (OK)') )
	; writeln('c is false')
	),
	( d -> writeln('d is true') ; writeln('d is false (OK)') ), fail.
test :- get_calls(b(_), Call, Ret), Ret = ret(X), get_returns(Call, Ret),
	write(b(X)),
	( tnot(b(X)) ->  writeln(' is undefined') ; writeln(' is true (OK)') ),
	fail.
test.

%--------------------------------------------------------------


% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh dynstrat3 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
