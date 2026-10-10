% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
stripcomment(A,B) :- stripcomment(A,B,a).
stripcomment([A|AL],[A|BL],a) :- \+ A=0';, \+ A=0'# , \+ A=10, \+ A=13 , stripcomment(AL,BL,a).
stripcomment([A|AL],   BL ,a) :-  ( A=0';;    A=0'#), \+ A=10, \+ A=13 , stripcomment(AL,BL,b).
stripcomment([A|AL],   BL ,b) :-                      \+ A=10, \+ A=13 , stripcomment(AL,BL,b).
stripcomment([A|AL],[A|BL],_M):-                       ( A=10;    A=13), stripcomment(AL,BL,a).
stripcomment([],[],_M).
start :-
In = "apples, pears ; and bananas
apples, pears # and bananas",
    stripcomment(In,Out),
    format("~s~n",[Out]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines start/0 and never calls it; written for code lists (stripcomment/2 walks "..." as codes), so the flag is set at its head and the driver calls start/0 once at load.
:- initialization(start).
