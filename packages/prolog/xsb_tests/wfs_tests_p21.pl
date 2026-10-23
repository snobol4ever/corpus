query(p21,a,[a,b,c],[c],[a,b]).
%-----------------------------------------------------------

:- table a / 0.
:- table b / 0.
:- table c / 0.

a :- tnot(b), c.
b :- tnot(a).
c.

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p21 "test(p21)." -- [wfs_test]. test(p21). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p21), told)).
