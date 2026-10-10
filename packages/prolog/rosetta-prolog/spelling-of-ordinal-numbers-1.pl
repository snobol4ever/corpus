test_ordinal(Number):-
    number_name(Number, ordinal, Name),
    writef('%w: %w\n', [Number, Name]).

main:-
    test_ordinal(1),
    test_ordinal(2),
    test_ordinal(3),
    test_ordinal(4),
    test_ordinal(5),
    test_ordinal(11),
    test_ordinal(15),
    test_ordinal(21),
    test_ordinal(42),
    test_ordinal(65),
    test_ordinal(98),
    test_ordinal(100),
    test_ordinal(101),
    test_ordinal(272),
    test_ordinal(300),
    test_ordinal(750),
    test_ordinal(23456),
    test_ordinal(7891233),
    test_ordinal(8007006005004003).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block's main/0 is the entry and calls number_name/3 of spelling-of-ordinal-numbers-2 (module number_name), so the driver takes that block over (CEO-1613; its module/2 directive errs inside an include and its clauses join user, as long-primes-1 composes) and calls main/0, the task's nineteen ordinals.
:- include('spelling-of-ordinal-numbers-2.pl').
:- initialization(main).
