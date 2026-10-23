query(p33,a,[a,b],[],[a,b]).
%-----------------------------------------------------------

:- table a / 0.
:- table b / 0.

a :- tnot(b).
b :- tnot(a).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p33 "test(p33)." -- [wfs_test]. test(p33). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p33), told)).
