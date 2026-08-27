%------------------------------------------------------------ 1 01_int_div_trunc
% ISO §8.4 — integer division truncates toward zero
% 7 // 2 = 3,  -7 // 2 = -3,  7 // -2 = -3,  -7 // -2 = 3
main :-
    A is 7 // 2,   write(A), nl,
    B is -7 // 2,  write(B), nl,
    C is 7 // -2,  write(C), nl,
    D is -7 // -2, write(D), nl.
%------------------------------------------------------------------ 2 02_mod_rem
% ISO §8.4 mod (sign of divisor) vs rem (sign of dividend)
main :-
    A is 7 mod 3,   write(A), nl,
    B is -7 mod 3,  write(B), nl,
    C is 7 mod -3,  write(C), nl,
    D is -7 mod -3, write(D), nl,
    E is 7 rem 3,   write(E), nl,
    F is -7 rem 3,  write(F), nl,
    G is 7 rem -3,  write(G), nl,
    H is -7 rem -3, write(H), nl.
%-------------------------------------------------------------- 3 03_float_funcs
% ISO §8.7 — truncate/round/ceiling/floor
main :-
    A is truncate(3.7),  write(A), nl,
    B is truncate(-3.7), write(B), nl,
    C is round(3.5),     write(C), nl,
    D is round(4.5),     write(D), nl,
    E is ceiling(3.2),   write(E), nl,
    F is floor(3.7),     write(F), nl,
    G is floor(-3.2),    write(G), nl.
%-------------------------------------------------------------------- 4 04_power
% ** and ^ for exponentiation
main :-
    A is 2 ** 10, write(A), nl,
    B is 2 ^ 10,  write(B), nl,
    C is 3 ** 0,  write(C), nl,
    D is 2 ** -1, write(D), nl.
%--------------------------------------------------------- 5 05_abs_sign_max_min
% abs/1, sign/1, max/2, min/2
main :-
    A is abs(-7),      write(A), nl,
    B is abs(7),       write(B), nl,
    C is sign(-5),     write(C), nl,
    D is sign(0),      write(D), nl,
    E is sign(3),      write(E), nl,
    F is max(3, 7),    write(F), nl,
    G is min(3, 7),    write(G), nl.
