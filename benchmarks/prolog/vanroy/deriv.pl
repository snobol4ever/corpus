% deriv — symbolic differentiation (van Roy / D.H.D. Warren). Prints the ops8 derivative.
% Bottleneck: structural recursion + cut + is/2 + integer/1.
% Source: SWI-Prolog/bench (deriv). Prints the derivative of (x+1)*((^(x,2)+2)*(^(x,3)+3)).
:- initialization(main).
bench__main :- d((x+1)*((^(x,2)+2)*(^(x,3)+3)),x,D), write(D), nl.
d(U+V,X,DU+DV) :- !, d(U,X,DU), d(V,X,DV).
d(U-V,X,DU-DV) :- !, d(U,X,DU), d(V,X,DV).
d(U*V,X,DU*V+U*DV) :- !, d(U,X,DU), d(V,X,DV).
d(U/V,X,(DU*V-U*DV)/(^(V,2))) :- !, d(U,X,DU), d(V,X,DV).
d(^(U,N),X,DU*N*(^(U,N1))) :- !, integer(N), N1 is N-1, d(U,X,DU).
d(-U,X,-DU) :- !, d(U,X,DU).
d(exp(U),X,exp(U)*DU) :- !, d(U,X,DU).
d(log(U),X,DU/U) :- !, d(U,X,DU).
d(X,X,1) :- !.
d(_,_,0).
main :- l__(65536).
l__(N__) :- between(1, N__, _), bench__main, fail.
l__(_).
