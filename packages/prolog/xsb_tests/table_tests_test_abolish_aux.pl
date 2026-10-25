:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import xsb_error_get_message/2,xsb_error_get_tag/2 from error_handler.

% this test makes sure we properly abolish auxiliary predicates, like
% tabled_call/1 as used in not_exists.
% also makes sure that table-indexed predicates are throwing a meaningful error message.

:- import get_calls/1 from tables.

:- table p/1.
p(a).

:- table pi/1 as incremental.
pi(a).

% first test abolish_table_subgoal
test:-
     abolish_all_tables,
     not_exists(p(c)),
     not_exists(pi(c)),
     write_tables(first,p(c)),
     write_tables(first,pi(c)),
     fail.
test:-
     abolish_table_subgoal(p(c)),
     abolish_table_subgoal(pi(c)),
     write_tables(second,p(c)),
     write_tables(second,pi(c)),
     fail.
% next test abolish_table_subgoal*s*
test:-
     abolish_all_tables,
     not_exists(p(c)),
     not_exists(pi(c)),
     write_tables(third,p(c)),
     write_tables(third,pi(c)),
     fail.
test:-
     abolish_table_subgoals(p(c)),
     abolish_table_subgoals(pi(c)),
     write_tables(fourth,p(c)),
     write_tables(fourth,pi(c)),
     fail.
test:-
     abolish_all_tables,
     not_exists(p(c)),
     not_exists(pi(c)),
     write_tables(fifth,p(c)),
     write_tables(fifth,pi(c)),
     fail.
% want to test that we remove only those aux's pertaining to the predicate.
test:-
     abolish_table_pred(p(c)),
%     abolish_table_subgoals(pi(c)),
     write_tables(sixth,p(c)),
     write_tables(sixth,pi(c)),
     fail.
test:- 
    p_ind(b,X,Y),writeln(p_ind(b,X,Y)),fail.
test:- 
    catch(abolish_table_subgoal(p_ind(b,_X,_Y)),E,
	  (xsb_error_get_tag(E,M),writeln(caught(M)))),
    fail.
test.

write_tables(Label,Call):-
    tables:auxiliary_table_subgoal(Call,NewCall),
    get_calls(NewCall),
    writeln(found(Label,NewCall)),
    fail.
write_tables(_Label,_Call).


:- table p_ind/3 as index([1+3,3+2,0]).

p_ind(X,Y,Z) :- r(X,Y),s(Y,Z), writeln(p_ind(X,Y,Z)).

s(1,u).
s(1,v).
s(3,w).
s(4,x).

r(a,1).
r(a,2).
r(b,3).
r(b,4).

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh test_abolish_aux "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
