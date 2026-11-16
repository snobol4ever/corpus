% cheryls_birthday.pl -- the exercism Prolog exercise cheryls-birthday, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/cheryls_birthday.example.pl, then its tests cheryls_birthday_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
possible_date(may, 15).
possible_date(may, 16). 
possible_date(may, 19).
possible_date(june, 17).
possible_date(june, 18).
possible_date(july, 14).
possible_date(july, 16).
possible_date(august, 14).
possible_date(august, 15).
possible_date(august, 17).

day_with_unique_month(Day) :-
    possible_date(Month, Day),
    findall(Day1, possible_date(Month, Day1), Days),
    length(Days, 1).

month_with_unique_day(Month):-
    possible_date(Month, Day),
    findall(Month1, possible_date(Month1, Day), Months),
    length(Months, 1).

statement_1(Month, Day):-
    possible_date(Month, Day),
    not(day_with_unique_month(Day)),
    not(month_with_unique_day(Month)).

statement_2(Month, Day):-
    possible_date(Month, Day),
    findall(Month1, statement_1(Month1, Day), [Month]).

statement_3(Month, Day):-
    possible_date(Month, Day),
    findall(Day1, statement_2(Month, Day1), [Day]).

cheryls_birthday(Month, Day) :-
    statement_1(Month, Day),
    statement_2(Month, Day),
    statement_3(Month, Day),
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(cheryls_birthday).

    test(cheryls_birthday, condition(true)) :-
        cheryls_birthday(Month, Day),
        Month == july,
        Day == 16.

:- end_tests(cheryls_birthday).
