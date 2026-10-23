query(p26,l,[l,m,n,p,q,r,s],[l,n,s],[]).
%-----------------------------------------------------------

:- table l / 0.
:- table m / 0.
:- table n / 0.
:- table p / 0.
:- table q / 0.
:- table r / 0.
:- table s / 0.

l :- tnot(p), s.
m :- tnot(s).
n :- tnot(p).
p :- tnot(s), tnot(r), q.
q :- tnot(p), r.
r :- tnot(q), p.
s :- tnot(p), tnot(q), tnot(r).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p26 "test(p26)." -- [wfs_test]. test(p26). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p26), told)).
