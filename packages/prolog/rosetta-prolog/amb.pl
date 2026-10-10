% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
amb(E, [E|_]).
amb(E, [_|ES]) :- amb(E, ES).

joins(Left, Right) :-
  append(_, [T], Left),
  append([R], _, Right),
  ( T \= R -> amb(_, [])  % (explicitly using amb fail as required)
  ; true ).

amb_example([Word1, Word2, Word3, Word4]) :-
  amb(Word1, ["the","that","a"]),
  amb(Word2, ["frog","elephant","thing"]),
  amb(Word3, ["walked","treaded","grows"]),
  amb(Word4, ["slowly","quickly"]),
  joins(Word1, Word2),
  joins(Word2, Word3),
  joins(Word3, Word4).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines amb_example/1 (the task's four word sets) and never calls it; written for code lists (append/3 on "..."), so the flag is set at its head and the driver prints the one sentence amb finds.
:- initialization((amb_example([W1, W2, W3, W4]), format("~s ~s ~s ~s~n", [W1, W2, W3, W4]))).
