:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import {}/1 from clpr.
:- import dump/3 from dump.

test:- p(Y,Y,X),dump([X],[x],Xs),writeln(Xs).

:- table p/3.
p(_Y,_Z,X):- {X < 9}.

% DRIVER (appended by the vendoring, CEO-700): XSB constraint_tests/stest.sh runs sgentest.sh csAttv "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
