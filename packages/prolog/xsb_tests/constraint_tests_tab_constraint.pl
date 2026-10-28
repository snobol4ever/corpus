:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import {}/1 from clpr.
:- import dump/3 from dump.


test:- {X < 10},p1(X),fail.
test:- {X < 9},p2(X).

:- table p1/1.
p1(X):- {X < 9},
	dump([X],[x],Xs),
	writeln(p1(Xs)).

:- table p2/1.
p2(X):- {X < 10},
	dump([X],[x],Xs),
	writeln(p2(Xs)).

q(X):- {X < 9}.

:- table p3/1.
p3(3).

%?- {X < 10},p(X).

% DRIVER (appended by the vendoring, CEO-700): XSB constraint_tests/test.sh runs gentest.sh tab_constraint "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
end_of_file.

I have some questions about tabling and constraints.  It appears that
tabling does not work properly when a constrained variable in a tabled
subgoal is further constrained by an answer.  In the program above, we
have

| ?- {X < 10}, p1(X).
[x < 9.0000]
 { X < 10.0000 }   <-- should be X < 9

------------------

but answers work ok with unconstrained subgoal variables

 ?- p1(X).
 { X < 9.0000 }  <- ok

------------------

and  subgoal variables work ok if they are not further constrained.

| ?- {X < 10}, p2(X).
 { X < 10.0000 }



