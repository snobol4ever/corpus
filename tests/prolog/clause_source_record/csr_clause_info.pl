:- use_module(library(lists)).
:- initialization(main).
:- dynamic ci/2.

ci(Left, Right) :-
    Right = g(Left, _Spare),
    true.

main :-
    clause(ci(_, _), _, R),
    clause_info(R, File, TermPos, _, [variable_names(Vs)]),
    file_base_name(File, B),
    write(B), nl,
    findall(N, member(N=_, Vs), Ns),
    write(Ns), nl,
    (   TermPos = term_position(From, To, _, _, _)
    ->  write(pos(From, To))
    ;   write(pos(other))
    ),
    nl.
