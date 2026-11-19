% drive.pl -- the driver of the suite prolog_golf (ours; the solutions are read in place and never changed).
% Loaded after a program. Anarchy Golf runs a Prolog solution by calling m/0 (341 of the 360 solutions define m and none calls it), so the
% driver calls m once when the program defines it, as the site does, and ignores how the call ends but an error, which stays the answer.
% A program without m runs as it stands.
:- initialization(golf_m, main).
golf_m :- ( current_predicate(m/0) -> ( m -> true ; true ) ; true ).
