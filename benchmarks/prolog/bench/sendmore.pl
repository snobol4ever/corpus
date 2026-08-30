% sendmore — SEND+MORE=MONEY cryptoaddition (van Roy suite). Arithmetic constraint search.
% Source: SWI-Prolog/bench (sendmore). Prints the digit assignment.
:- initialization(main).
% ⛔⭐ SELF-TIMED ON THE TWO-NUMBER BASIS (Lon 2026-08-30, RULES.md § THE TWO-NUMBER BENCHMARK BASIS).
% Bracket encloses the WORK ONLY. Timestamps to user_error so stdout stays byte-comparable and
% sendmore.expected still verifies. Both units: work_us is the real measurement, work_ms is kept because
% the rival preludes are millisecond sources so the cross-engine floor genuinely is 1 ms.
% ⛔ RESULT VARIABLE IS `Res`, NOT `R`: this kernel's own answer list is [S,E,N,D,M,O,R,Y] and R is one of
% its solution variables -- reusing it would silently bind the answer to the wrong thing while still
% printing something plausible. Naming it Res costs nothing and removes the whole class.
main :-
    wall_us(T0), wall_ms(M0),
    ( solve(S,E,N,D,M,O,R,Y) -> Res = [S,E,N,D,M,O,R,Y] ; Res = none ),
    wall_us(T1), wall_ms(M1),
    write(Res), nl,
    W is T1 - T0, WM is M1 - M0,
    format(user_error, "BENCH kernel=sendmore work_us=~w work_ms=~w~n", [W, WM]).
solve(S,E,N,D,M,O,R,Y):-
        digit(D), digit(E), D=\=E,
        sumdigit(0, D, E, Y, C1),
        digit(N), N=\=Y, N=\=E, N=\=D,
        digit(R), R=\=N, R=\=Y, R=\=E, R=\=D,
        sumdigit(C1,N, R, E, C2),
        digit(O), O=\=R, O=\=N, O=\=Y, O=\=E, O=\=D,
        sumdigit(C2,E, O, N, C3),
        leftdigit(S), S=\=O, S=\=R, S=\=N, S=\=Y, S=\=E, S=\=D,
        leftdigit(M), M=\=S, M=\=O, M=\=R, M=\=N, M=\=Y, M=\=E, M=\=D,
        sumdigit(C3,S, M, O, M).
sumdigit(C, A, B, S, D) :- X is (C+A+B), (X<10 -> S=X, D=0 ; S is X-10, D=1).
digit(0).
digit(1).
digit(2).
digit(3).
digit(4).
digit(5).
digit(6).
digit(7).
digit(8).
digit(9).
leftdigit(1).
leftdigit(2).
leftdigit(3).
leftdigit(4).
leftdigit(5).
leftdigit(6).
leftdigit(7).
leftdigit(8).
leftdigit(9).
