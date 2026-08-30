% tak — (almost) Takeuchi function, recursive integer arithmetic.
% Bottleneck: deep recursion + is/2 + arithmetic comparison; no list/struct.
% Source: SWI-Prolog/bench (Evan Tick, from Gabriel's Lisp tak). Prints A.
:- initialization(main).
% ⛔⭐ SELF-TIMED ON THE TWO-NUMBER BASIS (Lon 2026-08-30, RULES.md § THE TWO-NUMBER BENCHMARK BASIS).
% Bracket encloses the WORK ONLY -- not startup, not the write. Multiples publish on work; startup/finish
% OVERHEAD is a separate per-engine number the harness derives as (external total - work).
% ⛔ Timestamps go to user_error so stdout stays BYTE-COMPARABLE and tak.expected still verifies.
% ⭐ Both units: work_us is the real measurement (integer ms quantizes these kernels -- a 3 ms kernel is
% three ticks); work_ms is kept because the rival preludes are millisecond sources, so the cross-engine
% floor genuinely is 1 ms. Reporting both keeps a us numerator from being divided by a ms denominator
% silently. Per-engine precision floors are stated in the basis line, never papered over.
main :-
    wall_us(T0), wall_ms(M0),
    tak(18,12,6,A),
    wall_us(T1), wall_ms(M1),
    write(A), nl,
    W is T1 - T0, WM is M1 - M0,
    format(user_error, "BENCH kernel=tak work_us=~w work_ms=~w~n", [W, WM]).
tak(X,Y,Z,A) :- X =< Y, Z = A.
tak(X,Y,Z,A) :-
        X > Y,
        X1 is X - 1, tak(X1,Y,Z,A1),
        Y1 is Y - 1, tak(Y1,Z,X,A2),
        Z1 is Z - 1, tak(Z1,X,Y,A3),
        tak(A1,A2,A3,A).
