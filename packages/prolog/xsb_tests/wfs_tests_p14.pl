query(p14,p,[p],[],[p]).
%-----------------------------------------------------------

:- table p / 0.

p :- tnot(p).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p14 "test(p14)." -- [wfs_test]. test(p14). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p14), told)).
