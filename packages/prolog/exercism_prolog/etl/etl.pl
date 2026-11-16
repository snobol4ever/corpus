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
