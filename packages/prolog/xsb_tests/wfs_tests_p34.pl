query(p34,p,[a,b,p],[],[a,b,p]).
%-----------------------------------------------------------

:- table a / 0.
:- table b / 0.
:- table p / 0.

a :- tnot(b).
b :- tnot(a).
p :- tnot(p).
p :- tnot(b).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p34 "test(p34)." -- [wfs_test]. test(p34). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p34), told)).
