:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- table(boss/2).

:- hilog manage.
:- hilog p.
:- table(apply/3).

tc(R)(X,Y) :- R(X,Y).
tc(R)(X,Y) :- tc(R)(X,Z),R(Z,Y).

boss(X,Y) :- manage(X,Y).
boss(X,Y) :- boss(X,Z),manage(Z,Y).

manage(bill,mary).
manage(mary, sue).
manage(sue, john).

p(a,b).
p(b,c).

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh hirc "tc(manage)(X,Y),write(X),write(' '),write(Y),nl,fail."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tc(manage)(X,Y),write(X),write(' '),write(Y),nl,fail))).
