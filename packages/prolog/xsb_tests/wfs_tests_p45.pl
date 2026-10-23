query(p45,w(_684200),[w(a),w(b),w(c)],[w(b)],[]).
%-----------------------------------------------------------

:- table w / 1.

w(A) :- m(A,B), tnot(w(B)).
m(a,b).
m(b,a).
m(b,c).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p45 "test(p45)." -- [wfs_test]. test(p45). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p45), told)).
