% book_store.pl -- the exercism Prolog exercise book-store, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/book_store.example.pl, then its tests book_store_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

discounted_price(1, 800).
discounted_price(2, 1520).
discounted_price(3, 2160).
discounted_price(4, 2560).
discounted_price(5, 3000).

tally([], []) :- !.
tally(Basket, Tally) :- aggregate(set(Book-Count), aggregate(count, member(Book, Basket), Count), Tally).

decrement(Tally, [], Tally) :- !.
decrement(Tally, [Book|Books], UpdatedTally) :-
    select(Book-Count, Tally, TallyWithoutBook),
    NewCount is Count - 1,
    (NewCount =:= 0 ->
        NewTally = TallyWithoutBook; 
        NewTally = [Book-NewCount|TallyWithoutBook]),
    decrement(NewTally, Books, UpdatedTally).

groups([], []).
groups(Tally, [Group|Groups]) :-
    pairs_keys(Tally, Books),
    length(Books, Group),
    decrement(Tally, Books, UpdatedTally),
    groups(UpdatedTally, Groups).

price(Groups, Price) :-
    include(=(5), Groups, Fives), length(Fives, NumFives),
    include(=(3), Groups, Threes), length(Threes, NumThrees),
    maplist(discounted_price, Groups, DiscountedPrices),
    sum_list(DiscountedPrices, DiscountedPrice),
    Price is DiscountedPrice - min(NumFives, NumThrees) * 40.

total(Basket, Price) :-
    tally(Basket, Tally),
    groups(Tally, Groups),
    price(Groups, Price),
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(book_store).

    test(only_a_single_book, condition(true)) :-
        Basket = [1],
        total(Basket, Price),
        Price == 800.

    test(two_of_the_same_book, condition(pending)) :-
        Basket = [2, 2],
        total(Basket, Price),
        Price == 1600.

    test(empty_basket, condition(pending)) :-
        Basket = [],
        total(Basket, Price),
        Price == 0.

    test(two_different_books, condition(pending)) :-
        Basket = [1, 2],
        total(Basket, Price),
        Price == 1520.

    test(three_different_books, condition(pending)) :-
        Basket = [1, 2, 3],
        total(Basket, Price),
        Price == 2160.

    test(four_different_books, condition(pending)) :-
        Basket = [1, 2, 3, 4],
        total(Basket, Price),
        Price == 2560.

    test(five_different_books, condition(pending)) :-
        Basket = [1, 2, 3, 4, 5],
        total(Basket, Price),
        Price == 3000.

    test(two_groups_of_four_is_cheaper_than_group_of_five_plus_group_of_three, condition(pending)) :-
        Basket = [1, 1, 2, 2, 3, 3, 4, 5],
        total(Basket, Price),
        Price == 5120.

    test(two_groups_of_four_is_cheaper_than_groups_of_five_and_three, condition(pending)) :-
        Basket = [1, 1, 2, 3, 4, 4, 5, 5],
        total(Basket, Price),
        Price == 5120.

    test(group_of_four_plus_group_of_two_is_cheaper_than_two_groups_of_three, condition(pending)) :-
        Basket = [1, 1, 2, 2, 3, 4],
        total(Basket, Price),
        Price == 4080.

    test(two_each_of_first_four_books_and_one_copy_each_of_rest, condition(pending)) :-
        Basket = [1, 1, 2, 2, 3, 3, 4, 4, 5],
        total(Basket, Price),
        Price == 5560.

    test(two_copies_of_each_book, condition(pending)) :-
        Basket = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5],
        total(Basket, Price),
        Price == 6000.

    test(three_copies_of_first_book_and_two_each_of_remaining, condition(pending)) :-
        Basket = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 1],
        total(Basket, Price),
        Price == 6800.

    test(three_each_of_first_two_books_and_two_each_of_remaining_books, condition(pending)) :-
        Basket = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 1, 2],
        total(Basket, Price),
        Price == 7520.

    test(four_groups_of_four_are_cheaper_than_two_groups_each_of_five_and_three, condition(pending)) :-
        Basket = [1, 1, 2, 2, 3, 3, 4, 5, 1, 1, 2, 2, 3, 3, 4, 5],
        total(Basket, Price),
        Price == 10240.

    test(check_that_groups_of_four_are_created_properly_even_when_there_are_more_groups_of_three_than_groups_of_five, condition(pending)) :-
        Basket = [1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 4, 4, 5, 5],
        total(Basket, Price),
        Price == 14560.

    test(one_group_of_one_and_four_is_cheaper_than_one_group_of_two_and_three, condition(pending)) :-
        Basket = [1, 1, 2, 3, 4],
        total(Basket, Price),
        Price == 3360.

    test(one_group_of_one_and_two_plus_three_groups_of_four_is_cheaper_than_one_group_of_each_size, condition(pending)) :-
        Basket = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5],
        total(Basket, Price),
        Price == 10000.

:- end_tests(book_store).
