query(p60,(p(_684220)  ','  q(_684220)),[p(1),p(2),p(3),p(4),q(1),q(2),q(3),q(4),s(1),s(2),s(3),s(4)],[p(2),p(3),p(4),q(3),q(4),s(2)],[]).
%-----------------------------------------------------------

:- table p / 1.
:- table q / 1.
:- table s / 1.

q(A) :- u(A), tnot(s(A)).
q(A) :- q(B), t(A,B).
p(A) :- u(A), tnot(q(A)).
p(A) :- p(B), t(A,B).
u(2).
u(3).
s(2).
t(2,1).
t(3,2).
t(4,3).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p60 "test(p60)." -- [wfs_test]. test(p60). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p60), told)).
