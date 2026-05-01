% rung31_bridge_catch/04_var_goal_userpred — goal-as-var dispatches user predicate.
% Bridge requirement: walker must recognize TT_COMPOUND with user-defined
% functor (not in builtin or arith table) and route to pl_box_choice + bb_broker
% for clause resolution rather than treating as builtin.
:- initialization(main).

double(X, Y) :- Y is X * 2.

main :-
    G = double(21, R),
    catch(G, _, fail),
    write(R), nl.
