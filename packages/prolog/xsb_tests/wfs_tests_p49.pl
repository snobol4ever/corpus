query(p49,q(a),[p(a),q(a),r(a)],[q(a),r(a)],[]).
%-----------------------------------------------------------

:- table p / 1.
:- table q / 1.
:- table r / 1.

q(A) :- tnot(p(A)).
p(A) :- tnot(p(A)), tnot(r(A)).
r(a).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p49 "test(p49)." -- [wfs_test]. test(p49). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p49), told)).
