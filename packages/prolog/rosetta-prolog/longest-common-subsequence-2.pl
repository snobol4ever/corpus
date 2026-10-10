% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
%declare that we will add lcs_db facts during runtime
:- dynamic lcs_db/3.

test :-
    retractall(lcs_db(_,_,_)), %clear the database of known results
    time(lcs("thisisatest", "testing123testing", Lcs)),
    writef('%s',[Lcs]).


% check if the result is known
lcs(L1,L2,Lcs) :-
    lcs_db(L1,L2,Lcs),!.

lcs([ H|L1],[ H|L2],[H|Lcs]) :- !,
    lcs(L1,L2,Lcs).

lcs([H1|L1],[H2|L2],Lcs) :-
    lcs(    L1 ,[H2|L2],Lcs1),
    lcs([H1|L1],    L2 ,Lcs2),
    longest(Lcs1,Lcs2,Lcs),!,
    assert(lcs_db([H1|L1],[H2|L2],Lcs)).

lcs(_,_,[]).


longest(L1,L2,Longest) :-
    length(L1,Length1),
    length(L2,Length2),
    ((Length1 > Length2) -> Longest = L1; Longest = L2).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines test/0 and never calls it; written for code lists, so the flag is set at its head; the driver calls it once and ends the line (time/1's report goes to stderr).
:- initialization((test, nl)).
