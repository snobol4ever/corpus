test_strings(Strings) :-
    forall( member(String, Strings),
            ( ( numeric_string(String)
              ->  Result = a
              ;   Result = 'not a' ),
              format('~w is ~w number.~n', [String, Result])
            )
          ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block's test_strings/1 is the entry and calls numeric_string/1 of determine-if-a-string-is-numeric-1, so the driver takes that block over (CEO-1613) and runs the five strings of the page's example (determine-if-a-string-is-numeric-3's transcript).
:- include('determine-if-a-string-is-numeric-1.pl').
:- initialization(test_strings(["123", "0.123", "-123.1", "NotNum", "1."])).
