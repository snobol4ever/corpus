% gigasecond.pl -- the exercism Prolog exercise gigasecond, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/gigasecond.example.pl, then its tests gigasecond_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
add_gigasecond(Date, GigasecondDate) :-
    date_time_stamp(Date, TimeStamp),
    date_time_value(time_zone, Date, TZ),
    GigasecondTimeStamp is TimeStamp + 1000000000,
    stamp_date_time(GigasecondTimeStamp, GigasecondDate, TZ).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(gigasecond).

    test(date_only_specification_of_time, condition(true)) :-
        add_gigasecond(date(2011, 4, 25, 0, 0, 0.0, 0, 'UTC', -), GigasecondDate),
        GigasecondDate == date(2043, 1, 1, 1, 46, 40.0, 0, 'UTC', -).

    test(second_test_for_date_only_specification_of_time, condition(pending)) :-
        add_gigasecond(date(1977, 6, 13, 0, 0, 0, 0, 'UTC', -), GigasecondDate),
        GigasecondDate == date(2009, 2, 19, 1, 46, 40.0, 0, 'UTC', -).

    test(third_test_for_date_only_specification_of_time, condition(pending)) :-
        add_gigasecond(date(1959, 7, 19, 0, 0, 0, 0, 'UTC', -), GigasecondDate),
        GigasecondDate == date(1991, 3, 27, 1, 46, 40.0, 0, 'UTC', -).

    test(full_time_specified, condition(pending)) :-
        add_gigasecond(date(2015, 1, 24, 22, 0, 0, 0, 'UTC', -), GigasecondDate),
        GigasecondDate == date(2046, 10, 2, 23, 46, 40.0, 0, 'UTC', -).

:- end_tests(gigasecond).
