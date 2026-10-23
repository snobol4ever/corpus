query(p07, p, [p,q,r,s,t], [p,q,s], []).
%---------------------------------------

:- table p/0, q/0, r/0, s/0, t/0.

p :- q, tnot(r).
q.
r :- tnot(s).
s :- tnot(t).
t :- fail.


% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p07 "test(p07)." -- [wfs_test]. test(p07). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p07), told)).
