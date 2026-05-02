% rung33_bridge_callN/03_call2_extra_arg — call/2 with Var bound to atom,
% one extra arg appended. call(G, X) where G=write is call(write, X) = write(X).
% Bridge requirement: call/N with N>1 must reconstruct the goal by appending
% extra args to the deref'd Term (G=atom -> call G(extra_args...)).
:- initialization(main).
main :-
    G = write,
    call(G, hello),
    nl.
