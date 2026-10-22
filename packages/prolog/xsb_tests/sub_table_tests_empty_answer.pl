:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
/* Juliana Freire - March 25th, 96
 * tests whether the checking for deleted answers works correctly
 */

:- import get_calls/3, get_returns/3, delete_return/2 from tables.

arc(1,2).
arc(2,3).
arc(2,4).
arc(4,1).

:- table path/2.

path(X,Y) :- arc(X,Y).
path(X,Y) :- path(X,Z), arc(Z,Y).

test :- 
	path(_X1,_Y1),
	path(X,Y), % writeln(path(X,Y)), 
	(((X=1, Y=2); (X=2, Y=2)) ->
	    get_calls(path(_,_),Cs,Oskel),
	    get_returns(Cs,Oskel,Leaf),
	    delete_return(Cs,Leaf),  % delete first answer
	    % writeln(deleted(X,Y)),
	    fail
	;
	    fail
        ).
test :- writeln('Empty answer OK').

% DRIVER (appended by the vendoring, CEO-700): XSB sub_table_tests/stest.sh runs sgentest.sh empty_answer "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
