% run_length_encoding.pl -- the exercism Prolog exercise run-length-encoding, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/run_length_encoding.example.pl, then its tests run_length_encoding_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(dcg/basics)).

encode(Plaintext, Ciphertext) :-
    atom_chars(Plaintext, Plainchars),
    encode_runs(Plainchars, Runs),
    maplist(encode_run, Runs, EncodedRuns),
    flatten(EncodedRuns, Cipherchars),
    atomics_to_string(Cipherchars, Ciphertext).

encode_runs([], []).
encode_runs([X], [X-1]).
encode_runs([X,X|Xs], [X-N|Ys]) :- encode_runs([X|Xs], [X-N1|Ys]), N is N1+1, !.
encode_runs([X,Y|Xs], [X-1|Ys]) :- X \= Y, encode_runs([Y|Xs], Ys), !.

encode_run(X-1, [X]) :- !.
encode_run(X-N, [N,X]) :- !.

decode(Ciphertext, Plaintext) :-
    atom_chars(Ciphertext, Cipherchars),
    decode_runs(Cipherchars, Runs),
    maplist(decode_run, Runs, DecodedRuns),
    flatten(DecodedRuns, Plainchars),
    atomics_to_string(Plainchars, Plaintext).

decode_runs([], []).
decode_runs([X|Xs], [Y-Number|Runs]) :-
    char_type(X, 'digit'),
    phrase(integer(Number), [X|Xs], [Y|Ys]),
    decode_runs(Ys, Runs),
    !.
decode_runs([X|Xs], [X-1|Runs]) :- decode_runs(Xs, Runs), !.

decode_run(X-1, [X]) :- !.
decode_run(X-N, [X|Xs]) :- N1 is N - 1, decode_run(X-N1, Xs), !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(run_length_encoding).

    test(encode_empty_string, condition(true)) :-
        encode("", Ciphertext),
        Ciphertext == "".

    test(encode_single_characters_only_are_encoded_without_count, condition(pending)) :-
        encode("XYZ", Ciphertext),
        Ciphertext == "XYZ".

    test(encode_string_with_no_single_characters, condition(pending)) :-
        encode("AABBBCCCC", Ciphertext),
        Ciphertext == "2A3B4C".

    test(encode_single_characters_mixed_with_repeated_characters, condition(pending)) :-
        encode("WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB", Ciphertext),
        Ciphertext == "12WB12W3B24WB".

    test(encode_multiple_whitespace_mixed_in_string, condition(pending)) :-
        encode("  hsqq qww  ", Ciphertext),
        Ciphertext == "2 hs2q q2w2 ".

    test(encode_lowercase_characters, condition(pending)) :-
        encode("aabbbcccc", Ciphertext),
        Ciphertext == "2a3b4c".

    test(decode_empty_string, condition(pending)) :-
        decode("", Plaintext),
        Plaintext == "".

    test(decode_single_characters_only, condition(pending)) :-
        decode("XYZ", Plaintext),
        Plaintext == "XYZ".

    test(decode_string_with_no_single_characters, condition(pending)) :-
        decode("2A3B4C", Plaintext),
        Plaintext == "AABBBCCCC".

    test(decode_single_characters_with_repeated_characters, condition(pending)) :-
        decode("12WB12W3B24WB", Plaintext),
        Plaintext == "WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB".

    test(decode_multiple_whitespace_mixed_in_string, condition(pending)) :-
        decode("2 hs2q q2w2 ", Plaintext),
        Plaintext == "  hsqq qww  ".

    test(decode_lowercase_string, condition(pending)) :-
        decode("2a3b4c", Plaintext),
        Plaintext == "aabbbcccc".

    test(encode_followed_by_decode_gives_original_string, condition(pending)) :-
        encode("zzz ZZ  zZ", Ciphertext),
        decode(Ciphertext, Plaintext),
        Plaintext == "zzz ZZ  zZ".

:- end_tests(run_length_encoding).
