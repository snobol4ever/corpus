query(p23,(d  ','  p),[p,q,r,s,t,a,b,c,d],[c],[a,b,d]).
%-----------------------------------------------------------

:- table a / 0.
:- table b / 0.
:- table c / 0.
:- table d / 0.
:- table p / 0.
:- table q / 0.
:- table r / 0.
:- table s / 0.
:- table t / 0.

a :- tnot(b), c.
b :- tnot(a).
c.
d :- a, c, a.
p :- tnot(r), q.
p :- tnot(s), r.
p :- t.
q :- p.
r :- q.
r :- tnot(c).
s :- fail.
t :- fail.

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p23 "test(p23)." -- [wfs_test]. test(p23). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p23), told)).
