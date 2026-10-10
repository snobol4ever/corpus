number_of_lines(Num) :-	
	current_input(In),
	read_line_to_codes(In, Line),
	number_codes(Num, Line).
	
input_lines_for_num(0, ListOfLines)	:-	
	format('~nThe lines you entered were: ~n~n'),
	maplist(format('~w~n'), ListOfLines).	
input_lines_for_num(Num, CurrentLines) :-
	Num > 0,
	Num1 is Num - 1,
	current_input(In),
	read_line_to_codes(In, Line),
	atom_codes(LineAsAtom, Line),
	append(CurrentLines, [LineAsAtom], MoreLines),
	input_lines_for_num(Num1, MoreLines).
	
lines :-
	number_of_lines(Num),
	input_lines_for_num(Num, []).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines lines/0 (reads a count, then that many lines) and never calls it; the input is the task's sample.
:- initialization(lines).
