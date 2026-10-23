query(p24,p,[p,q,r,s],[s],[]).
%-----------------------------------------------------------

:- table p / 0.
:- table q / 0.
:- table r / 0.
:- table s / 0.

p :- tnot(s), q, tnot(r).
q :- r, tnot(p).
r :- p, tnot(q).
s :- tnot(p), tnot(q), tnot(r).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p24 "test(p24)." -- [wfs_test]. test(p24). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p24), told)).
