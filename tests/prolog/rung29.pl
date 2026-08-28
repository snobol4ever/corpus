%------------------------------------------- 1 rung29_number_ops_float_constants
:- initialization(main).
main :-
    X is pi, write(X), nl,
    Y is exp(1.0), write(Y), nl.
%------------------------------------------ 2 rung29_number_ops_float_conversion
:- initialization(main).
main :-
    X is truncate(3.7), write(X), nl,
    Y is ceiling(3.2), write(Y), nl,
    Z is floor(3.9), write(Z), nl,
    W is round(3.5), write(W), nl.
%------------------------------------------------ 3 rung29_number_ops_float_math
:- initialization(main).
main :-
    X is sqrt(4.0), write(X), nl,
    Y is sin(0.0), write(Y), nl,
    Z is cos(0.0), write(Z), nl.
%----------------------------------------------- 4 rung29_number_ops_float_parts
:- initialization(main).
main :-
    X is float_integer_part(3.7), write(X), nl,
    Y is float_fractional_part(3.7), write(Y), nl,
    Z is float(5), write(Z), nl.
%------------------------------------------------------- 5 rung29_number_ops_gcd
:- initialization(main).
main :-
    X is gcd(12, 8), write(X), nl,
    Y is gcd(100, 75), write(Y), nl.
