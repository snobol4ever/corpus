
:- table p/3, q/3.

test:-
    catch(p(_X,[foo(bar),1,3.14],struct([2.73])),
	  error(_Type,context(context(_Msg,Subgoal),_Bt)),
	  writeln(the_goal_is(Subgoal))).

p(X,Y,Z):- q(X,Y,Z),!.
q(X,Y,Z):- p(X,Y,Z).
q(1,_Y,_Z).
q(2,_Y,_Z).

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh test_cut_over_tables "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
