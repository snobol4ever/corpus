query(p63,t,[p,q,s,r,t],[],[p,q,s,r,t]).
%-----------------------------------------------------------

:- table p / 0.
:- table q / 0.
:- table r / 0.
:- table s / 0.
:- table t / 0.

t :- tnot(s).
s :- tnot(p).
p :- q.
p :- r.
r :- tnot(q).
q :- tnot(r).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p63 "test(p63)." -- [wfs_test]. test(p63). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p63), told)).
