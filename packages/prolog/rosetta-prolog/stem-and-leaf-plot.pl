:- initialization(main, main).
:- use_module(library(dcg/basics), [blanks/2, eol/2, integer/3]).
:- use_module(library(dcg/high_order), [sequence/4, sequence/5]).

%!  numbers_to_stem_leaves(+Numbers, -StemLeaves) is det.
%   Converts a list of Numbers to a list of Stem-Leaves pairs.
numbers_to_stem_leaves(Numbers, StemLeaves) :-
    findall(Stem - Leaves, (
        group_by(Stem, Leaf, (
            member(Number, Numbers),
            divmod(Number, 10, Stem, Leaf)
        ), Leaves0),
        msort(Leaves0, Leaves)
    ), StemLeaves).

stem_leaf_plot(StemLeaves) --> sequence(stem_leaves, StemLeaves).

stem_leaves(Stem - Leaves) --> rpad_integer(4, Stem), " | ", sequence(integer, " ", Leaves), "\n".

rpad_integer(Pad, N) -->
    (   { Pad0 is Pad - 1, N < 10 ^ Pad0, \+ ( Pad = 1, N = 0 ) }
    ->  " ", rpad_integer(Pad0, N)
    ;   integer(N)
    ).

%!  display_stem_leaf_plot(Numbers) is det.
%   Prints the stem-and-leaf plot of a list of Numbers.
display_stem_leaf_plot(Numbers) :-
    numbers_to_stem_leaves(Numbers, StemLeaves),
    once(phrase(stem_leaf_plot(StemLeaves), Codes)),
    format("~s", [Codes]).

int(N) --> integer(N), blanks.

main([Filename]) :-
    phrase_from_file((blanks, sequence(int, Numbers)), Filename),
    display_stem_leaf_plot(Numbers).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): main/1 under initialization(main, main) reads the numbers from a file named on its command line; the driver gives display_stem_leaf_plot/1 the task's 121 numbers and halts before main runs.
:- initialization((display_stem_leaf_plot([12, 127, 28, 42, 39, 113, 42, 18, 44, 118, 44, 37, 113, 124, 37, 48, 127, 36, 29, 31, 125, 139, 131, 115, 105, 132, 104, 123, 35, 113, 122, 42, 117, 119, 58, 109, 23, 105, 63, 27, 44, 105, 99, 41, 128, 121, 116, 125, 32, 61, 37, 127, 29, 113, 121, 58, 114, 126, 53, 114, 96, 25, 109, 7, 31, 141, 46, 13, 27, 43, 117, 116, 27, 7, 68, 40, 31, 115, 124, 42, 128, 52, 71, 118, 117, 38, 27, 106, 33, 117, 116, 111, 40, 119, 47, 105, 57, 122, 109, 124, 115, 43, 120, 43, 27, 27, 18, 28, 48, 125, 107, 114, 34, 133, 45, 120, 30, 127, 31, 116, 146]), halt)).
