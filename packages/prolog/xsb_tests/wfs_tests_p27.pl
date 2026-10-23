query(p27,s,[p,q,r,s,ns],[s],[]).
%-----------------------------------------------------------

:- table ns / 0.
:- table p / 0.
:- table q / 0.
:- table r / 0.
:- table s / 0.

p :- tnot(r), ns, q.
ns :- tnot(s).
q :- r, tnot(p).
r :- p, tnot(q).
s :- tnot(p), tnot(q), tnot(r).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p27 "test(p27)." -- [wfs_test]. test(p27). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p27), told)).
