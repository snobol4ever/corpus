% largest_series_product.pl -- the exercism Prolog exercise largest-series-product, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/largest_series_product.example.pl, then its tests largest_series_product_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

digits([], []).
digits([C|Chars], [D|Digits]) :-
    char_type(C, 'digit'),
    number_chars(D, [C]),
    digits(Chars, Digits).

series(Digits, Span, []) :-
    length(Digits, Length),
    Length #< Span,
    !.

series([D|Digits], Span, [Serie|Series]) :-
    append(Serie, _, [D|Digits]),
    length(Serie, Span),
    series(Digits, Span, Series),
    !.

product([], 1) :- !.
product([D|Digits], Product) :-
    product(Digits, DigitsProduct),
    Product #= D * DigitsProduct.

largest_product(Input, Span, Product) :-
    Span #> 0,
    string_chars(Input, Chars),
    digits(Chars, Digits),
    series(Digits, Span, Series),
    maplist(product, Series, Products),
    max_member(Product, Products).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(largest_series_product).

    test(finds_the_largest_product_if_span_equals_length, condition(true)) :-
        largest_product("29", 2, Product), Product == 18.

    test(can_find_the_largest_product_of_2_with_numbers_in_order, condition(pending)) :-
        largest_product("0123456789", 2, Product), Product == 72.

    test(can_find_the_largest_product_of_2, condition(pending)) :-
        largest_product("576802143", 2, Product), Product == 48.

    test(can_find_the_largest_product_of_3_with_numbers_in_order, condition(pending)) :-
        largest_product("0123456789", 3, Product), Product == 504.

    test(can_find_the_largest_product_of_3, condition(pending)) :-
        largest_product("1027839564", 3, Product), Product == 270.

    test(can_find_the_largest_product_of_5_with_numbers_in_order, condition(pending)) :-
        largest_product("0123456789", 5, Product), Product == 15120.

    test(can_get_the_largest_product_of_a_big_number, condition(pending)) :-    
        largest_product("73167176531330624919225119674426574742355349194934", 6, Product), Product == 23520.

    test(reports_zero_if_the_only_digits_are_zero, condition(pending)) :-
        largest_product("0000", 2, Product), Product == 0.

    test(reports_zero_if_all_spans_include_zero, condition(pending)) :-
        largest_product("99099", 3, Product), Product == 0.

    test(rejects_span_longer_than_string_length, [fail, condition(pending)]) :-
        largest_product("123", 4, _).

    test(rejects_empty_string_and_nonzero_span, [fail, condition(pending)]) :-
        largest_product("", 1, _).

    test(rejects_invalid_character_in_digits, [fail, condition(pending)]) :-
        largest_product("1234a5", 2, _).

    test(rejects_negative_span, [fail, condition(pending)]) :-
        largest_product("12345", -1, _).

:- end_tests(largest_series_product).
