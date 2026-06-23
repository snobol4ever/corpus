% qsort — quicksort of 50 integers (Warren / van Roy suite).
% Bottleneck: cut (!), multi-clause partition, structure-building recursion.
% Source: SWI-Prolog/bench. Prints the sorted list.
:- initialization(main).
main :- qsort([27,74,17,33,94,18,46,83,65,2,
               32,53,28,85,99,47,28,82,6,11,
               55,29,39,81,90,37,10,0,66,51,
               7,21,85,27,31,63,75,4,95,99,
               11,28,61,74,18,92,40,53,59,8], R, []),
        write(R), nl.
qsort([X|L],R,R0) :- partition(L,X,L1,L2), qsort(L2,R1,R0), qsort(L1,R,[X|R1]).
qsort([],R,R).
partition([X|L],Y,[X|L1],L2) :- X =< Y, !, partition(L,Y,L1,L2).
partition([X|L],Y,L1,[X|L2]) :- partition(L,Y,L1,L2).
partition([],_,[],[]).
