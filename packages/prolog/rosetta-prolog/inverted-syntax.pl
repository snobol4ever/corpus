% Dracula is a vampire.
% Also, you become a vampire if someone who is a vampire bites you.
vampire(dracula).
vampire(You) :- bites(Someone, You), vampire(Someone).

% Oh no! Dracula just bit Bob...
bites(dracula, bob).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines vampire/1 and bites/2 and never queries them; the driver lists every vampire.
:- initialization(forall(vampire(X), format("~w is a vampire~n", [X]))).
