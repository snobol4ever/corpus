strip_1comment(A,D) :- ((S1=0'#;S1=0';),append(B,[S1|C],A)), \+ ((S2=0'#;S2=0';),append(_X,[S2|_Y],B)) -> B=D; A=D.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines strip_1comment/2 over code lists and never calls it; the driver strips the task's two sample lines.
:- initialization(forall(member(S, [`apples, pears # and bananas`, `apples, pears ; and bananas`]), (strip_1comment(S, D), format("~s~n", [D])))).
