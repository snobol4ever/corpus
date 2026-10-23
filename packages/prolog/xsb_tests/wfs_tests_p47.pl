query(p47,p,[p,q,l],[p],[]).
%-----------------------------------------------------------

:- table l / 0.
:- table p / 0.
:- table q / 0.

l :- tnot(p).
p :- tnot(q).
p.
q :- tnot(p).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p47 "test(p47)." -- [wfs_test]. test(p47). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p47), told)).
