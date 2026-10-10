task1 :-
	hailstone(27),
	findall(X, find_chr_constraint(hailstone(X)), L),
	clean,
	% check the requirements
	(   (length(L, 112), append([27, 82, 41, 124 | _], [8,4,2,1], L)) -> writeln(ok); writeln(ko)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks (its CHR solution): this block's task1/0 and hailstone-sequence-7's longest_sequence/0 post the CHR constraints of hailstone-sequence-5, so the driver takes -5 over (CEO-1613), includes -7, runs task1/0 (the 27 check) and -7's seq/4 below 10000 in longest_sequence/0's own format (longest_sequence/0 is fixed at 100000 and takes 34 s under swipl).
:- include('hailstone-sequence-5.pl').
:- include('hailstone-sequence-7.pl').
:- initialization((task1, seq(2, 10000, 1-[1], Len-V), format('For ~w sequence has ~w len ! ~n', [V, Len]))).
