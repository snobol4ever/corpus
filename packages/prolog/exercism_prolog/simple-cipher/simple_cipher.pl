% simple_cipher.pl -- the exercism Prolog exercise simple-cipher, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/simple_cipher.example.pl, then its tests simple_cipher_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
key_shift(Key, Index, Shift) :-
    string_length(Key, Length),
    KeyIndex is (Index - 1) mod Length + 1,
    string_code(KeyIndex, Key, KeyCode),
    Shift is KeyCode - 97.

char_shift(Goal, Key, Index-Code, Shifted) :-
    key_shift(Key, Index, KeyShift),
    CodeFromA is Code - 97,
    call(Goal, CodeFromA, KeyShift, Shift),
    Shifted is 97 + (Shift mod 26).

shift(Goal, Input, Key, Shifted) :-
    string_length(Input, Length),
    string_codes(Input, Codes),
    numlist(1, Length, Indices),    
    pairs_keys_values(IndexesWithCode, Indices, Codes),
    maplist(char_shift(Goal, Key), IndexesWithCode, ShiftedCodes),
    string_codes(Shifted, ShiftedCodes).

encode(Plaintext, Key, Ciphertext) :- shift([C,S,R]>>(R is C + S), Plaintext, Key, Ciphertext), !.
decode(Ciphertext, Key, Plaintext) :- shift([C,S,R]>>(R is C - S), Ciphertext, Key, Plaintext), !.

generate_key(Key) :-
    length(Codes, 100),
    maplist(random_between(97, 122), Codes),
    string_codes(Key, Codes),
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(simple_cipher).

    test(can_encode, condition(true)) :-
        Key = "abcdefghij",
        encode("aaaaaaaaaa", Key, Key).

    test(can_double_shift_encode, condition(pending)) :-
        encode("iamapandabear", "iamapandabear", Ciphertext),
        Ciphertext == "qayaeaagaciai".

    test(can_wrap_on_encode, condition(pending)) :-
        encode("zzzzzzzzzz", "abcdefghij", Ciphertext),
        Ciphertext == "zabcdefghi".

    test(can_encode_messages_longer_than_the_key, condition(pending)) :-
        encode("iamapandabear", "abc", Ciphertext),
        Ciphertext == "iboaqcnecbfcr".

    test(can_decode, condition(pending)) :-
        Key = "abcdefghij",
        decode(Key, Key, "aaaaaaaaaa").

    test(can_wrap_on_decode, condition(pending)) :-
        decode("zabcdefghi", "abcdefghij", Plaintext),
        Plaintext == "zzzzzzzzzz".

    test(can_decode_messages_longer_than_the_key, condition(pending)) :-
        decode("iboaqcnecbfcr", "abc", Plaintext),
        Plaintext == "iamapandabear".

    test(is_reversible, condition(pending)) :-
        Plaintext = "abcdefghij",
        Key = "abcdefghij",
        encode(Plaintext, Key, Ciphertext),
        decode(Ciphertext, Key, Plaintext).

    test(can_encode_using_generated_key, condition(pending)) :-
        Plaintext = "aaaaaaaaaa",
        string_length(Plaintext, Length),
        generate_key(Key),
        string_concat(Subkey, _, Key),
        string_length(Subkey, Length),
        encode(Plaintext, Subkey, Subkey),
        !.

    test(can_decode_using_generated_key, condition(pending)) :-
        Plaintext = "aaaaaaaaaa",
        string_length(Plaintext, Length),
        generate_key(Key),
        string_concat(Subkey, _, Key),
        string_length(Subkey, Length),
        decode(Subkey, Subkey, "aaaaaaaaaa"),
        !.

    test(is_reversible_using_generated_key, condition(pending)) :-
        generate_key(Key),
        Plaintext = "abcdefghij",
        encode(Plaintext, Key, Ciphertext),
        decode(Ciphertext, Key, Plaintext).

    test(key_is_made_only_of_lowercase_letters, condition(pending)) :-
        generate_key(Key),
        string_length(Key, Length),
        Length >= 100,
        string_chars(Key, Chars),
        maplist([C]>>char_type(C, lower), Chars).

:- end_tests(simple_cipher).
