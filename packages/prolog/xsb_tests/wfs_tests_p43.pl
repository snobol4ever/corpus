query(p43,w(_684200),[w(a),w(b),w(c),w(d),w(e),w(f),w(g)],[w(b),w(e),w(g)],[]).
%-----------------------------------------------------------

:- table w / 1.

w(A) :- m(A,B), tnot(w(B)).
m(a,b).
m(a,e).
m(b,c).
m(b,d).
m(e,f).
m(e,g).
m(g,h).
m(g,i).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p43 "test(p43)." -- [wfs_test]. test(p43). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p43), told)).
