splitup(Sep,[token(B)|BL]) --> splitup(Sep,B,BL).
splitup(Sep,[A|AL],B)      --> [A], {\+ [A] = Sep }, splitup(Sep,AL,B).
splitup(Sep,[],[B|BL])     --> Sep, splitup(Sep,B,BL).
splitup(_Sep,[],[])        --> [].
start :-
    phrase(splitup(",",Tokens),"Hello,How,Are,You,Today"),
    phrase(splitup(".",Tokens),Backtogether),
    string_to_list(ABack,Backtogether),
    writeln(ABack).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines start/0 and never calls it; the driver calls it once at load.
:- initialization(start).
