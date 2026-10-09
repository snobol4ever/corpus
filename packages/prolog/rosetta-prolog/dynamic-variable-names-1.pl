test :- read(Name), atomics_to_string([Name, "= 50, writeln('", Name, "' = " , Name, ")"], String), term_string(Term, String), Term.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines test/0 and never calls it; the driver calls it once at load.
:- initialization(test).
