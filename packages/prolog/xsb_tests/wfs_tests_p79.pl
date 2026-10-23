query(p79,p(a),[p(a),p(b),p(c),q(a),q(b),q(c),r(a),r(b),r(c),s(a),s(b),s(c)],[p(a),q(a),q(b),r(b),s(b),s(c)],[]).
%-----------------------------------------------------------

:- table p / 1.
:- table q / 1.
:- table r / 1.
:- table s / 1.

p(A) :- q(A), tnot(r(A)).
q(a).
q(b).
r(A) :- q(A), s(A).
s(b).
s(c).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p79 "test(p79)." -- [wfs_test]. test(p79). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p79), told)).
