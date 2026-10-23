query(p85,p(_684200),[a,b,c,d,p(1),p(2),p(3),q(1),q(2),q(3)],[a,b,p(1),p(2),q(1),q(2)],[]).
%-----------------------------------------------------------

:- table a / 0.
:- table b / 0.
:- table c / 0.
:- table d / 0.
:- table p / 1.
:- table q / 1.

p(A) :- a, tnot(c), q(A).
p(1).
a :- b.
b.
c :- b, d.
d :- fail.
q(A) :- p(A).
q(2).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p85 "test(p85)." -- [wfs_test]. test(p85). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p85), told)).
