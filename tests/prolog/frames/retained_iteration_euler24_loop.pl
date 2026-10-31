% the loop of hakank_swi_euler24 (ProPuzzles) at N=10,000: every iteration leaves two append/3 choice points, so its frames are retained in every Prolog; swipl 9.0.4 holds 592 bytes of local stack per iteration (statistics localused), SCRIP 82e01edf9 about 2,600 bytes of machine stack (passes -s26m, overflows -s24m, mode 3). The row: a retained iteration costs at most twice swipl (-s12m), cto 2026-10-31 CEO-2083.
:- initialization(main).
main :- numlist(0,9,L), find_permutation(1,10000,L,P), write(P), nl.
find_permutation(N,N,P,P).
find_permutation(I,N,P0,P) :- next_higher_permutation(P0,P1), I1 is I+1, find_permutation(I1,N,P1,P).
next_higher_permutation(L,L1) :- reverse3(L,[],L2), append(A,[X,Y|B],L2), X > Y, append(A,[X],C), append(A1,[U|B1],C), U > Y, append(A1,[Y|B1], B2), reverse3([U|B], B2,L1).
reverse3([],R,R).
reverse3([H|T],R,L1) :- reverse3(T,[H|R],L1).
