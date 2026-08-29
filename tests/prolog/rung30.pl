%-------------------------------------------------- 1 rung30_dcg_basic_terminals
:- initialization(main).

greeting --> [hello], [world].

main :-
    ( phrase(greeting, [hello, world]) -> write(yes) ; write(no) ), nl,
    ( phrase(greeting, [hello, there]) -> write(yes) ; write(no) ), nl.
%----------------------------------------------------- 2 rung30_dcg_nonterminals
:- initialization(main).

sentence --> noun_phrase, verb_phrase.
noun_phrase --> [the], noun.
verb_phrase --> verb, noun_phrase.
verb_phrase --> verb.
noun --> [cat].
noun --> [dog].
noun --> [mouse].
verb --> [chases].
verb --> [sees].

main :-
    ( phrase(sentence, [the, cat, chases, the, mouse]) -> write(yes) ; write(no) ), nl,
    ( phrase(sentence, [the, dog, sees]) -> write(yes) ; write(no) ), nl,
    ( phrase(sentence, [cat, chases]) -> write(yes) ; write(no) ), nl.
%---------------------------------------------------------- 3 rung30_dcg_phrase3
:- initialization(main).

ab --> [a], [b].

main :-
    phrase(ab, [a,b,c,d], Rest),
    write(Rest), nl.
%---------------------------------------------------- 4 rung30_dcg_pushback_rest
:- initialization(main).

digits([D|Ds]) --> digit(D), digits(Ds).
digits([]) --> [].
digit(D) --> [D], { D >= 0'0, D =< 0'9 }.

main :-
    atom_codes('123', Codes),
    ( phrase(digits(Ds), Codes) ->
        atom_codes(A, Ds), write(A)
    ; write(fail)
    ), nl.
