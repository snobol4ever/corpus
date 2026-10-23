query(p31,(q(_A)  ','  q(b)),[q(a),q(b),r],[],[q(b),r]).
%-----------------------------------------------------------

:- table q / 1.
:- table r / 0.

q(A) :- p(A), eq(A,b).
eq(A,A).
p(a).
p(_A) :- r.
r :- tnot(r).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p31 "test(p31)." -- [wfs_test]. test(p31). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p31), told)).
