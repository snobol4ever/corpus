% lon.pl -- one entry of the PRESS suite (ours; PRESS is read in place from its collection and never changed).
% Run from the top of the collection: it loads PRESS by its own loader and its A-level questions, then asks, one after
% another in one run, the London A-level questions lon(N) of pressdir/probs/exam.pl.
% Only the questions swipl 9.0.4 answers inside 60 s when asked alone are in the list (the census names the others).
% Each question is announced by a line === QUESTION and closed by === yes, === no or === error(E), so a difference names its question.
:- initialization(main, main).
:- consult('swiload.pl').
:- consult('pressdir/probs/exam.pl').
main :- forall(member(N, [1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 19, 20, 21, 22,
          23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 38, 39, 40]),
               ( Q = lon(N), press_ask(Q) )).
press_ask(Q) :-
    nl, write('=== '), write(Q), nl,
    (   catch(Q, E, (nl, write('=== '), write(error(E)), nl))
    ->  nl, write('=== yes'), nl
    ;   nl, write('=== no'), nl
    ).
