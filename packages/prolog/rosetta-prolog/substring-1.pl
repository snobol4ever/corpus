substring_task(Str, N, M, Char, SubStr) :-
    sub_string(Str, N, M, _, Span),
    sub_string(Str, N, _, 0, ToEnd),
    sub_string(Str, 0, _, 1, MinusLast),
    string_from_substring_to_m(Str, Char, M, FromCharToMth),
    string_from_substring_to_m(Str, SubStr, M, FromSubToM),
    maplist( writeln,
            [ 'from n to m ':Span,
              'from n to end ': ToEnd,
              'string minus last char ': MinusLast,
              'form known char to m ': FromCharToMth,
              'from known substring to m ': FromSubToM ]).


string_from_substring_to_m(String, Sub, M, FromSubToM) :-
    sub_string(String, Before, _, _, Sub),
    sub_string(String, Before, M, _, FromSubToM).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines substring_task/5 and never calls it; the driver runs the Rosetta page's own query (substring-2) substring_task("abcdefghijk", 2, 4, "d", "ef").
:- initialization(substring_task("abcdefghijk", 2, 4, "d", "ef")).
