query(p22,p,[p,q,a,b,c],[b],[p,q]).
%-----------------------------------------------------------

:- table a / 0.
:- table b / 0.
:- table c / 0.
:- table p / 0.
:- table q / 0.

a :- fail.
b :- tnot(a).
c :- tnot(b).
c :- a, tnot(p).
p :- tnot(q).
q :- tnot(p), b.

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p22 "test(p22)." -- [wfs_test]. test(p22). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p22), told)).
