numeric_string(String) :-
    atom_string(Atom, String),
    atom_number(Atom, _).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines numeric_string/1 and never calls it; the driver tests the five strings of the solution's own example (determine-if-a-string-is-numeric-3) in its test_strings/1 format.
:- initialization(forall(member(S, ["123", "0.123", "-123.1", "NotNum", "1."]), ((numeric_string(S) -> R = a ; R = 'not a'), format('~w is ~w number.~n', [S, R])))).
