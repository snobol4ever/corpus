query(p78,s,[p,q,s],[s],[]).
%-----------------------------------------------------------

:- table p / 0.
:- table q / 0.
:- table s / 0.

s :- tnot(p), tnot(q).
p :- tnot(s), q.
q :- tnot(s), p.

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p78 "test(p78)." -- [wfs_test]. test(p78). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p78), told)).
