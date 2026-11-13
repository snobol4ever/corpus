:- dynamic cnt/1.
cnt(0).
bump :- retract(cnt(N)), N1 is N + 1, assertz(cnt(N1)).
edge(a,b). edge(b,c). edge(c,a). edge(x,y).
:- table leader/1, reach/2.
reach(L, L).
reach(L, T) :- reach(L, T1), edge(T1, T).
leader(N) :- bump, member(N, [a,x]), reach(N, _).
:- table p/1, q/1, lead2/1.
p(1).
p(X) :- q(X).
q(X) :- p(Y), X is Y + 1, X < 4.
lead2(done) :- findall(X, p(X), Xs), findall(Y, q(Y), Ys), assertz(res2(Xs, Ys)).
:- dynamic res2/2.
:- table lead3/1, nest3/1, olda/1.
olda(1).
olda(X) :- nest3(Y), X is Y + 10, X < 14.
nest3(Y) :- olda(Z), Y is Z + 1, Y < 4.
lead3(X) :- olda(X).
:- table slead/2.
slead(X, Y) :- edge(X, Y).
slead(X, Y) :- slead(X, Z), edge(Z, Y).
main :- forall(leader(_), true), cnt(C), findall(T, reach(a,T), L), msort(L, S), write(count(C, S)), nl,
        forall(lead2(_), true), res2(Xs, Ys), msort(Xs, SX), msort(Ys, SY), write(mutual(SX, SY)), nl,
        findall(X, lead3(X), L3), msort(L3, S3), write(older(S3)), nl,
        findall(Y, slead(a, Y), L4), msort(L4, S4), write(self(S4)), nl,
        halt.
:- initialization(main).
