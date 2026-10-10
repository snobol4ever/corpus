% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
splitup(Sep,[token(B)|BL]) --> splitup(Sep,B,BL).
splitup(Sep,[A|AL],B)      --> [A], {\+ [A] = Sep }, splitup(Sep,AL,B).
splitup(Sep,[],[B|BL])     --> Sep, splitup(Sep,B,BL).
splitup(_Sep,[],[])        --> [].
start :-
    phrase(splitup(",",Tokens),"Hello,How,Are,You,Today"),
    phrase(splitup(".",Tokens),Backtogether),
    string_to_list(ABack,Backtogether),
    writeln(ABack).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines start/0 and never calls it; written for code lists (splitup//3 over "Hello,How,Are,You,Today"), so the flag is set at its head and the driver calls start/0 once at load.
:- initialization(start).
