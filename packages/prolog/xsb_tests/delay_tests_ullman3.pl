:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%
% The well-founded model is: {t(1), ~t(2), t(3)}
% Ground atoms t(4), t(5), and t(6) have ``unknown'' truth value.
%

:- table t/1.

t(Z) :- t0(Z).
t(Z) :- g(X,_,Z), t(X).
t(Z) :- g(_,Y,Z), tnot(t(Y)).

t0(1).

g(1,2,3).
g(2,5,4).
g(2,4,5).
g(5,3,6).

%--------------------------------------------------------------------------

test :- t(6), fail.
test :- t(X), stub1, write('call succeeds: '), writeln(t(X)), fail.
test :- t(X),
	( tnot(t(X)) -> stub1, write(t(X)), writeln(' is undefined')
	; stub1, write(t(X)), writeln(' is true')
	), fail.
test :- ( ( t(1), \+ tnot(t(1)), tnot(t(2)), t(3), \+ tnot(t(3)),
	    t(4), tnot(t(4)), t(5), tnot(t(5)), t(6), tnot(t(6)) ) ->
		stub1, writeln('Success')
	; stub1, writeln('Failure')
	), abolish_all_tables, fail.
test :- t(X), stub2, write('call succeeds: '), writeln(t(X)), fail.
test :- t(X),
	( tnot(t(X)) -> stub2, write(t(X)), writeln(' is undefined')
	; stub2, write(t(X)), writeln(' is true')
	), fail.
test :- ( ( t(1), \+ tnot(t(1)), tnot(t(2)), t(3), \+ tnot(t(3)),
	    t(4), tnot(t(4)), t(5), tnot(t(5)), t(6), tnot(t(6)) ) ->
		stub2, writeln('Success')
	; stub2, writeln('Failure')
	).

stub1 :- write('1st Pass: ').
stub2 :- write('2nd Pass: ').

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh ullman3 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
