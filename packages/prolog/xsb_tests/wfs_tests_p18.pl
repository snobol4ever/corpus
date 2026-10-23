query(p18,p,[p,q,r],[p,q,r],[]).
%-----------------------------------------------------------

:- table p / 0.
:- table q / 0.
:- table r / 0.

p :- q, r.
p :- r.
q.
r.

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p18 "test(p18)." -- [wfs_test]. test(p18). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p18), told)).
