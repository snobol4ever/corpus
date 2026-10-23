query(p20,a,[a,b,c],[c],[]).
%-----------------------------------------------------------

:- table a / 0.
:- table b / 0.
:- table c / 0.

a :- tnot(b), tnot(c).
b :- a.
c.

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p20 "test(p20)." -- [wfs_test]. test(p20). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p20), told)).
