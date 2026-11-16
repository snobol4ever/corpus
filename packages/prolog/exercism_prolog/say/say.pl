% say.pl -- the exercism Prolog exercise say, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/say.example.pl, then its tests say_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
say(0, "zero") :- !.
say(1, "one") :- !.
say(2, "two") :- !.
say(3, "three") :- !.
say(4, "four") :- !.
say(5, "five") :- !.
say(6, "six") :- !.
say(7, "seven") :- !.
say(8, "eight") :- !.
say(9, "nine") :- !.
say(10, "ten") :- !.
say(11, "eleven") :- !.
say(12, "twelve") :- !.
say(13, "thirteen") :- !.
say(14, "fourteen") :- !.
say(15, "fifteen") :- !.
say(16, "sixteen") :- !.
say(17, "seventeen") :- !.
say(18, "eighteen") :- !.
say(19, "nineteen") :- !.

say(20, "twenty") :- !.
say(30, "thirty") :- !.
say(40, "forty") :- !.
say(50, "fifty") :- !.
say(60, "sixty") :- !.
say(70, "seventy") :- !.
say(80, "eighty") :- !.
say(90, "ninety") :- !.

say(N, English) :-
    between(10, 99, N),
    Remainder is N mod 10,
    Tens is N - Remainder,
    say(Tens, TensEnglish),
    say(Remainder, RemainderEnglish),
    format(string(English), "~s-~s", [TensEnglish, RemainderEnglish]), !.

say(N, English) :- say(N, 100, 999, "hundred", English), !.
say(N, English) :- say(N, 1000, 999999, "thousand", English), !.
say(N, English) :- say(N, 1000000, 999999999, "million", English), !.
say(N, English) :- say(N, 1000000000, 999999999999, "billion", English).

say(Units, 0, Unit, English) :-
    say(Units, UnitsEnglish),
    format(string(English), "~s ~s", [UnitsEnglish, Unit]), !.
say(Units, Remainder, Unit, English) :-
    say(Units, UnitsEnglish),
    say(Remainder, RemainderEnglish),
    format(string(English), "~s ~s ~s", [UnitsEnglish, Unit, RemainderEnglish]).

say(N, Low, High, Unit, English) :-
    between(Low, High, N),
    divmod(N, Low, Units, Remainder),
    say(Units, Remainder, Unit, English).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(say).

    test(zero, condition(true)) :-
        say(0, English),
        English == "zero".

    test(one, condition(pending)) :-
        say(1, English),
        English == "one".

    test(fourteen, condition(pending)) :-
        say(14, English),
        English == "fourteen".

    test(twenty, condition(pending)) :-
        say(20, English),
        English == "twenty".

    test(twenty_two, condition(pending)) :-
        say(22, English),
        English == "twenty-two".

    test(thirty, condition(pending)) :-
        say(30, English),
        English == "thirty".

    test(ninety_nine, condition(pending)) :-
        say(99, English),
        English == "ninety-nine".

    test(one_hundred, condition(pending)) :-
        say(100, English),
        English == "one hundred".

    test(one_hundred_twenty_three, condition(pending)) :-
        say(123, English),
        English == "one hundred twenty-three".

    test(two_hundred, condition(pending)) :-
        say(200, English),
        English == "two hundred".

    test(nine_hundred_ninety_nine, condition(pending)) :-
        say(999, English),
        English == "nine hundred ninety-nine".

    test(one_thousand, condition(pending)) :-
        say(1000, English),
        English == "one thousand".

    test(one_thousand_two_hundred_thirty_four, condition(pending)) :-
        say(1234, English),
        English == "one thousand two hundred thirty-four".

    test(one_million, condition(pending)) :-
        say(1000000, English),
        English == "one million".

    test(one_million_two_thousand_three_hundred_forty_five, condition(pending)) :-
        say(1002345, English),
        English == "one million two thousand three hundred forty-five".

    test(one_billion, condition(pending)) :-
        say(1000000000, English),
        English == "one billion".

    test(a_big_number, condition(pending)) :-
        say(987654321123, English),
        English == "nine hundred eighty-seven billion six hundred fifty-four million three hundred twenty-one thousand one hundred twenty-three".

    test(numbers_below_zero_are_out_of_range, [fail, condition(pending)]) :-
        say(-1, _).

    test(numbers_above_999_999_999_999_are_out_of_range, [fail, condition(pending)]) :-
        say(1000000000000, _).

:- end_tests(say).
