test(A):-
    assertion(A==42).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines test/1 (assertion(A==42)) and never calls it; the driver calls it with 42 and with 41, catching the assertion error (its backtrace goes to stderr).
:- initialization((test(42), writeln('test(42): assertion holds'), catch(test(41), error(assertion_error(_, _), _), writeln('test(41): assertion failed')))).
