query(p89,p,[p,q,r,s],[p,r],[]).
%-----------------------------------------------------------

:- table p / 0.
:- table q / 0.
:- table r / 0.
:- table s / 0.

p :- tnot(q), r.
q :- tnot(p), s.
r.
s :- fail.

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p89 "test(p89)." -- [wfs_test]. test(p89). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p89), told)).
