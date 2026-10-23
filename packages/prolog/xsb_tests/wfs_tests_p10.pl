query(p10,p,[p,q,r],[],[p,q,r]).
%-------------------------------

:- table p/0, q/0, r/0.

p :- q.
p :- r.
r :- tnot(q).
q :- tnot(r).


% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p10 "test(p10)." -- [wfs_test]. test(p10). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p10), told)).
