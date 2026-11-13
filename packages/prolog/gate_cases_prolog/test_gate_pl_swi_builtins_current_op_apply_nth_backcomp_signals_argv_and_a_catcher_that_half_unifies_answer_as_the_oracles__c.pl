t3 :- throw(f(_, 2)).
p1 :- catch(catch(t3, f(2, 1), (write(inner), nl)), f(1, 2), (write(outer), nl)).
p2 :- catch(catch(t3, f(2, 1), (write(inner), nl)), f(_, 2), (write(outer2), nl)).
p3 :- catch(catch(throw(g(_, _)), g(a, b), (write(ab), nl)), g(X, Y), (write(X-Y), nl)).
:- initialization((p1, p2, p3)).
