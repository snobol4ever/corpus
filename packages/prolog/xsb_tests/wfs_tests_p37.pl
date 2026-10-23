query(p37,a(_684200,_684204),[a(2,3),a(3,2),a(3,3),p(3,3),e(3,3)],[a(2,3),a(3,2),a(3,3),e(3,3)],[]).
%-----------------------------------------------------------

:- table a / 2.
:- table e / 2.
:- table p / 2.

p(A,B) :- b(A,B).
p(A,B) :- b(A,C), p(C,B).
e(A,B) :- g(A,B).
e(A,B) :- g(A,C), e(C,B).
a(A,B) :- e(A,B), tnot(p(A,B)).
b(1,2).
b(2,1).
g(2,3).
g(3,2).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p37 "test(p37)." -- [wfs_test]. test(p37). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p37), told)).
