query(p40,a(_A),[a(s),a(t),b(s)],[a(s),a(t)],[b(s)]).
%-----------------------------------------------------------

:- table a / 1.
:- table b / 1.

b(s) :- tnot(b(s)).
a(A) :- b(A).
a(_A).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p40 "test(p40)." -- [wfs_test]. test(p40). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p40), told)).
