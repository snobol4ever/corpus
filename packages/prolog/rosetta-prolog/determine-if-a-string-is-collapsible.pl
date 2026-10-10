collapse_( [], [] ).
collapse_( [A], [A] ).
collapse_( [A,A|T], R ) :- collapse_( [A|T], R ).
collapse_( [A,B|T], [A|R] ) :- dif( A, B ), collapse_( [B|T], R ).

collapse( Str, Collapsed ) :-
    string_chars( Str, Chars ),
    collapse_( Chars, Result ),
    string_chars( Collapsed, Result ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines collapse/2 and never calls it; the driver collapses the task's five strings and prints each with its length (<<< >>> in place of the task's guillemets).
:- initialization(forall(member(S, ["", "\"If I were two-faced, would I be wearing this one?\" --- Abraham Lincoln ", "..1111111111111111111111111111111111111111111111111111111111111117777888", "I never give 'em hell, I just tell the truth, and they think it's hell. ", "                                                    --- Harry S Truman "]), (once(collapse(S, C)), string_length(S, LS), string_length(C, LC), format("original:  <<<~w>>> (length ~d)~ncollapsed: <<<~w>>> (length ~d)~n", [S, LS, C, LC])))).
