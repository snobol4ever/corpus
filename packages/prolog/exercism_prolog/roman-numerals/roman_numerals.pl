% roman_numerals.pl -- the exercism Prolog exercise roman-numerals, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/roman_numerals.example.pl, then its tests roman_numerals_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

roman_numeral("M", 1000).
roman_numeral("CM", 900).
roman_numeral("D",  500).
roman_numeral("CD", 400).
roman_numeral("C",  100).
roman_numeral("XC",  90).
roman_numeral("L",   50).
roman_numeral("XL",  40).
roman_numeral("X",   10).
roman_numeral("IX",   9).
roman_numeral("V",    5).
roman_numeral("IV",   4).
roman_numeral("I",    1).

roman(0) --> "".
roman(N) --> { roman_numeral(Roman, Value), N #>= Value }, Roman, { N1 #= N - Value }, roman(N1).

convert(N, Numeral) :-
    phrase(roman(N), Numerals),
    string_chars(Numeral, Numerals),
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(roman_numerals).

test(number_1_is_i, condition(true)) :-
    convert(1, Numeral),
    Numeral == "I".

test(number_2_is_ii, condition(pending)) :-
    convert(2, Numeral),
    Numeral == "II".

test(number_3_is_iii, condition(pending)) :-
    convert(3, Numeral),
    Numeral == "III".

test(number_4_is_iv, condition(pending)) :-
    convert(4, Numeral),
    Numeral == "IV".

test(number_5_is_v, condition(pending)) :-
    convert(5, Numeral),
    Numeral == "V".

test(number_6_is_vi, condition(pending)) :-
    convert(6, Numeral),
    Numeral == "VI".

test(number_9_is_ix, condition(pending)) :-
    convert(9, Numeral),
    Numeral == "IX".

test(number_16_is_xvi, condition(pending)) :-
    convert(16, Numeral),
    Numeral == "XVI".

test(number_27_is_xxvii, condition(pending)) :-
    convert(27, Numeral),
    Numeral == "XXVII".

test(number_48_is_xlviii, condition(pending)) :-
    convert(48, Numeral),
    Numeral == "XLVIII".

test(number_49_is_xlix, condition(pending)) :-
    convert(49, Numeral),
    Numeral == "XLIX".

test(number_59_is_lix, condition(pending)) :-
    convert(59, Numeral),
    Numeral == "LIX".

test(number_66_is_lxvi, condition(pending)) :-
    convert(66, Numeral),
    Numeral == "LXVI".

test(number_93_is_xciii, condition(pending)) :-
    convert(93, Numeral),
    Numeral == "XCIII".

test(number_141_is_cxli, condition(pending)) :-
    convert(141, Numeral),
    Numeral == "CXLI".

test(number_163_is_clxiii, condition(pending)) :-
    convert(163, Numeral),
    Numeral == "CLXIII".

test(number_166_is_clxvi, condition(pending)) :-
    convert(166, Numeral),
    Numeral == "CLXVI".

test(number_402_is_cdii, condition(pending)) :-
    convert(402, Numeral),
    Numeral == "CDII".

test(number_575_is_dlxxv, condition(pending)) :-
    convert(575, Numeral),
    Numeral == "DLXXV".

test(number_666_is_dclxvi, condition(pending)) :-
    convert(666, Numeral),
    Numeral == "DCLXVI".

test(number_911_is_cmxi, condition(pending)) :-
    convert(911, Numeral),
    Numeral == "CMXI".

test(number_1024_is_mxxiv, condition(pending)) :-
    convert(1024, Numeral),
    Numeral == "MXXIV".

test(number_1666_is_mdclxvi, condition(pending)) :-
    convert(1666, Numeral),
    Numeral == "MDCLXVI".

test(number_3000_is_mmm, condition(pending)) :-
    convert(3000, Numeral),
    Numeral == "MMM".

test(number_3001_is_mmmi, condition(pending)) :-
    convert(3001, Numeral),
    Numeral == "MMMI".

test(number_3999_is_mmmcmxcix, condition(pending)) :-
    convert(3999, Numeral),
    Numeral == "MMMCMXCIX".

test(number_3888_is_mmmdccclxxxviii, condition(pending)) :-
    convert(3888, Numeral),
    Numeral == "MMMDCCCLXXXVIII".

:- end_tests(roman_numerals).
