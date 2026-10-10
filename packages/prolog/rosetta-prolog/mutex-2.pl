synchronized_goal(G) :- with_mutex(my_mutex, call(G)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines synchronized_goal/1 and never calls it; the driver runs two goals in turn under its mutex my_mutex (with_mutex/2 creates it on first use).
:- initialization(forall(member(G, [writeln(first), writeln(second)]), synchronized_goal(G))).
