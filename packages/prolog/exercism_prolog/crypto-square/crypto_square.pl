% crypto_square.pl -- the exercism Prolog exercise crypto-square, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/crypto_square.example.pl, then its tests crypto_square_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

dimensions([], 0, 0, 0) :- !.
dimensions(Chars, Columns, Rows, PadLength) :-
    length(Chars, Length),
    Columns is ceiling(sqrt(Length)),
    Rows is ceiling(Length / Columns),
    PadLength is Rows * Columns - Length.

normalize(Plaintext, Normalized) :-
    string_lower(Plaintext, Lower),
    string_chars(Lower, Chars),
    include([C]>>char_type(C, alnum), Chars, Normalized).

part([], _, []).
part(L, N, [DL|DLTail]) :-
   length(DL, N),
   append(DL, LTail, L),
   part(LTail, N, DLTail).

join(Row, "", Combined) :- string_chars(Combined, Row), !.
join(Row, Acc, Combined) :- 
    string_chars(String, Row),
    format(string(Combined), "~s ~s", [Acc, String]).

encode(Plaintext, Ciphertext) :-
    normalize(Plaintext, Normalized),
    dimensions(Normalized, Columns, Rows, PadLength),
    length(Padding, PadLength),
    maplist(=(' '), Padding),
    append(Normalized, Padding, NormalizedAndPadded),
    part(NormalizedAndPadded, Columns, Chunked),
    transpose(Chunked, Transposed),
    flatten(Transposed, Flattened),
    part(Flattened, Rows, Parts),
    foldl(join, Parts, "", Ciphertext),
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(crypto_square).

    test(empty_plaintext_results_in_an_empty_ciphertext, condition(true)) :-
        encode("", Ciphertext),
        Ciphertext == "".

    test(normalization_results_in_empty_plaintext, condition(pending)) :-
        encode("... --- ...", Ciphertext),
        Ciphertext == "".

    test(lowercase, condition(pending)) :-
        encode("A", Ciphertext),
        Ciphertext == "a".

    test(remove_spaces, condition(pending)) :-
        encode("  b ", Ciphertext),
        Ciphertext == "b".

    test(remove_punctuation, condition(pending)) :-
        encode("@1,%!", Ciphertext),
        Ciphertext == "1".

    test(nine_character_plaintext_results_in_3_chunks_of_3_characters, condition(pending)) :-
        encode("This is fun!", Ciphertext),
        Ciphertext == "tsf hiu isn".

    test(eight_character_plaintext_results_in_3_chunks_the_last_one_with_a_trailing_space, condition(pending)) :-
        encode("Chill out.", Ciphertext),
        Ciphertext == "clu hlt io ".

    test(fifty_four_character_plaintext_results_in_7_chunks_the_last_two_with_trailing_spaces, condition(pending)) :-
        encode("If man was meant to stay on the ground, god would have given us roots.", Ciphertext),
        Ciphertext == "imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghn  sseoau ".

:- end_tests(crypto_square).
