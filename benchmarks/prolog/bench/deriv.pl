% deriv — symbolic differentiation (van Roy / D.H.D. Warren). Prints the ops8 derivative.
% Bottleneck: structural recursion + cut + is/2 + integer/1.
% Source: SWI-Prolog/bench (deriv). Prints the derivative of (x+1)*((^(x,2)+2)*(^(x,3)+3)).
% *BENCH kernel=deriv -- PRISTINE KERNEL (CEO-567): the computation and nothing else.
% The work is bench_work/1; the timing bracket and the iteration loop are GENERATED around
% this source by scripts/bench_prolog_wrap.sh and never live in it.  main/0 makes the file a
% real standalone program whose stdout is graded byte-for-byte against deriv.expected (oracle-cut).
:- initialization(main).
bench_work(D) :-
    d((x+1)*((^(x,2)+2)*(^(x,3)+3)),x,D).
main :- bench_work(Res), write(Res), nl.
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
