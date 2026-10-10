assign_empty_string(Variable) :- Variable = "".

is_empty_string(String)  :- String ==  "".
not_empty_string(String) :- String \== "".

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines assign_empty_string/1, is_empty_string/1 and not_empty_string/1 and never calls them; the driver assigns the empty string and tests it and "abc".
:- initialization((assign_empty_string(S), (is_empty_string(S) -> writeln('S is empty') ; writeln('S is not empty')), (not_empty_string("abc") -> writeln('"abc" is not empty') ; writeln('"abc" is empty')), (is_empty_string("abc") -> writeln('is_empty_string("abc") succeeds') ; writeln('is_empty_string("abc") fails')))).
