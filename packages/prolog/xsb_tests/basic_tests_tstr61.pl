:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import numbervars/3 from num_vars.

:- table a/2.

/* ?- a(Q,W). */

a(X,Y) :- p(X,Y).
a(X,Y) :- a(X,Z), a(Z,Y).

tw :- a(Q,W), T = a(Q,W), numbervars(T,0,_T1), writeq(T), nl.

p(f(a,b),f(c,d)).
p(f(c,d),f(e,f)).

p(f(1,2),f(3,4)).
p(f(3,D),f(5,D)).

p(f(10,20),f(30,40)).
p(f(30,D),f(E,D,E)).

/*
p(11,22).
p(22,33).
p(22,44).
*/

p([a,b],[c,d]).
p([c,d],[e,f]).
p([c,d],[g,g]).

p([X],[X]).
p([1,2],[3,4]).
p([3,X],[5,X]).

p(3,1).
p(3,4).

p(10,20).
p(10,25).
p(20,30).
p(25,40).
p(25,40).
p(40,20).
p(40,50).
p(50,50).
p(50,60).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs gentest.sh tstr61 "tw,fail."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tw,fail))).
