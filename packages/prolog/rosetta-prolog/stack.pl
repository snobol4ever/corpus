% push( ELEMENT, STACK, NEW )
% True if NEW is [ELEMENT|STACK]
push(ELEMENT,STACK,[ELEMENT|STACK]).

% pop( STACK, TOP, NEW )
% True if TOP and NEW are head and tail, respectively, of STACK
pop([TOP|STACK],TOP,STACK).

% empty( STACK )
% True if STACK is empty
empty([]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines push/3, pop/3 and empty/1 and never calls them; the driver pushes 1, 2, 3, pops them and asks empty/1 between.
:- initialization((empty(S0), push(1, S0, S1), push(2, S1, S2), push(3, S2, S3), format("stack: ~w~n", [S3]), pop(S3, T1, S4), format("popped ~w, stack: ~w~n", [T1, S4]), (empty(S4) -> writeln('empty: yes') ; writeln('empty: no')), pop(S4, T2, S5), pop(S5, T3, S6), format("popped ~w and ~w, stack: ~w~n", [T2, T3, S6]), (empty(S6) -> writeln('empty: yes') ; writeln('empty: no')))).
