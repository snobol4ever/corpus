%!  troubleshoot(?PrinterPrints, ?LightIsFlashing, ?RecognisedByComputer, ?Advice) is nondet.
troubleshoot(false, false, false, 'check the power cable').
troubleshoot(false,     _, false, 'check the printer-computer cable').
troubleshoot(    _,     _, false, 'ensure the printer software is installed').
troubleshoot(false,  true,     _, 'check/replace ink').
troubleshoot( true,  true,  true, 'check/replace ink').
troubleshoot(false,     _,  true, 'check for paper jam').

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the decision table troubleshoot/4 and never queries it; the driver prints every advice it gives for each of the eight condition combinations of the task's printer table.
:- initialization(forall((member(P, [false, true]), member(L, [false, true]), member(C, [false, true])), (findall(A, troubleshoot(P, L, C, A), As), format("prints=~w flashing=~w recognised=~w: ~w~n", [P, L, C, As])))).
