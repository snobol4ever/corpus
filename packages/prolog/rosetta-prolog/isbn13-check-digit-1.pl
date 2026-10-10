:- use_module(library(clpfd)).
:- use_module(library(dcg/basics), [digit/3]).
:- use_module(library(dcg/high_order), [sequence/4]).

base10_digit(Number) --> { Number in 0..9, Number #= Number0 - 48 }, digit(Number0).

isbn13 -->
    sequence(base10_digit, [D1, D2, D3]), "-",
    sequence(base10_digit, [D4, D5, D6, D7, D8, D9, D10, D11, D12, D13]),
    { ( D1 + 3 * D2 + D3 + 3 * D4 +
        D5 + 3 * D6 + D7 + 3 * D8 +
        D9 + 3 * D10 + D11 + 3 * D12 + D13 ) mod 10 #= 0 }.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the DCG isbn13//0 and never calls it; the driver checks the task's four ISBNs.
:- initialization(forall(member(S, ['978-0596528126', '978-0596528120', '978-1788399081', '978-1788399083']), (atom_codes(S, Cs), (phrase(isbn13, Cs) -> R = good ; R = bad), format("~w: ~w~n", [S, R])))).
