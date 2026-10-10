main() :-
    christmas_days_falling_on_sunday(2011, 2121, SundayList),
    writeln(SundayList).

christmas_days_falling_on_sunday(StartYear, EndYear, SundayList) :-
    numlist(StartYear, EndYear, YearRangeList),
    include(is_christmas_day_a_sunday, YearRangeList, SundayList).

is_christmas_day_a_sunday(Year) :-
    Date = date(Year, 12, 25),
    day_of_the_week(Date, DayOfTheWeek),
    DayOfTheWeek == 7.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines main/0 (written main()) and never calls it; the driver calls it once at load (Christmas on a Sunday, 2011..2121).
:- initialization(main).
