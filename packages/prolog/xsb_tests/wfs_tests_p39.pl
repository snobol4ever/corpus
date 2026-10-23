query(p39,(a(_684212),a(s),b(s)),[a(s),b(s)],[],[a(s),b(s)]).
%-----------------------------------------------------------

:- table a / 1.
:- table b / 1.

b(s) :- tnot(b(s)).
a(A) :- b(A).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p39 "test(p39)." -- [wfs_test]. test(p39). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p39), told)).
