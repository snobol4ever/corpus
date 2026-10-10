equilibrium_index(List, Index) :-
    append(Front, [_|Back], List),
    sumlist(Front, Sum),
    sumlist(Back,  Sum),
    length(Front, Len),
    Index is Len.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines equilibrium_index/2 and never calls it; the driver lists every equilibrium index of the task's sequence.
:- initialization((findall(I, equilibrium_index([-7, 1, 5, 2, -4, 3, 0], I), Is), writeln(Is))).
