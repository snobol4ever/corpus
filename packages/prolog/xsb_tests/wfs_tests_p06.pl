query(p06,p,[p,q,r],[p,q],[]).
%-----------------------------

:- table p/0, q/0, r/0.

p :- q, tnot(r).
q.

r :- fail.

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p06 "test(p06)." -- [wfs_test]. test(p06). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p06), told)).
