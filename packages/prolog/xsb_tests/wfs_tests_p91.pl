query(p91,p,[p,q,r],[p,r],[]).
%-----------------------------------------------------------

:- table p / 0.
:- table q / 0.
:- table r / 0.

p :- tnot(q), r.
q :- tnot(r), p.
r :- tnot(p), q.
r.

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p91 "test(p91)." -- [wfs_test]. test(p91). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p91), told)).
