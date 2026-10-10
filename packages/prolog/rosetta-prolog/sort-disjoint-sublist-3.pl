% We use the "R" intermediate var to decouple processing by the predicate
% from subsequent checking against expected result.

:- begin_tests(sort_disjoint_sublist).

test(rosetta)  :- sort_disjoint_sublist([7,6,5,4,3,2,1,0],[6,1,7],R), R = [7,0,5,4,3,2,1,6].
test(another1) :- sort_disjoint_sublist([4,2,1,4,5,5,0,0],[3,4,5,6,7],R), R = [4,2,1,0,0,4,5,5].
test(another2) :- sort_disjoint_sublist([4,2,1,4,5,5,0,0],[0,1,2,3,4],R), R = [1,2,4,4,5,5,0,0].
test(another3) :- sort_disjoint_sublist([4,2,1,4,5,5,0,0],[0,2,4,6],R), R = [0,2,1,4,4,5,5,0].
test(another4) :- sort_disjoint_sublist([4,2,1,4,5,5,0,0],[1,3,5,7],R), R = [4,0,1,2,5,4,0,5].
test(edge1)    :- sort_disjoint_sublist([],[],R), R = [].
test(edge2)    :- sort_disjoint_sublist([3,2,1],[],R), R = [3,2,1].
test(edge3)    :- sort_disjoint_sublist([3,2,1],[0],R), R = [3,2,1].
test(edge4)    :- sort_disjoint_sublist([3,2,1],[1],R), R = [3,2,1].
test(edge5)    :- sort_disjoint_sublist([3,2,1],[2],R), R = [3,2,1].
test(x1)       :- sort_disjoint_sublist([3,2,1],[0,1,2],R), R = [1,2,3].
test(x2)       :- sort_disjoint_sublist([1,2,3],[0,1,2],R), R = [1,2,3].
test(dups1)    :- sort_disjoint_sublist([3,2,1],[1,1,1],R), R = [3,2,1].
test(dups2)    :- sort_disjoint_sublist([3,2,1],[2,1,2],R), R = [3,1,2].
test(fail1,[fail]) :- sort_disjoint_sublist([1,2],[0,1,2],_).
test(fail2,[fail]) :- sort_disjoint_sublist([],[0,1],_).

:- end_tests(sort_disjoint_sublist).

% ---
% Run unit tests.
% ---

rt :- run_tests(sort_disjoint_sublist).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block's plunit tests and rt/0 are the entry and call sort_disjoint_sublist/3, which sort-disjoint-sublist-1 and -2 define as alternatives (CEO-1608 rule 5), so the driver takes over -1, the first (CEO-1613), prints the task's example and runs rt/0, printing whether every test passed (plunit's own report goes to stderr).
:- include('sort-disjoint-sublist-1.pl').
:- initialization((sort_disjoint_sublist([7,6,5,4,3,2,1,0], [6,1,7], R), format("~w~n", [R]), (rt -> writeln('run_tests: all passed') ; writeln('run_tests: some failed')))).
