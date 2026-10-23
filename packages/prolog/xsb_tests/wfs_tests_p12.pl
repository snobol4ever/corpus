query(p12,win(_A),[win(a),win(b),win(c)],[win(b)],[]).
%-----------------------------------------------------------

:- table win / 1.

win(A) :- m(A,B), tnot(win(B)).
m(a,b).
m(b,a).
m(b,c).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p12 "test(p12)." -- [wfs_test]. test(p12). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p12), told)).
