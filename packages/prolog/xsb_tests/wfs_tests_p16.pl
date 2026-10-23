query(p16,s,[s,p,q,r],[s],[]).
%-----------------------------------------------------------

:- table p / 0.
:- table q / 0.
:- table r / 0.
:- table s / 0.

s :- tnot(p), tnot(q), tnot(r).
p :- q, tnot(s), tnot(r).
q :- r, tnot(p).
r :- p, tnot(q).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p16 "test(p16)." -- [wfs_test]. test(p16). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p16), told)).
