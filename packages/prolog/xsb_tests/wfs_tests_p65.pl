query(p65,p,[p,q],[],[p,q]).
%-----------------------------------------------------------

:- table p / 0.
:- table q / 0.

p :- q.
q :- tnot(q).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p65 "test(p65)." -- [wfs_test]. test(p65). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p65), told)).
