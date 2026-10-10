do_find_closest_points([
    point(0.654682, 0.925557),
    point(0.409382, 0.619391),
    point(0.891663, 0.888594),
    point(0.716629, 0.996200),
    point(0.477721, 0.946355),
    point(0.925092, 0.818220),
    point(0.624291, 0.142924),
    point(0.211332, 0.221507),
    point(0.293786, 0.691701),
    point(0.839186, 0.728260)
]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block is the page's example query do_find_closest_points([ten points]) written as a fact, and the entry do_find_closest_points/1 is closest-pair-problem-1's, so the driver takes that block over (CEO-1613) and asks the query on the same ten points through all its answers: the fact answers first and prints nothing, the program's rule then prints the closest pair.
:- include('closest-pair-problem-1.pl').
:- initialization(forall(do_find_closest_points([point(0.654682, 0.925557), point(0.409382, 0.619391), point(0.891663, 0.888594), point(0.716629, 0.996200), point(0.477721, 0.946355), point(0.925092, 0.818220), point(0.624291, 0.142924), point(0.211332, 0.221507), point(0.293786, 0.691701), point(0.839186, 0.728260)]), true)).
