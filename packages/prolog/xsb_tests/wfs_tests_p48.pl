query(p48,p,[p,q,r,s],[p],[]).
%-----------------------------------------------------------

:- table p / 0.
:- table q / 0.
:- table r / 0.
:- table s / 0.

p :- tnot(q).
q :- tnot(p).
p :- tnot(r).
r :- tnot(p).
p :- tnot(s).
s :- fail.

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p48 "test(p48)." -- [wfs_test]. test(p48). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p48), told)).
