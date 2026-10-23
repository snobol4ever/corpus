query(p08, p, [p,q,r,s], [p,q,s], []).
%-------------------------------------

:- table p/0, q/0, r/0, s/0.

p :- q, tnot(r), s.
q.
r :- tnot(s).
s.


% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p08 "test(p08)." -- [wfs_test]. test(p08). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p08), told)).
