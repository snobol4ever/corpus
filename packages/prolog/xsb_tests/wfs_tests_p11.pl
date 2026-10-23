query(p11,win(_A),[win(a),win(b),win(c),win(d)],[win(b),win(c)],[]).
%-----------------------------------------------------------

:- table win / 1.

win(A) :- m(A,B), tnot(win(B)).
m(a,b).
m(b,c).
m(c,d).
m(b,d).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p11 "test(p11)." -- [wfs_test]. test(p11). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p11), told)).
