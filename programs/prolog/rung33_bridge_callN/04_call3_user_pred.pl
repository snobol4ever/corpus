% rung33_bridge_callN/04_call3_user_pred — call/3 with user predicate and two args.
% G is bound to a user-defined predicate atom; call(G, A, B) reconstructs
% the compound G(A,B) and dispatches via pl_box_choice.
:- initialization(main).

add(X, Y, Z) :- Z is X + Y.

main :-
    G = add,
    call(G, 3, 4, R),
    write(R), nl.
