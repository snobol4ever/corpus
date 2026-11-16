% rna_transcription.pl -- the exercism Prolog exercise rna-transcription, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/rna_transcription.example.pl, then its tests rna_transcription_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
rna_transcription(Rna, Dna) :-
    string_chars(Rna, RnaList),
    rna_transcription_list(RnaList, DnaList),
    string_chars(Dna, DnaList).

rna_transcription_list([], []) :- !.
rna_transcription_list([RnaBase | Rna], [DnaBase | Dna]) :-
    (RnaBase = 'C' ->
        DnaBase = 'G';
     RnaBase = 'G' ->
        DnaBase = 'C';
     RnaBase = 'T' ->
        DnaBase = 'A';
     RnaBase = 'A' ->
        DnaBase = 'U'
    ),
    rna_transcription_list(Rna, Dna).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(rna_transcription).

    test(rna_complement_of_cytosine_is_guanine, condition(true)) :-
        rna_transcription("C", Result),
        Result == "G".

    test(rna_complement_of_guanine_is_cytosine, condition(pending)) :-
        rna_transcription("G", Result),
        Result == "C".

    test(rna_complement_of_thymine_is_adenine, condition(pending)) :-
        rna_transcription("T", Result),
        Result == "A".

    test(rna_complement_of_adenine_is_uracil, condition(pending)) :-
        rna_transcription("A", Result),
        Result == "U".

    test(rna_complement, condition(pending)) :-
        rna_transcription("ACGTGGTCTTAA", Result),
        Result == "UGCACCAGAAUU".

    test(dna_correctly_handles_invalid_input, [fail, condition(pending)]) :-
        rna_transcription("U", _).

    test(dna_correctly_handles_completely_invalid_input, [fail, condition(pending)]) :-
        rna_transcription("XXX", _).

    test(dna_correctly_handles_partially_invalid_input, [fail, condition(pending)]) :-
        rna_transcription("ACGTXXXCTTAA", _).

:- end_tests(rna_transcription).
