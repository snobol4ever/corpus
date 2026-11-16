% atbash_cipher.pl -- the exercism Prolog exercise atbash-cipher, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/atbash_cipher.example.pl, then its tests atbash_cipher_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

alphabet(Alphabet) :- string_chars("abcdefghijklmnopqrstuvwxyz", Alphabet).

encrypt_char(Char, Char) :- char_type(Char, digit), !.
encrypt_char(Char, Encrypted) :-
    char_type(Char, alpha),
    downcase_atom(Char, Downcased),
    alphabet(Alphabet),
    nth0(I, Alphabet, Downcased),
    J is 26 - I,
    nth1(J, Alphabet, Encrypted), !.

encrypt(Text, Encrypted) :-
    string_lower(Text, Lower),
    string_chars(Lower, Chars),
    findall(EncryptedChar, (member(Char, Chars), encrypt_char(Char, EncryptedChar)), EncryptedChars),
    string_chars(Encrypted, EncryptedChars).

chunk(Text, Text) :- string_length(Text, Length), Length =< 5, !.
chunk(Text, Chunked) :-
    ChunkSize = 5,
    sub_string(Text, 0, ChunkSize, After, Chunk),
    sub_string(Text, ChunkSize, After, _, Remainder),
    chunk(Remainder, RemainderChunk),
    format(string(Chunked), "~w ~w", [Chunk, RemainderChunk]).

encode(Plaintext, Ciphertext) :-
    encrypt(Plaintext, UnchunkedCiphertext),
    chunk(UnchunkedCiphertext, Ciphertext).

decode(Ciphertext, Plaintext) :-
    encrypt(Ciphertext, Plaintext).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(atbash_cipher).

    test(encode_yes, condition(true)) :-
        encode("yes", Ciphertext),
        Ciphertext == "bvh".

    test(encode_no, condition(pending)) :-
        encode("no", Ciphertext),
        Ciphertext == "ml".

    test(encode_omg, condition(pending)) :-
        encode("OMG", Ciphertext),
        Ciphertext == "lnt".

    test(encode_spaces, condition(pending)) :-
        encode("O M G", Ciphertext),
        Ciphertext == "lnt".

    test(encode_mindblowingly, condition(pending)) :-
        encode("mindblowingly", Ciphertext),
        Ciphertext == "nrmwy oldrm tob".

    test(encode_numbers, condition(pending)) :-
        encode("Testing,1 2 3, testing.", Ciphertext),
        Ciphertext == "gvhgr mt123 gvhgr mt".

    test(encode_deep_thought, condition(pending)) :-
        encode("Truth is fiction.", Ciphertext),
        Ciphertext == "gifgs rhurx grlm".

    test(encode_all_the_letters, condition(pending)) :-
        encode("The quick brown fox jumps over the lazy dog.", Ciphertext),
        Ciphertext == "gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt".

    test(decode_exercism, condition(pending)) :-
        decode("vcvix rhn", Plaintext),
        Plaintext == "exercism".

    test(decode_a_sentence, condition(pending)) :-
        decode("zmlyh gzxov rhlug vmzhg vkkrm thglm v", Plaintext),
        Plaintext == "anobstacleisoftenasteppingstone".

    test(decode_numbers, condition(pending)) :-
        decode("gvhgr mt123 gvhgr mt", Plaintext),
        Plaintext == "testing123testing".

    test(decode_all_the_letters, condition(pending)) :-
        decode("gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt", Plaintext),
        Plaintext == "thequickbrownfoxjumpsoverthelazydog".

    test(decode_with_too_many_spaces, condition(pending)) :-
        decode("vc vix    r hn", Plaintext),
        Plaintext == "exercism".

    test(decode_with_no_spaces, condition(pending)) :-
        decode("zmlyhgzxovrhlugvmzhgvkkrmthglmv", Plaintext),
        Plaintext == "anobstacleisoftenasteppingstone".

:- end_tests(atbash_cipher).
