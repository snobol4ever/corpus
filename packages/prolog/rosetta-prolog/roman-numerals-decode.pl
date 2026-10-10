decode_digit(i, 1).
decode_digit(v, 5).
decode_digit(x, 10).
decode_digit(l, 50).
decode_digit(c, 100).
decode_digit(d, 500).
decode_digit(m, 1000).

decode_string(Sum, _, [], Sum).

decode_string(LastSum, LastValue, [Digit|Rest], NextSum) :-
   decode_digit(Digit, Value),
   Value < LastValue,
   Sum is LastSum - Value,
   decode_string(Sum, Value, Rest, NextSum).

decode_string(LastSum, LastValue, [Digit|Rest], NextSum) :-
   decode_digit(Digit, Value),
   Value >= LastValue,
   Sum is LastSum + Value,
   decode_string(Sum, Value, Rest, NextSum).

decode_string(Atom, Value) :-
   atom_chars(Atom, String),
   reverse(String, [Last|Rest]),
   decode_digit(Last, Start),
   decode_string(Start, Start, Rest, Value).

test :-
   decode_string(mcmxc, 1990),
   decode_string(mmviii, 2008),
   decode_string(mdclxvi, 1666).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): test/0 only checks the task's three numerals and prints nothing; the driver prints decode_string/2 for the task's MCMXC, MMVIII and MDCLXVI.
:- initialization(forall(member(R, [mcmxc, mmviii, mdclxvi]), (decode_string(R, V), format("~w: ~w~n", [R, V])))).
