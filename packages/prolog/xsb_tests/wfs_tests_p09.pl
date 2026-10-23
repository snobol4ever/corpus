query(p09, p, [p,q,r,s], [q,r], []).
%------------------------------------

:- table p/0, q/0, r/0, s/0.

p :- tnot(q).
q :- tnot(p).
q :- r.
r :- tnot(s).
s :- fail.


% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p09 "test(p09)." -- [wfs_test]. test(p09). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p09), told)).
