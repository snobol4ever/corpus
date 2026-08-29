%--------------------------------------------------------------- 1 01_call1_atom
% rung33_bridge_callN/01_call1_atom — call/1 with Var bound to atom goal.
% Bridge requirement: call/1 with goal_e->kind == E_VAR dispatches the
% deref'd Term as a goal. Here Var is bound to 'true' (atom); bridge
% must recognise atom as zero-arity callable.
:- initialization(main).
main :-
    G = true,
    ( call(G) -> write(succeeded) ; write(failed) ),
    nl.
%----------------------------------------------------------- 2 02_call1_compound
% rung33_bridge_callN/02_call1_compound — call/1 with Var bound to compound goal.
% Bridge requirement: Var is bound to a compound (X=5); bridge dispatches
% it and caller-visible variable X gets bound. Mirrors rung31/02 shape
% but under call/1 instead of catch/3.
:- initialization(main).
main :-
    G = (X = 5),
    call(G),
    write(X), nl.
%---------------------------------------------------------- 3 03_call2_extra_arg
% rung33_bridge_callN/03_call2_extra_arg — call/2 with Var bound to atom,
% one extra arg appended. call(G, X) where G=write is call(write, X) = write(X).
% Bridge requirement: call/N with N>1 must reconstruct the goal by appending
% extra args to the deref'd Term (G=atom -> call G(extra_args...)).
:- initialization(main).
main :-
    G = write,
    call(G, hello),
    nl.
%--------------------------------------------------------- 4 05_call2_compound_g
% rung33_bridge_callN/05_call2_compound_g — call/2 where G is already a compound.
% call(G, ExtraArg) where G=succ(3) reconstructs succ(3, R) — G's args
% prepended, extra args appended. Tests the compound-G case of call/N.
:- initialization(main).
main :-
    G = succ(3),
    call(G, R),
    write(R), nl.
