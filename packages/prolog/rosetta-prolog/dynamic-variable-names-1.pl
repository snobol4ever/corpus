test :- read(Name), atomics_to_string([Name, "= 50, writeln('", Name, "' = " , Name, ")"], String), term_string(Term, String), Term.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines test/0 (reads a variable name with read/1, binds it to 50) and never calls it; dynamic-variable-names-1.in holds the name 'Foo' as a quoted atom.
:- initialization(test).
