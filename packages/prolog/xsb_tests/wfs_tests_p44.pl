query(p44,w(_684200),[w(a),w(b),w(c),w(d)],[w(c)],[w(a),w(b)]).
%-----------------------------------------------------------

:- table w / 1.

w(A) :- m(A,B), tnot(w(B)).
m(a,b).
m(b,a).
m(b,c).
m(c,d).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p44 "test(p44)." -- [wfs_test]. test(p44). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p44), told)).
