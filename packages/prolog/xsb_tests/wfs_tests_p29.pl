query(p29,w(0),[w(0),u(0)],[w(0)],[]).
%-----------------------------------------------------------

:- table u / 1.
:- table w / 1.

e(s(0),s(s(0))).
e(s(0),0).
e(s(A),s(s(A))) :- e(A,s(A)).
e(s(A),0) :- e(A,0).
w(A) :- tnot(u(A)).
w(A) :- e(B,A), tnot(w(B)).
u(0) :- fail.

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p29 "test(p29)." -- [wfs_test]. test(p29). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p29), told)).
