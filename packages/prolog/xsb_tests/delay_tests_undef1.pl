:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- table dl/0, p/1, q/2, r/2, t/1.

p(a) :- q(_X,_Y), tnot(p(a)).
p(X) :- X = a, tnot(p(X)), q(X,X).
p(X) :- tnot(p(X)).

r(X, Y) :- q(X, b), t(Z), tnot(p(Z)), q(W,Y), W = Z.

t(a).

q( X, Y) :- tnot(p(a)), q(X,Y).
q(_X,_Y) :- tnot(p(a)).
q(_X, Y) :- dl, Y = b.

dl :- tnot(dl).

%-----------------------------------------------------------------------

:- import numbervars/1 from num_vars.
:- import get_calls/3, get_returns/2 from tables.

test :- dl, fail.
test :- r(_,_), fail.
/*
test :- get_calls(p(X), C, R), write('Call '), write(p(X)),
	get_returns(C, R), write(', return '), write(p(X)),
	( tnot(p(X)) -> writeln(' is undefined') ; writeln(' succeeds') ),
	fail.
test :- get_calls(q(X,Y), C, R), write('Call '), write(q(X,Y)),
	get_returns(C, R), write(', return '), write(q(X,Y)),
	( tnot(q(X,Y)) -> writeln(' is undefined') ; writeln(' succeeds') ),
	fail.
 */
test.

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh undef1 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
