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