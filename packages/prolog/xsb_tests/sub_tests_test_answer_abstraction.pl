:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%This tests that a general call may be undefined, although a specific call may be definite.

:- table p1/1.

:- table undef/0.
undef:- tnot(undef).

:- table p1/1 as subsumptive.
p1(_X):- undef.
p1(X):- data(X).

data(1).

:- table p2/1 as subsumptive.
p2(_X).
p2(1).


test:- (p1(X),fail ; true),write_answers(test1,p1(X)),fail.
test:- (p2(X),fail ; true),write_answers(test2,p2(X)),fail.
test.

:- import numbervars/1 from num_vars.

write_answers(Tag,Goal):- 
	get_residual(Goal,R),
	numbervars(get_residual(Goal,R)),
	write(Tag),write(' : '),write(Goal), write(' <- '),writeln(R),
	fail.
write_answers(_,_).


end_of_file.

% :- table p2/1 as subsumptive.
% p2(_X).
% p2(X):- data(X).
% 
% :- table p3/1 as subsumptive.
% p3(X):- data(X).
% 
% :- table p4/1 as subsumptive.
% p4(X):- (X = 1 ; X = 2).
% 



% DRIVER (appended by the vendoring, CEO-700): XSB sub_tests/test.sh runs gentest.sh test_answer_abstraction "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
