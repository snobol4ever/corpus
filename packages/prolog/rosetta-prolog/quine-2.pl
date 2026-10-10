quine:-asserta(a((quine:-asserta(a(A,B)),a(C,D+E),a(D,E),numbervars(C),write(C),write(.)),A+B)),a(F,G+H),a(G,H),numbervars(F),write(F),write(.).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines quine/0 and never calls it; the driver calls it once at load.
:- initialization(quine).
