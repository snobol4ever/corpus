task(Length) :-
    N is 5^4^3^2,

    number_codes(N, Codes),
    append(`62060698786608744707`, _,  Codes),
    append(_, `92256259918212890625`, Codes),

    length(Codes, Length).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines task/1 (5^4^3^2, its first and last 20 digits checked, its digit count returned) and never calls it; the driver prints the digit count.
:- initialization((task(L), format("~w~n", [L]))).
