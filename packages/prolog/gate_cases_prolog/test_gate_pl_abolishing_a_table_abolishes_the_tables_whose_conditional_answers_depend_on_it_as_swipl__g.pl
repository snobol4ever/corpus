:- initialization(main).
:- table undef/2, p01/2, p11/2, u1/2, q0/1, q1/1, q2/1, r0/1, r1/1.
undef(A,B):- tnot(undef(A,B)).
p01(A,B):- p11(A,B).
p11(A,B):- u1(A,B).
u1(A,B):- undef(A,B).
q0(X):- q1(X).
q1(X):- q2(X).
q2(1).
r0(X):- r1(X).
r1(X):- undef(X,X).
show(Tag):- findall(G, (current_table(user:G,_), ground(G)), L0), msort(L0, L), findall(x, (current_table(user:G,_), \+ ground(G)), V), length(V, NV), writeq(Tag-L-NV), nl.
err(G):- catch((G, writeq(no_error)), error(E,_), writeq(E)), nl.
main:- ( p01(a,b), fail ; p01(c,d), fail ; q0(_), fail ; r0(e), fail ; true ), show(before),
       abolish_table_subgoals(p11(a,b)), show(p11ab),
       abolish_table_call(q1(_)), show(q1),
       abolish_table_subgoals(u1(c,_), [abolish_tables_transitively]), show(u1c),
       abolish_table_pred(r1/1), show(r1),
       err(abolish_table_call(q0(_), [bad])), halt.
