query(p30,p,[p,q,r],[],[p,q,r]).
%-----------------------------------------------------------

:- table p / 0.
:- table q / 0.
:- table r / 0.

p :- q.
p :- tnot(r).
r :- tnot(q).
q :- tnot(r).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p30 "test(p30)." -- [wfs_test]. test(p30). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p30), told)).
