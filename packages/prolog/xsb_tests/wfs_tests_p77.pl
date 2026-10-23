query(p77,p,[p,q,r,s,t],[],[p,q,r,s,t]).
%-----------------------------------------------------------

:- table p / 0.
:- table q / 0.
:- table r / 0.
:- table s / 0.
:- table t / 0.

p :- q.
q :- r.
q :- tnot(t).
r :- s.
s :- p.
t :- r.

% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB wfs_tests/test.sh runs ./gentest.sh wfs_test p77 "test(p77)." -- [wfs_test]. test(p77). told. -- whose answer is the file temp (STAGED.tsv answer=temp-sorted)
:- initialization((consult(wfs_test), test(p77), told)).
