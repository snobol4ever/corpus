% nucleotide_count.pl -- the exercism Prolog exercise nucleotide-count, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/nucleotide_count.example.pl, then its tests nucleotide_count_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
nucleotide_count(Strand, Counts) :-
    atom_chars(Strand, Nucleotides),
    count_nucleotides(Nucleotides, [('A', 0), ('C', 0), ('G', 0), ('T', 0)], Counts).

count_nucleotides([], Counts, Counts).
count_nucleotides([Nucleotide | Rest], Running, Counts) :-
    count_single_nucleotide(Nucleotide, Running, NewCounts),
    count_nucleotides(Rest, NewCounts, Counts).

count_single_nucleotide(Nucleotide, [(OtherNucleotide, OtherCount) | Rest], NewCounts) :-
    count_single_nucleotide(Nucleotide, Rest, RestCounts),
    append([(OtherNucleotide, OtherCount)], RestCounts, NewCounts).
count_single_nucleotide(Nucleotide, [(Nucleotide, Count) | Rest], NewCounts) :-
    NewCount is Count + 1,
    append([(Nucleotide, NewCount)], Rest, NewCounts).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(nucleotide_counting).

    test(empty_dna_strand_has_no_adenosine, condition(true)) :-
        nucleotide_count('', Counts),
        member(('A', 0), Counts), !.

    test(repetitive_cytidine_gets_counted, condition(pending)) :-
        nucleotide_count('CCCCC', Counts),
        member(('C', 5), Counts), !.

    test(counts_only_thymidine, condition(pending)) :-
        nucleotide_count('GGGGGTAACCCGG', Counts),
        member(('T', 1), Counts), !.

    test(counts_only_thymidine, condition(pending)) :-
        nucleotide_count('AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC', Counts),
        member(('A', 20), Counts),
        member(('C', 12), Counts),
        member(('G', 17), Counts),
        member(('T', 21), Counts), !.

    test(fails_when_not_dns, [fail, condition(pending)]) :-
        nucleotide_count('JOHNNYAPPLESEED', _), !.

:- end_tests(nucleotide_counting).
