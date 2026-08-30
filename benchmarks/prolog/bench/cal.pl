% cal — day-of-week computation (GNU examples, Andy Lowry / Ludemann / Tarau).
% Bench dialect: the empty_loop/full_loop timing harness is replaced by a
% deterministic result signature (the weekday for April 9, 1993). The point of
% interest is cal_key/3: 36 fact clauses (12 numeric months + 12 abbrevs + 12
% full names) — a clause-choice wider than the historical 32-clause cap.
:- initialization(main).
% ⛔⭐ SELF-TIMED ON THE TWO-NUMBER BASIS (Lon 2026-08-30, RULES.md § THE TWO-NUMBER BENCHMARK BASIS).
% Bracket encloses the WORK ONLY -- not startup, not the write. Multiples publish on work; startup/finish
% OVERHEAD is a separate per-engine number the harness derives as (external total - work).
% ⛔ Timestamps go to user_error so stdout stays BYTE-COMPARABLE and cal.expected still verifies.
% ⭐ Both units: work_us is the real measurement (integer ms quantizes these kernels -- a 3 ms kernel is
% three ticks); work_ms is kept because the rival preludes are millisecond sources, so the cross-engine
% floor genuinely is 1 ms. Reporting both keeps a us numerator from being divided by a ms denominator
% silently. Per-engine precision floors are stated in the basis line, never papered over.
main :-
    wall_us(T0), wall_ms(M0),
    day_of_week(1993, 4, 9, Day),
    wall_us(T1), wall_ms(M1),
    write(Day), nl,
    W is T1 - T0, WM is M1 - M0,
    format(user_error, "BENCH kernel=cal work_us=~w work_ms=~w~n", [W, WM]).
day_of_week(Year,Month,Day, DayOfWeek):-
	cal_key(Month, Key, LeapC),
	compute_it(Year,Day,Key,LeapC,DayOfWeek).

compute_it(Year,Day,Key,LeapC,DayOfWeek):-
	Century is Year // 100,
	YearInCentury is Year - Century * 100,
	DOW0 is (Century * 5 + Century // 4 +
	         YearInCentury + YearInCentury // 4 +
	         Day + Key) mod 7,
	leap_year(Year,DOW0,LeapC,DayOfWeek).

leap_year(Year,DOW0,_,DayOfWeek):- 0 =\= Year mod 4, !, dow(DOW0,DayOfWeek).
leap_year(Year,DOW0,LeapC,DayOfWeek):- 0 =\= Year mod 100, !, DOW is DOW0-LeapC, dow(DOW,DayOfWeek).
leap_year(Year,DOW0,_,DayOfWeek):- 0 =\= Year mod 400, !, dow(DOW0,DayOfWeek).
leap_year(_,DOW0,LeapC,DayOfWeek):- DOW is DOW0-LeapC, dow(DOW,DayOfWeek).

dow(0, sun). dow(1, mon). dow(2, tue). dow(3, wed). dow(4, thu). dow(5, fri). dow(6, sat).

cal_key( 1, 6, 1). cal_key( 2, 2, 1). cal_key( 3, 2, 0). cal_key( 4, 5, 0).
cal_key( 5, 0, 0). cal_key( 6, 3, 0). cal_key( 7, 5, 0). cal_key( 8, 1, 0).
cal_key( 9, 4, 0). cal_key(10, 6, 0). cal_key(11, 2, 0). cal_key(12, 4, 0).
cal_key(jan, 6, 1). cal_key(feb, 2, 1). cal_key(mar, 2, 0). cal_key(apr, 5, 0).
cal_key(may, 0, 0). cal_key(jun, 3, 0). cal_key(jul, 5, 0). cal_key(aug, 1, 0).
cal_key(sep, 4, 0). cal_key(oct, 6, 0). cal_key(nov, 2, 0). cal_key(dec, 4, 0).
cal_key('January', 6, 1). cal_key('February', 2, 1). cal_key('March', 2, 0). cal_key('April', 5, 0).
cal_key('May', 0, 0). cal_key('June', 3, 0). cal_key('July', 5, 0). cal_key('August', 1, 0).
cal_key('September',4, 0). cal_key('October', 6, 0). cal_key('November',2, 0). cal_key('December', 4, 0).
