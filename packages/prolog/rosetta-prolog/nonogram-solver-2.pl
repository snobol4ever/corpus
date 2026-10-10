nonogram :-
	open('C:/Users/Utilisateur/Documents/Prolog/Rosetta/nonogram/nonogram.txt',
	     read, In, []),
	repeat,
	     read_line_to_codes(In, Line_1),
	     read_line_to_codes(In, Line_2),
	     compute_values(Line_1, [], [], Lines),
	     compute_values(Line_2, [], [], Columns),
	     nonogram(Lines, Columns) , nl, nl,
	read_line_to_codes(In, end_of_file),
	close(In).

compute_values([], Current, Tmp, R) :-
	reverse(Current, R_Current),
	reverse([R_Current | Tmp], R).

compute_values([32 | T], Current, Tmp, R) :-
	!,
	reverse(Current, R_Current),
	compute_values(T, [], [R_Current | Tmp], R).

compute_values([X | T], Current, Tmp, R) :-
	V is X - 64,
	compute_values(T, [V | Current], Tmp, R).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block's nonogram/0 reads puzzle line pairs from a fixed Windows path (C:/Users/Utilisateur/.../nonogram.txt) and solves them with nonogram/2 of nonogram-solver-1, so the driver takes -1 over (CEO-1613) and runs nonogram/0's own steps on the first three puzzles of the task's problem list (the first is its example; the fourth, the largest, is left out) given as text: compute_values/4 on each line, nonogram/2, two newlines.
:- include('nonogram-solver-1.pl').
:- initialization(forall(member(R-C, ['C BA CB BB F AE F A B'-'AB CA AE GA E C D C', 'F CAC ACAC CN AAA AABB EBB EAA ECCC HCCC'-'D D AE CD AE A DA BBB CC AAB BAA AAB DA AAB AAA BAB AAA CD BBA DA', 'CA BDA ACC BD CCAC CBBAC BBBBB BAABAA ABAD AABB BBH BBBD ABBAAA CCEA AACAAB BCACC ACBH DCH ADBE ADBB DBE ECE DAA DB CC'-'BC CAC CBAB BDD CDBDE BEBDF ADCDFA DCCFB DBCFC ABDBA BBF AAF BADB DBF AAAAD BDG CEF CBDB BBB FC']), (atom_codes(R, Line_1), atom_codes(C, Line_2), compute_values(Line_1, [], [], Lines), compute_values(Line_2, [], [], Columns), nonogram(Lines, Columns), nl, nl))).
