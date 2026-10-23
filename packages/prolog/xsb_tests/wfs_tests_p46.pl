query(p46,q,[p(a),p(b),q,r],[p(b),r],[p(a)]).
%-----------------------------------------------------------

:- table p / 1.
:- table q / 0.
:- table r / 0.

q :- tnot(r).
r :- p(_A).
p(a) :- tnot(p(a)).
p(b).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p46 "test(p46)." -- [wfs_test]. test(p46). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p46), told)).
