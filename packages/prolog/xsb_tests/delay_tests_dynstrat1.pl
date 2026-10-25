:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%------------------------------------------------------------------------
% Program that is dynamically stratified but not dynamically stratified
% from left-to-right.  It shows that delay is necessary for the correct
% evaluation of dynamically stratified programs (the negation suspension
% transformation is not enough).
%
% Without delay, the program gives correct results when the first subgoal
% is either p or q  (model = {~p,q,~r}), but gives wrong results when
% the first subgoal is r (answers = {p,q,~r}).  This is because, it then
% needs simplification.
%
% With delay, no matter what the first subgoal is, the program gives
% wrong results.  Both negative and positive simplification is needed.
%------------------------------------------------------------------------

:- auto_table.

p :- tnot(q).

q :- tnot(r).

r :- tnot(p), fail.

%------------------------------------------------------------------------

test :- p, fail.
test :- ( p ->	( tnot(p) -> writeln('p. p is undefined')
		; writeln('p. p is true') )
	; writeln('p. p is false (OK)') ),
        ( q ->  ( tnot(q) -> writeln('p. q is undefined')
		; writeln('p. q is true (OK)') )
	; writeln('p. q is false') ),
        ( r ->	( tnot(r) -> writeln('p. r is undefined')
		; writeln('p. r is true') )
	; writeln('p. r is false (OK)') ),
	abolish_all_tables, fail.
test :- q, fail.
test :- ( p ->	( tnot(p) -> writeln('q. p is undefined')
		; writeln('q. p is true') )
	; writeln('q. p is false (OK)') ),
        ( q ->  ( tnot(q) -> writeln('q. q is undefined')
		; writeln('q. q is true (OK)') )
	; writeln('q. q is false') ),
        ( r ->	( tnot(r) -> writeln('q. r is undefined')
		; writeln('q. r is true') )
	; writeln('q. r is false (OK)') ),
        abolish_all_tables, fail.
test :- r, fail.
test :- ( p ->	( tnot(p) -> writeln('r. p is undefined')
		; writeln('r. p is true') )
	; writeln('r. p is false (OK)') ),
        ( q ->  ( tnot(q) -> writeln('r. q is undefined')
		; writeln('r. q is true (OK)') )
	; writeln('r. q is false') ),
        ( r ->	( tnot(r) -> writeln('r. r is undefined')
		; writeln('r. r is true') )
	; writeln('r. r is false (OK)') ).


% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh dynstrat1 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
