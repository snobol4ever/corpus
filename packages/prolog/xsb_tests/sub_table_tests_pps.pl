:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- compiler_options([spec_off]).

%?- xsb_flag(verboseness,3).
:- import private_builtin/1 from machine.

:- table wrapper/2, wrapper/3.

db(wrapper(app,_)).
db(wrapper(pps,_)).
db(wrapper(p,_,_)).

%% wrapper/2
wrapper(pps,_) :-
%	writeln(calling(wrapper(pps,_))),
        wrapper(app,foobar),
        fail.
wrapper(app,_) :- wrapper(p,_,foobar).
wrapper(X,Y) :-
	writeln(clause3(wrapper(X,Y))),
        db(wrapper(X,Y)),

        nl,
        writeln('About to cut'),
        !,
        fail.
%% Shouldn't go here after the cut!!!
wrapper(X,Y) :-
	writeln(clause4(wrapper(X,Y))),
        writeln('******fell through the cut!!! ' - X).

%% wrapper/3
wrapper(p,0,_).
wrapper(p,_,_) :-
        wrapper(p,_,foobar),
        wrapper(pps,foobar).

test:- wrapper(pps,foobar).

% DRIVER (appended by the vendoring, CEO-700): XSB sub_table_tests/stest.sh runs sgentest.sh pps "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
