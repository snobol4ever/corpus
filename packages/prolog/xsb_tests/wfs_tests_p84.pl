query(p84,m,[m,a,b,c,d,r(a)],[a,c],[]).
%-----------------------------------------------------------

:- table a / 0.
:- table b / 0.
:- table c / 0.
:- table d / 0.
:- table m / 0.
:- table r / 1.

m :- c, tnot(a), tnot(r(_A)).
c :- b.
c.
b :- c, d.
a :- tnot(b).
d :- fail.
r(_A) :- fail.

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p84 "test(p84)." -- [wfs_test]. test(p84). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p84), told)).
