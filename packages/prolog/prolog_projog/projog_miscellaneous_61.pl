% see 1.07 of P-99: Ninety-Nine Prolog Problems

f(X,[X]) :- \+ is_list(X).
f([],[]).
f([X|Xs],Zs) :- f(X,Y), f(Xs,Ys), append(Y,Ys,Zs).

%?- f([a, [b, [c, d], e]], X)
% X=[a,b,c,d,e]
%NO

%?- f([a, [b, [c, d], [e, [f, [g, h, i, j, [k, l, m, [[[n, o, p, q, r], s, t], u], v, w, x, [y], z]]]]]], X)
% X=[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z]
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- f([a, [b, [c, d], e]], X)'), nl, '$pj_reset', catch(( ( f([a, [b, [c, d], e]], X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- f([a, [b, [c, d], [e, [f, [g, h, i, j, [k, l, m, [[[n, o, p, q, r], s, t], u], v, w, x, [y], z]]]]]], X)'), nl, '$pj_reset', catch(( ( f([a, [b, [c, d], [e, [f, [g, h, i, j, [k, l, m, [[[n, o, p, q, r], s, t], u], v, w, x, [y], z]]]]]], X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
