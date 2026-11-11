% demo.pl -- one entry of the PRESS suite (ours; PRESS is read in place from its collection and never changed).
% Run from the top of the collection: it loads PRESS by its own loader, then asks, one after
% another in one run, the four demonstrations of pressdir/probs/demo.pl (example1 to example4), which PRESS's own loader loads.
% Only the questions swipl 9.0.4 answers inside 60 s when asked alone are in the list (the census names the others).
% Each question is announced by a line === QUESTION and closed by === yes, === no or === error(E), so a difference names its question.
:- initialization(main, main).
:- consult('swiload.pl').
main :- forall(member(N, [1, 2, 3, 4]),
               ( atom_concat(example, N, G), Q = G, press_ask(Q) )).
press_ask(Q) :-
    nl, write('=== '), write(Q), nl,
    (   catch(Q, E, (nl, write('=== '), write(error(E)), nl))
    ->  nl, write('=== yes'), nl
    ;   nl, write('=== no'), nl
    ).
