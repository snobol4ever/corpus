% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=chars (the ISO flag value its page sets ahead of this block); the program sets
% the flag, as GOAL-PROLOG-100's superset ruling has a program set a dialect flag (swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, chars).
my_compare2(A, B) :-
    compare(Order, A, B),
    my_compare2_(Order).

my_compare2_(<) :- println("A is less than B.").
my_compare2_(=) :- println("A is equal to B.").
my_compare2_(>) :- println("A is greater than B.").

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block's my_compare2/2 is the entry and prints through println/1 of integer-comparison-1, whose head sets double_quotes to chars ahead of this block on the page, so the driver sets chars at this block's head (chars_head), takes -1 over (CEO-1613) and compares three fixed pairs, one for each outcome, with -1's my_compare/2 (what its driver printed) and this block's my_compare2/2.
:- include('integer-comparison-1.pl').
:- initialization(forall(member(A-B, [1-2, 2-1, 2-2]), (format('my_compare(~w, ~w): ', [A, B]), my_compare(A, B), format('my_compare2(~w, ~w): ', [A, B]), my_compare2(A, B)))).
