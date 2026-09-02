% fib — N-th Fibonacci by naive double recursion (van Roy / SWI bench, tabling stripped).
% Bottleneck: exponential double recursion + flat integer arithmetic.
% Source: SWI-Prolog/bench (fib). Prints fib(20).
:- initialization(main).
% ⛔⭐ SELF-TIMED ON THE TWO-NUMBER BASIS (Lon 2026-08-30, RULES.md § THE TWO-NUMBER BENCHMARK BASIS).
% The bracket encloses the WORK ONLY -- not startup, not the write. Published multiples are work-on-work;
% startup/finish OVERHEAD is a separate per-engine number the harness derives as (external total - work).
% ⛔ TIMESTAMPS GO TO user_error SO stdout STAYS BYTE-COMPARABLE and fib.expected still verifies unchanged.
% ⭐ BOTH UNITS ON PURPOSE, and this is not redundancy: work_us is the real measurement (ceo measured
% CLOCK_MONOTONIC at ~20 ns back-to-back, so integer MILLISECONDS are the binding limit, not the clock --
% a ~3 ms kernel is three ticks, which is a rounding rather than a measurement). work_ms is kept because
% the rival preludes are millisecond sources (swipl statistics/2 walltime, gprolog real_time), so the
% cross-engine arm's floor genuinely is 1 ms. Reporting both keeps the comparison honest instead of
% publishing a us-precision numerator over a ms-quantized denominator without saying so.
bench__main :-
    wall_us(T0), wall_ms(M0),
    fib(20, F),
    wall_us(T1), wall_ms(M1),
    write(F), nl,
    W is T1 - T0, WM is M1 - M0,
    format(user_error, "BENCH kernel=fib work_us=~w work_ms=~w~n", [W, WM]).
fib(0, 1) :- !.
fib(1, 1) :- !.
fib(N, F) :- N > 1, N1 is N-1, N2 is N-2, fib(N1, F1), fib(N2, F2), F is F1 + F2.
main :- l__(64).
l__(N__) :- between(1, N__, _), bench__main, fail.
l__(_).
