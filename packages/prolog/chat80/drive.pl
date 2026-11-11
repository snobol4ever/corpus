% drive.pl -- the driver of the CHAT-80 suite (ours; the collection's files are read in place and never changed).
% Loaded after one of the collection's two loaders (prolog/chat80.pl, the SWI-Prolog module; prolog/chat80/chat.pl, the
% original loader), both of which load the module chattop. It asks the demonstration questions of chattop's own table
% ed/3 (the 23 questions CHAT.DOC and the file demo name) and prints each question, the answer CHAT-80 gives and whether
% that answer is the one the table records. No time is printed: the answer is the same every run.
% Arguments: none asks every question; otherwise each argument is a question's number.

:- initialization(chat80_suite, main).

chat80_suite :-
    current_prolog_flag(argv, Argv),
    chat80_numbers(Argv, Wanted),
    forall(chattop:ed(N, Question, Recorded),
           (   chat80_wanted(N, Wanted)
           ->  chat80_ask(N, Question, Recorded)
           ;   true
           )).

chat80_numbers([], []).
chat80_numbers([A|As], Ns) :-
    (   catch(atom_number(A, N), _, fail), integer(N)
    ->  Ns = [N|Ns1]
    ;   Ns = Ns1
    ),
    chat80_numbers(As, Ns1).

chat80_wanted(_, []) :- !.
chat80_wanted(N, Wanted) :- memberchk(N, Wanted).

chat80_ask(N, Question, Recorded) :-
    write(N), write(': '), chat80_words(Question), nl,
    (   catch(chattop:process(Question, Answer, _Times), Error, (Answer = error(Error)))
    ->  write('   answer: '), write(Answer), nl,
        (   Answer == Recorded
        ->  write('   as recorded'), nl
        ;   write('   RECORDED: '), write(Recorded), nl
        )
    ;   write('   no answer'), nl
    ).

chat80_words([]).
chat80_words([W|Ws]) :- write(W), write(' '), chat80_words(Ws).
