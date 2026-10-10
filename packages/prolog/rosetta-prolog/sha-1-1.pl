:- use_module(library(sha)).
sha_hex(Str,Hex):-
   sha_hash(Str, Hash, []),
   hash_atom(Hash, Hex).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines sha_hex/2 and never calls it; the driver prints the SHA-1 of the task's "Rosetta Code".
:- initialization((sha_hex("Rosetta Code", H), writeln(H))).
