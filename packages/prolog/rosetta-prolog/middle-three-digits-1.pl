middle_3_digits(Number, [D1,D2,D3]) :-
    verify_middle_3_able(Number, Digits),
    append(FrontDigits, [D1,D2,D3| BackDigits], Digits),
    same_length(FrontDigits, BackDigits).

verify_middle_3_able(Number, Digits) :-
    must_be(number, Number),
    AbsNumber is abs(Number),
    number_chars(AbsNumber, Digits),
    length(Digits, NumDigits),
    ( 3 > NumDigits         ->  domain_error('at least 3 digits',    Number)
    ; 0 is NumDigits mod 2  ->  domain_error('odd number of digits', Number)
    ; true
    ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines middle_3_digits/2 and never calls it; the driver prints it for the task's ten good and seven bad numbers, the bad ones as the domain_error it raises.
:- initialization(forall(member(N, [123, 12345, 1234567, 987654321, 10001, -10001, -123, -100, 100, -12345, 1, 2, -1, -10, 2002, -2002, 0]), catch((middle_3_digits(N, D), atom_chars(A, D), format("~w: ~w~n", [N, A])), error(E, _), format("~w: ~w~n", [N, E])))).
