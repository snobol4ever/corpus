%------------------------------------------------------------- 1 acronym/acronym
% acronym.pl -- the exercism Prolog exercise acronym, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/acronym.example.pl, then its tests acronym_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
words(Sentence, Words) :-
    split_string(Sentence, " ", "", W0),
    maplist([Word,Acc]>>(split_string(Word,"-", "",Acc)), W0, W1),
    flatten(W1, W2),
    maplist(string_upper, W2, W3),
    delete(W3, "", Words).

abbreviate_word(Word, Letter) :-
    string_chars(Word, Letters),
    delete(Letters, '_', [Letter|_]).

abbreviate(Sentence, Acromym) :-
    words(Sentence, Words),
    maplist(abbreviate_word, Words, Letters),
    string_chars(Acromym, Letters).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(acronym).

    test(basic, condition(true)) :-
        abbreviate("Portable Network Graphics", Acronym),
        Acronym == "PNG".

    test(lowercase_words, condition(pending)) :-
        abbreviate("Ruby on Rails", Acronym),
        Acronym == "ROR".

    test(punctuation, condition(pending)) :-
        abbreviate("First In, First Out", Acronym),
        Acronym == "FIFO".

    test(all_caps_word, condition(pending)) :-
        abbreviate("GNU Image Manipulation Program", Acronym),
        Acronym == "GIMP".

    test(punctuation_without_whitespace, condition(pending)) :-
        abbreviate("Complementary metal-oxide semiconductor", Acronym),
        Acronym == "CMOS".

    test(very_long_abbreviation, condition(pending)) :-
        abbreviate("Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me", Acronym),
        Acronym == "ROTFLSHTMDCOALM".

    test(consecutive_delimiters, condition(pending)) :-
        abbreviate("Something - I made up from thin air", Acronym),
        Acronym == "SIMUFTA".

    test(apostrophes, condition(pending)) :-
        abbreviate("Halley's Comet", Acronym),
        Acronym == "HC".

    test(underscore_emphasis, condition(pending)) :-
        abbreviate("The Road _Not_ Taken", Acronym),
        Acronym == "TRNT".

:- end_tests(acronym).
%------------------------------------------------- 2 affine-cipher/affine_cipher
% affine_cipher.pl -- the exercism Prolog exercise affine-cipher, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/affine_cipher.example.pl, then its tests affine_cipher_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

alphabet(Alphabet) :- string_chars("abcdefghijklmnopqrstuvwxyz", Alphabet).

encrypt_char(_, Char, Char) :- char_type(Char, digit), !.
encrypt_char(Map, Char, Encrypted) :-
    char_type(Char, alpha),
    downcase_atom(Char, Downcased),
    alphabet(Alphabet),
    nth0(I, Alphabet, Downcased),
    call(Map, I, J),
    nth0(J, Alphabet, Encrypted), !.

encrypt(Map, Text, Encrypted) :-
    string_chars(Text, Chars),
    findall(EncryptedChar, (member(Char, Chars), encrypt_char(Map, Char, EncryptedChar)), EncryptedChars),
    string_chars(Encrypted, EncryptedChars).

chunk(Text, Text) :- string_length(Text, Length), Length =< 5, !.
chunk(Text, Chunked) :-
    ChunkSize = 5,
    sub_string(Text, 0, ChunkSize, After, Chunk),
    sub_string(Text, ChunkSize, After, _, Remainder),
    chunk(Remainder, RemainderChunk),
    format(string(Chunked), "~w ~w", [Chunk, RemainderChunk]).

encode(Plaintext, A, B, Ciphertext) :-
    modular_inverse(A, 26, _),
    encrypt([I,J]>>(J is (A * I + B) mod 26), Plaintext, Translated),
    chunk(Translated, Ciphertext).

decode(Ciphertext, A, B, Plaintext) :-
    modular_inverse(A, 26, Mmi),
    encrypt([I,J]>>(J is Mmi * (I - B) mod 26), Ciphertext, Plaintext).

modular_inverse(A, M, Mmi) :-
    Mmi in 1..M,
    A * Mmi mod M #= 1,
    label([Mmi]).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(affine_cipher).

    test(encode_yes, condition(true)) :-
        encode("yes", 5, 7, Ciphertext),
        Ciphertext == "xbt".

    test(encode_no, condition(pending)) :-
        encode("no", 15, 18, Ciphertext),
        Ciphertext == "fu".

    test(encode_omg, condition(pending)) :-
        encode("OMG", 21, 3, Ciphertext),
        Ciphertext == "lvz".

    test(encode_o_m_g, condition(pending)) :-
        encode("O M G", 25, 47, Ciphertext),
        Ciphertext == "hjp".

    test(encode_mindblowingly, condition(pending)) :-
        encode("mindblowingly", 11, 15, Ciphertext),
        Ciphertext == "rzcwa gnxzc dgt".

    test(encode_numbers, condition(pending)) :-
        encode("Testing,1 2 3, testing.", 3, 4, Ciphertext),
        Ciphertext == "jqgjc rw123 jqgjc rw".

    test(encode_deep_thought, condition(pending)) :-
        encode("Truth is fiction.", 5, 17, Ciphertext),
        Ciphertext == "iynia fdqfb ifje".

    test(encode_all_the_letters, condition(pending)) :-
        encode("The quick brown fox jumps over the lazy dog.", 17, 33, Ciphertext),
        Ciphertext == "swxtj npvyk lruol iejdc blaxk swxmh qzglf".

    test(encode_with_a_not_coprime_to_m, [fail, condition(pending)]) :-
        encode("This is a test.", 6, 17, _).

    test(decode_exercism, condition(pending)) :-
        decode("tytgn fjr", 3, 7, Plaintext),
        Plaintext == "exercism".

    test(decode_a_sentence, condition(pending)) :-
        decode("qdwju nqcro muwhn odqun oppmd aunwd o", 19, 16, Plaintext),
        Plaintext == "anobstacleisoftenasteppingstone".

    test(decode_numbers, condition(pending)) :-
        decode("odpoz ub123 odpoz ub", 25, 7, Plaintext),
        Plaintext == "testing123testing".

    test(decode_all_the_letters, condition(pending)) :-
    decode("swxtj npvyk lruol iejdc blaxk swxmh qzglf", 17, 33, Plaintext),
        Plaintext == "thequickbrownfoxjumpsoverthelazydog".

    test(decode_with_no_spaces_in_input, condition(pending)) :-
        decode("swxtjnpvyklruoliejdcblaxkswxmhqzglf", 17, 33, Plaintext),
        Plaintext == "thequickbrownfoxjumpsoverthelazydog".

    test(decode_with_too_many_spaces, condition(pending)) :-
        decode("vszzm    cly   yd cg    qdp", 15, 16, Plaintext),
        Plaintext == "jollygreengiant".

    test(decode_with_a_not_coprime_to_m, [fail, condition(pending)]) :-
        decode("Test", 13, 5, _).

:- end_tests(affine_cipher).
%------------------------------------------------- 3 all-your-base/all_your_base
% all_your_base.pl -- the exercism Prolog exercise all-your-base, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/all_your_base.example.pl, then its tests all_your_base_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

decimal_base(_, [], Decimal, Decimal) :- !.
decimal_base(Base, [Digit|Digits], Acc, Decimal) :-
    MaxDigit #= Base - 1,
    Digit in 0..MaxDigit,
    NewAcc #= Acc * Base + Digit,
    decimal_base(Base, Digits, NewAcc, Decimal).

decimal_base(_, [0], 0) :- !.
decimal_base(Base, Digits, Decimal) :- decimal_base(Base, Digits, 0, Decimal).

rebase(InputBase, InputDigits, OutputBase, OutputDigits) :-
    InputBase #>= 2, OutputBase #>= 2,
    decimal_base(InputBase, InputDigits, Decimal),
    decimal_base(OutputBase, OutputDigits, Decimal).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(all_your_base).

    test(single_bit_one_to_decimal, condition(true)) :-
        rebase(2, [1], 10, Rebased),
        Rebased == [1].

    test(binary_to_single_decimal, condition(pending)) :-
        rebase(2, [1, 0, 1], 10, Rebased),
        Rebased == [5].

    test(single_decimal_to_binary, condition(pending)) :-
        rebase(10, [5], 2, Rebased),
        Rebased == [1, 0, 1].

    test(binary_to_multiple_decimal, condition(pending)) :-
        rebase(2, [1, 0, 1, 0, 1, 0], 10, Rebased),
        Rebased == [4, 2].

    test(decimal_to_binary, condition(pending)) :-
        rebase(10, [4, 2], 2, Rebased),
        Rebased == [1, 0, 1, 0, 1, 0].

    test(trinary_to_hexadecimal, condition(pending)) :-
        rebase(3, [1, 1, 2, 0], 16, Rebased),
        Rebased == [2, 10].

    test(hexadecimal_to_trinary, condition(pending)) :-
        rebase(16, [2, 10], 3, Rebased),
        Rebased == [1, 1, 2, 0].

    test(fifteen_bit_integer, condition(pending)) :-
        rebase(97, [3, 46, 60], 73, Rebased),
        Rebased == [6, 10, 45].

    test(empty_list, condition(pending)) :-
        rebase(2, [], 10, Rebased),
        Rebased == [0].

    test(single_zero, condition(pending)) :-
        rebase(10, [0], 2, Rebased),
        Rebased == [0].

    test(multiple_zeros, condition(pending)) :-
        rebase(10, [0, 0, 0], 2, Rebased),
        Rebased == [0].

    test(leading_zeros, condition(pending)) :-
        rebase(7, [0, 6, 0], 10, Rebased),
        Rebased == [4, 2].

    test(input_base_is_one, [fail, condition(pending)]) :-
        rebase(1, [0], 10, _).

    test(input_base_is_zero, [fail, condition(pending)]) :-
        rebase(0, [], 10, _).

    test(input_base_is_negative, [fail, condition(pending)]) :-
        rebase(-2, [1], 10, _).

    test(negative_digit, [fail, condition(pending)]) :-
        rebase(2, [1, -1, 1, 0, 1, 0], 10, _).

    test(invalid_positive_digit, [fail, condition(pending)]) :-
        rebase(2, [1, 2, 1, 0, 1, 0], 10, _).

    test(output_base_is_one, [fail, condition(pending)]) :-
        rebase(2, [1, 0, 1, 0, 1, 0], 1, _).

    test(output_base_is_zero, [fail, condition(pending)]) :-
        rebase(10, [7], 0, _).

    test(output_base_is_negative, [fail, condition(pending)]) :-
        rebase(2, [1], -7, _).

    test(both_bases_are_negative, [fail, condition(pending)]) :-
        rebase(-2, [1], -7, _).

:- end_tests(all_your_base).
%--------------------------------------------------------- 4 allergies/allergies
% allergies.pl -- the exercism Prolog exercise allergies, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/allergies.example.pl, then its tests allergies_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

allergens([eggs, peanuts, shellfish, strawberries, tomatoes, chocolate, pollen, cats]).

allergic_to(Score, eggs)         :- getbit(Score, 0) =:= 1, !.
allergic_to(Score, peanuts)      :- getbit(Score, 1) =:= 1, !.
allergic_to(Score, shellfish)    :- getbit(Score, 2) =:= 1, !.
allergic_to(Score, strawberries) :- getbit(Score, 3) =:= 1, !.
allergic_to(Score, tomatoes)     :- getbit(Score, 4) =:= 1, !.
allergic_to(Score, chocolate)    :- getbit(Score, 5) =:= 1, !.
allergic_to(Score, pollen)       :- getbit(Score, 6) =:= 1, !.
allergic_to(Score, cats)         :- getbit(Score, 7) =:= 1, !.

allergies(Score, Allergies) :-
    allergens(Allergens),
    include(allergic_to(Score), Allergens, Allergies).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(allergies).

    test(eggs_not_allergic_to_anything, [fail, condition(true)]) :-
        allergic_to(0, eggs).

    test(allergic_only_to_eggs, condition(pending)) :-
        allergic_to(1, eggs).

    test(allergic_to_eggs_and_something_else, condition(pending)) :-
        allergic_to(3, eggs).

    test(allergic_to_something_but_not_eggs, [fail, condition(pending)]) :-
        allergic_to(2, eggs).

    test(eggs_allergic_to_everything, condition(pending)) :-
        allergic_to(255, eggs).

    test(peanuts_not_allergic_to_anything, [fail, condition(pending)]) :-
        allergic_to(0, peanuts).

    test(allergic_only_to_peanuts, condition(pending)) :-
        allergic_to(2, peanuts).

    test(allergic_to_peanuts_and_something_else, condition(pending)) :-
        allergic_to(7, peanuts).

    test(allergic_to_something_but_not_peanuts, [fail, condition(pending)]) :-
        allergic_to(5, peanuts).

    test(peanuts_allergic_to_everything, condition(pending)) :-
        allergic_to(255, peanuts).

    test(shellfish_not_allergic_to_anything, [fail, condition(pending)]) :-
        allergic_to(0, shellfish).

    test(allergic_only_to_shellfish, condition(pending)) :-
        allergic_to(4, shellfish).

    test(allergic_to_shellfish_and_something_else, condition(pending)) :-
        allergic_to(14, shellfish).

    test(allergic_to_something_but_not_shellfish, [fail, condition(pending)]) :-
        allergic_to(10, shellfish).

    test(shellfish_allergic_to_everything, condition(pending)) :-
        allergic_to(255, shellfish).

    test(strawberries_not_allergic_to_anything, [fail, condition(pending)]) :-
        allergic_to(0, strawberries).

    test(allergic_only_to_strawberries, condition(pending)) :-
        allergic_to(8, strawberries).

    test(allergic_to_strawberries_and_something_else, condition(pending)) :-
        allergic_to(28, strawberries).

    test(allergic_to_something_but_not_strawberries, [fail, condition(pending)]) :-
        allergic_to(20, strawberries).

    test(strawberries_allergic_to_everything, condition(pending)) :-
        allergic_to(255, strawberries).

    test(tomatoes_not_allergic_to_anything, [fail, condition(pending)]) :-
        allergic_to(0, tomatoes).

    test(allergic_only_to_tomatoes, condition(pending)) :-
        allergic_to(16, tomatoes).

    test(allergic_to_tomatoes_and_something_else, condition(pending)) :-
        allergic_to(56, tomatoes).

    test(allergic_to_something_but_not_tomatoes, [fail, condition(pending)]) :-
        allergic_to(40, tomatoes).

    test(tomatoes_allergic_to_everything, condition(pending)) :-
        allergic_to(255, tomatoes).

    test(chocolate_not_allergic_to_anything, [fail, condition(pending)]) :-
        allergic_to(0, chocolate).

    test(allergic_only_to_chocolate, condition(pending)) :-
        allergic_to(32, chocolate).

    test(allergic_to_chocolate_and_something_else, condition(pending)) :-
        allergic_to(112, chocolate).

    test(allergic_to_something_but_not_chocolate, [fail, condition(pending)]) :-
        allergic_to(80, chocolate).

    test(chocolate_allergic_to_everything, condition(pending)) :-
        allergic_to(255, chocolate).

    test(pollen_not_allergic_to_anything, [fail, condition(pending)]) :-
        allergic_to(0, pollen).

    test(allergic_only_to_pollen, condition(pending)) :-
        allergic_to(64, pollen).

    test(allergic_to_pollen_and_something_else, condition(pending)) :-
        allergic_to(224, pollen).

    test(allergic_to_something_but_not_pollen, [fail, condition(pending)]) :-
        allergic_to(160, pollen).

    test(pollen_allergic_to_everything, condition(pending)) :-
        allergic_to(255, pollen).

    test(cats_not_allergic_to_anything, [fail, condition(pending)]) :-
        allergic_to(0, cats).

    test(allergic_only_to_cats, condition(pending)) :-
        allergic_to(128, cats).

    test(allergic_to_cats_and_something_else, condition(pending)) :-
        allergic_to(192, cats).

    test(allergic_to_something_but_not_cats, [fail, condition(pending)]) :-
        allergic_to(64, cats).

    test(cats_allergic_to_everything, condition(pending)) :-
        allergic_to(255, cats).

    test(no_allergies, condition(pending)) :-
        allergies(0, Allergies),
        Allergies == [].

    test(just_eggs, condition(pending)) :-
        allergies(1, Allergies),
        Allergies == [eggs].

    test(just_peanuts, condition(pending)) :-
        allergies(2, Allergies),
        Allergies == [peanuts].

    test(just_strawberries, condition(pending)) :-
        allergies(8, Allergies),
        Allergies == [strawberries].

    test(eggs_and_peanuts, condition(pending)) :-
        allergies(3, Allergies),
        Allergies == [eggs, peanuts].

    test(more_than_eggs_but_not_peanuts, condition(pending)) :-
        allergies(5, Allergies),
        Allergies == [eggs, shellfish].

    test(lots_of_stuff, condition(pending)) :-
        allergies(248, Allergies),
        Allergies == [strawberries, tomatoes, chocolate, pollen, cats].

    test(everything, condition(pending)) :-
        allergies(255, Allergies),
        Allergies == [eggs, peanuts, shellfish, strawberries, tomatoes, chocolate, pollen, cats].

    test(no_allergen_score_parts, condition(pending)) :-
        allergies(509, Allergies),
        Allergies == [eggs, shellfish, strawberries, tomatoes, chocolate, pollen, cats].

    test(no_allergen_score_parts_without_highest_valid_score, condition(pending)) :-
        allergies(257, Allergies),
        Allergies == [eggs].

:- end_tests(allergies).
%----------------------------------------------------- 5 alphametics/alphametics
% alphametics.pl -- the exercism Prolog exercise alphametics, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/alphametics.example.pl, then its tests alphametics_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it; double_quotes set back to string before the tests, as the runner reads them in a file of their own.
:- use_module(library(dcg/basics)).
:- use_module(library(clpfd)).
:- set_prolog_flag(double_quotes, chars).

letter(Letter) --> [Letter], { char_type(Letter, upper) }.
operand([Letter|Letters]) --> letter(Letter), operand(Letters).
operand([Letter]) --> letter(Letter).

operands([Operand|Operands]) --> operand(Operand), " + ", operands(Operands).
operands([Operand]) --> operand(Operand).

equation(Left, Right) --> operands(Left), " == ", operands(Right).

letter_map(Sign, Letters, Mapping) :- 
    reverse(Letters, ReversedLetters),
    findall(L-C, (nth0(I, ReversedLetters, L), C is Sign * 10 ^ I), Mapping).

map_merge(Mappings, Mapping) :-
    setof(Key, Value^member(Key-Value, Mappings), Keys),
    findall(Key-Sum, (member(Key, Keys), aggregate(sum(Value), member(Key-Value, Mappings), Sum)), Mapping).

mapping(Left, Right, Mapping) :-
    maplist(letter_map(1), Left, LeftMappings),
    maplist(letter_map(-1), Right, RightMappings),
    append(LeftMappings, RightMappings, NestedMappings),
    flatten(NestedMappings, Mappings),
    map_merge(Mappings, Mapping).

zero_letters(Left, Right, ZeroLetters) :-
    append(Left, Right, LeftAndRight),
    findall(ZeroChar, member([ZeroChar|_], LeftAndRight), ALlZeroLetters),
    sort(ALlZeroLetters, ZeroLetters).

parse(Equation, Mapping, Letters, ZeroLetters) :-
    string_chars(Equation, Chars),
    phrase(equation(Left, Right), Chars),
    mapping(Left, Right, Mapping),
    zero_letters(Left, Right, ZeroLetters),
    pairs_keys(Mapping, Letters).    

add_range(ZeroLetters, Letter, Digit) :-
    (member(Letter, ZeroLetters) -> Min = 1; Min = 0),
    Digit in Min..9.

solve(Equation, Solution) :-
    parse(Equation, Mapping, Letters, ZeroLetters),
    length(Letters, Count),
    length(Digits, Count),
    all_different(Digits),
    maplist(add_range(ZeroLetters), Letters, Digits),
    pairs_values(Mapping, Multipliers),
    scalar_product(Multipliers, Digits, #=, 0),
    pairs_keys_values(Solution, Letters, Digits),
    label(Digits),
    !.

:- set_prolog_flag(double_quotes, string).
pending :-
    true.
pending :-
    write('\nA TEST_IS PENDING!\n'),
    fail.

:- begin_tests(alphametics).

    test(puzzle_with_three_letters, condition(true)) :-
        solve("I + BB == ILL", Solution),
        sort(Solution, SortedSolution),
        SortedSolution == ['B'-9, 'I'-1, 'L'-0].

    test(solution_must_have_unique_value_for_each_letter, [fail, condition(pending)]) :-
        solve("A == B", _).

    test(leading_zero_solution_is_invalid, [fail, condition(pending)]) :-
        solve("ACA + DD == BD", _).

    test(puzzle_with_two_digits_final_carry, condition(pending)) :-
        solve("A + A + A + A + A + A + A + A + A + A + A + B == BCC", Solution),
        sort(Solution, SortedSolution),
        SortedSolution == ['A'-9, 'B'-1, 'C'-0].

    test(puzzle_with_four_letters, condition(pending)) :-
        solve("AS + A == MOM", Solution),
        sort(Solution, SortedSolution),
        SortedSolution == ['A'-9, 'M'-1, 'O'-0, 'S'-2].

    test(puzzle_with_six_letters, condition(pending)) :-
        solve("NO + NO + TOO == LATE", Solution),
        sort(Solution, SortedSolution),
        SortedSolution == ['A'-0, 'E'-2, 'L'-1, 'N'-7, 'O'-4, 'T'-9].

    test(puzzle_with_seven_letters, condition(pending)) :-
        solve("HE + SEES + THE == LIGHT", Solution),
        sort(Solution, SortedSolution),
        SortedSolution == ['E'-4, 'G'-2, 'H'-5, 'I'-0, 'L'-1, 'S'-9, 'T'-7].

    test(puzzle_with_eight_letters, condition(pending)) :-
        solve("SEND + MORE == MONEY", Solution),
        sort(Solution, SortedSolution),
        SortedSolution == ['D'-7, 'E'-5, 'M'-1, 'N'-6, 'O'-0, 'R'-8, 'S'-9, 'Y'-2].

    test(puzzle_with_ten_letters, condition(pending)) :-
        solve("AND + A + STRONG + OFFENSE + AS + A + GOOD == DEFENSE", Solution),
        sort(Solution, SortedSolution),
        SortedSolution == ['A'-5, 'D'-3, 'E'-4, 'F'-7, 'G'-8, 'N'-0, 'O'-2, 'R'-1, 'S'-6, 'T'-9].

    test(puzzle_with_ten_letters_and_199_addends, condition(pending)) :-
        solve("THIS + A + FIRE + THEREFORE + FOR + ALL + HISTORIES + I + TELL + A + TALE + THAT + FALSIFIES + ITS + TITLE + TIS + A + LIE + THE + TALE + OF + THE + LAST + FIRE + HORSES + LATE + AFTER + THE + FIRST + FATHERS + FORESEE + THE + HORRORS + THE + LAST + FREE + TROLL + TERRIFIES + THE + HORSES + OF + FIRE + THE + TROLL + RESTS + AT + THE + HOLE + OF + LOSSES + IT + IS + THERE + THAT + SHE + STORES + ROLES + OF + LEATHERS + AFTER + SHE + SATISFIES + HER + HATE + OFF + THOSE + FEARS + A + TASTE + RISES + AS + SHE + HEARS + THE + LEAST + FAR + HORSE + THOSE + FAST + HORSES + THAT + FIRST + HEAR + THE + TROLL + FLEE + OFF + TO + THE + FOREST + THE + HORSES + THAT + ALERTS + RAISE + THE + STARES + OF + THE + OTHERS + AS + THE + TROLL + ASSAILS + AT + THE + TOTAL + SHIFT + HER + TEETH + TEAR + HOOF + OFF + TORSO + AS + THE + LAST + HORSE + FORFEITS + ITS + LIFE + THE + FIRST + FATHERS + HEAR + OF + THE + HORRORS + THEIR + FEARS + THAT + THE + FIRES + FOR + THEIR + FEASTS + ARREST + AS + THE + FIRST + FATHERS + RESETTLE + THE + LAST + OF + THE + FIRE + HORSES + THE + LAST + TROLL + HARASSES + THE + FOREST + HEART + FREE + AT + LAST + OF + THE + LAST + TROLL + ALL + OFFER + THEIR + FIRE + HEAT + TO + THE + ASSISTERS + FAR + OFF + THE + TROLL + FASTS + ITS + LIFE + SHORTER + AS + STARS + RISE + THE + HORSES + REST + SAFE + AFTER + ALL + SHARE + HOT + FISH + AS + THEIR + AFFILIATES + TAILOR + A + ROOFS + FOR + THEIR + SAFE == FORTRESSES", Solution),
        sort(Solution, SortedSolution),
        SortedSolution == ['A'-1, 'E'-0, 'F'-5, 'H'-8, 'I'-7, 'L'-2, 'O'-6, 'R'-3, 'S'-4, 'T'-9].

:- end_tests(alphametics).
%------------------------------------------------------------- 6 anagram/anagram
% anagram.pl -- the exercism Prolog exercise anagram, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/anagram.example.pl, then its tests anagram_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
is_anagram(A,B) :- 
  string_lower(A,A1),
  string_lower(B,B1),
  not(A1 == B1),
  string_codes(A1,Ac),
  string_codes(B1,Bc),
  permutation(Ac,Bc), !.

anagram(Word, Options, Matching) :- include(is_anagram(Word), Options, Matching).

:- encoding(utf8).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(anagram).

    test(no_matches, condition(true)) :-
        anagram("diaper", [ "hello", "world", "zombies", "pants"], Anagrams),
        is_list(Anagrams).

    test(detects_simple_anagram, condition(pending)) :-
        anagram("ant", ["tan", "stand", "at"], Anagrams),
        Anagrams == ["tan"].

    test(does_not_detect_false_positives, condition(pending)) :-
        anagram("galea", ["eagle"], Anagrams),
        Anagrams == [].

    test(detects_multiple_anagrams, condition(pending)) :-
        anagram("master", ["stream", "pigeon", "maters"], Anagrams),
        Anagrams == ["stream", "maters"].

    test(does_not_detect_anagram_subsets, condition(pending)) :-
        anagram("good", ["dog", "goody"], Anagrams),
        Anagrams == [].

    test(detects_anagram, condition(pending)) :-
        anagram("listen", ["enlists", "google", "inlets", "banana"], Anagrams),
        Anagrams == ["inlets"].

    test(detects_multiple_anagrams, condition(pending)) :-
        anagram("allergy", ["gallery", "ballerina", "regally", "clergy", "largely", "leading"], Anagrams),
        Anagrams == ["gallery", "regally", "largely"].

    test(does_not_detect_identical_words, condition(pending)) :-
        anagram("corn", ["corn", "dark", "Corn", "rank", "CORN", "cron", "park"], Anagrams),
        Anagrams == ["cron"].

    test(does_not_detect_nonanagrams_with_identical_checksum, condition(pending)) :-
        anagram("mass", ["last"], Anagrams),
        Anagrams == [].

    test(detects_anagrams_case_insensitively, condition(pending)) :-
        anagram("Orchestra", ["cashregister", "Carthorse", "radishes"], Anagrams),
        Anagrams == ["Carthorse"].

    test(detects_anagrams_using_case_insensitive_subject, condition(pending)) :-
        anagram("Orchestra", ["cashregister", "carthorse", "radishes"], Anagrams),
        Anagrams == ["carthorse"].

    test(detects_anagrams_using_case_insensitive_possible_matches, condition(pending)) :-
        anagram("orchestra", ["cashregister", "Carthorse", "radishes"], Anagrams),
        Anagrams == ["Carthorse"].

    test(does_not_detect_a_word_as_its_own_anagram, condition(pending)) :-
        anagram("banana", ["Banana"], Anagrams),
        Anagrams == [].

    test(does_not_detect_a_anagram_if_the_original_word_is_repeated, condition(pending)) :-
        anagram("go", ["go Go GO"], Anagrams),
        Anagrams == [].
    
    test(does_not_detect_a_anagram_if_the_original_word_is_repeated_without_whitespace, condition(pending)) :-
        anagram("go", ["goGoGO"], Anagrams),
        Anagrams == [].

    test(anagrams_must_use_all_letters_exactly_once, condition(pending)) :-
        anagram("tapper", ["patter"], Anagrams),
        Anagrams == [].

    test(detects_unicode_anagrams, condition(pending)) :-
        anagram("ΑΒΓ", ["ΒΓΑ", "ΒΓΔ", "γβα"], Anagrams),
        Anagrams == ["ΒΓΑ", "γβα"].

    test(eliminates_misleading_unicode_anagrams, condition(pending)) :-
        anagram("ΑΒΓ", ["ABΓ"], Anagrams),
        Anagrams == [].

    test(capital_word_is_not_own_anagram, condition(pending)) :-
        anagram("BANANA", ["Banana"], Anagrams),
        Anagrams == [].

    test(word_other_than_itself_can_be_anagram, condition(pending)) :-
        anagram("LISTEN", ["Listen","Silent","LISTEN"], Anagrams),
        Anagrams == ["Silent"].
    
    test(handles_greek_letters_cases, condition(pending)) :-
        anagram("ΑΒΓ", ["ΒΓΑ", "ΒΓΔ", "γβα", "αβγ"], Anagrams),
        Anagrams == ["ΒΓΑ", "γβα"].

:- end_tests(anagram).
%----------------------------------------- 7 armstrong-numbers/armstrong_numbers
% armstrong_numbers.pl -- the exercism Prolog exercise armstrong-numbers, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/armstrong_numbers.example.pl, then its tests armstrong_numbers_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
digit(Code, Digit) :- Digit is Code - 48.

digits(N, Digits) :-
    number_string(N, Str),
    string_codes(Str, Codes),
    maplist(digit, Codes, Digits).

armstrong_sum(_, [], 0).
armstrong_sum(NumberOfDigits, [Digit|Tail], Sum) :-
    armstrong_sum(NumberOfDigits, Tail, TailSum),
    pow(Digit, NumberOfDigits, Pow),
    Sum is TailSum + Pow, !.

armstrong_number(N) :-
    digits(N, Digits),
    length(Digits, NumberOfDigits),
    armstrong_sum(NumberOfDigits, Digits, N).

pending :-
    true.
pending :-
    write('\nA TEST_IS PENDING!\n'),
    fail.

:- begin_tests(armstrong_numbers).

    test(zero_is_an_armstrong_number, condition(true)) :-
        armstrong_number(0).

    test(single_digit_numbers_are_armstrong_numbers, condition(pending)) :-
        armstrong_number(5).

    test(there_are_no_two_digit_armstrong_numbers, [fail, condition(pending)]) :-
        armstrong_number(10).

    test(three_digit_number_that_is_an_armstrong_number, condition(pending)) :-
        armstrong_number(153).

    test(three_digit_number_that_is_not_an_armstrong_number, [fail, condition(pending)]) :-
        armstrong_number(100).

    test(four_digit_number_that_is_an_armstrong_number, condition(pending)) :-
        armstrong_number(9474).

    test(four_digit_number_that_is_not_an_armstrong_number, [fail, condition(pending)]) :-
        armstrong_number(9475).

    test(seven_digit_number_that_is_an_armstrong_number, condition(pending)) :-
        armstrong_number(9926315).

    test(seven_digit_number_that_is_not_an_armstrong_number, [fail, condition(pending)]) :-
        armstrong_number(9926314).

:- end_tests(armstrong_numbers).
%------------------------------------------------- 8 atbash-cipher/atbash_cipher
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
%--------------------------------------------------- 9 bank-account/bank_account
% bank_account.pl -- the exercism Prolog exercise bank-account, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/bank_account.example.pl, then its tests bank_account_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

create_bank_account(Account) :- Account = account(closed, 0).

status(Account, Status) :- Account = account(Status, _).
balance(Account, Balance) :- Account = account(_, Balance), status(Account, opened).

set_status(Account, Status) :- setarg(1, Account, Status).
set_balance(Account, Balance) :- setarg(2, Account, Balance).

open_account(Account) :-
    status(Account, closed),
    set_status(Account, opened),
    set_balance(Account, 0).

close_account(Account) :-
    status(Account, opened),
    set_status(Account, closed).

deposit(Account, Amount) :-
    Amount #> 0,
    status(Account, opened),
    balance(Account, Balance),
    NewBalance #= Balance + Amount,
    set_balance(Account, NewBalance).

withdraw(Account, Amount) :- 
    Amount #> 0,
    status(Account, opened),
    balance(Account, Balance),
    Amount #=< Balance,
    NewBalance #= Balance - Amount,
    set_balance(Account, NewBalance).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(bank_account).

    test(newly_opened_account_has_zero_balance, condition(true)) :-
        create_bank_account(Account),
        open_account(Account),
        balance(Account, Balance),
        Balance == 0.

    test(single_deposit, condition(pending)) :-
        create_bank_account(Account),
        open_account(Account),
        deposit(Account, 100),
        balance(Account, Balance),
        Balance == 100.

    test(multiple_deposits, condition(pending)) :-
        create_bank_account(Account),
        open_account(Account),
        deposit(Account, 100),
        deposit(Account, 50),
        balance(Account, Balance),
        Balance == 150.

    test(withdraw_once, condition(pending)) :-
        create_bank_account(Account),
        open_account(Account),
        deposit(Account, 100),
        withdraw(Account, 75),
        balance(Account, Balance),
        Balance == 25.

    test(withdraw_twice, condition(pending)) :-
        create_bank_account(Account),
        open_account(Account),
        deposit(Account, 100),
        withdraw(Account, 80),
        withdraw(Account, 20),
        balance(Account, Balance),
        Balance == 0.

    test(can_do_multiple_operations_sequentially, condition(pending)) :-
        create_bank_account(Account),
        open_account(Account),
        deposit(Account, 100),
        deposit(Account, 110),
        withdraw(Account, 200),
        deposit(Account, 60),
        withdraw(Account, 50),
        balance(Account, Balance),
        Balance == 20.

    test(cannot_check_balance_of_closed_account, [fail, condition(pending)]) :-
        create_bank_account(Account),
        open_account(Account),
        close_account(Account),
        balance(Account, _).
                
    test(cannot_deposit_into_closed_account, [fail, condition(pending)]) :-
        create_bank_account(Account),
        open_account(Account),
        close_account(Account),
        deposit(Account, 50).
                
    test(cannot_deposit_into_unopened_account, [fail, condition(pending)]) :-
        create_bank_account(Account),
        deposit(Account, 50).
                
    test(cannot_withdraw_from_closed_account, [fail, condition(pending)]) :-
        create_bank_account(Account),
        open_account(Account),
        close_account(Account),
        withdraw(Account, 50).
                
    test(cannot_close_an_account_that_was_not_opened, [fail, condition(pending)]) :-
        create_bank_account(Account),
        close_account(Account).
                
    test(cannot_open_an_already_opened_account, [fail, condition(pending)]) :-
        create_bank_account(Account),
        open_account(Account),
        open_account(Account).

    test(reopened_account_does_not_retain_balance, condition(pending)) :-
        create_bank_account(Account),
        open_account(Account),
        deposit(Account, 50),
        close_account(Account),
        open_account(Account),
        balance(Account, Balance),
        Balance == 0.

    test(cannot_withdraw_more_than_deposited, [fail, condition(pending)]) :-
        create_bank_account(Account),
        open_account(Account),
        deposit(Account, 25),
        withdraw(Account, 50).

    test(cannot_withdraw_negative, [fail, condition(pending)]) :-
        create_bank_account(Account),
        open_account(Account),
        deposit(Account, 100),
        withdraw(Account, -50).

    test(cannot_deposit_negative, [fail, condition(pending)]) :-
        create_bank_account(Account),
        open_account(Account),
        deposit(Account, -50).

:- end_tests(bank_account).
%-------------------------------------------------------------- 10 binary/binary
% binary.pl -- the exercism Prolog exercise binary, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/binary.example.pl, then its tests binary_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
binary(Str, Dec) :-
    string_chars(Str, RevLst),
    reverse(RevLst, Lst),
    convert(Lst, Dec).

convert([], 0).
convert([Head|List], Dec) :-
    atom_number(Head, Val),
    (Val is 0, !; Val is 1),
    convert(List, NextDec),
    Dec is NextDec*2 + Val.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(binary).

    test(binary_0_is_decimal_0, condition(true)) :-
        binary("0", Result), Result == 0.

    test(binary_1_is_decimal_1, condition(pending)) :-
        binary("1", Result), Result == 1.

    test(binary_10_is_decimal_2, condition(pending)) :-
        binary("10", Result), Result == 2.

    test(binary_11_is_decimal_3, condition(pending)) :-
        binary("11", Result), Result == 3.

    test(binary_100_is_decimal_4, condition(pending)) :-
        binary("100", Result), Result == 4.

    test(binary_1001_is_decimal_9, condition(pending)) :-
        binary("1001", Result), Result == 9.

    test(binary_11010_is_decimal_26, condition(pending)) :-
        binary("11010", Result), Result == 26.

    test(binary_10001101000_is_decimal_1128, condition(pending)) :-
        binary("10001101000", Result), Result == 1128.

    test(binary_ignores_leading_zeros, condition(pending)) :-
        binary("000011111", Result), Result == 31.

    test(two_is_not_a_valid_binary_digit, [fail, condition(pending)]) :-
        binary("2", _).

    test(nonbinary_digit_is_invalid, [fail, condition(pending)]) :-
        binary("01201", _).

    test(trailing_nonbinary_characters_is_invalid, [fail, condition(pending)]) :-
        binary("10nope", _).

    test(nonbinary_characters_is_invalid, [fail, condition(pending)]) :-
        binary("nope10", _).

    test(internal_nonbinary_characters_is_invalid, [fail, condition(pending)]) :-
        binary("10nope10", _).

    test(whitespace_separated_is_invalid, [fail, condition(pending)]) :-
        binary("001 nope", _).

:- end_tests(binary).
%------------------------------------------------ 11 binary-puzzle/binary_puzzle
% binary_puzzle.pl -- the exercism Prolog exercise binary-puzzle, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/binary_puzzle.example.pl, then its tests binary_puzzle_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

binary_puzzle(Rows) :-
    length(Rows, Dimension),
    transpose(Rows, Cols),
    maplist(same_length(Rows), Rows),
    maplist(max_two_identical_consecutive_numbers, Rows),
    maplist(max_two_identical_consecutive_numbers, Cols),    
    maplist(binary_digits, Cols, ColsAsIntegers),
    maplist(binary_digits, Rows, RowsAsIntegers),
    all_different(RowsAsIntegers),
    all_different(ColsAsIntegers),
    Half #= Dimension // 2,
    maplist(zeros_and_ones_have_same_count(Half), Rows),
    maplist(zeros_and_ones_have_same_count(Half), Cols).

binary_digits(Digits, Decimal) :- 
    Digits ins 0..1,
    foldl([Digit,Acc,NewAcc]>>(NewAcc #= Acc << 1 + Digit), Digits, 0, Decimal).

zeros_and_ones_have_same_count(Count, Digits) :-
    global_cardinality(Digits, [0-Count, 1-Count]).

max_two_identical_consecutive_numbers([_, _]).
max_two_identical_consecutive_numbers([X, Y, Z | Rest]) :-
    X #= Y #==> Y #\= Z,
    Y #= Z #==> X #\= Z,
    max_two_identical_consecutive_numbers([Y, Z | Rest]).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(binary_puzzle).

    test(puzzle_4x4, condition(true)) :-
        Rows = 
            [
                [_, 1, _, 0],
                [_, _, 0, 1],
                [_, 0, _, _],
                [1, 1, _, 0]
            ],
        binary_puzzle(Rows),
        maplist(label, Rows),
        Rows == 
            [
                [0, 1, 1, 0],
                [1, 0, 0, 1],
                [0, 0, 1, 1],
                [1, 1, 0, 0]
            ].

    test(puzzle_6x6, condition(pending)) :-
        Rows = 
            [
                [1, _, _, 0, _, _],
                [_, _, 0, 0, _, 1],
                [_, 0, 0, _, _, 1],
                [_, _, _, _, _, _],
                [0, 0, _, 1, _, _],
                [_, 1, _, _, 0, 0]
            ],
        binary_puzzle(Rows),
        maplist(label, Rows),
        Rows == 
            [
                [1, 0, 1, 0, 1, 0],
                [0, 1, 0, 0, 1, 1],
                [1, 0, 0, 1, 0, 1],
                [0, 1, 1, 0, 1, 0],
                [0, 0, 1, 1, 0, 1],
                [1, 1, 0, 1, 0, 0]
            ].

    test(puzzle_12x12, condition(pending)) :-
        Rows = 
            [
                [_, _, 1, _, _, _, _, 0, _, _, 0, _],
                [_, _, _, 1, _, 0, _, _, 1, _, _, 1],
                [_, _, 0, _, 0, _, _, _, _, 0, _, 1],
                [1, _, 0, _, _, _, 0, 0, _, _, _, _],
                [_, 1, _, _, _, _, _, _, _, _, _, 1],
                [_, _, _, _, 1, _, _, _, _, 0, _, _],
                [_, _, _, _, _, _, 1, _, 0, 0, _, _],
                [_, _, 0, _, _, _, _, 1, _, _, 1, _],
                [1, _, 0, 0, _, _, _, _, _, 0, _, _],
                [_, _, _, _, _, 1, _, _, _, 0, _, 0],
                [_, 0, _, _, _, _, 0, _, _, _, 1, _],
                [0, 0, _, 1, _, 1, _, 1, _, 1, _, _]
            ],
        binary_puzzle(Rows),
        maplist(label, Rows),
        Rows == 
            [
                [0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0],
                [0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 1],
                [1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1],
                [1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0],
                [0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1],
                [1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1],
                [0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 0],
                [1, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0],
                [1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1],
                [0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0],
                [1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0],
                [0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1]
            ].

:- end_tests(binary_puzzle).
%------------------------------------------------ 12 binary-search/binary_search
% binary_search.pl -- the exercism Prolog exercise binary-search, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/binary_search.example.pl, then its tests binary_search_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

find(List, Value, Index, Lower, Upper) :-
    Lower #=< Upper,
    MiddleIndex #= (Lower + Upper) // 2,
    nth0(MiddleIndex, List, MiddleValue),
    (MiddleValue #< Value -> find(List, Value, Index, MiddleIndex + 1, Upper);
     MiddleValue #> Value -> find(List, Value, Index, Lower, MiddleIndex - 1);
     Index = MiddleIndex, !).

find(List, Value, Index) :-
    length(List, Length),
    find(List, Value, Index, 0, Length).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(binary_search).

    test(finds_a_value_in_a_list_with_one_element, condition(true)) :-
        List = [6],
        find(List, 6, Index),
        Index == 0.

    test(finds_a_value_in_the_middle_of_a_list, condition(pending)) :-
        List = [1, 3, 4, 6, 8, 9, 11],
        find(List, 6, Index),
        Index == 3.

    test(finds_a_value_at_the_beginning_of_a_list, condition(pending)) :-
        List = [1, 3, 4, 6, 8, 9, 11],
        find(List, 1, Index),
        Index == 0.

    test(finds_a_value_at_the_end_of_a_list, condition(pending)) :-
        List = [1, 3, 4, 6, 8, 9, 11],
        find(List, 11, Index),
        Index == 6.

    test(finds_a_value_in_a_list_of_odd_length, condition(pending)) :-
        List = [1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 634],
        find(List, 144, Index),
        Index == 9.

    test(finds_a_value_in_a_list_of_even_length, condition(pending)) :-
        List = [1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377],
        find(List, 21, Index),
        Index == 5.

    test(identifies_that_a_value_is_not_included_in_the_List, [fail, condition(pending)]) :-
        List = [1, 3, 4, 6, 8, 9, 11],
        find(List, 7, _).

    test(a_value_smaller_than_the_Lists_smallest_value_is_not_found, [fail, condition(pending)]) :-
        List = [1, 3, 4, 6, 8, 9, 11],
        find(List, 0, _).

    test(a_value_larger_than_the_Lists_largest_value_is_not_found, [fail, condition(pending)]) :-
        List = [1, 3, 4, 6, 8, 9, 11],
        find(List, 13, _).

    test(nothing_is_found_in_an_empty_List, [fail, condition(pending)]) :-
        List = [],
        find(List, 1, _).

    test(nothing_is_found_when_the_left_and_right_bounds_cross, [fail, condition(pending)]) :-
        List = [1, 2],
        find(List, 0, _).

:- end_tests(binary_search).
%-------------------------------------- 13 binary-search-tree/binary_search_tree
% binary_search_tree.pl -- the exercism Prolog exercise binary-search-tree, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/binary_search_tree.example.pl, then its tests binary_search_tree_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
insert(Data, nil, tree_node(Data, nil, nil)) :- !.
insert(Data, tree_node(TreeData, Left, Right), NewTree) :-
    (Data =< TreeData ->
        insert(Data, Left, NewLeft), NewTree = tree_node(TreeData, NewLeft, Right);
        insert(Data, Right, NewRight), NewTree = tree_node(TreeData, Left, NewRight)).

from_data(Data, Tree) :- foldl(insert, Data, nil, Tree).

to_data(nil, []).
to_data(tree_node(TreeData, Left, Right), Data) :-
    to_data(Left, LeftData),
    to_data(Right, RightData),
    append(LeftData, [TreeData|RightData], Data).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(binary_search_tree).

    test(data_is_retained, condition(true)) :-
        from_data([4], Tree),
        Tree == tree_node(4, nil, nil).

    test(smaller_number_at_left_node, condition(pending)) :-
        from_data([4, 2], Tree),
        Tree == tree_node(4, tree_node(2, nil, nil), nil).

    test(same_number_at_left_node, condition(pending)) :-
        from_data([4, 4], Tree),
        Tree == tree_node(4, tree_node(4, nil, nil), nil).

    test(greater_number_at_right_node, condition(pending)) :-
        from_data([4, 5], Tree),
        Tree == tree_node(4, nil, tree_node(5, nil, nil)).

    test(can_create_complex_tree, condition(pending)) :-
        from_data([4, 2, 6, 1, 3, 5, 7], Tree),
        Tree == tree_node(
            4,
            tree_node(2, tree_node(1, nil, nil), tree_node(3, nil, nil)),
            tree_node(6, tree_node(5, nil, nil), tree_node(7, nil, nil))
        ).

    test(can_sort_single_number, condition(pending)) :-
        from_data([2], Tree),
        to_data(Tree, Data),
        Data == [2].

    test(can_sort_if_second_number_is_smaller_than_first, condition(pending)) :-
        from_data([2, 1], Tree),
        to_data(Tree, Data),
        Data == [1, 2].

    test(can_sort_if_second_number_is_same_as_first, condition(pending)) :-
        from_data([2, 2], Tree),
        to_data(Tree, Data),
        Data == [2, 2].

    test(can_sort_if_second_number_is_greater_than_first, condition(pending)) :-
        from_data([2, 3], Tree),
        to_data(Tree, Data),
        Data == [2, 3].

    test(can_sort_complex_tree, condition(pending)) :-
        from_data([2, 1, 3, 6, 7, 5], Tree),
        to_data(Tree, Data),
        Data == [1, 2, 3, 5, 6, 7].

:- end_tests(binary_search_tree).
%-------------------------------------------------------------------- 14 bob/bob
% bob.pl -- the exercism Prolog exercise bob, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/bob.example.pl, then its tests bob_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(dcg/basics)).

... --> [] | [_], ... .

non_lower --> [C], { nonvar(C), \+ code_type(C, 'lower') }.
non_lowers --> non_lower, non_lowers.
non_lowers --> [].

upper --> [C], { nonvar(C), code_type(C, 'upper') }.

silence --> blanks, eol.
question --> ..., "?", blanks, eol.
yell --> non_lowers, upper, non_lowers, eol.

matches(Sentence, Pattern) :-
    string_codes(Sentence, SentenceChars),
    phrase(Pattern, SentenceChars).

hey(Sentence, "Fine. Be that way!") :- matches(Sentence, silence), !.
hey(Sentence, "Calm down, I know what I'm doing!") :- matches(Sentence, yell), matches(Sentence, question), !.
hey(Sentence, "Sure.") :- matches(Sentence, question), !.
hey(Sentence, "Whoa, chill out!") :- matches(Sentence, yell), !.
hey(_, "Whatever.") :- !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(bob).

test(stating_something, condition(true)) :-
    hey("Tom-ay-to, tom-aaaah-to.", Response),
    Response == "Whatever.".

test(shouting, condition(pending)) :-
    hey("WATCH OUT!", Response),
    Response == "Whoa, chill out!".

test(shouting_gibberish, condition(pending)) :-
    hey("FCECDFCAAB", Response),
    Response == "Whoa, chill out!".

test(asking_a_question, condition(pending)) :-
    hey("Does this cryogenic chamber make me look fat?", Response),
    Response == "Sure.".

test(asking_a_numeric_question, condition(pending)) :-
    hey("You are, what, like 15?", Response),
    Response == "Sure.".

test(asking_gibberish, condition(pending)) :-
    hey("fffbbcbeab?", Response),
    Response == "Sure.".

test(talking_forcefully, condition(pending)) :-
    hey("Hi there!", Response),
    Response == "Whatever.".

test(using_acronyms_in_regular_speech, condition(pending)) :-
    hey("It's OK if you don't want to go work for NASA.", Response),
    Response == "Whatever.".

test(forceful_question, condition(pending)) :-
    hey("WHAT'S GOING ON?", Response),
    Response == "Calm down, I know what I'm doing!".

test(shouting_numbers, condition(pending)) :-
    hey("1, 2, 3 GO!", Response),
    Response == "Whoa, chill out!".

test(no_letters, condition(pending)) :-
    hey("1, 2, 3", Response),
    Response == "Whatever.".

test(question_with_no_letters, condition(pending)) :-
    hey("4?", Response),
    Response == "Sure.".

test(shouting_with_special_characters, condition(pending)) :-
    hey("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!", Response),
    Response == "Whoa, chill out!".

test(shouting_with_no_exclamation_mark, condition(pending)) :-
    hey("I HATE THE DENTIST", Response),
    Response == "Whoa, chill out!".

test(statement_containing_question_mark, condition(pending)) :-
    hey("Ending with ? means a question.", Response),
    Response == "Whatever.".

test(non_letters_with_question, condition(pending)) :-
    hey(":) ?", Response),
    Response == "Sure.".

test(prattling_on, condition(pending)) :-
    hey("Wait! Hang on. Are you going to be OK?", Response),
    Response == "Sure.".

test(silence, condition(pending)) :-
    hey("", Response),
    Response == "Fine. Be that way!".

test(prolonged_silence, condition(pending)) :-
    hey("          ", Response),
    Response == "Fine. Be that way!".

test(alternate_silence, condition(pending)) :-
    hey("\t\t\t\t\t\t\t\t\t\t", Response),
    Response == "Fine. Be that way!".

test(multiple_line_question, condition(pending)) :-
    hey("\nDoes this cryogenic chamber make me look fat?\nNo.", Response),
    Response == "Whatever.".

test(starting_with_whitespace, condition(pending)) :-
    hey("         hmmmmmmm...", Response),
    Response == "Whatever.".

test(ending_with_whitespace, condition(pending)) :-
    hey("Okay if like my  spacebar  quite a bit?   ", Response),
    Response == "Sure.".

test(other_whitespace, condition(pending)) :-
    hey("\n\r \t", Response),
    Response == "Fine. Be that way!".

test(non_question_ending_with_whitespace, condition(pending)) :-
    hey("This is a statement ending with whitespace      ", Response),
    Response == "Whatever.".

:- end_tests(bob).
%------------------------------------------------------ 15 book-store/book_store
% book_store.pl -- the exercism Prolog exercise book-store, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/book_store.example.pl, then its tests book_store_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

discounted_price(1, 800).
discounted_price(2, 1520).
discounted_price(3, 2160).
discounted_price(4, 2560).
discounted_price(5, 3000).

tally([], []) :- !.
tally(Basket, Tally) :- aggregate(set(Book-Count), aggregate(count, member(Book, Basket), Count), Tally).

decrement(Tally, [], Tally) :- !.
decrement(Tally, [Book|Books], UpdatedTally) :-
    select(Book-Count, Tally, TallyWithoutBook),
    NewCount is Count - 1,
    (NewCount =:= 0 ->
        NewTally = TallyWithoutBook; 
        NewTally = [Book-NewCount|TallyWithoutBook]),
    decrement(NewTally, Books, UpdatedTally).

groups([], []).
groups(Tally, [Group|Groups]) :-
    pairs_keys(Tally, Books),
    length(Books, Group),
    decrement(Tally, Books, UpdatedTally),
    groups(UpdatedTally, Groups).

price(Groups, Price) :-
    include(=(5), Groups, Fives), length(Fives, NumFives),
    include(=(3), Groups, Threes), length(Threes, NumThrees),
    maplist(discounted_price, Groups, DiscountedPrices),
    sum_list(DiscountedPrices, DiscountedPrice),
    Price is DiscountedPrice - min(NumFives, NumThrees) * 40.

total(Basket, Price) :-
    tally(Basket, Tally),
    groups(Tally, Groups),
    price(Groups, Price),
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(book_store).

    test(only_a_single_book, condition(true)) :-
        Basket = [1],
        total(Basket, Price),
        Price == 800.

    test(two_of_the_same_book, condition(pending)) :-
        Basket = [2, 2],
        total(Basket, Price),
        Price == 1600.

    test(empty_basket, condition(pending)) :-
        Basket = [],
        total(Basket, Price),
        Price == 0.

    test(two_different_books, condition(pending)) :-
        Basket = [1, 2],
        total(Basket, Price),
        Price == 1520.

    test(three_different_books, condition(pending)) :-
        Basket = [1, 2, 3],
        total(Basket, Price),
        Price == 2160.

    test(four_different_books, condition(pending)) :-
        Basket = [1, 2, 3, 4],
        total(Basket, Price),
        Price == 2560.

    test(five_different_books, condition(pending)) :-
        Basket = [1, 2, 3, 4, 5],
        total(Basket, Price),
        Price == 3000.

    test(two_groups_of_four_is_cheaper_than_group_of_five_plus_group_of_three, condition(pending)) :-
        Basket = [1, 1, 2, 2, 3, 3, 4, 5],
        total(Basket, Price),
        Price == 5120.

    test(two_groups_of_four_is_cheaper_than_groups_of_five_and_three, condition(pending)) :-
        Basket = [1, 1, 2, 3, 4, 4, 5, 5],
        total(Basket, Price),
        Price == 5120.

    test(group_of_four_plus_group_of_two_is_cheaper_than_two_groups_of_three, condition(pending)) :-
        Basket = [1, 1, 2, 2, 3, 4],
        total(Basket, Price),
        Price == 4080.

    test(two_each_of_first_four_books_and_one_copy_each_of_rest, condition(pending)) :-
        Basket = [1, 1, 2, 2, 3, 3, 4, 4, 5],
        total(Basket, Price),
        Price == 5560.

    test(two_copies_of_each_book, condition(pending)) :-
        Basket = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5],
        total(Basket, Price),
        Price == 6000.

    test(three_copies_of_first_book_and_two_each_of_remaining, condition(pending)) :-
        Basket = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 1],
        total(Basket, Price),
        Price == 6800.

    test(three_each_of_first_two_books_and_two_each_of_remaining_books, condition(pending)) :-
        Basket = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 1, 2],
        total(Basket, Price),
        Price == 7520.

    test(four_groups_of_four_are_cheaper_than_two_groups_each_of_five_and_three, condition(pending)) :-
        Basket = [1, 1, 2, 2, 3, 3, 4, 5, 1, 1, 2, 2, 3, 3, 4, 5],
        total(Basket, Price),
        Price == 10240.

    test(check_that_groups_of_four_are_created_properly_even_when_there_are_more_groups_of_three_than_groups_of_five, condition(pending)) :-
        Basket = [1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 4, 4, 5, 5],
        total(Basket, Price),
        Price == 14560.

    test(one_group_of_one_and_four_is_cheaper_than_one_group_of_two_and_three, condition(pending)) :-
        Basket = [1, 1, 2, 3, 4],
        total(Basket, Price),
        Price == 3360.

    test(one_group_of_one_and_two_plus_three_groups_of_four_is_cheaper_than_one_group_of_each_size, condition(pending)) :-
        Basket = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5],
        total(Basket, Price),
        Price == 10000.

:- end_tests(book_store).
%---------------------------------------------------- 16 bottle-song/bottle_song
% bottle_song.pl -- the exercism Prolog exercise bottle-song, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/bottle_song.example.pl, then its tests bottle_song_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
count(0, "No").
count(1, "One").
count(2, "Two").
count(3, "Three").
count(4, "Four").
count(5, "Five").
count(6, "Six").
count(7, "Seven").
count(8, "Eight").
count(9, "Nine").
count(10, "Ten").

lower_count(N, LowerCount) :-
    count(N, Count),
    string_lower(Count, LowerCount).

bottles(1, "bottle") :- !.
bottles(_, "bottles").

hanging_on_the_wall(N, Lyric) :-
    count(N, Count),
    bottles(N, Bottles),
    format(string(Lyric), "~s green ~s hanging on the wall,", [Count, Bottles]).

future_hanging_on_the_wall(N, Lyric) :-
    NextN is N - 1,
    lower_count(NextN, Count),
    bottles(NextN, Bottles),
    format(string(Lyric), "There'll be ~s green ~s hanging on the wall.", [Count, Bottles]).

accidentally_fall("And if one green bottle should accidentally fall,").

verse(N, Lyrics) :- 
    hanging_on_the_wall(N, HangingOnTheWall),
    accidentally_fall(AccidentallyFall),
    future_hanging_on_the_wall(N, FutureHangingOnTheWall),
    Lyrics = [HangingOnTheWall, HangingOnTheWall, AccidentallyFall, FutureHangingOnTheWall].

combine_verses([], []).
combine_verses([Verse], Verse).
combine_verses([Verse|Rest], Verses) :-
    combine_verses(Rest, RestVerses),
    append(Verse,[""|RestVerses], Verses).

recite(Start, Lyrics) :- recite(Start, 1, Lyrics).
recite(Start, Count, Lyrics) :-
    End is Start - (Count - 1),
    numlist(End, Start, VerseNumbers),
    reverse(VerseNumbers, VerseNumbersDescending),
    maplist(verse, VerseNumbersDescending, Verses),
    combine_verses(Verses, Lyrics), !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(bottle_song).

    test(first_generic_verse, condition(true)) :-
        recite(10, Lyrics),
        Lyrics == [
            "Ten green bottles hanging on the wall,",
            "Ten green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be nine green bottles hanging on the wall."
        ].

    test(last_generic_verse, condition(pending)) :-
        recite(3, Lyrics),
        Lyrics == [
            "Three green bottles hanging on the wall,",
            "Three green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be two green bottles hanging on the wall."
        ].

    test(verse_with_2_bottles, condition(pending)) :-
        recite(2, Lyrics),
        Lyrics == [
            "Two green bottles hanging on the wall,",
            "Two green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be one green bottle hanging on the wall."
        ].

    test(verse_with_1_bottle, condition(pending)) :-
        recite(1, Lyrics),
        Lyrics == [
            "One green bottle hanging on the wall,",
            "One green bottle hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be no green bottles hanging on the wall."
        ].

    test(first_two_verses, condition(pending)) :-
        recite(10, 2, Lyrics),
        Lyrics == [
            "Ten green bottles hanging on the wall,",
            "Ten green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be nine green bottles hanging on the wall.",
            "",
            "Nine green bottles hanging on the wall,",
            "Nine green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be eight green bottles hanging on the wall."
        ].

    test(last_three_verses, condition(pending)) :-
        recite(3, 3, Lyrics),
        Lyrics == [
            "Three green bottles hanging on the wall,",
            "Three green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be two green bottles hanging on the wall.",
            "",
            "Two green bottles hanging on the wall,",
            "Two green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be one green bottle hanging on the wall.",
            "",
            "One green bottle hanging on the wall,",
            "One green bottle hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be no green bottles hanging on the wall."
        ].

    test(all_verses, condition(pending)) :-
        recite(10, 10, Lyrics),
        Lyrics == [
            "Ten green bottles hanging on the wall,",
            "Ten green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be nine green bottles hanging on the wall.",
            "",
            "Nine green bottles hanging on the wall,",
            "Nine green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be eight green bottles hanging on the wall.",
            "",
            "Eight green bottles hanging on the wall,",
            "Eight green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be seven green bottles hanging on the wall.",
            "",
            "Seven green bottles hanging on the wall,",
            "Seven green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be six green bottles hanging on the wall.",
            "",
            "Six green bottles hanging on the wall,",
            "Six green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be five green bottles hanging on the wall.",
            "",
            "Five green bottles hanging on the wall,",
            "Five green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be four green bottles hanging on the wall.",
            "",
            "Four green bottles hanging on the wall,",
            "Four green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be three green bottles hanging on the wall.",
            "",
            "Three green bottles hanging on the wall,",
            "Three green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be two green bottles hanging on the wall.",
            "",
            "Two green bottles hanging on the wall,",
            "Two green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be one green bottle hanging on the wall.",
            "",
            "One green bottle hanging on the wall,",
            "One green bottle hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be no green bottles hanging on the wall."
        ].

:- end_tests(bottle_song).
%-------------------------------------------------------------- 17 change/change
% change.pl -- the exercism Prolog exercise change, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/change.example.pl, then its tests change_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
fewest_coins(Coins, Target, Change) :-
    make_change(Target, Coins, [], Change).

make_change(Val, Coins, Wallet, Change) :-
    (   Val=:=0
    ->  sort(0, @=<, Wallet, Change)
    ;   include(choose(Val, Coins), Coins, Chosen),
        (   max_list(Chosen, Coin)
        ;   min_list(Coins, Coin), Coin=<Val
        ), !,
        append(Wallet, [Coin], Ching),
        make_change(Val-Coin, Coins, Ching, Change)
    ).

choose(Val, Coins, Coin) :-
    Coin=<Val,
    Diff is Val-Coin,
    (   Diff=:=0
    ;   \+ include({Diff}/[C]>>(C>1, 0 is Diff mod C), Coins, [])
    ).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(change).

    test(change_for_1_cent, condition(true)) :-
        fewest_coins([1, 5, 10, 25], 1, Change),
        Change == [1].

    test(single_coin_change, condition(pending)) :-
        fewest_coins([1, 5, 10, 25, 100], 25, Change),
        Change == [25].

    test(multiple_coin_change, condition(pending)) :-
        fewest_coins([1, 5, 10, 25, 100], 15, Change),
        Change == [5, 10].

    test(change_with_lilliputian_coins, condition(pending)) :-
        fewest_coins([1, 4, 15, 20, 50], 23, Change),
        Change == [4, 4, 15].

    test(change_with_lower_elbonia_coins, condition(pending)) :-
        fewest_coins([1, 5, 10, 21, 25], 63, Change),
        Change == [21, 21, 21].

    test(large_target_values, condition(pending)) :-
        fewest_coins([1, 2, 5, 10, 20, 50, 100], 999, Change),
        Change == [2, 2, 5, 20, 20, 50, 100, 100, 100, 100, 100, 100, 100, 100, 100].

    test(possible_change_without_unit_coins_available, condition(pending)) :-
        fewest_coins([2, 5, 10, 20, 50], 21, Change),
        Change == [2, 2, 2, 5, 10].

    test(another_possible_change_without_unit_coins_available, condition(pending)) :-
        fewest_coins([4, 5], 27, Change),
        Change == [4, 4, 4, 5, 5, 5].

    test(no_coins_make_0_change, condition(pending)) :-
        fewest_coins([1, 5, 10, 21, 25], 0, Change),
        Change == [].

    test(greedy_approach_is_not_always_optimal, condition(pending)) :-
        fewest_coins([1, 10, 11], 20, Change),
        Change == [10, 10].

    test(error_testing_for_change_smaller_than_the_smallest_of_coins, [fail, condition(pending)]) :-
        fewest_coins([5, 10], 3, _).

    test(error_if_no_combination_can_add_up_to_target, [fail, condition(pending)]) :-
        fewest_coins([5, 10], 94, _).

    test(cannot_find_negative_change_values, [fail, condition(pending)]) :-
        fewest_coins([1, 2, 5], -5, _).

:- end_tests(change).
%------------------------------------------ 18 cheryls-birthday/cheryls_birthday
% cheryls_birthday.pl -- the exercism Prolog exercise cheryls-birthday, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/cheryls_birthday.example.pl, then its tests cheryls_birthday_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
possible_date(may, 15).
possible_date(may, 16). 
possible_date(may, 19).
possible_date(june, 17).
possible_date(june, 18).
possible_date(july, 14).
possible_date(july, 16).
possible_date(august, 14).
possible_date(august, 15).
possible_date(august, 17).

day_with_unique_month(Day) :-
    possible_date(Month, Day),
    findall(Day1, possible_date(Month, Day1), Days),
    length(Days, 1).

month_with_unique_day(Month):-
    possible_date(Month, Day),
    findall(Month1, possible_date(Month1, Day), Months),
    length(Months, 1).

statement_1(Month, Day):-
    possible_date(Month, Day),
    not(day_with_unique_month(Day)),
    not(month_with_unique_day(Month)).

statement_2(Month, Day):-
    possible_date(Month, Day),
    findall(Month1, statement_1(Month1, Day), [Month]).

statement_3(Month, Day):-
    possible_date(Month, Day),
    findall(Day1, statement_2(Month, Day1), [Day]).

cheryls_birthday(Month, Day) :-
    statement_1(Month, Day),
    statement_2(Month, Day),
    statement_3(Month, Day),
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(cheryls_birthday).

    test(cheryls_birthday, condition(true)) :-
        cheryls_birthday(Month, Day),
        Month == july,
        Day == 16.

:- end_tests(cheryls_birthday).
%---------------------------------------------------------------- 19 clock/clock
% clock.pl -- the exercism Prolog exercise clock, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/clock.example.pl, then its tests clock_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

create_clock(Hours, Minutes, clock(NormalizedMinutes)) :-
    NormalizedMinutes #= (Hours * 60 + Minutes) mod 1440.

display(clock(NormalizedMinutes), Time) :-
    Hours #= NormalizedMinutes // 60,
    Minutes #= NormalizedMinutes mod 60,
    format(string(Time), "~|~`0t~d~2+:~|~`0t~d~2+", [Hours, Minutes]).

add_minutes(clock(NormalizedMinutes), Minutes, NewClock) :-
    NewMinutes #= NormalizedMinutes + Minutes,
    create_clock(0, NewMinutes, NewClock).

subtract_minutes(Clock, Minutes, NewClock) :-
    add_minutes(Clock, -Minutes, NewClock).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(clock).

    test(on_the_hour, condition(true)) :-
        create_clock(8, 0, Clock),
        display(Clock, Time),
        Time == "08:00".

    test(past_the_hour, condition(pending)) :-
        create_clock(11, 9, Clock),
        display(Clock, Time),
        Time == "11:09".

    test(midnight_is_zero_hours, condition(pending)) :-
        create_clock(24, 0, Clock),
        display(Clock, Time),
        Time == "00:00".

    test(hour_rolls_over, condition(pending)) :-
        create_clock(25, 0, Clock),
        display(Clock, Time),
        Time == "01:00".

    test(hour_rolls_over_continuously, condition(pending)) :-
        create_clock(100, 0, Clock),
        display(Clock, Time),
        Time == "04:00".

    test(sixty_minutes_is_next_hour, condition(pending)) :-
        create_clock(1, 60, Clock),
        display(Clock, Time),
        Time == "02:00".

    test(minutes_roll_over, condition(pending)) :-
        create_clock(0, 160, Clock),
        display(Clock, Time),
        Time == "02:40".

    test(minutes_roll_over_continuously, condition(pending)) :-
        create_clock(0, 1723, Clock),
        display(Clock, Time),
        Time == "04:43".

    test(hour_and_minutes_roll_over, condition(pending)) :-
        create_clock(25, 160, Clock),
        display(Clock, Time),
        Time == "03:40".

    test(hour_and_minutes_roll_over_continuously, condition(pending)) :-
        create_clock(201, 3001, Clock),
        display(Clock, Time),
        Time == "11:01".

    test(hour_and_minutes_roll_over_to_exactly_midnight, condition(pending)) :-
        create_clock(72, 8640, Clock),
        display(Clock, Time),
        Time == "00:00".

    test(negative_hour, condition(pending)) :-
        create_clock(-1, 15, Clock),
        display(Clock, Time),
        Time == "23:15".

    test(negative_hour_rolls_over, condition(pending)) :-
        create_clock(-25, 0, Clock),
        display(Clock, Time),
        Time == "23:00".

    test(negative_hour_rolls_over_continuously, condition(pending)) :-
        create_clock(-91, 0, Clock),
        display(Clock, Time),
        Time == "05:00".

    test(negative_minutes, condition(pending)) :-
        create_clock(1, -40, Clock),
        display(Clock, Time),
        Time == "00:20".

    test(negative_minutes_roll_over, condition(pending)) :-
        create_clock(1, -160, Clock),
        display(Clock, Time),
        Time == "22:20".

    test(negative_minutes_roll_over_continuously, condition(pending)) :-
        create_clock(1, -4820, Clock),
        display(Clock, Time),
        Time == "16:40".

    test(negative_sixty_minutes_is_previous_hour, condition(pending)) :-
        create_clock(2, -60, Clock),
        display(Clock, Time),
        Time == "01:00".

    test(negative_hour_and_minutes_both_roll_over, condition(pending)) :-
        create_clock(-25, -160, Clock),
        display(Clock, Time),
        Time == "20:20".

    test(negative_hour_and_minutes_both_roll_over_continuously, condition(pending)) :-
        create_clock(-121, -5810, Clock),
        display(Clock, Time),
        Time == "22:10".

    test(add_minutes, condition(pending)) :-
        create_clock(10, 0, Clock),
        add_minutes(Clock, 3, NewClock),
        display(NewClock, Time),
        Time == "10:03".

    test(add_no_minutes, condition(pending)) :-
        create_clock(6, 41, Clock),
        add_minutes(Clock, 0, NewClock),
        display(NewClock, Time),
        Time == "06:41".

    test(add_to_next_hour, condition(pending)) :-
        create_clock(0, 45, Clock),
        add_minutes(Clock, 40, NewClock),
        display(NewClock, Time),
        Time == "01:25".

    test(add_more_than_one_hour, condition(pending)) :-
        create_clock(10, 0, Clock),
        add_minutes(Clock, 61, NewClock),
        display(NewClock, Time),
        Time == "11:01".

    test(add_more_than_two_hours_with_carry, condition(pending)) :-
        create_clock(0, 45, Clock),
        add_minutes(Clock, 160, NewClock),
        display(NewClock, Time),
        Time == "03:25".

    test(add_across_midnight, condition(pending)) :-
        create_clock(23, 59, Clock),
        add_minutes(Clock, 2, NewClock),
        display(NewClock, Time),
        Time == "00:01".

    test(add_more_than_one_day_1500_min_25_hrs, condition(pending)) :-
        create_clock(5, 32, Clock),
        add_minutes(Clock, 1500, NewClock),
        display(NewClock, Time),
        Time == "06:32".

    test(add_more_than_two_days, condition(pending)) :-
        create_clock(1, 1, Clock),
        add_minutes(Clock, 3500, NewClock),
        display(NewClock, Time),
        Time == "11:21".

    test(subtract_minutes, condition(pending)) :-
        create_clock(10, 3, Clock),
        subtract_minutes(Clock, 3, NewClock),
        display(NewClock, Time),
        Time == "10:00".

    test(subtract_to_previous_hour, condition(pending)) :-
        create_clock(10, 3, Clock),
        subtract_minutes(Clock, 30, NewClock),
        display(NewClock, Time),
        Time == "09:33".

    test(subtract_more_than_an_hour, condition(pending)) :-
        create_clock(10, 3, Clock),
        subtract_minutes(Clock, 70, NewClock),
        display(NewClock, Time),
        Time == "08:53".

    test(subtract_across_midnight, condition(pending)) :-
        create_clock(0, 3, Clock),
        subtract_minutes(Clock, 4, NewClock),
        display(NewClock, Time),
        Time == "23:59".

    test(subtract_more_than_two_hours, condition(pending)) :-
        create_clock(0, 0, Clock),
        subtract_minutes(Clock, 160, NewClock),
        display(NewClock, Time),
        Time == "21:20".

    test(subtract_more_than_two_hours_with_borrow, condition(pending)) :-
        create_clock(6, 15, Clock),
        subtract_minutes(Clock, 160, NewClock),
        display(NewClock, Time),
        Time == "03:35".

    test(subtract_more_than_one_day_1500_min_25_hrs, condition(pending)) :-
        create_clock(5, 32, Clock),
        subtract_minutes(Clock, 1500, NewClock),
        display(NewClock, Time),
        Time == "04:32".

    test(subtract_more_than_two_days, condition(pending)) :-
        create_clock(2, 20, Clock),
        subtract_minutes(Clock, 3000, NewClock),
        display(NewClock, Time),
        Time == "00:20".

    test(clocks_with_same_time, condition(pending)) :-
        create_clock(15, 37, Clock1),
        create_clock(15, 37, Clock2),
        Clock1 == Clock2.

    test(clocks_a_minute_apart, condition(pending)) :-
        create_clock(15, 36, Clock1),
        create_clock(15, 37, Clock2),
        Clock1 \= Clock2.

    test(clocks_an_hour_apart, condition(pending)) :-
        create_clock(14, 37, Clock1),
        create_clock(15, 37, Clock2),
        Clock1 \= Clock2.

    test(clocks_with_hour_overflow, condition(pending)) :-
        create_clock(10, 37, Clock1),
        create_clock(34, 37, Clock2),
        Clock1 == Clock2.

    test(clocks_with_hour_overflow_by_several_days, condition(pending)) :-
        create_clock(3, 11, Clock1),
        create_clock(99, 11, Clock2),
        Clock1 == Clock2.

    test(clocks_with_negative_hour, condition(pending)) :-
        create_clock(22, 40, Clock1),
        create_clock(-2, 40, Clock2),
        Clock1 == Clock2.

    test(clocks_with_negative_hour_that_wraps, condition(pending)) :-
        create_clock(17, 3, Clock1),
        create_clock(-31, 3, Clock2),
        Clock1 == Clock2.

    test(clocks_with_negative_hour_that_wraps_multiple_times, condition(pending)) :-
        create_clock(13, 49, Clock1),
        create_clock(-83, 49, Clock2),
        Clock1 == Clock2.

    test(clocks_with_minute_overflow, condition(pending)) :-
        create_clock(0, 1, Clock1),
        create_clock(0, 1441, Clock2),
        Clock1 == Clock2.

    test(clocks_with_minute_overflow_by_several_days, condition(pending)) :-
        create_clock(2, 2, Clock1),
        create_clock(2, 4322, Clock2),
        Clock1 == Clock2.

    test(clocks_with_negative_minute, condition(pending)) :-
        create_clock(2, 40, Clock1),
        create_clock(3, -20, Clock2),
        Clock1 == Clock2.

    test(clocks_with_negative_minute_that_wraps, condition(pending)) :-
        create_clock(4, 10, Clock1),
        create_clock(5, -1490, Clock2),
        Clock1 == Clock2.

    test(clocks_with_negative_minute_that_wraps_multiple_times, condition(pending)) :-
        create_clock(6, 15, Clock1),
        create_clock(6, -4305, Clock2),
        Clock1 == Clock2.

    test(clocks_with_negative_hours_and_minutes, condition(pending)) :-
        create_clock(7, 32, Clock1),
        create_clock(-12, -268, Clock2),
        Clock1 == Clock2.

    test(clocks_with_negative_hours_and_minutes_that_wrap, condition(pending)) :-
        create_clock(18, 7, Clock1),
        create_clock(-54, -11513, Clock2),
        Clock1 == Clock2.

    test(full_clock_and_zeroed_clock, condition(pending)) :-
        create_clock(24, 0, Clock1),
        create_clock(0, 0, Clock2),
        Clock1 == Clock2.

:- end_tests(clock).
%-------------------------------------- 20 collatz-conjecture/collatz_conjecture
% collatz_conjecture.pl -- the exercism Prolog exercise collatz-conjecture, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/collatz_conjecture.example.pl, then its tests collatz_conjecture_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
collatz_steps(1, 0) :- !.

collatz_steps(N, Steps) :- 
    N > 1,
    (0 is mod(N, 2), M is (N / 2); M is (N * 3 + 1)),
    collatz_steps(M, MSteps),
    Steps is MSteps + 1,
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(collatz_conjecture).

    test(zero_steps_for_one, condition(true)) :-
        collatz_steps(1, Steps), Steps == 0.

    test(divide_if_even, condition(pending)) :-
        collatz_steps(16, Steps), Steps == 4.

    test(even_and_odd_steps, condition(pending)) :-
        collatz_steps(12, Steps), Steps == 9.

    test(large_number_of_even_and_odd_steps, condition(pending)) :-
        collatz_steps(1_000_000, Steps), Steps == 152.

    test(zero_is_an_error, [fail, condition(pending)]) :-
        collatz_steps(0, _).

    test(negative_value_is_an_error, [fail, condition(pending)]) :-
        collatz_steps(-1, _).

:- end_tests(collatz_conjecture).
%-------------------------------------------- 21 complex-numbers/complex_numbers
% complex_numbers.pl -- the exercism Prolog exercise complex-numbers, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/complex_numbers.example.pl, then its tests complex_numbers_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
real((R,_), R).
imaginary((_,I), I).

conjugate((R, I), (R, Ir)) :- Ir is 0-I.
abs((R,I), Rr) :- Rr is (R^2 + I^2)^(1/2).

add((Ra,Ia), (Rb,Ib), (Rr,Ir)) :- Rr is Ra+Rb, Ir is Ia+Ib.
sub((Ra,Ia), (Rb,Ib), (Rr,Ir)) :- Rr is Ra-Rb, Ir is Ia-Ib.

mul((Ra,Ia), (Rb,Ib), (Rr,Ir)) :-
  Rr is (Ra*Rb - Ia*Ib), Ir is (Ra*Ib + Ia*Rb).

div((Ra,Ia), (Rb,Ib), (Rr,Ir)) :-
  Y is (Rb^2 + Ib^2), Rr is (Ra*Rb + Ia*Ib)/Y, Ir is (Ia*Rb - Ra*Ib)/Y.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(real_part).

    test(real_part_of_a_purely_real_number, condition(true)) :-
        real((1,0),R), R =:= 1.

    test(real_part_of_a_purely_imaginary_number, condition(pending)) :-
        real((0,1),R), R =:= 0.

    test(real_part_of_a_number_with_real_and_imaginary_part, condition(pending)) :-
        real((1,2),R), R =:= 1.

:- end_tests(real_part).


:- begin_tests(imaginary_part).

    test(imaginary_part_of_a_purely_real_number, condition(pending)) :-
        imaginary((1,0),I), I =:= 0.

    test(imaginary_part_of_a_purely_imaginary_number, condition(pending)) :-
        imaginary((0,1),I), I =:= 1.

    test(imaginary_part_of_a_number_with_real_and_imaginary_part, condition(pending)) :-
        imaginary((1,2),I), I =:= 2.

:- end_tests(imaginary_part).


:- begin_tests(addition).

    test(add_purely_real_numbers, condition(pending)) :-
        add((1,0), (2,0), (X,Y)), X =:= 3, Y =:= 0.

    test(add_purely_imaginary_numbers, condition(pending)) :-
        add((0,1), (0,2), (X,Y)), X =:= 0, Y =:= 3.

    test(add_numbers_with_real_and_imaginary_part, condition(pending)) :-
        add((1,2), (3,4), (X,Y)), X =:= 4, Y =:= 6.

:- end_tests(addition).


:- begin_tests(subtraction).

    test(subtract_purely_real_numbers, condition(pending)) :-
        sub((1,0), (2,0), (X,Y)), X =:= -1, Y =:= 0.

    test(subtract_purely_imaginary_numbers, condition(pending)) :-
        sub((0,1), (0,2), (X,Y)), X =:= 0, Y =:= -1.

    test(subtract_numbers_with_real_and_imaginary_part, condition(pending)) :-
        sub((1,2), (3,4), (X,Y)), X =:= -2, Y =:= -2.

:- end_tests(subtraction).


:- begin_tests(multiplication).

    test(multiply_purely_real_numbers, condition(pending)) :-
        mul((1,0), (2,0), (X,Y)), X =:= 2, Y =:= 0.

    test(multiply_purely_imaginary_numbers, condition(pending)) :-
        mul((0,1), (0,2), (X,Y)), X =:= -2, Y =:= 0.

    test(multiply_numbers_with_real_and_imaginary_part, condition(pending)) :-
        mul((1,2), (3,4), (X,Y)), X =:= -5, Y =:= 10.

:- end_tests(multiplication).


:- begin_tests(division).

    test(divide_purely_real_numbers, condition(pending)) :-
        div((1,0), (2,0), (X,Y)), X =:= 0.5, Y =:= 0.

    test(divide_purely_imaginary_numbers, condition(pending)) :-
        div((0,1), (0,2), (X,Y)), X =:= 0.5, Y =:= 0.

    test(divide_numbers_with_real_and_imaginary_part, condition(pending)) :-
        div((1,2), (3,4), (X,Y)), X =:= 0.44, Y =:= 0.08.

:- end_tests(division).


:- begin_tests(absolute_value).

    test(absolute_value_of_a_positive_purely_real_number, condition(pending)) :-
        abs((5,0), Abs), Abs =:= 5.

    test(absolute_value_of_a_negative_purely_real_number, condition(pending)) :-
        abs((-5,0), Abs), Abs =:= 5.

    test(absolute_value_of_a_positive_purely_imaginary_number, condition(pending)) :-
        abs((0,5), Abs), Abs =:= 5.

    test(absolute_value_of_a_negative_purely_real_number, condition(pending)) :-
        abs((0,-5), Abs), Abs =:= 5.

    test(absolute_value_of_a_number_with_real_and_imaginary_part, condition(pending)) :-
        abs((3,4), Abs), Abs =:= 5.

    test(absolute_value_of_larger_number_with_real_and_imaginary_part, condition(pending)) :- 
        abs((68, 285), Abs), Abs =:= 293.

:- end_tests(absolute_value).


:- begin_tests(conjugate_value).

    test(conjugate_a_purely_real_number, condition(pending)) :-
        conjugate((5,0), (X,Y)), X =:= 5, Y =:= 0.

    test(conjugate_a_purely_imaginary_number, condition(pending)) :-
        conjugate((0,5), (X,Y)), X =:= 0, Y =:= -5 .

    test(conjugate_a_number_with_real_and_imaginary_part, condition(pending)) :-
        conjugate((1,1), (X,Y)), X =:= 1, Y =:= -1.

:- end_tests(conjugate_value).
%------------------------------------------------ 22 crypto-square/crypto_square
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
%------------------------------------------------------ 23 custom-set/custom_set
% custom_set.pl -- the exercism Prolog exercise custom-set, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/custom_set.example.pl, then its tests custom_set_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
create_set(set([])) :- !.
create_set(Data, set(Sorted)) :- sort(Data, Sorted).

add(Value, set(Data), Added) :- create_set([Value|Data], Added).

is_empty(set([])).

in_set(Value, set(Data)) :- member(Value, Data), !.
is_subset(set(Data1), Set2) :- maplist([Data]>>(in_set(Data, Set2)), Data1), !.
is_disjoint(set(Data1), Set2) :- maplist([Data]>>(\+ in_set(Data, Set2)), Data1), !.

difference(set(Data1), Set2, Difference) :- 
    exclude([Data]>>(in_set(Data, Set2)), Data1, Elements),
    create_set(Elements, Difference).

intersection(set(Data1), Set2, Intersection) :-
    include([Data]>>(in_set(Data, Set2)), Data1, Elements),
    create_set(Elements, Intersection).

union(set(Data1), set(Data2), Union) :-
    append(Data1, Data2, Data),
    create_set(Data, Union).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(custom_set).

    test(sets_with_no_elements_are_empty, condition(true)) :-
        create_set(Sut),
        is_empty(Sut).

    test(sets_with_elements_are_not_empty, [fail, condition(pending)]) :-
        create_set([1], Sut),
        is_empty(Sut).

    test(nothing_is_contained_in_an_empty_set, [fail, condition(pending)]) :-
        create_set(Sut),
        in_set(1, Sut).

    test(when_the_element_is_in_the_set, condition(pending)) :-
        create_set([1, 2, 3], Sut),
        in_set(1, Sut).

    test(when_the_element_is_not_in_the_set, [fail, condition(pending)]) :-
        create_set([1, 2, 3], Sut),
        in_set(4, Sut).

    test(empty_set_is_a_subset_of_another_empty_set, condition(pending)) :-
        create_set(Set1),
        create_set(Set2),
        is_subset(Set1, Set2).

    test(empty_set_is_a_subset_of_non_empty_set, condition(pending)) :-
        create_set(Set1),
        create_set([1], Set2),
        is_subset(Set1, Set2).

    test(non_empty_set_is_not_a_subset_of_empty_set, [fail, condition(pending)]) :-
        create_set([1], Set1),
        create_set(Set2),
        is_subset(Set1, Set2).

    test(set_is_a_subset_of_set_with_exact_same_elements, condition(pending)) :-
        create_set([1, 2, 3], Set1),
        create_set([1, 2, 3], Set2),
        is_subset(Set1, Set2).

    test(set_is_a_subset_of_larger_set_with_same_elements, condition(pending)) :-
        create_set([1, 2, 3], Set1),
        create_set([4, 1, 2, 3], Set2),
        is_subset(Set1, Set2).

    test(set_is_not_a_subset_of_set_that_does_not_contain_its_elements, [fail, condition(pending)]) :-
        create_set([1, 2, 3], Set1),
        create_set([4, 1, 3], Set2),
        is_subset(Set1, Set2).

    test(the_empty_set_is_disjoint_with_itself, condition(pending)) :-
        create_set(Set1),
        create_set(Set2),
        is_disjoint(Set1, Set2).

    test(empty_set_is_disjoint_with_non_empty_set, condition(pending)) :-
        create_set(Set1),
        create_set([1], Set2),
        is_disjoint(Set1, Set2).

    test(non_empty_set_is_disjoint_with_empty_set, condition(pending)) :-
        create_set([1], Set1),
        create_set(Set2),
        is_disjoint(Set1, Set2).

    test(sets_are_not_disjoint_if_they_share_an_element, [fail, condition(pending)]) :-
        create_set([1, 2], Set1),
        create_set([2, 3], Set2),
        is_disjoint(Set1, Set2).

    test(sets_are_disjoint_if_they_share_no_elements, condition(pending)) :-
        create_set([1, 2], Set1),
        create_set([3, 4], Set2),
        is_disjoint(Set1, Set2).

    test(empty_sets_are_equal, condition(pending)) :-
        create_set(Set1),
        create_set(Set2),
        Set1 == Set2.

    test(empty_set_is_not_equal_to_non_empty_set, condition(pending)) :-
        create_set(Set1),
        create_set([1, 2, 3], Set2),
        Set1 \== Set2.

    test(non_empty_set_is_not_equal_to_empty_set, condition(pending)) :-
        create_set([1, 2, 3], Set1),
        create_set(Set2),
        Set1 \== Set2.

    test(sets_with_the_same_elements_are_equal, condition(pending)) :-
        create_set([1, 2], Set1),
        create_set([2, 1], Set2),
        Set1 == Set2.

    test(sets_with_different_elements_are_not_equal, condition(pending)) :-
        create_set([1, 2, 3], Set1),
        create_set([1, 2, 4], Set2),
        Set1 \== Set2.

    test(set_is_not_equal_to_larger_set_with_same_elements, condition(pending)) :-
        create_set([1, 2, 3], Set1),
        create_set([1, 2, 3, 4], Set2),
        Set1 \== Set2.

    test(set_is_equal_to_a_set_constructed_from_an_array_with_duplicates, condition(pending)) :-
        create_set([1], Set1),
        create_set([1, 1], Set2),
        Set1 == Set2.

    test(add_to_empty_set, condition(pending)) :-
        create_set(Sut),
        add(3, Sut, NewSut),
        create_set([3], Expected),
        NewSut == Expected.

    test(add_to_non_empty_set, condition(pending)) :-
        create_set([1, 2, 4], Sut),
        add(3, Sut, NewSut),
        create_set([1, 2, 3, 4], Expected),
        NewSut == Expected.

    test(adding_an_existing_element_does_not_change_the_set, condition(pending)) :-
        create_set([1, 2, 3], Sut),    
        add(3, Sut, NewSut),
        create_set([1, 2, 3], Expected),
        NewSut == Expected.

    test(intersection_of_two_empty_sets_is_an_empty_set, condition(pending)) :-
        create_set(Set1),
        create_set(Set2),
        intersection(Set1, Set2, Intersection),
        create_set(Expected),
        Intersection == Expected.

    test(intersection_of_an_empty_set_and_non_empty_set_is_an_empty_set, condition(pending)) :-
        create_set(Set1),
        create_set([3, 2, 5], Set2),
        intersection(Set1, Set2, Intersection),
        create_set(Expected),
        Intersection == Expected.

    test(intersection_of_a_non_empty_set_and_an_empty_set_is_an_empty_set, condition(pending)) :-
        create_set([1, 2, 3, 4], Set1),
        create_set(Set2),
        intersection(Set1, Set2, Intersection),
        create_set(Expected),
        Intersection == Expected.

    test(intersection_of_two_sets_with_no_shared_elements_is_an_empty_set, condition(pending)) :-
        create_set([1, 2, 3], Set1),
        create_set([4, 5, 6], Set2),
        intersection(Set1, Set2, Intersection),
        create_set(Expected),
        Intersection == Expected.

    test(intersection_of_two_sets_with_shared_elements_is_a_set_of_the_shared_elements, condition(pending)) :-
        create_set([1, 2, 3, 4], Set1),
        create_set([3, 2, 5], Set2),
        intersection(Set1, Set2, Intersection),
        create_set([2, 3], Expected),
        Intersection == Expected.

    test(difference_of_two_empty_sets_is_an_empty_set, condition(pending)) :-
        create_set(Set1),
        create_set(Set2),
        difference(Set1, Set2, Difference),
        create_set(Expected),
        Difference == Expected.

    test(difference_of_empty_set_and_non_empty_set_is_an_empty_set, condition(pending)) :-
        create_set(Set1),
        create_set([3, 2, 5], Set2),
        difference(Set1, Set2, Difference),
        create_set(Expected),
        Difference == Expected.

    test(difference_of_a_non_empty_set_and_an_empty_set_is_the_non_empty_set, condition(pending)) :-
        create_set([1, 2, 3, 4], Set1),
        create_set(Set2),
        difference(Set1, Set2, Difference),
        create_set([1, 2, 3, 4], Expected),
        Difference == Expected.

    test(difference_of_two_non_empty_sets_is_a_set_of_elements_that_are_only_in_the_first_set, condition(pending)) :-
        create_set([3, 2, 1], Set1),
        create_set([2, 4], Set2),
        difference(Set1, Set2, Difference),
        create_set([1, 3], Expected),
        Difference == Expected.

    test(difference_removes_all_duplicates, condition(pending)) :-
        create_set([1, 1], Set1),
        create_set([1], Set2),
        difference(Set1, Set2, Difference),
        create_set([], Expected),
        Difference == Expected.

    test(union_of_empty_sets_is_an_empty_set, condition(pending)) :-
        create_set(Set1),
        create_set(Set2),
        union(Set1, Set2, Union),
        create_set(Expected),
        Union == Expected.

    test(union_of_an_empty_set_and_non_empty_set_is_the_non_empty_set, condition(pending)) :-
        create_set(Set1),
        create_set([2], Set2),
        union(Set1, Set2, Union),
        create_set([2], Expected),
        Union == Expected.

    test(union_of_a_non_empty_set_and_empty_set_is_the_non_empty_set, condition(pending)) :-
        create_set([1, 3], Set1),
        create_set(Set2),
        union(Set1, Set2, Union),
        create_set([1, 3], Expected),
        Union == Expected.

    test(union_of_non_empty_sets_contains_all_unique_elements, condition(pending)) :-
        create_set([1, 3], Set1),
        create_set([2, 3], Set2),
        union(Set1, Set2, Union),
        create_set([1, 2, 3], Expected),
        Union == Expected.

:- end_tests(custom_set).
%---------------------------------------------------------------- 24 darts/darts
% darts.pl -- the exercism Prolog exercise darts, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/darts.example.pl, then its tests darts_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
distance(X, Y, Distance) :- Distance is sqrt(X * X + Y * Y).

score(X, Y, 10) :- distance(X, Y, Distance), Distance =< 1,  !.
score(X, Y, 5)  :- distance(X, Y, Distance), Distance =< 5,  !.
score(X, Y, 1)  :- distance(X, Y, Distance), Distance =< 10, !.
score(_, _, 0).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(darts).

    test(missed_target, condition(true)) :-
        score(-(9), 9, Score),
        Score == 0.

    test(on_the_outer_circle, condition(pending)) :-
        score(0, 10, Score),
        Score == 1.

    test(on_the_middle_circle, condition(pending)) :-
        score(-(5), 0, Score),
        Score == 5.

    test(on_the_inner_circle, condition(pending)) :-
        score(0, -(1), Score),
        Score == 10.

    test(exactly_on_center, condition(pending)) :-
        score(0, 0, Score),
        Score == 10.

    test(near_the_center, condition(pending)) :-
        score(-(0.1), -(0.1), Score),
        Score == 10.

    test(just_within_the_inner_circle, condition(pending)) :-
        score(0.7, 0.7, Score),
        Score == 10.

    test(just_outside_the_inner_circle, condition(pending)) :-
        score(0.8, -(0.8), Score),
        Score == 5.

    test(just_within_the_middle_circle, condition(pending)) :-
        score(-(3.5), 3.5, Score),
        Score == 5.

    test(just_outside_the_middle_circle, condition(pending)) :-
        score(-(3.6), -(3.6), Score),
        Score == 1.

    test(just_within_the_outer_circle, condition(pending)) :-
        score(-(7.0), 7.0, Score),
        Score == 1.

    test(just_outside_the_outer_circle, condition(pending)) :-
        score(7.1, -(7.1), Score),
        Score == 0.

    test(asymmetric_position_between_the_inner_and_middle_circles, condition(pending)) :-
        score(0.5, -(4), Score),
        Score == 5.

:- end_tests(darts).
%------------------------------------------------------------ 25 diamond/diamond
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
%-------------------------------- 26 difference-of-squares/difference_of_squares
% difference_of_squares.pl -- the exercism Prolog exercise difference-of-squares, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/difference_of_squares.example.pl, then its tests difference_of_squares_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

square_of_sum(N, Result) :-
    Sum is N * (N + 1) / 2,
    Result is Sum * Sum.

sum_of_squares(N, Result) :-
    Result is (N * (N + 1) * (2 * N + 1)) / 6.

difference(N, Result) :-
    square_of_sum(N, SquareOfSum),
    sum_of_squares(N, SumOfSquares),
    Result is SquareOfSum - SumOfSquares.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(difference_of_squares).

test(square_of_sum_1, condition(true)) :-
  square_of_sum(1, Result),
  Result == 1.

test(square_of_sum_5, condition(pending)) :-
  square_of_sum(5, Result),
  Result == 225.

test(square_of_sum_100, condition(pending)) :-
  square_of_sum(100, Result),
  Result == 25_502_500.

test(sum_of_squares_1, condition(pending)) :-
  sum_of_squares(1, Result),
  Result == 1.

test(sum_of_squares_5, condition(pending)) :-
  sum_of_squares(5, Result),
  Result == 55.

test(sum_of_squares_100, condition(pending)) :-
  sum_of_squares(100, Result),
  Result == 338_350.

test(difference_of_squares_1, condition(pending)) :-
  difference(1, Result),
  Result == 0.

test(difference_of_squares_5, condition(pending)) :-
  difference(5, Result),
  Result == 170.

test(difference_of_squares_100, condition(pending)) :-
  difference(100, Result),
  Result == 25_164_150.

:- end_tests(difference_of_squares).
%------------------------------------------------ 27 dnd-character/dnd_character
% dnd_character.pl -- the exercism Prolog exercise dnd-character, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/dnd_character.example.pl, then its tests dnd_character_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

modifier(Score, Modifier) :-
    Modifier #= div(Score - 10, 2).

roll(Score) :- random(1, 7, Score).

ability(Score) :-
    length(Scores, 4),
    maplist(roll, Scores),
    sort(0, @=<, Scores, [_|Sorted]),
    sum_list(Sorted, Score).

create_character(Character) :-
    Character = character(
        strength(Strength),
        dexterity(Dexterity),
        constitution(Constitution),
        intelligence(Intelligence),
        wisdom(Wisdom),
        charisma(Charisma),
        hitpoints(Hitpoints)
    ),
    maplist(ability, [Strength, Dexterity, Constitution, Intelligence, Wisdom, Charisma]),
    modifier(Constitution, Modifier),
    Hitpoints #= 10 + Modifier.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(dnd_character).

    test(ability_modifier_for_score_3_is_n4, condition(true)) :-
        modifier(3, Modifier),
        Modifier == -4.

    test(ability_modifier_for_score_4_is_n3, condition(pending)) :-
        modifier(4, Modifier),
        Modifier == -3.

    test(ability_modifier_for_score_5_is_n3, condition(pending)) :-
        modifier(5, Modifier),
        Modifier == -3.

    test(ability_modifier_for_score_6_is_n2, condition(pending)) :-
        modifier(6, Modifier),
        Modifier == -2.

    test(ability_modifier_for_score_7_is_n2, condition(pending)) :-
        modifier(7, Modifier),
        Modifier == -2.

    test(ability_modifier_for_score_8_is_n1, condition(pending)) :-
        modifier(8, Modifier),
        Modifier == -1.

    test(ability_modifier_for_score_9_is_n1, condition(pending)) :-
        modifier(9, Modifier),
        Modifier == -1.

    test(ability_modifier_for_score_10_is_0, condition(pending)) :-
        modifier(10, 0).

    test(ability_modifier_for_score_11_is_0, condition(pending)) :-
        modifier(11, 0).

    test(ability_modifier_for_score_12_is_1, condition(pending)) :-
        modifier(12, 1).

    test(ability_modifier_for_score_13_is_1, condition(pending)) :-
        modifier(13, 1).

    test(ability_modifier_for_score_14_is_2, condition(pending)) :-
        modifier(14, 2).

    test(ability_modifier_for_score_15_is_2, condition(pending)) :-
        modifier(15, 2).

    test(ability_modifier_for_score_16_is_3, condition(pending)) :-
        modifier(16, 3).

    test(ability_modifier_for_score_17_is_3, condition(pending)) :-
        modifier(17, 3).

    test(ability_modifier_for_score_18_is_4, condition(pending)) :-
        modifier(18, 4).

    test(random_ability_is_within_range, condition(pending)) :-
        length(Scores, 100),
        maplist(ability, Scores),
        maplist(between(3, 18), Scores).

    test(random_character_is_valid, condition(pending)) :-
        length(Characters, 100),
        maplist(create_character, Characters),
        member(character(
            strength(Strength),
            dexterity(Dexterity),
            constitution(Constitution),
            intelligence(Intelligence),
            wisdom(Wisdom),
            charisma(Charisma),
            hitpoints(Hitpoints)), Characters),
        between(3, 18, Strength),
        between(3, 18, Dexterity),
        between(3, 18, Constitution),
        between(3, 18, Intelligence),
        between(3, 18, Wisdom),
        between(3, 18, Charisma),
        modifier(Constitution, Modifier),
        Hitpoints =:= 10 + Modifier,
        !.

:- end_tests(dnd_character).
%---------------------------------------------------------- 28 dominoes/dominoes
% dominoes.pl -- the exercism Prolog exercise dominoes, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/dominoes.example.pl, then its tests dominoes_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
match(Pieces, [(A,B)|T], [New,(A,B)|T], NewPieces) :-
  member((X,A), Pieces) -> New = (X,A), selectchk((X,A), Pieces, NewPieces) ;
  member((A,X), Pieces) -> New = (X,A), selectchk((A,X), Pieces, NewPieces).

solve_([], Chain, Chain).
solve_(Pieces, Chain, RC) :-
  match(Pieces, Chain, NC, NP),
  solve_(NP, NC, RC).

solve([], []).
solve(Pieces, Chain) :-
  member((A,B), Pieces),
  select((A,B), Pieces, NP), 
  (solve_(NP, [(B,A)], Chain) ; solve_(NP, [(A,B)], Chain)),
  last(Chain, (_, E)), Chain = [(E, _)|_].

can_chain([]) :- !.
can_chain(XS) :- solve(XS, _), !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(can_chain).

    test(empty_input_empty_output, condition(true)) :-
        can_chain([]).

    test(singleton_input_singleton_output, condition(pending)) :-
        can_chain([(1,1)]).

    test(singleton_that_cant_be_chained, [fail, condition(pending)]) :-
        can_chain([(1,2)]).

    test(three_elements, condition(pending)) :-
        can_chain([(1,2),(3,1),(2,3)]).

    test(can_reverse_dominoes, condition(pending)) :-
        can_chain([(1,2),(1,3),(2,3)]).

    test(cant_be_chained, [fail, condition(pending)]) :-
        can_chain([(1,2), (4,1), (2,3)]).

    test(disconnected_simple, [fail, condition(pending)]) :-
        can_chain([(1,1), (2,2)]).

    test(disconnected_double_loop, [fail, condition(pending)]) :-
        can_chain([(1,1), (2,1), (3,4), (4,3)]).

    test(disconnected_single_isolated, [fail, condition(pending)]) :-
        can_chain([(1,2), (2,3), (3,1), (4,4)]).

    test(three_loops, [fail, condition(pending)]) :-
        can_chain([(1, 2),(2, 3),(3, 1),(4, 5),(5, 6),(6, 4)]).

    test(need_backtrack, condition(pending)) :-
        can_chain([(1,2),(2,3),(3,1),(2,4),(2,4)]).

    test(separate_loops, condition(pending)) :-
        can_chain([(1,2),(2,3),(3,1),(1,1),(2,2),(3,3)]).

    test(nine_elements, condition(pending)) :-
        can_chain([(1,2),(5,3),(3,1),(1,2),(2,4),(1,6),(2,3),(3,4),(5,6)]).

:- end_tests(can_chain).
%---------------------------------------------------- 29 eliuds-eggs/eliuds_eggs
% eliuds_eggs.pl -- the exercism Prolog exercise eliuds-eggs, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/eliuds_eggs.example.pl, then its tests eliuds_eggs_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

egg_count(0, 0) :- !.
egg_count(EncodedCount, Count) :-
    NewEncodedCount #= EncodedCount >> 1,
    egg_count(NewEncodedCount, NewCount),
    Count #= NewCount + (EncodedCount /\ 1).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(eliuds_eggs).

    test(zero_eggs, condition(true)) :-
        egg_count(0, Count), Count == 0.

    test(one_egg, condition(pending)) :-
        egg_count(16, Count), Count == 1.

    test(four_eggs, condition(pending)) :-
        egg_count(89, Count), Count == 4.

    test(thirteen_eggs, condition(pending)) :-
        egg_count(2000000000, Count), Count == 13.

:- end_tests(eliuds_eggs).
%-------------------------------------------------------------------- 30 etl/etl
% etl.pl -- the exercism Prolog exercise etl, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/etl.example.pl, then its tests etl_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
transform([], []).

transform([Score-Letters|Xs], LetterScores) :-
    transform(Xs, LetterScores1),
    length(Letters, N),
    length(Scores, N),
    maplist(=(Score), Scores),
    maplist(string_lower,Letters,LowerLetters),
    maplist(atom_string,LowerLetterAtoms,LowerLetters),
    pairs_keys_values(LetterScores0,LowerLetterAtoms,Scores),
    append(LetterScores0, LetterScores1, LetterScores2),
    sort(LetterScores2, LetterScores).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(etl).

test(single_letter, condition(true)) :-
  transform([1-["A"]], LetterScores),
  LetterScores == [a-1].

test(single_score_with_multiple_letters, condition(pending)) :-
  transform([1-["A","E","I","O","U"]], LetterScores),
  LetterScores == [a-1,e-1,i-1,o-1,u-1].

test(multiple_scores_with_multiple_letters, condition(pending)) :-
  transform([1-["A","E"], 2-["D","G"]], LetterScores),
  LetterScores == [a-1,d-2,e-1,g-2].

test(multiple_scores_with_differing_numbers_of_letters, condition(pending)) :-
  transform([
    1-["A","E","I","O","U","L","N","R","S","T"],    
    2-["D","G"],
    3-["B","C","M","P"],
    4-["F","H","V","W","Y"],
    5-["K"],
    8-["J","X"],
    10-["Q","Z"]
  ], LetterScores),
  LetterScores == [a-1,b-3,c-3,d-2,e-1,f-4,g-2,h-4,i-1,j-8,k-5,l-1,m-3,
                   n-1,o-1,p-3,q-10,r-1,s-1,t-1,u-1,v-4,w-4,x-8,y-4,z-10].

:- end_tests(etl).
%------------------------------------------------ 31 flatten-array/flatten_array
% flatten_array.pl -- the exercism Prolog exercise flatten-array, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/flatten_array.example.pl, then its tests flatten_array_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
flatten_list([], []) :- !.

flatten_list([X|Xs], Flattened) :-
    X = nil,
    flatten_list(Xs, Flattened),
    !.

flatten_list([X|Xs], Flattened) :-
    is_list(X),
    flatten_list(X, XFlattened),
    flatten_list(Xs, XsFlattened),
    append(XFlattened, XsFlattened, Flattened),
    !.

flatten_list([X|Xs], [X|Flattened]) :-
    flatten_list(Xs, Flattened),
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(flatten_array).

    test(empty, condition(true)) :-
        flatten_list([], Flattened),
        Flattened == [].

    test(no_nesting, condition(pending)) :-
        flatten_list([0, 1, 2], Flattened),
        Flattened == [0, 1, 2].

    test(flattens_a_nested_array, condition(pending)) :-
        flatten_list([[[]]], Flattened),
        Flattened == [].

    test(flattens_array_with_just_integers_present, condition(pending)) :-
        flatten_list([
            1,
            [2, 3, 4, 5, 6, 7],
            8
        ], Flattened),
        Flattened == [1, 2, 3, 4, 5, 6, 7, 8].

    test(five_level_nesting, condition(pending)) :-
        flatten_list([
            0,
            2,
            [
                [2, 3],
                8,
                100,
                4,
                [[[50]]]
            ],
            -2
        ], Flattened),
        Flattened == [0, 2, 2, 3, 8, 100, 4, 50, -2].

    test(six_level_nesting, condition(pending)) :-
        flatten_list([
            1,
            [
                2,
                [[3]],
                [4, [[5]]],
                6,
                7
            ],
            8
        ], Flattened),
        Flattened == [1, 2, 3, 4, 5, 6, 7, 8].

    test(nil_values_are_omitted_from_the_final_result, condition(pending)) :-
        flatten_list([1, 2, nil], Flattened),
        Flattened == [1, 2].

    test(consecutive_nil_values_at_the_front_of_the_list_are_omitted_from_the_final_result, condition(pending)) :-
        flatten_list([nil, nil, 3], Flattened),
        Flattened == [3].

    test(consecutive_nil_values_in_the_middle_of_the_list_are_omitted_from_the_final_result, condition(pending)) :-
        flatten_list([1, nil, nil, 4], Flattened),
        Flattened == [1, 4].

    test(six_level_nest_list_with_nil_values, condition(pending)) :-
        flatten_list([
            0,
            2,
            [
                [2, 3],
                8,
                [[100]],
                nil,
                [[nil]]
            ],
            -2
        ], Flattened),
        Flattened == [0, 2, 2, 3, 8, 100, -2].

    test(all_values_in_nested_list_are_nil, condition(pending)) :-
        flatten_list([
            nil,
            [[[nil]]],
            nil,
            nil,
            [[nil, nil], nil],
            nil
        ], Flattened),
        Flattened == [].

:- end_tests(flatten_array).
%------------------------------------------------------------ 32 floored/floored
% floored.pl -- the exercism Prolog exercise floored, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/floored.example.pl, then its tests floored_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

solve(Solution) :-
    Names = [amara, bjorn, cora, dale, emiko],
    Floors = [Amara, Bjorn, Cora, Dale, Emiko],
    Floors ins 1..5, % 1
    all_different(Floors), %2
    pairs_keys_values(Solution, Names, Floors),
    Amara #< 5, %3
    Bjorn #> 1, %4
    Cora #> 1, Cora #< 5, %5
    Dale #> Bjorn, %6
    abs(Emiko - Cora) #> 1, %7
    abs(Cora - Bjorn) #> 1, %8
    label(Floors),
    !.

floor(Name, Floor) :-
    solve(Solution),
    member(Name-Floor, Solution),
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(floored).

    test(floor_amara, condition(true)) :-
        floor(amara, Floor),
        Floor == 3.

    test(floor_bjorn, condition(pending)) :-
        floor(bjorn, Floor),
        Floor == 2.

    test(floor_cora, condition(pending)) :-
        floor(cora, Floor),
        Floor == 4.

    test(floor_dale, condition(pending)) :-
        floor(dale, Floor),
        Floor == 5.

    test(floor_emiko, condition(pending)) :-
        floor(emiko, Floor),
        Floor == 1.

:- end_tests(floored).
%-------------------------------------------------- 33 flower-field/flower_field
% flower_field.pl -- the exercism Prolog exercise flower-field, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/flower_field.example.pl, then its tests flower_field_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

cell(Rows, X, Y, Cell) :-
    nth0(Y, Rows, Row),
    nth0(X, Row, Cell).

adjacent_flower(Rows, X, Y) :-
    between(-1, 1, Dx),
    between(-1, 1, Dy),
    NeighborX #= X + Dx,
    NeighborY #= Y + Dy,
    cell(Rows, NeighborX, NeighborY, '*').

annotate_cell(_, '*', _, _, '*') :- !.
annotate_cell(Rows, _, X, Y, AnnotatedCell) :-
    findall(1, adjacent_flower(Rows, X, Y), Flowers),
    length(Flowers, Count),
    (Count #= 0 -> AnnotatedCell = ' '; atom_number(AnnotatedCell, Count)).    

annotate_row(_, [], _, _, []) :- !.
annotate_row(Rows, [Cell|Cells], X, Y, [AnnotatedCell|AnnotatedCells]) :-
    NextX #= X + 1,
    annotate_cell(Rows, Cell, X, Y, AnnotatedCell),
    annotate_row(Rows, Cells, NextX, Y, AnnotatedCells).

annotate_board(_, [], _, []) :- !.
annotate_board(Rows, [Row|Rest], Y, [AnnotatedRow|AnnotatedRows]) :-
    NextY #= Y + 1,
    annotate_row(Rows, Row, 0, Y, AnnotatedRowChars),
    string_chars(AnnotatedRow, AnnotatedRowChars),
    annotate_board(Rows, Rest, NextY, AnnotatedRows), !.

annotate(Board, AnnotatedBoard) :-
    maplist(string_chars, Board, Rows),
    annotate_board(Rows, Rows, 0, AnnotatedBoard).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(flower_field).

    test(no_rows, condition(true)) :-
        annotate([], Annotated),
        Annotated == [].

    test(no_columns, condition(pending)) :-
        annotate([""], Annotated),
        Annotated == [""].

    test(no_flowers, condition(pending)) :-
        Board = [
            "   ", 
            "   ",
            "   "
        ],
        annotate(Board, Annotated),
        Annotated == [
            "   ",
            "   ",
            "   "
        ].

    test(garden_full_of_flowers, condition(pending)) :-
        Board = [
            "***",
            "***",
            "***"
        ],
        annotate(Board, Annotated),
        Annotated == [
            "***",
            "***",
            "***"
        ].

    test(flower_surrounded_by_spaces, condition(pending)) :-
        Board = [
            "   ",
            " * ",
            "   "
        ],
        annotate(Board, Annotated),
        Annotated == [
            "111",
            "1*1",
            "111"
        ].

    test(space_surrounded_by_flowers, condition(pending)) :-
        Board = [
            "***",
            "* *",
            "***"
        ],
        annotate(Board, Annotated),
        Annotated == [
            "***", 
            "*8*", 
            "***"
        ].

    test(horizontal_line, condition(pending)) :-
        Board = [" * * "],
        annotate(Board, Annotated),
        Annotated == ["1*2*1"].

    test(horizontal_line_flowers_at_edges, condition(pending)) :-
        Board = ["*   *"],
        annotate(Board, Annotated),
        Annotated == ["*1 1*"].

    test(vertical_line, condition(pending)) :-
        Board = [
            " ",
            "*",
            " ",
            "*",
            " "
        ],
        annotate(Board, Annotated),
        Annotated == [
            "1",
            "*",
            "2",
            "*",
            "1"
        ].

    test(vertical_line_flowers_at_edges, condition(pending)) :-
        Board = [
            "*",
            " ",
            " ",
            " ",
            "*"
        ],
        annotate(Board, Annotated),
        Annotated == [
            "*",
            "1",
            " ",
            "1",
            "*"
        ].

    test(cross, condition(pending)) :-
        Board = [
            "  *  ",
            "  *  ", 
            "*****",
            "  *  ",
            "  *  "
        ],
        annotate(Board, Annotated),
        Annotated == [
            " 2*2 ",
            "25*52",
            "*****",
            "25*52",
            " 2*2 "
        ].

    test(large_garden, condition(pending)) :-
        Board = [
            " *  * ",
            "  *   ",
            "    * ",
            "   * *",
            " *  * ",
            "      "
        ],
        annotate(Board, Annotated),
        Annotated == [
            "1*22*1",
            "12*322",
            " 123*2",
            "112*4*",
            "1*22*2",
            "111111"
        ].

:- end_tests(flower_field).
%------------------------------------------------------ 34 food-chain/food_chain
% food_chain.pl -- the exercism Prolog exercise food-chain, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/food_chain.example.pl, then its tests food_chain_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
animals(["fly", "spider", "bird", "cat", "dog", "goat", "cow", "horse"]).

animal_remark("fly", "I don't know why she swallowed the fly. Perhaps she'll die.").
animal_remark("spider", "It wriggled and jiggled and tickled inside her.").
animal_remark("bird", "How absurd to swallow a bird!").
animal_remark("cat", "Imagine that, to swallow a cat!").
animal_remark("dog", "What a hog, to swallow a dog!").
animal_remark("goat", "Just opened her throat and swallowed a goat!").
animal_remark("cow", "I don't know how she swallowed a cow!").
animal_remark("horse", "She's dead, of course!").

swallowed_animals(Count, SwallowedAnimals) :-
    animals(Animals),
    append(SwallowedAnimalsReversed, _, Animals),
    length(SwallowedAnimalsReversed, Count),
    reverse(SwallowedAnimalsReversed, SwallowedAnimals),
    !.

pairs([X,Y|Tail], [X-Y|Pairs]) :- pairs([Y|Tail], Pairs), !.
pairs(_, []) :- !.

verse_start(Animal, [Line,Remark]) :-
    format(string(Line), 'I know an old lady who swallowed a ~s.', [Animal]),
    animal_remark(Animal, Remark).

verse_end(Line) :- animal_remark("fly", Line).

verse_swallowed(Swalllowed-"spider", Line) :-
    string_concat("spider", " that wriggled and jiggled and tickled inside her", CaughtSpider),
    verse_swallowed(Swalllowed-CaughtSpider, Line).

verse_swallowed(Swalllowed-Caught, Line) :-
    format(string(Line), "She swallowed the ~w to catch the ~w.", [Swalllowed, Caught]).

verse(1, Lyrics) :- verse_start("fly", Lyrics), !.
verse(8, Lyrics) :- verse_start("horse", Lyrics), !.

verse(N, Lyrics) :-
    swallowed_animals(N, SwallowedAnimals),
    [FirstAnimal|_] = SwallowedAnimals,
    pairs(SwallowedAnimals, SwallowedAnimalsPair),
    maplist(verse_swallowed, SwallowedAnimalsPair, SwallowedLines),
    verse_start(FirstAnimal, Start),
    verse_end(End),
    append(Start, SwallowedLines, Lyrics1),
    append(Lyrics1, [End], Lyrics),
    !.

combine_verses([], []).
combine_verses([Verse], Verse).
combine_verses([Verse|Rest], Verses) :-
    combine_verses(Rest, RestVerses),
    append(Verse,[""|RestVerses], Verses).

recite(StartVerse, EndVerse, Lyrics) :-
  numlist(StartVerse, EndVerse, VerseNumbers),
  maplist(verse, VerseNumbers, Verses),
  combine_verses(Verses, Lyrics), !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(food_chain).

    test(fly, condition(true)) :-
        recite(1, 1, Lyrics),
        Lyrics == [
            "I know an old lady who swallowed a fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die."
        ].

    test(spider, condition(pending)) :-
        recite(2, 2, Lyrics),
        Lyrics == [
            "I know an old lady who swallowed a spider.",
            "It wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die."
        ].

    test(bird, condition(pending)) :-
        recite(3, 3, Lyrics),
        Lyrics == [
            "I know an old lady who swallowed a bird.",
            "How absurd to swallow a bird!",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die."
        ].

    test(cat, condition(pending)) :-
        recite(4, 4, Lyrics),
        Lyrics == [
            "I know an old lady who swallowed a cat.",
            "Imagine that, to swallow a cat!",
            "She swallowed the cat to catch the bird.",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die."
        ].

    test(dog, condition(pending)) :-
        recite(5, 5, Lyrics),
        Lyrics == [
            "I know an old lady who swallowed a dog.",
            "What a hog, to swallow a dog!",
            "She swallowed the dog to catch the cat.",
            "She swallowed the cat to catch the bird.",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die."
        ].

    test(goat, condition(pending)) :-
        recite(6, 6, Lyrics),
        Lyrics == [
            "I know an old lady who swallowed a goat.",
            "Just opened her throat and swallowed a goat!",
            "She swallowed the goat to catch the dog.",
            "She swallowed the dog to catch the cat.",
            "She swallowed the cat to catch the bird.",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die."
        ].

    test(cow, condition(pending)) :-
        recite(7, 7, Lyrics),
        Lyrics == [
            "I know an old lady who swallowed a cow.",
            "I don't know how she swallowed a cow!",
            "She swallowed the cow to catch the goat.",
            "She swallowed the goat to catch the dog.",
            "She swallowed the dog to catch the cat.",
            "She swallowed the cat to catch the bird.",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die."
        ].

    test(horse, condition(pending)) :-
        recite(8, 8, Lyrics),
        Lyrics == [
            "I know an old lady who swallowed a horse.",
            "She's dead, of course!"
        ].

    test(multiple_verses, condition(pending)) :-
        recite(1, 3, Lyrics),
        Lyrics == [
            "I know an old lady who swallowed a fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die.",
            "",
            "I know an old lady who swallowed a spider.",
            "It wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die.",
            "",
            "I know an old lady who swallowed a bird.",
            "How absurd to swallow a bird!",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die."
        ].

    test(full_song, condition(pending)) :-
        recite(1, 8, Lyrics),
        Lyrics == [
            "I know an old lady who swallowed a fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die.",
            "",
            "I know an old lady who swallowed a spider.",
            "It wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die.",
            "",
            "I know an old lady who swallowed a bird.",
            "How absurd to swallow a bird!",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die.",
            "",
            "I know an old lady who swallowed a cat.",
            "Imagine that, to swallow a cat!",
            "She swallowed the cat to catch the bird.",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die.",
            "",
            "I know an old lady who swallowed a dog.",
            "What a hog, to swallow a dog!",
            "She swallowed the dog to catch the cat.",
            "She swallowed the cat to catch the bird.",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die.",
            "",
            "I know an old lady who swallowed a goat.",
            "Just opened her throat and swallowed a goat!",
            "She swallowed the goat to catch the dog.",
            "She swallowed the dog to catch the cat.",
            "She swallowed the cat to catch the bird.",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die.",
            "",
            "I know an old lady who swallowed a cow.",
            "I don't know how she swallowed a cow!",
            "She swallowed the cow to catch the goat.",
            "She swallowed the goat to catch the dog.",
            "She swallowed the dog to catch the cat.",
            "She swallowed the cat to catch the bird.",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die.",
            "",
            "I know an old lady who swallowed a horse.",
            "She's dead, of course!"
        ].

:- end_tests(food_chain).
%-------------------------------------------------- 35 game-of-life/game_of_life
% game_of_life.pl -- the exercism Prolog exercise game-of-life, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/game_of_life.example.pl, then its tests game_of_life_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

cell(Rows, X, Y, Cell) :- nth1(Y, Rows, Row), nth1(X, Row, Cell).

live_neighbor(Rows, X, Y) :-
    between(-1, 1, Dx),
    between(-1, 1, Dy),
    NeighborX #= X + Dx,
    NeighborY #= Y + Dy,
    (NeighborX #\= X #\/ NeighborY #\= Y),
    cell(Rows, NeighborX, NeighborY, 1).

next_cell(Rows, Y, Cell, X, NextCell) :-
    findall(1, live_neighbor(Rows, X, Y), LiveNeighbors),
    length(LiveNeighbors, Count),
    (Count #= 3; Count #= 2, Cell = 1) -> NextCell = 1; NextCell = 0.

next_row(Rows, Y, Row, NextRow) :-
    length(Row, Length),
    numlist(1, Length, Xs),
    maplist(next_cell(Rows, Y), Row, Xs, NextRow).

tick([], []) :- !.
tick(Current, Next) :-
    length(Current, Height),
    numlist(1, Height, Ys),
    maplist(next_row(Current), Ys, Current, Next).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(game_of_life).

    test(empty_matrix, condition(true)) :-
        Current = [],
        tick(Current, Next),
        Next == [].

    test(live_cells_with_zero_live_neighbors_die, condition(pending)) :-
        Current = [
            [0, 0, 0],
            [0, 1, 0],
            [0, 0, 0]
        ],
        tick(Current, Next),
        Next == [
            [0, 0, 0],
            [0, 0, 0],
            [0, 0, 0]
        ].

    test(live_cells_with_only_one_live_neighbor_die, condition(pending)) :-
        Current = [
            [0, 0, 0],
            [0, 1, 0],
            [0, 1, 0]
        ],
        tick(Current, Next),
        Next == [
            [0, 0, 0],
            [0, 0, 0],
            [0, 0, 0]
        ].

    test(live_cells_with_two_live_neighbors_stay_alive, condition(pending)) :-
        Current = [
            [1, 0, 1],
            [1, 0, 1],
            [1, 0, 1]
        ],
        tick(Current, Next),
        Next == [
            [0, 0, 0],
            [1, 0, 1],
            [0, 0, 0]
        ].

    test(live_cells_with_three_live_neighbors_stay_alive, condition(pending)) :-
        Current = [
            [0, 1, 0],
            [1, 0, 0],
            [1, 1, 0]
        ],
        tick(Current, Next),
        Next == [
            [0, 0, 0],
            [1, 0, 0],
            [1, 1, 0]
        ].

    test(dead_cells_with_three_live_neighbors_become_alive, condition(pending)) :-
        Current = [
            [1, 1, 0],
            [0, 0, 0],
            [1, 0, 0]
        ],
        tick(Current, Next),
        Next == [
            [0, 0, 0],
            [1, 1, 0],
            [0, 0, 0]
        ].

    test(live_cells_with_four_or_more_neighbors_die, condition(pending)) :-
        Current = [
            [1, 1, 1],
            [1, 1, 1],
            [1, 1, 1]
        ],
        tick(Current, Next),
        Next == [
            [1, 0, 1],
            [0, 0, 0],
            [1, 0, 1]
        ].

    test(bigger_matrix, condition(pending)) :-
        Current = [
            [1, 1, 0, 1, 1, 0, 0, 0],
            [1, 0, 1, 1, 0, 0, 0, 0],
            [1, 1, 1, 0, 0, 1, 1, 1],
            [0, 0, 0, 0, 0, 1, 1, 0],
            [1, 0, 0, 0, 1, 1, 0, 0],
            [1, 1, 0, 0, 0, 1, 1, 1],
            [0, 0, 1, 0, 1, 0, 0, 1],
            [1, 0, 0, 0, 0, 0, 1, 1]
        ],
        tick(Current, Next),
        Next == [
            [1, 1, 0, 1, 1, 0, 0, 0],
            [0, 0, 0, 0, 0, 1, 1, 0],
            [1, 0, 1, 1, 1, 1, 0, 1],
            [1, 0, 0, 0, 0, 0, 0, 1],
            [1, 1, 0, 0, 1, 0, 0, 1],
            [1, 1, 0, 1, 0, 0, 0, 1],
            [1, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 1, 1]
        ].

:- end_tests(game_of_life).
%-------------------------------------------------- 36 garden-party/garden_party
% garden_party.pl -- the exercism Prolog exercise garden-party, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/garden_party.example.pl, then its tests garden_party_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
solve(Solution) :-
    Solution=[[aisha,D1,B1],[emma,D2,B2],[mei,D3,B3],[winona,D4,B4]],
    member([aisha,tagine,_], Solution),
    member([emma,_,amasi], Solution),
    member([_,frybread,tonic], Solution),
    member([mei,_,lassi], Solution),
    member([winona,DWinona,_], Solution),
    member([_,DLassi,lassi], Solution),
    permutation([D1,D2,D3,D4], [pad_thai, frybread, tagine, biryani]),
    permutation([B1,B2,B3,B4], [tonic, lassi, kombucha, amasi]),
    DWinona \= pad_thai,
    DLassi \= biryani,
    !.

beverage(Chef, Beverage) :-
    solve(Solution),
    member([Chef,_,Beverage], Solution),
    !.

dish(Chef, Dish) :-
    solve(Solution),
    member([Chef,Dish,_], Solution),
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(garden_party).

    test(aisha_beverage, condition(true)) :-
        beverage(aisha, Beverage),
        Beverage == kombucha.

    test(emma_dish, condition(pending)) :-
        dish(emma, Dish),
        Dish == biryani.

    test(mei_dish, condition(pending)) :-
        dish(mei, Dish),
        Dish == pad_thai.

    test(winona_dish, condition(pending)) :-
        dish(winona, Dish),
        Dish == frybread.

    test(winona_beverage, condition(pending)) :-
        beverage(winona, Beverage),
        Beverage == tonic.

:- end_tests(garden_party).
%------------------------------------------------------ 37 gigasecond/gigasecond
% gigasecond.pl -- the exercism Prolog exercise gigasecond, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/gigasecond.example.pl, then its tests gigasecond_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
add_gigasecond(Date, GigasecondDate) :-
    date_time_stamp(Date, TimeStamp),
    date_time_value(time_zone, Date, TZ),
    GigasecondTimeStamp is TimeStamp + 1000000000,
    stamp_date_time(GigasecondTimeStamp, GigasecondDate, TZ).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(gigasecond).

    test(date_only_specification_of_time, condition(true)) :-
        add_gigasecond(date(2011, 4, 25, 0, 0, 0.0, 0, 'UTC', -), GigasecondDate),
        GigasecondDate == date(2043, 1, 1, 1, 46, 40.0, 0, 'UTC', -).

    test(second_test_for_date_only_specification_of_time, condition(pending)) :-
        add_gigasecond(date(1977, 6, 13, 0, 0, 0, 0, 'UTC', -), GigasecondDate),
        GigasecondDate == date(2009, 2, 19, 1, 46, 40.0, 0, 'UTC', -).

    test(third_test_for_date_only_specification_of_time, condition(pending)) :-
        add_gigasecond(date(1959, 7, 19, 0, 0, 0, 0, 'UTC', -), GigasecondDate),
        GigasecondDate == date(1991, 3, 27, 1, 46, 40.0, 0, 'UTC', -).

    test(full_time_specified, condition(pending)) :-
        add_gigasecond(date(2015, 1, 24, 22, 0, 0, 0, 'UTC', -), GigasecondDate),
        GigasecondDate == date(2046, 10, 2, 23, 46, 40.0, 0, 'UTC', -).

:- end_tests(gigasecond).
%------------------------ 38 global-positioning-system/global_positioning_system
% global_positioning_system.pl -- the exercism Prolog exercise global-positioning-system, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/global_positioning_system.example.pl, then its tests global_positioning_system_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(dcg/basics)).

comma --> ",".
space --> white.

latitude_hemisphere(north) --> "N".
latitude_hemisphere(south) --> "S".

longitude_hemisphere(east) --> "E".
longitude_hemisphere(west) --> "W".

degrees(Degrees) --> float(Degrees).
latitude_degrees(Degrees) --> degrees(Degrees), { Degrees >= 0, Degrees =< 90 }.
longitude_degrees(Degrees) --> degrees(Degrees), { Degrees >= 0, Degrees =< 180 }.

latitude(Degrees, Hemisphere) --> latitude_degrees(Degrees), space, latitude_hemisphere(Hemisphere).
longitude(Degrees, Hemisphere) --> longitude_degrees(Degrees), space, longitude_hemisphere(Hemisphere).

coordinate(Latitude, LatitudeHemisphere, Longitude, LongitudeHemisphere) -->
    latitude(Latitude, LatitudeHemisphere), comma, space, longitude(Longitude, LongitudeHemisphere).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(global_positioning_system).

    test(comma_parses_comma, condition(true)) :-
        string_codes(",", Codes),
        phrase(comma, Codes).

    test(comma_does_not_parse_semicolon, [fail, condition(pending)]) :-
        string_codes(";", Codes),
        phrase(comma, Codes).

    test(space_parse_space, condition(pending)) :-
        string_codes(" ", Codes),
        phrase(space, Codes).

    test(space_parses_tab, condition(pending)) :-
        string_codes("\t", Codes),
        phrase(space, Codes).

    test(space_does_not_parse_newline, [fail, condition(pending)]) :-
        string_codes("\n", Codes),
        phrase(space, Codes).

    test(latitude_hemisphere_parses_north_hemisphere, condition(pending)) :-
        string_codes("N", Codes),
        phrase(latitude_hemisphere(Hemisphere), Codes),
        Hemisphere == north.

    test(latitude_hemisphere_parses_south_hemisphere, condition(pending)) :-
        string_codes("S", Codes),
        phrase(latitude_hemisphere(Hemisphere), Codes),
        Hemisphere == south.

    test(latitude_hemisphere_only_parses_north_and_south_hemispheres, condition(pending)) :-
        findall(Hemisphere, phrase(latitude_hemisphere(Hemisphere), _), Hemispheres),
        Hemispheres == [north, south].

    test(longitude_hemisphere_parses_east_hemisphere, condition(pending)) :-
        string_codes("E", Codes),
        phrase(longitude_hemisphere(Hemisphere), Codes),
        Hemisphere == east.

    test(longitude_hemisphere_parses_west_hemisphere, condition(pending)) :-
        string_codes("W", Codes),
        phrase(longitude_hemisphere(Hemisphere), Codes),
        Hemisphere == west.

    test(longitude_hemisphere_only_parses_east_and_west_hemispheres, condition(pending)) :-
        findall(Hemisphere, phrase(longitude_hemisphere(Hemisphere), _), Hemispheres),
        Hemispheres == [east, west].

    test(degrees_parses_positive_float, condition(pending)) :-
        string_codes("748.012", Codes),
        phrase(degrees(Degrees), Codes),
        Degrees =:= 748.012.

    test(degrees_parses_negative_float, condition(pending)) :-
        string_codes("-23.456", Codes),
        phrase(degrees(Degrees), Codes),
        Degrees =:= -23.456.

    test(latitude_degrees_does_not_parse_negative_degrees, [fail, condition(pending)]) :-
        string_codes("-1.234", Codes),
        phrase(latitude_degrees(_), Codes).

    test(latitude_degrees_does_not_parse_degrees_greater_than_90, [fail, condition(pending)]) :-
        string_codes("93.488", Codes),
        phrase(latitude_degrees(_), Codes).

    test(latitude_degrees_parses_degrees_between_0_and_90, condition(pending)) :-
        between(0, 90, IntDegrees),
        Degrees is float(IntDegrees),
        number_string(Degrees, String),
        string_codes(String, Codes),
        phrase(latitude_degrees(LatitudeDegrees), Codes),
        LatitudeDegrees =:= Degrees,
        !.

    test(longitude_degrees_does_not_parse_negative_degrees, [fail, condition(pending)]) :-
        string_codes("-1.234", Codes),
        phrase(longitude_degrees(_), Codes).

    test(longitude_degrees_does_not_parse_degrees_greater_than_180, [fail, condition(pending)]) :-
        string_codes("181.765", Codes),
        phrase(longitude_degrees(_), Codes).

    test(longitude_degrees_parses_degrees_between_0_and_180, condition(pending)) :-
        between(0, 180, IntDegrees),
        Degrees is float(IntDegrees),
        number_string(Degrees, String),
        string_codes(String, Codes),
        phrase(longitude_degrees(LongitudeDegrees), Codes),
        LongitudeDegrees =:= Degrees,
        !.

    test(latitude_parses_degrees, condition(pending)) :-
        string_codes("56.101 N", Codes),
        phrase(latitude(Degrees, _), Codes),
        Degrees =:= 56.101.

    test(latitude_parses_hemisphere, condition(pending)) :-
        string_codes("56.101 N", Codes),
        phrase(latitude(_, Hemisphere), Codes),
        Hemisphere == north.

    test(latitude_does_not_parse_with_missing_space_separator, [fail, condition(pending)]) :-
        string_codes("56.101N", Codes),
        phrase(latitude(_, _), Codes).

    test(latitude_does_not_parse_with_missing_degrees, [fail, condition(pending)]) :-
        string_codes("N", Codes),
        phrase(latitude(_, _), Codes).

    test(latitude_does_not_parse_with_missing_hemisphere, [fail, condition(pending)]) :-
        string_codes("56.101", Codes),
        phrase(latitude(_, _), Codes).

    test(longitude_parses_degrees, condition(pending)) :-
        string_codes("143.889 W", Codes),
        phrase(longitude(Degrees, _), Codes),
        Degrees =:= 143.889.

    test(longitude_parses_hemisphere, condition(pending)) :-
        string_codes("143.889 W", Codes),
        phrase(longitude(_, Hemisphere), Codes),
        Hemisphere == west.

    test(longitude_does_not_parse_with_missing_space_separator, [fail, condition(pending)]) :-
        string_codes("143.889W", Codes),
        phrase(longitude(_, _), Codes).

    test(longitude_does_not_parse_with_missing_degrees, [fail, condition(pending)]) :-
        string_codes("W", Codes),
        phrase(longitude(_, _), Codes).

    test(longitude_does_not_parse_with_missing_hemisphere, [fail, condition(pending)]) :-
        string_codes("143.889", Codes),
        phrase(longitude(_, _), Codes).

    test(coordinate_parses_coordinate, condition(pending)) :-
        string_codes("48.8584 N, 2.2945 E", Codes),
        phrase(coordinate(Latitude, LatitudeHemisphere, Longitude, LongitudeHemisphere), Codes),
        Latitude =:= 48.8584,
        LatitudeHemisphere == north,
        Longitude =:= 2.2945,
        LongitudeHemisphere == east.

    test(coordinate_does_not_parse_with_missing_comma_and_space_separator, [fail, condition(pending)]) :-
        string_codes("48.8584 N 2.2945 E", Codes),
        phrase(coordinate(_, _, _, _), Codes).

    test(coordinate_does_not_parse_with_missing_latitude, [fail, condition(pending)]) :-
        string_codes("2.2945 E", Codes),
        phrase(coordinate(_, _, _, _), Codes).

    test(coordinate_does_not_parse_with_missing_longitude, [fail, condition(pending)]) :-
        string_codes("48.8584 N", Codes),
        phrase(coordinate(_, _, _, _), Codes).

:- end_tests(global_positioning_system).
%-------------------------------------------------- 39 grade-school/grade_school
% grade_school.pl -- the exercism Prolog exercise grade-school, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/grade_school.example.pl, then its tests grade_school_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
create_school([]).

roster(School, Students) :-
    sort(School, SortedSchool),
    pairs_values(SortedSchool, Students).

add_student(School, Student, Grade, [Grade-Student|School]) :-
    \+ member(_-Student, School).

grade(School, Grade, Students) :-
    include([Grade-_]>>true, School, Pairs),
    pairs_values(Pairs, UnsortedStudents),
    sort(UnsortedStudents, Students).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(grade_school).

    test(roster_is_empty_when_no_student_is_added, condition(true)) :-
        create_school(School),
        roster(School, Roster),
        Roster == [].

    test(student_is_added_to_the_roster, condition(pending)) :-
        create_school(School),
        add_student(School, "Aimee", 2, School1),
        roster(School1, Roster),
        Roster == ["Aimee"].

    test(multiple_students_in_the_same_grade_are_added_to_the_roster, condition(pending)) :-
        create_school(School),
        add_student(School, "Blair", 2, School1),
        add_student(School1, "James", 2, School2),
        add_student(School2, "Paul", 2, School3),
        roster(School3, Roster), 
        Roster == ["Blair", "James", "Paul"].

    test(cannot_add_student_to_same_grade_in_the_roster_more_than_once, [fail, condition(pending)]) :-
        create_school(School),
        add_student(School, "Blair", 2, School1),
        add_student(School1, "James", 2, School2),
        add_student(School2, "James", 2, _).

    test(students_in_multiple_grades_are_added_to_the_roster, condition(pending)) :-
        create_school(School),
        add_student(School, "Chelsea", 3, School1),
        add_student(School1, "Logan", 7, School2),
        roster(School2, Roster),
        Roster == ["Chelsea", "Logan"].

    test(cannot_add_same_student_to_multiple_grades_in_the_roster, [fail, condition(pending)]) :-
        create_school(School),
        add_student(School, "Blair", 2, School1),
        add_student(School1, "James", 2, School2),
        add_student(School2, "James", 3, _).

    test(students_are_sorted_by_grades_in_the_roster, condition(pending)) :-
        create_school(School),
        add_student(School, "Jim", 3, School1),
        add_student(School1, "Peter", 2, School2),
        add_student(School2, "Anna", 1, School3),
        roster(School3, Roster),
        Roster == ["Anna", "Peter", "Jim"].

    test(students_are_sorted_by_name_in_the_roster, condition(pending)) :-
        create_school(School),
        add_student(School, "Peter", 2, School1),
        add_student(School1, "Zoe", 2, School2),
        add_student(School2, "Alex", 2, School3),
        roster(School3, Roster),
        Roster == ["Alex", "Peter", "Zoe"].

    test(students_are_sorted_by_grades_and_then_by_name_in_the_roster, condition(pending)) :-
        create_school(School),
        add_student(School, "Peter", 2, School1),
        add_student(School1, "Anna", 1, School2),
        add_student(School2, "Barb", 1, School3),
        add_student(School3, "Zoe", 2, School4),
        add_student(School4, "Alex", 2, School5),
        add_student(School5, "Jim", 3, School6),
        add_student(School6, "Charlie", 1, School7),
        roster(School7, Roster),
        Roster == ["Anna", "Barb", "Charlie", "Alex", "Peter", "Zoe", "Jim"].

    test(grade_is_empty_if_no_students_in_the_roster, condition(pending)) :-
        create_school(School),
        grade(School, 1, Grade),
        Grade == [].

    test(grade_is_empty_if_no_students_in_that_grade, condition(pending)) :-
        create_school(School),
        add_student(School, "Peter", 2, School1),
        add_student(School1, "Zoe", 2, School2),
        add_student(School2, "Alex", 2, School3),
        add_student(School3, "Jim", 3, School4),    
        grade(School4, 1, Grade),
        Grade == [].

    test(students_are_sorted_by_name_in_a_grade, condition(pending)) :-
        create_school(School),
        add_student(School, "Franklin", 5, School1),
        add_student(School1, "Bradley", 5, School2),
        add_student(School2, "Jeff", 1, School3),
        grade(School3, 5, Grade),
        Grade == ["Bradley", "Franklin"].

:- end_tests(grade_school).
%-------------------------------------------------------------- 40 grains/grains
% grains.pl -- the exercism Prolog exercise grains, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/grains.example.pl, then its tests grains_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
square(1, 1) :- !.
square(SquareNumber, Value) :-
    SquareNumber > 1, not(SquareNumber > 64),
    NextSquare is SquareNumber - 1,
    square(NextSquare, NewValue),
    Value is 2 * NewValue,
    !.

total(Total) :- total(Total, 64).

total(0, 0) :- !.
total(Total, Square) :-
    NextSquare is Square - 1,
    total(NextTotal, NextSquare),
    square(Square, SquareValue),
    Total is NextTotal + SquareValue.
    

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(grains).

    test(first, condition(true)) :-
        square(1, Result), Result == 1.

    test(second, condition(pending)) :-
        square(2, Result), Result == 2.

    test(third, condition(pending)) :-
        square(3, Result), Result == 4.

    test(sixteen, condition(pending)) :-
        square(16, Result), Result == 32768.

    test(twenty_three, condition(pending)) :-
        square(23, Result), Result == 4194304.

    test(thirty_two, condition(pending)) :-
        square(32, Result), Result == 2147483648.

    test(fifty_five, condition(pending)) :-
        square(55, Result), Result == 18014398509481984.

    test(sixty_four, condition(pending)) :-
        square(64, Result), Result == 9223372036854775808.

    test(total, condition(pending)) :-
        total(Result), Result == 18446744073709551615.

    test(zero, [fail, condition(pending)]) :-
        square(0, _).

    test(negative, [fail, condition(pending)]) :-
        square(-1, _).

    test(off_board, [fail, condition(pending)]) :-
        square(65, _).

:- end_tests(grains).
%------------------------------------------------------------ 41 hamming/hamming
% hamming.pl -- the exercism Prolog exercise hamming, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/hamming.example.pl, then its tests hamming_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
hamming_distance(Str1, Str2, Distance) :-
    string_length(Str1, Length),
    string_length(Str2, Length),
    string_chars(Str1, List1),
    string_chars(Str2, List2),
    hamming_distance_cmp(List1, List2, Distance).

hamming_distance_cmp([], [], 0) :- !.
hamming_distance_cmp([Char1|Chars1], [Char2|Chars2], Distance) :-
    hamming_distance_cmp(Chars1, Chars2, NextDistance),
    (Char1 == Char2 ->
        Distance is NextDistance
    ;
        Distance is NextDistance + 1
    ).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(hamming).

    test(identical_strands, condition(true)) :-
        hamming_distance("A", "A", Result),
            Result == 0.

    test(long_identical_strands, condition(pending)) :-
        hamming_distance("GGACTGA", "GGACTGA", Result), Result == 0.

    test(complete_distance_in_single_nucleotide_strands, condition(pending)) :-
        hamming_distance("A", "G", 1).

    test(complete_distance_in_small_strands, condition(pending)) :-
        hamming_distance("AG", "CT", Result), Result == 2.

    test(small_distance_in_small_strands, condition(pending)) :-
        hamming_distance("AT", "CT", Result), Result == 1.

    test(small_distance, condition(pending)) :-
        hamming_distance("GGACG", "GGTCG", Result), Result == 1.

    test(small_distance_in_long_strands, condition(pending)) :-
        hamming_distance("ACCAGGG", "ACTATGG", Result), Result == 2.

    test(nonunique_character_in_first_strand, condition(pending)) :-
        hamming_distance("AGA", "AGG", Result), Result == 1.

    test(nonunique_character_in_second_strand, condition(pending)) :-
        hamming_distance("AGG", "AGA", Result), Result == 1.

    test(same_nucleotides_in_different_positions, condition(pending)) :-
        hamming_distance("TAG", "GAT", Result), Result == 2.

    test(large_distance, condition(pending)) :-
        hamming_distance("GATACA", "GCATAA", Result), Result == 4.

    test(large_distance_in_offbyone_strand, condition(pending)) :-
        hamming_distance("GGACGGATTCTG", "AGGACGGATTCT", Result), Result == 9.

    test(empty_strands, condition(pending)) :-
        hamming_distance("", "", Result), Result == 0.

    test(disallow_first_strand_longer, [fail, condition(pending)]) :-
        hamming_distance("AATG", "AAA", _).

    test(disallow_second_strand_longer, [fail, condition(pending)]) :-
        hamming_distance("ATA", "AGTG", _).

:- end_tests(hamming).
%---------------------------------------------------- 42 hello-world/hello_world
% hello_world.pl -- the exercism Prolog exercise hello-world, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/hello_world.example.pl, then its tests hello_world_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
hello_world('Hello, World!').

% Please visit https://exercism.org/docs/tracks/prolog/installation
% for instructions on setting up prolog.
% Visit https://exercism.org/docs/tracks/prolog/tests
% for help running the tests for prolog exercises.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(hello_world).

    test(hello_world, condition(true)) :-
        hello_world('Hello, World!').

:- end_tests(hello_world).
%---------------------------------------------------- 43 high-scores/high_scores
% high_scores.pl -- the exercism Prolog exercise high-scores, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/high_scores.example.pl, then its tests high_scores_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

latest(Scores, Latest) :- last(Scores, Latest).

personal_best(Scores, Best) :- max_list(Scores, Best).

personal_top_three(Scores, TopThree) :-
    sort(0, @>=, Scores, Sorted),
    top_three(Sorted, TopThree), !.

top_three([], []).
top_three([X], [X]).
top_three([X,Y], [X,Y]).
top_three([X,Y,Z|_], [X,Y,Z]).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(high_scores).

    test(latest_score, condition(true)) :-
        latest([100, 0, 90, 30], Latest),
        Latest == 30.

    test(personal_best, condition(pending)) :-
        personal_best([40, 100, 70], Best),
        Best == 100.

    test(personal_top_three_from_a_list_of_scores, condition(pending)) :-
        Scores = [10, 30, 90, 30, 100, 20, 10, 0, 30, 40, 40, 70, 70],
        personal_top_three(Scores, TopThree),
        TopThree == [100, 90, 70].

    test(personal_top_highest_to_lowest, condition(pending)) :-
        personal_top_three([20, 10, 30], TopThree),
        TopThree == [30, 20, 10].

    test(personal_top_when_there_is_a_tie, condition(pending)) :-
        personal_top_three([40, 20, 40, 30], TopThree),
        TopThree == [40, 40, 30].

    test(personal_top_when_there_are_less_than_3, condition(pending)) :-
        personal_top_three([30, 70], TopThree),
        TopThree == [70, 30].

    test(personal_top_when_there_is_only_one, condition(pending)) :-
        personal_top_three([40], TopThree),
        TopThree == [40].

:- end_tests(high_scores).
%---------------------------------------------------------------- 44 house/house
% house.pl -- the exercism Prolog exercise house, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/house.example.pl, then its tests house_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
subject(1, "the house that Jack built").
subject(2, "the malt that lay in").
subject(3, "the rat that ate").
subject(4, "the cat that killed").
subject(5, "the dog that worried").
subject(6, "the cow with the crumpled horn that tossed").
subject(7, "the maiden all forlorn that milked").
subject(8, "the man all tattered and torn that kissed").
subject(9, "the priest all shaven and shorn that married").
subject(10, "the rooster that crowed in the morn that woke").
subject(11, "the farmer sowing his corn that kept").
subject(12, "the horse and the hound and the horn that belonged to").

combine(Part, "", Part) :- !.
combine(Part, Acc, Result) :- format(string(Result), "~s ~s", [Part, Acc]).

verse(N, Lyric) :-
    numlist(1, N, Ns),
    maplist(subject, Ns, Parts),
    foldl(combine, Parts, "", Subjects),
    format(string(Lyric), "This is ~s.", [Subjects]).

recite(Verse, Lyrics) :- recite(Verse, Verse, Lyrics).
recite(From, To, Lyrics) :-
    numlist(From, To, Ns),
    maplist(verse, Ns, Lyrics).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(house).

    test(verse_one_the_house_that_jack_built, condition(true)) :-
        recite(1, Lyrics),
        Lyrics == [
            "This is the house that Jack built."
        ].

    test(verse_two_the_malt_that_lay, condition(pending)) :-
        recite(2, Lyrics),
        Lyrics == [
            "This is the malt that lay in the house that Jack built."
        ].

    test(verse_three_the_rat_that_ate, condition(pending)) :-
        recite(3, Lyrics),
        Lyrics == [
            "This is the rat that ate the malt that lay in the house that Jack built."
        ].

    test(verse_four_the_cat_that_killed, condition(pending)) :-
        recite(4, Lyrics),
        Lyrics == [
            "This is the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

    test(verse_five_the_dog_that_worried, condition(pending)) :-
        recite(5, Lyrics),
        Lyrics == [
            "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

    test(verse_six_the_cow_with_the_crumpled_horn, condition(pending)) :-
        recite(6, Lyrics),
        Lyrics == [
            "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

    test(verse_seven_the_maiden_all_forlorn, condition(pending)) :-
        recite(7, Lyrics),
        Lyrics == [
            "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

    test(verse_eight_the_man_all_tattered_and_torn, condition(pending)) :-
        recite(8, Lyrics),
        Lyrics == [
            "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

    test(verse_nine_the_priest_all_shaven_and_shorn, condition(pending)) :-
        recite(9, Lyrics),
        Lyrics == [
            "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

    test(verse_10_the_rooster_that_crowed_in_the_morn, condition(pending)) :-
        recite(10, Lyrics),
        Lyrics == [
            "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

    test(verse_11_the_farmer_sowing_his_corn, condition(pending)) :-
        recite(11, Lyrics),
        Lyrics == [
            "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

    test(verse_12_the_horse_and_the_hound_and_the_horn, condition(pending)) :-
        recite(12, Lyrics),
        Lyrics == [
            "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

    test(multiple_verses, condition(pending)) :-
        recite(4, 8, Lyrics),
        Lyrics == [
            "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

    test(full_rhyme, condition(pending)) :-
        recite(1, 12, Lyrics),
        Lyrics == [
            "This is the house that Jack built.",
            "This is the malt that lay in the house that Jack built.",
            "This is the rat that ate the malt that lay in the house that Jack built.",
            "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

:- end_tests(house).
%------------------------------------------------ 45 isbn-verifier/isbn_verifier
% isbn_verifier.pl -- the exercism Prolog exercise isbn-verifier, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/isbn_verifier.example.pl, then its tests isbn_verifier_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).
:- use_module(library(dcg/basics)).

separator --> "-".

digit_code(Digit) --> digit(Code), { number_codes(Digit, [Code]) }.

check_digit(10) --> "X".
check_digit(Digit)  --> regular_digit(Digit).

regular_digit(Digit) --> digit_code(Digit), separator.
regular_digit(Digit) --> digit_code(Digit).

regular_digits([D1,D2,D3,D4,D5,D6,D7,D8,D9,D10]) -->
    regular_digit(D1), regular_digit(D2), regular_digit(D3), regular_digit(D4), regular_digit(D5),
    regular_digit(D6), regular_digit(D7), regular_digit(D8), regular_digit(D9), check_digit(D10).

isbn(Isbn) :-
    string_codes(Isbn, Codes),
    phrase(regular_digits(Digits), Codes),
    scalar_product([10,9,8,7,6,5,4,3,2,1], Digits, #=, Checksum),
    Checksum mod 11 #= 0,
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(isbn_verifier).

    test(valid_isbn, condition(true)) :-
        isbn("3-598-21508-8").

    test(invalid_isbn_check_digit, [fail, condition(pending)]) :-
        isbn("3-598-21508-9").

    test(valid_isbn_with_a_check_digit_of_10, condition(pending)) :-
        isbn("3-598-21507-X").

    test(check_digit_is_a_character_other_than_x, [fail, condition(pending)]) :-
        isbn("3-598-21507-A").

    test(invalid_check_digit_in_isbn_is_not_treated_as_zero, [fail, condition(pending)]) :-
        isbn("4-598-21507-B").

    test(invalid_character_in_isbn_is_not_treated_as_zero, [fail, condition(pending)]) :-
        isbn("3-598-P1581-X").

    test(x_is_only_valid_as_a_check_digit, [fail, condition(pending)]) :-
        isbn("3-598-2X507-9").

    test(only_one_check_digit_is_allowed, [fail, condition(pending)]) :-
        isbn("3-598-21508-96").

    test(x_is_not_substituted_by_the_value_10, [fail, condition(pending)]) :-
        isbn("3-598-2X507-5").

    test(valid_isbn_without_separating_dashes, condition(pending)) :-
        isbn("3598215088").

    test(isbn_without_separating_dashes_and_x_as_check_digit, condition(pending)) :-
        isbn("359821507X").

    test(isbn_without_check_digit_and_dashes, [fail, condition(pending)]) :-
        isbn("359821507").

    test(too_long_isbn_and_no_dashes, [fail, condition(pending)]) :-
        isbn("3598215078X").

    test(too_short_isbn, [fail, condition(pending)]) :-
        isbn("00").

    test(isbn_without_check_digit, [fail, condition(pending)]) :-
        isbn("3-598-21507").

    test(check_digit_of_x_should_not_be_used_for_0, [fail, condition(pending)]) :-
        isbn("3-598-21515-X").

    test(empty_isbn, [fail, condition(pending)]) :-
        isbn("").

    test(input_is_9_characters, [fail, condition(pending)]) :-
        isbn("134456729").

    test(invalid_characters_are_not_ignored_after_checking_length, [fail, condition(pending)]) :-
        isbn("3132P34035").

    test(invalid_characters_are_not_ignored_before_checking_length, [fail, condition(pending)]) :-
        isbn("3598P215088").

    test(input_is_too_long_but_contains_a_valid_isbn, [fail, condition(pending)]) :-
        isbn("98245726788").

:- end_tests(isbn_verifier).
%------------------------------------------------------------ 46 isogram/isogram
% isogram.pl -- the exercism Prolog exercise isogram, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/isogram.example.pl, then its tests isogram_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
% returns true if X is at most, 1 time in L.
atMost1(X, XS) :-
 findall(E, (member(E, XS), X = E), O), length(O, LO), LO =< 1.

% returns true if every letter of the engilsh alphabet is at most 1 time in S.
isogram(S) :-
  atom_codes("abcdefghijklmnopqrstuvwxyz", ABC),
  string_lower(S, LowerS),
  atom_codes(LowerS, NormalizedS),
  forall(member(L, ABC), atMost1(L, NormalizedS)).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(isogram).

    test(empty_string, condition(true)) :-
      isogram("").

    test(only_lower_case_characters, condition(pending)) :-
      isogram("isogram").

    test(one_duplicated_character, [fail, condition(pending)]) :-
      isogram("eleven").

    test(longest_reported_english_isogram, condition(pending)) :-
      isogram("subdermatoglyphic").

    test(duplicated_character_in_mixed_case, [fail, condition(pending)]) :-
      isogram("Alphabet").

    test(hypothetical_isogrammic_word_with_hyphen, condition(pending)) :-
      isogram("thumbscrew-japingly").

    test(duplicated_non_letter_character, condition(pending)) :-
      isogram("Hjelmqvist-Gryb-Zock-Pfund-Wax").

    test(name_that_is_an_isogram, condition(pending)) :-
      isogram("Emily Jung Schwartzkopf").

    test(duplicated_character_in_the_middle, [fail, condition(pending)]) :-
      isogram("accentor").

    test(largest_pure_letter_characters_isogram, condition(pending)) :-
      isogram("AbcdEfghIjkLMNopQrStUvWxyZ.").

:- end_tests(isogram).
%---------------------------------- 47 killer-sudoku-helper/killer_sudoku_helper
% killer_sudoku_helper.pl -- the exercism Prolog exercise killer-sudoku-helper, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/killer_sudoku_helper.example.pl, then its tests killer_sudoku_helper_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
combination(1, [H|_], [H]).
combination(N, [H|T], [H|C]) :-
    N1 is N - 1,
    N1 > 0,
    combination(N1, T, C).
combination(N, [_|T], C) :- combination(N, T, C).

combination_with_sum(Size, Sum, Digits, Combination) :-
    combination(Size, Digits, Combination),
    sum_list(Combination, Sum).

combinations(Size, Sum, Exclude, Combinations) :-
    subtract([1,2,3,4,5,6,7,8,9], Exclude, RemainingDigits),
    findall(Combination, combination_with_sum(Size, Sum, RemainingDigits, Combination), Combinations).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(killer_sudoku_helper).

    test(trivial_1_digit_cages_1, condition(true)) :-
        combinations(1, 1, [], Combinations),
        Combinations == [[1]].

    test(trivial_1_digit_cages_2, condition(pending)) :-
        combinations(1, 2, [], Combinations),
        Combinations == [[2]].

    test(trivial_1_digit_cages_3, condition(pending)) :-
        combinations(1, 3, [], Combinations),
        Combinations == [[3]].

    test(trivial_1_digit_cages_4, condition(pending)) :-
        combinations(1, 4, [], Combinations),
        Combinations == [[4]].

    test(trivial_1_digit_cages_5, condition(pending)) :-
        combinations(1, 5, [], Combinations),
        Combinations == [[5]].

    test(trivial_1_digit_cages_6, condition(pending)) :-
        combinations(1, 6, [], Combinations),
        Combinations == [[6]].

    test(trivial_1_digit_cages_7, condition(pending)) :-
        combinations(1, 7, [], Combinations),
        Combinations == [[7]].

    test(trivial_1_digit_cages_8, condition(pending)) :-
        combinations(1, 8, [], Combinations),
        Combinations == [[8]].

    test(trivial_1_digit_cages_9, condition(pending)) :-
        combinations(1, 9, [], Combinations),
        Combinations == [[9]].

    test(cage_with_sum_45_contains_all_digits_1_9, condition(pending)) :-
        combinations(9, 45, [], Combinations),
        Combinations == [[1, 2, 3, 4, 5, 6, 7, 8, 9]].

    test(cage_with_only_1_possible_combination, condition(pending)) :-
        combinations(3, 7, [], Combinations),
        Combinations == [[1, 2, 4]].

    test(cage_with_several_combinations, condition(pending)) :-
        combinations(2, 10, [], Combinations),
        Combinations == [[1, 9], [2, 8], [3, 7], [4, 6]].

    test(cage_with_several_combinations_that_is_restricted, condition(pending)) :-
        combinations(2, 10, [1, 4], Combinations),
        Combinations == [[2, 8], [3, 7]].

:- end_tests(killer_sudoku_helper).
%------------------------------------ 48 kindergarten-garden/kindergarten_garden
% kindergarten_garden.pl -- the exercism Prolog exercise kindergarten-garden, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/kindergarten_garden.example.pl, then its tests kindergarten_garden_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
plant('C', clover) :- !.
plant('G', grass) :- !.
plant('R', radishes) :- !.
plant('V', violets) :- !.

garden(Garden, Child, [Plant1, Plant2, Plant3, Plant4]) :-
  Children = [alice, bob, charlie, david, eve, fred, ginny, harriet, ileana, joseph, kincaid, larry],
  split_string(Garden, "\n", "", [Line1, Line2]),
  string_chars(Line1, Row1),
  string_chars(Line2, Row2),
  nth0(Index, Children, Child),
  First is 2*Index,
  succ(First, Second),
  nth0(First, Row1, P1),
  nth0(Second, Row1, P2),
  nth0(First, Row2, P3),
  nth0(Second, Row2, P4),
  plant(P1, Plant1),
  plant(P2, Plant2),
  plant(P3, Plant3),
  plant(P4, Plant4),
  !.

pending :-
  true.
pending :-
  write('\nA TEST IS PENDING!\n'),
  fail.

:- begin_tests(partial_garden).

  test(garden_with_single_student, condition(true)) :-
    garden("RC\nGG", alice, Plants),
    Plants == [radishes, clover, grass, grass].

  test(different_garden_with_single_student, condition(pending)) :-
    garden("VC\nRC", alice, Plants),
    Plants == [violets, clover, radishes, clover].

  test(garden_with_two_students, condition(pending)) :-
    garden("VVCG\nVVRC", bob, Plants),
    Plants == [clover, grass, radishes, clover].

  test(multiple_students_for_the_same_garden_with_three_students, condition(pending)) :-
    garden("VVCCGG\nVVCCGG", bob, Plants),
    Plants == [clover, clover, clover, clover].

  test(third_student_garden, condition(pending)) :-
    garden("VVCCGG\nVVCCGG", charlie, Plants),
    Plants == [grass, grass, grass, grass].

:- end_tests(partial_garden).

:- begin_tests(full_garden).

  test(for_alice_first_student_garden, condition(pending)) :-
    garden("VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", alice, Plants),
    Plants == [violets, radishes, violets, radishes].

  test(for_bob_second_student_garden, condition(pending)) :-
    garden("VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", bob, Plants),
    Plants == [clover, grass, clover, clover].
  
  test(for_charlie, condition(pending)) :-
    garden("VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", charlie, Plants),
    Plants == [violets, violets, clover, grass].
  
  test(for_david, condition(pending)) :-
    garden("VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", david, Plants),
    Plants == [radishes, violets, clover, radishes].

  test(for_eve, condition(pending)) :-
    garden("VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", eve, Plants),
    Plants == [clover, grass, radishes, grass].

  test(for_fred, condition(pending)) :-
    garden("VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", fred, Plants),
    Plants == [grass, clover, violets, clover].

  test(for_ginny, condition(pending)) :-
    garden("VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", ginny, Plants),
    Plants == [clover, grass, grass, clover].

  test(for_harriet, condition(pending)) :-
    garden("VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", harriet, Plants),
    Plants == [violets, radishes, radishes, violets].

  test(for_ileana, condition(pending)) :-
    garden("VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", ileana, Plants),
    Plants == [grass, clover, violets, clover].

  test(for_joseph, condition(pending)) :-
    garden("VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", joseph, Plants),
    Plants == [violets, clover, violets, grass].

  test(for_kincaid_second_to_last_student_garden, condition(pending)) :-
    garden("VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", kincaid, Plants),
    Plants == [grass, clover, clover, grass].

  test(for_larry_last_student_garden, condition(pending)) :-
    garden("VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", larry, Plants),
    Plants == [grass, violets, clover, violets].

:- end_tests(full_garden).
%---------------------------------------------------------- 49 knapsack/knapsack
% knapsack.pl -- the exercism Prolog exercise knapsack, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/knapsack.example.pl, then its tests knapsack_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

maximum_value([], Capacity, 0) :- !.

maximum_value(Items, Capacity, Value) :-
    length(Items, N),
    length(Amounts, N),
    Amounts ins 0..1,
    maplist(arg(1), Items, Weights),
    maplist(arg(2), Items, Values),
    sum(Amounts, #>, 0),
    scalar_product(Weights, Amounts, #=<, Capacity),
    scalar_product(Values, Amounts, #=, Value),
    labeling([max(Value)], Amounts),
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(knapsack).

    test(no_items, condition(true)) :-
        maximum_value([], 100, Value),
        Value == 0.

    test(one_item_too_heavy, [fail, condition(pending)]) :-
        Weight = 100,
        Value = 1,
        maximum_value([item(Weight, Value)], 10, _).

    test(five_items_cannot_be_greedy_by_weight_, condition(pending)) :-
        maximum_value(
            [
                item(2, 5),
                item(2, 5),
                item(2, 5),
                item(2, 5),
                item(10, 21)
            ],
            10,
            Value
        ),
        Value == 21.

    test(five_items_cannot_be_greedy_by_value_, condition(pending)) :-
        maximum_value(
            [
                item(2, 20),
                item(2, 20),
                item(2, 20),
                item(2, 20),
                item(10, 50)
            ],
            10,
            Value
        ),
        Value == 80.

    test(example_knapsack, condition(pending)) :-
        maximum_value(
            [
                item(5, 10),
                item(4, 40),
                item(6, 30),
                item(4, 50)
            ],
            10,
            Value
        ),
        Value == 90.

    test(eight_items, condition(pending)) :-
        maximum_value(
            [
                item(25, 350),
                item(35, 400),
                item(45, 450),
                item(5, 20),
                item(25, 70),
                item(3, 8),
                item(2, 5),
                item(2, 5)
            ],
            104,
            Value
        ),
        Value == 900.

    test(fifteen_items, condition(pending)) :-
        maximum_value(
            [
                item(70, 135),
                item(73, 139),
                item(77, 149),
                item(80, 150),
                item(82, 156),
                item(87, 163),
                item(90, 173),
                item(94, 184),
                item(98, 192),
                item(106, 201),
                item(110, 210),
                item(113, 214),
                item(115, 221),
                item(118, 229),
                item(120, 240)
            ],
            750,
            Value
        ),
        Value == 1458.

:- end_tests(knapsack).
%------------------------------ 50 largest-series-product/largest_series_product
% largest_series_product.pl -- the exercism Prolog exercise largest-series-product, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/largest_series_product.example.pl, then its tests largest_series_product_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

digits([], []).
digits([C|Chars], [D|Digits]) :-
    char_type(C, 'digit'),
    number_chars(D, [C]),
    digits(Chars, Digits).

series(Digits, Span, []) :-
    length(Digits, Length),
    Length #< Span,
    !.

series([D|Digits], Span, [Serie|Series]) :-
    append(Serie, _, [D|Digits]),
    length(Serie, Span),
    series(Digits, Span, Series),
    !.

product([], 1) :- !.
product([D|Digits], Product) :-
    product(Digits, DigitsProduct),
    Product #= D * DigitsProduct.

largest_product(Input, Span, Product) :-
    Span #> 0,
    string_chars(Input, Chars),
    digits(Chars, Digits),
    series(Digits, Span, Series),
    maplist(product, Series, Products),
    max_member(Product, Products).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(largest_series_product).

    test(finds_the_largest_product_if_span_equals_length, condition(true)) :-
        largest_product("29", 2, Product), Product == 18.

    test(can_find_the_largest_product_of_2_with_numbers_in_order, condition(pending)) :-
        largest_product("0123456789", 2, Product), Product == 72.

    test(can_find_the_largest_product_of_2, condition(pending)) :-
        largest_product("576802143", 2, Product), Product == 48.

    test(can_find_the_largest_product_of_3_with_numbers_in_order, condition(pending)) :-
        largest_product("0123456789", 3, Product), Product == 504.

    test(can_find_the_largest_product_of_3, condition(pending)) :-
        largest_product("1027839564", 3, Product), Product == 270.

    test(can_find_the_largest_product_of_5_with_numbers_in_order, condition(pending)) :-
        largest_product("0123456789", 5, Product), Product == 15120.

    test(can_get_the_largest_product_of_a_big_number, condition(pending)) :-    
        largest_product("73167176531330624919225119674426574742355349194934", 6, Product), Product == 23520.

    test(reports_zero_if_the_only_digits_are_zero, condition(pending)) :-
        largest_product("0000", 2, Product), Product == 0.

    test(reports_zero_if_all_spans_include_zero, condition(pending)) :-
        largest_product("99099", 3, Product), Product == 0.

    test(rejects_span_longer_than_string_length, [fail, condition(pending)]) :-
        largest_product("123", 4, _).

    test(rejects_empty_string_and_nonzero_span, [fail, condition(pending)]) :-
        largest_product("", 1, _).

    test(rejects_invalid_character_in_digits, [fail, condition(pending)]) :-
        largest_product("1234a5", 2, _).

    test(rejects_negative_span, [fail, condition(pending)]) :-
        largest_product("12345", -1, _).

:- end_tests(largest_series_product).
%------------------------------------------------------------------ 51 leap/leap
% leap.pl -- the exercism Prolog exercise leap, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/leap.example.pl, then its tests leap_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
leap(Year) :-
    0 is mod(Year, 4), not(0 is mod(Year, 100)), !;
    0 is mod(Year, 400).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(leap_tests).

    test(leap_year, condition(true)) :-
        leap(1996).

    test(standard_and_odd_year, condition(pending)) :-
        not(leap(1997)).

    test(standard_even_year, condition(pending)) :-
        not(leap(1998)).

    test(standard_nineteeth_century, condition(pending)) :-
        not(leap(1900)).

    test(standard_eighteenth_century, condition(pending)) :-
        not(leap(1800)).

    test(leap_twenty_fourth_century, condition(pending)) :-
        leap(2400).

    test(leap_y2k, condition(pending)) :-
        leap(2000).

:- end_tests(leap_tests).
%---------------------------------------------------------- 52 list-ops/list_ops
% list_ops.pl -- the exercism Prolog exercise list-ops, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/list_ops.example.pl, then its tests list_ops_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
custom_length(List, Length) :-
    custom_foldl([Acc,_,Result]>>(Result is Acc + 1), 0, List, Length).

custom_append(L1, L2, Appended) :-
    custom_foldr([El,Acc,Result]>>(Result = [El|Acc]), L1, L2, Appended).

custom_concat(List, Concatenated) :-
    custom_foldr([El,Acc,Result]>>(custom_append(El, Acc, Result)), List, [], Concatenated).

custom_reverse(List, Reversed) :-
    custom_foldl([Acc,El,Result]>>(Result = [El|Acc]), [], List, Reversed).

custom_map(Goal, List, Mapped) :-
    custom_foldr([El,Acc,Result]>>(call(Goal, El, Value), Result = [Value|Acc]), List, [], Mapped).

custom_filter(Goal, List, Filtered) :-
    custom_foldr([El,Acc,Result]>>(call(Goal, El) -> Result = [El|Acc]; Result = Acc), List, [], Filtered).

custom_foldl(_, State, [], State) :- !.
custom_foldl(Goal, State, [H|T], Folded) :-
    call(Goal, State, H, Result),
    custom_foldl(Goal, Result, T, Folded).

custom_foldr(_, [], State, State) :- !.
custom_foldr(Goal, [H|T], State, Folded) :-
    custom_foldr(Goal, T, State, Result),
    call(Goal, H, Result, Folded).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(list_ops).

test(length_empty_list, condition(true)) :-
    custom_length([], Length),
    Length == 0.

test(length_non_empty_list, condition(pending)) :-
    custom_length([1, 2, 3, 4], Length),
    Length == 4.

test(append_empty_lists, condition(pending)) :-
    custom_append([], [], Appended),
    Appended == [].

test(append_list_to_empty_list, condition(pending)) :-
    custom_append([], [1, 2, 3, 4], Appended),
    Appended == [1, 2, 3, 4].

test(append_empty_list_to_list, condition(pending)) :-
    custom_append([1, 2, 3, 4], [], Appended),
    Appended == [1, 2, 3, 4].

test(append_non_empty_lists, condition(pending)) :-
    custom_append([1, 2], [2, 3, 4, 5], Appended),
    Appended == [1, 2, 2, 3, 4, 5].

test(concat_empty_list, condition(pending)) :-
    custom_concat([], Concatenated),
    Concatenated == [].

test(concat_list_of_lists, condition(pending)) :-
    custom_concat([[1, 2], [3], [], [4, 5, 6]], Concatenated),
    Concatenated == [1, 2, 3, 4, 5, 6].

test(concat_list_of_nested_lists, condition(pending)) :-
    custom_concat([[[1], [2]], [[3]], [[]], [[4, 5, 6]]], Concatenated),
    Concatenated == [[1], [2], [3], [], [4, 5, 6]].

test(map_empty_list, condition(pending)) :-
    custom_map([X, Y]>>(Y is X + 1), [], Mapped),
    Mapped == [].

test(map_non_empty_list, condition(pending)) :-
    custom_map([X, Y]>>(Y is X + 1), [1, 3, 5, 7], Mapped),
    Mapped == [2, 4, 6, 8].

test(filter_empty_list, condition(pending)) :-
    custom_filter([X]>>(X mod 2 =:= 1), [], Filtered),
    Filtered == [].

test(filter_non_empty_list, condition(pending)) :-
    custom_filter([X]>>(X mod 2 =:= 1), [1, 2, 3, 5], Filtered),
    Filtered == [1, 3, 5].

test(reverse_empty_list, condition(pending)) :-
    custom_reverse([], Reversed), 
    Reversed == [].

test(reverse_non_empty_list, condition(pending)) :-
    custom_reverse([1, 3, 5, 7], Reversed), 
    Reversed == [7, 5, 3, 1].

test(reverse_list_of_lists_is_not_flattened, condition(pending)) :-
    custom_reverse([[1, 2], [3], [], [4, 5, 6]], Reversed),
    Reversed == [[4, 5, 6], [], [3], [1, 2]].

test(foldl_empty_list, condition(pending)) :-
    custom_foldl([Acc,El,Result]>>(Result is El * Acc), 2, [], Folded),
    Folded == 2.

test(foldl_direction_independent_function_applied_to_non_empty_list, condition(pending)) :-
    custom_foldl([Acc,El,Result]>>(Result is El + Acc), 5, [1, 2, 3, 4], Folded),
    Folded == 15.

test(foldl_direction_dependent_function_applied_to_non_empty_list, condition(pending)) :-
    custom_foldl([Acc,El,Result]>>(Result is El / Acc), 24, [1, 2, 3, 4], Folded),
    Folded == 64.0.

test(foldr_empty_list, condition(pending)) :-
    custom_foldr([El,Acc,Result]>>(Result is El * Acc), [], 2, Folded),
    Folded == 2.

test(foldr_direction_independent_function_applied_to_non_empty_list, condition(pending)) :-
    custom_foldr([El,Acc,Result]>>(Result is El + Acc), [1, 2, 3, 4], 5, Folded),
    Folded == 15.

test(foldr_direction_dependent_function_applied_to_non_empty_list, condition(pending)) :-
    custom_foldr([El,Acc,Result]>>(Result is El / Acc), [1, 2, 3, 4], 24, Folded),
    Folded == 9.0.

:- end_tests(list_ops).
%------------------------------------------------------------------ 53 luhn/luhn
% luhn.pl -- the exercism Prolog exercise luhn, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/luhn.example.pl, then its tests luhn_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).
:- use_module(library(dcg/basics)).

digits_blank([]) --> [].
digits_blank(Digits) --> blank, digits_blank(Digits).
digits_blank([D|Digits]) --> digit(C), { atom_number(C, D) }, digits_blank(Digits).

multiplier_even --> [1], multiplier_odd.
multiplier_even --> [].

multiplier_odd --> [2], multiplier_even.
multiplier_odd --> [].

multipliers(Digits, Multipliers) :-
    length(Digits, Length),
    length(Multipliers, Length),
    phrase(multiplier_even, Multipliers), !.

double(Digit, 1, Digit).
double(Digit, 2, Doubled) :- Digit #< 5 -> Doubled #= Digit * 2; Doubled #= Digit * 2 - 9.

double(Digits, Doubled) :-
    reverse(Digits, Reversed),
    multipliers(Reversed, Multipliers),
    maplist(double, Reversed, Multipliers, Doubled).

checksum(Digits, Checksum) :-
    double(Digits, Doubled),
    sum_list(Doubled, Checksum).

valid(String) :-
    string_chars(String, Chars),
    phrase(digits_blank(Digits), Chars),
    length(Digits, Length),
    Length #> 1,
    checksum(Digits, Checksum),
    Checksum mod 10 #= 0,
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(luhn).

    test(single_digit_strings_can_not_be_valid, [fail, condition(true)]) :-
        valid("1").

    test(a_single_zero_is_invalid, [fail, condition(pending)]) :-
        valid("0").

    test(a_simple_valid_sin_that_remains_valid_if_reversed, condition(pending)) :-
        valid("059").

    test(a_simple_valid_sin_that_becomes_invalid_if_reversed, condition(pending)) :-
        valid("59").

    test(a_valid_canadian_sin, condition(pending)) :-
        valid("055 444 285").

    test(invalid_canadian_sin, [fail, condition(pending)]) :-
        valid("055 444 286").

    test(invalid_credit_card, [fail, condition(pending)]) :-
        valid("8273 1232 7352 0569").

    test(invalid_long_number_with_an_even_remainder, [fail, condition(pending)]) :-
        valid("1 2345 6789 1234 5678 9012").

    test(invalid_long_number_with_a_remainder_divisible_by_5, [fail, condition(pending)]) :-
        valid("1 2345 6789 1234 5678 9013").

    test(valid_number_with_an_even_number_of_digits, condition(pending)) :-
        valid("095 245 88").

    test(valid_number_with_an_odd_number_of_spaces, condition(pending)) :-
        valid("234 567 891 234").

    test(valid_strings_with_a_non_digit_added_at_the_end_become_invalid, [fail, condition(pending)]) :-
        valid("059a").

    test(valid_strings_with_punctuation_included_become_invalid, [fail, condition(pending)]) :-
        valid("055-444-285").

    test(valid_strings_with_symbols_included_become_invalid, [fail, condition(pending)]) :-
        valid("055# 444$ 285").

    test(single_zero_with_space_is_invalid, [fail, condition(pending)]) :-
        valid(" 0").

    test(more_than_a_single_zero_is_valid, condition(pending)) :-
        valid("0000 0").

    test(input_digit_9_is_correctly_converted_to_output_digit_9, condition(pending)) :-
        valid("091").

    test(very_long_input_is_valid, condition(pending)) :-
        valid("9999999999 9999999999 9999999999 9999999999").

    test(valid_luhn_with_an_odd_number_of_digits_and_non_zero_first_digit, condition(pending)) :-
        valid("109").

    test(using_ascii_value_for_non_doubled_non_digit_isn_t_allowed, [fail, condition(pending)]) :-
        valid("055b 444 285").

    test(using_ascii_value_for_doubled_non_digit_isn_t_allowed, [fail, condition(pending)]) :-
        valid(":9").

    test(non_numeric_non_space_char_in_the_middle_with_a_sum_that_s_divisible_by_10_isn_t_allowed, [fail, condition(pending)]) :-
        valid("59%59").

:- end_tests(luhn).
%-------------------------------------------------- 54 magic-square/magic_square
% magic_square.pl -- the exercism Prolog exercise magic-square, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/magic_square.example.pl, then its tests magic_square_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

diagonals(Rows, LeftRightDiagonal, RightLeftDiagonal) :-
    length(Rows, N),
    numlist(1, N, Indices),
    reverse(Indices, ReverseIndices),
    pairs_keys_values(LeftRightIndices, Indices, Indices),    
    pairs_keys_values(RightLeftIndices, ReverseIndices, Indices),
    maplist(diagonal_element(Rows), LeftRightIndices, LeftRightDiagonal),
    maplist(diagonal_element(Rows), RightLeftIndices, RightLeftDiagonal).

diagonal_element(Rows, X-Y, Value) :- nth1(Y, Rows, Row), nth1(X, Row, Value).

magic_square(Rows) :-
    maplist(sumlist, Rows, RowSums),
    transpose(Rows, Cols),
    maplist(sumlist, Cols, ColSums),
    diagonals(Rows, LeftRightDiagonal, RightLeftDiagonal),
    sumlist(LeftRightDiagonal, LeftRightDiagonalSum),
    sumlist(RightLeftDiagonal, RightLeftDiagonalSum),
    append([RowSums, ColSums, [LeftRightDiagonalSum, RightLeftDiagonalSum]], Sums),
    sort(Sums, SortedSums),
    length(SortedSums, 1).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(magic_square).

    test(magic_square_order_3, condition(true)) :-
        Square = 
            [
                [2, 7, 6],
                [9, 5, 1],
                [4, 3, 8]
            ],
        magic_square(Square).

    test(magic_square_order_4, condition(pending)) :-
        Square = 
            [
                [ 2, 16, 13,  3],
                [11,  5,  8, 10],
                [ 7,  9, 12,  6],
                [14,  4,  1, 15]
            ],
        magic_square(Square).

    test(magic_square_order_9, condition(pending)) :-
        Square = 
            [
                [31, 76, 13, 36, 81, 18, 29, 74, 11],
                [22, 40, 58, 27, 45, 63, 20, 38, 56],
                [67,  4, 49, 72,  9, 54, 65,  2, 47],
                [30, 75, 12, 32, 77, 14, 34, 79, 16],
                [21, 39, 57, 23, 41, 59, 25, 43, 61],
                [66,  3, 48, 68,  5, 50, 70,  7, 52],
                [35, 80, 17, 28, 73, 10, 33, 78, 15],
                [26, 44, 62, 19, 37, 55, 24, 42, 60],
                [71,  8, 53, 64,  1, 46, 69,  6, 51]
            ],
        magic_square(Square).

    test(invalid_magic_square, [fail, condition(pending)]) :-
        Square = 
            [
                [1, 2, 3],
                [4, 5, 6],
                [7, 8, 9]
            ],
        magic_square(Square).

:- end_tests(magic_square).
%---------------------------------------- 55 matching-brackets/matching_brackets
% matching_brackets.pl -- the exercism Prolog exercise matching-brackets, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/matching_brackets.example.pl, then its tests matching_brackets_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it; double_quotes set back to string before the tests, as the runner reads them in a file of their own.
:- use_module(library(dcg/basics)).
:- set_prolog_flag(double_quotes, chars).

parentheses --> "(", balanced, ")".
brackets    --> "[", balanced, "]".
braces      --> "{", balanced, "}".

balanced --> (parentheses | brackets | braces), balanced.
balanced --> non_bracket, balanced.
balanced --> [].

non_bracket --> [C], { \+ member(C, "()[]{}") }.

paired(String) :-
    string_chars(String, Chars),
    phrase(balanced, Chars),
    !.

:- set_prolog_flag(double_quotes, string).
pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(matching_brackets).

    test(paired_square_brackets, condition(true)) :-
        paired("[]").

    test(empty_string, condition(pending)) :-
        paired("").

    test(unpaired_brackets, [fail, condition(pending)]) :-
        paired("[[").

    test(wrong_ordered_brackets, [fail, condition(pending)]) :-
        paired("}{").

    test(wrong_closing_bracket, [fail, condition(pending)]) :-
        paired("{]").

    test(paired_with_whitespace, condition(pending)) :-
        paired("{ }").

    test(partially_paired_brackets, [fail, condition(pending)]) :-
        paired("{[])").

    test(simple_nested_brackets, condition(pending)) :-
        paired("{[]}").

    test(several_paired_brackets, condition(pending)) :-
        paired("{}[]").

    test(paired_and_nested_brackets, condition(pending)) :-
        paired("([{}({}[])])").

    test(unopened_closing_brackets, [fail, condition(pending)]) :-
        paired("{[)][]}").

    test(unpaired_and_nested_brackets, [fail, condition(pending)]) :-
        paired("([{])").

    test(paired_and_wrong_nested_brackets, [fail, condition(pending)]) :-
        paired("[({]})").

    test(paired_and_wrong_nested_brackets_but_innermost_are_correct, [fail, condition(pending)]) :-
        paired("[({}])").

    test(paired_and_incomplete_brackets, [fail, condition(pending)]) :-
        paired("{}[").

    test(too_many_closing_brackets, [fail, condition(pending)]) :-
        paired("[]]").

    test(early_unexpected_brackets, [fail, condition(pending)]) :-
        paired(")()").

    test(early_mismatched_brackets, [fail, condition(pending)]) :-
        paired("{)()").

    test(math_expression, condition(pending)) :-
        paired("(((185 + 223.85) * 15) - 543)/2").

    test(complex_latex_expression, condition(pending)) :-
        paired("\\left(\\begin{array}{cc} \\frac{1}{3} & x\\\\ \\mathrm{e}^{x} &... x^2 \\end{array}\\right)").

:- end_tests(matching_brackets).
%-------------------------------------------------------------- 56 matrix/matrix
% matrix.pl -- the exercism Prolog exercise matrix, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/matrix.example.pl, then its tests matrix_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(dcg/basics)).
:- use_module(library(clpfd)).

columns([Value|Values]) --> integer(Value), " ", columns(Values).
columns([Value]) --> integer(Value).

rows([Row|Rows]) --> columns(Row), "\n", rows(Rows).
rows([Row]) --> columns(Row).

parse(Matrix, Rows) :-
    string_codes(Matrix, Codes),
    phrase(rows(Rows), Codes),
    !.

row(Matrix, Y, Row) :-
    parse(Matrix, Rows),
    nth1(Y, Rows, Row).

column(Matrix, X, Column) :-
    parse(Matrix, Rows),
    transpose(Rows, Columns),
    nth1(X, Columns, Column).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(matrix).

    test(extract_row_from_one_number_matrix, condition(true)) :-
        row("1", 1, Row),
        Row == [1].

    test(can_extract_row, condition(pending)) :-
        row("1 2\n3 4", 2, Row),
        Row == [3, 4].

    test(extract_row_where_numbers_have_different_widths, condition(pending)) :-
        row("1 2\n10 20", 2, Row),
        Row == [10, 20].

    test(can_extract_row_from_non_square_matrix_with_no_corresponding_column, condition(pending)) :-
        row("1 2 3\n4 5 6\n7 8 9\n8 7 6", 4, Row),
        Row == [8, 7, 6].

    test(extract_column_from_one_number_matrix, condition(pending)) :-
        column("1", 1, Column),
        Column == [1].

    test(can_extract_column, condition(pending)) :-
        column("1 2 3\n4 5 6\n7 8 9", 3, Column),
        Column == [3, 6, 9].

    test(can_extract_column_from_non_square_matrix_with_no_corresponding_Column, condition(pending)) :-
        column("1 2 3 4\n5 6 7 8\n9 8 7 6", 4, Column),
        Column == [4, 8, 6].

    test(extract_column_where_numbers_have_different_widths, condition(pending)) :-
        column("89 1903 3\n18 3 1\n9 4 800", 2, Column),
        Column == [1903, 3, 4].

:- end_tests(matrix).
%-------------------------------------------------------------- 57 meetup/meetup
% meetup.pl -- the exercism Prolog exercise meetup, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/meetup.example.pl, then its tests meetup_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
weekday_number('Monday', 1).
weekday_number('Tuesday', 2).
weekday_number('Wednesday', 3).
weekday_number('Thursday', 4).
weekday_number('Friday', 5).
weekday_number('Saturday', 6).
weekday_number('Sunday', 7).

month_day(Year, Month, Day) :-
    between(1, 31, Day),
    date_time_stamp(date(Year, Month, Day, 0, 0, 0, 0, -, -), Stamp),
    stamp_date_time(Stamp, date(Year, Month, Day, _, _, _, _, _, _), 0).

days(Year, Month, WeekDay, Dates) :-
    weekday_number(WeekDay, Number),
    findall(date(Year, Month, Day),
            ( month_day(Year, Month, Day),
              day_of_the_week(date(Year, Month, Day), Number) ),
            Dates).

nth1_day(Year, Month, WeekDay, Index, Date) :-
    days(Year, Month, WeekDay, Dates),
    nth1(Index, Dates, Date).

meetup(Year, Month, first, WeekDay, Date)  :- nth1_day(Year, Month, WeekDay, 1, Date), !.
meetup(Year, Month, second, WeekDay, Date) :- nth1_day(Year, Month, WeekDay, 2, Date), !.
meetup(Year, Month, third, WeekDay, Date)  :- nth1_day(Year, Month, WeekDay, 3, Date), !.
meetup(Year, Month, fourth, WeekDay, Date) :- nth1_day(Year, Month, WeekDay, 4, Date), !.

meetup(Year, Month, last, WeekDay, Date) :-
    days(Year, Month, WeekDay, Dates),
    last(Dates, Date), !.

meetup(Year, Month, teenth, WeekDay, Date) :-
    days(Year, Month, WeekDay, Dates),
    member(Date, Dates),
    Date = date(_, _, Day),
    Day >= 13,
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(meetup).

    test(when_first_monday_is_some_day_in_the_middle_of_the_first_week, condition(true)) :-
        meetup(2013, 3, first, 'Monday', Date),
        Date == date(2013, 3, 4).

    test(when_first_monday_is_the_1st_the_first_day_of_the_first_week, condition(pending)) :-
        meetup(2013, 4, first, 'Monday', Date),
        Date == date(2013, 4, 1).

    test(when_first_tuesday_is_the_7th_the_last_day_of_the_first_week, condition(pending)) :-
        meetup(2013, 5, first, 'Tuesday', Date),
        Date == date(2013, 5, 7).

    test(when_first_tuesday_is_some_day_in_the_middle_of_the_first_week, condition(pending)) :-
        meetup(2013, 6, first, 'Tuesday', Date),
        Date == date(2013, 6, 4).

    test(when_first_wednesday_is_some_day_in_the_middle_of_the_first_week, condition(pending)) :-
        meetup(2013, 7, first, 'Wednesday', Date),
        Date == date(2013, 7, 3).

    test(when_first_wednesday_is_the_7th_the_last_day_of_the_first_week, condition(pending)) :-
        meetup(2013, 8, first, 'Wednesday', Date),
        Date == date(2013, 8, 7).

    test(when_first_thursday_is_some_day_in_the_middle_of_the_first_week, condition(pending)) :-
        meetup(2013, 9, first, 'Thursday', Date),
        Date == date(2013, 9, 5).

    test(when_first_thursday_is_another_day_in_the_middle_of_the_first_week, condition(pending)) :-
        meetup(2013, 10, first, 'Thursday', Date),
        Date == date(2013, 10, 3).

    test(when_first_friday_is_the_1st_the_first_day_of_the_first_week, condition(pending)) :-
        meetup(2013, 11, first, 'Friday', Date),
        Date == date(2013, 11, 1).

    test(when_first_friday_is_some_day_in_the_middle_of_the_first_week, condition(pending)) :-
        meetup(2013, 12, first, 'Friday', Date),
        Date == date(2013, 12, 6).

    test(when_first_saturday_is_some_day_in_the_middle_of_the_first_week, condition(pending)) :-
        meetup(2013, 1, first, 'Saturday', Date),
        Date == date(2013, 1, 5).

    test(when_first_saturday_is_another_day_in_the_middle_of_the_first_week, condition(pending)) :-
        meetup(2013, 2, first, 'Saturday', Date),
        Date == date(2013, 2, 2).

    test(when_first_sunday_is_some_day_in_the_middle_of_the_first_week, condition(pending)) :-
        meetup(2013, 3, first, 'Sunday', Date),
        Date == date(2013, 3, 3).

    test(when_first_sunday_is_the_7th_the_last_day_of_the_first_week, condition(pending)) :-
        meetup(2013, 4, first, 'Sunday', Date),
        Date == date(2013, 4, 7).

    test(when_second_monday_is_some_day_in_the_middle_of_the_second_week, condition(pending)) :-
        meetup(2013, 3, second, 'Monday', Date),
        Date == date(2013, 3, 11).

    test(when_second_monday_is_the_8th_the_first_day_of_the_second_week, condition(pending)) :-
        meetup(2013, 4, second, 'Monday', Date),
        Date == date(2013, 4, 8).

    test(when_second_tuesday_is_the_14th_the_last_day_of_the_second_week, condition(pending)) :-
        meetup(2013, 5, second, 'Tuesday', Date),
        Date == date(2013, 5, 14).

    test(when_second_tuesday_is_some_day_in_the_middle_of_the_second_week, condition(pending)) :-
        meetup(2013, 6, second, 'Tuesday', Date),
        Date == date(2013, 6, 11).

    test(when_second_wednesday_is_some_day_in_the_middle_of_the_second_week, condition(pending)) :-
        meetup(2013, 7, second, 'Wednesday', Date),
        Date == date(2013, 7, 10).

    test(when_second_wednesday_is_the_14th_the_last_day_of_the_second_week, condition(pending)) :-
        meetup(2013, 8, second, 'Wednesday', Date),
        Date == date(2013, 8, 14).

    test(when_second_thursday_is_some_day_in_the_middle_of_the_second_week, condition(pending)) :-
        meetup(2013, 9, second, 'Thursday', Date),
        Date == date(2013, 9, 12).

    test(when_second_thursday_is_another_day_in_the_middle_of_the_second_week, condition(pending)) :-
        meetup(2013, 10, second, 'Thursday', Date),
        Date == date(2013, 10, 10).

    test(when_second_friday_is_the_8th_the_first_day_of_the_second_week, condition(pending)) :-
        meetup(2013, 11, second, 'Friday', Date),
        Date == date(2013, 11, 8).

    test(when_second_friday_is_some_day_in_the_middle_of_the_second_week, condition(pending)) :-
        meetup(2013, 12, second, 'Friday', Date),
        Date == date(2013, 12, 13).

    test(when_second_saturday_is_some_day_in_the_middle_of_the_second_week, condition(pending)) :-
        meetup(2013, 1, second, 'Saturday', Date),
        Date == date(2013, 1, 12).

    test(when_second_saturday_is_another_day_in_the_middle_of_the_second_week, condition(pending)) :-
        meetup(2013, 2, second, 'Saturday', Date),
        Date == date(2013, 2, 9).

    test(when_second_sunday_is_some_day_in_the_middle_of_the_second_week, condition(pending)) :-
        meetup(2013, 3, second, 'Sunday', Date),
        Date == date(2013, 3, 10).

    test(when_second_sunday_is_the_14th_the_last_day_of_the_second_week, condition(pending)) :-
        meetup(2013, 4, second, 'Sunday', Date),
        Date == date(2013, 4, 14).

    test(when_third_monday_is_some_day_in_the_middle_of_the_third_week, condition(pending)) :-
        meetup(2013, 3, third, 'Monday', Date),
        Date == date(2013, 3, 18).

    test(when_third_monday_is_the_15th_the_first_day_of_the_third_week, condition(pending)) :-
        meetup(2013, 4, third, 'Monday', Date),
        Date == date(2013, 4, 15).

    test(when_third_tuesday_is_the_21st_the_last_day_of_the_third_week, condition(pending)) :-
        meetup(2013, 5, third, 'Tuesday', Date),
        Date == date(2013, 5, 21).

    test(when_third_tuesday_is_some_day_in_the_middle_of_the_third_week, condition(pending)) :-
        meetup(2013, 6, third, 'Tuesday', Date),
        Date == date(2013, 6, 18).

    test(when_third_wednesday_is_some_day_in_the_middle_of_the_third_week, condition(pending)) :-
        meetup(2013, 7, third, 'Wednesday', Date),
        Date == date(2013, 7, 17).

    test(when_third_wednesday_is_the_21st_the_last_day_of_the_third_week, condition(pending)) :-
        meetup(2013, 8, third, 'Wednesday', Date),
        Date == date(2013, 8, 21).

    test(when_third_thursday_is_some_day_in_the_middle_of_the_third_week, condition(pending)) :-
        meetup(2013, 9, third, 'Thursday', Date),
        Date == date(2013, 9, 19).

    test(when_third_thursday_is_another_day_in_the_middle_of_the_third_week, condition(pending)) :-
        meetup(2013, 10, third, 'Thursday', Date),
        Date == date(2013, 10, 17).

    test(when_third_friday_is_the_15th_the_first_day_of_the_third_week, condition(pending)) :-
        meetup(2013, 11, third, 'Friday', Date),
        Date == date(2013, 11, 15).

    test(when_third_friday_is_some_day_in_the_middle_of_the_third_week, condition(pending)) :-
        meetup(2013, 12, third, 'Friday', Date),
        Date == date(2013, 12, 20).

    test(when_third_saturday_is_some_day_in_the_middle_of_the_third_week, condition(pending)) :-
        meetup(2013, 1, third, 'Saturday', Date),
        Date == date(2013, 1, 19).

    test(when_third_saturday_is_another_day_in_the_middle_of_the_third_week, condition(pending)) :-
        meetup(2013, 2, third, 'Saturday', Date),
        Date == date(2013, 2, 16).

    test(when_third_sunday_is_some_day_in_the_middle_of_the_third_week, condition(pending)) :-
        meetup(2013, 3, third, 'Sunday', Date),
        Date == date(2013, 3, 17).

    test(when_third_sunday_is_the_21st_the_last_day_of_the_third_week, condition(pending)) :-
        meetup(2013, 4, third, 'Sunday', Date),
        Date == date(2013, 4, 21).

    test(when_fourth_monday_is_some_day_in_the_middle_of_the_fourth_week, condition(pending)) :-
        meetup(2013, 3, fourth, 'Monday', Date),
        Date == date(2013, 3, 25).

    test(when_fourth_monday_is_the_22nd_the_first_day_of_the_fourth_week, condition(pending)) :-
        meetup(2013, 4, fourth, 'Monday', Date),
        Date == date(2013, 4, 22).

    test(when_fourth_tuesday_is_the_28th_the_last_day_of_the_fourth_week, condition(pending)) :-
        meetup(2013, 5, fourth, 'Tuesday', Date),
        Date == date(2013, 5, 28).

    test(when_fourth_tuesday_is_some_day_in_the_middle_of_the_fourth_week, condition(pending)) :-
        meetup(2013, 6, fourth, 'Tuesday', Date),
        Date == date(2013, 6, 25).

    test(when_fourth_wednesday_is_some_day_in_the_middle_of_the_fourth_week, condition(pending)) :-
        meetup(2013, 7, fourth, 'Wednesday', Date),
        Date == date(2013, 7, 24).

    test(when_fourth_wednesday_is_the_28th_the_last_day_of_the_fourth_week, condition(pending)) :-
        meetup(2013, 8, fourth, 'Wednesday', Date),
        Date == date(2013, 8, 28).

    test(when_fourth_thursday_is_some_day_in_the_middle_of_the_fourth_week, condition(pending)) :-
        meetup(2013, 9, fourth, 'Thursday', Date),
        Date == date(2013, 9, 26).

    test(when_fourth_thursday_is_another_day_in_the_middle_of_the_fourth_week, condition(pending)) :-
        meetup(2013, 10, fourth, 'Thursday', Date),
        Date == date(2013, 10, 24).

    test(when_fourth_friday_is_the_22nd_the_first_day_of_the_fourth_week, condition(pending)) :-
        meetup(2013, 11, fourth, 'Friday', Date),
        Date == date(2013, 11, 22).

    test(when_fourth_friday_is_some_day_in_the_middle_of_the_fourth_week, condition(pending)) :-
        meetup(2013, 12, fourth, 'Friday', Date),
        Date == date(2013, 12, 27).

    test(when_fourth_saturday_is_some_day_in_the_middle_of_the_fourth_week, condition(pending)) :-
        meetup(2013, 1, fourth, 'Saturday', Date),
        Date == date(2013, 1, 26).

    test(when_fourth_saturday_is_another_day_in_the_middle_of_the_fourth_week, condition(pending)) :-
        meetup(2013, 2, fourth, 'Saturday', Date),
        Date == date(2013, 2, 23).

    test(when_fourth_sunday_is_some_day_in_the_middle_of_the_fourth_week, condition(pending)) :-
        meetup(2013, 3, fourth, 'Sunday', Date),
        Date == date(2013, 3, 24).

    test(when_fourth_sunday_is_the_28th_the_last_day_of_the_fourth_week, condition(pending)) :-
        meetup(2013, 4, fourth, 'Sunday', Date),
        Date == date(2013, 4, 28).

    test(last_monday_in_a_month_with_four_mondays, condition(pending)) :-
        meetup(2013, 3, last, 'Monday', Date),
        Date == date(2013, 3, 25).

    test(last_monday_in_a_month_with_five_mondays, condition(pending)) :-
        meetup(2013, 4, last, 'Monday', Date),
        Date == date(2013, 4, 29).

    test(last_tuesday_in_a_month_with_four_tuesdays, condition(pending)) :-
        meetup(2013, 5, last, 'Tuesday', Date),
        Date == date(2013, 5, 28).

    test(last_tuesday_in_another_month_with_four_tuesdays, condition(pending)) :-
        meetup(2013, 6, last, 'Tuesday', Date),
        Date == date(2013, 6, 25).

    test(last_wednesday_in_a_month_with_five_wednesdays, condition(pending)) :-
        meetup(2013, 7, last, 'Wednesday', Date),
        Date == date(2013, 7, 31).

    test(last_wednesday_in_a_month_with_four_wednesdays, condition(pending)) :-
        meetup(2013, 8, last, 'Wednesday', Date),
        Date == date(2013, 8, 28).

    test(last_thursday_in_a_month_with_four_thursdays, condition(pending)) :-
        meetup(2013, 9, last, 'Thursday', Date),
        Date == date(2013, 9, 26).

    test(last_thursday_in_a_month_with_five_thursdays, condition(pending)) :-
        meetup(2013, 10, last, 'Thursday', Date),
        Date == date(2013, 10, 31).

    test(last_friday_in_a_month_with_five_fridays, condition(pending)) :-
        meetup(2013, 11, last, 'Friday', Date),
        Date == date(2013, 11, 29).

    test(last_friday_in_a_month_with_four_fridays, condition(pending)) :-
        meetup(2013, 12, last, 'Friday', Date),
        Date == date(2013, 12, 27).

    test(last_saturday_in_a_month_with_four_saturdays, condition(pending)) :-
        meetup(2013, 1, last, 'Saturday', Date),
        Date == date(2013, 1, 26).

    test(last_saturday_in_another_month_with_four_saturdays, condition(pending)) :-
        meetup(2013, 2, last, 'Saturday', Date),
        Date == date(2013, 2, 23).

    test(last_sunday_in_a_month_with_five_sundays, condition(pending)) :-
        meetup(2013, 3, last, 'Sunday', Date),
        Date == date(2013, 3, 31).

    test(last_sunday_in_a_month_with_four_sundays, condition(pending)) :-
        meetup(2013, 4, last, 'Sunday', Date),
        Date == date(2013, 4, 28).

    test(when_last_wednesday_in_february_in_a_leap_year_is_the_29th, condition(pending)) :-
        meetup(2012, 2, last, 'Wednesday', Date),
        Date == date(2012, 2, 29).

    test(last_wednesday_in_december_that_is_also_the_last_day_of_the_year, condition(pending)) :-
        meetup(2014, 12, last, 'Wednesday', Date),
        Date == date(2014, 12, 31).

    test(when_last_sunday_in_february_in_a_non_leap_year_is_not_the_29th, condition(pending)) :-
        meetup(2015, 2, last, 'Sunday', Date),
        Date == date(2015, 2, 22).

    test(when_first_friday_is_the_7th_the_last_day_of_the_first_week, condition(pending)) :-
        meetup(2012, 12, first, 'Friday', Date),
        Date == date(2012, 12, 7).

    test(when_teenth_monday_is_the_13th_the_first_day_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 5, teenth, 'Monday', Date),
        Date == date(2013, 5, 13).

    test(when_teenth_monday_is_the_19th_the_last_day_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 8, teenth, 'Monday', Date),
        Date == date(2013, 8, 19).

    test(when_teenth_monday_is_some_day_in_the_middle_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 9, teenth, 'Monday', Date),
        Date == date(2013, 9, 16).

    test(when_teenth_tuesday_is_the_19th_the_last_day_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 3, teenth, 'Tuesday', Date),
        Date == date(2013, 3, 19).

    test(when_teenth_tuesday_is_some_day_in_the_middle_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 4, teenth, 'Tuesday', Date),
        Date == date(2013, 4, 16).

    test(when_teenth_tuesday_is_the_13th_the_first_day_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 8, teenth, 'Tuesday', Date),
        Date == date(2013, 8, 13).

    test(when_teenth_wednesday_is_some_day_in_the_middle_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 1, teenth, 'Wednesday', Date),
        Date == date(2013, 1, 16).

    test(when_teenth_wednesday_is_the_13th_the_first_day_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 2, teenth, 'Wednesday', Date),
        Date == date(2013, 2, 13).

    test(when_teenth_wednesday_is_the_19th_the_last_day_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 6, teenth, 'Wednesday', Date),
        Date == date(2013, 6, 19).

    test(when_teenth_thursday_is_some_day_in_the_middle_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 5, teenth, 'Thursday', Date),
        Date == date(2013, 5, 16).

    test(when_teenth_thursday_is_the_13th_the_first_day_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 6, teenth, 'Thursday', Date),
        Date == date(2013, 6, 13).

    test(when_teenth_thursday_is_the_19th_the_last_day_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 9, teenth, 'Thursday', Date),
        Date == date(2013, 9, 19).

    test(when_teenth_friday_is_the_19th_the_last_day_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 4, teenth, 'Friday', Date),
        Date == date(2013, 4, 19).

    test(when_teenth_friday_is_some_day_in_the_middle_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 8, teenth, 'Friday', Date),
        Date == date(2013, 8, 16).

    test(when_teenth_friday_is_the_13th_the_first_day_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 9, teenth, 'Friday', Date),
        Date == date(2013, 9, 13).

    test(when_teenth_saturday_is_some_day_in_the_middle_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 2, teenth, 'Saturday', Date),
        Date == date(2013, 2, 16).

    test(when_teenth_saturday_is_the_13th_the_first_day_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 4, teenth, 'Saturday', Date),
        Date == date(2013, 4, 13).

    test(when_teenth_saturday_is_the_19th_the_last_day_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 10, teenth, 'Saturday', Date),
        Date == date(2013, 10, 19).

    test(when_teenth_sunday_is_the_19th_the_last_day_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 5, teenth, 'Sunday', Date),
        Date == date(2013, 5, 19).

    test(when_teenth_sunday_is_some_day_in_the_middle_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 6, teenth, 'Sunday', Date),
        Date == date(2013, 6, 16).

    test(when_teenth_sunday_is_the_13th_the_first_day_of_the_teenth_week, condition(pending)) :-
        meetup(2013, 10, teenth, 'Sunday', Date),
        Date == date(2013, 10, 13).

:- end_tests(meetup).
%---------------------------------------------------- 58 minesweeper/minesweeper
% minesweeper.pl -- the exercism Prolog exercise minesweeper, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/minesweeper.example.pl, then its tests minesweeper_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

cell(Rows, X, Y, Cell) :-
    nth0(Y, Rows, Row),
    nth0(X, Row, Cell).

adjacent_mine(Rows, X, Y) :-
    between(-1, 1, Dx),
    between(-1, 1, Dy),
    NeighborX #= X + Dx,
    NeighborY #= Y + Dy,
    cell(Rows, NeighborX, NeighborY, '*').

annotate_cell(_, '*', _, _, '*') :- !.
annotate_cell(Rows, _, X, Y, AnnotatedCell) :-
    findall(1, adjacent_mine(Rows, X, Y), Mines),
    length(Mines, Count),
    (Count #= 0 -> AnnotatedCell = ' '; atom_number(AnnotatedCell, Count)).    

annotate_row(_, [], _, _, []) :- !.
annotate_row(Rows, [Cell|Cells], X, Y, [AnnotatedCell|AnnotatedCells]) :-
    NextX #= X + 1,
    annotate_cell(Rows, Cell, X, Y, AnnotatedCell),
    annotate_row(Rows, Cells, NextX, Y, AnnotatedCells).

annotate_board(_, [], _, []) :- !.
annotate_board(Rows, [Row|Rest], Y, [AnnotatedRow|AnnotatedRows]) :-
    NextY #= Y + 1,
    annotate_row(Rows, Row, 0, Y, AnnotatedRowChars),
    string_chars(AnnotatedRow, AnnotatedRowChars),
    annotate_board(Rows, Rest, NextY, AnnotatedRows), !.

annotate(Board, AnnotatedBoard) :-
    maplist(string_chars, Board, Rows),
    annotate_board(Rows, Rows, 0, AnnotatedBoard).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(minesweeper).

    test(no_rows, condition(true)) :-
        annotate([], Annotated),
        Annotated == [].

    test(no_columns, condition(pending)) :-
        annotate([""], Annotated),
        Annotated == [""].

    test(no_mines, condition(pending)) :-
        Board = [
            "   ", 
            "   ",
            "   "
        ],
        annotate(Board, Annotated),
        Annotated == [
            "   ",
            "   ",
            "   "
        ].

    test(minefield_with_only_mines, condition(pending)) :-
        Board = [
            "***",
            "***",
            "***"
        ],
        annotate(Board, Annotated),
        Annotated == [
            "***",
            "***",
            "***"
        ].

    test(mine_surrounded_by_spaces, condition(pending)) :-
        Board = [
            "   ",
            " * ",
            "   "
        ],
        annotate(Board, Annotated),
        Annotated == [
            "111",
            "1*1",
            "111"
        ].

    test(space_surrounded_by_mines, condition(pending)) :-
        Board = [
            "***",
            "* *",
            "***"
        ],
        annotate(Board, Annotated),
        Annotated == [
            "***", 
            "*8*", 
            "***"
        ].

    test(horizontal_line, condition(pending)) :-
        Board = [" * * "],
        annotate(Board, Annotated),
        Annotated == ["1*2*1"].

    test(horizontal_line_mines_at_edges, condition(pending)) :-
        Board = ["*   *"],
        annotate(Board, Annotated),
        Annotated == ["*1 1*"].

    test(vertical_line, condition(pending)) :-
        Board = [
            " ",
            "*",
            " ",
            "*",
            " "
        ],
        annotate(Board, Annotated),
        Annotated == [
            "1",
            "*",
            "2",
            "*",
            "1"
        ].

    test(vertical_line_mines_at_edges, condition(pending)) :-
        Board = [
            "*",
            " ",
            " ",
            " ",
            "*"
        ],
        annotate(Board, Annotated),
        Annotated == [
            "*",
            "1",
            " ",
            "1",
            "*"
        ].

    test(cross, condition(pending)) :-
        Board = [
            "  *  ",
            "  *  ", 
            "*****",
            "  *  ",
            "  *  "
        ],
        annotate(Board, Annotated),
        Annotated == [
            " 2*2 ",
            "25*52",
            "*****",
            "25*52",
            " 2*2 "
        ].

    test(large_minefield, condition(pending)) :-
        Board = [
            " *  * ",
            "  *   ",
            "    * ",
            "   * *",
            " *  * ",
            "      "
        ],
        annotate(Board, Annotated),
        Annotated == [
            "1*22*1",
            "12*322",
            " 123*2",
            "112*4*",
            "1*22*2",
            "111111"
        ].

:- end_tests(minesweeper).
%-------------------------------------------------------- 59 nth-prime/nth_prime
% nth_prime.pl -- the exercism Prolog exercise nth-prime, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/nth_prime.example.pl, then its tests nth_prime_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
prime(2) :- !.
prime(3) :- !.
prime(P) :- P > 3, P mod 2 =\= 0, prime(P, 3), !.
prime(P, N) :- (N*N > P -> true; P mod N =\= 0, M is N + 2, prime(P, M)), !.

next_prime(N, N):- prime(N), !.
next_prime(N, Prime):- NextN is N + 1, next_prime(NextN, Prime).

nth_prime(1, 2) :- !.
nth_prime(2, 3) :- !.
nth_prime(N, Prime):-
    N > 2,
    PrevN is N - 1,
    nth_prime(PrevN, PrevPrime),
    NextN is PrevPrime + 1,
    next_prime(NextN, Prime).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(nth_prime).

    test(first_prime, condition(true)) :-
        nth_prime(1, Prime),
        Prime == 2.

    test(second_prime, condition(pending)) :-
        nth_prime(2, Prime),
        Prime == 3.

    test(sixth_prime, condition(pending)) :-
        nth_prime(6, Prime),
        Prime == 13.

    test(big_prime, condition(pending)) :-
        nth_prime(10001, Prime),
        Prime == 104743.

    test(there_is_no_zeroth_prime, [fail, condition(pending)]) :-
        nth_prime(0, _).

:- end_tests(nth_prime).
%------------------------------------------ 60 nucleotide-count/nucleotide_count
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
%---------------------------------------------------- 61 ocr-numbers/ocr_numbers
% ocr_numbers.pl -- the exercism Prolog exercise ocr-numbers, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/ocr_numbers.example.pl, then its tests ocr_numbers_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
digit([" _ ", "| |", "|_|", "   "], '0') :- !.
digit(["   ", "  |", "  |", "   "], '1') :- !.
digit([" _ ", " _|", "|_ ", "   "], '2') :- !.
digit([" _ ", " _|", " _|", "   "], '3') :- !.
digit(["   ", "|_|", "  |", "   "], '4') :- !.
digit([" _ ", "|_ ", " _|", "   "], '5') :- !.
digit([" _ ", "|_ ", "|_|", "   "], '6') :- !.
digit([" _ ", "  |", "  |", "   "], '7') :- !.
digit([" _ ", "|_|", "|_|", "   "], '8') :- !.
digit([" _ ", "|_|", " _|", "   "], '9') :- !.
digit(_, '?').

parse_row(Row, Cols-Next) :-
    sub_string(Row, 0, 3, After, Cols),
    sub_string(Row, 3, After, _, Next).

digits(["","","",""], []) :- !.
digits(Rows, [Digit|Digits]) :-
    maplist(parse_row, Rows, ParsedRows),
    pairs_keys_values(ParsedRows, Cols, NextRows),
    digit(Cols, Digit),
    digits(NextRows, Digits).

parse_line(Line, Parsed) :-
    digits(Line, Digits),
    string_chars(Parsed, Digits).

combine(Part, "", Part) :- !.
combine(Part, Acc, Result) :- format(string(Result), "~s,~s", [Acc, Part]).

parse_lines(Lines, Parsed) :-
    maplist(parse_line, Lines, ParsedLines),
    foldl(combine, ParsedLines, "", Parsed).

lines([], []) :- !.
lines(Input, [Line|Lines]) :-
    append(Line, Rest, Input),
    length(Line, 4),
    lines(Rest, Lines).

valid([X|Xs]) :-
    length([X|Xs], Rows),
    string_length(X, Cols),
    Rows mod 4 =:= 0,
    Cols mod 3 =:= 0.

convert(Input, Output) :-
    valid(Input),
    lines(Input, Lines),
    parse_lines(Lines, Output), !.
 

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(ocr_numbers).

    test(recognizes_0, condition(true)) :-
        Input = [
            " _ ",
            "| |",
            "|_|",
            "   "
        ],
        convert(Input, Output),
        Output == "0".

    test(recognizes_1, condition(pending)) :-
        Input = [
            "   ",
            "  |",
            "  |",
            "   "
        ],
        convert(Input, Output),
        Output == "1".

    test(recognizes_2, condition(pending)) :-
        Input = [
            " _ ",
            " _|",
            "|_ ",
            "   "
        ],
        convert(Input, Output),
        Output == "2".

    test(recognizes_3, condition(pending)) :-
        Input = [
            " _ ",
            " _|",
            " _|",
            "   "
        ],
        convert(Input, Output),
        Output == "3".

    test(recognizes_4, condition(pending)) :-
        Input = [
            "   ",
            "|_|",
            "  |",
            "   "
        ],
        convert(Input, Output),
        Output == "4".

    test(recognizes_5, condition(pending)) :-
        Input = [
            " _ ",
            "|_ ",
            " _|",
            "   "
        ],
        convert(Input, Output),
        Output == "5".

    test(recognizes_6, condition(pending)) :-
        Input = [
            " _ ",
            "|_ ",
            "|_|",
            "   "
        ],
        convert(Input, Output),
        Output == "6".

    test(recognizes_7, condition(pending)) :-
        Input = [
            " _ ",
            "  |",
            "  |",
            "   "
        ],
        convert(Input, Output),
        Output == "7".

    test(recognizes_8, condition(pending)) :-
        Input = [
            " _ ",
            "|_|",
            "|_|",
            "   "
        ],
        convert(Input, Output),
        Output == "8".

    test(recognizes_9, condition(pending)) :-
        Input = [
            " _ ",
            "|_|",
            " _|",
            "   "
        ],
        convert(Input, Output),
        Output == "9".
        
    test(unreadable_but_correctly_sized_inputs_return, condition(pending)) :-
        Input = [
            "   ",
            "  _",
            "  |",
            "   "
        ],
        convert(Input, Output),
        Output == "?".

    test(input_with_a_number_of_lines_that_is_not_a_multiple_of_four_raises_an_error, [fail, condition(pending)]) :-
        Input = [
            " _ ",
            "| |",
            "   "
        ],
        convert(Input, _).

    test(input_with_a_number_of_columns_that_is_not_a_multiple_of_three_raises_an_error, [fail, condition(pending)]) :-
        Input = [
            "    ",
            "   |",
            "   |",
            "    "
        ],
        convert(Input, _).

    test(recognizes_110101100, condition(pending)) :-
        Input = [
            "       _     _        _  _ ",
            "  |  || |  || |  |  || || |",
            "  |  ||_|  ||_|  |  ||_||_|",
            "                           "
        ],
        convert(Input, Output),
        Output == "110101100".

    test(recognizes_string_of_decimal_numbers, condition(pending)) :-
        Input = [
            "    _  _     _  _  _  _  _  _ ",
            "  | _| _||_||_ |_   ||_||_|| |",
            "  ||_  _|  | _||_|  ||_| _||_|",
            "                              "
        ],
        convert(Input, Output),
        Output == "1234567890".

    test(garbled_numbers_in_a_string_are_replaced_with, condition(pending)) :-
        Input = [
            "       _     _           _ ",
            "  |  || |  || |     || || |",
            "  |  | _|  ||_|  |  ||_||_|",
            "                           "
        ],
        convert(Input, Output),
        Output == "11?10?1?0".

    test(numbers_separated_by_empty_lines_are_recognized_lines_are_joined_by_commas, condition(pending)) :-
        Input = [
            "    _  _ ",
            "  | _| _|",
            "  ||_  _|",
            "         ",
            "    _  _ ",
            "|_||_ |_ ",
            "  | _||_|",
            "         ",
            " _  _  _ ",
            "  ||_||_|",
            "  ||_| _|",
            "         "
        ],
        convert(Input, Output),
        Output == "123,456,789".

:- end_tests(ocr_numbers).
%------------------------------------ 62 palindrome-products/palindrome_products
% palindrome_products.pl -- the exercism Prolog exercise palindrome-products, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/palindrome_products.example.pl, then its tests palindrome_products_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

palindrome(Value) :-
    number_codes(Value, Codes),
    reverse(Codes, Codes).

palindrome_products(MinFactor, MaxFactor, Palindromes) :-
    findall(Product-Pair, (
        between(MinFactor, MaxFactor, X),
        between(X, MaxFactor, Y),
        Product #= X * Y,
        Pair = X-Y,
        palindrome(Product)
    ), Palindromes).

smallest(MinFactor, MaxFactor, Smallest, Factors) :-
    palindrome_products(MinFactor, MaxFactor, Palindromes),
    findall(Product, member(Product-_, Palindromes), Products),
    min_list(Products, Smallest),
    findall(Pair, member(Smallest-Pair, Palindromes), Factors).

largest(MinFactor, MaxFactor, Largest, Factors) :-
    palindrome_products(MinFactor, MaxFactor, Palindromes),
    findall(Product, member(Product-_, Palindromes), Products),
    max_list(Products, Largest),
    findall(Pair, member(Largest-Pair, Palindromes), Factors).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(palindrome_products).

    test(find_the_smallest_palindrome_from_single_digit_factors, condition(true)) :-
        smallest(1, 9, Value, Factors),
        Value == 1,
        Factors == [1-1].

    test(find_the_largest_palindrome_from_single_digit_factors, condition(pending)) :-
        largest(1, 9, Value, Factors),
        Value == 9,
        Factors == [1-9, 3-3].

    test(find_the_smallest_palindrome_from_double_digit_factors, condition(pending)) :-
        smallest(10, 99, Value, Factors),
        Value == 121,
        Factors == [11-11].

    test(find_the_largest_palindrome_from_double_digit_factors, condition(pending)) :-
        largest(10, 99, Value, Factors),
        Value == 9009,
        Factors == [91-99].

    test(find_the_smallest_palindrome_from_triple_digit_factors, condition(pending)) :-
        smallest(100, 999, Value, Factors),
        Value == 10201,
        Factors == [101-101].

    test(find_the_largest_palindrome_from_triple_digit_factors, condition(pending)) :-
        largest(100, 999, Value, Factors),
        Value == 906609,
        Factors == [913-993].

    test(empty_result_for_smallest_if_no_palindrome_in_the_range, [fail, condition(pending)]) :-
        smallest(1002, 1003, _, _).

    test(empty_result_for_largest_if_no_palindrome_in_the_range, [fail, condition(pending)]) :-
        largest(15, 15, _, _).

    test(error_result_for_smallest_if_min_is_more_than_max, [fail, condition(pending)]) :-
        smallest(10000, 1, _, _).

    test(error_result_for_largest_if_min_is_more_than_max, [fail, condition(pending)]) :-
        largest(2, 1, _, _).

    test(smallest_product_does_not_use_the_smallest_factor, condition(pending)) :-
        smallest(3215, 4000, Value, Factors),
        Value == 10988901,
        Factors == [3297-3333].

:- end_tests(palindrome_products).

% BONUS TESTS
bonus :-
    current_prolog_flag(argv, ['--bonus'|_]).

:- begin_tests(palindrome_products_bonus, [condition(bonus)]).

    test(find_the_smallest_palindrome_from_four_digit_factors, condition(pending)) :-
        smallest(1000, 9999, Value, Factors),
        Value == 1002001,
        Factors == [1001-1001].

    test(find_the_largest_palindrome_from_four_digit_factors, condition(pending)) :-
        largest(1000, 9999, Value, Factors),
        Value == 99000099,
        Factors == [9901-9999].

:- end_tests(palindrome_products_bonus).
%------------------------------------------------------------ 63 pangram/pangram
% pangram.pl -- the exercism Prolog exercise pangram, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/pangram.example.pl, then its tests pangram_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
pangram(Sentence) :-
    string_lower(Sentence, LowerSentence),
    atom_codes(LowerSentence, SentenceCodes),
    atom_codes("abcdefghijklmnopqrstuvwxyz", AlphabetCodes),
    subset(AlphabetCodes, SentenceCodes).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(pangram).

    test(empty_sentence, [fail, condition(true)]) :-
        pangram("").

    test(perfect_lower_case, condition(pending)) :-
        pangram("abcdefghijklmnopqrstuvwxyz").

    test(only_lower_case, condition(pending)) :-
        pangram("the quick brown fox jumps over the lazy dog").

    test(missing_the_letter_x, [fail, condition(pending)]) :-
        pangram("a quick movement of the enemy will jeopardize five gunboats").

    test(missing_the_letter_h, [fail, condition(pending)]) :-
        pangram("five boxing wizards jump quickly at it").

    test(with_underscores, condition(pending)) :-
        pangram("the_quick_brown_fox_jumps_over_the_lazy_dog").

    test(with_numbers, condition(pending)) :-
        pangram("the 1 quick brown fox jumps over the 2 lazy dogs").

    test(missing_letters_replaced_by_numbers, [fail, condition(pending)]) :-
        pangram("7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog").

    test(mixed_case_and_punctuation, condition(pending)) :-
        pangram("Five quacking Zephyrs jolt my wax bed.").

    test(case_insensitive, [fail, condition(pending)]) :-
        pangram("the quick brown fox jumps over with lazy FX").

    test(a_m_and_upper_a_m_are_26_different_characters_but_not_a_pangram, [fail, condition(pending)]) :-
        pangram("abcdefghijklm ABCDEFGHIJKLM").

:- end_tests(pangram).
%------------------------ 64 parallel-letter-frequency/parallel_letter_frequency
% parallel_letter_frequency.pl -- the exercism Prolog exercise parallel-letter-frequency, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/parallel_letter_frequency.example.pl, then its tests parallel_letter_frequency_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
tally([], []) :- !.
tally(List, Counts) :- aggregate(set(Element-Count), aggregate(count, member(Element, List), Count), Counts).

merge([], Y, Y) :- !.
merge([Letter-Count|Xs], Y, Z) :-
    (select(Letter-ExistingCount, Y, Ys) ->
        NewCount is Count + ExistingCount,
        merge(Xs, [Letter-NewCount|Ys], Z);
        merge(Xs, [Letter-Count|Y], Z)).

letters(Text, Letters) :-
    string_lower(Text, LowerText),
    string_chars(LowerText, Chars),
    include([Char]>>char_type(Char, alpha), Chars, Letters).

frequencies_in_text(Text, Frequencies) :-
    letters(Text, Letters),
    tally(Letters, Frequencies).

frequencies(Texts, Frequencies) :-
    concurrent_maplist(frequencies_in_text, Texts, TextFrequencies),
    foldl(merge, TextFrequencies, [], Frequencies).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

% Poem by Friedrich Schiller. The corresponding music is the European Anthem.
odeAnDieFreude(Text) :-
    Text = "Freude schöner Götterfunken\nTochter aus Elysium,\nWir betreten feuertrunken,\nHimmlische, dein Heiligtum!\nDeine Zauber binden wieder\nWas die Mode streng geteilt;\nAlle Menschen werden Brüder,\nWo dein sanfter Flügel weilt.".

% Dutch national anthem
wilhelmus(Text) :-
    Text = "Wilhelmus van Nassouwe\nben ik, van Duitsen bloed,\nden vaderland getrouwe\nblijf ik tot in den dood.\nEen Prinse van Oranje\nben ik, vrij, onverveerd,\nden Koning van Hispanje\nheb ik altijd geëerd.".

% American national anthem
starSpangledBanner(Text) :-
    Text = "O say can you see by the dawn's early light,\nWhat so proudly we hailed at the twilight's last gleaming,\nWhose broad stripes and bright stars through the perilous fight,\nO'er the ramparts we watched, were so gallantly streaming?\nAnd the rockets' red glare, the bombs bursting in air,\nGave proof through the night that our flag was still there;\nO say does that star-spangled banner yet wave,\nO'er the land of the free and the home of the brave?\n".

:- begin_tests(parallel_letter_frequency).

    test(no_texts_mean_no_letters, condition(true)) :-
        frequencies([], Frequencies),
        Frequencies == [].

    test(one_letter, condition(pending)) :-
        frequencies(["a"], Frequencies),
        Frequencies == ['a'-1].

    test(case_insensitivity, condition(pending)) :-
        frequencies(["aA"], Frequencies),
        Frequencies == ['a'-2].

    test(many_empty_texts_still_mean_no_letters, condition(pending)) :-
        length(Texts, 1000),
        maplist(=("   "), Texts),
        frequencies(Texts, Frequencies),
        Frequencies == [].

    test(many_times_the_same_text_gives_a_predictable_result, condition(pending)) :-
        length(Texts, 1000),
        maplist(=("abbccc"), Texts),
        frequencies(Texts, Frequencies),
        keysort(Frequencies, SortedFrequencies),
        SortedFrequencies == ['a'-1000,'b'-2000,'c'-3000].

    test(punctuation_doesnt_count, condition(pending)) :-
        frequencies(["Testing, 1, 2, 3"], Frequencies),
        \+ member(','-_, Frequencies).

    test(numbers_dont_count, condition(pending)) :-
        frequencies(["Testing, 1, 2, 3"], Frequencies),
        \+ member('1'-_, Frequencies).

    test(all_three_anthems_together, condition(pending)) :-
        odeAnDieFreude(OdeAnDieFreude),
        wilhelmus(Wilhelmus),
        starSpangledBanner(StarSpangledBanner),
        Texts = [OdeAnDieFreude, Wilhelmus, StarSpangledBanner],
        frequencies(Texts, Frequencies),
        member('a'-49, Frequencies),
        member('t'-56, Frequencies),
        member('ü'-2, Frequencies),
        !.

:- end_tests(parallel_letter_frequency).
%------------------------------------------ 65 pascals-triangle/pascals_triangle
% pascals_triangle.pl -- the exercism Prolog exercise pascals-triangle, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/pascals_triangle.example.pl, then its tests pascals_triangle_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
pascal(0, []) :- !.
pascal(X, P)  :-
  numlist(1, X, NL),
  maplist(pascalH, NL, P).

pascalH(1, [1])   :- !.
pascalH(N, [X|L]) :-
  succ(N1, N),
  pascalH(N1, [X|L1]),
  build([X|L1], L), !.

build([X],     [X]).
build([X,Y|Z], [H|R]) :-
  H is X+Y,
  build([Y|Z], R).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(pascal).

    test(zero_rows, condition(true)) :-
        pascal(0, Rows),
        Rows == [].

    test(single_row, condition(pending)) :-
        pascal(1, Rows),
        Rows == [[1]].

    test(two_rows, condition(pending)) :-
        pascal(2, Rows),
        Rows == [[1], [1,1]].

    test(three_rows, condition(pending)) :-
        pascal(3, Rows),
        Rows == [[1], [1,1], [1,2,1]].

    test(four_rows, condition(pending)) :-
        pascal(4, Rows),
        Rows == [[1], [1,1], [1,2,1], [1,3,3,1]].

    test(five_rows, condition(pending)) :-
        pascal(5, Rows),
        Rows == [[1], [1,1], [1,2,1], [1,3,3,1], [1,4,6,4,1]].

    test(six_rows, condition(pending)) :-
        pascal(6, Rows),
        Rows == [[1], [1,1], [1,2,1], [1,3,3,1], [1,4,6,4,1], [1,5,10,10,5,1]].

    test(ten_rows, condition(pending)) :-
        pascal(10, Rows),
        Rows == [[1],
                 [1,1],
                 [1,2,1],
                 [1,3,3,1],
                 [1,4,6,4,1],
                 [1,5,10,10,5,1],
                 [1,6,15,20,15,6,1],
                 [1,7,21,35,35,21,7,1],
                 [1,8,28,56,70,56,28,8,1],
                 [1,9,36,84,126,126,84,36,9,1]
                ].

:- end_tests(pascal).
%-------------------------------------------- 66 perfect-numbers/perfect_numbers
% perfect_numbers.pl -- the exercism Prolog exercise perfect-numbers, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/perfect_numbers.example.pl, then its tests perfect_numbers_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

factors(1, []) :- !.
factors(Number, [1|Factors]) :-
    MaxSmallFactor is floor(sqrt(Number)),
    findall(SmallFactor, (between(2, MaxSmallFactor, SmallFactor), Number mod SmallFactor =:= 0), SmallFactors),
    findall(BigFactor, (member(Factor, SmallFactors), BigFactor is Number // Factor, BigFactor < Number, BigFactor =\= Factor), BigFactors),
    append(SmallFactors, BigFactors, FactorsUnsorted),
    sort(FactorsUnsorted, Factors).

aliquot_sum(Number, AliquotSum) :-    
    factors(Number, Factors),
    sum_list(Factors, AliquotSum).

classify(Number, AliquotSum, abundant) :- AliquotSum #> Number, !.
classify(Number, AliquotSum, deficient) :- AliquotSum #< Number, !.
classify(_, _, perfect) :- !.

classify(Number, Classification) :-
    Number #> 0,
    aliquot_sum(Number, AliquotSum),
    classify(Number, AliquotSum, Classification).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(perfect_numbers).

    test(smallest_perfect_number_is_classified_correctly, condition(true)) :-
        classify(6, Classification),
        Classification == perfect.

    test(medium_perfect_number_is_classified_correctly, condition(pending)) :-
        classify(28, Classification),
        Classification == perfect.

    test(large_perfect_number_is_classified_correctly, condition(pending)) :-
        classify(33550336, Classification),
        Classification == perfect.

    test(smallest_abundant_number_is_classified_correctly, condition(pending)) :-
        classify(12, Classification),
        Classification == abundant.

    test(medium_abundant_number_is_classified_correctly, condition(pending)) :-
        classify(30, Classification),
        Classification == abundant.

    test(large_abundant_number_is_classified_correctly, condition(pending)) :-
        classify(33550335, Classification),
        Classification == abundant.

    test(perfect_square_abundant_number_is_classified_correctly, condition(pending)) :-
        classify(196, Classification),
        Classification == abundant.

    test(smallest_prime_deficient_number_is_classified_correctly, condition(pending)) :-
        classify(2, Classification),
        Classification == deficient.

    test(smallest_non_prime_deficient_number_is_classified_correctly, condition(pending)) :-
        classify(4, Classification),
        Classification == deficient.

    test(medium_deficient_number_is_classified_correctly, condition(pending)) :-
        classify(32, Classification),
        Classification == deficient.

    test(large_deficient_number_is_classified_correctly, condition(pending)) :-
        classify(33550337, Classification),
        Classification == deficient.

    test(edge_case_no_factors_other_than_itself_is_classified_correctly, condition(pending)) :-
        classify(1, Classification),
        Classification == deficient.

    test(zero_is_rejected_as_it_is_not_a_positive_integer, [fail, condition(pending)]) :-
        classify(0, _).

    test(negative_integer_is_rejected_as_it_is_not_a_positive_integer, [fail, condition(pending)]) :-
        classify(-1, _).

:- end_tests(perfect_numbers).
%-------------------------------------------------- 67 phone-number/phone_number
% phone_number.pl -- the exercism Prolog exercise phone-number, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/phone_number.example.pl, then its tests phone_number_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it; double_quotes set back to string before the tests, as the runner reads them in a file of their own.
:- use_module(library(dcg/basics)).
:- set_prolog_flag(double_quotes, chars).

non_digit --> [C], { \+ char_type(C, digit) }.
non_digits --> non_digit, non_digits.
non_digits --> [].

leading_digit(C) --> digit(C), { \+ member(C, "01") }.
country_code --> non_digits, "1", non_digits.
area_code([C1,C2,C3]) --> non_digits, leading_digit(C1), digit(C2), digit(C3), non_digits, !.
exchange_code([C1,C2,C3]) --> non_digits, leading_digit(C1), digit(C2), digit(C3), non_digits, !.
subscriber_number([C1,C2,C3,C4]) --> non_digits, digit(C1), digit(C2), digit(C3), digit(C4), non_digits, !.

international_phone_number(Number) --> country_code, national_phone_number(Number).
national_phone_number(Number) -->
    area_code(Area),
    exchange_code(Exchange),
    subscriber_number(Subscriber),
    { append(Area, Exchange, Temp), append(Temp, Subscriber, Number) }.
phone_number(Number) --> international_phone_number(Number) | national_phone_number(Number).

cleanup(Input, Cleaned) :-
    string_chars(Input, Chars),
    phrase(phone_number(NumberChars), Chars),
    length(NumberChars, 10),
    string_chars(Cleaned, NumberChars), !.

:- set_prolog_flag(double_quotes, string).
pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(phone_number).

    test(cleans_the_number, condition(true)) :-
        cleanup("(223) 456-7890", Cleaned),
        Cleaned == "2234567890".

    test(cleans_numbers_with_dots, condition(pending)) :-
        cleanup("223.456.7890", Cleaned),
        Cleaned == "2234567890".

    test(cleans_numbers_with_multiple_spaces, condition(pending)) :-
        cleanup("223 456   7890   ", Cleaned),
        Cleaned == "2234567890".

    test(invalid_when_9_digits, [fail, condition(pending)]) :-
        cleanup("123456789", _).

    test(invalid_when_11_digits_does_not_start_with_a_1, [fail, condition(pending)]) :-
        cleanup("22234567890", _).

    test(valid_when_11_digits_and_starting_with_1, condition(pending)) :-
        cleanup("12234567890", Cleaned),
        Cleaned == "2234567890".

    test(valid_when_11_digits_and_starting_with_1_even_with_punctuation, condition(pending)) :-
        cleanup("+1 (223) 456-7890", Cleaned),
        Cleaned == "2234567890".

    test(invalid_when_more_than_11_digits, [fail, condition(pending)]) :-
        cleanup("321234567890", _).

    test(invalid_with_letters, [fail, condition(pending)]) :-
        cleanup("523-abc-7890", _).

    test(invalid_with_punctuations, [fail, condition(pending)]) :-
        cleanup("523-@:!-7890", _).

    test(invalid_if_area_code_starts_with_0, [fail, condition(pending)]) :-
        cleanup("(023) 456-7890", _).

    test(invalid_if_area_code_starts_with_1, [fail, condition(pending)]) :-
        cleanup("(123) 456-7890", _).

    test(invalid_if_exchange_code_starts_with_0, [fail, condition(pending)]) :-
        cleanup("(223) 056-7890", _).

    test(invalid_if_exchange_code_starts_with_1, [fail, condition(pending)]) :-
        cleanup("(223) 156-7890", _).

    test(invalid_if_area_code_starts_with_0_on_valid_11_digit_number, [fail, condition(pending)]) :-
        cleanup("1 (023) 456-7890", _).

    test(invalid_if_area_code_starts_with_1_on_valid_11_digit_number, [fail, condition(pending)]) :-
        cleanup("1 (123) 456-7890", _).

    test(invalid_if_exchange_code_starts_with_0_on_valid_11_digit_number, [fail, condition(pending)]) :-
        cleanup("1 (223) 056-7890", _).

    test(invalid_if_exchange_code_starts_with_1_on_valid_11_digit_number, [fail, condition(pending)]) :-
        cleanup("1 (223) 156-7890", _).

:- end_tests(phone_number).
%-------------------------------------------------------- 68 pig-latin/pig_latin
% pig_latin.pl -- the exercism Prolog exercise pig-latin, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/pig_latin.example.pl, then its tests pig_latin_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it; double_quotes set back to string before the tests, as the runner reads them in a file of their own.
:- use_module(library(dcg/basics)).
:- set_prolog_flag(double_quotes, chars).

vowel --> [C], { member(C, "aeiou") }.
consonant --> [C], { \+ member(C, "aeiou") }.

consonants(N) --> consonant, consonants(M), { N is M + 1 }.
consonants(0) --> [].

drop_first(0) --> (vowel | "xr" | "yt"), !, remainder(_).
drop_first(1) --> nonblank(_), "y", !.
drop_first(1) --> "y", ! , remainder(_).
drop_first(N) --> consonants(N), "y", ! , remainder(_).
drop_first(N) --> consonants(M), "qu", { N is M + 2 }, ! , remainder(_).
drop_first(N) --> consonants(N), !, remainder(_).

rotate(Chars, N, Rotated) :-
    length(Begin, N),
    append(Begin, End, Chars),
    append(End, Begin, Rotated).

pig_latinify(English, PigLatin) :-
    string_chars(English, Chars),
    phrase(drop_first(N), Chars),
    rotate(Chars, N, Rotated),
    append(Rotated, "ay", PigLatinChars),
    string_chars(PigLatin, PigLatinChars).

translate(English, PigLatin) :-
    split_string(English, " ", "", Words),
    maplist(pig_latinify, Words, PigLatinWords),
    atomics_to_string(PigLatinWords, ' ', PigLatin),
    !.

:- set_prolog_flag(double_quotes, string).
pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(pig_latin).

    test(word_beginning_with_a, condition(true)) :-
        translate("apple", PigLatin),
        PigLatin == "appleay".

    test(word_beginning_with_e, condition(pending)) :-
        translate("ear", PigLatin),
        PigLatin == "earay".

    test(word_beginning_with_i, condition(pending)) :-
        translate("igloo", PigLatin),
        PigLatin == "iglooay".

    test(word_beginning_with_o, condition(pending)) :-
        translate("object", PigLatin),
        PigLatin == "objectay".

    test(word_beginning_with_u, condition(pending)) :-
        translate("under", PigLatin),
        PigLatin == "underay".

    test(word_beginning_with_a_vowel_and_followed_by_a_qu, condition(pending)) :-
        translate("equal", PigLatin),
        PigLatin == "equalay".

    test(word_beginning_with_p, condition(pending)) :-
        translate("pig", PigLatin),
        PigLatin == "igpay".

    test(word_beginning_with_k, condition(pending)) :-
        translate("koala", PigLatin),
        PigLatin == "oalakay".

    test(word_beginning_with_x, condition(pending)) :-
        translate("xenon", PigLatin),
        PigLatin == "enonxay".

    test(word_beginning_with_q_without_a_following_u, condition(pending)) :-
        translate("qat", PigLatin),
        PigLatin == "atqay".

    test(word_beginning_with_consonant_and_vowel_containing_qu, condition(pending)) :-
        translate("liquid", PigLatin),
        PigLatin == "iquidlay".

    test(word_beginning_with_ch, condition(pending)) :-
        translate("chair", PigLatin),
        PigLatin == "airchay".

    test(word_beginning_with_qu, condition(pending)) :-
        translate("queen", PigLatin),
        PigLatin == "eenquay".

    test(word_beginning_with_qu_and_a_preceding_consonant, condition(pending)) :-
        translate("square", PigLatin),
        PigLatin == "aresquay".

    test(word_beginning_with_th, condition(pending)) :-
        translate("therapy", PigLatin),
        PigLatin == "erapythay".

    test(word_beginning_with_thr, condition(pending)) :-
        translate("thrush", PigLatin),
        PigLatin == "ushthray".

    test(word_beginning_with_sch, condition(pending)) :-
        translate("school", PigLatin),
        PigLatin == "oolschay".

    test(word_beginning_with_yt, condition(pending)) :-
        translate("yttria", PigLatin),
        PigLatin == "yttriaay".

    test(word_beginning_with_xr, condition(pending)) :-
        translate("xray", PigLatin),
        PigLatin == "xrayay".

    test(y_is_treated_like_a_consonant_at_the_beginning_of_a_word, condition(pending)) :-
        translate("yellow", PigLatin),
        PigLatin == "ellowyay".

    test(y_is_treated_like_a_vowel_at_the_end_of_a_consonant_cluster, condition(pending)) :-
        translate("rhythm", PigLatin),
        PigLatin == "ythmrhay".

    test(y_as_second_letter_in_two_letter_word, condition(pending)) :-
        translate("my", PigLatin),
        PigLatin == "ymay".

    test(a_whole_phrase, condition(pending)) :-
        translate("quick fast run", PigLatin),
        PigLatin == "ickquay astfay unray".

:- end_tests(pig_latin).
%------------------------------------------------ 69 prime-factors/prime_factors
% prime_factors.pl -- the exercism Prolog exercise prime-factors, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/prime_factors.example.pl, then its tests prime_factors_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

factors(N, _, []) :- N #< 2, !.
factors(N, Factor, [Factor|Factors]) :-
    N mod Factor #= 0,
    NewN #= N // Factor,
    factors(NewN, Factor, Factors), !.
factors(N, Factor, Factors) :-
    NewFactor #= Factor + 1,
    factors(N, NewFactor, Factors).

factors(N, Factors) :- factors(N, 2, Factors).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(prime_factors).

    test(no_factors, condition(true)) :-
        factors(1, Factors),
        Factors == [].

    test(prime_number, condition(pending)) :-
        factors(2, Factors),
        Factors == [2].

    test(another_prime_number, condition(pending)) :-
        factors(3, Factors),
        Factors == [3].

    test(square_of_a_prime, condition(pending)) :-
        factors(9, Factors),
        Factors == [3, 3].

    test(product_of_first_prime, condition(pending)) :-
        factors(4, Factors),
        Factors == [2, 2].

    test(cube_of_a_prime, condition(pending)) :-
        factors(8, Factors),
        Factors == [2, 2, 2].

    test(product_of_second_prime, condition(pending)) :-
        factors(27, Factors),
        Factors == [3, 3, 3].

    test(product_of_third_prime, condition(pending)) :-
        factors(625, Factors),
        Factors == [5, 5, 5, 5].

    test(product_of_first_and_second_prime, condition(pending)) :-
        factors(6, Factors),
        Factors == [2, 3].

    test(product_of_primes_and_non_primes, condition(pending)) :-
        factors(12, Factors),
        Factors == [2, 2, 3].

    test(product_of_primes, condition(pending)) :-
        factors(901255, Factors),
        Factors == [5, 17, 23, 461].

    test(factors_include_a_large_prime, condition(pending)) :-
        factors(93819012551, Factors),
        Factors == [11, 9539, 894119].

:- end_tests(prime_factors).
%------------------------------------ 70 protein-translation/protein_translation
% protein_translation.pl -- the exercism Prolog exercise protein-translation, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/protein_translation.example.pl, then its tests protein_translation_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(dcg/basics)).

protein_sequence([]) --> [].
protein_sequence([]) --> stop, remainder(_).
protein_sequence([Protein|Proteins]) --> protein(Protein), protein_sequence(Proteins).

protein("Methionine") --> "AUG".
protein("Phenylalanine") --> "UUU" | "UUC".
protein("Leucine") --> "UUA" | "UUG".
protein("Serine") --> "UCU" | "UCC" | "UCA" | "UCG".
protein("Tyrosine") --> "UAU" | "UAC".
protein("Cysteine") --> "UGU" | "UGC".
protein("Tryptophan") --> "UGG".

stop --> "UAA" | "UAG" | "UGA".

translate(Rna, Proteins) :-
    string_codes(Rna, RnaCodes),
    phrase(protein_sequence(Proteins), RnaCodes), !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(protein_translation).

    test(methionine_rna_sequence, condition(true)) :-
        translate("AUG", Proteins),
        Proteins == ["Methionine"].

    test(phenylalanine_rna_sequence_1, condition(pending)) :-
        translate("UUU", Proteins),
        Proteins == ["Phenylalanine"].

    test(phenylalanine_rna_sequence_2, condition(pending)) :-
        translate("UUC", Proteins),
        Proteins == ["Phenylalanine"].

    test(leucine_rna_sequence_1, condition(pending)) :-
        translate("UUA", Proteins),
        Proteins == ["Leucine"].

    test(leucine_rna_sequence_2, condition(pending)) :-
        translate("UUG", Proteins),
        Proteins == ["Leucine"].

    test(serine_rna_sequence_1, condition(pending)) :-
        translate("UCU", Proteins),
        Proteins == ["Serine"].

    test(serine_rna_sequence_2, condition(pending)) :-
        translate("UCC", Proteins),
        Proteins == ["Serine"].

    test(serine_rna_sequence_3, condition(pending)) :-
        translate("UCA", Proteins),
        Proteins == ["Serine"].

    test(serine_rna_sequence_4, condition(pending)) :-
        translate("UCG", Proteins),
        Proteins == ["Serine"].

    test(tyrosine_rna_sequence_1, condition(pending)) :-
        translate("UAU", Proteins),
        Proteins == ["Tyrosine"].

    test(tyrosine_rna_sequence_2, condition(pending)) :-
        translate("UAC", Proteins),
        Proteins == ["Tyrosine"].

    test(cysteine_rna_sequence_1, condition(pending)) :-
        translate("UGU", Proteins),
        Proteins == ["Cysteine"].

    test(cysteine_rna_sequence_2, condition(pending)) :-
        translate("UGC", Proteins),
        Proteins == ["Cysteine"].

    test(tryptophan_rna_sequence, condition(pending)) :-
        translate("UGG", Proteins),
        Proteins == ["Tryptophan"].

    test(stop_codon_rna_sequence_1, condition(pending)) :-
        translate("UAA", Proteins),
        Proteins == [].

    test(stop_codon_rna_sequence_2, condition(pending)) :-
        translate("UAG", Proteins),
        Proteins == [].

    test(stop_codon_rna_sequence_3, condition(pending)) :-
        translate("UGA", Proteins),
        Proteins == [].

    test(sequence_of_two_protein_codons_translates_into_proteins, condition(pending)) :-
        translate("UUUUUU", Proteins),
        Proteins == ["Phenylalanine", "Phenylalanine"].

    test(sequence_of_two_different_protein_codons_translates_into_proteins, condition(pending)) :-
        translate("UUAUUG", Proteins),
        Proteins == ["Leucine", "Leucine"].

    test(translate_rna_strand_into_correct_protein_list, condition(pending)) :-
        translate("AUGUUUUGG", Proteins),
        Proteins == ["Methionine", "Phenylalanine", "Tryptophan"].

    test(translation_stops_if_stop_codon_at_beginning_of_sequence, condition(pending)) :-
        translate("UAGUGG", Proteins),
        Proteins == [].

    test(translation_stops_if_stop_codon_at_end_of_two_codon_sequence, condition(pending)) :-
        translate("UGGUAG", Proteins),
        Proteins == ["Tryptophan"].

    test(translation_stops_if_stop_codon_at_end_of_three_codon_sequence, condition(pending)) :-
        translate("AUGUUUUAA", Proteins),
        Proteins == ["Methionine", "Phenylalanine"].

    test(translation_stops_if_stop_codon_in_middle_of_three_codon_sequence, condition(pending)) :-
        translate("UGGUAGUGG", Proteins),
        Proteins == ["Tryptophan"].

    test(translation_stops_if_stop_codon_in_middle_of_six_codon_sequence, condition(pending)) :-
        translate("UGGUGUUAUUAAUGGUUU", Proteins),
        Proteins == ["Tryptophan", "Cysteine", "Tyrosine"].
    
    test(sequence_of_two_non_stop_codons_does_not_translate_into_a_stop_codon, condition(pending)) :-
        translate("AUGAUG", Proteins),
        Proteins == ["Methionine", "Methionine"].

:- end_tests(protein_translation).
%------------------------------------------------------------ 71 proverb/proverb
% proverb.pl -- the exercism Prolog exercise proverb, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/proverb.example.pl, then its tests proverb_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
pairs([X,Y|Tail], [X-Y|Pairs]) :- pairs([Y|Tail], Pairs), !.
pairs(_, []) :- !.

buildup_line(Want-Loss, Line) :-
    format(string(Line), "For want of a ~w the ~w was lost.", [Want, Loss]).

final_line(Want, Line) :- 
    format(string(Line), "And all for the want of a ~w.", [Want]).

proverb([], []).
proverb(Wants, Lines) :-
    [Want|_] = Wants,
    pairs(Wants, Pairs),
    maplist(buildup_line, Pairs, BuildupLines),
    final_line(Want, FinalLine),
    append(BuildupLines, [FinalLine], Lines).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(proverb).

    test(zero_pieces, condition(true)) :-
        proverb([], Lines),
        Lines == [].

    test(one_piece, condition(pending)) :-
        proverb(["nail"], Lines),
        Lines == ["And all for the want of a nail."].

    test(two_pieces, condition(pending)) :-
        proverb(["nail", "shoe"], Lines),
        Lines == [
            "For want of a nail the shoe was lost.",
            "And all for the want of a nail."
        ].

    test(three_pieces, condition(pending)) :-
        proverb(["nail", "shoe", "horse"], Lines),
        Lines == [
            "For want of a nail the shoe was lost.",
            "For want of a shoe the horse was lost.",
            "And all for the want of a nail."
        ].

    test(full_proverb, condition(pending)) :-
        proverb(["nail", "shoe", "horse", "rider", "message", "battle", "kingdom"], Lines),
        Lines == [
            "For want of a nail the shoe was lost.",
            "For want of a shoe the horse was lost.",
            "For want of a horse the rider was lost.",
            "For want of a rider the message was lost.",
            "For want of a message the battle was lost.",
            "For want of a battle the kingdom was lost.",
            "And all for the want of a nail."
        ].

    test(four_pieces_modernized, condition(pending)) :-
        proverb(["pin", "gun", "soldier", "battle"], Lines),
        Lines == [
            "For want of a pin the gun was lost.",
            "For want of a gun the soldier was lost.",
            "For want of a soldier the battle was lost.",
            "And all for the want of a pin."
        ].

:- end_tests(proverb).
%------------------------------------ 72 pythagorean-triplet/pythagorean_triplet
% pythagorean_triplet.pl -- the exercism Prolog exercise pythagorean-triplet, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/pythagorean_triplet.example.pl, then its tests pythagorean_triplet_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
triplet(Sum, (A, B, C)) :-
    MaxA is Sum//3,
    between(1, MaxA, A),
    MaxB is Sum//2,
    between(A, MaxB, B),
    C is Sum - A - B,
    A*A + B*B =:= C*C.

triplets(Sum, Triplets) :- 
    findall(Triplet, triplet(Sum, Triplet), Triplets).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(pythagorean_triplet).

    test(triplets_whose_sum_is_12, condition(true)) :-
        triplets(12, Triplets),
        Triplets == [(3, 4, 5)].

    test(triplets_whose_sum_is_108, condition(pending)) :-
        triplets(108, Triplets),
        Triplets == [(27, 36, 45)].

    test(triplets_whose_sum_is_1000, condition(pending)) :-
        triplets(1000, Triplets),
        Triplets == [(200, 375, 425)].

    test(no_matching_triplets_for_1001, condition(pending)) :-
        triplets(1001, Triplets),
        Triplets == [].

    test(returns_all_matching_triplets, condition(pending)) :-
        triplets(90, Triplets),
        Triplets == [(9, 40, 41), (15, 36, 39)].

    test(several_matching_triplets, condition(pending)) :-    
        triplets(840, Triplets),
        Triplets == [
            (40, 399, 401),
            (56, 390, 394),
            (105, 360, 375),
            (120, 350, 370),
            (140, 336, 364),
            (168, 315, 357),
            (210, 280, 350),
            (240, 252, 348)
        ].

:- end_tests(pythagorean_triplet).

% BONUS TESTS
bonus :-
    current_prolog_flag(argv, ['--bonus'|_]).

:- begin_tests(pythagorean_triplet_bonus, [condition(bonus)]).

    test(triplets_for_large_number, condition(pending)) :-
        triplets(30000, Triplets),
        Triplets == [
            (1200, 14375, 14425),
            (1875, 14000, 14125),
            (5000, 12000, 13000),
            (6000, 11250, 12750),
            (7500, 10000, 12500)
        ].

:- end_tests(pythagorean_triplet_bonus).
%-------------------------------------------------- 73 queen-attack/queen_attack
% queen_attack.pl -- the exercism Prolog exercise queen-attack, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/queen_attack.example.pl, then its tests queen_attack_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
create((X,Y)) :- X >= 0, Y >= 0, 7 >= X, 7 >= Y.

column((_, Y), (_, V)) :- Y =:= V.

row((X, _), (U, _)):- X =:= U.

diagonal((X, Y), (U, V)) :-  (X-Y) =:= (U-V), !; (X+Y) =:= (U+V).

attack((X, Y), (U, V)) :-
  column((X, Y), (U, V)), !;
  row((X, Y), (U, V)), !;
  diagonal((X, Y), (U, V)).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(create_tests).

    test(create_in_center, condition(true)) :-
      create((3,3)).

    test(valid_position, condition(pending)) :-
      create((2,2)).

    test(must_have_positive_row, [fail, condition(pending)]) :-
      create((-2,2)).

    test(row_smaller_than_board_size, [fail, condition(pending)]) :-
      create((8,4)).

    test(must_have_positive_column, [fail, condition(pending)]) :-
      create((2,-2)).

    test(column_smaller_than_board_size, [fail, condition(pending)]) :-
      create((4,8)).

:- end_tests(create_tests).


:- begin_tests(attack_tests).

    test(cant_attack, [fail, condition(pending)]) :-
      attack((2,4), (6,6)).

    test(attack_on_same_row, condition(pending)) :-
      attack((2,4), (2,6)).

    test(attack_same_column, condition(pending)) :-
      attack((4,5), (2,5)).

    test(attack_first_diagonal, condition(pending)) :-
      attack((2,2), (0,4)).

    test(attack_second_diagonal, condition(pending)) :-
      attack((2,2), (3,1)).

    test(attack_third_diagonal, condition(pending)) :-
      attack((2,2), (1,1)).

    test(attack_fourth_diagonal, condition(pending)) :-
      attack((2,2), (5,5)).

    test(cannot_attack_reflected_diagonals, [fail, condition(pending)]) :-
      attack((4,1), (2,5)).

:- end_tests(attack_tests).
%-------------------------------------------------------- 74 raindrops/raindrops
% raindrops.pl -- the exercism Prolog exercise raindrops, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/raindrops.example.pl, then its tests raindrops_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
sound(Factor, N, Sound, Sounds) :-
    (N mod Factor =:= 0 -> Sounds = Sound ; Sounds = "").

convert(N, Sounds) :-
    sound(3, N, "Pling", S1),
    sound(5, N, "Plang", S2),
    sound(7, N, "Plong", S3),
    string_concat(S1, S2, R1),
    string_concat(R1, S3, R2),
    (R2 = "" -> number_string(N, Sounds) ; Sounds = R2).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(raindrops).

    test(the_sound_for_1_is_1, condition(true)) :-
        convert(1, Sounds),
        Sounds == "1".

    test(the_sound_for_3_is_pling, condition(pending)) :-
        convert(3, Sounds),
        Sounds == "Pling".

    test(the_sound_for_5_is_plang, condition(pending)) :-
        convert(5, Sounds),
        Sounds == "Plang".

    test(the_sound_for_7_is_plong, condition(pending)) :-
        convert(7, Sounds),
        Sounds == "Plong".

    test(the_sound_for_6_is_pling_as_it_has_a_factor_3, condition(pending)) :-
        convert(6, Sounds),
        Sounds == "Pling".

    test(two_to_the_power_3_does_not_make_a_raindrop_sound_as_3_is_the_exponent_not_the_base, condition(pending)) :-
        convert(8, Sounds),
        Sounds == "8".

    test(the_sound_for_9_is_pling_as_it_has_a_factor_3, condition(pending)) :-
        convert(9, Sounds),
        Sounds == "Pling".

    test(the_sound_for_10_is_plang_as_it_has_a_factor_5, condition(pending)) :-
        convert(10, Sounds),
        Sounds == "Plang".

    test(the_sound_for_14_is_plong_as_it_has_a_factor_of_7, condition(pending)) :-
        convert(14, Sounds),
        Sounds == "Plong".

    test(the_sound_for_15_is_plingplang_as_it_has_factors_3_and_5, condition(pending)) :-
        convert(15, Sounds),
        Sounds == "PlingPlang".

    test(the_sound_for_21_is_plingplong_as_it_has_factors_3_and_7, condition(pending)) :-
        convert(21, Sounds),
        Sounds == "PlingPlong".

    test(the_sound_for_25_is_plang_as_it_has_a_factor_5, condition(pending)) :-
        convert(25, Sounds),
        Sounds == "Plang".

    test(the_sound_for_27_is_pling_as_it_has_a_factor_3, condition(pending)) :-
        convert(27, Sounds),
        Sounds == "Pling".

    test(the_sound_for_35_is_plangplong_as_it_has_factors_5_and_7, condition(pending)) :-
        convert(35, Sounds),
        Sounds == "PlangPlong".

    test(the_sound_for_49_is_plong_as_it_has_a_factor_7, condition(pending)) :-
        convert(49, Sounds),
        Sounds == "Plong".

    test(the_sound_for_52_is_52, condition(pending)) :-
        convert(52, Sounds),
        Sounds == "52".

    test(the_sound_for_105_is_plingplangplong_as_it_has_factors_3_5_and_7, condition(pending)) :-
        convert(105, Sounds),
        Sounds == "PlingPlangPlong".

    test(the_sound_for_3125_is_plang_as_it_has_a_factor_5, condition(pending)) :-
        convert(3125, Sounds),
        Sounds == "Plang".

:- end_tests(raindrops).
%------------------------------------------ 75 rational-numbers/rational_numbers
% rational_numbers.pl -- the exercism Prolog exercise rational-numbers, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/rational_numbers.example.pl, then its tests rational_numbers_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
create_rational(Numerator, Denominator, Rational) :-
    (Denominator < 0 -> Multiplier = -1; Multiplier = 1),
    Gcd is gcd(Numerator, Denominator),
    ReducedNumerator is Numerator * Multiplier div Gcd,
    ReducedDenominator is Denominator * Multiplier div Gcd,
    Rational = rational(ReducedNumerator, ReducedDenominator).

add(rational(A1, B1), rational(A2, B2), Added) :-
    Numerator is A1 * B2 + A2 * B1,
    Denominator is B1 * B2,
    create_rational(Numerator, Denominator, Added).

sub(rational(A1, B1), rational(A2, B2), Subtracted) :-
    Numerator is A1 * B2 - A2 * B1,
    Denominator is B1 * B2,
    create_rational(Numerator, Denominator, Subtracted).

mul(rational(A1, B1), rational(A2, B2), Multiplied) :-
    Numerator is A1 * A2,
    Denominator is B1 * B2,
    create_rational(Numerator, Denominator, Multiplied).

div(rational(A1, B1), rational(A2, B2), Divided) :-
    Numerator is A1 * B2,
    Denominator is A2 * B1,
    create_rational(Numerator, Denominator, Divided).

abs(rational(A, B), Abs) :-
    Numerator is abs(A),
    Denominator is abs(B),
    create_rational(Numerator, Denominator, Abs).

pow(rational(A,B), Power, Raised) :-
    (Power < 0 ->
        Numerator is B ** (-Power),
        Denominator is A ** (-Power);
        Numerator is A ** Power,
        Denominator is B ** Power),
    create_rational(Numerator, Denominator, Raised), !.

pow(N, rational(A,B), Raised) :-
    Raised is N ** (A / B).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(rational_numbers).

    test(add_two_positive_rational_numbers, condition(true)) :-
        create_rational(1, 2, Rational1),
        create_rational(2, 3, Rational2),
        add(Rational1, Rational2, Added),
        create_rational(7, 6, Expected),
        Added == Expected.

    test(add_a_positive_rational_number_and_a_negative_rational_number, condition(pending)) :-
        create_rational(1, 2, Rational1),
        create_rational(-2, 3, Rational2),
        add(Rational1, Rational2, Added),
        create_rational(-1, 6, Expected),
        Added == Expected.

    test(add_two_negative_rational_numbers, condition(pending)) :-
        create_rational(-1, 2, Rational1),
        create_rational(-2, 3, Rational2),
        add(Rational1, Rational2, Added),
        create_rational(-7, 6, Expected),
        Added == Expected.

    test(add_a_rational_number_to_its_additive_inverse, condition(pending)) :-
        create_rational(1, 2, Rational1),
        create_rational(-1, 2, Rational2),
        add(Rational1, Rational2, Added),
        create_rational(0, 1, Expected),
        Added == Expected.

    test(subtract_two_positive_rational_numbers, condition(pending)) :-
        create_rational(1, 2, Rational1),
        create_rational(2, 3, Rational2),
        sub(Rational1, Rational2, Subtracted),
        create_rational(-1, 6, Expected),
        Subtracted == Expected.

    test(subtract_a_positive_rational_number_and_a_negative_rational_number, condition(pending)) :-
        create_rational(1, 2, Rational1),
        create_rational(-2, 3, Rational2),
        sub(Rational1, Rational2, Subtracted),
        create_rational(7, 6, Expected),
        Subtracted == Expected.

    test(subtract_two_negative_rational_numbers, condition(pending)) :-
        create_rational(-1, 2, Rational1),
        create_rational(-2, 3, Rational2),
        sub(Rational1, Rational2, Subtracted),
        create_rational(1, 6, Expected),
        Subtracted == Expected.

    test(subtract_a_rational_number_from_itself, condition(pending)) :-
        create_rational(1, 2, Rational1),
        create_rational(1, 2, Rational2),
        sub(Rational1, Rational2, Subtracted),
        create_rational(0, 1, Expected),
        Subtracted == Expected.

    test(multiply_two_positive_rational_numbers, condition(pending)) :-
        create_rational(1, 2, Rational1),
        create_rational(2, 3, Rational2),
        mul(Rational1, Rational2, Multiplied),
        create_rational(1, 3, Expected),
        Multiplied == Expected.

    test(multiply_a_negative_rational_number_by_a_positive_rational_number, condition(pending)) :-
        create_rational(-1, 2, Rational1),
        create_rational(2, 3, Rational2),
        mul(Rational1, Rational2, Multiplied),
        create_rational(-1, 3, Expected),
        Multiplied == Expected.

    test(multiply_two_negative_rational_numbers, condition(pending)) :-
        create_rational(-1, 2, Rational1),
        create_rational(-2, 3, Rational2),
        mul(Rational1, Rational2, Multiplied),
        create_rational(1, 3, Expected),
        Multiplied == Expected.

    test(multiply_a_rational_number_by_its_reciprocal, condition(pending)) :-
        create_rational(1, 2, Rational1),
        create_rational(2, 1, Rational2),
        mul(Rational1, Rational2, Multiplied),
        create_rational(1, 1, Expected),
        Multiplied == Expected.

    test(multiply_a_rational_number_by_1, condition(pending)) :-
        create_rational(1, 2, Rational1),
        create_rational(1, 1, Rational2),
        mul(Rational1, Rational2, Multiplied),
        create_rational(1, 2, Expected),
        Multiplied == Expected.

    test(multiply_a_rational_number_by_0, condition(pending)) :-
        create_rational(1, 2, Rational1),
        create_rational(0, 1, Rational2),
        mul(Rational1, Rational2, Multiplied),
        create_rational(0, 1, Expected),
        Multiplied == Expected.

    test(divide_two_positive_rational_numbers, condition(pending)) :-
        create_rational(1, 2, Rational1),
        create_rational(2, 3, Rational2),
        div(Rational1, Rational2, Divided),
        create_rational(3, 4, Expected),
        Divided == Expected.

    test(divide_a_positive_rational_number_by_a_negative_rational_number, condition(pending)) :-
        create_rational(1, 2, Rational1),
        create_rational(-2, 3, Rational2),
        div(Rational1, Rational2, Divided),
        create_rational(-3, 4, Expected),
        Divided == Expected.

    test(divide_two_negative_rational_numbers, condition(pending)) :-
        create_rational(-1, 2, Rational1),
        create_rational(-2, 3, Rational2),
        div(Rational1, Rational2, Divided),
        create_rational(3, 4, Expected),
        Divided == Expected.

    test(divide_a_rational_number_by_1, condition(pending)) :-
        create_rational(1, 2, Rational1),
        create_rational(1, 1, Rational2),
        div(Rational1, Rational2, Divided),
        create_rational(1, 2, Expected),
        Divided == Expected.

    test(absolute_value_of_a_positive_rational_number, condition(pending)) :-
        create_rational(1, 2, Rational),
        abs(Rational, Abs),
        create_rational(1, 2, Expected),
        Abs == Expected.

    test(absolute_value_of_a_positive_rational_number_with_negative_numerator_and_denominator, condition(pending)) :-
        create_rational(-1, -2, Rational),
        abs(Rational, Abs),
        create_rational(1, 2, Expected),
        Abs == Expected.

    test(absolute_value_of_a_negative_rational_number, condition(pending)) :-
        create_rational(-1, 2, Rational),
        abs(Rational, Abs),
        create_rational(1, 2, Expected),
        Abs == Expected.

    test(absolute_value_of_a_negative_rational_number_with_negative_denominator, condition(pending)) :-
        create_rational(1, -2, Rational),
        abs(Rational, Abs),
        create_rational(1, 2, Expected),
        Abs == Expected.

    test(absolute_value_of_zero, condition(pending)) :-
        create_rational(0, 1, Rational),
        abs(Rational, Abs),
        create_rational(0, 1, Expected),
        Abs == Expected.

    test(absolute_value_of_a_rational_number_is_reduced_to_lowest_terms, condition(pending)) :-
        create_rational(2, 4, Rational),
        abs(Rational, Abs),
        create_rational(1, 2, Expected),
        Abs == Expected.

    test(raise_a_positive_rational_number_to_a_positive_integer_power, condition(pending)) :-
        create_rational(1, 2, Rational),
        pow(Rational, 3, Pow),
        create_rational(1, 8, Expected),
        Pow == Expected.

    test(raise_a_negative_rational_number_to_a_positive_integer_power, condition(pending)) :-
        create_rational(-1, 2, Rational),
        pow(Rational, 3, Pow),
        create_rational(-1, 8, Expected),
        Pow == Expected.

    test(raise_a_positive_rational_number_to_a_negative_integer_power, condition(pending)) :-
        create_rational(3, 5, Rational),
        pow(Rational, -2, Pow),
        create_rational(25, 9, Expected),
        Pow == Expected.

    test(raise_a_negative_rational_number_to_an_even_negative_integer_power, condition(pending)) :-
        create_rational(-3, 5, Rational),
        pow(Rational, -2, Pow),
        create_rational(25, 9, Expected),
        Pow == Expected.

    test(raise_a_negative_rational_number_to_an_odd_negative_integer_power, condition(pending)) :-
        create_rational(-3, 5, Rational),
        pow(Rational, -3, Pow),
        create_rational(-125, 27, Expected),
        Pow == Expected.

    test(raise_zero_to_an_integer_power, condition(pending)) :-
        create_rational(0, 1, Rational),
        pow(Rational, 5, Pow),
        create_rational(0, 1, Expected),
        Pow == Expected.

    test(raise_one_to_an_integer_power, condition(pending)) :-
        create_rational(1, 1, Rational),
        pow(Rational, 4, Pow),
        create_rational(1, 1, Expected),
        Pow == Expected.

    test(raise_a_positive_rational_number_to_the_power_of_zero, condition(pending)) :-
        create_rational(1, 2, Rational),
        pow(Rational, 0, Pow),
        create_rational(1, 1, Expected),
        Pow == Expected.

    test(raise_a_negative_rational_number_to_the_power_of_zero, condition(pending)) :-
        create_rational(-1, 2, Rational),
        pow(Rational, 0, Pow),
        create_rational(1, 1, Expected),
        Pow == Expected.

    test(raise_a_real_number_to_a_positive_rational_number, condition(pending)) :-
        create_rational(4, 3, Rational),
        pow(8, Rational, Pow),
        abs(16.0 - Pow) < 0.00000001.

    test(raise_a_real_number_to_a_negative_rational_number, condition(pending)) :-
        create_rational(-1, 2, Rational),
        pow(9, Rational, Pow),
        abs(0.3333333333333333 - Pow) < 0.000000000000001.

    test(raise_a_real_number_to_a_zero_rational_number, condition(pending)) :-
        create_rational(0, 1, Rational),
        pow(2, Rational, Pow),
        Pow =:= 1.0.

    test(reduce_a_positive_rational_number_to_lowest_terms, condition(pending)) :-
        create_rational(2, 4, Rational1),
        create_rational(1, 2, Rational2),
        Rational1 == Rational2.

    test(reduce_places_the_minus_sign_on_the_numerator, condition(pending)) :-
        create_rational(3, -4, Rational1),
        create_rational(-3, 4, Rational2),
        Rational1 == Rational2.

    test(reduce_a_negative_rational_number_to_lowest_terms, condition(pending)) :-
        create_rational(-4, 6, Rational1),
        create_rational(-2, 3, Rational2),
        Rational1 == Rational2.

    test(reduce_a_rational_number_with_a_negative_denominator_to_lowest_terms, condition(pending)) :-
        create_rational(3, -9, Rational1),
        create_rational(-1, 3, Rational2),
        Rational1 == Rational2.

    test(reduce_zero_to_lowest_terms, condition(pending)) :-
        create_rational(0, 6, Rational1),
        create_rational(0, 1, Rational2),
        Rational1 == Rational2.

    test(reduce_an_integer_to_lowest_terms, condition(pending)) :-
        create_rational(-14, 7, Rational1),
        create_rational(-2, 1, Rational2),
        Rational1 == Rational2.

    test(reduce_one_to_lowest_terms, condition(pending)) :-
        create_rational(13, 13, Rational1),
        create_rational(1, 1, Rational2),
        Rational1 == Rational2.

:- end_tests(rational_numbers).
%---------------------------------------------- 76 resistor-color/resistor_color
% resistor_color.pl -- the exercism Prolog exercise resistor-color, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/resistor_color.example.pl, then its tests resistor_color_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
color_code(Color, Code) :-
    colors(Colors),
    nth0(Code, Colors, Color), !.

colors(Colors) :-
    Colors = [
        "black",
        "brown",
        "red",
        "orange",
        "yellow",
        "green",
        "blue",
        "violet",
        "grey",
        "white"
    ].

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(resistor_color).

    test(black, condition(true)) :-
        color_code("black", Code), 
        Code == 0.

    test(white, condition(pending)) :-
        color_code("white", Code), 
        Code == 9.

    test(orange, condition(pending)) :-
        color_code("orange", Code), 
        Code == 3.

    test(colors, condition(pending)) :-
        colors(Colors),
        Colors == [
            "black",
            "brown",
            "red",
            "orange",
            "yellow",
            "green",
            "blue",
            "violet",
            "grey",
            "white"
        ].

:- end_tests(resistor_color).
%-------------------------------------- 77 resistor-color-duo/resistor_color_duo
% resistor_color_duo.pl -- the exercism Prolog exercise resistor-color-duo, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/resistor_color_duo.example.pl, then its tests resistor_color_duo_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

value([Color1, Color2|_], Value) :-
    color_code(Color1, Tens),
    color_code(Color2, Digit),
    Value #= Tens * 10 + Digit.

color_code(Color, Code) :-
    colors(Colors),
    nth0(Code, Colors, Color), !.

colors(Colors) :-
    Colors = [
        "black",
        "brown",
        "red",
        "orange",
        "yellow",
        "green",
        "blue",
        "violet",
        "grey",
        "white"
    ].

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(resistor_color_duo).

    test(brown_and_black, condition(true)) :-
        value(["brown", "black"], Value),
        Value == 10.

    test(blue_and_grey, condition(pending)) :-
        value(["blue", "grey"], Value),
        Value == 68.

    test(yellow_and_violet, condition(pending)) :-
        value(["yellow", "violet"], Value),
        Value == 47.

    test(white_and_red, condition(pending)) :-
        value(["white", "red"], Value),
        Value == 92.

    test(orange_and_orange, condition(pending)) :-
        value(["orange", "orange"], Value),
        Value == 33.

    test(ignore_additional_colors, condition(pending)) :-
        value(["green", "brown", "orange"], Value),
        Value == 51.

    test(black_and_brown_one_digit, condition(pending)) :-
        value(["black", "brown"], Value),
        Value == 1.

:- end_tests(resistor_color_duo).
%------------------------------------ 78 resistor-color-trio/resistor_color_trio
% resistor_color_trio.pl -- the exercism Prolog exercise resistor-color-trio, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/resistor_color_trio.example.pl, then its tests resistor_color_trio_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

unit_quantity(Value, Quantity, "gigaohms") :-
    Value #> 1000000000, Quantity #= Value // 1000000000, !.

unit_quantity(Value, Quantity, "megaohms") :-
    Value #> 1000000, Quantity #= Value // 1000000, !.

unit_quantity(Value, Quantity, "kiloohms") :-
    Value #> 1000, Quantity #= Value // 1000, !.

unit_quantity(Value, Value, "ohms").

label(Colors, Label) :-
    value(Colors, Value),
    unit_quantity(Value, Quantity, Unit),
    format(string(Label), "~d ~w", [Quantity, Unit]).

value([Color1, Color2, Color3|_], Value) :-
    color_code(Color1, Tens),
    color_code(Color2, Digit),
    color_code(Color3, Zeros),
    Value #= (Tens * 10 + Digit) * (10 ^ Zeros).

color_code(Color, Code) :-
    colors(Colors),
    nth0(Code, Colors, Color), !.

colors(Colors) :-
    Colors = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"].

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(resistor_color_trio).

    test(orange_and_orange_and_black, condition(true)) :-
        label(["orange", "orange", "black"], Label),
        Label == "33 ohms".

    test(blue_and_grey_and_brown, condition(pending)) :-
        label(["blue", "grey", "brown"], Label),
        Label == "680 ohms".

    test(red_and_black_and_red, condition(pending)) :-
        label(["red", "black", "red"], Label),
        Label == "2 kiloohms".

    test(green_and_brown_and_orange, condition(pending)) :-
        label(["green", "brown", "orange"], Label),
        Label == "51 kiloohms".

    test(yellow_and_violet_and_yellow, condition(pending)) :-
        label(["yellow", "violet", "yellow"], Label),
        Label == "470 kiloohms".

    test(blue_and_violet_and_blue, condition(pending)) :-
        label(["blue", "violet", "blue"], Label),
        Label == "67 megaohms".

    test(minimum_possible_value, condition(pending)) :-
        label(["black", "black", "black"], Label),
        Label == "0 ohms".

    test(maximum_possible_value, condition(pending)) :-
        label(["white", "white", "white"], Label),
        Label == "99 gigaohms".

    test(first_two_colors_make_an_invalid_octal_number, condition(pending)) :-
        label(["black", "grey", "black"], Label),
        Label == "8 ohms".

    test(ignore_extra_colors, condition(pending)) :-
        label(["blue", "green", "yellow", "orange"], Label),
        Label == "650 kiloohms".

:- end_tests(resistor_color_trio).
%---------------------------------------------- 79 reverse-string/reverse_string
% reverse_string.pl -- the exercism Prolog exercise reverse-string, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/reverse_string.example.pl, then its tests reverse_string_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
string_reverse(S, Reversed) :-
    string_chars(S, Chars),
    reverse(Chars, ReversedChars),
    string_chars(Reversed, ReversedChars).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(reverse_string).

    test(an_empty_string, condition(true)) :-
        string_reverse("", Reversed),
        Reversed == "".

    test(a_word, condition(pending)) :-
        string_reverse("robot", Reversed),
        Reversed == "tobor".

    test(a_capitalized_word, condition(pending)) :-
        string_reverse("Ramen", Reversed),
        Reversed == "nemaR".

    test(a_sentence_with_punctuation, condition(pending)) :-
        string_reverse("I'm hungry!", Reversed),
        Reversed == "!yrgnuh m'I".

    test(a_palindrome, condition(pending)) :-
        string_reverse("racecar", Reversed),
        Reversed == "racecar".

    test(an_even_sized_word, condition(pending)) :-
        string_reverse("drawer", Reversed),
        Reversed == "reward".

    test(wide_character, condition(pending)) :-
        string_reverse("子猫", Reversed),
        Reversed == "猫子".

:- end_tests(reverse_string).
%---------------------------------------- 80 rna-transcription/rna_transcription
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
%------------------------------------------------------ 81 robot-name/robot_name
% robot_name.pl -- the exercism Prolog exercise robot-name, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/robot_name.example.pl, then its tests robot_name_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
letters(Letters) :- string_chars("ABCDEFGHIJKLMNOPQRSTUVWXZY", Letters).
digits(Digits) :- string_chars("0123456789", Digits).

generate_name(Name) :-
    letters(Letters),
    digits(Digits),
    random_member(L1, Letters), random_member(L2, Letters),
    random_member(D1, Digits), random_member(D2, Digits), random_member(D3, Digits),
    string_chars(Name, [L1,L2,D1,D2,D3]).

create_robot(Robot) :-
    generate_name(Name),
    Robot = robot(Name).

robot_name(robot(Name), Name).

reset_name(Robot) :-
    generate_name(Name),
    setarg(1, Robot, Name).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(robot_name).

    test(has_name, condition(true)) :-
        create_robot(Robot),
        robot_name(Robot, Name),
        string_concat(Letters, Digits, Name),
        string_length(Letters, 2),
        string_length(Digits, 3),
        string_chars(Letters, LettersChars),
        string_chars(Digits, DigitsChars),
        maplist([C]>>char_type(C, upper), LettersChars),
        maplist([C]>>char_type(C, digit), DigitsChars),
        !.

    test(name_sticks, condition(pending)) :-
        create_robot(Robot),
        robot_name(Robot, Name1),
        robot_name(Robot, Name2),
        Name1 == Name2.

    test(different_robots_have_different_names, condition(pending)) :-
        create_robot(Robot1),
        create_robot(Robot2),
        robot_name(Robot1, Name1),
        robot_name(Robot2, Name2),
        Name1 \== Name2.

    test(reset_name, condition(pending)) :-
        create_robot(Robot),
        robot_name(Robot, Name1),
        reset_name(Robot),
        robot_name(Robot, Name2),
        Name1 \== Name2.

:- end_tests(robot_name).
%-------------------------------------------- 82 robot-simulator/robot_simulator
% robot_simulator.pl -- the exercism Prolog exercise robot-simulator, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/robot_simulator.example.pl, then its tests robot_simulator_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

create(X, Y, Direction, Robot) :-
    Robot = robot(coordinate(x(X), y(Y)), direction(Direction)).

left(north, west).
left(east, north).
left(south, east).
left(west, south).

right(north, east).
right(east, south).
right(south, west).
right(west, north).

advance(north, X, Y,    X, NewY) :- NewY #= Y + 1.
advance(east,  X, Y, NewX,    Y) :- NewX #= X + 1.
advance(south, X, Y,    X, NewY) :- NewY #= Y - 1.
advance(west,  X, Y, NewX,    Y) :- NewX #= X - 1.

instruction('L', Robot, Updated) :-
    create(X, Y, Direction, Robot),
    left(Direction, NewDirection),
    create(X, Y, NewDirection, Updated).

instruction('R', Robot, Updated) :-
    create(X, Y, Direction, Robot),
    right(Direction, NewDirection),
    create(X, Y, NewDirection, Updated).

instruction('A', Robot, Updated) :-
    create(X, Y, Direction, Robot),
    advance(Direction, X, Y, NewX, NewY),
    create(NewX, NewY, Direction, Updated).

move(Robot, Instructions, Moved) :-
    string_chars(Instructions, Chars),
    foldl(instruction, Chars, Robot, Moved).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(robot_simulator).

    test(at_origin_facing_north, condition(true)) :-
        create(0, 0, north, Robot),
        Robot == robot(coordinate(x(0), y(0)), direction(north)).

    test(at_negative_position_facing_south, condition(pending)) :-
        create(-1, -1, south, Robot),
        Robot == robot(coordinate(x(-1), y(-1)), direction(south)).

    test(changes_north_to_east, condition(pending)) :-
        create(0, 0, north, Robot),
        move(Robot, "R", Moved),
        Moved == robot(coordinate(x(0), y(0)), direction(east)).
    
    test(changes_east_to_south, condition(pending)) :-
        create(0, 0, east, Robot),
        move(Robot, "R", Moved),
        Moved == robot(coordinate(x(0), y(0)), direction(south)).
    
    test(changes_south_to_west, condition(pending)) :-
        create(0, 0, south, Robot),
        move(Robot, "R", Moved),
        Moved == robot(coordinate(x(0), y(0)), direction(west)).
    
    test(changes_west_to_north, condition(pending)) :-
        create(0, 0, west, Robot),
        move(Robot, "R", Moved),
        Moved == robot(coordinate(x(0), y(0)), direction(north)).
    
    test(changes_north_to_west, condition(pending)) :-
        create(0, 0, north, Robot),
        move(Robot, "L", Moved),
        Moved == robot(coordinate(x(0), y(0)), direction(west)).
    
    test(changes_west_to_south, condition(pending)) :-
        create(0, 0, west, Robot),
        move(Robot, "L", Moved),
        Moved == robot(coordinate(x(0), y(0)), direction(south)).
    
    test(changes_south_to_east, condition(pending)) :-
        create(0, 0, south, Robot),
        move(Robot, "L", Moved),
        Moved == robot(coordinate(x(0), y(0)), direction(east)).
    
    test(changes_east_to_north, condition(pending)) :-
        create(0, 0, east, Robot),
        move(Robot, "L", Moved),
        Moved == robot(coordinate(x(0), y(0)), direction(north)).
    
    test(facing_north_increments_y, condition(pending)) :-
        create(0, 0, north, Robot),
        move(Robot, "A", Moved),
        Moved == robot(coordinate(x(0), y(1)), direction(north)).
    
    test(facing_south_decrements_y, condition(pending)) :-
        create(0, 0, south, Robot),
        move(Robot, "A", Moved),
        Moved == robot(coordinate(x(0), y(-1)), direction(south)).
    
    test(facing_east_increments_x, condition(pending)) :-
        create(0, 0, east, Robot),
        move(Robot, "A", Moved),
        Moved == robot(coordinate(x(1), y(0)), direction(east)).
    
    test(facing_west_decrements_x, condition(pending)) :-
        create(0, 0, west, Robot),
        move(Robot, "A", Moved),
        Moved == robot(coordinate(x(-1), y(0)), direction(west)).

    test(moving_east_and_north_from_readme, condition(pending)) :-
        create(7, 3, north, Robot),
        move(Robot, "RAALAL", Moved),
        Moved == robot(coordinate(x(9), y(4)), direction(west)).
    
    test(moving_west_and_north, condition(pending)) :-
        create(0, 0, north, Robot),
        move(Robot, "LAAARALA", Moved),
        Moved == robot(coordinate(x(-4), y(1)), direction(west)).
    
    test(moving_west_and_south, condition(pending)) :-
        create(2, -7, east, Robot),
        move(Robot, "RRAAAAALA", Moved),
        Moved == robot(coordinate(x(-3), y(-8)), direction(south)).
    
    test(moving_east_and_north, condition(pending)) :-
        create(8, 4, south, Robot),
        move(Robot, "LAAARRRALLLL", Moved),
        Moved == robot(coordinate(x(11), y(5)), direction(north)).

:- end_tests(robot_simulator).
%---------------------------------------------- 83 roman-numerals/roman_numerals
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
%---------------------------------------- 84 rotational-cipher/rotational_cipher
% rotational_cipher.pl -- the exercism Prolog exercise rotational-cipher, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/rotational_cipher.example.pl, then its tests rotational_cipher_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

rotate_code(Amount, Code, Rotated) :-
    code_type(Code, lower),
    Rotated #= 97 + ((Code - 97 + Amount) rem 26), !. 

rotate_code(Amount, Code, Rotated) :-
    code_type(Code, upper),
    Rotated #= 65 + ((Code - 65 + Amount) rem 26), !.

rotate_code(_, Code, Code) :- !.

rotate(Plaintext, Amount, Ciphertext) :-
    string_codes(Plaintext, Codes),
    maplist(rotate_code(Amount), Codes, RotatedCodes),
    string_codes(Ciphertext, RotatedCodes).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(rotational_cipher).

    test(rotate_a_by_0_same_output_as_input, condition(true)) :-
        rotate("a", 0, Ciphertext),
        Ciphertext == "a".

    test(rotate_a_by_1, condition(pending)) :-
        rotate("a", 1, Ciphertext),
        Ciphertext == "b".

    test(rotate_a_by_26_same_output_as_input, condition(pending)) :-
        rotate("a", 26, Ciphertext),
        Ciphertext == "a".

    test(rotate_m_by_13, condition(pending)) :-
        rotate("m", 13, Ciphertext),
        Ciphertext == "z".

    test(rotate_n_by_13_with_wrap_around_alphabet, condition(pending)) :-
        rotate("n", 13, Ciphertext),
        Ciphertext == "a".

    test(rotate_capital_letters, condition(pending)) :-
        rotate("OMG", 5, Ciphertext),
        Ciphertext == "TRL".

    test(rotate_spaces, condition(pending)) :-
        rotate("O M G", 5, Ciphertext),
        Ciphertext == "T R L".

    test(rotate_numbers, condition(pending)) :-
        rotate("Testing 1 2 3 testing", 4, Ciphertext),
        Ciphertext == "Xiwxmrk 1 2 3 xiwxmrk".

    test(rotate_punctuation, condition(pending)) :-
        rotate("Let's eat, Grandma!", 21, Ciphertext),
        Ciphertext == "Gzo'n zvo, Bmviyhv!".

    test(rotate_all_letters, condition(pending)) :-
        rotate("The quick brown fox jumps over the lazy dog.", 13, Ciphertext),
        Ciphertext == "Gur dhvpx oebja sbk whzcf bire gur ynml qbt.".

:- end_tests(rotational_cipher).
%------------------------------------ 85 run-length-encoding/run_length_encoding
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
%------------------------------------------------ 86 saddle-points/saddle_points
% saddle_points.pl -- the exercism Prolog exercise saddle-points, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/saddle_points.example.pl, then its tests saddle_points_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

saddle_point(Matrix, RowMaxes, ColMins, R, C) :-
    nth1(R, Matrix, Row),
    nth1(C, Row, Cell),
    nth1(R, RowMaxes, RowMax),
    nth1(C, ColMins, ColMin),
    Cell #>= RowMax, Cell #=< ColMin.

saddle_points(Matrix, SaddlePoints) :-
    transpose(Matrix, Transposed),
    maplist(max_list, Matrix, RowMaxes),
    maplist(min_list, Transposed, ColMins),
    length(RowMaxes, Rows),
    length(ColMins, Cols),
    findall((R, C),
            (
                between(1, Rows, R),
                between(1, Cols, C),
                saddle_point(Matrix, RowMaxes, ColMins, R, C)),
            SaddlePoints).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(saddle_points).

    test(can_identify_single_saddle_point, condition(true)) :-
        Matrix = [[9, 8, 7], [5, 3, 2], [6, 6, 7]],
        saddle_points(Matrix, SaddlePoints),
        sort(SaddlePoints, SortedSaddlePoints),
        SortedSaddlePoints == [(2, 1)].

    test(can_identify_that_empty_matrix_has_no_saddle_points, condition(pending)) :-
        Matrix = [],
        saddle_points(Matrix, SaddlePoints),
        SaddlePoints == [].

    test(can_identify_lack_of_saddle_points_when_there_are_none, condition(pending)) :-
        Matrix = [[1, 2, 3], [3, 1, 2], [2, 3, 1]],
        saddle_points(Matrix, SaddlePoints),
        SaddlePoints == [].

    test(can_identify_multiple_saddle_points_in_a_column, condition(pending)) :-
        Matrix = [[4, 5, 4], [3, 5, 5], [1, 5, 4]],
        saddle_points(Matrix, SaddlePoints),
        sort(SaddlePoints, SortedSaddlePoints),
        SortedSaddlePoints == [(1, 2), (2, 2), (3, 2)].

    test(can_identify_multiple_saddle_points_in_a_row, condition(pending)) :-
        Matrix = [[6, 7, 8], [5, 5, 5], [7, 5, 6]],
        saddle_points(Matrix, SaddlePoints),
        sort(SaddlePoints, SortedSaddlePoints),
        SortedSaddlePoints == [(2, 1), (2, 2), (2, 3)].

    test(can_identify_saddle_point_in_bottom_right_corner, condition(pending)) :-
        Matrix = [[8, 7, 9], [6, 7, 6], [3, 2, 5]],
        saddle_points(Matrix, SaddlePoints),
        SaddlePoints == [(3, 3)].

    test(can_identify_saddle_points_in_a_non_square_matrix, condition(pending)) :-
        Matrix = [[3, 1, 3], [3, 2, 4]],
        saddle_points(Matrix, SaddlePoints),
        sort(SaddlePoints, SortedSaddlePoints),
        SortedSaddlePoints == [(1, 1), (1, 3)].

    test(can_identify_that_saddle_points_in_a_single_column_matrix_are_those_with_the_minimum_value, condition(pending)) :-
        Matrix = [[2], [1], [4], [1]],
        saddle_points(Matrix, SaddlePoints),
        sort(SaddlePoints, SortedSaddlePoints),
        SortedSaddlePoints == [(2, 1), (4, 1)].

    test(can_identify_that_saddle_points_in_a_single_row_matrix_are_those_with_the_maximum_value, condition(pending)) :-
        Matrix = [[2, 5, 3, 5]],
        saddle_points(Matrix, SaddlePoints),
        sort(SaddlePoints, SortedSaddlePoints),
        SortedSaddlePoints == [(1, 2), (1, 4)].

:- end_tests(saddle_points).
%-------------------------------------------------------- 87 satellite/satellite
% satellite.pl -- the exercism Prolog exercise satellite, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/satellite.example.pl, then its tests satellite_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(dcg/basics)).

preorder(nil) --> [].
preorder(node(L, V, R)) --> [V], preorder(L), preorder(R).

inorder(nil) --> [].
inorder(node(L, V, R)) --> inorder(L), [V], inorder(R).

tree_traversals(Tree, Preorder, Inorder) :-
    phrase(preorder(Tree), Preorder),
    phrase(inorder(Tree), Inorder),
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(tree_traversals).

    test(inorder_from_empty_tree, condition(true)) :-
        Tree = nil,
        tree_traversals(Tree, Inorder, _),
        Inorder == [].

    test(inorder_from_single_node_tree, condition(pending)) :-
        Tree = node(nil, a, nil),
        tree_traversals(Tree, Inorder, _),
        Inorder == [a].

    test(inorder_from_tree_with_two_leafs, condition(pending)) :-
        Tree = node(node(nil, b, nil), a, node(nil, c, nil)),
        tree_traversals(Tree, Inorder, _),
        Inorder == [a, b, c].

    test(inorder_from_nested_tree, condition(pending)) :-
        Tree = node(node(nil, b, nil), a, node(node(node(nil, e, nil), d, nil), c, nil)),
        tree_traversals(Tree, Inorder, _),
        Inorder == [a, b, c, d, e].

    test(preorder_from_empty_tree, condition(pending)) :-
        Tree = nil,
        tree_traversals(Tree, _, Preorder),
        Preorder == [].

    test(preorder_from_single_node_tree, condition(pending)) :-
        Tree = node(nil, a, nil),
        tree_traversals(Tree, _, Preorder),
        Preorder == [a].

    test(preorder_from_tree_with_two_leafs, condition(pending)) :-
        Tree = node(node(nil, b, nil), a, node(nil, c, nil)),
        tree_traversals(Tree, _, Preorder),
        Preorder == [b, a, c].

    test(inorder_from_nested_tree, condition(pending)) :-
        Tree = node(node(nil, b, nil), a, node(node(node(nil, e, nil), d, nil), c, nil)),
        tree_traversals(Tree, _, Preorder),
        Preorder == [b, a, e, d, c].

    test(tree_from_empty_inorder_and_preorder_paths, condition(pending)) :-
        Inorder = [],
        Preorder = [],
        tree_traversals(Tree, Inorder, Preorder),
        Tree == nil.

    test(tree_from_inorder_and_preorder_paths_with_one_element, condition(pending)) :-
        Inorder = [a],
        Preorder = [a],
        tree_traversals(Tree, Inorder, Preorder),
        Tree == node(nil, a, nil).

    test(tree_from_inorder_and_preorder_paths_for_nested_tree, condition(pending)) :-
        Inorder = [a, b, c, d, e],
        Preorder = [b, a, e, d, c],
        tree_traversals(Tree, Inorder, Preorder),
        Tree == node(node(nil, b, nil), a, node(node(node(nil, e, nil), d, nil), c, nil)).

    test(cannot_create_tree_from_inorder_and_preorder_paths_with_different_lengths, [condition(pending), fail]) :-
        Inorder = [a, b, c],
        Preorder = [b, a],
        tree_traversals(_, Inorder, Preorder).

    test(cannot_create_tree_from_inorder_and_preorder_paths_with_different_elements, [condition(pending), fail]) :-
        Inorder = [a, b, c],
        Preorder = [e, d, f],
        tree_traversals(_, Inorder, Preorder).

:- end_tests(tree_traversals).
%-------------------------------------------------------------------- 88 say/say
% say.pl -- the exercism Prolog exercise say, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/say.example.pl, then its tests say_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
say(0, "zero") :- !.
say(1, "one") :- !.
say(2, "two") :- !.
say(3, "three") :- !.
say(4, "four") :- !.
say(5, "five") :- !.
say(6, "six") :- !.
say(7, "seven") :- !.
say(8, "eight") :- !.
say(9, "nine") :- !.
say(10, "ten") :- !.
say(11, "eleven") :- !.
say(12, "twelve") :- !.
say(13, "thirteen") :- !.
say(14, "fourteen") :- !.
say(15, "fifteen") :- !.
say(16, "sixteen") :- !.
say(17, "seventeen") :- !.
say(18, "eighteen") :- !.
say(19, "nineteen") :- !.

say(20, "twenty") :- !.
say(30, "thirty") :- !.
say(40, "forty") :- !.
say(50, "fifty") :- !.
say(60, "sixty") :- !.
say(70, "seventy") :- !.
say(80, "eighty") :- !.
say(90, "ninety") :- !.

say(N, English) :-
    between(10, 99, N),
    Remainder is N mod 10,
    Tens is N - Remainder,
    say(Tens, TensEnglish),
    say(Remainder, RemainderEnglish),
    format(string(English), "~s-~s", [TensEnglish, RemainderEnglish]), !.

say(N, English) :- say(N, 100, 999, "hundred", English), !.
say(N, English) :- say(N, 1000, 999999, "thousand", English), !.
say(N, English) :- say(N, 1000000, 999999999, "million", English), !.
say(N, English) :- say(N, 1000000000, 999999999999, "billion", English).

say(Units, 0, Unit, English) :-
    say(Units, UnitsEnglish),
    format(string(English), "~s ~s", [UnitsEnglish, Unit]), !.
say(Units, Remainder, Unit, English) :-
    say(Units, UnitsEnglish),
    say(Remainder, RemainderEnglish),
    format(string(English), "~s ~s ~s", [UnitsEnglish, Unit, RemainderEnglish]).

say(N, Low, High, Unit, English) :-
    between(Low, High, N),
    divmod(N, Low, Units, Remainder),
    say(Units, Remainder, Unit, English).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(say).

    test(zero, condition(true)) :-
        say(0, English),
        English == "zero".

    test(one, condition(pending)) :-
        say(1, English),
        English == "one".

    test(fourteen, condition(pending)) :-
        say(14, English),
        English == "fourteen".

    test(twenty, condition(pending)) :-
        say(20, English),
        English == "twenty".

    test(twenty_two, condition(pending)) :-
        say(22, English),
        English == "twenty-two".

    test(thirty, condition(pending)) :-
        say(30, English),
        English == "thirty".

    test(ninety_nine, condition(pending)) :-
        say(99, English),
        English == "ninety-nine".

    test(one_hundred, condition(pending)) :-
        say(100, English),
        English == "one hundred".

    test(one_hundred_twenty_three, condition(pending)) :-
        say(123, English),
        English == "one hundred twenty-three".

    test(two_hundred, condition(pending)) :-
        say(200, English),
        English == "two hundred".

    test(nine_hundred_ninety_nine, condition(pending)) :-
        say(999, English),
        English == "nine hundred ninety-nine".

    test(one_thousand, condition(pending)) :-
        say(1000, English),
        English == "one thousand".

    test(one_thousand_two_hundred_thirty_four, condition(pending)) :-
        say(1234, English),
        English == "one thousand two hundred thirty-four".

    test(one_million, condition(pending)) :-
        say(1000000, English),
        English == "one million".

    test(one_million_two_thousand_three_hundred_forty_five, condition(pending)) :-
        say(1002345, English),
        English == "one million two thousand three hundred forty-five".

    test(one_billion, condition(pending)) :-
        say(1000000000, English),
        English == "one billion".

    test(a_big_number, condition(pending)) :-
        say(987654321123, English),
        English == "nine hundred eighty-seven billion six hundred fifty-four million three hundred twenty-one thousand one hundred twenty-three".

    test(numbers_below_zero_are_out_of_range, [fail, condition(pending)]) :-
        say(-1, _).

    test(numbers_above_999_999_999_999_are_out_of_range, [fail, condition(pending)]) :-
        say(1000000000000, _).

:- end_tests(say).
%---------------------------------------------- 89 scrabble-score/scrabble_score
% scrabble_score.pl -- the exercism Prolog exercise scrabble-score, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/scrabble_score.example.pl, then its tests scrabble_score_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
score(Word, Score) :-
    string_upper(Word, UpperWord),
    string_chars(UpperWord, Letters),
    maplist(letter_score, Letters, LetterScores),
    sum_list(LetterScores, Score).
 
 letter_score('A', 1).
 letter_score('E', 1).
 letter_score('I', 1).
 letter_score('O', 1).
 letter_score('U', 1).
 letter_score('L', 1).
 letter_score('N', 1).
 letter_score('R', 1).
 letter_score('S', 1).
 letter_score('T', 1).
 letter_score('D', 2).
 letter_score('G', 2).
 letter_score('B', 3).
 letter_score('C', 3).
 letter_score('M', 3).
 letter_score('P', 3).
 letter_score('F', 4).
 letter_score('H', 4).
 letter_score('V', 4).
 letter_score('W', 4).
 letter_score('Y', 4).
 letter_score('K', 5).
 letter_score('J', 8).
 letter_score('X', 8).
 letter_score('Q', 10).
 letter_score('Z', 10 ).
 

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(scrabble_score).

    test(lowercase_letter, condition(true)) :-
        score("a", Score), Score == 1.

    test(uppercase_letter, condition(pending)) :-
        score("A", Score), Score == 1.

    test(valuable_letter, condition(pending)) :-
        score("f", Score), Score == 4.

    test(short_word, condition(pending)) :-
        score("at", Score), Score == 2.

    test(short_valuable_word, condition(pending)) :-
        score("zoo", Score), Score == 12.

    test(medium_word, condition(pending)) :-
        score("street", Score), Score == 6.

    test(medium_valuable_word, condition(pending)) :-
        score("quirky", Score), Score == 22.

    test(long_mixed_case_word, condition(pending)) :-
        score("OxyphenButazone", Score), Score == 41.

    test(english_like_word, condition(pending)) :-
        score("pinata", Score), Score == 8.

    test(empty_input, condition(pending)) :-
        score("", Score), Score == 0.

    test(entire_alphabet_available, condition(pending)) :-
        score("abcdefghijklmnopqrstuvwxyz", Score), Score == 87.

:- end_tests(scrabble_score).
%------------------------------------------ 90 secret-handshake/secret_handshake
% secret_handshake.pl -- the exercism Prolog exercise secret-handshake, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/secret_handshake.example.pl, then its tests secret_handshake_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

bit_set(Number, Index) :- Number /\ 1 << Index #\= 0.

encoded_command(Encoded, Index, Goal, Acc, Result) :- bit_set(Encoded, Index), call(Goal, Acc, Result), !.
encoded_command(_, _, _, Acc, Acc).

append_command(Command, Acc, Result) :- append(Acc, [Command], Result).

commands(Encoded, Commands) :-
    IndividualCommands = [
        encoded_command(Encoded, 0, append_command(wink)),
        encoded_command(Encoded, 1, append_command(double_blink)),
        encoded_command(Encoded, 2, append_command(close_your_eyes)),
        encoded_command(Encoded, 3, append_command(jump)),
        encoded_command(Encoded, 4, reverse)
    ],
    foldl(call, IndividualCommands, [], Commands).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(secret_handshake).

    test(wink_for_1, condition(true)) :-
        commands(1, Commands),
        Commands == [wink].

    test(double_blink_for_10, condition(pending)) :-
        commands(2, Commands),
        Commands == [double_blink].

    test(close_your_eyes_for_100, condition(pending)) :-
        commands(4, Commands),
        Commands == [close_your_eyes].

    test(jump_for_1000, condition(pending)) :-
        commands(8, Commands),
        Commands == [jump].

    test(combine_two_actions, condition(pending)) :-
        commands(3, Commands),
        Commands == [wink, double_blink].

    test(reverse_two_actions, condition(pending)) :-
        commands(19, Commands),
        Commands == [double_blink, wink].

    test(reversing_one_action_gives_the_same_action, condition(pending)) :-
        commands(24, Commands),
        Commands == [jump].

    test(reversing_no_actions_still_gives_no_actions, condition(pending)) :-
        commands(16, Commands),
        Commands == [].

    test(all_possible_actions, condition(pending)) :-
        commands(15, Commands),
        Commands == [wink, double_blink, close_your_eyes, jump].

    test(reverse_all_possible_actions, condition(pending)) :-
        commands(31, Commands),
        Commands == [jump, close_your_eyes, double_blink, wink].

    test(do_nothing_for_zero, condition(pending)) :-
        commands(0, Commands),
        Commands == [].

:- end_tests(secret_handshake).
%-------------------------------------------------------------- 91 series/series
% series.pl -- the exercism Prolog exercise series, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/series.example.pl, then its tests series_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

slices(Input, Size, After, [Slice|Slices]) :-
    sub_string(Input, After, Size, _, Slice),
    NewAfter #= After + 1,
    slices(Input, Size, NewAfter, Slices), !.

slices(_, _, _, []).

slices(Input, Size, Slices) :-
    string_length(Input, Length),
    Size in 1..Length,
    slices(Input, Size, 0, Slices).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(series).

    test(slices_of_one_from_one, condition(true)) :-
        slices("1", 1, Slices),
        Slices == ["1"].

    test(slices_of_one_from_two, condition(pending)) :-
        slices("12", 1, Slices),
        Slices == ["1", "2"].

    test(slices_of_two, condition(pending)) :-
        slices("35", 2, Slices),
        Slices == ["35"].

    test(slices_of_two_overlap, condition(pending)) :-
        slices("9142", 2, Slices),
        Slices == ["91", "14", "42"].

    test(slices_can_include_duplicates, condition(pending)) :-
        slices("777777", 3, Slices),
        Slices == ["777", "777", "777", "777"].

    test(slices_of_a_long_series, condition(pending)) :-
        slices("918493904243", 5, Slices),
        Slices == ["91849", "18493", "84939", "49390", "93904", "39042", "90424", "04243"].

    test(slice_length_is_too_large, [fail, condition(pending)]) :-
        slices("12345", 6, _).

    test(slice_length_is_way_too_large, [fail, condition(pending)]) :-
        slices("12345", 42, _).

    test(slice_length_cannot_be_zero, [fail, condition(pending)]) :-
        slices("12345", 0, _).

    test(slice_length_cannot_be_negative, [fail, condition(pending)]) :-
        slices("123", -1, _).

    test(empty_series_is_invalid, [fail, condition(pending)]) :-
        slices("", 1, _).

:- end_tests(series).
%---------------------------------------------------- 92 sgf-parsing/sgf_parsing
% sgf_parsing.pl -- the exercism Prolog exercise sgf-parsing, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/sgf_parsing.example.pl, then its tests sgf_parsing_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it; double_quotes set back to string before the tests, as the runner reads them in a file of their own.
:- use_module(library(dcg/basics)).
:- use_module(library(dcg/high_order)).
:- set_prolog_flag(double_quotes, chars).

char(' ') --> "\t" | "\\\t".
char(C) --> "\\\n", char(C).
char(C) --> "\\", [C], { member(C, "tn]\\")}.
char(C) --> [C], { C \== ']' }.
text(Text) --> sequence(char, Chars), { string_chars(Text, Chars) }.

value(Value) --> "[", text(Value) , "]".
values(Values) --> sequence(value, Values), { length(Values, Length), Length > 0 }.

key(Key) --> [C], { char_type(C, upper), string_chars(Key, [C]) }.

prop(Key-Values) --> key(Key), values(Values).

child(Tree) --> basic_tree(Tree).
child(Tree) --> shorthand_tree(Tree).

basic_tree(Tree) --> ";", 
    sequence(prop, Properties),
    sequence(child, Children),
    { Tree = sgf_tree(properties(Properties), children(Children))}.

shorthand_tree(Tree) --> "(", basic_tree(Tree), ")".

parse(Input, Tree) :-
    string_chars(Input, Chars),
    phrase(shorthand_tree(Tree), Chars),
    !.

:- set_prolog_flag(double_quotes, string).
pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(sgf_parsing).

    test(empty_input, [fail, condition(true)]) :-
        parse("", _).

    test(tree_with_no_nodes, [fail, condition(pending)]) :-
        parse("()", _).

    test(node_without_tree, [fail, condition(pending)]) :-
        parse(";", _).

    test(node_without_properties, condition(pending)) :-
        parse("(;)", Tree),
        Tree == sgf_tree(properties([]), children([])).

    test(single_node_tree, condition(pending)) :-
        parse("(;A[B])", Tree),
        Tree == sgf_tree(properties(["A"-["B"]]), children([])).

    test(multiple_properties, condition(pending)) :-
        parse("(;A[b]C[d])", Tree),
        Tree == sgf_tree(properties(["A"-["b"], "C"-["d"]]), children([])).

    test(properties_without_delimiter, [fail, condition(pending)]) :-
        parse("(;A)", _).

    test(all_lowercase_property, [fail, condition(pending)]) :-
        parse("(;a[b])", _).

    test(upper_and_lowercase_property, [fail, condition(pending)]) :-
        parse("(;Aa[b])", _).

    test(two_nodes, condition(pending)) :-
        parse("(;A[B];B[C])", Tree),
        Tree == sgf_tree(properties(["A"-["B"]]), children([sgf_tree(properties(["B"-["C"]]), children([]))])).

    test(two_child_trees, condition(pending)) :-
        parse("(;A[B](;B[C])(;C[D]))", Tree),
        Tree == sgf_tree(
            properties(["A"-["B"]]),
            children([
                sgf_tree(properties(["B"-["C"]]), children([])), 
                sgf_tree(properties(["C"-["D"]]), children([]))
            ])
        ).

    test(multiple_property_values, condition(pending)) :-
        parse("(;A[b][c][d])", Tree),
        Tree == sgf_tree(properties(["A"-["b", "c", "d"]]), children([])).

    test(within_property_values_whitespace_characters_such_as_tab_are_converted_to_spaces, condition(pending)) :-
        parse("(;A[hello\t\tworld])", Tree),
        Tree == sgf_tree(properties(["A"-["hello  world"]]), children([])).

    test(within_property_values_newlines_remain_as_newlines, condition(pending)) :-
        parse("(;A[hello\n\nworld])", Tree),
        Tree == sgf_tree(properties(["A"-["hello\n\nworld"]]), children([])).

    test(escaped_closing_bracket_within_property_value_becomes_just_a_closing_bracket, condition(pending)) :-
        parse("(;A[\\]])", Tree),
        Tree == sgf_tree(properties(["A"-["]"]]), children([])).

    test(escaped_backslash_in_property_value_becomes_just_a_backslash, condition(pending)) :-
        parse("(;A[\\\\])", Tree),
        Tree == sgf_tree(properties(["A"-["\\"]]), children([])).

    test(opening_bracket_within_property_value_doesn_t_need_to_be_escaped, condition(pending)) :-
        parse("(;A[x[y\\]z][foo]B[bar];C[baz])", Tree),
        Tree == sgf_tree(
            properties(["A"-["x[y]z", "foo"], "B"-["bar"]]),
            children([sgf_tree(properties(["C"-["baz"]]), children([]))])).

    test(semicolon_in_property_value_doesn_t_need_to_be_escaped, condition(pending)) :-    
        parse("(;A[a;b][foo]B[bar];C[baz])", Tree),
        Tree == sgf_tree(
            properties(["A"-["a;b", "foo"], "B"-["bar"]]),
            children([sgf_tree(properties(["C"-["baz"]]), children([]))])).

    test(parentheses_in_property_value_don_t_need_to_be_escaped, condition(pending)) :-    
        parse("(;A[x(y)z][foo]B[bar];C[baz])", Tree),
        Tree == sgf_tree(
            properties(["A"-["x(y)z", "foo"], "B"-["bar"]]),
            children([sgf_tree(properties(["C"-["baz"]]), children([]))])
        ).

    test(escaped_tab_in_property_value_is_converted_to_space, condition(pending)) :-
        parse("(;A[hello\\\tworld])", Tree),
        Tree == sgf_tree(properties(["A"-["hello world"]]), children([])).

    test(escaped_newline_in_property_value_is_converted_to_nothing_at_all, condition(pending)) :-
        parse("(;A[hello\\\nworld])", Tree),
        Tree == sgf_tree(properties(["A"-["helloworld"]]), children([])).

    test(escaped_t_and_n_in_property_value_are_just_letters_not_whitespace, condition(pending)) :-
        parse("(;A[\\t = t and \\n = n])", Tree),
        Tree == sgf_tree(properties(["A"-["t = t and n = n"]]), children([])).

    test(mixing_various_kinds_of_whitespace_and_escaped_characters_in_property_value, condition(pending)) :-
        parse("(;A[\\]b\nc\\\nd\t\te\\\\ \\\n\\]])", Tree),
        Tree == sgf_tree(properties(["A"-["]b\ncd  e\\ ]"]]), children([])).

:- end_tests(sgf_parsing).
%---------------------------------------------------------------- 93 sieve/sieve
% sieve.pl -- the exercism Prolog exercise sieve, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/sieve.example.pl, then its tests sieve_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

primes(Limit, []) :- Limit #< 2, !.
primes(Limit, Primes) :-
    numlist(2, Limit, Sieve),
    Stop is round(sqrt(Limit)),
    primes(Stop, Sieve, Primes).

primes(Stop, [N|Sieve], [N|Primes]):-
  exclude(is_multiple(N), Sieve, Sieved),
  (N #=< Stop -> primes(Stop, Sieved, Primes) ; Primes=Sieved).
  
is_multiple(X, Y) :- Y mod X #= 0.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(sieve).

    test(no_primes_under_two, condition(true)) :-
        primes(1, Primes),
        Primes == [].

    test(find_first_prime, condition(pending)) :-
        primes(2, Primes),
        Primes == [2].

    test(find_primes_up_to_10, condition(pending)) :-
        primes(10, Primes),
        Primes == [2, 3, 5, 7].

    test(limit_is_prime, condition(pending)) :-
        primes(13, Primes),
        Primes == [2, 3, 5, 7, 11, 13].

    test(find_primes_up_to_1000, condition(pending)) :-
        primes(1000, Primes),
        Primes == [
            2,
            3,
            5,
            7,
            11,
            13,
            17,
            19,
            23,
            29,
            31,
            37,
            41,
            43,
            47,
            53,
            59,
            61,
            67,
            71,
            73,
            79,
            83,
            89,
            97,
            101,
            103,
            107,
            109,
            113,
            127,
            131,
            137,
            139,
            149,
            151,
            157,
            163,
            167,
            173,
            179,
            181,
            191,
            193,
            197,
            199,
            211,
            223,
            227,
            229,
            233,
            239,
            241,
            251,
            257,
            263,
            269,
            271,
            277,
            281,
            283,
            293,
            307,
            311,
            313,
            317,
            331,
            337,
            347,
            349,
            353,
            359,
            367,
            373,
            379,
            383,
            389,
            397,
            401,
            409,
            419,
            421,
            431,
            433,
            439,
            443,
            449,
            457,
            461,
            463,
            467,
            479,
            487,
            491,
            499,
            503,
            509,
            521,
            523,
            541,
            547,
            557,
            563,
            569,
            571,
            577,
            587,
            593,
            599,
            601,
            607,
            613,
            617,
            619,
            631,
            641,
            643,
            647,
            653,
            659,
            661,
            673,
            677,
            683,
            691,
            701,
            709,
            719,
            727,
            733,
            739,
            743,
            751,
            757,
            761,
            769,
            773,
            787,
            797,
            809,
            811,
            821,
            823,
            827,
            829,
            839,
            853,
            857,
            859,
            863,
            877,
            881,
            883,
            887,
            907,
            911,
            919,
            929,
            937,
            941,
            947,
            953,
            967,
            971,
            977,
            983,
            991,
            997
        ].


:- end_tests(sieve).
%------------------------------------------------ 94 simple-cipher/simple_cipher
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
%-------------------------------------------------------- 95 space-age/space_age
% space_age.pl -- the exercism Prolog exercise space-age, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/space_age.example.pl, then its tests space_age_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
period("Earth", 1).
period("Mercury", 0.2408467).
period("Venus", 0.61519726).
period("Mars", 1.8808158).
period("Jupiter", 11.862615).
period("Saturn", 29.447498).
period("Uranus", 84.016846).
period("Neptune", 164.79132).

convYearSec(Year, Sec) :-
    Year is Sec / 31557600.

space_age(Planet, AgeSec, Years) :-
    period(Planet, Conv),
    convYearSec(AgeYear, AgeSec),
    Years is AgeYear / Conv, !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(space_age).

    float_eq(Real, Expected) :-
        Expected is round(Real * 100).

    test(earth, condition(true)) :-
        space_age("Earth", 1000000000, Age),
        float_eq(Age, 3169).

    test(mercury, condition(pending)) :-
        space_age("Mercury", 2134835688, Age),
        float_eq(Age, 28088).

    test(venus, condition(pending)) :-
        space_age("Venus", 189839836, Age),
        float_eq(Age, 978).

    test(mars, condition(pending)) :-
        space_age("Mars", 2329871239, Age),
        float_eq(Age, 3925).

    test(jupiter, condition(pending)) :-
        space_age("Jupiter", 901876382, Age),
        float_eq(Age, 241).

    test(saturn, condition(pending)) :-
        space_age("Saturn", 3000000000, Age),
        float_eq(Age, 323).
    
    test(uranus, condition(pending)) :-
        space_age("Uranus", 3210123456, Age),
        float_eq(Age, 121).

    test(neptune, condition(pending)) :-
        space_age("Neptune", 8210123456, Age),
        float_eq(Age, 158).

:- end_tests(space_age).
%------------------------------------------------ 96 spiral-matrix/spiral_matrix
% spiral_matrix.pl -- the exercism Prolog exercise spiral-matrix, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/spiral_matrix.example.pl, then its tests spiral_matrix_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
rest([_|X], X).

transpose(XS, [])   :- member([], XS), !.
transpose(M, [X|T]) :- maplist(nth0(0), M, X), maplist(rest, M, M1), transpose(M1, T).

spiral_H(M, N, S, Rows) :-
  succ(M1, M),
  numlist(0, M1, Ms),
  maplist(plus(S), Ms, Row),
  (1 =:= N -> Rows = [Row]
            ; succ(N1, N),
              plus(S, M, SM),
              spiral_H(N1, M, SM, Rows1),
              transpose(Rows1, Transposed),
              maplist(reverse, Transposed, Reversed),
              Rows = [Row|Reversed]).

spiral(0, []) :- !.
spiral(N, XS) :- spiral_H(N, N, 1, XS).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(spiral).
    test(empty_spiral, condition(true)) :-
        spiral(0, Matrix),
        Matrix == [].

    test(trivial_spiral, condition(pending)) :-
        spiral(1, Matrix),
        Matrix == [[1]].

    test(spiral_of_size_2, condition(pending)) :-
        spiral(2, Matrix),
        Matrix == [[1,2],
                   [4,3]].

    test(spiral_of_size_3, condition(pending)) :-
        spiral(3, Matrix),
        Matrix == [[1,2,3],
                   [8,9,4],
                   [7,6,5]].

    test(spiral_of_size_4, condition(pending)) :-
        spiral(4, Matrix),
        Matrix == [[ 1, 2, 3, 4],
                   [12,13,14, 5],
                   [11,16,15, 6],
                   [10, 9, 8, 7]].

    test(spiral_of_size_5, condition(pending)) :-
        spiral(5, Matrix),
        Matrix == [[ 1, 2, 3, 4, 5],
                   [16,17,18,19, 6],
                   [15,24,25,20, 7],
                   [14,23,22,21, 8],
                   [13,12,11,10, 9]].

:- end_tests(spiral).
%---------------------------------------------------- 97 square-root/square_root
% square_root.pl -- the exercism Prolog exercise square-root, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/square_root.example.pl, then its tests square_root_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

square_root(Number, Current, SquareRoot) :-
    Current ^ 2 #\= Number,
    Next #= Current + 1,
    square_root(Number, Next, SquareRoot), !.

square_root(_, Current, Current).

square_root(Number, SquareRoot) :- square_root(Number, 0, SquareRoot).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(square_root).

    test(root_of_1, condition(true)) :-
        square_root(1, SquareRoot),
        SquareRoot == 1.

    test(root_of_4, condition(pending)) :-
        square_root(4, SquareRoot),
        SquareRoot == 2.

    test(root_of_25, condition(pending)) :-
        square_root(25, SquareRoot),
        SquareRoot == 5.

    test(root_of_81, condition(pending)) :-
        square_root(81, SquareRoot),
        SquareRoot == 9.

    test(root_of_196, condition(pending)) :-
        square_root(196, SquareRoot),
        SquareRoot == 14.

    test(root_of_65025, condition(pending)) :-
        square_root(65025, SquareRoot),
        SquareRoot == 255.

:- end_tests(square_root).
%---------------------------------- 98 state-of-tic-tac-toe/state_of_tic_tac_toe
% state_of_tic_tac_toe.pl -- the exercism Prolog exercise state-of-tic-tac-toe, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/state_of_tic_tac_toe.example.pl, then its tests state_of_tic_tac_toe_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

win([[Player, _, _], [_, Player, _], [_, _, Player]], Player).
win([[_, _, Player], [_, Player, _], [Player, _, _]], Player).
win([[Player, Player, Player], _, _], Player).
win([_, [Player, Player, Player], _], Player).
win([_, _, [Player, Player, Player]], Player).
win([[Player, _, _], [Player, _, _], [Player, _, _]], Player).
win([[_, Player, _], [_, Player, _], [_, Player, _]], Player).
win([[_, _, Player], [_, _, Player], [_, _, Player]], Player).

draw(Rows) :- flatten(Rows, Cells), \+ member(' ', Cells), !.

valid(Rows) :- 
    flatten(Rows, Cells),
    include(=('X'), Cells, Xs), length(Xs, XsCount),
    include(=('O'), Cells, Os), length(Os, OsCount),
    (XsCount #= OsCount; XsCount #= OsCount + 1),
    \+ (win(Rows, 'X'), win(Rows, 'O')), !.

state(Board, Result) :-
    maplist(string_chars, Board, Rows),
    valid(Rows),
    (win(Rows, 'X') -> Result = win;
    (win(Rows, 'O') -> Result = win;
    (draw(Rows)     -> Result = draw;
                       Result = ongoing))).

pending :-
    true.
pending :-
    write('\n_a TEST IS PENDING!\n'),
    fail.

:- begin_tests(state_of_tic_tac_toe).

    test(finished_game_where_x_won_via_left_column_victory, condition(true)) :-
        state(["XOO", "X  ", "X  "], State),
        State == win.
        
    test(finished_game_where_x_won_via_middle_column_victory, condition(pending)) :-
        state(["OXO", " X ", " X "], State),
        State == win.
        
    test(finished_game_where_x_won_via_right_column_victory, condition(pending)) :-
        state(["OOX", "  X", "  X"], State),
        State == win.
        
    test(finished_game_where_o_won_via_left_column_victory, condition(pending)) :-
        state(["OXX", "OX ", "O  "], State),
        State == win.

    test(finished_game_where_o_won_via_middle_column_victory, condition(pending)) :-
        state(["XOX", " OX", " O "], State),
        State == win.
        
    test(finished_game_where_o_won_via_right_column_victory, condition(pending)) :-
        state(["XXO", " XO", "  O"], State),
        State == win.
        
    test(finished_game_where_x_won_via_top_row_victory, condition(pending)) :-
        state(["XXX", "XOO", "O  "], State),
        State == win.

    test(finished_game_where_x_won_via_middle_row_victory, condition(pending)) :-
        state(["O  ", "XXX", " O "], State),
        State == win.
        
    test(finished_game_where_x_won_via_bottom_row_victory, condition(pending)) :-
        state([" OO", "O X", "XXX"], State),
        State == win.

    test(finished_game_where_o_won_via_top_row_victory, condition(pending)) :-
        state(["OOO", "XXO", "XX "], State),
        State == win.

    test(finished_game_where_o_won_via_middle_row_victory, condition(pending)) :-
        state(["XX ", "OOO", "X  "], State),
        State == win.
        
    test(finished_game_where_o_won_via_bottom_row_victory, condition(pending)) :-
        state(["XOX", " XX", "OOO"], State),
        State == win.
        
    test(finished_game_where_x_won_via_falling_diagonal_victory, condition(pending)) :-
        state(["XOO", " X ", "  X"], State),
        State == win.

    test(finished_game_where_x_won_via_rising_diagonal_victory, condition(pending)) :-
        state(["O X", "OX ", "X  "], State),
        State == win.
        
    test(finished_game_where_o_won_via_falling_diagonal_victory, condition(pending)) :-
        state(["OXX", "OOX", "X O"], State),
        State == win.

    test(finished_game_where_o_won_via_rising_diagonal_victory, condition(pending)) :-
        state(["  O", " OX", "OXX"], State),
        State == win.

    test(finished_game_where_x_won_via_aRow_and_a_column_victory, condition(pending)) :-
        state(["XXX", "XOO", "XOO"], State),
        State == win.

    test(finished_game_where_x_won_via_two_diagonal_victories, condition(pending)) :-
        state(["XOX", "OXO", "XOX"], State),
        State == win.
        
    test(draw, condition(pending)) :-
        state(["XOX", "XXO", "OXO"], State),
        State == draw.
        
    test(another_draw, condition(pending)) :-
        state(["XXO", "OXX", "XOO"], State),
        State == draw.

    test(ongoing_game_one_move_in, condition(pending)) :-
        state(["   ", "X  ", "   "], State),
        State == ongoing.
        
    test(ongoing_game_two_moves_in, condition(pending)) :-
        state(["O  ", " X ", "   "], State),
        State == ongoing.

    test(ongoing_game_five_moves_in, condition(pending)) :-
        state(["X  ", " XO", "OX "], State),
        State == ongoing.

    test(invalid_board_x_went_twice, [fail, condition(pending)]) :-
        state(["XX ", "   ", "   "], _).
        
    test(invalid_board_o_started, [fail, condition(pending)]) :-
        state(["OOX", "   ", "   "], _).

    test(invalid_board, [fail, condition(pending)]) :-
        state(["XXX", "OOO", "   "], _).

    test(invalid_board_players_kept_playing_after_a_win, [fail, condition(pending)]) :-
        state(["XXX", "OOO", "XOX"], _).

:- end_tests(state_of_tic_tac_toe).
%-------------------------------------------------------------- 99 strain/strain
% strain.pl -- the exercism Prolog exercise strain, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/strain.example.pl, then its tests strain_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
keep(_, [], []) :- !.
keep(Goal, [X|Xs], Filtered) :-
    keep(Goal, Xs, FilteredXs),
    (call(Goal, X) -> Filtered = [X|FilteredXs]; Filtered = FilteredXs).

discard(_, [], []) :- !.
discard(Goal, [X|Xs], Filtered) :-
    discard(Goal, Xs, FilteredXs),
    (call(Goal, X) -> Filtered = FilteredXs; Filtered = [X|FilteredXs]).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(strain).

    test(empty_sequence, condition(true)) :-
        Input = [],
        keep([X]>>(X mod 2 =:= 0), Input, Filtered),
        Filtered == [].

    test(empty_keep, condition(pending)) :-
        Input = [2, 4, 6, 8, 10],
        keep([X]>>(X mod 2 =:= 1), Input, Filtered),
        Filtered == [].

    test(empty_discard, condition(pending)) :-
        Input = [2, 4, 6, 8, 10],
        discard([X]>>(X mod 2 =:= 0), Input, Filtered),
        Filtered == [].

    test(keep_everything, condition(pending)) :-
        Input = [2, 4, 6, 8, 10],
        keep([X]>>(X mod 2 =:= 0), Input, Filtered),
        Filtered == Input.

    test(discard_endswith, condition(pending)) :-
        Input = ["dough", "cash", "plough", "though", "through", "enough"],
        discard([X]>>(string_concat(_, "ough", X)), Input, Filtered),
        Filtered == ["cash"].
    
    test(keep_z, condition(pending)) :-
        Input = ["zebra", "arizona", "apple", "google", "mozilla"],
        keep([X]>>(string_chars(X, Chars), member('z', Chars)), Input, Filtered),
        Filtered == ["zebra", "arizona", "mozilla"].
    
    test(keep_discard, condition(pending)) :-
        Input = ["1,2,3", "one", "almost!", "love"],
        keep([X]>>(string_length(X, Length), Length > 4), Input, Kept),
        discard([X]>>(string_length(X, Length), Length > 4), Kept, Filtered),
        Filtered == [].
    
    test(keep_plus_discard, condition(pending)) :-
        Input = ["1,2,3", "one", "almost!", "love"],
        keep([X]>>(string_length(X, Length), Length > 4), Input, Kept),
        discard([X]>>(string_length(X, Length), Length > 4), Input, Discarded),
        append(Kept, Discarded, ["1,2,3", "almost!", "one", "love"]).

:- end_tests(strain).
%----------------------------------------------------------- 100 sublist/sublist
% sublist.pl -- the exercism Prolog exercise sublist, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/sublist.example.pl, then its tests sublist_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
sublist(Xs, Xs, equal) :- !.
sublist(Xs, Ys, sublist) :- append(_, Rest, Ys), append(Xs, _, Rest), !.
sublist(Xs, Ys, superlist) :- sublist(Ys, Xs, sublist), !.
sublist(_, _, unequal).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(sublist).

    test(empty_lists, condition(true)) :-
        sublist([], [], Qualification),
        Qualification == equal.

    test(empty_list_within_non_empty_list, condition(pending)) :-
        sublist([], [1, 2, 3], Qualification),
        Qualification == sublist.

    test(non_empty_list_contains_empty_list, condition(pending)) :-
        sublist([1, 2, 3], [], Qualification),
        Qualification == superlist.

    test(list_equals_itself, condition(pending)) :-
        sublist([1, 2, 3], [1, 2, 3], Qualification),
        Qualification == equal.

    test(different_lists, condition(pending)) :-
        sublist([1, 2, 3], [2, 3, 4], Qualification),
        Qualification == unequal.

    test(false_start, condition(pending)) :-
        sublist([1, 2, 5], [0, 1, 2, 3, 1, 2, 5, 6], Qualification),
        Qualification == sublist.

    test(consecutive, condition(pending)) :-
        sublist([1, 1, 2], [0, 1, 1, 1, 2, 1, 2], Qualification),
        Qualification == sublist.

    test(sublist_at_start, condition(pending)) :-
        sublist([0, 1, 2], [0, 1, 2, 3, 4, 5], Qualification),
        Qualification == sublist.

    test(sublist_in_middle, condition(pending)) :-
        sublist([2, 3, 4], [0, 1, 2, 3, 4, 5], Qualification),
        Qualification == sublist.

    test(sublist_at_end, condition(pending)) :-
        sublist([3, 4, 5], [0, 1, 2, 3, 4, 5], Qualification),
        Qualification == sublist.

    test(at_start_of_superlist, condition(pending)) :-
        sublist([0, 1, 2, 3, 4, 5], [0, 1, 2], Qualification),
        Qualification == superlist.

    test(in_middle_of_superlist, condition(pending)) :-
        sublist([0, 1, 2, 3, 4, 5], [2, 3], Qualification),
        Qualification == superlist.

    test(at_end_of_superlist, condition(pending)) :-
        sublist([0, 1, 2, 3, 4, 5], [3, 4, 5], Qualification),
        Qualification == superlist.

    test(first_list_missing_element_from_second_list, condition(pending)) :-
        sublist([1, 3], [1, 2, 3], Qualification),
        Qualification == unequal.

    test(second_list_missing_element_from_first_list, condition(pending)) :-
        sublist([1, 2, 3], [1, 3], Qualification),
        Qualification == unequal.

    test(first_list_missing_additional_digits_from_second_list, condition(pending)) :-
        sublist([1, 2], [1, 22], Qualification),
        Qualification == unequal.

    test(order_matters_to_a_list, condition(pending)) :-
        sublist([1, 2, 3], [3, 2, 1], Qualification),
        Qualification == unequal.

    test(same_digits_but_different_numbers, condition(pending)) :-
        sublist([1, 0, 1], [10, 1], Qualification),
        Qualification == unequal.

:- end_tests(sublist).
%----------------------------------------- 101 sum-of-multiples/sum_of_multiples
% sum_of_multiples.pl -- the exercism Prolog exercise sum-of-multiples, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/sum_of_multiples.example.pl, then its tests sum_of_multiples_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

sum_of_multiples(Factors, Limit, Sum) :-
    findall(Multiple, multiple(Factors, Limit, Multiple), Multiples),
    list_to_set(Multiples, UniqueMultiples),
    sum_list(UniqueMultiples, Sum).
    
multiple(Factors, Limit, Multiple) :-
    Upper #= Limit - 1,
    between(0, Upper, Multiple),
    member(Factor, Factors),
    Multiple rem Factor #= 0.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(sum_of_multiples).

    test(low_limit, condition(true)) :-
        sum_of_multiples([3, 5], 1, Result),
        Result == 0.

    test(just_one_multiple, condition(pending)) :-
        sum_of_multiples([3, 5], 4, Result),
        Result == 3.

    test(a_few_multiples, condition(pending)) :-
        sum_of_multiples([3, 5], 10, Result),
        Result == 23.

    test(sum_more_multiples, condition(pending)) :-
        sum_of_multiples([3, 5], 100, Result),
        Result == 2318.

    test(even_more_multiples, condition(pending)) :-
        sum_of_multiples([3, 5], 1000, Result),
        Result == 233168.

    test(new_factors, condition(pending)) :-
        sum_of_multiples([7, 13, 17], 20, Result),
        Result == 51.

    test(sum_more_new_factors, condition(pending)) :-
        sum_of_multiples([4, 6], 15, Result),
        Result == 30.

    test(even_more_new_factors, condition(pending)) :-
        sum_of_multiples([5, 6, 8], 150, Result),
        Result == 4419.

    test(divisible_factor, condition(pending)) :-
        sum_of_multiples([5, 25], 51, Result),
        Result == 275.

    test(large_factors, condition(pending)) :-
        sum_of_multiples([43, 47], 10000, Result),
        Result == 2203160.

    test(every_num, condition(pending)) :-
        sum_of_multiples([1], 100, Result),
        Result == 4950.

    test(no_factors, condition(pending)) :-
        sum_of_multiples([], 10000, Result),
        Result == 0.

:- end_tests(sum_of_multiples).
%--------------------------------------------------------- 102 triangle/triangle
% triangle.pl -- the exercism Prolog exercise triangle, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/triangle.example.pl, then its tests triangle_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
triangle(Side1, Side2, Side3, "equilateral") :-
      Side1 =:= Side2,
      Side2 =:= Side3,
      valid_triangle(Side1, Side2, Side3), !.

triangle(Side1, Side2, Side3, "isosceles") :-
    (
	Side1 =:= Side2
    ;	Side1 =:= Side3
    ;	Side2 =:= Side3
    ),
    valid_triangle(Side1, Side2, Side3), !.

triangle(Side1, Side2, Side3, "scalene") :-
    \+ triangle(Side1, Side2, Side3, "equilateral"),
    \+ triangle(Side1, Side2, Side3, "isosceles"),
    valid_triangle(Side1, Side2, Side3).

valid_triangle(Side1, Side2, Side3) :-
    Add23 is Side2 + Side3,
    Add12 is Side1 + Side2,
    Add13 is Side1 + Side3,
    not(Side1 > Add23),
    not(Side2 > Add13),
    not(Side3 > Add12),
    Side1 \== 0,
    Side2 \== 0,
    Side3 \== 0.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(equilateral_triangle).

    test(all_sides_are_equal, condition(true)) :-
        triangle(2, 2, 2, "equilateral").

    test(any_side_is_unequal, [fail, condition(pending)]) :-
        triangle(2, 3, 2, "equilateral").

    test(no_sides_are_equal, [fail, condition(pending)]) :-
        triangle(5, 4, 6, "equilateral").

    test(all_zero_sides_are_not_a_triangle, [fail, condition(pending)]) :-
        triangle(0, 0, 0, "equilateral").

    test(all_sides_are_floats_and_equal, condition(pending)) :-
        triangle((0.5), (0.5), (0.5), "equilateral").

:- end_tests(equilateral_triangle).

:- begin_tests(isosceles_triangle).

    test(last_two_sides_equal, condition(pending)) :-
        triangle(3, 4, 4, "isosceles").

    test(first_two_sides_equal, condition(pending)) :-
        triangle(4, 4, 3, "isosceles").

    test(first_and_last_sides_equal, condition(pending)) :-
        triangle(4, 3, 4, "isosceles").

    test(equilateral_triangles_are_also_isosceles, condition(pending)) :-
        triangle(4, 4, 4, "isosceles").

    test(no_sides_are_equal, [fail, condition(pending)]) :-
        triangle(2, 3, 4, "isosceles").

    test(first_triangle_inequality_violation, [fail, condition(pending)]) :-
        triangle(1, 1, 3, "isosceles").

    test(second_triangle_inequality_violation, [fail, condition(pending)]) :-
        triangle(1, 3, 1, "isosceles").

    test(third_triangle_inequality_violation, [fail, condition(pending)]) :-
        triangle(3, 1, 1, "isosceles").

    test(sides_may_be_floats, condition(pending)) :-
        triangle((0.5), (0.4), (0.5), "isosceles").

:- end_tests(isosceles_triangle).

:- begin_tests(scalene_triangle).

    test(no_sides_are_equal, condition(pending)) :-
        triangle(5, 4, 6, "scalene").

    test(all_sides_are_equal, [fail, condition(pending)]) :-
        triangle(4, 4, 4, "scalene").

    test(two_sides_are_equal, [fail, condition(pending)]) :-
        triangle(4, 4, 3, "scalene").

    test(first_and_last_sides_are_equal, [fail, condition(pending)]) :-
        triangle(3, 4, 3, "scalene").

    test(second_and_last_sides_are_equal, [fail, condition(pending)]) :-
        triangle(4, 3, 3, "scalene").

    test(may_not_violate_triangle_inequality, [fail, condition(pending)]) :-
        triangle(7, 3, 2, "scalene").

    test(small_scalene_triangle_with_floating_point_values, condition(pending)) :-
        triangle((0.5), (0.4), (0.6), "scalene").

:- end_tests(scalene_triangle).


% BONUS TESTS
bonus :-
    current_prolog_flag(argv, ['--bonus'|_]).

:- begin_tests(triangle_bonus, [condition(bonus)]).

    test(all_sides_are_equal_but_mixed_types) :-
        triangle(2, 2.0, 2, "equilateral").

    test(sides_are_a_mix) :-
        triangle(5, 4, 5.0, "isosceles").

    test(no_sides_are_equal_mixed) :-
        triangle(5.0, 4, 6, "scalene").

:- end_tests(triangle_bonus).
%--------------------------------------------------- 103 twelve-days/twelve_days
% twelve_days.pl -- the exercism Prolog exercise twelve-days, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/twelve_days.example.pl, then its tests twelve_days_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
day(1, "first").
day(2, "second").
day(3, "third").
day(4, "fourth").
day(5, "fifth").
day(6, "sixth").
day(7, "seventh").
day(8, "eighth").
day(9, "ninth").
day(10, "tenth").
day(11, "eleventh").
day(12, "twelfth").

gift(1, "a Partridge in a Pear Tree").
gift(2, "two Turtle Doves").
gift(3, "three French Hens").
gift(4, "four Calling Birds").
gift(5, "five Gold Rings").
gift(6, "six Geese-a-Laying").
gift(7, "seven Swans-a-Swimming").
gift(8, "eight Maids-a-Milking").
gift(9, "nine Ladies Dancing").
gift(10, "ten Lords-a-Leaping").
gift(11, "eleven Pipers Piping").
gift(12, "twelve Drummers Drumming").

suffix(1, "") :- !.
suffix(2, ", and ") :- !.
suffix(_, ", ").

append_gift(N, Previous, Appended) :-
    gift(N, Gift),
    suffix(N, Suffix),
    format(string(Appended), "~s~s~s", [Gift, Suffix, Previous]).

gifts(N, Gifts) :-
    numlist(1, N, Ns),
    foldl(append_gift, Ns, "", Gifts).

verse(N, Lyric) :-
    day(N, Day),
    gifts(N, Gifts),
    format(string(Lyric), "On the ~s day of Christmas my true love gave to me: ~s.", [Day, Gifts]).

recite(Verse, Lyrics) :- recite(Verse, Verse, Lyrics).
recite(From, To, Lyrics) :-
    numlist(From, To, Ns),
    maplist(verse, Ns, Lyrics).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(twelve_days).

test(first_day_a_partridge_in_a_pear_tree, condition(true)) :-
    recite(1, Lyrics),
    Lyrics == [
        "On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree."
    ].

test(second_day_two_turtle_doves, condition(pending)) :-
    recite(2, Lyrics),
    Lyrics == [
        "On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree."
    ].

test(third_day_three_french_hens, condition(pending)) :-
    recite(3, Lyrics),
    Lyrics == [
        "On the third day of Christmas my true love gave to me: three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
    ].

test(fourth_day_four_calling_birds, condition(pending)) :-
    recite(4, Lyrics),
    Lyrics == [
        "On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
    ].

test(fifth_day_five_gold_rings, condition(pending)) :-
    recite(5, Lyrics),
    Lyrics == [
        "On the fifth day of Christmas my true love gave to me: five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
    ].

test(sixth_day_six_geese_a_laying, condition(pending)) :-
    recite(6, Lyrics),
    Lyrics == [
        "On the sixth day of Christmas my true love gave to me: six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
    ].

test(seventh_day_seven_swans_a_swimming, condition(pending)) :-
    recite(7, Lyrics),
    Lyrics == [
        "On the seventh day of Christmas my true love gave to me: seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
    ].

test(eighth_day_eight_maids_a_milking, condition(pending)) :-
    recite(8, Lyrics),
    Lyrics == [
        "On the eighth day of Christmas my true love gave to me: eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
    ].

test(ninth_day_nine_ladies_dancing, condition(pending)) :-
    recite(9, Lyrics),
    Lyrics == [
        "On the ninth day of Christmas my true love gave to me: nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
    ].

test(tenth_day_ten_lords_a_leaping, condition(pending)) :-
    recite(10, Lyrics),
    Lyrics == [
        "On the tenth day of Christmas my true love gave to me: ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
    ].

test(eleventh_day_eleven_pipers_piping, condition(pending)) :-
    recite(11, Lyrics),
    Lyrics == [
        "On the eleventh day of Christmas my true love gave to me: eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
    ].

test(twelfth_day_twelve_drummers_drumming, condition(pending)) :-
    recite(12, Lyrics),
    Lyrics == [
        "On the twelfth day of Christmas my true love gave to me: twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
    ].

test(recites_first_three_verses_of_the_song, condition(pending)) :-
    recite(1, 3, Lyrics),
    Lyrics == [
        "On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.",
        "On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree.",
        "On the third day of Christmas my true love gave to me: three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
    ].

test(recites_three_verses_from_the_middle_of_the_song, condition(pending)) :-
    recite(4, 6, Lyrics),
    Lyrics == [
        "On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
        "On the fifth day of Christmas my true love gave to me: five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
        "On the sixth day of Christmas my true love gave to me: six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
    ].

test(recites_the_whole_song, condition(pending)) :-
    recite(1, 12, Lyrics),
    Lyrics == [
        "On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.",
        "On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree.",
        "On the third day of Christmas my true love gave to me: three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
        "On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
        "On the fifth day of Christmas my true love gave to me: five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
        "On the sixth day of Christmas my true love gave to me: six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
        "On the seventh day of Christmas my true love gave to me: seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
        "On the eighth day of Christmas my true love gave to me: eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
        "On the ninth day of Christmas my true love gave to me: nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
        "On the tenth day of Christmas my true love gave to me: ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
        "On the eleventh day of Christmas my true love gave to me: eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.",
        "On the twelfth day of Christmas my true love gave to me: twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."
    ].

:- end_tests(twelve_days).
%----------------------------------------------------- 104 two-bucket/two_bucket
% two_bucket.pl -- the exercism Prolog exercise two-bucket, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/two_bucket.example.pl, then its tests two_bucket_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

action((_,MaxB), (A, B), (A1, B1)) :- 
    A #> 0, B #< MaxB,
    Fill #= min(A, MaxB - B),
    A1 #= A - Fill,
    B1 #= B + Fill.
action((_,_), (A, B), (A, 0)) :- B #> 0.
action((MaxA,_), (A, B), (MaxA, B)) :- A #< MaxA.

measurement(Visited, GoalBucket, OtherBucket, Measurement) :-
    length(Visited, Moves),
    Measurement = measurement(moves(Moves), goalBucket(GoalBucket), otherBucket(OtherBucket)).

solve(Goal, (MaxA, Goal), (0, 0), _, Measurement) :- measurement([(MaxA, Goal), (MaxA, 0)], two, MaxA, Measurement).
solve(Goal, _, (Goal, Other), Visited, Measurement) :- measurement(Visited, one, Other, Measurement).
solve(Goal, _, (Other, Goal), Visited, Measurement) :- measurement(Visited, two, Other, Measurement).
solve(Goal, Capacity, State, Visited, Measurement) :-
    action(Capacity, State, Next),
    \+ member(Next, Visited),
    solve(Goal, Capacity, Next, [State|Visited], Measurement).

flip_measurement(measurement(Moves, goalBucket(one), Other), measurement(Moves, goalBucket(two), Other)).
flip_measurement(measurement(Moves, goalBucket(two), Other), measurement(Moves, goalBucket(one), Other)).

measure(MaxA, MaxB, Goal, one, Measurement) :-
    solve(Goal, (MaxA, MaxB), (MaxA, 0), [(MaxA, 0)], Measurement), !.

measure(MaxA, MaxB, Goal, two, Measurement) :-
    solve(Goal, (MaxB, MaxA), (MaxB, 0), [(MaxB, 0)], FlippedMeasurement),
    flip_measurement(FlippedMeasurement, Measurement), !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(two_bucket).

    test(measure_using_bucket_one_of_size_3_and_bucket_two_of_size_5_start_with_bucket_one, condition(true)) :-
        measure(3, 5, 1, one, Measurement),
        Measurement == measurement(moves(4), goalBucket(one), otherBucket(5)).

    test(measure_using_bucket_one_of_size_3_and_bucket_two_of_size_5_start_with_bucket_two, condition(pending)) :-
        measure(3, 5, 1, two, Measurement),
        Measurement == measurement(moves(8), goalBucket(two), otherBucket(3)).

    test(measure_using_bucket_one_of_size_7_and_bucket_two_of_size_11_start_with_bucket_one, condition(pending)) :-
        measure(7, 11, 2, one, Measurement),
        Measurement == measurement(moves(14), goalBucket(one), otherBucket(11)).

    test(measure_using_bucket_one_of_size_7_and_bucket_two_of_size_11_start_with_bucket_two, condition(pending)) :-
        measure(7, 11, 2, two, Measurement),
        Measurement == measurement(moves(18), goalBucket(two), otherBucket(7)).

    test(measure_one_step_using_bucket_one_of_size_1_and_bucket_two_of_size_3_start_with_bucket_two, condition(pending)) :-
        measure(1, 3, 3, two, Measurement),
        Measurement == measurement(moves(1), goalBucket(two), otherBucket(0)).

    test(measure_using_bucket_one_of_size_2_and_bucket_two_of_size_3_start_with_bucket_one_and_end_with_bucket_two, condition(pending)) :-
        measure(2, 3, 3, one, Measurement),
        Measurement == measurement(moves(2), goalBucket(two), otherBucket(2)).

    test(measure_using_bucket_one_much_bigger_than_bucket_two, condition(pending)) :-
        measure(5, 1, 2, one, Measurement),
        Measurement == measurement(moves(6), goalBucket(one), otherBucket(1)).

    test(measure_using_bucket_one_much_smaller_than_bucket_two, condition(pending)) :-
        measure(3, 15, 9, one, Measurement),
        Measurement == measurement(moves(6), goalBucket(two), otherBucket(0)).

    test(not_possible_to_reach_the_goal, [fail, condition(pending)]) :-
        measure(6, 15, 5, one, _).

    test(with_the_same_buckets_but_a_different_goal_then_it_is_possible, condition(pending)) :-
        measure(6, 15, 9, one, Measurement),
        Measurement == measurement(moves(10), goalBucket(two), otherBucket(0)).

    test(goal_larger_than_both_buckets_is_impossible, [fail, condition(pending)]) :-
        measure(5, 7, 8, one, _).

:- end_tests(two_bucket).
%----------------------------------------------------------- 105 two-fer/two_fer
% two_fer.pl -- the exercism Prolog exercise two-fer, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/two_fer.example.pl, then its tests two_fer_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
two_fer(Name, Dialogue) :-
    string_concat("One for ", Name, Recipient),
    string_concat(Recipient, ", one for me.", Dialogue).

two_fer(Dialogue) :-
    two_fer("you", Dialogue).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(two_fer).

test(no_name_given, condition(true)) :-
    two_fer(Dialogue),
    Dialogue == "One for you, one for me.".

test(a_name_given, condition(pending)) :-
    two_fer("Alice", Dialogue),
    Dialogue == "One for Alice, one for me.".

test(another_name_given, condition(pending)) :-
    two_fer("Bob", Dialogue),
    Dialogue == "One for Bob, one for me.".

:- end_tests(two_fer).
%------------------------------------------------- 106 wedding-woes/wedding_woes
% wedding_woes.pl -- the exercism Prolog exercise wedding-woes, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/wedding_woes.example.pl, then its tests wedding_woes_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
chatty(gustavo).
chatty(valeria).

likes(esteban, malena).
likes(malena, esteban).
likes(gustavo, valeria).

pairing(First, Second) :- likes(First, Second), likes(Second, First), !.
pairing(First, Second) :- chatty(First), !; chatty(Second), !.
seating(A, B, C, D, E) :- pairing(A, B), pairing(B, C), pairing(C, D), pairing(D, E), pairing(E, A), !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(wedding_woes).

    test(gustavo_is_chatty, condition(true)) :-
        chatty(gustavo).

    test(valeria_is_chatty, condition(pending)) :-
        chatty(valeria).

    test(jaime_is_not_chatty, [fail, condition(pending)]) :-
        chatty(jaime).

    test(esteban_likes_malena, condition(pending)) :-
        likes(esteban, malena).

    test(malena_likes_esteban, condition(pending)) :-
        likes(malena, esteban).

    test(gustavo_likes_valeria, condition(pending)) :-
        likes(gustavo, valeria).

    test(valeria_does_not_like_gustavo, [fail, condition(pending)]) :-
        likes(valeria, gustavo).

    test(people_who_like_each_other_make_a_good_pairing, condition(pending)) :-
        pairing(malena, esteban).

    test(two_chatty_people_make_a_good_pairing, condition(pending)) :-
        pairing(gustavo, valeria).

    test(one_chatty_person_make_a_good_pairing_with_anyone, condition(pending)) :-
        pairing(valeria, jaime).

    test(people_who_dont_like_each_other_and_are_not_chatty_dont_make_a_good_pairing, [fail, condition(pending)]) :-
        pairing(rico, naran).

    test(valid_seating, condition(pending)) :-
        seating(esteban, malena, gustavo, jaime, valeria).

    test(invalid_seating, [fail, condition(pending)]) :-
        seating(esteban, jaime, gustavo, malena, valeria).

:- end_tests(wedding_woes).
%----------------------------------------------------- 107 word-count/word_count
% word_count.pl -- the exercism Prolog exercise word-count, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/word_count.example.pl, then its tests word_count_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it; double_quotes set back to string before the tests, as the runner reads them in a file of their own.
:- use_module(library(dcg/basics)).
:- set_prolog_flag(double_quotes, chars).

normalize(Chars, Normalized) :-
    string_chars(Word, Chars),
    string_lower(Word, Normalized).

alnum(C) --> [C], { char_type(C, alnum) }.
non_alnum --> [C], { \+ char_type(C, alnum) }.

non_word --> non_alnum, non_word.
non_word --> non_alnum.

word([C,'\''|Cs]) --> alnum(C), "'", word(Cs).
word([C|Cs]) --> alnum(C), word(Cs).
word([C]) --> alnum(C).

words([Word|Words]) --> word(Word), words(Words).
words([Word]) --> word(Word).
words(Words) --> non_word, words(Words).
words([]) --> [].

word_count(Sentence, Tally) :-
    string_chars(Sentence, Chars),
    phrase(words(Words), Chars),
    maplist(normalize, Words, Normalized),
    tally(Normalized, Tally),
    !.

tally(L, C) :- aggregate(set(W-N), aggregate(count, member(W, L), N), C).

:- set_prolog_flag(double_quotes, string).
pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(word_count).

    test(count_one_word, condition(true)) :-
        word_count("word", Counts),
        keysort(Counts, SortedCounts),
        SortedCounts == ["word"-1].

    test(count_one_of_each_word, condition(pending)) :-
        word_count("one of each", Counts),
        keysort(Counts, SortedCounts),
        SortedCounts == ["each"-1, "of"-1, "one"-1].

    test(multiple_occurrences_of_a_word, condition(pending)) :-
        word_count("one fish two fish red fish blue fish", Counts),
        keysort(Counts, SortedCounts),
        SortedCounts == [
          "blue"-1,
          "fish"-4,
          "one"-1,
          "red"-1,
          "two"-1
        ].

    test(handles_cramped_lists, condition(pending)) :-
        word_count("one,two,three", Counts),
        keysort(Counts, SortedCounts),
        SortedCounts == ["one"-1, "three"-1, "two"-1].

    test(handles_expanded_lists, condition(pending)) :-
        word_count("one,\ntwo,\nthree", Counts),
        keysort(Counts, SortedCounts),
        SortedCounts == ["one"-1, "three"-1, "two"-1].

    test(ignore_punctuation, condition(pending)) :-
        word_count("car: carpet as java: javascript!!&@$%^&", Counts),
        keysort(Counts, SortedCounts),
        SortedCounts == [
          "as"-1,
          "car"-1,
          "carpet"-1,
          "java"-1,
          "javascript"-1
        ].

    test(include_numbers, condition(pending)) :-
        word_count("testing, 1, 2 testing", Counts),
        keysort(Counts, SortedCounts),
        SortedCounts == ["1"-1, "2"-1, "testing"-2].

    test(normalize_case, condition(pending)) :-
        word_count("go Go GO Stop stop", Counts),
        keysort(Counts, SortedCounts),
        SortedCounts == ["go"-3, "stop"-2].

    test(with_apostrophes, condition(pending)) :-
        word_count("'First: don't laugh. Then: don't cry. You're getting it.'", Counts),
        keysort(Counts, SortedCounts),
        SortedCounts == [
          "cry"-1,
          "don't"-2,
          "first"-1,
          "getting"-1,
          "it"-1,
          "laugh"-1,
          "then"-1,
          "you're"-1
        ].

    test(with_quotations, condition(pending)) :-
        word_count("Joe can't tell between 'large' and large.", Counts),
        keysort(Counts, SortedCounts),
        SortedCounts == [
          "and"-1,
          "between"-1,
          "can't"-1,
          "joe"-1,
          "large"-2,
          "tell"-1
        ].

    test(substrings_from_the_beginning, condition(pending)) :-
        word_count("Joe can't tell between app, apple and a.", Counts),
        keysort(Counts, SortedCounts),
        SortedCounts == [
          "a"-1,
          "and"-1,
          "app"-1,
          "apple"-1,
          "between"-1,
          "can't"-1,
          "joe"-1,
          "tell"-1
        ].

    test(multiple_spaces_not_detected_as_a_word, condition(pending)) :-
        word_count(" multiple   whitespaces", Counts),
        keysort(Counts, SortedCounts),
        SortedCounts == ["multiple"-1, "whitespaces"-1].

    test(alternating_word_separators_not_detected_as_a_word, condition(pending)) :-
        word_count(",\n,one,\n ,two \n 'three'", Counts),
        keysort(Counts, SortedCounts),
        SortedCounts == ["one"-1, "three"-1, "two"-1].

    test(quotation_for_word_with_apostrophe, condition(pending)) :-
        word_count("can, can't, 'can't'", Counts),
        keysort(Counts, SortedCounts),
        SortedCounts == ["can"-1, "can't"-2].

:- end_tests(word_count).
%--------------------------------------------------------------- 108 wordy/wordy
% wordy.pl -- the exercism Prolog exercise wordy, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/wordy.example.pl, then its tests wordy_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
% Wordy Module -- Built for SWI-PL v8.0.3

:- use_module(library(dcg/basics)).

% wordy(+Question, -Answer)
% predicate with takes an instantiated string `Question` representing a simple mathematical word problem.
% uses phrase and a DCG to unify a list of terms with a character list.  The list of terms is then reduced
% to the integer answer, which is returned.
wordy(Question, Answer) :-
  string_codes(Question, QuestionChars),
  phrase(parse(Ts), QuestionChars),
  !,
  compute(Ts, Answer).

% compute(+InfixOperationList, -Answer)
compute([T | Ts], Answer) :- compute(Ts, T, Answer).

compute([], Answer, Answer).

compute(["+", T | Ts], Acc, Answer) :-
  Next is Acc + T,
  compute(Ts, Next, Answer).

compute(["-", T | Ts], Acc, Answer) :-
  Next is Acc - T,
  compute(Ts, Next, Answer).

compute(["*", T | Ts], Acc, Answer) :-
  Next is Acc * T,
  compute(Ts, Next, Answer).

compute(["/", T | Ts], Acc, Answer) :-
  Next is div(Acc, T),
  compute(Ts, Next, Answer).

% Wordy DCG
% DCG describing a simple mathematical word problem
% phrase --> What is <integer> [<operator> <integer> [...]]?
parse(E) -->
  `What is`,
  math_expr(E, number),
  `?`.

parse(_) -->
  { throw(error(unknown_operation_error, wrong_form)) }.

math_expr(E, T) --> blank, math_expr(E, T).

math_expr([I | Es], number) -->
  integer(I),
  math_expr(Es, operator).

math_expr(_, number) -->
  { throw(error(syntax_error, integer_expected)) }.

math_expr([], operator) --> [].

math_expr([O | Es], operator) -->
  operator(O),
  math_expr(Es, number).

math_expr(_, operator) -->
  { throw(error(unknown_operation_error, operator_not_implemented)) }.

operator("+") --> `plus`.
operator("-") --> `minus`.
operator("*") --> `multiplied by`.
operator("/") --> `divided by`.
operator(I)   -->
  integer(I),
  { throw(error(syntax_error, integer_found_rather_than_operator)) }.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(simple).

    test(just_a_number, condition(true)) :-
        wordy("What is 5?", 5).

    test(just_a_zero, condition(pending)) :-
        wordy("What is 0?", 0).

    test(just_a_negative_number, condition(pending)) :-
        wordy("What is -123?", -123).

:- end_tests(simple).

:- begin_tests(plus).

    test(addition, condition(pending)) :-
        wordy("What is 1 plus 1?", 2).

    test(more_addition, condition(pending)) :-
        wordy("What is 53 plus 2?", 55).

    test(addition_with_negative_numbers, condition(pending)) :-
        wordy("What is -1 plus -10?", -11).

    test(large_addition, condition(pending)) :-
        wordy("What is 123 plus 45678?", 45801).

    test(addition_with_zero_left_hand, condition(pending)) :-
        wordy("What is 0 plus 2?", 2).
    
    test(addition_with_zero_right_hand, condition(pending)) :-
        wordy("What is 3 plus 0?", 3).

:- end_tests(plus).
:- begin_tests(minus).

    test(subtraction, condition(pending)) :-
        wordy("What is 4 minus -12?", 16).

:- end_tests(minus).
:- begin_tests(multiplication).

    test(multiplication, condition(pending)) :-
        wordy("What is -3 multiplied by 25?", -75).

:- end_tests(multiplication).
:- begin_tests(division).

    test(division, condition(pending)) :-
        wordy("What is 33 divided by -3?", -11).

:- end_tests(division).
:- begin_tests(combination).

    test(multiple_additions, condition(pending)) :-
        wordy("What is 1 plus 1 plus 1?", 3).

    test(addition_and_subtraction, condition(pending)) :-
        wordy("What is 1 plus 5 minus -2?", 8).

    test(multiple_subtraction, condition(pending)) :-
        wordy("What is 20 minus 4 minus 13?", 3).

    test(subtraction_then_addition, condition(pending)) :-
        wordy("What is 17 minus 6 plus 3?", 14).

    test(multiple_multiplication, condition(pending)) :-
        wordy("What is 2 multiplied by -2 multiplied by 3?", -12).

    test(addition_and_multiplication, condition(pending)) :-
        wordy("What is -3 plus 7 multiplied by -2?", -8).

    test(multiple_division, condition(pending)) :-
        wordy("What is -12 divided by 2 divided by -3?", 2).

:- end_tests(combination).
:- begin_tests(errors).

    test(unknown_operation, [error(unknown_operation_error), condition(pending)]) :-
        wordy("What is 52 cubed?", 140608).

    test(non_math_question, [error(unknown_operation_error), condition(pending)]) :-
        wordy("Who is the President of the United States?", "Abraham Lincoln").

    test(reject_problem_missing_an_operand, [error(syntax_error), condition(pending)]) :-
        wordy("What is 1 plus?", _).

    test(reject_problem_with_no_operands_or_operators, [error(syntax_error), condition(pending)]) :-
        wordy("What is?", _).

    test(reject_two_operations_in_a_row, [error(syntax_error), condition(pending)]) :-
        wordy("What is 1 plus plus 2?", _).

    test(reject_two_numbers_in_a_row, [error(syntax_error), condition(pending)]) :-
        wordy("What is 1 plus 2 1?", _).

    test(reject_postfix_notation, [error(syntax_error), condition(pending)]) :-
        wordy("What is 1 2 plus?", _).

    test(reject_prefix_notation, [error(syntax_error), condition(pending)]) :-
        wordy("What is plus 1 2?", _).

:- end_tests(errors).
%--------------------------------------------------------------- 109 yacht/yacht
% yacht.pl -- the exercism Prolog exercise yacht, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/yacht.example.pl, then its tests yacht_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

score([X, X, X, X, X], yacht, 50) :- !.

score(Dice, little_straight, 30) :- sort(Dice, [1, 2, 3, 4, 5]), !.
score(Dice, big_straight, 30) :- sort(Dice, [2, 3, 4, 5, 6]), !.

score(Dice, ones, Score)   :- singles_score(Dice, 1, Score), !.
score(Dice, twos, Score)   :- singles_score(Dice, 2, Score), !.
score(Dice, threes, Score) :- singles_score(Dice, 3, Score), !.
score(Dice, fours, Score)  :- singles_score(Dice, 4, Score), !.
score(Dice, fives, Score)  :- singles_score(Dice, 5, Score), !.
score(Dice, sixes, Score)  :- singles_score(Dice, 6, Score), !.

score(Dice, full_house, Score) :-
    (sort(0, @=<, Dice, [X, X, Y, Y, Y]);
     sort(0, @=<, Dice, [X, X, X, Y, Y])),
    X \= Y,
    sum_list(Dice, Score), !.

score(Dice, four_of_a_kind, Score) :-
    (sort(0, @=<, Dice, [_, X, X, X, X]);
     sort(0, @=<, Dice, [X, X, X, X, _])),
    Score #= X * 4, !.

score(Dice, choice, Score) :- sum_list(Dice, Score), !.

score(_, _, 0).

singles_score(Dice, Die, Score) :-
    include(=(Die), Dice, Ones),
    sum_list(Ones, Score).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(yacht).

    test(yacht, condition(true)) :-
        score([5, 5, 5, 5, 5], yacht, Score),
        Score == 50.

    test(not_yacht, condition(pending)) :-
        score([1, 3, 3, 2, 5], yacht, Score),
        Score == 0.

    test(ones, condition(pending)) :-
        score([1, 1, 1, 3, 5], ones, Score),
        Score == 3.

    test(ones_out_of_order, condition(pending)) :-
        score([3, 1, 1, 5, 1], ones, Score),
        Score == 3.

    test(no_ones, condition(pending)) :-
        score([4, 3, 6, 5, 5], ones, Score),
        Score == 0.

    test(twos, condition(pending)) :-
        score([2, 3, 4, 5, 6], twos, Score),
        Score == 2.

    test(fours, condition(pending)) :-
        score([1, 4, 1, 4, 1], fours, Score),
        Score == 8.

    test(yacht_counted_as_threes, condition(pending)) :-
        score([3, 3, 3, 3, 3], threes, Score),
        Score == 15.

    test(yacht_of_3s_counted_as_fives, condition(pending)) :-
        score([3, 3, 3, 3, 3], fives, Score),
        Score == 0.

    test(fives, condition(pending)) :-
        score([1, 5, 3, 5, 3], fives, Score),
        Score == 10.

    test(sixes, condition(pending)) :-
        score([2, 3, 4, 5, 6], sixes, Score),
        Score == 6.

    test(full_house_two_small_three_big, condition(pending)) :-
        score([2, 2, 4, 4, 4], full_house, Score),
        Score == 16.

    test(full_house_three_small_two_big, condition(pending)) :-
        score([5, 3, 3, 5, 3], full_house, Score),
        Score == 19.

    test(two_pair_is_not_a_full_house, condition(pending)) :-
        score([2, 2, 4, 4, 5], full_house, Score),
        Score == 0.

    test(four_of_a_kind_is_not_a_full_house, condition(pending)) :-
        score([1, 4, 4, 4, 4], full_house, Score),
        Score == 0.

    test(yacht_is_not_a_full_house, condition(pending)) :-
        score([2, 2, 2, 2, 2], full_house, Score),
        Score == 0.

    test(four_of_a_kind, condition(pending)) :-
        score([6, 6, 4, 6, 6], four_of_a_kind, Score),
        Score == 24.

    test(yacht_can_be_scored_as_four_of_a_kind, condition(pending)) :-
        score([3, 3, 3, 3, 3], four_of_a_kind, Score),
        Score == 12.

    test(full_house_is_not_four_of_a_kind, condition(pending)) :-
        score([3, 3, 3, 5, 5], four_of_a_kind, Score),
        Score == 0.

    test(little_straight, condition(pending)) :-
        score([3, 5, 4, 1, 2], little_straight, Score),
        Score == 30.

    test(little_straight_as_big_straight, condition(pending)) :-
        score([1, 2, 3, 4, 5], big_straight, Score),
        Score == 0.

    test(four_in_order_but_not_a_little_straight, condition(pending)) :-
        score([1, 1, 2, 3, 4], little_straight, Score),
        Score == 0.

    test(no_pairs_but_not_a_little_straight, condition(pending)) :-
        score([1, 2, 3, 4, 6], little_straight, Score),
        Score == 0.

    test(minimum_is_1_maximum_is_5_but_not_a_little_straight, condition(pending)) :-
        score([1, 1, 3, 4, 5], little_straight, Score),
        Score == 0.

    test(big_straight, condition(pending)) :-
        score([4, 6, 2, 5, 3], big_straight, Score),
        Score == 30.

    test(big_straight_as_little_straight, condition(pending)) :-
        score([6, 5, 4, 3, 2], little_straight, Score),
        Score == 0.

    test(no_pairs_but_not_a_big_straight, condition(pending)) :-
        score([6, 5, 4, 3, 1], big_straight, Score),
        Score == 0.

    test(choice, condition(pending)) :-
        score([3, 3, 5, 6, 6], choice, Score),
        Score == 23.

    test(yacht_as_choice, condition(pending)) :-
        score([2, 2, 2, 2, 2], choice, Score),
        Score == 10.

:- end_tests(yacht).
%------------------------------------------------- 110 zebra-puzzle/zebra_puzzle
% zebra_puzzle.pl -- the exercism Prolog exercise zebra-puzzle, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/zebra_puzzle.example.pl, then its tests zebra_puzzle_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
zebra_owner(Owner) :-
	houses(Hs),
	member(h(Owner,zebra,_,_,_), Hs),
    !.

water_drinker(Drinker) :-
	houses(Hs),
	member(h(Drinker,_,_,water,_), Hs),
    !.

houses(Hs) :-
	% each house in the list Hs of houses is represented as:
	%      h(Nationality, Pet, Cigarette, Drink, Color)
	length(Hs, 5),                                            %  1
	member(h(english,_,_,_,red), Hs),                         %  2
	member(h(spanish,dog,_,_,_), Hs),                         %  3
	member(h(_,_,_,coffee,green), Hs),                        %  4
	member(h(ukrainian,_,_,tea,_), Hs),                       %  5
	next(h(_,_,_,_,green), h(_,_,_,_,white), Hs),             %  6
	member(h(_,snake,winston,_,_), Hs),                       %  7
	member(h(_,_,kool,_,yellow), Hs),                         %  8
	Hs = [_,_,h(_,_,_,milk,_),_,_],                           %  9
	Hs = [h(norwegian,_,_,_,_)|_],                            % 10
	next(h(_,fox,_,_,_), h(_,_,chesterfield,_,_), Hs),        % 11
	next(h(_,_,kool,_,_), h(_,horse,_,_,_), Hs),              % 12
	member(h(_,_,lucky,juice,_), Hs),                         % 13
	member(h(japanese,_,kent,_,_), Hs),                       % 14
	next(h(norwegian,_,_,_,_), h(_,_,_,_,blue), Hs),          % 15
	member(h(_,_,_,water,_), Hs),		% one of them drinks water
	member(h(_,zebra,_,_,_), Hs).		% one of them owns a zebra

next(A, B, Ls) :- append(_, [A,B|_], Ls).
next(A, B, Ls) :- append(_, [B,A|_], Ls).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(zebra_puzzle).

    test(resident_who_drinks_water, condition(true)) :-
        water_drinker(Resident), Resident == norwegian.

    test(resident_who_owns_zebra, condition(pending)) :-
        zebra_owner(Resident), Resident == japanese.

:- end_tests(zebra_puzzle).
