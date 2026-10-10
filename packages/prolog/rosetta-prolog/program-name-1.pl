% SWI-Prolog version 8.0.0 for i686-linux.
% This will find itself, and return the knowledge base it is in.
file_name(F) :- true
   , M = user            % M is the module    .
   , P = file_name(_)    % P is the predicate .
   , source_file(M:P, F) % F is the file      .
   , \+ predicate_property(M:P, imported_from(_))
   .

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines file_name/1 and never calls it; the driver prints the base name of the file it returns, so the answer does not depend on the directory the program runs in.
:- initialization((file_name(F), file_base_name(F, B), writeln(B))).
