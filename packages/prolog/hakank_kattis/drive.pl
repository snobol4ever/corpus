% drive.pl -- the driver of a mined Prolog collection whose programs define their goals and call none (ours; the programs are read in place and never changed;
% the grader 2026-11-20, Lon: "keep on cutting, grading, and scoring."). Loaded after a program. A program that defines main/0 is run by calling it alone. Else each
% goal below that the program defines is called once, in this order; a goal of one argument is called with a fresh variable and its answer printed on a line
% of its own when the call binds it. A goal that fails prints nothing more; an error stays the answer. A program that defines none of them runs as it stands,
% and so does a program that has already printed by the time it is loaded (its own initialization ran it), so nothing is run twice.
:- initialization(drive_goals, main).
drive_goals :- character_count(user_output, C), C > 0, !.
drive_goals :- ( current_predicate(main/0) -> ( main -> true ; true ) ; forall(drive_goal(N, A), drive_call(N, A)) ).
drive_goal(N, A) :- member(N, [solve, run, go, start, solution, answer, part1, part2, part_1, part_2, p1, p2, star1, star2, task1, task2, q1, q2]), member(A, [0, 1]), current_predicate(N/A).
drive_goal(N, A) :- current_predicate(N/A), member(A, [0, 1]), drive_numbered(N).
drive_numbered(N) :- member(P, [euler, problem, prob, p]), atom_concat(P, D, N), D \== '', atom_codes(D, C), forall(member(X, C), code_type(X, digit)), !.
drive_call(N, 0) :- ( call(N) -> true ; true ).
drive_call(N, 1) :- ( call(N, X) -> ( nonvar(X) -> print(X), nl ; true ) ; true ).
