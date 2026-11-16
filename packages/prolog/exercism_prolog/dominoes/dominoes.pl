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
