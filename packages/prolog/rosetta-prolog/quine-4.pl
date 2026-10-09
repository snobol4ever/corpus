main:-X='main:-X=~q,format(X,X).',format(X,X).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
