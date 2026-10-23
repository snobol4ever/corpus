query(p83,m,[m,a,b,c,d],[m,a,c],[]).
%-----------------------------------------------------------

:- table a / 0.
:- table b / 0.
:- table c / 0.
:- table d / 0.
:- table m / 0.

m :- c, a.
c :- b.
c.
b :- c, d.
a :- tnot(b).
d :- fail.

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p83 "test(p83)." -- [wfs_test]. test(p83). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p83), told)).
