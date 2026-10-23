query(p64,p,[p,q,s,r,t,u,v],[],[p,q,s,r,t,u,v]).
%-----------------------------------------------------------

:- table p / 0.
:- table q / 0.
:- table r / 0.
:- table s / 0.
:- table t / 0.
:- table u / 0.
:- table v / 0.

p :- tnot(q), tnot(r).
p :- tnot(u).
q :- tnot(s).
q :- tnot(u).
s :- tnot(q).
r :- tnot(t).
t :- tnot(r).
u :- tnot(v).
v :- tnot(u).

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p64 "test(p64)." -- [wfs_test]. test(p64). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p64), told)).
