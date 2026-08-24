% rung32_bridge_negation/02_var_goal_neg_fails — \+ Var where Var=true.
% Discriminating test: pre-bridge default-arm silent-success would dispatch
% the inner goal as 'succeed' (the silent-success bug), so \+ would correctly
% return 'failed' here BUT for the wrong reason (the inner true also genuinely
% succeeds). The bridge mechanism must invoke the actual goal — verified by
% test 04 which uses a goal whose outcome distinguishes silent-success from
% real dispatch under negation.
%
% This test still has value: confirms the bridge does not regress when the
% inner goal genuinely succeeds (so \+ correctly fails).
:- initialization(main).
main :-
    G = true,
    ( \+ G -> write(succeeded) ; write(failed) ),
    nl.
