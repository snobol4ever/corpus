% perfect_numbers.pl -- the exercism Prolog exercise perfect-numbers, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/perfect_numbers.example.pl, then its tests perfect_numbers_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

factors(1, []) :- !.
factors(Number, [1|Factors]) :-
    MaxSmallFactor is floor(sqrt(Number)),
    findall(SmallFactor, (between(2, MaxSmallFactor, SmallFactor), Number mod SmallFactor =:= 0), SmallFactors),
    findall(BigFactor, (member(Factor, SmallFactors), BigFactor is Number // Factor, BigFactor < Number, BigFactor =\= Factor), BigFactors),
    append(SmallFactors, BigFactors, FactorsUnsorted),
    sort(FactorsUnsorted, Factors).

aliquot_sum(Number, AliquotSum) :-    
    factors(Number, Factors),
    sum_list(Factors, AliquotSum).

classify(Number, AliquotSum, abundant) :- AliquotSum #> Number, !.
classify(Number, AliquotSum, deficient) :- AliquotSum #< Number, !.
classify(_, _, perfect) :- !.

classify(Number, Classification) :-
    Number #> 0,
    aliquot_sum(Number, AliquotSum),
    classify(Number, AliquotSum, Classification).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(perfect_numbers).

    test(smallest_perfect_number_is_classified_correctly, condition(true)) :-
        classify(6, Classification),
        Classification == perfect.

    test(medium_perfect_number_is_classified_correctly, condition(pending)) :-
        classify(28, Classification),
        Classification == perfect.

    test(large_perfect_number_is_classified_correctly, condition(pending)) :-
        classify(33550336, Classification),
        Classification == perfect.

    test(smallest_abundant_number_is_classified_correctly, condition(pending)) :-
        classify(12, Classification),
        Classification == abundant.

    test(medium_abundant_number_is_classified_correctly, condition(pending)) :-
        classify(30, Classification),
        Classification == abundant.

    test(large_abundant_number_is_classified_correctly, condition(pending)) :-
        classify(33550335, Classification),
        Classification == abundant.

    test(perfect_square_abundant_number_is_classified_correctly, condition(pending)) :-
        classify(196, Classification),
        Classification == abundant.

    test(smallest_prime_deficient_number_is_classified_correctly, condition(pending)) :-
        classify(2, Classification),
        Classification == deficient.

    test(smallest_non_prime_deficient_number_is_classified_correctly, condition(pending)) :-
        classify(4, Classification),
        Classification == deficient.

    test(medium_deficient_number_is_classified_correctly, condition(pending)) :-
        classify(32, Classification),
        Classification == deficient.

    test(large_deficient_number_is_classified_correctly, condition(pending)) :-
        classify(33550337, Classification),
        Classification == deficient.

    test(edge_case_no_factors_other_than_itself_is_classified_correctly, condition(pending)) :-
        classify(1, Classification),
        Classification == deficient.

    test(zero_is_rejected_as_it_is_not_a_positive_integer, [fail, condition(pending)]) :-
        classify(0, _).

    test(negative_integer_is_rejected_as_it_is_not_a_positive_integer, [fail, condition(pending)]) :-
        classify(-1, _).

:- end_tests(perfect_numbers).
