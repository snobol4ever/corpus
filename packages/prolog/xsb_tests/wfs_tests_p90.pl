query(p90,p,[p,q,s],[s],[p,q]).
%-----------------------------------------------------------

:- table p / 0.
:- table q / 0.
:- table s / 0.

p :- tnot(q).
q :- tnot(p), s.
s.

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p90 "test(p90)." -- [wfs_test]. test(p90). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p90), told)).
