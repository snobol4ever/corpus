% diamond.pl -- the exercism Prolog exercise diamond, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/diamond.example.pl, then its tests diamond_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

letters(Letters) :- string_chars("ABCDEFGHIJKLMNOPQRSTUVWXYZ", Letters).

letter_index(Letter, Index) :-
    letters(Letters),
    nth1(Index, Letters, Letter), !.

diamond(Letter, Rows) :-
    top_half(Letter, TopHalf),
    reverse(TopHalf, [_|BottomHalf]),
    append(TopHalf, BottomHalf, Rows).

top_half(Letter, TopHalf) :-
    letters(Letters),
    letter_index(Letter, NumberOfLetters),
    append(TopHalfLetters, _, Letters),
    length(TopHalfLetters, NumberOfLetters),
    maplist(top_row(NumberOfLetters), TopHalfLetters, TopHalf), !.

top_row(NumberOfLetters, Letter, Row) :-
    letter_index(Letter, LetterIdx),
    Width #= NumberOfLetters * 2 - 1,
    FirstLetterIdx #= NumberOfLetters - LetterIdx + 1,
    SecondLetterIdx #= NumberOfLetters + LetterIdx - 1,
    findall(C, (between(1, Width, I), (I == FirstLetterIdx -> C = Letter; I == SecondLetterIdx -> C = Letter; C = ' ')), Chars),
    string_chars(Row, Chars).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(diamond).

    test(degenerate_case_with_a_single_a_row, condition(true)) :-
        diamond('A', Rows),
        Rows == ["A"].

    test(degenerate_case_with_no_row_containing_3_distinct_groups_of_spaces, condition(pending)) :-
        diamond('B', Rows),
        Rows == [
            " A ",
            "B B",
            " A "
        ].

    test(smallest_non_degenerate_case_with_odd_diamond_side_length, condition(pending)) :-
        diamond('C', Rows),
        Rows == [
            "  A  ", 
            " B B ", 
            "C   C", 
            " B B ", 
            "  A  "
        ].

    test(smallest_non_degenerate_case_with_even_diamond_side_length, condition(pending)) :-
        diamond('D', Rows),
        Rows == [
            "   A   ",
            "  B B  ",
            " C   C ",
            "D     D",
            " C   C ",
            "  B B  ",
            "   A   "
        ].

    test(largest_possible_diamond, condition(pending)) :-
        diamond('Z', Rows),
        Rows == [
            "                         A                         ",
            "                        B B                        ",
            "                       C   C                       ",
            "                      D     D                      ",
            "                     E       E                     ",
            "                    F         F                    ",
            "                   G           G                   ",
            "                  H             H                  ",
            "                 I               I                 ",
            "                J                 J                ",
            "               K                   K               ",
            "              L                     L              ",
            "             M                       M             ",
            "            N                         N            ",
            "           O                           O           ",
            "          P                             P          ",
            "         Q                               Q         ",
            "        R                                 R        ",
            "       S                                   S       ",
            "      T                                     T      ",
            "     U                                       U     ",
            "    V                                         V    ",
            "   W                                           W   ",
            "  X                                             X  ",
            " Y                                               Y ",
            "Z                                                 Z",
            " Y                                               Y ",
            "  X                                             X  ",
            "   W                                           W   ",
            "    V                                         V    ",
            "     U                                       U     ",
            "      T                                     T      ",
            "       S                                   S       ",
            "        R                                 R        ",
            "         Q                               Q         ",
            "          P                             P          ",
            "           O                           O           ",
            "            N                         N            ",
            "             M                       M             ",
            "              L                     L              ",
            "               K                   K               ",
            "                J                 J                ",
            "                 I               I                 ",
            "                  H             H                  ",
            "                   G           G                   ",
            "                    F         F                    ",
            "                     E       E                     ",
            "                      D     D                      ",
            "                       C   C                       ",
            "                        B B                        ",
            "                         A                         "
        ].

:- end_tests(diamond).
