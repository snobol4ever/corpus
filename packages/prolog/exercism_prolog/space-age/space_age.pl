% space_age.pl -- the exercism Prolog exercise space-age, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/space_age.example.pl, then its tests space_age_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
period("Earth", 1).
period("Mercury", 0.2408467).
period("Venus", 0.61519726).
period("Mars", 1.8808158).
period("Jupiter", 11.862615).
period("Saturn", 29.447498).
period("Uranus", 84.016846).
period("Neptune", 164.79132).

convYearSec(Year, Sec) :-
    Year is Sec / 31557600.

space_age(Planet, AgeSec, Years) :-
    period(Planet, Conv),
    convYearSec(AgeYear, AgeSec),
    Years is AgeYear / Conv, !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(space_age).

    float_eq(Real, Expected) :-
        Expected is round(Real * 100).

    test(earth, condition(true)) :-
        space_age("Earth", 1000000000, Age),
        float_eq(Age, 3169).

    test(mercury, condition(pending)) :-
        space_age("Mercury", 2134835688, Age),
        float_eq(Age, 28088).

    test(venus, condition(pending)) :-
        space_age("Venus", 189839836, Age),
        float_eq(Age, 978).

    test(mars, condition(pending)) :-
        space_age("Mars", 2329871239, Age),
        float_eq(Age, 3925).

    test(jupiter, condition(pending)) :-
        space_age("Jupiter", 901876382, Age),
        float_eq(Age, 241).

    test(saturn, condition(pending)) :-
        space_age("Saturn", 3000000000, Age),
        float_eq(Age, 323).
    
    test(uranus, condition(pending)) :-
        space_age("Uranus", 3210123456, Age),
        float_eq(Age, 121).

    test(neptune, condition(pending)) :-
        space_age("Neptune", 8210123456, Age),
        float_eq(Age, 158).

:- end_tests(space_age).
