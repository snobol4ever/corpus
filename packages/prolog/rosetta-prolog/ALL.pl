%----------------------------------------------------------------- 1 100-doors-1
main :-
    forall(between(1,100,Door), ignore(display(Door))).

% show output if door is open after the 100th pass
display(Door) :-
    status(Door, 100, open),
    format("Door ~d is open~n", [Door]).

% true if Door has Status after Pass is done
status(Door, Pass, Status) :-
    Pass > 0,
    Remainder is Door mod Pass,
    toggle(Remainder, OldStatus, Status),
    OldPass is Pass - 1,
    status(Door, OldPass, OldStatus).
status(_Door, 0, closed).

toggle(Remainder, Status, Status) :-
    Remainder > 0.
toggle(0, open, closed).
toggle(0, closed, open).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%----------------------------------------------------------------- 2 100-doors-2
doors_unoptimized(N) :-
	length(L, N),
	maplist(init, L),
	doors(N, N, L, L1),
	affiche(N, L1).

init(close).

doors(Max, 1, L, L1) :-
	!,
       inverse(1, 1, Max, L, L1).

doors(Max, N, L, L1) :-
	N1 is N - 1,
	doors(Max, N1, L, L2),
	inverse(N, 1, Max, L2, L1).


inverse(N, Max, Max, [V], [V1]) :-
	!,
	0 =:= Max mod N -> inverse(V, V1); V1 = V.

inverse(N, M, Max, [V|T], [V1|T1]) :-
	M1 is M+1,
	inverse(N, M1, Max, T, T1),
	(   0 =:= M mod N -> inverse(V, V1); V1 = V).


inverse(open, close).
inverse(close, open).

affiche(N, L) :-
	forall(between(1, N, I),
	       (   nth1(I, L, open) -> format('Door ~w is open.~n', [I]); true)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines doors_unoptimized/1 and never calls it; the driver runs it on the task's 100 doors.
:- initialization(doors_unoptimized(100)).
%----------------------------------------------------------------- 3 100-doors-3
doors(Num, Passes) :-
    forall(( everyNth(1,Passes,1,Pass)
           , forall((everyNth(Pass,Num,Pass,Door), toggle(Door)))
           ))
  , show(Num)
  .


toggle(Door) :-
    Opened = opened(Door)
  , ( clause(Opened,_) -> retract(Opened)
                        ; asserta(Opened)
    ).


show(Num) :-
    forall(( between(1,Num,Door)
           , (opened(Door) -> State = opened ; State = closed)
           , write(Door), write(' '), write(State), nl
           )).


% utils
forall(X) :- findall(_, X, _).

everyNth(From,To,Step,X) :-
    From =< To
  , ( X = From ; From1 is From + Step, everyNth(From1,To,Step,X) )
  .

main :- doors(100,100), halt.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%----------------------------------------------------------------- 4 100-doors-4
doors_optimized(N) :-
	Max is floor(sqrt(N)),
	forall(between(1, Max, I),
	       (   J is I*I,format('Door ~w is open.~n',[J]))).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines doors_optimized/1 and never calls it; the driver runs it on the task's 100 doors.
:- initialization(doors_optimized(100)).
%--------------------------------------------------------------- 5 10001th-prime
isPrime(2).                 % prime generator
isPrime(N):-
	between(3, inf, N),
	N /\ 1 > 0,             % odd
	M is floor(sqrt(N)) - 1, % reverse 2*I+1
	Max is M div 2,
	forall(between(1, Max, I), N mod (2*I+1) > 0).

do:- Index is 10001,
	findnsols(Index, N, isPrime(N), PrimeList),!,
	last(PrimeList, PrimeAtIndex),
	format('prime(~d) is ~d', [Index, PrimeAtIndex]), nl.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines do/0 and never calls it; the driver calls it once at load.
:- initialization(do).
%-------------------------------------------------------------- 6 15-puzzle-game
% map the sequence of cells
next_cell(1,Y,2,Y).
next_cell(2,Y,3,Y).
next_cell(3,Y,4,Y).
next_cell(4,1,1,2).
next_cell(4,2,1,3).
next_cell(4,3,1,4).

% map the game items, and how to print	
item(1,2,   '  1 ').
item(2,3,   '  2 ').
item(3,4,   '  3 ').
item(4,5,   '  4 ').
item(5,6,   '  5 ').
item(6,7,   '  6 ').
item(7,8,   '  7 ').
item(8,9,   '  8 ').
item(9,10,  '  9 ').
item(10,11, ' 10 ').
item(11,12, ' 11 ').
item(12,13, ' 12 ').
item(13,14, ' 13 ').
item(14,15, ' 14 ').
item(15,0,  ' 15 ').

% Move - find the current blank space, and the new place and swap them
move_1(1,2).
move_1(2,3).
move_1(3,4).

move(up, X, Y, X, Y1) :- move_1(Y1,Y).
move(down, X, Y, X, Y1) :- move_1(Y, Y1).
move(left, X, Y, X1, Y) :- move_1(X1, X).
move(right, X, Y, X1, Y) :- move_1(X, X1).

move(Dir, Board, [p(X1,Y1,0),p(X,Y,P)|B2]) :-
    select(p(X, Y, 0), Board, B1),
    move(Dir, X,Y,X1,Y1),
    select(p(X1, Y1, P), B1, B2).

% Solved - the game is solved if running through the next_cell sequence produces the item sequence.
solved(Board) :-
    select(p(1,1,1),Board,Remaining),
    solved(Remaining,p(1,1,1)).
solved([p(4,4,0)], p(_,_,15)).
solved(Board,p(Xp,Yp,Prev)) :-
    item(Prev,P,_),
    select(p(X,Y,P),Board,Remaining),
    next_cell(Xp,Yp,X,Y),
    solved(Remaining, p(X,Y,P)).

% Print - run through the next_cell sequence printing the found items.
print(Board) :-
    select(p(1,1,P),Board,Remaining),
    nl, write_cell(P),
    print(Remaining,p(1,1)).
print([],_) :- nl.
print(Board,p(X,Y)) :-
    next_cell(X,Y,X1,Y1),
    select(p(X1,Y1,P),Board,Remaining),
    write_cell(P),
    end_line_or_not(X1),
    print(Remaining,p(X1,Y1)).

write_cell(0) :- write('    ').	
write_cell(P) :- item(P,_,W), write(W).

end_line_or_not(1).
end_line_or_not(2).
end_line_or_not(3).
end_line_or_not(4) :- nl.

% Next Move - get the player input.
next_move_by_player(Move) :-
    repeat,
    get_single_char(Char),
    key_move(Char, Move).

key_move(119, up).    % 'w'
key_move(115, down).  % 'd'	
key_move(97, left).   % 'a'
key_move(100, right). % 'd'

% Play - loop over the player moves until solved.
play(Board) :-
    solved(Board) -> (
        print(Board),
        write('You Win!\n'))
    ; (
        print(Board),
        next_move_by_player(Move),
        move(Move, Board, NewBoard),
        play(NewBoard)).

play :-
   test_board(Board),
   play(Board),
   !.

test_board(
   [p(1,1,9),p(2,1,1),p(3,1,4),p(4,1,7),
    p(1,2,6),p(2,2,5),p(3,2,3),p(4,2,2),
    p(1,3,13),p(2,3,10),p(3,3,0),p(4,3,8),
    p(1,4,14),p(2,4,15),p(3,4,11),p(4,4,12)]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines play/0 (the game on its test board, keys w a s d) and never calls it; 15-puzzle-game.in holds the 24 keys that solve the board, one a line (get_single_char/1 takes a line at a time from a non-terminal).
:- initialization(play).
%------------------------------------------------------------- 7 24-game-solve-1
play24(Len, Range, Goal) :-
	game(Len, Range, Goal, L, S),
	maplist(my_write, L),
	format(': ~w~n', [S]).

game(Len, Range, Value, L, S) :-
	length(L, Len),
	maplist(choose(Range), L),
	compute(L, Value, [], S).


choose(Range, V) :-
	V is random(Range) + 1.


write_tree([M], [M]).

write_tree([+, M, N], S) :-
	write_tree(M, MS),
	write_tree(N, NS),
	append(MS, [+ | NS], S).

write_tree([-, M, N], S) :-
	write_tree(M, MS),
	write_tree(N, NS),
	(   is_add(N) -> append(MS, [-, '(' | NS], Temp), append(Temp, ')', S)
	;   append(MS, [- | NS], S)).


write_tree([Op, M, N], S) :-
	member(Op, [*, /]),
	write_tree(M, MS),
	write_tree(N, NS),
	(   is_add(M) -> append(['(' | MS], [')'], TempM)
	;  TempM = MS),
	(   is_add(N) -> append(['(' | NS], [')'], TempN)
	;   TempN = NS),
	append(TempM, [Op | TempN], S).

is_add([Op, _, _]) :-
	member(Op, [+, -]).

compute([Value], Value, [[_R-S1]], S) :-
	write_tree(S1, S2),
	with_output_to(atom(S), maplist(write, S2)).

compute(L, Value, CS, S) :-
	select(M, L, L1),
	select(N, L1, L2),
	next_value(M, N, R, CS, Expr),
	compute([R|L2], Value, Expr, S).

next_value(M, N, R, CS,[[R - [+, M1, N1]] | CS2]) :-
	R is M+N,
	(   member([M-ExprM], CS) -> select([M-ExprM], CS, CS1), M1 = ExprM
	;   M1 = [M], CS1 = CS
	),
	(   member([N-ExprN], CS1) -> select([N-ExprN], CS1, CS2), N1 = ExprN
	;   N1 = [N], CS2 = CS1
	).

next_value(M, N, R, CS,[[R - [-, M1, N1]] | CS2]) :-
	R is M-N,
	(   member([M-ExprM], CS) -> select([M-ExprM], CS, CS1), M1 = ExprM
	;   M1 = [M], CS1 = CS
	),
	(   member([N-ExprN], CS1) -> select([N-ExprN], CS1, CS2), N1 = ExprN
	;   N1 = [N], CS2 = CS1
	).

next_value(M, N, R, CS,[[R - [*, M1, N1]] | CS2]) :-
	R is M*N,
	(   member([M-ExprM], CS) -> select([M-ExprM], CS, CS1), M1 = ExprM
	;   M1 = [M], CS1 = CS
	),
	(   member([N-ExprN], CS1) -> select([N-ExprN], CS1, CS2), N1 = ExprN
	;   N1 = [N], CS2 = CS1
	).

next_value(M, N, R, CS,[[R - [/, M1, N1]] | CS2]) :-
	N \= 0,
	R is rdiv(M,N),
	(   member([M-ExprM], CS) -> select([M-ExprM], CS, CS1), M1 = ExprM
	;   M1 = [M], CS1 = CS
	),
	(   member([N-ExprN], CS1) -> select([N-ExprN], CS1, CS2), N1 = ExprN
	;   N1 = [N], CS2 = CS1
	).

my_write(V) :-
	format('~w ', [V]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): play24/3 draws its digits with random/1; the driver calls the solver compute/4 on fixed digits, the task's own examples.
:- initialization(forall(member(L, [[4,7,8,8], [1,1,1,1], [3,3,8,8]]), (compute(L, 24, [], S) -> format("~w: ~w~n", [L, S]) ; format("~w: no solution~n", [L])))).
%------------------------------------------------- 8 4-rings-or-4-squares-puzzle
:- use_module(library(clpfd)).

% main predicate
my_sum(Min, Max, Top, LL):-
    L = [A,B,C,D,E,F,G],
    L ins Min..Max,
    (   Top == 0
    ->  all_distinct(L)
    ;    true),
    R #= A+B,
    R #= B+C+D,
    R #= D+E+F,
    R #= F+G,
    setof(L, labeling([ff], L), LL).


my_sum_1(Min, Max) :-
    my_sum(Min, Max, 0, LL),
    maplist(writeln, LL).

my_sum_2(Min, Max, Len) :-
    my_sum(Min, Max, 1, LL),
    length(LL, Len).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines my_sum_1/2 and my_sum_2/3 and never calls them; the driver asks the task's three questions (1..7 unique, 3..9 unique, the count over 0..9 non-unique).
:- initialization((my_sum_1(1, 7), nl, my_sum_1(3, 9), nl, my_sum_2(0, 9, N), format("~w~n", [N]))).
%---------------------------------------------------------- 9 a-search-algorithm
:- use_module(library(assoc)).
:- use_module(library(heaps)).

moore_neighbourhood(yx(Y0, X0), yx(Y, X)) :-
    between(-1, 1, XOff),
    X is X0 + XOff,
    between(-1, 1, YOff),
    Y is Y0 + YOff,
    once( XOff \= 0 ; YOff \= 0 ).

barriers([yx(2, 3), yx(2, 4), yx(2, 5), yx(3, 5), yx(4, 2), yx(4, 5),
          yx(5, 2), yx(5, 5), yx(6, 2), yx(6, 3), yx(6, 4), yx(6, 5)]).

astar_search(Start) :-
    barriers(Barriers),
    findall(Coord - MovementCost, (
        between(0, 7, Y),
        between(0, 7, X),
        Coord = yx(Y, X),
        (   ord_memberchk(Coord, Barriers)
        ->  MovementCost = 100
        ;   MovementCost = 1
        )
    ), Pairs),
    ord_list_to_assoc(Pairs, Assoc),
    singleton_heap(Heap, 7, [Start] - 0),
    astar_search(Assoc, Heap, Result),
    display(Assoc, Result).

astar_search(Assoc0, Heap0, Result) :-
    get_from_heap(Heap0, _, [Here | Path] - Length0, Heap1),
    (   Here = yx(7, 7)
    ->  Result = [Here | Path] - Length0
    ;   del_assoc(Here, Assoc0, _, Assoc)
    ->  findall([There, Here | Path] - Length, (
            moore_neighbourhood(Here, There),
            get_assoc(There, Assoc, Length1),
            Length is Length0 + Length1
        ), NextSteps),
        foldl([S, H0, H] >> (
            S = [yx(Y, X) | _] - L,
            Heuristic is max(abs(7 - Y), abs(7 - X)) + L,
            add_to_heap(H0, Heuristic, S, H)
        ), NextSteps, Heap1, Heap),
        astar_search(Assoc, Heap, Result)
    ;   astar_search(Assoc0, Heap1, Result)
    ).

display(Assoc, Path - Length) :-
    format("Optimal path length: ~d~n", [Length]),
    writeln(Path),
    nl,
    foreach(( between(0, 7, Y), between(0, 7, X), Here = yx(Y, X) ), (
        (   memberchk(Here, Path)
        ->  write('O')
        ;   get_assoc(Here, Assoc, 100)
        ->  write('#')
        ;   write('.')
        ),
        (   X = 7
        ->  nl
        ;   true
        )
    )).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines astar_search/1 and never calls it; the driver searches from the task's start (0,0) to (7,7).
:- initialization(astar_search(yx(0, 0))).
%---------------------------------------------------------------------- 10 a_b-1
plus :-
    read_line_to_codes(user_input,X),
    atom_codes(A, X),
    atomic_list_concat(L, ' ', A),
    maplist(atom_number, L, LN),
    sumlist(LN, N),
    write(N).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines plus/0 (A+B from a line of input) and never calls it; a_b-1.in holds the task's line 2 3.
:- initialization((plus, nl)).
%---------------------------------------------------- 11 abbreviations-automatic
minimum_abbreviation_length(Day_names, Min_length):-
	sort(Day_names, Sorted_names),
	minimum_abbreviation_length(Sorted_names, Min_length, 1).

minimum_abbreviation_length([_], Min_length, Min_length):- !.
minimum_abbreviation_length([Name1, Name2|Rest], Min_length, M1):-
	common_prefix_length(Name1, Name2, Length),
	M2 is max(M1, Length + 1),
	minimum_abbreviation_length([Name2|Rest], Min_length, M2).

common_prefix_length(String1, String2, Length):-
	string_chars(String1, Chars1),
	string_chars(String2, Chars2),
	common_prefix_length1(Chars1, Chars2, Length, 0).

common_prefix_length1([], _, Length, Length):-!.
common_prefix_length1(_, [], Length, Length):-!.
common_prefix_length1([C1|_], [C2|_], Length, Length):-
	C1 \= C2,
	!.
common_prefix_length1([C|Chars1], [C|Chars2], Length, L1):-
	L2 is L1 + 1,
	common_prefix_length1(Chars1, Chars2, Length, L2).

to_upper_case([], []):-!.
to_upper_case([String|S], [Upper_case|U]):-
    string_upper(String, Upper_case),
    to_upper_case(S, U).

process_line(""):-
    nl,
    !.
process_line(Line):-
    split_string(Line, "\s\t", "\s\t", Day_names),
    to_upper_case(Day_names, Upper),
    minimum_abbreviation_length(Upper, Length),
    writef('%w %w\n', [Length, Line]).

process_stream(Stream):-
    read_line_to_string(Stream, String),
    String \= end_of_file,
    !,
    process_line(String),
    process_stream(Stream).
process_stream(_).

process_file(File):-
    open(File, read, Stream),
    process_stream(Stream),
    close(Stream).

main:-
    process_file("days_of_week.txt").

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): main/0 reads days_of_week.txt, which neither the task nor this package ships; the driver feeds the same reader, process_stream/1, the day-name lines in abbreviations-automatic.in.
:- initialization(process_stream(user_input)).
%--------------------------------------------------------- 12 abbreviations-easy
:- initialization(main).

command_table("Add ALTer  BAckup Bottom  CAppend Change SCHANGE  CInsert CLAst COMPress COpy
COUnt COVerlay CURsor DELete CDelete Down DUPlicate Xedit EXPand EXTract Find
NFind NFINDUp NFUp CFind FINdup FUp FOrward GET Help HEXType Input POWerinput
Join SPlit SPLTJOIN  LOAD  Locate CLocate  LOWercase UPPercase  LPrefix MACRO
MErge MODify MOve MSG Next Overlay PARSE PREServe PURge PUT PUTD  Query  QUIT
READ  RECover REFRESH RENum REPeat  Replace CReplace  RESet  RESTore  RGTLEFT
RIght LEft  SAVE  SET SHift SI  SORT  SOS  STAck STATus  TOP TRAnsfer Type Up").

validate("", _, "") :- !.

validate(Word, Commands, Result) :-
    member(Command, Commands),
    string_concat(Prefix, Suffix, Command),
    string_upper(Prefix, Prefix),
    string_lower(Suffix, Suffix),
    string_lower(Word, LowWord),
    string_lower(Prefix, LowPrefix),
    string_concat(LowPrefix, _, LowWord),
    string_lower(Command, LowCommand),
    string_concat(LowWord, _, LowCommand),
    string_upper(Command, Result),
    !.

validate(_, _, "*error*").

main :-
    current_prolog_flag(argv, Args),
    command_table(Table),
    split_string(Table, " \t\n", "", Commands),
    forall(member(Arg, Args), (
        atom_string(Arg, Word),
        validate(Word, Commands, Result),
        format("~w ", Result)
    )),
    nl.
%-------------------------------------------------------------- 13 abc-problem-1
abc_problem :-
   maplist(abc_problem, ['', 'A', bark, bOOk, treAT, 'COmmon', sQuaD, 'CONFUSE']).


abc_problem(Word) :-
   L = [[b,o],[x,k],[d,q],[c,p],[n,a],[g,t],[r,e],[t,g],[q,d],[f,s],
        [j,w],[h,u],[v,i],[a,n],[o,b],[e,r],[f,s],[l,y],[p,c],[z,m]],

   (   abc_problem(L, Word)
   ->  format('~w OK~n', [Word])
   ;   format('~w KO~n', [Word])).

abc_problem(L, Word) :-
   atom_chars(Word, C_Words),
   maplist(downcase_atom, C_Words, D_Words),
   can_makeword(L, D_Words).

can_makeword(_L, []).

can_makeword(L, [H | T]) :-
   (   select([H, _], L, L1); select([_, H], L, L1)),
   can_makeword(L1, T).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines abc_problem/0 and never calls it; the driver calls it once at load.
:- initialization(abc_problem).
%---------------------- 14 abundant-deficient-and-perfect-number-classifications
proper_divisors(1, []) :- !.
proper_divisors(N, [1|L]) :-
	FSQRTN is floor(sqrt(N)),
	proper_divisors(2, FSQRTN, N, L).

proper_divisors(M, FSQRTN, N, [MS|L]) :-
	between(M, FSQRTN, D1),
	N mod D1 =:= 0, !,
	D2 is N//D1, % must be integer
	( D1 < D2
	  ->
	    MS is D1 + D2, % already sum here
 	    M2 is D1 + 1,
	    proper_divisors(M2, FSQRTN, N, L)
	  ;
	    MS is D1, L = [] % D1 only once
	).
proper_divisors(_, _FSQRTN, _, []) :- !.

dpa(1, [1], [], []) :-
	!.
dpa(N, D, P, A) :-
	N > 1,
	proper_divisors(N, PN),
	sum_list(PN, SPN),
	compare(VGL, SPN, N),
	dpa(VGL, N, D, P, A).

dpa(<, N, [N|D], P, A) :- N1 is N-1, dpa(N1, D, P, A).
dpa(=, N, D, [N|P], A) :- N1 is N-1, dpa(N1, D, P, A).
dpa(>, N, D, P, [N|A]) :- N1 is N-1, dpa(N1, D, P, A).


dpa(N) :-
	T0 is cputime,
	dpa(N, D, P, A),
	Dur is cputime-T0,
	length(D, LD),
	length(P, LP),
	length(A, LA),
	format("deficient: ~d~n abundant: ~d~n  perfect: ~d~n",
		   [LD, LA, LP]),
	format("took ~f seconds~n", [Dur]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): dpa/1 also prints its cputime, which no ref can hold; the driver calls dpa/4 on the task's 1..20000 and prints dpa/1's three counts in dpa/1's own format.
:- initialization((dpa(20000, D, P, A), length(D, LD), length(P, LP), length(A, LA), format("deficient: ~d~n abundant: ~d~n  perfect: ~d~n", [LD, LA, LP]))).
%------------------------------------------------------- 15 ackermann-function-1
:- table ack/3. % memoization reduces the execution time of ack(4,1,X) from several
                % minutes to about one second on a typical desktop computer.
ack(0, N, Ans) :- Ans is N+1.
ack(M, 0, Ans) :- M>0, X is M-1, ack(X, 1, Ans).
ack(M, N, Ans) :- M>0, N>0, X is M-1, Y is N-1, ack(M, Y, Ans2), ack(X, Ans2, Ans).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines ack/3 and never calls it; the driver prints A(m, n) for m 0..3 and n 0..4.
:- initialization(forall(between(0, 3, M), (forall(between(0, 4, N), (ack(M, N, A), format("~w ", [A]))), nl))).
%------------------------------------------------------- 16 ackermann-function-2
ack(0,N,s(N)).
ack(s(M),0,P):- ack(M,s(0),P).
ack(s(M),s(N),P):- ack(s(M),N,S), ack(M,S,P).

% Peano's first axiom in Prolog is that s(0) AND s(s(N)):- s(N)
% Thanks to this we don't need explicit N > 0 checks.
% Nor explicit arithmetic operations like X is M-1.
% Recursion and unification naturally decrement s(N) to N.
% But: Prolog clauses are relations and cannot be replaced by their result, like functions.
% Because of this we do need an extra argument to hold the output of the function.
% And we also need an additional call to the function in the last clause.

% Example input/output:
% ?- ack(s(0),s(s(0)),P).
% P = s(s(s(s(0)))) ;
% false.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines ack/3 over successor numerals and never calls it; the driver runs its own example ack(s(0),s(s(0)),P) and one more.
:- initialization(forall(member(M-N, [s(0)-s(s(0)), s(s(0))-s(0)]), (ack(M, N, P), format("~w~n", [P])))).
%------------------------------------------------------ 17 aks-test-for-primes-2
% To generate the n-th row of a Pascal triangle
% pascal(+N, Row)
pascal(0, [1]).
pascal(N, Row) :-
  N > 0, optpascal( [1, N|Xs] ),
  !,
  pascalize( [1, N|Xs], Row ).

pascalize( Opt, Row ) :-
  % if Opt ends in a pair, then peel off the pair:
  ( append(X, [R,R], Opt) -> true ; append(X, [R], Opt) ),
  reverse(X, Rs),
  append( Opt, Rs, Row ).

% optpascal(-X) generates optpascal lines:
optpascal(X) :-
  optpascal_successor( [], X).

% optpascal_successor(+P, -Q) is true if Q is an optpascal list beneath the optpascal list P:
optpascal_successor(P, Q) :-
  optpascal(P, NextP),
  (Q = NextP ; optpascal_successor(NextP, Q)).

% optpascal(+Row, NextRow) is true if Row and NextRow are adjacent rows in the Pascal triangle.
% optpascal(+Row, NextRow) where the optpascal representation is used
optpascal(X, [1|Y]) :-
  add_pairs(X, Y).

% add_pairs(+OptPascal, NextOptPascal) is a helper function for optpascal/2.
% Given one OptPascal list, it generates the next by adding adjacent
% items, but if the last two items are unequal, then their sum is
% repeated.  This is intended to be a deterministic predicate, and to
% avoid a probable compiler limitation, we therefore use one cut.
add_pairs([], []).
add_pairs([X], [X]).
add_pairs([X,Y], Ans) :-
  S is X + Y,
  (X = Y -> Ans=[S] ; Ans=[S,S]),
  !.  % To overcome potential limitation of compiler

add_pairs( [X1, X2, X3|Xs], [S|Ys]) :-
  S is X1 + X2,
  add_pairs( [X2, X3|Xs], Ys).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines pascal/2 and never calls it; the driver prints the rows 0..7 the task asks for.
:- initialization(forall(between(0, 7, N), (pascal(N, R), format("~w: ~w~n", [N, R])))).
%------------------------------------------------------ 18 aks-test-for-primes-7
main :- task1(8), nl, task2(50), halt.

task1(N) :-
    pascal(Z),
    length(Rows, N),
    prefix(Rows, Z),
    forall(member(Row, Rows),
        (length(Row, K), succ(DecK, K),
        binomial(x, -1, Row, Expr),
        format("(x-1)**~w = ~w~n", [DecK, Expr]))).

task2(Upto) :-
    primes_upto(Upto, Ps),
    format("The primes upto ~w (via AKS) are: ~p~n", [Upto, Ps]).

pascal(Lz) :-
    lazy_list(pascal_row, [], Lz).

pascal_row([], R1, R1) :- R1 = [1], !.
pascal_row(R0, R1, R1) :-
    sum_adj(R0, Next), R1 = [1|Next].

sum_adj(L, L) :- L = [_], !.
sum_adj([A|As], [C|Cs]) :-
    As = [B|_], C is A + B,
    sum_adj(As, Cs).

% First part of task -- create textual representation of (x-1)^n
%  here we generate expression trees
%
binomial(A, B, Coefs, Expr) :-
    length(Coefs, N), succ(DecN, N),
    binomial(B, DecN, A, 0, Coefs, Exp0),
    reduce(Exp0, Exp1),
    addition_to_subtraction(Exp1, Expr).

binomial(_, _, _, _, [], 0) :- !.
binomial(A, PowA, B, PowB, [N|Ns], Ts + T) :-
    T = N * A**PowA * B**PowB,
    IncPow is PowB + 1,
    DecPow is PowA - 1,
    binomial(A, DecPow, B, IncPow, Ns, Ts).

addition_to_subtraction(A + B, X) :-
    addition_to_subtraction(A, C),
    (make_positive(B, D) -> X = C - D; X = C + B), !.
addition_to_subtraction(X, X).

make_positive(N, Term) :- integer(N), N < 0, !, Term is -N.
make_positive(A*B, Term) :-
    make_positive(A, PosA),
    (PosA = 1 -> Term = B, !; Term = PosA*B).

reduce(A, C) :-
    simplify(A, B),
    (B = A -> C = A; reduce(B, C)).

simplify(_**0, 1) :- !.
simplify(1**_, 1) :- !.
simplify(-1**N, Z) :- integer(N), (0 is N /\ 1 -> Z = 1; Z = -1), !.
simplify(X**1, X) :- !.

simplify(0 + A, A) :- !.
simplify(A + 0, A) :- !.
simplify(A + B, C) :-
    integer(A),
    integer(B), !,
    C is A + B.
simplify(A + B, C + D) :- !,
    simplify(A, C),
    simplify(B, D).

simplify(0 * _, 0) :- !.
simplify(_ * 0, 0) :- !.
simplify(1 * A, A) :- !.
simplify(A * 1, A) :- !.
simplify(A * B, C) :-
    integer(A),
    integer(B), !,
    C is A * B.
simplify(A * B, C * D) :- !,
    simplify(A, C),
    simplify(B, D).

simplify(X, X).

% Second part of task -- Use the coefficients of Pascal's Triangle to check primality.
%

primerow([1, N| Rest]) :- primerow(N, Rest).

primerow(_, End) :- (End = []; End = [1]), !.
primerow(_, [A,A|_]) :- !.  % end when we've seen half the list.
primerow(N, [A|As]) :- A mod N =:= 0, primerow(N, As).

second([_,N|_], N).

primes_upto(N, Ps) :-
    pascal(Z),
    Z = [_, _ | Rows], % we only care about 2nd row on up. ([1,2,1])
    succ(DecN, N), length(CheckRows, DecN), prefix(CheckRows, Rows),
    include(primerow, CheckRows, PrimeRows),
    maplist(second, PrimeRows, Ps).

?- main.
%-------------------------------------------------------------- 19 align-columns
% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
aligner :-
	L ="Given$a$text$file$of$many$lines,$where$fields$within$a$line$
are$delineated$by$a$single$'dollar'$character,$write$a$program
that$aligns$each$column$of$fields$by$ensuring$that$words$in$each$
column$are$separated$by$at$least$one$space.
Further,$allow$for$each$word$in$a$column$to$be$either$left$
justified,$right$justified,$or$center$justified$within$its$column.",

	% read the lines and the words
	% compute the length of the longuest word.
	% LP is the list of lines,
	% each line is a list of words
	parse(L, 0, N, LP, []),

	% we need to add 1 to aligned
	N1 is N+1,
	% words will be left aligned
	sformat(AL, '~~w~~t~~~w|', [N1]),
	% words will be centered
	sformat(AC, '~~t~~w~~t~~~w|', [N1]),
	% words will be right aligned
	sformat(AR, '~~t~~w~~~w|', [N1]),

	write('Left justified :'), nl,
	maplist(affiche(AL), LP), nl,
	write('Centered justified :'), nl,
	maplist(affiche(AC), LP), nl,
	write('Right justified :'), nl,
	maplist(affiche(AR), LP), nl.

affiche(F, L) :-
	maplist(my_format(F), L),
	nl.

my_format(_F, [13]) :-
	nl.

my_format(F, W) :-
	string_to_atom(W,AW),
	sformat(AF, F, [AW]),
	write(AF).


parse([], Max, Max) --> [].

parse(T, N, Max) -->
	{ parse_line(T, 0, N1, T1, L, []),
	  (   N1 > N -> N2 = N1; N2 = N)},
	[L],
	parse(T1, N2, Max).

parse_line([], NF, NF, []) --> [].

parse_line([H|TF], NF, NF, TF) -->
	{code_type(H, end_of_line), !},
	[].


parse_line(T, N, NF, TF) -->
	{ parse_word(T, 0, N1, T1, W, []),
	  (   N1 > N -> N2 = N1; N2 = N)},
	[W],
	parse_line(T1, N2, NF, TF).

% 36 is the code of '$'
parse_word([36|T], N, N, T) -->
	{!},
	[].

parse_word([H|T], N, N, [H|T]) -->
	{code_type(H, end_of_line), !},
	[].

parse_word([], N, N, []) --> [].

parse_word([H|T], N1, NF, TF) -->
	[H],
	{N2 is  N1 + 1},
	parse_word(T, N2, NF, TF).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines aligner/0 and never calls it; written for code lists, so the flag is set at its head and the driver calls it once at load.
:- initialization(aligner).
%------------------------------------------- 20 aliquot-sequence-classifications
% See https://en.wikipedia.org/wiki/Divisor_function
divisor_sum(N, Total):-
    divisor_sum_prime(N, 2, 2, Total1, 1, N1),
    divisor_sum(N1, 3, Total, Total1).

divisor_sum(1, _, Total, Total):-
    !.
divisor_sum(N, Prime, Total, Running_total):-
    Prime * Prime =< N,
    !,
    divisor_sum_prime(N, Prime, Prime, P, 1, M),
    Next_prime is Prime + 2,
    Running_total1 is P * Running_total,
    divisor_sum(M, Next_prime, Total, Running_total1).
divisor_sum(N, _, Total, Running_total):-
    Total is (N + 1) * Running_total.

divisor_sum_prime(N, Prime, Power, Total, Running_total, M):-
    0 is N mod Prime,
    !,
    Running_total1 is Running_total + Power,
    Power1 is Power * Prime,
    N1 is N // Prime,
    divisor_sum_prime(N1, Prime, Power1, Total, Running_total1, M).
divisor_sum_prime(N, _, _, Total, Total, N).

% See https://en.wikipedia.org/wiki/Aliquot_sequence
aliquot_sequence(N, Limit, Sequence, Class):-
    aliquot_sequence(N, Limit, [N], Sequence, Class).

aliquot_sequence(_, 0, _, [], 'non-terminating'):-!.
aliquot_sequence(_, _, [0|_], [0], terminating):-!.
aliquot_sequence(N, _, [N, N|_], [], perfect):-!.
aliquot_sequence(N, _, [N, _, N|_], [N], amicable):-!.
aliquot_sequence(N, _, [N|S], [N], sociable):-
    memberchk(N, S),
    !.
aliquot_sequence(_, _, [Term, Term|_], [], aspiring):-!.
aliquot_sequence(_, _, [Term|S], [Term], cyclic):-
    memberchk(Term, S),
    !.
aliquot_sequence(N, Limit, [Term|S], [Term|Rest], Class):-
    divisor_sum(Term, Sum),
    Term1 is Sum - Term,
    L1 is Limit - 1,
    aliquot_sequence(N, L1, [Term1, Term|S], Rest, Class).

write_aliquot_sequence(N, Sequence, Class):-
    writef('%w: %w, sequence:', [N, Class]),
    write_aliquot_sequence(Sequence).

write_aliquot_sequence([]):-
    nl,
    !.
write_aliquot_sequence([Term|Rest]):-
    writef(' %w', [Term]),
    write_aliquot_sequence(Rest).

main:-
    between(1, 10, N),
    aliquot_sequence(N, 16, Sequence, Class),
    write_aliquot_sequence(N, Sequence, Class),
    fail.
main:-
    member(N, [11, 12, 28, 496, 220, 1184, 12496, 1264460, 790, 909, 562, 1064, 1488]),
    aliquot_sequence(N, 16, Sequence, Class),
    write_aliquot_sequence(N, Sequence, Class),
    fail.
main.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%------------------------------------------------------------- 21 almost-prime-1
% almostPrime(K, +Take, List) succeeds if List can be unified with the
% first Take K-almost-primes.
% Notice that K need not be specified.
% To avoid having to cache or recompute the first Take primes, we define
% almostPrime/3 in terms of almostPrime/4 as follows:
%
almostPrime(K, Take, List) :-
  % Compute the list of the first Take primes:
  nPrimes(Take, Primes),
  almostPrime(K, Take, Primes, List).

almostPrime(1, Take, Primes, Primes).

almostPrime(K, Take, Primes, List) :-
  generate(2, K),  % generate K >= 2
  K1 is K - 1,
  almostPrime(K1, Take, Primes, L),
  multiplylist( Primes, L, Long),
  sort(Long, Sorted), % uniquifies
  take(Take, Sorted, List).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in three blocks: this block's almostPrime/3 is the entry and calls nPrimes/2, multiplylist/3 and take/3 of almost-prime-2 and generate/2 of almost-prime-3, so the driver includes both and prints the task's first ten k-almost primes for k = 1..5.
:- include('almost-prime-2.pl').
:- include('almost-prime-3.pl').
:- initialization(forall(between(1, 5, K), (almostPrime(K, 10, L), format("~w: ~w~n", [K, L])))).
%------------------------------------------------------------------------ 22 amb
% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
amb(E, [E|_]).
amb(E, [_|ES]) :- amb(E, ES).

joins(Left, Right) :-
  append(_, [T], Left),
  append([R], _, Right),
  ( T \= R -> amb(_, [])  % (explicitly using amb fail as required)
  ; true ).

amb_example([Word1, Word2, Word3, Word4]) :-
  amb(Word1, ["the","that","a"]),
  amb(Word2, ["frog","elephant","thing"]),
  amb(Word3, ["walked","treaded","grows"]),
  amb(Word4, ["slowly","quickly"]),
  joins(Word1, Word2),
  joins(Word2, Word3),
  joins(Word3, Word4).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines amb_example/1 (the task's four word sets) and never calls it; written for code lists (append/3 on "..."), so the flag is set at its head and the driver prints the one sentence amb finds.
:- initialization((amb_example([W1, W2, W3, W4]), format("~s ~s ~s ~s~n", [W1, W2, W3, W4]))).
%----------------------------------------------------------- 23 amicable-pairs-1
divisor(N, Divisor) :-
    UpperBound is round(sqrt(N)),
    between(1, UpperBound, D),
    0 is N mod D,
    (
        Divisor = D
    ;
        LargerDivisor is N/D,
        LargerDivisor =\= D,
        Divisor = LargerDivisor
    ).

proper_divisor(N, D) :-
    divisor(N, D),
    D =\= N.

assoc_num_divsSum_in_range(Low, High, Assoc) :-
    findall( Num-DivSum,
             ( between(Low, High, Num),
               aggregate_all( sum(D),
                              proper_divisor(Num, D),
                              DivSum )),
             Pairs ),
    list_to_assoc(Pairs, Assoc).

get_amicable_pair(Assoc, M-N) :-
    gen_assoc(M, Assoc, N),
    M < N,
    get_assoc(N, Assoc, M).

amicable_pairs_under_20000(Pairs) :-
    assoc_num_divsSum_in_range(1,20000, Assoc),
    findall(P, get_amicable_pair(Assoc, P), Pairs).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines amicable_pairs_under_20000/1 and never calls it; the driver prints the task's amicable pairs below 20000, one pair a line.
:- initialization((amicable_pairs_under_20000(Ps), forall(member(M-N, Ps), format("~w ~w~n", [M, N])))).
%---------------------------------------------------------------- 24 anti-primes
divcount(N, Count) :- divcount(N, 1, 0, Count).

divcount(N, D, C, C) :- D*D > N, !.
divcount(N, D, C, Count) :-
    succ(D, D2),
    divs(N, D, A), plus(A, C, C2),
    divcount(N, D2, C2, Count).

divs(N, D, 0) :- N mod D =\= 0, !.
divs(N, D, 1) :- D*D =:= N, !.
divs(_, _, 2).


antiprimes(N, L) :- antiprimes(N, 1, 0, [], L).

antiprimes(0, _, _, L, R) :- reverse(L, R), !.
antiprimes(N, M, Max, L, R) :-
    divcount(M, Count),
    succ(M, M2),
    (Count > Max
        -> succ(N0, N), antiprimes(N0, M2, Count, [M|L], R)
         ; antiprimes(N, M2, Max, L, R)).

main :-
    antiprimes(20, X),
    write("The first twenty anti-primes are "), write(X), nl,
    halt.

?- main.
%--------------------------------- 25 append-numbers-at-same-position-in-strings
% Define the initial lists
list1([1,2,3,4,5,6,7,8,9]).
list2([10,11,12,13,14,15,16,17,18]).
list3([19,20,21,22,23,24,25,26,27]).

% Concatenate the elements of the lists
concat_lists([], [], [], []).
concat_lists([H1|T1], [H2|T2], [H3|T3], [H|T]) :-
    atom_concat(H1, H2, Tmp1),
    atom_concat(Tmp1, H3, Tmp),
    atom_number(Tmp, H),
    concat_lists(T1, T2, T3, T).

% Print the resulting list
print_list([]).
print_list([H|T]) :-
    write(H), write(' '),
    print_list(T).

% Main program
main :-
    list1(L1),
    list2(L2),
    list3(L3),
    concat_lists(L1, L2, L3, CatList),
    print_list(CatList).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%----------------------------------- 26 arbitrary-precision-integers-included--1
task(Length) :-
    N is 5^4^3^2,

    number_codes(N, Codes),
    append(`62060698786608744707`, _,  Codes),
    append(_, `92256259918212890625`, Codes),

    length(Codes, Length).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines task/1 (5^4^3^2, its first and last 20 digits checked, its digit count returned) and never calls it; the driver prints the digit count.
:- initialization((task(L), format("~w~n", [L]))).
%------------------------------------------------------ 27 arithmetic-evaluation
% Lexer
 numeric(X) :- 48 =< X, X =< 57.
 not_numeric(X) :- 48 > X ; X > 57.

 lex1([], []).
 lex1([40|Xs], ['('|Ys]) :- lex1(Xs, Ys).
 lex1([41|Xs], [')'|Ys]) :- lex1(Xs, Ys).
 lex1([43|Xs], ['+'|Ys]) :- lex1(Xs, Ys).
 lex1([45|Xs], ['-'|Ys]) :- lex1(Xs, Ys).
 lex1([42|Xs], ['*'|Ys]) :- lex1(Xs, Ys).
 lex1([47|Xs], ['/'|Ys]) :- lex1(Xs, Ys).
 lex1([X|Xs], [N|Ys]) :- numeric(X), N is X - 48, lex1(Xs, Ys).

 lex2([], []).
 lex2([X], [X]).
 lex2([Xa,Xb|Xs], [Xa|Ys]) :- atom(Xa), lex2([Xb|Xs], Ys).
 lex2([Xa,Xb|Xs], [Xa|Ys]) :- number(Xa), atom(Xb), lex2([Xb|Xs], Ys).
 lex2([Xa,Xb|Xs], [Y|Ys]) :- number(Xa), number(Xb), N is Xa * 10 + Xb, lex2([N|Xs], [Y|Ys]).

 % Parser
 oper(1, *, X, Y, X * Y). oper(1, /, X, Y, X / Y).
 oper(2, +, X, Y, X + Y). oper(2, -, X, Y, X - Y).

 num(D) --> [D], {number(D)}.

 expr(0, Z) --> num(Z).
 expr(0, Z) --> {Z = (X)}, ['('], expr(2, X), [')'].

 expr(N, Z) --> {succ(N0, N)}, {oper(N, Op, X, Y, Z)}, expr(N0, X), [Op], expr(N, Y).
 expr(N, Z) --> {succ(N0, N)}, expr(N0, Z).

 parse(Tokens, Expr) :- expr(2, Expr, Tokens, []).


 % Evaluator
 evaluate(E, E) :- number(E).
 evaluate(A + B, E) :- evaluate(A, Ae), evaluate(B, Be), E is Ae + Be.
 evaluate(A - B, E) :- evaluate(A, Ae), evaluate(B, Be), E is Ae - Be.
 evaluate(A * B, E) :- evaluate(A, Ae), evaluate(B, Be), E is Ae * Be.
 evaluate(A / B, E) :- evaluate(A, Ae), evaluate(B, Be), E is Ae / Be.

 % Solution
 calculator(String, Value) :-
    string_codes(String, Codes),
    lex1(Codes, Tokens1),
    lex2(Tokens1, Tokens2),
    parse(Tokens2, Expression),
    evaluate(Expression, Value).

 % Example use
 % calculator("(3+50)*7-9", X).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines calculator/2 and never calls it; the driver runs the file's own example calculator("(3+50)*7-9", X).
:- initialization((calculator("(3+50)*7-9", X), format("~w~n", [X]))).
%------------------------------------------------------- 28 arithmetic-integer-1
print_expression_and_result(M, N, Operator) :-
    Expression =.. [Operator, M, N],
    Result is Expression,
    format('~w ~8|is ~d~n', [Expression, Result]).

arithmetic_integer :-
    read(M),
    read(N),
    maplist( print_expression_and_result(M, N), [+,-,*,//,rem,^] ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines arithmetic_integer/0 (reads two integers with read/1) and never calls it; arithmetic-integer-1.in holds -7 and 2, so the quotient's rounding and the remainder's sign show.
:- initialization(arithmetic_integer).
%------------------------------------------------------------------- 29 arrays-1
singleassignment:-
    functor(Array,array,100), % create a term with 100 free Variables as arguments
                              % index of arguments start at 1
    arg(1 ,Array,a),          % put an a at position 1
    arg(12,Array,b),          % put an b at position 12
    arg(1 ,Array,Value1),     % get the value at position 1
    print(Value1),nl,         % will print Value1 and therefore a followed by a newline
    arg(4 ,Array,Value2),     % get the value at position 4 which is a free Variable
    print(Value2),nl.         % will print that it is a free Variable followed by a newline

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): singleassignment/0 prints arg 1 (a) and arg 4, a free variable whose printed name (_NNN) is an address; the driver captures its output and prints the free variable as _.
:- initialization((with_output_to(string(S), singleassignment), split_string(S, "\n", "", [V1, V2|_]), format("~w~n", [V1]), (sub_string(V2, 0, 1, _, "_") -> writeln('_') ; writeln(V2)))).
%------------------------------------------------------------------- 30 arrays-2
destructive:-
    functor(Array,array,100), % create a term with 100 free Variables as arguments
                              % index of arguments start at 1
    setarg(1 ,Array,a),       % put an a at position 1
    setarg(12,Array,b),       % put an b at position 12
    setarg(1, Array,c),       % overwrite value at position 1 with c
    arg(1 ,Array,Value1),     % get the value at position 1
    print(Value1),nl.         % will print Value1 and therefore c followed by a newline

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines destructive/0 and never calls it; the driver calls it once at load.
:- initialization(destructive).
%------------------------------------------------------------------- 31 arrays-3
listvariant:-
    length(List,100),          % create a list of length 100
    nth1(1 ,List,a),           % put an a at position 1 , nth1/3 uses indexing from 1, nth0/3 from 0
    nth1(12,List,b),           % put an b at position 3
    append(List,[d],List2),    % append an d at the end , List2 has 101 elements
    length(Add,10),            % create a new list of length 10
    append(List2,Add,List3),   % append 10 free variables to List2 , List3 now has 111 elements
    nth1(1 ,List3,Value),      % get the value at position 1
    print(Value),nl.           % will print out a

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines listvariant/0 and never calls it; the driver calls it once at load.
:- initialization(listvariant).
%----------------------------------------------------------- 32 ascending-primes
isPrime(2).
isPrime(N):-
	between(3, inf, N),
	N /\ 1 > 0,             % odd
	M is floor(sqrt(N)) - 1, % reverse 2*I+1
	Max is M div 2,
	forall(between(1, Max, I), N mod (2*I+1) > 0).

combi(0, _, Num, Num).
combi(N, [X|T], Acc, Num):-
    N > 0,
    N1 is N - 1,
    Acc1 is Acc * 10 + X,
    combi(N1, T, Acc1, Num).
combi(N, [_|T], Acc, Num):-
    N > 0,
    combi(N, T, Acc, Num).

ascPrimes(Num):-
	between(1, 9, N),
	combi(N, [1, 2, 3, 4, 5, 6, 7, 8, 9], 0, Num),
	isPrime(Num).

showList(List):-
	findnsols(10, DPrim, (member(DPrim, List), writef('%9r', [DPrim])), _),
	nl,
	fail.
showList(_).
    	
do:-findall(DPrim, ascPrimes(DPrim), DList),
	showList(DList).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines do/0 and never calls it; the driver calls it once at load.
:- initialization(do).
%----------------------------------------------------------------- 33 assertions
test(A):-
    assertion(A==42).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines test/1 (assertion(A==42)) and never calls it; the driver calls it with 42 and with 41, catching the assertion error (its backtrace goes to stderr).
:- initialization((test(42), writeln('test(42): assertion holds'), catch(test(41), error(assertion_error(_, _), _), writeln('test(41): assertion failed')))).
%--------------------------------------------------------- 34 attractive-numbers
prime_factors(N, Factors):-
    S is sqrt(N),
    prime_factors(N, Factors, S, 2).

prime_factors(1, [], _, _):-!.
prime_factors(N, [P|Factors], S, P):-
    P =< S,
    0 is N mod P,
    !,
    M is N // P,
    prime_factors(M, Factors, S, P).
prime_factors(N, Factors, S, P):-
    Q is P + 1,
    Q =< S,
    !,
    prime_factors(N, Factors, S, Q).
prime_factors(N, [N], _, _).

is_prime(2):-!.
is_prime(N):-
    0 is N mod 2,
    !,
    fail.
is_prime(N):-
    N > 2,
    S is sqrt(N),
    \+is_composite(N, S, 3).

is_composite(N, S, P):-
    P =< S,
    0 is N mod P,
    !.
is_composite(N, S, P):-
    Q is P + 2,
    Q =< S,
    is_composite(N, S, Q).

attractive_number(N):-
    prime_factors(N, Factors),
    length(Factors, Len),
    is_prime(Len).

print_attractive_numbers(From, To, _):-
    From > To,
    !.
print_attractive_numbers(From, To, C):-
    (attractive_number(From) ->
        writef('%4r', [From]),
        (0 is C mod 20 -> nl ; true),
        C1 is C + 1
        ;
        C1 = C
    ),
    Next is From + 1,
    print_attractive_numbers(Next, To, C1).

main:-
    print_attractive_numbers(1, 120, 1).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%--------------------------------------------------- 35 averages-arithmetic-mean
mean(List, Mean) :-
    length(List, Length),
    sumlist(List, Sum),
    Mean is Sum / Length.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines mean/2 and never calls it; the driver prints the mean of two vectors.
:- initialization(forall(member(L, [[1, 2, 3, 4, 5], [3, 1, 4, 1, 5, 9]]), (mean(L, M), format("~w: ~w~n", [L, M])))).
%------------------------------------------------------------ 36 averages-median
median(L, Z) :-
    length(L, Length),
    I is Length div 2,
    Rem is Length rem 2,
    msort(L, S),
    maplist(sumlist, [[I, Rem], [I, 1]], Mid),
    maplist(nth1, Mid, [S, S], X),
    sumlist(X, Y),
    Z is Y/2.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines median/2 and never calls it; the driver prints the median of the task's odd- and even-length vectors.
:- initialization(forall(member(L, [[4.1, 5.6, 7.2, 1.7, 9.3, 4.4, 3.2], [4.1, 7.2, 1.7, 9.3, 4.4, 3.2]]), (median(L, Z), format("~w: ~w~n", [L, Z])))).
%-------------------------------------------------- 37 averages-root-mean-square
:- initialization(main).

rms(Xs, Y) :-
    sum_of_squares(Xs, 0, Sum),
    length(Xs, N),
    Y is sqrt(Sum / N).

sum_of_squares([], Sum, Sum).

sum_of_squares([X|Xs], A, Sum) :-
    A1 is A + X * X,
    sum_of_squares(Xs, A1, Sum).

main :-
    bagof(X, between(1, 10, X), Xs),
    rms(Xs, Y),
    format('The root-mean-square of 1..10 is ~f\n', [Y]).
%---------------------------------------------------------- 38 babbage-problem-1
:- use_module(library(clpfd)).

babbage_(B, B, Sq) :-
    B * B #= Sq,
    number_chars(Sq, R),
    append(_, ['2','6','9','6','9','6'], R).
babbage_(B, R, Sq) :-
    N #= B + 1,
    babbage_(N, R, Sq).

babbage :-
    once(babbage_(1, Num, Square)),
    format('lowest number is ~p which squared becomes ~p~n', [Num, Square]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines babbage/0 and never calls it; the driver calls it once at load.
:- initialization(babbage).
%---------------------------------------------------------- 39 babbage-problem-2
babbage :-
    Start is ceil(sqrt(269696)),
    between(Start, inf, N),
    Square is N * N,
    Square mod 100 =:= 96,           % speed up
    Square mod 1000000 =:= 269696,!, % break after first true
    format('lowest number is ~d which squared becomes ~d~n', [N, Square]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines babbage/0 and never calls it; the driver calls it once at load.
:- initialization(babbage).
%---------------------------------------------------------- 40 balanced-brackets
rosetta_brackets :-
    test_brackets([]),
    test_brackets(['[',']']),
    test_brackets(['[',']','[',']']),
    test_brackets(['[','[',']','[',']',']']),
    test_brackets([']','[']),
    test_brackets([']','[',']','[']),
    test_brackets(['[',']',']','[','[',']']).

balanced_brackets :-
    gen_bracket(2,  B1, []), test_brackets(B1),
    gen_bracket(4,  B2, []), test_brackets(B2),
    gen_bracket(4,  B3, []), test_brackets(B3),
    gen_bracket(6,  B4, []), test_brackets(B4),
    gen_bracket(6,  B5, []), test_brackets(B5),
    gen_bracket(8,  B6, []), test_brackets(B6),
    gen_bracket(8,  B7, []), test_brackets(B7),
    gen_bracket(10, B8, []), test_brackets(B8),
    gen_bracket(10, B9, []), test_brackets(B9).

test_brackets(Goal) :-
    (   Goal = [] -> write('(empty)'); maplist(write, Goal)),
    (   balanced_brackets(Goal, []) ->
        writeln(' succeed')
    ;
        writeln(' failed')
    ).

% grammar of balanced brackets
balanced_brackets --> [].

balanced_brackets -->
    ['['],
    balanced_brackets,
    [']'].

balanced_brackets -->
    ['[',']'],
    balanced_brackets.


% generator of random brackets
gen_bracket(0) --> [].

gen_bracket(N) -->
    {N1 is N - 1,
     R is random(2)},
    bracket(R),
    gen_bracket(N1).

bracket(0) --> ['['].
bracket(1) --> [']'].

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): balanced_brackets/0 draws its brackets with random/1; the driver calls rosetta_brackets/0, the solution's own fixed bracket strings.
:- initialization(rosetta_brackets).
%--------------------------------------------------------- 41 balanced-ternary-2
:- module('bt_add.pl', [bt_add/3,
			bt_add1/3,
			op(900, xfx, btplus),
			op(900, xfx, btmoins),
			btplus/2,
			btmoins/2,
			strip_nombre/3
		       ]).

:- op(900, xfx, btplus).
:- op(900, xfx, btmoins).

% define operator btplus
A is X btplus Y :-
	bt_add(X, Y, A).

% define operator btmoins
% no need to define a predicate for the substraction
A is X btmoins Y :-
       X is Y btplus A.


% bt_add(?X, ?Y, ?R)
% R is X + Y
% X, Y, R are strings
% At least 2 args must be instantiated
bt_add(X, Y, R) :-
	(   nonvar(X) -> string_to_list(X, X1);  true),
	(   nonvar(Y) -> string_to_list(Y, Y1);  true),
	(   nonvar(R) -> string_to_list(R, R1);  true),
	bt_add1(X1, Y1, R1),
	(   var(X) -> string_to_list(X, X1); true),
	(   var(Y) -> string_to_list(Y, Y1); true),
	(   var(R) -> string_to_list(R, R1); true).



% bt_add1(?X, ?Y, ?R)
% R is X + Y
% X, Y, R are lists
bt_add1(X, Y, R) :-
	% initialisation :  X and Y must have the same length
	% we add zeros at the beginning of the shortest list
	(   nonvar(X) -> length(X, LX);  length(R, LR)),
	(   nonvar(Y) ->  length(Y, LY);  length(R, LR)),
	(   var(X) -> LX is max(LY, LR) , length(X1, LX), Y1 = Y ; X1 = X),
	(   var(Y) -> LY is max(LX, LR) , length(Y1, LY), X1 = X ; Y1 = Y),

	Delta is abs(LX - LY),
	(   LX < LY -> normalise(Delta, X1, X2), Y1 = Y2
	;   LY < LX -> normalise(Delta, Y1, Y2), X1 = X2
	;   X1 = X2, Y1 = Y2),


	% if R is instancied, it must have, at least, the same length than X or Y
	Max is max(LX, LY),
	(   (nonvar(R), length(R, LR), LR < Max) -> Delta1 is Max - LR, normalise(Delta1, R, R2)
	;   nonvar(R) -> R = R2
	;   true),

	 bt_add(X2, Y2, C, R2),

	(   C = 48 -> strip_nombre(R2, R, []),
	              (	  var(X) -> strip_nombre(X2, X, []) ; true),
	              (	  var(Y) -> strip_nombre(Y2, Y, []) ; true)
	;   var(R) -> strip_nombre([C|R2], R, [])
	;   ( select(C, [45,43], [Ca]),
	    ( var(X) -> strip_nombre([Ca | X2], X, [])
	    ;	strip_nombre([Ca | Y2], Y, [])))).


% here we actually compute the sum
bt_add([], [], 48, []).

bt_add([H1|T1], [H2|T2], C3, [R2 | L]) :-
	bt_add(T1, T2, C, L),
	% add HH1 and H2
	ternary_sum(H1, H2, R1, C1),
	% add first carry,
	ternary_sum(R1, C, R2, C2),
	% add second carry
	ternary_sum(C1, C2, C3, _).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ternary_sum
% @arg1 : V1
% @arg2 : V2
% @arg3 : R is V1 + V2
% @arg4 : Carry
ternary_sum(43, 43, 45, 43).

ternary_sum(43, 45, 48, 48).

ternary_sum(45, 43, 48, 48).

ternary_sum(45, 45, 43, 45).

ternary_sum(X, 48, X, 48).

ternary_sum(48, X, X, 48).


% if L has a length smaller than N, complete L with 0 (code 48)
normalise(0, L, L) :- !.
normalise(N, L1, L) :-
	N1 is N - 1,
	normalise(N1, [48 | L1], L).


% contrary of normalise
% remove leading zeros.
% special case of number 0 !
strip_nombre([48]) --> {!}, "0".

% enlève les zéros inutiles
strip_nombre([48 | L]) -->
	strip_nombre(L).


strip_nombre(L) -->
	L.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines bt_add/3 and never calls it; the driver adds the task's a = +-0++0+, b = -++-0-- (-436) and c = +-++- pairwise.
:- initialization(forall(member(X-Y, ["+-0++0+"-"+-++-", "-++-0--"-"+-++-", "+-0++0+"-"-++-0--"]), (bt_add(X, Y, R), format("~w + ~w = ~w~n", [X, Y, R])))).
%--------------------------------------------------------------- 42 bell-numbers
bell(N, Bell):-
    bell(N, Bell, [], _).

bell(0, [[1]|T], T, [1]):-!.
bell(N, Bell, B, Row):-
    N1 is N - 1,
    bell(N1, Bell, [Row|B], Last),
    next_row(Row, Last).

next_row([Last|Bell], Bell1):-
    last(Bell1, Last),
    next_row1(Last, Bell, Bell1).

next_row1(_, [], []):-!.
next_row1(X, [Y|Rest], [B|Bell]):-
    Y is X + B,
    next_row1(Y, Rest, Bell).

print_bell_numbers(_, 0):-!.
print_bell_numbers([[Number|_]|Bell], N):-
    writef('%w\n', [Number]),
    N1 is N - 1,
    print_bell_numbers(Bell, N1).

print_bell_rows(_, 0):-!.
print_bell_rows([Row|Rows], N):-
    print_bell_row(Row),
    N1 is N - 1,
    print_bell_rows(Rows, N1).

print_bell_row([Number]):-
    !,
    writef('%w\n', [Number]).
print_bell_row([Number|Numbers]):-
    writef('%w ', [Number]),
    print_bell_row(Numbers).

main:-
    bell(49, Bell),
    writef('First 15 Bell numbers:\n'),
    print_bell_numbers(Bell, 15),
    last(Bell, [Number|_]),
    writef('\n50th Bell number: %w\n', [Number]),
    writef('\nFirst 10 rows of Bell triangle:\n'),
    print_bell_rows(Bell, 10).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%--------------------------------------------------------------- 43 benfords-law
%_________________________________________________________________
% Does the Fibonacci sequence follow Benford's law?
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% Fibonacci sequence generator
fib(C, [P,S], C, N)  :- N is P + S.
fib(C, [P,S], Cv, V) :- succ(C, Cn), N is P + S, !, fib(Cn, [S,N], Cv, V).

fib(0, 0).
fib(1, 1).
fib(C, N) :- fib(2, [0,1], C, N). % Generate from 3rd sequence on

% The benford law calculated
benford(D, Val) :- Val is log10(1+1/D).

% Retrieves the first characters of the first 1000 fibonacci numbers
%        (excluding zero)
firstchar(V) :-
	fib(C,N), N =\= 0, atom_chars(N, [Ch|_]), number_chars(V, [Ch]),
	(C>999-> !; true).

% Increment the n'th list item (1 based), result -> third argument.
incNth(1, [Dh|Dt], [Ch|Dt]) :- !, succ(Dh, Ch).
incNth(H, [Dh|Dt], [Dh|Ct]) :- succ(Hn, H), !, incNth(Hn, Dt, Ct).

% Calculate the frequency of the all the list items
freq([], D, D).
freq([H|T], D, C) :- incNth(H, D, L), !, freq(T, L, C).

freq([H|T], Freq) :-
	length([H|T], Len), min_list([H|T], Min), max_list([H|T], Max),
	findall(0, between(Min,Max,_), In),
	freq([H|T], In, F),	  % Frequency stored in F
	findall(N, (member(V, F), N is V/Len), Freq). % Normalise F->Freq

% Output the results
writeHdr :-
	format('~t~w~15| - ~t~w\n', ['Benford', 'Measured']).
writeData(Benford, Freq) :-
	format('~t~2f%~15| - ~t~2f%\n', [Benford*100, Freq*100]).

go :- % main goal
	findall(B, (between(1,9,N), benford(N,B)), Benford),
	findall(C, firstchar(C), Fc), freq(Fc, Freq),
	writeHdr, maplist(writeData, Benford, Freq).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines go/0 and never calls it; the driver calls it once at load.
:- initialization(go).
%-------------------------------------------------------------- 44 binary-digits
binary(X) :- format('~2r~n', [X]).
main :- maplist(binary, [5,50,9000]), halt.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%-------------------------------------------------- 45 bitmap-write-a-ppm-file-1
:- module(bitmapIO, [
   write_ppm_p6/2]).

:- use_module(library(lists)).

%write_ppm_p6(File,Bitmap)
write_ppm_p6(Filename,[[X,Y],Pixels]):-
   open(Filename,write,Output,[encoding(octet)]),
   %write p6 header
   writeln(Output, 'P6'),
   atomic_list_concat([X, Y], ' ', Dimensions),
   writeln(Output, Dimensions),
   writeln(Output, '255'),
   %write bytes
   maplist(maplist(maplist(put_byte(Output))),Pixels),
   close(Output).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines write_ppm_p6/2 and never calls it; the driver writes a 2x2 bitmap to a temporary file and prints the file's bytes.
:- initialization((tmp_file(ppm, F), write_ppm_p6(F, [[2, 2], [[[255, 0, 0], [0, 255, 0]], [[0, 0, 255], [255, 255, 255]]]]), read_file_to_codes(F, C, [type(binary)]), delete_file(F), format("~w~n", [C]))).
%---------------------------------------------------------- 46 box-the-compass-1
compassangle(1, 'North',n, 0.00).
compassangle(2, 'North by east', nbe, 11.25).
compassangle(3, 'North-northeast', nne,22.50).
compassangle(4, 'Northeast by north', nebn,33.75).
compassangle(5, 'Northeast', ne,45.00).
compassangle(6, 'Norteast by east', nebe,56.25).
compassangle(7, 'East-northeast', ene,67.50).
compassangle(8, 'East by North', ebn,78.75).
compassangle(9, 'East', e,90.00).
compassangle(10, 'East by south', ebs, 101.25).
compassangle(11, 'East-southeast', ese,112.50).
compassangle(12, 'Southeast by east', sebe, 123.75).
compassangle(13, 'Southeast', se, 135.00).
compassangle(14, 'Southeast by south', sebs, 146.25).
compassangle(15, 'South-southeast',sse, 157.50).
compassangle(16, 'South by east', sbe, 168.75).
compassangle(17, 'South', s, 180.00).
compassangle(18, 'South by west', sbw, 191.25).
compassangle(19, 'South-southwest', ssw, 202.50).
compassangle(20, 'Southwest by south', swbs, 213.75).
compassangle(21, 'Southwest', sw, 225.00).
compassangle(22, 'Southwest by west', swbw, 236.25).
compassangle(23, 'West-southwest', wsw, 247.50).
compassangle(24, 'West by south', wbs, 258.75).
compassangle(25, 'West', w, 270.00).
compassangle(26, 'West by north', wbn, 281.25).
compassangle(27, 'West-northwest', wnw, 292.50).
compassangle(28, 'Northwest by west', nwbw, 303.75).
compassangle(29, 'Northwest', nw, 315.00).
compassangle(30, 'Northwest by north', nwbn, 326.25).
compassangle(31, 'North-northwest', nnw, 337.50).
compassangle(32, 'North by west', nbw, 348.75).
compassangle(1, 'North', n, 360.00).
compassangle(Index , Name, Heading, Angle) :- nonvar(Angle), resolveindex(Angle, Index),
                                               compassangle(Index,Name, Heading, _).

resolveindex(Angle, Index) :- N is Angle / 11.25 + 0.5, I is floor(N),Index is (I mod 32) + 1.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines compassangle/4 and never calls it; the driver prints the index and point name of the task's 33 headings.
:- initialization(forall(member(A, [0.0, 16.87, 16.88, 33.75, 50.62, 50.63, 67.5, 84.37, 84.38, 101.25, 118.12, 118.13, 135.0, 151.87, 151.88, 168.75, 185.62, 185.63, 202.5, 219.37, 219.38, 236.25, 253.12, 253.13, 270.0, 286.87, 286.88, 303.75, 320.62, 320.63, 337.5, 354.37, 354.38]), (compassangle(I, N, _, A), format("~w    ~w   ~w~n", [I, N, A])))).
%---------------------------------------------------------- 47 brace-expansion-1
sym(',', commalist) --> ['\\',','], !.
sym(H, Context)         --> [H], { not(H = '{'; H = '}'), (Context = commalist -> not(H = ','); true) }.
syms([H|T], Context)    --> sym(H, Context), !, syms(T, Context).
syms([], _)             --> [].
symbol(Symbol, Context) --> syms(Syms,Context), {atom_chars(Symbol, Syms)}.

braces(Member) --> ['{'], commalist(List), ['}'], {length(List, Len), Len > 1, member(Member, List)}.

commalist([H|T]) --> sym_braces(H, commalist), [','], commalist(T).
commalist([H]) --> sym_braces(H, commalist).

sym_braces(String, Context) --> symbol(S1, Context), braces(S2), sym_braces(S3, Context), {atomics_to_string([S1,S2,S3],String)}.
sym_braces(String, Context) --> braces(S1), symbol(S2, Context), sym_braces(S3, Context), {atomics_to_string([S1,S2,S3],String)}.
sym_braces(String, Context) --> symbol(String, Context).
sym_braces(String, _) --> braces(String).
sym_braces(String, Context) --> ['{'], sym_braces(S2, Context), {atomics_to_string(['{',S2],String)}.
sym_braces(String, Context) --> ['}'], sym_braces(S2, Context), {atomics_to_string(['}',S2],String)}.

grammar(String) --> sym_braces(String, braces).

brace_expansion(In, Out) :- atom_chars(In, Chars), findall(Out,grammar(Out, Chars, []), List), list_to_set(List, Out).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines brace_expansion/2 and never calls it; the driver expands the task's four test strings.
:- initialization(forall(member(In, ['~/{Downloads,Pictures}/*.{jpg,gif,png}', 'It{{em,alic}iz,erat}e{d,}, please.', '{,{,gotta have{ ,\\, again\\, }}more }cowbell!', '{}} some }{,{\\\\{ edge, edge} \\,}{ cases, {here} \\\\\\\\\\}']), (format("~w~n", [In]), brace_expansion(In, Out), forall(member(O, Out), format("    ~w~n", [O]))))).
%---------------------------------------------------------- 48 brilliant-numbers
factors(N, Flist):-
	factors(N, 2, 0, Flist).

factors(1, _, _, []).
factors(_, _, Cnt, []):- Cnt > 1,!.
factors(N, Start, Cnt, [Fac|FList]):-
	N1 is floor(sqrt(N)),
	between(Start, N1, Fac),
	N mod Fac =:= 0,!,
	N2 is N div Fac,
	Cnt1 is Cnt + 1,
	factors(N2, Fac, Cnt1, FList).
factors(N, _, _, [N]):- N >= 2.

brilliantList(Start, Limit, List):-
	findall(N, brilliants(Start, Limit, N), List).
nextBrilliant(Start, N):-
	brilliants(Start, inf, N).
isBrilliant(N):-
	brilliants(2, inf, N).
brilliants(Start, Limit, N):-
	between(Start, Limit, N),
	factors(N,[F1,F2]),
	F1 * F2 =:= N,
	digits(F1, D1), digits(F2, D2),
	D1 =:= D2.

digits(N, D):-
	D is 1 + floor(log10(N)).

%% generate results

run(LimitList):-
	run(LimitList, 0, 2).
run([], _, _).
run([Limit|LList], OldCount, OldLimit):-
	Limit1 is Limit - 1,
	statistics(runtime,[Start|_]),
	brilliantList(OldLimit, Limit1, BList),
	length(BList, Cnt),
	Cnt1 is OldCount + Cnt,
	Index is Cnt1 + 1,
	nextBrilliant(Limit, Bril),!,
	statistics(runtime,[Stop|_]),
	Time is Stop - Start,
	writef('first >=%8r is%8r at position%6r [time:%6r]', [Limit, Bril, Index, Time]),nl,	
	run(LList, Cnt1, Limit).

showList(List, Limit):-
	findnsols(Limit, X, (member(X, List), writef('%5r', [X])), _),
	nl, fail.
showList(_, _).
	
do:-findnsols(100, B, isBrilliant(B), BList),!,
	showList(BList, 10),nl,
	findall(N, (between(1, 6, X), N is 10^X), LimitList),
	run(LimitList).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): do/0 also prints each step's runtime, which no ref can hold; the driver prints the first 100 brilliant numbers with showList/2 and, from brilliantList/3 and nextBrilliant/2, the first >= 10^1..10^5 in do/0's own format without the time, shrunk to 10^1..10^5 (10^6 alone takes 30 s).
:- initialization((findnsols(100, B, isBrilliant(B), BL), !, showList(BL, 10), nl, forall(between(1, 5, X), (L is 10^X, L1 is L - 1, brilliantList(2, L1, Bs), length(Bs, C), I is C + 1, once(nextBrilliant(L, Br)), writef('first >=%8r is%8r at position%6r', [L, Br, I]), nl)))).
%---------------------------------------------------- 49 bulls-and-cows-player-1
:- module('ia.pl', [tirage/1]).
:- use_module(library(clpfd)).

% to store the previous guesses and the answers
:- dynamic guess/2.

% parameters of the engine

% length of the guess
proposition(4).

% Numbers of digits
% 0 -> 8
digits(8).


% tirage(-)
tirage(Ms) :-
   % are there previous guesses ?
   (  bagof([P, R], guess(P,R), Propositions)
   ->  tirage(Propositions, Ms)
   ;   % First try
       tirage_1(Ms)),
   !.

% tirage_1(-)
% We choose the first Len numbers
tirage_1(L):-
   proposition(Len),
   Max is Len-1,
   numlist(0, Max, L).


% tirage(+,-)
tirage(L, Ms) :-
   proposition(Len),
        length(Ms, Len),

   digits(Digits),

   % The guess contains only this numbers
        Ms ins 0..Digits,
   all_different(Ms),

   % post the constraints
        maplist(placees(Ms), L),

   % compute a possible solution
   label(Ms).

% placees(+, +])
placees(Sol, [Prop, [BP, MP]]) :-
   V #= 0,

   % compute the numbers of digits in good places
   compte_bien_placees(Sol, Prop, V, BP1),
   BP1 #= BP,

   % compute the numbers of digits inbad places
   compte_mal_placees(Sol, Prop, 0, V, MP1),
   MP1 #= MP.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% compte_mal_placees(+, +, +, +, -).
% @arg1 : guess to create
% @arg2 : guess already used
% @arg3 : range of the first digit of the previuos arg
% @arg4 : current counter of the digit in bad places
% @arg5 : final counter of the digit in bad places
%
%
compte_mal_placees(_, [], _, MP, MP).

compte_mal_placees(Sol, [H | T], N, MPC, MPF) :-
   compte_une_mal_placee(H, N, Sol, 0,  0, VF),
   MPC1 #= MPC + VF,
   N1 is N+1,
   compte_mal_placees(Sol, T, N1, MPC1, MPF).


% Here we check one digit of an already done guess
% compte_une_mal_placee(+, +, +, +, -).
% @arg1 : the digit
% @arg2 : range of this digit
% @arg3 : guess to create
%         we check each digit of this guess
% @arg4 : range of the digit of this guess
% @arg5 : current counter of the digit in bad places
% @arg6 : final counter of the digit in bad places
%
compte_une_mal_placee(_H, _N, [], _, TT, TT).

% digit in the same range, continue
compte_une_mal_placee(H, NH, [_H1 | T], NH, TTC, TTF) :-
   NH1 is NH + 1, !,
   compte_une_mal_placee(H, NH, T, NH1, TTC, TTF).

% same digit in different places
% increment the counter and continue continue
compte_une_mal_placee(H, NH, [H1 | T], NH1, TTC, TTF) :-
   H #= H1,
   NH \= NH1,
   NH2 is NH1 + 1,
   TTC1 #= TTC + 1,
   compte_une_mal_placee(H, NH, T, NH2, TTC1, TTF).

compte_une_mal_placee(H, NH, [H1 | T], NH1, TTC, TTF) :-
   H #\= H1,
   NH2 is NH1 + 1,
   compte_une_mal_placee(H, NH, T, NH2, TTC, TTF).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% compte_bien_placees(+, +, +, -)
% @arg1 : guess to create
% @arg2 : previous guess
% @arg3 : current counter of the digit in good places
% @arg4 : final counter of the digit in good places
%
%
compte_bien_placees([], [], MP, MP).

compte_bien_placees([H | T], [H1 | T1], MPC, MPF) :-
   H #= H1,
   MPC1 #= MPC + 1,
   compte_bien_placees(T, T1, MPC1, MPF).

compte_bien_placees([H | T], [H1 | T1], MPC, MPF) :-
   H #\= H1,
   compte_bien_placees(T, T1, MPC, MPF).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the guessing engine tirage/1 (module ia.pl) and never calls it; the driver plays the scorer for the fixed secret [3,5,1,7], recording each answer as guess/2 the way bulls-and-cows-player-2 does, until 4 bulls.
:- initialization((S = [3, 5, 1, 7], repeat, tirage(Ms), aggregate_all(count, (nth0(I, Ms, D), nth0(I, S, D)), B), aggregate_all(count, (member(E, Ms), memberchk(E, S)), BC), C is BC - B, format("guess ~w: ~w bulls, ~w cows~n", [Ms, B, C]), assertz(guess(Ms, [B, C])), B =:= 4, !)).
%-------------------------------------------------------------- 50 caesar-cipher
% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
:- use_module(library(clpfd)).

caesar :-
   L1 = "The five boxing wizards jump quickly",
   writef("Original : %s\n", [L1]),

   % encryption of the sentence
   encoding(3, L1, L2) ,
   writef("Encoding : %s\n", [L2]),

   % deciphering on the encoded sentence
   encoding(3, L3, L2),
   writef("Decoding : %s\n", [L3]).

% encoding/decoding of a sentence
encoding(Key, L1, L2) :-
   maplist(caesar_cipher(Key), L1, L2).

caesar_cipher(_, 32, 32) :- !.

caesar_cipher(Key, V1, V2) :-
   V #= Key + V1,

   % we verify that we are in the limits of A-Z and a-z.
   ((V1 #=< 0'Z #/\ V #> 0'Z) #\/ (V1 #=< 0'z #/\ V #> 0'z)
   #\/
   (V1 #< 0'A #/\ V2 #>= 0'A)#\/ (V1 #< 0'a #/\ V2 #>= 0'a)) #==> A,

   % if we are not in these limits A is 1, otherwise 0.
   V2 #= V - A * 26,

   % compute values of V1 and V2
   label([A, V1, V2]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines caesar/0 and never calls it; written for code lists (maplist/3 over "..."), so the flag is set at its head and the driver calls it once at load.
:- initialization(caesar).
%----------------------------------------------- 51 calculating-the-value-of-e-1
% Calculate the value e = exp 1
%   Use Newton's method: x0 = 2; y = x(2 - ln x)

tolerance(1e-15).

exp1_iter(L) :-
    lazy_list(newton, 2, L).

newton(X0, X1, X1) :-
    X1 is X0*(2 - log(X0)).

e([X1, X2|_], X1) :- tolerance(Eps), abs(X2 - X1) < Eps.
e([_|Xs], E) :- e(Xs, E).

main :-
    exp1_iter(Iter),
    e(Iter, E),
    format("e = ~w~n", [E]),
    halt.

?- main.
%----------------------------------------------- 52 calculating-the-value-of-e-2
% John Devou: 26-Nov-2021
% Simple program to calculate e up to n decimal digits.
% Works fast for n ≤ 1 000 000.

l(M,F,L,S):- F > L -> S is M-1; M_ is M+1, F_ is F*M_, l(M_,F_,L,S).

e(S,X,Y,N,E):- S < 2 -> E is div(X*10**N,Y);
    S_ is S-1, X_ is X+Y, Y_ is S*Y, e(S_,X_,Y_,N,E).

main:-
    get_time(Start),				% start computation
    current_prolog_flag(argv,[X|_]),		% read arguments
    atom_number(X,N),				% convert first argument to number
    L is 3*10**(N+1), l(1,1,L,S),		% find the smallest S, such that (S+1)! > 3*10^(N+1)
    e(S,0,1,N,E),				% compute decimal part of series 1/2! + 1/3! + ... + 1/S!
    get_time(End),				% finish computation
    format("e = 2.~d\n",E),			% show number
    format("Computed in ~f sec",End- Start),	% show computation time
    halt.

?- main.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): main/0 reads N from its command line and prints its computation time, which no ref can hold; the driver calls l/4 and e/5 for N = 100 and prints e in main/0's own format.
:- initialization((N = 100, L is 3*10**(N+1), l(1, 1, L, S), e(S, 0, 1, N, E), format("e = 2.~d\n", E))).
%------------------------------------------------------------------- 53 calendar
% Write out the calender, because format can actually span multiple lines, it is easier
% to write out the static parts in place and insert the generated parts into that format.
write_calendar(Year) :-
	month_x3_format(Year, 1, 2, 3, F1_3),
	month_x3_format(Year, 4, 5, 6, F4_6),
	month_x3_format(Year, 7, 8, 9, F7_9),
	month_x3_format(Year, 10, 11, 12, F10_12),
	
	format('

                                      ~w

            January                  February                   March
      Su Mo Tu We Th Fr Sa     Su Mo Tu We Th Fr Sa     Su Mo Tu We Th Fr Sa
~w

             April                     May                      June
      Su Mo Tu We Th Fr Sa     Su Mo Tu We Th Fr Sa     Su Mo Tu We Th Fr Sa
~w

              July                    August                  September
      Su Mo Tu We Th Fr Sa     Su Mo Tu We Th Fr Sa     Su Mo Tu We Th Fr Sa
~w

            October                  November                 December
      Su Mo Tu We Th Fr Sa     Su Mo Tu We Th Fr Sa     Su Mo Tu We Th Fr Sa
~w	
', [Year, F1_3, F4_6, F7_9, F10_12]), !.

% Generate the data for a row of months and then create an atom one row at a time
% for all of the months.
month_x3_format(Year, M1, M2, M3, F) :-
	calc_month_rows(Year, M1, M1r),
	calc_month_rows(Year, M2, M2r),
	calc_month_rows(Year, M3, M3r),
	month_x3_format(M1r, M2r, M3r, F).
	
month_x3_format(M1, M2, M3, '') :- maplist(=('   '), M1), maplist(=('   '), M2), maplist(=('   '), M3).
month_x3_format(M1, M2, M3, F) :-
		month_format('      ', M1, M1r, F1),
		month_format(F1, M2, M2r, F2),
		month_format(F2, M3, M3r, F3),
		atom_concat(F3, '\n', F4),
		month_x3_format(M1r, M2r, M3r, Fr),
		atom_concat(F4, Fr, F).
	
month_format(Orig, [Su,Mo,Tu,We,Th,Fr,Sa|R], R, F) :-
	maplist(day_format, [Su,Mo,Tu,We,Th,Fr,Sa], Formatted),
	format(atom(F2), '~w~w~w~w~w~w~w    ', Formatted),
	atom_concat(Orig, F2, F).

day_format('   ', '   ') :- !.
day_format(D, F) :- D < 10, format(atom(F), '~w  ', D).
day_format(D, F) :- D >= 10, format(atom(F), '~w ', D).

% Calculate the days of a month, this is done by getting the first day of the month,
% then offsetting that with spaces from the start and then adding 1-NumDaysinMonth and
% finally spaces until the end. The maximum possible size is used and then truncated later.
calc_month_rows(Year, Month, Result) :-
	length(Result, 42), % max 6 rows of 7 days
	month_days(Month, Year, DaysInMonth),
	day_of_the_week(date(Year, Month, 1), FirstWeekDay),
	day_offset(FirstWeekDay, Offset),
	day_print_map(DaysInMonth, Offset, Result).

day_print_map(DaysInMonth, 0, [1|R]) :-	
	day_print_map2(DaysInMonth, 2, R).	
day_print_map(DaysInMonth, Offset, ['   '|R]) :-
	dif(Offset, 0),
	succ(NewOffset, Offset),
	day_print_map(DaysInMonth, NewOffset, R).

day_print_map2(D, D, [D|R])	:- day_print_map(R).
day_print_map2(D, N, [N|R]) :- dif(D,N), succ(N, N1), day_print_map2(D, N1, R).

day_print_map([]).
day_print_map(['   '|R]) :- day_print_map(R).

% Figure out the number of days in a month based on whether it is a leap year or not.
month_days(2, Year, Days) :-
	is_leap_year(Year) -> Days = 29
	; Days = 28.
month_days(Month, _, Days) :-
	dif(Month, 2),
	nth1(Month, [31, _, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31], Days).

% Figure out the space offset based on the day the month starts on.
day_offset(D, D) :- dif(D, 7).
day_offset(7, 0).

% Test for leap years
is_leap_year(Year) :-
	0 is Year mod 100 -> 0 is Year mod 400
	; 0 is Year mod 4.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines write_calendar/1 and never calls it; the driver prints the task's year 1969.
:- initialization(write_calendar(1969)).
%------------------------------------------------------- 54 calkin-wilf-sequence
% John Devou: 26-Nov-2021

% g(N,X):- consecutively generate in X the first N elements of the Calkin-Wilf sequence

g(N,[A/B|_]-_,A/B):- N > 0.
g(N,[A/B|Ls]-[A/C,C/B|Ys],X):- N > 1, M is N-1, C is A+B, g(M,Ls-Ys,X).
g(N,X):- g(N,[1/1|Ls]-Ls,X).

% t(A/B,X):- generate in X the index of A/B in the Calkin-Wilf sequence

t(A/1,S,C,X):- X is C*(2**(A-1+S)-S).
t(A/B,S,C,X):- B > 1, divmod(A,B,M,N), T is 1-S, D is C*2**M, t(B/N,T,D,Y), X is Y + S*C*(2**M-1).
t(A/B,X):- t(A/B,1,1,X), !.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines g/2 and t/2 and never calls them; the driver prints the task's first 20 terms and the index of 83116/51639.
:- initialization((findall(X, g(20, X), Xs), format("~w~n", [Xs]), t(83116/51639, I), format("~w~n", [I]))).
%------------------------------------------- 55 carmichael-3-strong-pseudoprimes
show(Limit) :-
    forall(
        carmichael(Limit, P1, P2, P3, C),
        format("~w * ~w * ~w ~t~20| = ~w~n", [P1, P2, P3, C])).

carmichael(Upto, P1, P2, P3, X) :-
    between(2, Upto, P1),
    prime(P1),
    Limit is P1 - 1, between(2, Limit, H3),
    MaxD is H3 + P1 - 1, between(1, MaxD, D),
    (H3 + P1)*(P1 - 1) mod D =:= 0,
    -P1*P1 mod H3 =:= D mod H3,
    P2 is 1 + (P1 - 1)*(H3 + P1) div D,
    prime(P2),
    P3 is 1 + P1*P2 div H3,
    prime(P3),
    X is P1*P2*P3.

wheel235(L) :-
   W = [4, 2, 4, 2, 4, 6, 2, 6 | W],
   L = [1, 2, 2 | W].

prime(N) :-
   N >= 2,
   wheel235(W),
   prime(N, 2, W).

prime(N, D, _) :- D*D > N, !.
prime(N, D, [A|As]) :-
    N mod D =\= 0,
    D2 is D + A, prime(N, D2, As).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines show/1 and never calls it; the driver runs it for the task's Prime1 up to 61.
:- initialization(show(61)).
%------------------------------------- 56 cartesian-product-of-two-or-more-lists
product([A|_], Bs, [A, B]) :- member(B, Bs).
product([_|As], Bs, X) :- product(As, Bs, X).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines product/3 and never calls it; the driver prints the task's four products {1,2}x{3,4}, {3,4}x{1,2}, {1,2}x{} and {}x{1,2}.
:- initialization(forall(member(A-B, [[1, 2]-[3, 4], [3, 4]-[1, 2], [1, 2]-[], []-[1, 2]]), (findall(X, product(A, B, X), Ps), format("~w x ~w = ~w~n", [A, B, Ps])))).
%-------------------------------------------- 57 case-sensitivity-of-identifiers
three_dogs :-
	DoG = 'Benjamin',
	Dog = 'Samba',
	DOG = 'Bernie',
	format('The three dogs are named ~w, ~w and ~w.~n', [DoG, Dog, DOG]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines three_dogs/0 and never calls it; the driver calls it once at load.
:- initialization(three_dogs).
%------------------------------------------------------------ 58 catalan-numbers
catalan(N) :-
  length(L1, N),
  L = [1 | L1],
  init(1,1,L1),
  numlist(0, N, NL),
  maplist(my_write, NL, L).


init(_, _, []).

init(V, N, [H | T]) :-
  N1 is N+1,
  H is 2 * (2 * N - 1) * V / N1,
  init(H, N1, T).

my_write(N, V) :-
  format('~w : ~w~n', [N, V]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines catalan/1 and never calls it; the driver prints the task's first 15 Catalan numbers, C(0)..C(14).
:- initialization(catalan(14)).
%------------------------------------------------------------- 59 catamorphism-3
% Computes "Out" as:
%
% starter value -->--f-->--f-->--f-->--f-->-- Out
%                    |     |     |     |
%                    a     b     c     d


foldl(Foldy,[Item|Items],Acc,Result) :-    % case of nonempty list
   !,                                      % GREEN CUT for determinism
   call(Foldy,Item,Acc,AccNext),           % call Foldy(Item,Acc,AccNext)
   foldl(Foldy,Items,AccNext,Result).      % then recurse (open to tail call optimization)

foldl(_,[],Acc,Result) :-                  % case of empty list
   Acc=Result.                             % unification not in head for clarity

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines foldl/4 and never calls it; the driver folds the sum of 1..5 with plus/3 and the list [a,b,c,d] with atom_concat/3, showing the left fold's order.
:- initialization((foldl(plus, [1, 2, 3, 4, 5], 0, S), format("~w~n", [S]), foldl(atom_concat, [a, b, c, d], '', A), format("~w~n", [A]))).
%------------------------------------------------------------- 60 catamorphism-4
% Computes "Out" as:
%
% Out --<--f--<--f--<--f--<--f--<-- starter value
%          |     |     |     |
%          a     b     c     d

foldr(Foldy,[Item|Items],Starter,AccUp) :-    % case of nonempty list
   !,                                         % GREEN CUT for determinism
   foldr(Foldy,Items,Starter,AccUpPrev),      % recurse (NOT open to tail-call optimization)
   call(Foldy,Item,AccUpPrev,AccUp).          % call Foldy(Item,AccupPrev,AccUp) as last action

foldr(_,[],Starter,AccUp) :-                  % empty list: bounce Starter "upwards" into AccUp
   AccUp=Starter.                             % unification not in head for clarity

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines foldr/4 and never calls it; the driver folds the sum of 1..5 with plus/3 and the list [a,b,c,d] with atom_concat/3, showing the right fold's order.
:- initialization((foldr(plus, [1, 2, 3, 4, 5], 0, S), format("~w~n", [S]), foldr(atom_concat, [a, b, c, d], '', A), format("~w~n", [A]))).
%------------------------------------------------------------- 61 catamorphism-5
:- use_module(library(clpfd)). % We are using #= instead of the raw "is".

foldy_len(_Item,ThreadIn,ThreadOut) :-
   succ(ThreadIn,ThreadOut).

foldy_add(Item,ThreadIn,ThreadOut) :-
   ThreadOut #= Item+ThreadIn.

foldy_mult(Item,ThreadIn,ThreadOut) :-
   ThreadOut #= Item*ThreadIn.

foldy_squadd(Item,ThreadIn,ThreadOut) :-
   ThreadOut #= Item+(ThreadIn^2).

% '[|]' is SWI-Prolog specific, replace by '.' as consbox constructor in other Prologs

foldy_build(Item,ThreadIn,ThreadOut) :-
   ThreadOut = '[|]'(Item,ThreadIn).

foldy_join(Item,ThreadIn,ThreadOut) :-
   (ThreadIn \= "")
   -> with_output_to(string(ThreadOut),format("~w,~w",[Item,ThreadIn]))
   ;  with_output_to(string(ThreadOut),format("~w",[Item])).

% '=..' ("univ") constructs a term from a list of functor and arguments

foldy_expr(Functor,Item,ThreadIn,ThreadOut) :-
   ThreadOut =.. [Functor,Item,ThreadIn].

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the foldy_* step predicates and never calls them; the driver folds the task's [1,2,3,4,5] with each through foldl/4 (library(apply)), as catamorphism-6's foldl tests do.
:- initialization(forall(member(F-S, [foldy_len-0, foldy_add-0, foldy_mult-1, foldy_build-[], foldy_squadd-0, foldy_join-"", foldy_expr(*)-1]), (foldl(F, [1, 2, 3, 4, 5], S, R), format("~w: ~q~n", [F, R])))).
%------------------------------------------------------ 62 chemical-calculator-1
:- use_module(library(dcg/basics)).
:- use_module(library(dcg/high_order)).

:- initialization(main, main).
main([Input]) :-
    atom_codes(Input, Codes),
    phrase(chemical(Mass), Codes),
    writeln(Mass).

chemical(Mass) --> chemical(0, Mass), !.

chemical(M0, M) -->
    ( "(", chemical(0, M1), ")" | element_mass(M1) ),
    optional(integer(C), { C = 1 }),
    { M2 is M0 + M1 * C },
    ( chemical(M2, M) | { M2 = M } ).

element_mass(  1.008)         --> "H".
element_mass(  4.002602)      --> "He".
element_mass(  6.94)          --> "Li".
element_mass(  9.0121831)     --> "Be".
element_mass( 10.81)          --> "B".
element_mass( 12.011)         --> "C".
element_mass( 14.007)         --> "N".
element_mass( 15.999)         --> "O".
element_mass( 18.998403163)   --> "F".
element_mass( 20.1797)        --> "Ne".
element_mass( 22.98976928)    --> "Na".
element_mass( 24.305)         --> "Mg".
element_mass( 26.9815385)     --> "Al".
element_mass( 28.085)         --> "Si".
element_mass( 30.973761998)   --> "P".
element_mass( 32.06)          --> "S".
element_mass( 35.45)          --> "Cl".
element_mass( 39.0983)        --> "K".
element_mass( 39.948)         --> "Ar".
element_mass( 40.078)         --> "Ca".
element_mass( 44.955908)      --> "Sc".
element_mass( 47.867)         --> "Ti".
element_mass( 50.9415)        --> "V".
element_mass( 51.9961)        --> "Cr".
element_mass( 54.938044)      --> "Mn".
element_mass( 55.845)         --> "Fe".
element_mass( 58.6934)        --> "Ni".
element_mass( 58.933194)      --> "Co".
element_mass( 63.546)         --> "Cu".
element_mass( 65.38)          --> "Zn".
element_mass( 69.723)         --> "Ga".
element_mass( 72.63)          --> "Ge".
element_mass( 74.921595)      --> "As".
element_mass( 78.971)         --> "Se".
element_mass( 79.904)         --> "Br".
element_mass( 83.798)         --> "Kr".
element_mass( 85.4678)        --> "Rb".
element_mass( 87.62)          --> "Sr".
element_mass( 88.90584)       --> "Y".
element_mass( 91.224)         --> "Zr".
element_mass( 92.90637)       --> "Nb".
element_mass( 95.95)          --> "Mo".
element_mass(101.07)          --> "Ru".
element_mass(102.9055)        --> "Rh".
element_mass(106.42)          --> "Pd".
element_mass(107.8682)        --> "Ag".
element_mass(112.414)         --> "Cd".
element_mass(114.818)         --> "In".
element_mass(118.71)          --> "Sn".
element_mass(121.76)          --> "Sb".
element_mass(126.90447)       --> "I".
element_mass(127.6)           --> "Te".
element_mass(131.293)         --> "Xe".
element_mass(132.90545196)    --> "Cs".
element_mass(137.327)         --> "Ba".
element_mass(138.90547)       --> "La".
element_mass(140.116)         --> "Ce".
element_mass(140.90766)       --> "Pr".
element_mass(144.242)         --> "Nd".
element_mass(145)             --> "Pm".
element_mass(150.36)          --> "Sm".
element_mass(151.964)         --> "Eu".
element_mass(157.25)          --> "Gd".
element_mass(158.92535)       --> "Tb".
element_mass(162.5)           --> "Dy".
element_mass(164.93033)       --> "Ho".
element_mass(167.259)         --> "Er".
element_mass(168.93422)       --> "Tm".
element_mass(173.054)         --> "Yb".
element_mass(174.9668)        --> "Lu".
element_mass(178.49)          --> "Hf".
element_mass(180.94788)       --> "Ta".
element_mass(183.84)          --> "W".
element_mass(186.207)         --> "Re".
element_mass(190.23)          --> "Os".
element_mass(192.217)         --> "Ir".
element_mass(195.084)         --> "Pt".
element_mass(196.966569)      --> "Au".
element_mass(200.592)         --> "Hg".
element_mass(204.38)          --> "Tl".
element_mass(207.2)           --> "Pb".
element_mass(208.9804)        --> "Bi".
element_mass(209)             --> "Po".
element_mass(210)             --> "At".
element_mass(222)             --> "Rn".
element_mass(223)             --> "Fr".
element_mass(226)             --> "Ra".
element_mass(227)             --> "Ac".
element_mass(231.03588)       --> "Pa".
element_mass(232.0377)        --> "Th".
element_mass(237)             --> "Np".
element_mass(238.02891)       --> "U".
element_mass(243)             --> "Am".
element_mass(244)             --> "Pu".
element_mass(247)             --> "Cm".
element_mass(247)             --> "Bk".
element_mass(251)             --> "Cf".
element_mass(252)             --> "Es".
element_mass(257)             --> "Fm".
element_mass(299)             --> "Ubn".
element_mass(315)             --> "Uue".
%--------------------------------------------- 63 chernicks-carmichael-numbers-2
prime(N) :-
    integer(N),
    N > 1,
    divcheck(
        N,
        [  2,   3,   5,   7,  11,  13,  17,  19,  23,  29,  31,
          37,  41,  43,  47,  53,  59,  61,  67,  71,  73,  79,
          83,  89,  97, 101, 103, 107, 109, 113, 127, 131, 137,
         139, 149],
        Result),
    ((Result = prime, !); miller_rabin_primality_test(N)).

divcheck(_, [],    unknown) :- !.
divcheck(N, [P|_], prime) :- P*P > N, !.
divcheck(N, [P|Ps], State) :- N mod P =\= 0, divcheck(N, Ps, State).

miller_rabin_primality_test(N) :-
    bases(Bases, N),
    forall(member(A, Bases), strong_fermat_pseudoprime(N, A)).

miller_rabin_precision(16).

bases([31, 73], N) :- N < 9_080_191, !.
bases([2, 7, 61], N) :- N < 4_759_123_141, !.
bases([2, 325, 9_375, 28_178, 450_775, 9_780_504, 1_795_265_022], N) :-
    N < 18_446_744_073_709_551_616, !. % 2^64
bases(Bases, N) :-
    miller_rabin_precision(T), RndLimit is N - 2,
    length(Bases, T), maplist(random_between(2, RndLimit), Bases).

strong_fermat_pseudoprime(N, A) :-  % miller-rabin strong pseudoprime test with base A.
    succ(Pn, N), factor_2s(Pn, S, D),
    X is powm(A, D, N),
    ((X =:= 1, !); \+ composite_witness(N, S, X)).

composite_witness(_, 0, _) :- !.
composite_witness(N, K, X) :-
    X =\= N-1,
    succ(Pk, K), X2 is (X*X) mod N, composite_witness(N, Pk, X2).

factor_2s(N, S, D) :- factor_2s(0, N, S, D).
factor_2s(S, D, S, D) :- D /\ 1 =\= 0, !.
factor_2s(S0, D0, S, D) :-
    succ(S0, S1), D1 is D0 >> 1,
    factor_2s(S1, D1, S, D).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in two blocks: this block is the primality library (prime/1 by Miller-Rabin) that chernicks-carmichael-numbers-1's a/2 and main/0 load as library(primality); the entry block -1 is UNGRADABLE (its use_module of the absent library errs) and no NEEDS_DRIVER row, so this block includes it and -1's own ?- main. directive prints a(3)..a(9) and halts at include time.
:- include('chernicks-carmichael-numbers-1.pl').
:- initialization(main).
%------------------------------------------------ 64 chinese-remainder-theorem-1
product(A, B, C) :- C is A*B.

pair(X, Y, X-Y).

egcd(_, 0, 1, 0) :- !.
egcd(A, B, X, Y) :-
    divmod(A, B, Q, R),
    egcd(B, R, S, X),
    Y is S - Q*X.

modinv(A, B, X) :-
    egcd(A, B, X, Y),
    A*X + B*Y =:= 1.

crt_fold(A, M, P, R0, R1) :- % system of equations of (x = a) (mod m); p = M/m
    modinv(P, M, Inv),
    R1 is R0 + A*Inv*P.

crt(Pairs, N) :-
    maplist(pair, As, Ms, Pairs),
    foldl(product, Ms, 1, M),
    maplist(divmod(M), Ms, Ps, _), % p(n) <- M/m(n)
    foldl(crt_fold, As, Ms, Ps, 0, N0),
    N is N0 mod M.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines crt/2 and never calls it; the driver solves the task's system x = 2 (mod 3), 3 (mod 5), 2 (mod 7).
:- initialization((crt([2-3, 3-5, 2-7], N), format("~w~n", [N]))).
%------------------------------------------------------------- 65 chinese-zodiac
:- initialization(main).

animals(['Rat', 'Ox', 'Tiger', 'Rabbit', 'Dragon', 'Snake', 'Horse', 'Goat', 'Monkey', 'Rooster', 'Dog', 'Pig']).

elements(['Wood', 'Fire', 'Earth', 'Metal', 'Water']).

animal_chars(['子','丑','寅','卯','辰','巳','午','未','申','酉','戌','亥']).

element_chars([['甲', '丙', '戊', '庚', '壬'], ['乙', '丁', '己', '辛', '癸']]).

years([1935, 1938, 1968, 1972, 1976, 1984, 1985, 2017]).

year_animal(Year, Animal) :-
    I is ((Year - 4) mod 12) + 1,
    animals(Animals),
    nth(I, Animals, Animal).

year_element(Year, Element) :-
    I is ((Year - 4) mod 10) div 2 + 1,
    elements(Elements),
    nth(I, Elements, Element).

year_animal_char(Year, AnimalChar) :-
    I is (Year - 4) mod 12 + 1,
    animal_chars(AnimalChars),
    nth(I, AnimalChars, AnimalChar).

year_element_char(Year, ElementChar) :-
    I1 is Year mod 2 + 1,
    element_chars(ElementChars),
    nth(I1, ElementChars, ElementChars1),
    I2 is (Year - 4) mod 10 div 2 + 1,
    nth(I2, ElementChars1, ElementChar).

year_yin_yang(Year, YinYang) :-
    Year mod 2 =:= 0 -> YinYang = 'yang' ; YinYang = 'yin'.

main :-
    years(Years),
    forall(member(Year, Years), (
        write(Year),
        write(' is the year of the '),
        year_element(Year, Element),
        write(Element),
        write(' '),
        year_animal(Year, Animal),
        write(Animal),
        write(' '),
        year_yin_yang(Year, YinYang),
        write('('),
        write(YinYang),
        write('). '),
        year_element_char(Year, ElementChar),
        write(ElementChar),
        year_animal_char(Year, AnimalChar),
        write(AnimalChar),
        nl
    )).
%------------------------------------------------------------ 66 church-numerals
church_zero(z).

church_successor(Z, c(Z)).

church_add(z, Z, Z).
church_add(c(X), Y, c(Z)) :-
    church_add(X, Y, Z).

church_multiply(z, _, z).
church_multiply(c(X), Y, R) :-
    church_add(Y, S, R),
    church_multiply(X, Y, S).

% N ^ M
church_power(z, z, z).
church_power(N, c(z), N).
church_power(N, c(c(Z)), R) :-
    church_multiply(N, R1, R),
    church_power(N, c(Z), R1).

int_church(0, z).
int_church(I, c(Z)) :-
    int_church(Is, Z),
    succ(Is, I).

run :-
    int_church(3, Three),
    church_successor(Three, Four),
    church_add(Three, Four, Sum),
    church_multiply(Three, Four, Product),
    church_power(Four, Three, Power43),
    church_power(Three, Four, Power34),

    int_church(ISum, Sum),
    int_church(IProduct, Product),
    int_church(IPower43, Power43),
    int_church(IPower34, Power34),

    !,
    maplist(format('~w '), [ISum, IProduct, IPower43, IPower34]),
    nl.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines run/0 and never calls it; the driver calls it once at load.
:- initialization(run).
%----------------------------------------------------- 67 closest-pair-problem-1
% main predicate, find and print closest point
do_find_closest_points(Points) :-
	points_closest(Points, points(point(X1,Y1),point(X2,Y2),Dist)),
	format('Point 1 : (~p, ~p)~n', [X1,Y1]),
	format('Point 1 : (~p, ~p)~n', [X2,Y2]),
	format('Distance: ~p~n', [Dist]).

% Find the distance between two points
distance(point(X1,Y1), point(X2,Y2), points(point(X1,Y1),point(X2,Y2),Dist)) :-
	Dx is X2 - X1,
	Dy is Y2 - Y1,
	Dist is sqrt(Dx * Dx + Dy * Dy).

% find the closest point that relatest to another point
point_closest(Points, Point, Closest) :-
	select(Point, Points, Remaining),
	maplist(distance(Point), Remaining, PointList),
	foldl(closest, PointList, 0, Closest).

% find the closest point/dist pair for all points
points_closest(Points, Closest) :-
	maplist(point_closest(Points), Points, ClosestPerPoint),
	foldl(closest, ClosestPerPoint, 0, Closest).

% used by foldl to get the lowest point/distance combination
closest(points(P1,P2,Dist), 0, points(P1,P2,Dist)).
closest(points(_,_,Dist), points(P1,P2,Dist2), points(P1,P2,Dist2)) :-
	Dist2 < Dist.
closest(points(P1,P2,Dist), points(_,_,Dist2), points(P1,P2,Dist)) :-
	Dist =< Dist2.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines do_find_closest_points/1 and never calls it; the driver runs it on the ten points of closest-pair-problem-2, the solution's own example.
:- initialization(do_find_closest_points([point(0.654682, 0.925557), point(0.409382, 0.619391), point(0.891663, 0.888594), point(0.716629, 0.996200), point(0.477721, 0.946355), point(0.925092, 0.818220), point(0.624291, 0.142924), point(0.211332, 0.221507), point(0.293786, 0.691701), point(0.839186, 0.728260)])).
%------------------------------------------------------------- 68 combinations-1
:- use_module(library(clpfd)).

comb_clpfd(L, M, N) :-
    length(L, M),
    L ins 1..N,
    chain(L, #<),
    label(L).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines comb_clpfd/3 and never calls it; the driver prints the task's 3 comb 5, numbered 1..5.
:- initialization(forall(comb_clpfd(L, 3, 5), format("~w~n", [L]))).
%------------------------------------------------------------- 69 combinations-2
comb_Prolog(L, M, N) :-
    length(L, M),
    fill(L, 1, N).

fill([], _, _).

fill([H | T], Min, Max) :-
    between(Min, Max, H),
    H1 is H + 1,
    fill(T, H1, Max).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines comb_Prolog/3 and never calls it; the driver prints the task's 3 comb 5, numbered 1..5.
:- initialization(forall(comb_Prolog(L, 3, 5), format("~w~n", [L]))).
%---------------------------------------------- 70 combinations-with-repetitions
combinations_of_length(_,[]).
combinations_of_length([X|T],[X|Combinations]):-
    combinations_of_length([X|T],Combinations).
combinations_of_length([_|T],[X|Combinations]):-
    combinations_of_length(T,[X|Combinations]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines combinations_of_length/2 and never calls it; the driver prints the task's two donuts from iced, jam, plain and counts three from ten types.
:- initialization((length(C, 2), forall(combinations_of_length([iced, jam, plain], C), format("~w~n", [C])), length(T, 3), numlist(1, 10, Ten), aggregate_all(count, combinations_of_length(Ten, T), N), format("~w~n", [N]))).
%---------------------------------------------------------- 71 comma-quibbling-1
words_series(Words, Bracketed) :-
    words_serialized(Words, Serialized),
    atomics_to_string(["{",Serialized,"}"], Bracketed).

words_serialized([], "").
words_serialized([Word], Word) :- !.
words_serialized(Words, Serialized) :-
    append(Rest, [Last], Words),                                  %% Splits the list of *Words* into the *Last* word and the *Rest*
    atomics_to_string(Rest, ", ", WithCommas),
    atomics_to_string([WithCommas, " and ", Last], Serialized).



test :-
    forall( member(Words, [[], ["ABC"], ["ABC", "DEF"], ["ABC", "DEF", "G", "H"]]),
            ( words_series(Words, Series),
              format('~w ~15|=> ~w~n', [Words, Series]))
          ).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines test/0 and never calls it; the driver calls it once at load.
:- initialization(test).
%--------------------------------------------------- 72 command-line-arguments-1
:-
    current_prolog_flag(os_argv, Args),
    write(Args).
%--------------------------------------------------- 73 command-line-arguments-2
:-
    current_prolog_flag(argv, Args),
    write(Args).
%-------------------------------------------------- 74 compare-a-list-of-strings
los(["AA","BB","CC"]).
los(["AA","AA","AA"]).
los(["AA","CC","BB"]).
los(["AA","ACB","BB","CC"]).
los(["single_element"]).

lexically_equal(S,S,S).
in_order(G,L,G) :- compare(<,L,G).

test_list(List) :-
    List = [L|T],
    write('for list '), write(List), nl,
    (foldl(lexically_equal, T, L, _)
        -> writeln('The items in the list ARE lexically equal')
        ; writeln('The items in the list are NOT lexically equal')),
    (foldl(in_order, T, L, _)
        -> writeln('The items in the list ARE in ascending order')
        ; writeln('The items in the list are NOT in ascending order')),
    nl.

test :- forall(los(List), test_list(List)).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines test/0 and never calls it; the driver calls it once at load.
:- initialization(test).
%--------------------------------------------------- 75 compile-time-calculation
% Taken from RosettaCode Factorial page for Prolog
fact(X, 1) :- X<2.
fact(X, F) :- Y is X-1, fact(Y,Z), F is Z*X.
	
goal_expansion((X = factorial_of(N)), (X = F)) :- fact(N,F).
				
test :-	
	F = factorial_of(10),
	format('!10 = ~p~n', F).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines test/0 and never calls it; the driver calls it once at load.
:- initialization(test).
%-------------------------------------------------- 76 compiler-lexical-analyzer
/*
    Test harness for the analyzer, not needed if we are actually using the output.
*/
load_file(File, Input) :-
	read_file_to_codes(File, Codes, []),
	maplist(char_code, Chars, Codes),
	atom_chars(Input,Chars).

test_file(File) :-
	load_file(File, Input),
	tester(Input).

tester(S) :-
	atom_chars(S,Chars),
	tokenize(Chars,L),
	maplist(print_tok, L),
	!.

print_tok(L) :-
	L =.. [Op,Line,Pos],
	format('~d\t~d\t~p~n', [Line,Pos,Op]).
print_tok(string(Value,Line,Pos)) :-
	format('~d\t~d\tstring\t\t"~w"~n', [Line,Pos,Value]).	
print_tok(identifier(Value,Line,Pos)) :-
	format('~d\t~d\tidentifier\t~p~n', [Line,Pos,Value]).	
print_tok(integer(Value,Line,Pos)) :-
	format('~d\t~d\tinteger\t\t~p~n', [Line,Pos,Value]).	


/*
	Tokenize
	
	run the input over a DCG to get out the tokens.
	
	In - a list of chars to tokenize
	Tokens = a list of tokens (excluding spaces).
*/
tokenize(In,RelTokens) :-
	newline_positions(In,1,NewLines),
	tokenize(In,[0|NewLines],1,1,Tokens),
	check_for_exceptions(Tokens),
	exclude(token_name(space),Tokens,RelTokens).

tokenize([],NewLines,Pos,LineNo,[end_of_input(LineNo,Offset)]) :-
	position_offset(NewLines,Pos,Offset).
tokenize(In,NewLines,Pos,LineNo,Out) :-
	position_offset(NewLines,Pos,Offset),
	phrase(tok(Tok,TokLen,LineNo,Offset),In,T),
	(
		Tok = [] -> Out = Toks
		; Out = [Tok|Toks]
	),
	Pos1 is Pos + TokLen,
	update_line_no(LineNo,NewLines,Pos1,NewLineNo,NewNewLines),
	tokenize(T,NewNewLines,Pos1,NewLineNo,Toks).
	
update_line_no(LNo,[L],_,LNo,[L]).
update_line_no(LNo,[L,Nl|T],Pos,LNo,[L,Nl|T]) :-
	Pos =< Nl.
update_line_no(LNo,[_,Nl|T],Pos,LNo2,Nlines) :-
	Pos > Nl,
	succ(LNo,LNo1),
	update_line_no(LNo1,[Nl|T],Pos,LNo2,Nlines).

position_offset([Line|_],Pos,Offset) :- Offset is Pos - Line.	
	
token_name(Name,Tok) :- functor(Tok,Name,_).	

% Get a list of all the newlines and their position in the data
% This is used to create accurate row/column numbers. 	
newline_positions([],N,[N]).
newline_positions(['\n'|T],N,[N|Nt]) :- succ(N,N1), newline_positions(T,N1,Nt).
newline_positions([C|T],N,Nt) :- dif(C,'\n'), succ(N,N1), newline_positions(T,N1,Nt).	
	
% The tokenizer can tokenize some things that it shouldn't, deal with them here. 	
check_for_exceptions([]). % all ok
check_for_exceptions([op_divide(L,P),op_multiply(_,_)|_]) :-
	format(atom(Error), 'Unclosed comment at line ~d,~d', [L,P]),
	throw(Error).
check_for_exceptions([integer(_,L,P),identifier(_,_,_)|_]) :-
	format(atom(Error), 'Invalid identifier at line ~d,~d', [L,P]),
	throw(Error).	
check_for_exceptions([_|T]) :- check_for_exceptions(T).	


/*
	A set of helper DCGs for the more complicated token types
*/	
:- set_prolog_flag(double_quotes, chars).

identifier(I) --> c_types(I,csym).
identifier(['_']) --> ['_'].
identifier([]) --> [].

integer_(I,L) --> c_types(N,digit), { number_codes(I,N), length(N,L) }.

% get a sequence of characters of the same type (https://www.swi-prolog.org/pldoc/doc_for?object=char_type/2)
c_types([C|T],Type) --> c_type(C,Type), c_types(T,Type).
c_types([C],Type) --> c_type(C,Type).
c_type(C,Type) --> [C],{ char_type(C,Type) }.

anything([]) --> [].
anything([A|T]) --> [A], anything(T).

string_([]) --> [].
string_([A|T]) --> [A], { dif(A,'\n') }, string_(T).


/*
	The token types are all handled by the tok DCG, order of predicates is important here.
*/	
% comment
tok([],CLen,_,_) --> "/*", anything(A), "*/", { length(A,Len), CLen is Len + 4 }.

% toks
tok(op_and(L,P),2,L,P) --> "&&".
tok(op_or(L,P),2,L,P) --> "||".
tok(op_lessequal(L,P),2,L,P) --> "<=".
tok(op_greaterequal(L,P),2,L,P) --> ">=".
tok(op_greaterequal(L,P),2,L,P) --> ">=".
tok(op_equal(L,P),2,L,P) --> "==".
tok(op_notequal(L,P),2,L,P) --> "!=".
tok(op_assign(L,P),1,L,P) --> "=".
tok(op_multiply(L,P),1,L,P) --> "*".
tok(op_divide(L,P),1,L,P) --> "/".
tok(op_mod(L,P),1,L,P) --> "%".
tok(op_add(L,P),1,L,P) --> "+".
tok(op_subtract(L,P),1,L,P) --> "-".
tok(op_negate(L,P),1,L,P) --> "-".
tok(op_less(L,P),1,L,P) --> "<".
tok(op_greater(L,P),1,L,P) --> ">".
tok(op_not(L,P),1,L,P) --> "!".

% symbols
tok(left_paren(L,P),1,L,P) --> "(".
tok(right_paren(L,P),1,L,P) --> ")".
tok(left_brace(L,P),1,L,P) --> "{".
tok(right_brace(L,P),1,L,P) --> "}".
tok(semicolon(L,P),1,L,P) --> ";".
tok(comma(L,P),1,L,P) --> ",".

% keywords
tok(keyword_if(L,P),2,L,P) --> "if".
tok(keyword_else(L,P),4,L,P) --> "else".
tok(keyword_while(L,P),5,L,P) --> "while".
tok(keyword_print(L,P),5,L,P) --> "print".
tok(keyword_putc(L,P),4,L,P) --> "putc".

% identifier and literals
tok(identifier(I,L,P),Len,L,P) --> c_type(S,csymf), identifier(T), { atom_chars(I,[S|T]), length([S|T],Len) }.
tok(integer(V,L,P),Len,L,P) --> integer_(V,Len).
tok(integer(I,L,P),4,L,P) --> "'\\\\'", { char_code('\\', I) }.
tok(integer(I,L,P),4,L,P) --> "'\\n'", { char_code('\n', I) }.
tok(integer(I,L,P),3,L,P) --> ['\''], [C], ['\''], { dif(C,'\n'), dif(C,'\''), char_code(C,I) }.
tok(string(S,L,P),SLen,L,P) --> ['"'], string_(A),['"'], { atom_chars(S,A), length(A,Len), SLen is Len + 2 }.

% spaces
tok(space(L,P),Len,L,P) --> c_types(S,space), { length(S,Len) }.

% anything else is an error
tok(_,_,L,P) --> { format(atom(Error), 'Invalid token at line ~d,~d', [L,P]), throw(Error) }.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines tester/1 (and test_file/1 over a named file) and never calls it; the driver tokenizes the task's first two test programs, Hello world and phoenix_number.
:- initialization((tester('/*\n  Hello world\n */\nprint("Hello, World!\\n");\n'), nl, tester('/*\n  Show Ident and Integers\n */\nphoenix_number = 142857;\nprint(phoenix_number, "\\n");\n'))).
%------------------------------------------------------- 77 compound-data-type-1
point(10, 20).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the compound point(10, 20) and never queries it; the driver runs compound-data-type-2's query point(X, Y) and prints its fields.
:- initialization((point(X, Y), format("X = ~w, Y = ~w~n", [X, Y]))).
%------------------------------------------------------- 78 compound-data-type-3
person_location(person(name(N), age(A)), point(X, Y)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the nested compound person_location(person(name(N), age(A)), point(X, Y)) and never queries it; the driver prints it with its variables numbered.
:- initialization((person_location(P, L), numbervars(P-L, 0, _), print(person_location(P, L)), nl)).
%------------------------------------------------------- 79 concurrent-computing
main :-
    thread_create(say("Enjoy"),A,[]),
    thread_create(say("Rosetta"),B,[]),
    thread_create(say("Code"),C,[]),
    thread_join(A,_),
    thread_join(B,_),
    thread_join(C,_).

say(Message) :-
    Delay is random_float,
    sleep(Delay),
    writeln(Message).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%--------------------------------------------------- 80 conditional-structures-1
go :- write('Hello, World!'), nl.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines go/0 and never calls it; the driver calls it once at load.
:- initialization(go).
%--------------------------------------------------- 81 conditional-structures-2
fact(foo).
fact(bar).
fact(baz).

go :- fact(booger).
go :- fact(bar).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): go/0 succeeds through its second clause and prints nothing, so the coo's driver printed nothing; the driver prints whether go/0 succeeds.
:- initialization((go -> writeln('go: true') ; writeln('go: false'))).
%--------------------------------------------------- 82 conditional-structures-3
fact(X) :-
    (   X = foo
    ;   X = bar
    ;   X = baz ).

go :-
    (   fact(booger)
    ;   fact(bar) ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): go/0 succeeds through its second disjunct and prints nothing, so the coo's driver printed nothing; the driver prints whether go/0 succeeds.
:- initialization((go -> writeln('go: true') ; writeln('go: false'))).
%--------------------------------------------------- 83 conditional-structures-4
fact(X) :-
    (   X = bar ->  write('You got me!'), nl
    ;               write(X), write(' is not right!'), nl, fail ).

go :-
    (   fact(booger)
    ;   fact(bar) ).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines go/0 and never calls it; the driver calls it once at load.
:- initialization(go).
%--------------------------------------------------------- 84 continued-fraction
continued_fraction :-
	% square root 2
	continued_fraction(200, sqrt_2_ab, V1),
	format('sqrt(2) = ~w~n', [V1]),

	% napier
	continued_fraction(200, napier_ab, V2),
	format('e       = ~w~n', [V2]),

	% pi
	continued_fraction(200, pi_ab, V3),
	format('pi      = ~w~n', [V3]).


% code for continued fractions
continued_fraction(N, Compute_ab, V) :-
	continued_fraction(N,  Compute_ab, 0, V).

continued_fraction(0,  Compute_ab, Temp, V) :-
	call(Compute_ab, 0, A, _),
	V is A + Temp.

continued_fraction(N, Compute_ab, Tmp, V) :-
	call(Compute_ab, N, A, B),
	Tmp1 is B / (A + Tmp),
	N1 is N - 1,
	continued_fraction(N1, Compute_ab, Tmp1, V).

% specific codes for examples
% definitions for square root of 2
sqrt_2_ab(0, 1, 1).
sqrt_2_ab(_, 2, 1).

% definitions for napier
napier_ab(0, 2, _).
napier_ab(1, 1, 1).
napier_ab(N, N, V) :-
	V is N - 1.

% definitions for pi
pi_ab(0, 3, _).
pi_ab(N, 6, V) :-
	V is (2 * N - 1)*(2 * N - 1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines continued_fraction/0 and never calls it; the driver calls it once at load.
:- initialization(continued_fraction).
%--------------------------------------- 85 convert-seconds-to-compound-duration
:- use_module(library(clpfd)).

% helper to perform the operation with just a number.
compound_time(N) :-
    times(N, R),
    format('~p: ', N),
    write_times(R).

% write out the results in the 'special' format.
write_times([[Tt, Val]|T]) :-
    dif(T, []),
    format('~w ~w, ', [Val, Tt]),
    write_times(T).
write_times([[Tt, Val]|[]]) :-
    format('~w ~w~n', [Val, Tt]).


% this predicate is the main predicate, it takes either N
% or a list of split values to get N, or both.
times(N, R) :-
    findall(T, time_type(T,_), TTs),
    times(TTs, N, R).

% do the split, if there is a 1 or greater add to a list of results.
times([], _, []).
times([Tt|T], N, Rest) :-
    time_type(Tt, Div),
    Val #= N // Div,
    Val #< 1,
    times(T, N, Rest).
times([Tt|T], N, [[Tt,Val]|Rest]) :-
    time_type(Tt, Div),
    Val #= N // Div,
    Val #>= 1,
    Rem #= N mod Div,
    times(T, Rem, Rest).


% specifify the different time split types
time_type(wk, 60 * 60 * 24 * 7).
time_type(d, 60 * 60 * 24).
time_type(hr, 60 * 60).
time_type(min, 60).
time_type(sec, 1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines compound_time/1 and never calls it; the driver runs the task's three test cases.
:- initialization(forall(member(N, [7259, 86400, 6000000]), compound_time(N))).
%------------------------------------------------------- 86 conways-game-of-life
%----------------------------------------------------------------------%
% GAME OF LIFE                                                         %
%                                                                      %
% Adapt the prediacte grid_size according to the grid size of the      %
%   start pic.                                                         %
% Modify the number of generations.                                    %
% Run PROLOG and type '[gol].' to compile the source file.             %
% Create a subfolder <subfolder> where your gol.pl resides and place   %
%   your initial PBM '<filename>0.0000.pbm' inside <subfolder>.        %
% You need to adjust the number of zeros after <filename>. The         %
%   sequence of zeros after '0.' must be as long as the number of      %
%   generations. This is important to obtain a propper animation.      %
%   (Maybe someone knows a better solution for this)                   %
% Start PROLOG and run                                                 %
%                                                                      %
%                cellular('./<subloder>/<filename>').                  %
%                                                                      %
% Inside <subfolder> run the following shell command                   %
%                                                                      %
%         convert -delay 25 -loop 0 <filename>* <filename>.gif         %
%                                                                      %
%----------------------------------------------------------------------%

%----------------------------------------------------------------------%
% Special thanks to René Thiemann improving the runtime performance.   %
%----------------------------------------------------------------------%

% Size of the 2D grid
grid_size(300).
% Number of generations
generations(1000).

%----------------------------------------------------------------------%
% Main procedure: generate n generations of life and store each file.  %
%   cellular( +File path )                                             %
%----------------------------------------------------------------------%
cellular(I) :-
   grid_size(GS),
   string_concat(I,'0.0000.pbm',I1),
   read_pbm(I1,GS,M),
   cellular_(I,M,GS,1), !.

cellular_(I,M,GS,N) :-
   N1 is N+1,
   format(atom(N0),'~4d',N),
   string_concat(I,N0,I1),
   string_concat(I1,'.pbm',I2),
   step(M,M1),
   write_pbm(M1,GS,I2), !,
   cellular_(I,M1,GS,N1).
cellular_(_,_,_,GE) :-
   generations(GE),!.

%----------------------------------------------------------------------%
% Apply the Game Of Life rule set to every cell.                       %
%   step( +OldMatrix, +NewMatrix )                                     %
%                                                                      %
%  ss | s | ... | s       ss ... step_ss                               %
% ----+---+-----+---      s  ... step_s                                %
%  ii | i | ... | i       ii ... step_ii                               %
% ----+---+-----+---      i  ... step_i                                %
%   : | : |  :  | :       ee ... step_ee                               %
% ----+---+-----+---      e  ... step_e                                %
%  ii | i | ... | i                                                    %
% ----+---+-----+---                                                   %
%  ee | e | ... | e                                                    %
%                                                                      %
%----------------------------------------------------------------------%
step([R1,R2|M],[H|T]) :-
   step_ss(R1,R2,H), !,
   step_([R1,R2|M],T).

step_([R1,R2,R3|M],[H|T]) :-
   step_ii(R1,R2,R3,H),
   step_([R2,R3|M],T), !.
step_([R1,R2],[H]) :-
   step_ee(R1,R2,H).

% Start case
step_ss([A1,A2|R1],[B1,B2|R2],[H|T]) :-
   rule([0,0,0],[0,A1,A2],[0,B1,B2],H),
   step_s([A1,A2|R1],[B1,B2|R2],T).
step_s([A1,A2,A3|R1],[B1,B2,B3|R2],[H|T]) :-
   rule([0,0,0],[A1,A2,A3],[B1,B2,B3],H),
   step_s([A2,A3|R1],[B2,B3|R2],T).
step_s([A1,A2],[B1,B2],[H]) :-
   rule([0,0,0],[A1,A2,0],[B1,B2,0],H).

% Immediate case
step_ii([A1,A2|R1],[B1,B2|R2],[C1,C2|R3],[H|T]) :-
   rule([0,A1,A2],[0,B1,B2],[0,C1,C2],H),
   step_i([A1,A2|R1],[B1,B2|R2],[C1,C2|R3],T).
step_i([A1,A2,A3|R1],[B1,B2,B3|R2],[C1,C2,C3|R3],[H|T]) :-
   rule([A1,A2,A3],[B1,B2,B3],[C1,C2,C3],H),
   step_i([A2,A3|R1],[B2,B3|R2],[C2,C3|R3],T).
step_i([A1,A2],[B1,B2],[C1,C2],[H]) :-
   rule([A1,A2,0],[B1,B2,0],[C1,C2,0],H).

% End case
step_ee([A1,A2|R1],[B1,B2|R2],[H|T]) :-
   rule([0,A1,A2],[0,B1,B2],[0,0,0],H),
   step_e([A1,A2|R1],[B1,B2|R2],T).
step_e([A1,A2,A3|R1],[B1,B2,B3|R2],[H|T]) :-
   rule([A1,A2,A3],[B1,B2,B3],[0,0,0],H),
   step_e([A2,A3|R1],[B2,B3|R2],T).
step_e([A1,A2],[B1,B2],[H]) :-
   rule([A1,A2,0],[B1,B2,0],[0,0,0],H).

%----------------------------------------------------------------------%
% o Any dead cell with exactly three live neighbours becomes a live    %
%   cell, as if by reproduction.                                       %
% o Any other dead cell remains dead.                                  %
% o Any live cell with fewer than two live neighbours dies, as if      %
%   caused by under-population.                                        %
% o Any live cell with two or three live neighbours lives on to the    %
%   next generation.                                                   %
% o Any live cell with more than three live neighbours dies, as if by  %
%   overcrowding.                                                      %
%                                                                      %
% [Source: Wikipedia]                                                  %
%----------------------------------------------------------------------%
rule([A,B,C],[D,0,F],[G,H,I],1) :- A+B+C+D+F+G+H+I =:= 3.
rule([_,_,_],[_,0,_],[_,_,_],0).
rule([A,B,C],[D,1,F],[G,H,I],0) :- A+B+C+D+F+G+H+I < 2.
rule([A,B,C],[D,1,F],[G,H,I],1) :- A+B+C+D+F+G+H+I =:= 2.
rule([A,B,C],[D,1,F],[G,H,I],1) :- A+B+C+D+F+G+H+I =:= 3.
rule([A,B,C],[D,1,F],[G,H,I],0) :- A+B+C+D+F+G+H+I > 3.

%----------------------------------------------------------------------%
% Read a 2bit Protable Bitmap into a GS x GS 2-dimensional list.       %
%   read_pbm( +File path, +Grid size, -List 2D )                       %
%----------------------------------------------------------------------%
read_pbm(F,GS,M) :-
   open(F,read,S),
   skip(S,10),
   skip(S,10),
   get(S,C),
   read_file(S,C,L),
   nest(L,GS,M),
   close(S).

read_file(S,C,[CHR|T]) :-
   CHR is C-48,
   get(S,NC),
   read_file(S,NC,T).
read_file(_,-1,[]) :- !.

%----------------------------------------------------------------------%
% Morph simple list into a 2-dimensional one with size GS x GS         %
%   nest( ?List simple, ?Grid size, ?2D list )                         %
%----------------------------------------------------------------------%
nest(L,GS,[H|T]) :-
   length(H,GS),
   append(H,S,L),
   nest(S,GS,T).
nest(L,GS,[L]) :-
   length(L,S),
   S =< GS, !.

%----------------------------------------------------------------------%
% Write a GS x GS 2-dimensional list into a 2bit Protable Bitmap.      %
%   write_pbm( +List 2D, +Grid size, +File path )                      %
%----------------------------------------------------------------------%
write_pbm(L,GS,F) :-
   open(F,write,S),
   write(S,'P1'), nl(S),
   write(S,GS), put(S,' '), write(S,GS), nl(S),
   write_file(S,L),
   close(S).

write_file(S,[H|T]) :-
   write_line(S,H), nl(S),
   write_file(S,T).
write_file(_,[]) :- !.

write_line(S,[H|T]) :-
   write(S,H), put(S,' '),
   write_line(S,T).
write_line(_,[]) :- !.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): cellular/1 reads and writes PBM files of a 300x300 grid for 1000 generations; the driver calls its rule step/2 on the task's blinker in a 3x3 grid and prints three generations.
:- initialization((M0 = [[0, 1, 0], [0, 1, 0], [0, 1, 0]], step(M0, M1), step(M1, M2), forall(member(M, [M0, M1, M2]), (forall(member(Row, M), (atomic_list_concat(Row, ' ', A), writeln(A))), nl)))).
%--------------------- 87 count-how-many-vowels-and-consonants-occur-in-a-string
:- set_prolog_flag(double_quotes, codes).

key_is_vowel(Code - _) :- ord_memberchk(Code, "aeiou").

task(String) :-
    include(is_alpha, String, Alphas),
    maplist(to_lower, Alphas, Lower),
    msort(Lower, Sorted),
    clumped(Sorted, Clumped),
    partition(key_is_vowel, Clumped, Vowels, Consonants),
    pairs_values(Vowels, VowelCounts),
    sum_list(VowelCounts, TotalVowels),
    length(Vowels, DistinctVowels),
    pairs_values(Consonants, ConsonantCounts),
    sum_list(ConsonantCounts, TotalConsonants),
    length(Consonants, DistinctConsonants),
    format("String: ~s~n    Vowels: ~d (distinct ~d)~n    Consonants: ~d (distinct ~d)~n",
        [String, TotalVowels, DistinctVowels, TotalConsonants, DistinctConsonants]).

:- initialization(main, main).
main([Arg]) :- atom_codes(Arg, Codes), task(Codes).
%------------------------------------------------------------- 88 count-in-octal
o(O) :- member(O, [0,1,2,3,4,5,6,7]).

octal([O]) :- o(O).
octal([A|B]) :-
	octal(O),
	o(T),
	append(O, [T], [A|B]),
	dif(A, 0).
	
octalize :-
	forall(
		octal(X),
		(maplist(write, X), nl)
	).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): octalize/0 counts in octal forever; the driver runs its loop over octal/1 bounded to the first 65 numbers (0 .. 100 octal).
:- initialization(forall(limit(65, octal(X)), (maplist(write, X), nl))).
%----------------------------------------- 89 count-occurrences-of-a-substring-1
count_substring(String, Sub, Total) :-
    count_substring(String, Sub, 0, Total).

count_substring(String, Sub, Count, Total) :-
    ( substring_rest(String, Sub, Rest)
    ->
        succ(Count, NextCount),
        count_substring(Rest, Sub, NextCount, Total)
    ;
        Total = Count
    ).

substring_rest(String, Sub, Rest) :-
    sub_string(String, Before, Length, Remain, Sub),
    DropN is Before + Length,
    sub_string(String, DropN, Remain, 0, Rest).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines count_substring/3 and never calls it; the driver counts the task's two examples.
:- initialization(forall(member(S-Sub, ["the three truths"-"th", "ababababab"-"abab"]), (count_substring(S, Sub, N), format("~w~n", [N])))).
%----------------------------------------- 90 count-occurrences-of-a-substring-3
:- system:set_prolog_flag(double_quotes,chars) .

occurrences(TARGETz0,SUBSTRINGz0,COUNT)
:-
prolog:phrase(occurrences(SUBSTRINGz0,0,COUNT),TARGETz0)
.

occurrences("",_,_)
-->
! ,
{ false }
.

occurrences(SUBSTRINGz0,COUNT0,COUNT)
-->
SUBSTRINGz0 ,
! ,
{ COUNT1 is COUNT0 + 1 } ,
occurrences(SUBSTRINGz0,COUNT1,COUNT)
.

occurrences(SUBSTRINGz0,COUNT0,COUNT)
-->
[_] ,
! ,
occurrences(SUBSTRINGz0,COUNT0,COUNT)
.

occurrences(_SUBSTRINGz0_,COUNT,COUNT)
-->
!
.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines occurrences/3 (over chars, its own double_quotes flag) and never calls it; the driver counts the task's two examples.
:- initialization(forall(member(S-Sub, ["the three truths"-"th", "ababababab"-"abab"]), (occurrences(S, Sub, N), format("~w~n", [N])))).
%------------------------------------------------------------ 91 count-the-coins
:- use_module(library(clpfd)).

% Basic, Q = Quarter, D = Dime, N = Nickel, P = Penny
coins(Q, D, N, P, T) :-
	[Q,D,N,P] ins 0..T,
	T #= (Q * 25) + (D * 10) + (N * 5) + P.

coins_for(T) :-
	coins(Q,D,N,P,T),
	maplist(indomain, [Q,D,N,P]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines coins_for/1, which enumerates one way per solution, and never calls it; the driver counts the ways to change the task's 100 cents.
:- initialization((aggregate_all(count, coins_for(100), N), format("~w~n", [N]))).
%------------------------------------------------------------------ 92 countdown
/* given numbers & target */

n(100,1). n(75,2). n(50,3). n(25,4). n(6,5). n(3,6).
ok(Res) :- Res = 952.

/* four operations with strictly positive integers and N1 >= N2 */

r(N1,N2,Res,'+') :-                         Res is N1 + N2.
r(N1,N2,Res,'-') :- N1 > N2,                Res is N1 - N2.
r(N1,N2,Res,'*') :- N2 > 1,                 Res is N1 * N2.
r(N1,N2,Res,'/') :- N2 > 1, 0 is N1 mod N2, Res is N1 div N2.

/* concatenation */

concaten([],L,L).
concaten([H|L1],L2,[H|L3]) :- concaten(L1,L2,L3).

/* four operations & print solution management */

ra(N1,N2,Res,Lout1,Lout2,NewLout) :-
   concaten(Lout1,Lout2,Lout),
   N1 >= N2,
   r(N1,N2,Res,Ope),
   concaten(Lout,[N1,Ope,N2,Res|[]],NewLout).

/* print result */

lout([]) :- nl.
lout([N1,Ope,N2,Res|Queue]) :-
   out(N1,Ope,N2,Res),
   lout(Queue).
out(N1,Ope,N2,Res) :-
   write(N1), write(Ope), write(N2), write('='), write(Res), nl.

/* combine two last numbers & result control */

c(N1,N2,Lout1,Lout2) :-
   ra(N1,N2,Res,Lout1,Lout2,NewLout),
   ok(Res),
   lout(NewLout).

/* unique list */

uniqueList([]).
uniqueList([H|T]) :- \+(member(H,T)), uniqueList(T).

/* all possible arrangements */

c1 :-
   n(Nb,_),                                             /* a                  */
   ok(Nb),
   write(Nb).

c2 :-
   n(N1,I1), n(N2,I2),                                  /* (ab)               */
   I1\=I2,
        c(N1,N2,[],[]).

c3 :-
   n(N1,I1), n(N2,I2), n(N3,I3),
   I1\=I2, I1\=I3, I2\=I3,
       ra(N1,  N2,  Res1,[],   [],   Lout1),            /* (ab) c             */
        c(Res1,N3,       Lout1,[]).

c4 :-
   n(N1,I1), n(N2,I2), n(N3,I3), n(N4,I4),
   uniqueList([I1,I2,I3,I4]),
       ra(N1,  N2,  Res1,[],   [],   Lout1),            /* (ab) (cd)          */
   ((  ra(N3,  N4,  Res2,[],   [],   Lout2),
        c(Res1,Res2,     Lout1,Lout2));                 /* ((ab) c) d         */
   (   ra(Res1,N3,  Res2,Lout1,[],   Lout2),
        c(Res2,N4,       Lout2,[]))).

c5 :-
   n(N1,I1), n(N2,I2), n(N3,I3), n(N4,I4), n(N5,I5),
   uniqueList([I1,I2,I3,I4,I5]),
       ra(N1,  N2,  Res1,[],   [],   Lout1),            /* ((ab) (cd)) e      */
   ((  ra(N3,  N4,  Res2,[],   [],   Lout2),
       ra(Res1,Res2,Res3,Lout1,Lout2,Lout3),
        c(Res3,N5,       Lout3,[]));                    /* ((ab) c) (de)      */
   (   ra(Res1,N3,  Res2,Lout1,[],   Lout2),
       ra(N4,  N5,  Res3,[],   [],   Lout3),
        c(Res2,Res3,     Lout2,Lout3));                 /* (((ab) c) d) e     */
   (   ra(Res1,N3,  Res2,Lout1,[],   Lout2),
       ra(Res2,N4,  Res3,Lout2,[],   Lout3),
        c(Res3,N5,       Lout3,[]))).

c6 :-
   n(N1,I1), n(N2,I2), n(N3,I3), n(N4,I4), n(N5,I5), n(N6,I6),
   uniqueList([I1,I2,I3,I4,I5,I6]),
       ra(N1,  N2,  Res1,[],   [],   Lout1),            /* ((ab) (cd)) (ef)   */
   ((  ra(N3,  N4,  Res2,[],   [],   Lout2),
       ra(Res1,Res2,Res3,Lout1,Lout2,Lout3),
       ra(N5,  N6,  Res4,[],   [],   Lout4),
        c(Res3,Res4,     Lout3,Lout4));                 /* ((ab) c) ((de) f)  */
   (   ra(Res1,N3,  Res2,Lout1,[],   Lout2),
       ra(N4,  N5,  Res3,[],   [],   Lout3),
       ra(Res3,N6,  Res4,Lout3,[],   Lout4),
        c(Res2,Res4,     Lout2,Lout4));                 /* (((ab) c) d) (ef)  */
   (   ra(Res1,N3,  Res2,Lout1,[],   Lout2),
       ra(Res2,N4,  Res3,Lout2,[],   Lout3),
       ra(N5,  N6,  Res4,[],   [],   Lout4),
        c(Res3,Res4,     Lout3,Lout4));                 /* ((((ab) c) d) e) f */
   (   ra(Res1,N3,  Res2,Lout1,[],   Lout2),
       ra(Res2,N4,  Res3,Lout2,[],   Lout3),
       ra(Res3,N5,  Res4,Lout3,[],   Lout4),
        c(Res4,N6,       Lout4,[]))).

/* solution */

solution :- c1 ; c2 ; c3 ; c4 ; c5 ; c6.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines solution/0 (the given numbers and target 952) and never calls it; the driver calls it once at load.
:- initialization(solution).
%--------------------------------------------------------------- 93 cramers-rule
removeElement([_|Tail], 0, Tail).
removeElement([Head|Tail], J, [Head|X]) :-
    J_2 is J - 1,
    removeElement(Tail, J_2, X).

removeColumn([], _, []).
removeColumn([Matrix_head|Matrix_tail], J, [X|Y]) :-
    removeElement(Matrix_head, J, X),
    removeColumn(Matrix_tail, J, Y).

removeRow([_|Matrix_tail], 0, Matrix_tail).
removeRow([Matrix_head|Matrix_tail], I, [Matrix_head|X]) :-
    I_2 is I - 1,
    removeRow(Matrix_tail, I_2, X).

cofactor(Matrix, I, J, X) :-
    removeRow(Matrix, I, Matrix_2),
    removeColumn(Matrix_2, J, Matrix_3),
    det(Matrix_3, Y),
    X is (-1) ** (I + J) * Y.

det_summand(_, _, [], 0).
det_summand(Matrix, J, B, X) :-
    B = [B_head|B_tail],
    cofactor(Matrix, 0, J, Z),
    J_2 is J + 1,
    det_summand(Matrix, J_2, B_tail, Y),
    X is B_head * Z + Y.

det([[X]], X).
det(Matrix, X) :-
    Matrix = [Matrix_head|_],
    det_summand(Matrix, 0, Matrix_head, X).

replaceElement([_|Tail], 0, New, [New|Tail]).
replaceElement([Head|Tail], J, New, [Head|Y]) :-
    J_2 is J - 1,
    replaceElement(Tail, J_2, New, Y).

replaceColumn([], _, _, []).
replaceColumn([Matrix_head|Matrix_tail], J, [Column_head|Column_tail], [X|Y]) :-
    replaceElement(Matrix_head, J, Column_head, X),
    replaceColumn(Matrix_tail, J, Column_tail, Y).

cramerElements(_, B, L, []) :- length(B, L).
cramerElements(A, B, J, [X_J|Others]) :-
    replaceColumn(A, J, B, A_J),
    det(A_J, Det_A_J),
    det(A, Det_A),
    X_J is Det_A_J / Det_A,
    J_2 is J + 1,
    cramerElements(A, B, J_2, Others).

cramer(A, B, X) :- cramerElements(A, B, 0, X).

results(X) :-
    A = [
            [2, -1,  5,  1],
            [3,  2,  2, -6],
            [1,  3,  3, -1],
            [5, -2, -3,  3]
        ],
    B = [-3, -32, -47, 49],
    cramer(A, B, X).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines results/1 (the task's 4x4 system) and never calls it; the driver prints its solution.
:- initialization((results(X), format("~w~n", [X]))).
%---------------------------------- 94 create-a-two-dimensional-array-at-runtime
:- dynamic array/2.

run :-
    write('Enter two positive integers, separated by a comma: '),
    read((I,J)),
    assert(array(I,J)),
    Value is I * J,
    format('a(~w,~w) = ~w', [I, J, Value]),
    retractall(array(_,_)).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines run/0 and never calls it; the driver calls it once at load.
:- initialization(run).
%------------------------------------------------------ 95 csv-data-manipulation
test :- augment('test.csv', 'test.out.csv').

% augment( +InFileName, +OutFileName)
augment(InFile, OutFile)  :-
   open(OutFile, write, OutStream),
   ( ( csv_read_file_row(InFile, Row, [line(Line)]),
       % Row is of the form row( Item1, Item2, ....).
       addrow(Row, Out),
       csv_write_stream(OutStream, [Out], []),
       fail
     )
   ; close(OutStream)
   ).

% If the first item in a row is an integer, then append the sum;
% otherwise append 'SUM':
addrow( Term, NewTerm ) :-
   Term =.. [F | List],
   List = [X|_],
   (integer(X) -> sum_list(List, Sum) ; Sum = 'SUM'),
   append(List, [Sum], NewList),
   NewTerm =.. [F | NewList].

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): the coo's test/0 reads test.csv, which neither the task nor this package ships; the driver gives the solution's own addrow/2 the task's five CSV rows and prints each augmented row comma-joined (csv_write_stream/3 would end every line with a carriage return).
:- initialization(forall(member(Row, [row('C1', 'C2', 'C3', 'C4', 'C5'), row(1, 5, 9, 13, 17), row(2, 6, 10, 14, 18), row(3, 7, 11, 15, 19), row(4, 8, 12, 16, 20)]), (addrow(Row, Out), Out =.. [_|Fields], atomic_list_concat(Fields, ',', Line), writeln(Line)))).
%-------------------------------------------------- 96 csv-to-html-translation-1
% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
csv_html :-
   L = "Character,Speech
The multitude,The messiah! Show us the messiah!
Brians mother,<angry>Now you listen here! He's not the messiah; he's a very naughty boy! Now go away!</angry>
The multitude,Who are you?
Brians mother,I'm his mother; that's who!
The multitude,Behold his mother! Behold his mother!",

   csv_html(L, Out, []),
   string_to_list(Str, Out),
   writeln(Str).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% simple HTML
%
csv_html(L) -->
   "<TABLE>\n",
   csv_tr(L),
   "</TABLE>".

csv_tr([]) --> [].

csv_tr(L) -->
   "<TR>\n",
   csv_td(L, S),
   "\n</TR>\n",
   csv_tr(S).

csv_td(L, S) -->
   "<TD>",
   csv_td_in(L, S),
   "</TD>".

csv_td_in([], []) --> [].

csv_td_in([10|L], L) --> [].

csv_td_in([44|L], S) -->
   "</TD><TD>",
   csv_td_in(L,S).

csv_td_in([60|T], S) -->
   "&lt;",
   csv_td_in(T, S).

csv_td_in([62|T], S) -->
   "&gt;",
   csv_td_in(T, S).

csv_td_in([H|T], S) -->
   [H],
   csv_td_in(T, S).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines csv_html/0 (the task's CSV text in a DCG over codes) and never calls it; written for code lists, so the flag is set at its head and the driver calls it once at load.
:- initialization(csv_html).
%-------------------------------------------------- 97 csv-to-html-translation-3
% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
csv_html_plus :-
   L =
"Character,Speech
The multitude,The messiah! Show us the messiah!
Brians mother,<angry>Now you listen here! He's not the messiah; he's a very naughty boy! Now go away!</angry>
The multitude,Who are you?
Brians mother,I'm his mother; that's who!
The multitude,Behold his mother! Behold his mother!",

   csv_html_plus(L, Out1, []),
   string_to_list(Str1, Out1),
   writeln(Str1).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% HTML +
%
csv_html_plus(L) -->
   "<TABLE>\n",
   csv_head(L, R),
   csv_body(R),
   "</TABLE>".


csv_head(L, R) -->
   "<THEAD>\n",
   csv_head_tr(L, R),
   "</THEAD>\n".


csv_head_tr(L, R) -->
   "<TR>\n",
   csv_head_th(L, R),
   "\n</TR>\n".


csv_head_th(L, S) -->
   "<TH style='color:#000; background:#FF0;'>",
   csv_head_th_in(L, S),
   "</TH>".

csv_head_th_in([], []) --> [].

csv_head_th_in([10|L], L) --> [].

csv_head_th_in([44|L], S) -->
   "</TH><TH style='color:#000; background:#FF0;'>",
   csv_head_th_in(L,S).

csv_head_th_in([H|T], S) -->
   [H],
   csv_head_th_in(T, S).


csv_body(L) -->
   "<TBODY>\n",
   csv_body_tr(L),
   "</TBODY>\n".

csv_body_tr([]) --> [].

csv_body_tr(L) -->
   "<TR>\n",
   csv_body_td(L, S),
   "\n</TR>\n",
   csv_body_tr(S).

csv_body_td(L, S) -->
   "<TD  style='color:#000; background:#8FF; border:1px #000 solid; padding:0.6em;'>",
   csv_body_td_in(L, S),
   "</TD>".

csv_body_td_in([], []) --> [].

csv_body_td_in([10|L], L) --> [].

csv_body_td_in([44|L], S) -->
   "</TD><TD  style='color:#000; background:#8FF; border:1px #000 solid; padding:0.6em;'>",
   csv_body_td_in(L,S).

csv_body_td_in([60|T], S) -->
   "&lt;",
   csv_body_td_in(T, S).

csv_body_td_in([62|T], S) -->
   "&gt;",
   csv_body_td_in(T, S).

csv_body_td_in([H|T], S) -->
   [H],
   csv_body_td_in(T, S).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines csv_html_plus/0 (the task's CSV text in a DCG over codes) and never calls it; written for code lists, so the flag is set at its head and the driver calls it once at load.
:- initialization(csv_html_plus).
%------------------------------------------------------------- 98 damm-algorithm
%!  damm_algorithm(+Number) is semidet.
%   Succeeds if the number is valid according to the Damm algorithm.
damm_algorithm(Number) :-
    Matrix = [
        [0, 3, 1, 7, 5, 9, 8, 6, 4, 2],
        [7, 0, 9, 2, 1, 5, 4, 8, 6, 3],
        [4, 2, 0, 6, 8, 7, 1, 3, 5, 9],
        [1, 7, 5, 0, 9, 8, 3, 4, 2, 6],
        [6, 1, 2, 3, 0, 4, 5, 9, 7, 8],
        [3, 6, 7, 4, 2, 0, 9, 5, 8, 1],
        [5, 8, 6, 9, 7, 2, 0, 1, 3, 4],
        [8, 9, 4, 5, 3, 6, 2, 0, 1, 7],
        [9, 4, 3, 8, 6, 1, 7, 2, 0, 5],
        [2, 5, 8, 1, 4, 3, 6, 7, 9, 0]
    ],
    number_codes(Number, Codes),
    foldl(damm_algorithm(Matrix), Codes, 0, 0).

damm_algorithm(Matrix, Code, N0, N) :-
    Digit is Code - 48,
    nth0(N0, Matrix, Row),
    nth0(Digit, Row, N).

:- foreach(member(Number, [5724, 5727, 112946, 112949]), (
    ( damm_algorithm(Number) -> write(Number is valid) ; write(Number is invalid) ),
    nl
)).
%------------------------------------------------------------ 99 day-of-the-week
main() :-
    christmas_days_falling_on_sunday(2011, 2121, SundayList),
    writeln(SundayList).

christmas_days_falling_on_sunday(StartYear, EndYear, SundayList) :-
    numlist(StartYear, EndYear, YearRangeList),
    include(is_christmas_day_a_sunday, YearRangeList, SundayList).

is_christmas_day_a_sunday(Year) :-
    Date = date(Year, 12, 25),
    day_of_the_week(Date, DayOfTheWeek),
    DayOfTheWeek == 7.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines main/0 (written main()) and never calls it; the driver calls it once at load (Christmas on a Sunday, 2011..2121).
:- initialization(main).
%--------------------------------------------------------- 100 deceptive-numbers
checkpair(1, 2).
checkpair(R, K) :-
    checkpair(R0, K0),
    R is 10*R0 + 1,
    K is K0 + 1.

deceptive(K) :-
    checkpair(R, K),
    \+ prime(K),
    divmod(R, K, _, 0).

task(K, Ns) :-
    lazy_findall(N, deceptive(N), Ds),
    length(Ns, K),
    prefix(Ns, Ds).

% check if a number is prime
%
wheel235(L) :-
   W = [4, 2, 4, 2, 4, 6, 2, 6 | W],
   L = [1, 2, 2 | W].

prime(N) :-
   N >= 2,
   wheel235(W),
   prime(N, 2, W).

prime(N, D, _) :- D*D > N, !.
prime(N, D, [A|As]) :-
    N mod D =\= 0,
    D2 is D + A, prime(N, D2, As).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines task/2 and never calls it; the driver prints the first 6 deceptive numbers (the task asks for 10, which take 20 s under swipl: checkpair/2 rebuilds every repunit on each step).
:- initialization((task(6, Ns), writeln(Ns))).
%--------------------------------------------------------- 101 decision-tables-1
%!  troubleshoot(?PrinterPrints, ?LightIsFlashing, ?RecognisedByComputer, ?Advice) is nondet.
troubleshoot(false, false, false, 'check the power cable').
troubleshoot(false,     _, false, 'check the printer-computer cable').
troubleshoot(    _,     _, false, 'ensure the printer software is installed').
troubleshoot(false,  true,     _, 'check/replace ink').
troubleshoot( true,  true,  true, 'check/replace ink').
troubleshoot(false,     _,  true, 'check for paper jam').

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the decision table troubleshoot/4 and never queries it; the driver prints every advice it gives for each of the eight condition combinations of the task's printer table.
:- initialization(forall((member(P, [false, true]), member(L, [false, true]), member(C, [false, true])), (findall(A, troubleshoot(P, L, C, A), As), format("prints=~w flashing=~w recognised=~w: ~w~n", [P, L, C, As])))).
%------------------------------------------ 102 decorate-sort-undecorate-idiom-1
:- use_module(library(pairs)).

:- meta_predicate schwartzian_transform(2, +, -).
schwartzian_transform(KeyGoal, List, SortedList) :-
    map_list_to_pairs(KeyGoal, List, Pairs),
    keysort(Pairs, SortedPairs),
    pairs_values(SortedPairs, SortedList).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines schwartzian_transform/3 and never calls it; the driver sorts the task's seven words by length.
:- initialization((schwartzian_transform(string_length, ["Rosetta", "Code", "is", "a", "programming", "chrestomathy", "site"], S), format("~q~n", [S]))).
%-------------------------------------------------------- 103 department-numbers
dept(X) :- between(1, 7, X).

police(X) :- member(X, [2, 4, 6]).
fire(X)   :- dept(X).
san(X)    :- dept(X).

assign(A, B, C) :-
    police(A), fire(B), san(C),
    A =\= B, A =\= C, B =\= C,
    12 is A + B + C.

main :-
    write("P F S"), nl,
    forall(assign(Police, Fire, Sanitation), format("~w ~w ~w~n", [Police, Fire, Sanitation])),
    halt.

?- main.
%--------------------------------------------------------- 104 descending-primes
isPrime(2).
isPrime(N):-
	between(3, inf, N),
	N /\ 1 > 0,             % odd
	M is floor(sqrt(N)) - 1, % reverse 2*I+1
	Max is M div 2,
	forall(between(1, Max, I), N mod (2*I+1) > 0).

combi(0, _, []).
combi(N, [_|T], Comb):-
    N > 0,
    combi(N, T, Comb).
combi(N, [X|T], [X|Comb]):-
    N > 0,
    N1 is N - 1,
    combi(N1, T, Comb).

descPrimes(Num):-
	between(1, 9, N),
	combi(N, [9, 8, 7, 6, 5, 4, 3, 2, 1], CList),
	atomic_list_concat(CList, Tmp), % swi specific
	atom_number(Tmp, Num),	 % int_list_to_number
	isPrime(Num).

showList(List):-
	findnsols(10, DPrim, (member(DPrim, List), writef('%9r', [DPrim])), _),
	nl,
	fail.
showList(_).
    	
do:-findall(DPrim, descPrimes(DPrim), DList),
	showList(DList).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines do/0 (every descending prime, ten a line) and never calls it; the driver calls it once at load.
:- initialization(do).
%--------------------------------------------------- 105 detect-division-by-zero
div(A, B, C, Ex) :-
    catch((C is A/B), Ex, (C = infinity)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines div/4 and never calls it; the driver divides 10 by 2 and 7 and 7.0 by zero and prints the result and the caught error (its formal term only, the context holds a variable).
:- initialization(forall(member(A/B, [10/2, 7/0, 7.0/0]), (div(A, B, C, Ex), (var(Ex) -> format("~w/~w = ~w~n", [A, B, C]) ; Ex = error(E, _), format("~w/~w = ~w (caught ~w)~n", [A, B, C, E]))))).
%------------------------- 106 determine-if-a-string-has-all-the-same-characters
:- system:set_prolog_flag(double_quotes,chars) .

main
:-
same_or_different("") ,
same_or_different("   ") ,
same_or_different("2") ,
same_or_different("333") ,
same_or_different(".55") ,
same_or_different("tttTTT") ,
same_or_different("4444 444k")
.

%!  same_or_different(INPUTz0)

same_or_different(INPUTz0)
:-
system:format('input string is "~s" .~n',[INPUTz0]) ,
examine(INPUTz0)
.

%!  examine(INPUTz0)

examine([])
:-
! ,
system:format('all the same characters .~n',[])
.

examine([COMPARE0|INPUTz0])
:-
examine(INPUTz0,COMPARE0,2,_INDEX_)
.

%!  examine(INPUTz0,COMPARE0,INDEX0,INDEX)

examine([],_COMPARE0_,INDEX0,INDEX0)
:-
! ,
system:format('all the same characters .~n',[])
.

examine([COMPARE0|INPUTz0],COMPARE0,INDEX0,INDEX)
:-
! ,
INDEX1 is INDEX0 + 1 ,
examine(INPUTz0,COMPARE0,INDEX1,INDEX)
.

examine([DIFFERENT0|_INPUTz0_],COMPARE0,INDEX0,INDEX0)
:-
prolog:char_code(DIFFERENT0,DIFFERENT_CODE) ,
system:format('character "~s" (hex ~16r) different than "~s" at 1-based index ~10r .~n',[[DIFFERENT0],DIFFERENT_CODE,[COMPARE0],INDEX0])
.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%--------------------------- 107 determine-if-a-string-has-all-unique-characters
report_duplicates(S) :-
	duplicates(S, Dups),		
	format('For value "~w":~n', S),
	report(Dups),
	nl.
	
report(Dups) :-
	maplist(only_one_position, Dups),
	format('    All characters are unique~n').
	
report(Dups) :-
	exclude(only_one_position, Dups, [c(Char,Positions)|_]),
	reverse(Positions, PosInOrder),
	atomic_list_concat(PosInOrder, ', ', PosAsList),
	format('    The character ~w is non unique at ~p~n', [Char, PosAsList]).	
	
only_one_position(c(_,[_])).	
	
duplicates(S, Count) :-
	atom_chars(S, Chars),
	char_count(Chars, 0, [], Count).
		
char_count([], _, C, C).
char_count([C|T], Index, Counted, Result) :-
	select(c(C,Positions), Counted, MoreCounted),
	succ(Index, Index1),
	char_count(T, Index1, [c(C,[Index|Positions])|MoreCounted], Result).
char_count([C|T], Index, Counted, Result) :-
	\+ member(c(C,_), Counted),
	succ(Index, Index1),
	char_count(T, Index1, [c(C,[Index])|Counted], Result).
	
test :-	report_duplicates('').
test :-	report_duplicates('.').
test :-	report_duplicates('abcABC').
test :-	report_duplicates('XYZ ZYX').
test :-	report_duplicates('1234567890ABCDEFGHIJKLMN0PQRSTUVWXYZ').

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines test/0 and never calls it; the driver calls it once at load.
:- initialization(test).
%-------------------------------------- 108 determine-if-a-string-is-collapsible
collapse_( [], [] ).
collapse_( [A], [A] ).
collapse_( [A,A|T], R ) :- collapse_( [A|T], R ).
collapse_( [A,B|T], [A|R] ) :- dif( A, B ), collapse_( [B|T], R ).

collapse( Str, Collapsed ) :-
    string_chars( Str, Chars ),
    collapse_( Chars, Result ),
    string_chars( Collapsed, Result ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines collapse/2 and never calls it; the driver collapses the task's five strings and prints each with its length (<<< >>> in place of the task's guillemets).
:- initialization(forall(member(S, ["", "\"If I were two-faced, would I be wearing this one?\" --- Abraham Lincoln ", "..1111111111111111111111111111111111111111111111111111111111111117777888", "I never give 'em hell, I just tell the truth, and they think it's hell. ", "                                                    --- Harry S Truman "]), (once(collapse(S, C)), string_length(S, LS), string_length(C, LC), format("original:  <<<~w>>> (length ~d)~ncollapsed: <<<~w>>> (length ~d)~n", [S, LS, C, LC])))).
%---------------------------------------- 109 determine-if-a-string-is-numeric-1
numeric_string(String) :-
    atom_string(Atom, String),
    atom_number(Atom, _).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines numeric_string/1 and never calls it; the driver tests the five strings of the solution's own example (determine-if-a-string-is-numeric-3) in its test_strings/1 format.
:- initialization(forall(member(S, ["123", "0.123", "-123.1", "NotNum", "1."]), ((numeric_string(S) -> R = a ; R = 'not a'), format('~w is ~w number.~n', [S, R])))).
%--------------------------------------- 110 determine-if-a-string-is-squeezable
squeeze_( [], _, [] ).
squeeze_( [A], _, [A] ).
squeeze_( [A,A|T], A, R ) :- squeeze_( [A|T], A, R ).
squeeze_( [A,A|T], B, [A|R] ) :- dif( A, B ), squeeze_( [A|T], B, R ).
squeeze_( [A,B|T], S, [A|R] ) :- dif( A, B ), squeeze_( [B|T], S, R ).

squeeze( Str, SqueezeChar, Collapsed ) :-
    string_chars( Str, Chars ),
    squeeze_( Chars, SqueezeChar, Result ),
    string_chars( Collapsed, Result ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines squeeze/3 and never calls it; the driver squeezes the task's strings on the task's characters and prints each with its length (<<< >>> in place of the task's guillemets).
:- initialization(forall(member(S-Ch, [""-' ', "\"If I were two-faced, would I be wearing this one?\" --- Abraham Lincoln "-'-', "..1111111111111111111111111111111111111111111111111111111111111117777888"-'7', "I never give 'em hell, I just tell the truth, and they think it's hell. "-'.', "                                                    --- Harry S Truman "-' ', "                                                    --- Harry S Truman "-'-', "                                                    --- Harry S Truman "-'r', "The better the 4-wheel drive, the further you'll be from help when ya get stuck!"-'e', "headmistressship"-'s']), (once(squeeze(S, Ch, Q)), string_length(S, LS), string_length(Q, LQ), format("squeeze '~w'~noriginal: <<<~w>>> (length ~d)~nsqueezed: <<<~w>>> (length ~d)~n", [Ch, S, LS, Q, LQ])))).
%--------------------------------------------------- 111 determine-sentence-type
spam([
    "hi there, how are you today?",
    "I'd like to present to you the washing machine 9001.",
    "You have been nominated to win one of these!",
    "Just make sure you don't break it"
]).

sentence_type(S, 'Q') :- sub_atom(S, _, 1, 0, '?'), !.
sentence_type(S, 'E') :- sub_atom(S, _, 1, 0, '!'), !.
sentence_type(S, 'S') :- sub_atom(S, _, 1, 0, '.'), !.
sentence_type(_, 'N').

print_sentences([]).
print_sentences([H|T]) :-
    sentence_type(H, Type),
    format('~w -> ~w~n', [H, Type]),
    print_sentences(T).

main :-
    spam(Sentences),
    print_sentences(Sentences).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%-------------------------------------------------------------- 112 digital-root
digit_sum(N, Base, Sum):-
    digit_sum(N, Base, Sum, 0).

digit_sum(N, Base, Sum, S1):-
    N < Base,
    !,
    Sum is S1 + N.
digit_sum(N, Base, Sum, S1):-
    divmod(N, Base, M, Digit),
    S2 is S1 + Digit,
    digit_sum(M, Base, Sum, S2).

digital_root(N, Base, AP, DR):-
    digital_root(N, Base, AP, DR, 0).

digital_root(N, Base, AP, N, AP):-
    N < Base,
    !.
digital_root(N, Base, AP, DR, AP1):-
    digit_sum(N, Base, Sum),
    AP2 is AP1 + 1,
    digital_root(Sum, Base, AP, DR, AP2).

test_digital_root(N, Base):-
    digital_root(N, Base, AP, DR),
    writef('%w has additive persistence %w and digital root %w.\n', [N, AP, DR]).

main:-
    test_digital_root(627615, 10),
    test_digital_root(39390, 10),
    test_digital_root(588225, 10),
    test_digital_root(393900588225, 10),
    test_digital_root(685943443231217865409, 10).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%------------------------------------------------------- 113 dijkstras-algorithm
%___________________________________________________________________________

:-dynamic
	rpath/2.      % A reversed path

edge(a,b,7).
edge(a,c,9).
edge(b,c,10).
edge(b,d,15).
edge(c,d,11).
edge(d,e,6).
edge(a,f,14).
edge(c,f,2).
edge(e,f,9).

path(From,To,Dist) :- edge(To,From,Dist).
path(From,To,Dist) :- edge(From,To,Dist).

shorterPath([H|Path], Dist) :-		       % path < stored path? replace it
	rpath([H|T], D), !, Dist < D,          % match target node [H|_]
	retract(rpath([H|_],_)),
	writef('%w is closer than %w\n', [[H|Path], [H|T]]),
	assert(rpath([H|Path], Dist)).
shorterPath(Path, Dist) :-		       % Otherwise store a new path
	writef('New path:%w\n', [Path]),
	assert(rpath(Path,Dist)).

traverse(From, Path, Dist) :-		    % traverse all reachable nodes
	path(From, T, D),		    % For each neighbor
	not(memberchk(T, Path)),	    %	which is unvisited
	shorterPath([T,From|Path], Dist+D), %	Update shortest path and distance
	traverse(T,[From|Path],Dist+D).	    %	Then traverse the neighbor

traverse(From) :-
	retractall(rpath(_,_)),           % Remove solutions
	traverse(From,[],0).              % Traverse from origin
traverse(_).

go(From, To) :-
	traverse(From),                   % Find all distances
	rpath([To|RPath], Dist)->         % If the target was reached
	  reverse([To|RPath], Path),      % Report the path and distance
	  Distance is round(Dist),
	  writef('Shortest path is %w with distance %w = %w\n',
	       [Path, Dist, Distance]);
	writef('There is no route from %w to %w\n', [From, To]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines go/2 and never calls it; the driver asks for the task's shortest paths a to e and a to f on its graph.
:- initialization((go(a, e), go(a, f))).
%------------------------------------- 114 dinesmans-multiple-dwelling-problem-1
:- use_module(library(clpfd)).

:- dynamic top/1, bottom/1.

% Baker does not live on the top floor
rule1(L) :-
	member((baker, F), L),
	top(Top),
	F #\= Top.

% Cooper does not live on the bottom floor.
rule2(L) :-
	member((cooper, F), L),
	bottom(Bottom),
	F #\= Bottom.

% Fletcher does not live on either the top or the bottom floor.
rule3(L) :-
	member((fletcher, F), L),
	top(Top),
	bottom(Bottom),
	F #\= Top,
	F #\= Bottom.

% Miller lives on a higher floor than does Cooper.
rule4(L) :-
	member((miller, Fm), L),
	member((cooper, Fc), L),
	Fm #> Fc.

% Smith does not live on a floor adjacent to Fletcher's.
rule5(L) :-
	member((smith, Fs), L),
	member((fletcher, Ff), L),
	abs(Fs-Ff) #> 1.

% Fletcher does not live on a floor adjacent to Cooper's.
rule6(L) :-
	member((cooper, Fc), L),
	member((fletcher, Ff), L),
	abs(Fc-Ff) #> 1.

init(L) :-
	% we need to define top and bottom
	assert(bottom(1)),
	length(L, Top),
	assert(top(Top)),

	% we say that they are all in differents floors
	bagof(F, X^member((X, F), L), LF),
	LF ins 1..Top,
	all_different(LF),

	% Baker does not live on the top floor
	rule1(L),

	% Cooper does not live on the bottom floor.
	rule2(L),

	% Fletcher does not live on either the top or the bottom floor.
	rule3(L),

	% Miller lives on a higher floor than does Cooper.
	rule4(L),

	% Smith does not live on a floor adjacent to Fletcher's.
	rule5(L),

	% Fletcher does not live on a floor adjacent to Cooper's.
	rule6(L).


solve(L) :-
	bagof(F, X^member((X, F), L), LF),
	label(LF).

dinners :-
	retractall(top(_)), retractall(bottom(_)),
	L = [(baker, _Fb), (cooper, _Fc), (fletcher, _Ff), (miller, _Fm), (smith, _Fs)],
	init(L),
	solve(L),
	maplist(writeln, L).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines dinners/0 and never calls it; the driver calls it once at load.
:- initialization(dinners).
%------------------------------------- 115 dinesmans-multiple-dwelling-problem-2
select([A|As],S):- select(A,S,S1),select(As,S1).
select([],_).

dinesmans(X) :-
    %% Baker, Cooper, Fletcher, Miller, and Smith live on different floors
    %% of an apartment house that contains only five floors.
    select([Baker,Cooper,Fletcher,Miller,Smith],[1,2,3,4,5]),

    %% Baker does not live on the top floor.
    Baker =\= 5,

    %% Cooper does not live on the bottom floor.
    Cooper =\= 1,

    %% Fletcher does not live on either the top or the bottom floor.
    Fletcher =\= 1, Fletcher =\= 5,

    %% Miller lives on a higher floor than does Cooper.
    Miller > Cooper,

    %% Smith does not live on a floor adjacent to Fletcher's.
    1 =\= abs(Smith - Fletcher),

    %% Fletcher does not live on a floor adjacent to Cooper's.
    1 =\= abs(Fletcher - Cooper),

    %% Where does everyone live?
    X = ['Baker'(Baker), 'Cooper'(Cooper), 'Fletcher'(Fletcher),
         'Miller'(Miller), 'Smith'(Smith)].

main :-  bagof( X, dinesmans(X), L )
         -> maplist( writeln, L), nl, write('No more solutions.')
         ;  write('No solutions.').

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%------------------------------------- 116 dinesmans-multiple-dwelling-problem-3
dinesmans(X) :-
    %% 1. Baker, Cooper, Fletcher, Miller, and Smith live on different floors
    %%    of an apartment house that contains only five floors.
    Domain = [1,2,3,4,5],

    %% 2. Baker does not live on the top floor.
    select(Baker,Domain,D1), Baker =\= 5,

    %% 3. Cooper does not live on the bottom floor.
    select(Cooper,D1,D2), Cooper =\= 1,

    %% 4. Fletcher does not live on either the top or the bottom floor.
    select(Fletcher,D2,D3), Fletcher =\= 1, Fletcher =\= 5,

    %% 5. Miller lives on a higher floor than does Cooper.
    select(Miller,D3,D4), Miller > Cooper,

    %% 6. Smith does not live on a floor adjacent to Fletcher's.
    select(Smith,D4,_), 1 =\= abs(Smith - Fletcher),

    %% 7. Fletcher does not live on a floor adjacent to Cooper's.
    1 =\= abs(Fletcher - Cooper),

    %% Where does everyone live?
    X = ['Baker'(Baker), 'Cooper'(Cooper), 'Fletcher'(Fletcher),
         'Miller'(Miller), 'Smith'(Smith)].

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines dinesmans/1 and never calls it; the driver prints every solution of the puzzle.
:- initialization(forall(dinesmans(X), writeln(X))).
%----------------------------------------------------------- 117 discordian-date
% See https://en.wikipedia.org/wiki/Discordian_calendar

main:-
    test(2022, 4, 20),
    test(2020, 5, 24),
    test(2020, 2, 29),
    test(2019, 7, 15),
    test(2025, 3, 19),
    test(2017, 12, 8).

test(Gregorian_year, Gregorian_month, Gregorian_day):-
    ddate(Gregorian_year, Gregorian_month, Gregorian_day,
          Discordian_date),
    format('~|~`0t~d~2+-~|~`0t~d~2+-~|~`0t~d~2+: ~w~n', [Gregorian_year,
           Gregorian_month, Gregorian_day, Discordian_date]).

ddate(Gregorian_year, 2, 29, Discordian_date):-
    convert_year(Gregorian_year, Discordian_year),
    swritef(Discordian_date, 'St. Tib\'s Day in the YOLD %w',
            [Discordian_year]),
    !.
ddate(Gregorian_year, Gregorian_month, Gregorian_day,
      Discordian_date):-
    convert_year(Gregorian_year, Discordian_year),
    day_of_year(Gregorian_month, Gregorian_day, Daynum),
    Season is Daynum//73,
    Weekday is Daynum mod 5,
    Day_of_season is 1 + Daynum mod 73,
    season(Season, Season_name),
    week_day(Weekday, Day_name),
    (holy_day(Season, Day_of_season, Holy_day) ->
        swritef(Discordian_date, '%w, day %w of %w in the YOLD %w. Celebrate %w!',
                [Day_name, Day_of_season, Season_name, Discordian_year, Holy_day])
        ;
        swritef(Discordian_date, '%w, day %w of %w in the YOLD %w',
                [Day_name, Day_of_season, Season_name, Discordian_year])
    ).

convert_year(Gregorian_year, Discordian_year):-
    Discordian_year is Gregorian_year + 1166.

day_of_year(M, D, N):-
    month_days(M, Days),
    N is Days + D - 1.

month_days(1, 0).
month_days(2, 31).
month_days(3, 59).
month_days(4, 90).
month_days(5, 120).
month_days(6, 151).
month_days(7, 181).
month_days(8, 212).
month_days(9, 243).
month_days(10, 273).
month_days(11, 304).
month_days(12, 334).

season(0, 'Chaos').
season(1, 'Discord').
season(2, 'Confusion').
season(3, 'Bureacracy').
season(4, 'The Aftermath').

week_day(0, 'Sweetmorn').
week_day(1, 'Boomtime').
week_day(2, 'Pungenday').
week_day(3, 'Prickle-Prickle').
week_day(4, 'Setting Orange').

holy_day(0, 5, 'Mungday').
holy_day(0, 50, 'Chaoflux').
holy_day(1, 5, 'Mojoday').
holy_day(1, 50, 'Discoflux').
holy_day(2, 5, 'Syaday').
holy_day(2, 50, 'Confuflux').
holy_day(3, 5, 'Zaraday').
holy_day(3, 50, 'Bureflux').
holy_day(4, 5, 'Maladay').
holy_day(4, 50, 'Afflux').

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%--------------------------------------------------------------- 118 dot-product
dot_product(L1, L2, N) :-
	maplist(mult, L1, L2, P),
	sumlist(P, N).

mult(A,B,C) :-
	C is A*B.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines dot_product/3 and never calls it; the driver prints the task's [1, 3, -5] . [4, -2, -1].
:- initialization((dot_product([1, 3, -5], [4, -2, -1], N), writeln(N))).
%--------------------------------------------- 119 dutch-national-flag-problem-1
dutch_flag(N) :-
	length(L, N),
	repeat,
	  maplist(init,L),
	\+is_dutch_flag(L) ,
	writeln(L),
	test_sorted(L),
	sort_dutch_flag(L, TmpFlag),
	append(TmpFlag, Flag),
	writeln(Flag),
	test_sorted(Flag).


sort_dutch_flag([], [[], [], []]).

sort_dutch_flag([blue | T], [R, W, [blue|B]]) :-
	sort_dutch_flag(T, [R, W, B]).

sort_dutch_flag([red | T], [[red|R], W, B]) :-
	sort_dutch_flag(T, [R, W, B]).


sort_dutch_flag([white | T], [R, [white | W], B]) :-
	sort_dutch_flag(T, [R, W, B]).


init(C) :-
	R is random(3),
	nth0(R, [blue, red, white], C).


test_sorted(Flag) :-
	(   is_dutch_flag(Flag)
	->  write('it is a dutch flag')
	;   write('it is not a dutch flag')),
	nl,nl.

% First color must be red
is_dutch_flag([red | T]) :-
	is_dutch_flag_red(T).


is_dutch_flag_red([red|T]) :-
	is_dutch_flag_red(T);
	% second color must be white
	T = [white | T1],
	is_dutch_flag_white(T1).


is_dutch_flag_white([white | T]) :-
	is_dutch_flag_white(T);
	% last one must be blue
	T = [blue | T1],
	is_dutch_flag_blue(T1).

is_dutch_flag_blue([blue | T]) :-
	is_dutch_flag_blue(T).

is_dutch_flag_blue([]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): dutch_flag/1 draws its balls with random/1 (init/1); the driver runs its steps on a fixed unsorted row of ten balls: prints it, tests it, sorts it with the solver sort_dutch_flag/2, prints and tests the result.
:- initialization((L = [white, blue, red, blue, white, red, red, blue, white, red], writeln(L), test_sorted(L), sort_dutch_flag(L, T), append(T, F), writeln(F), test_sorted(F))).
%-------------------------------------------------- 120 dynamic-variable-names-1
test :- read(Name), atomics_to_string([Name, "= 50, writeln('", Name, "' = " , Name, ")"], String), term_string(Term, String), Term.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines test/0 (reads a variable name with read/1, binds it to 50) and never calls it; dynamic-variable-names-1.in holds the name 'Foo' as a quoted atom.
:- initialization(test).
%--------------------------------------------------------- 121 egyptian-division
egyptian_divide(Dividend, Divisor, Quotient, Remainder):-
    powers2_multiples(Dividend, [1], Powers, [Divisor], Multiples),
    accumulate(Dividend, Powers, Multiples, 0, Quotient, 0, Acc),
    Remainder is Dividend - Acc.

powers2_multiples(Dividend, Powers, Powers, Multiples, Multiples):-
    Multiples = [M|_],
    2 * M > Dividend,
    !.
powers2_multiples(Dividend, [Power|P], Powers, [Multiple|M], Multiples):-
    Power2 is 2 * Power,
    Multiple2 is 2 * Multiple,
    powers2_multiples(Dividend, [Power2,Power|P], Powers,
                      [Multiple2, Multiple|M], Multiples).

accumulate(_, [], [], Ans, Ans, Acc, Acc):-!.
accumulate(Dividend, [P|Powers], [M|Multiples], Ans1, Answer, Acc1, Acc):-
    Acc1 + M =< Dividend,
    !,
    Acc2 is Acc1 + M,
    Ans2 is Ans1 + P,
    accumulate(Dividend, Powers, Multiples, Ans2, Answer, Acc2, Acc).
accumulate(Dividend, [_|Powers], [_|Multiples], Ans1, Answer, Acc1, Acc):-
    accumulate(Dividend, Powers, Multiples, Ans1, Answer, Acc1, Acc).

test_egyptian_divide(Dividend, Divisor):-
    egyptian_divide(Dividend, Divisor, Quotient, Remainder),
    writef('%w / %w = %w, remainder = %w\n', [Dividend, Divisor,
           Quotient, Remainder]).

main:-
    test_egyptian_divide(580, 34).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%--------------------------------------------- 122 elementary-cellular-automaton
play :-	initial(I), do_auto(50, I).

initial([0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0]).

do_auto(0, _) :- !.
do_auto(N, I) :-
	maplist(writ, I), nl,
	apply_rules(I, Next),
	succ(N1, N),
	do_auto(N1, Next).

r(0,0,0,0).
r(0,0,1,1).
r(0,1,0,0).
r(0,1,1,1).
r(1,0,0,1).
r(1,0,1,0).
r(1,1,0,1).
r(1,1,1,0).

apply_rules(In, Out) :-
	apply1st(In, First),
	Out = [First|_],
	apply(In, First, First, Out).

apply1st([A,B|T], A1) :-                            last([A,B|T], Last), r(Last,A,B,A1).
apply([A,B], Prev, First, [Prev, This]) :-          r(A,B,First,This).
apply([A,B,C|T], Prev, First, [Prev,This|Rest]) :-  r(A,B,C,This), apply([B,C|T], This, First, [This|Rest]).

writ(0) :- write('.').
writ(1) :- write(1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines play/0 (50 generations from one live cell) and never calls it; the driver calls it once at load.
:- initialization(play).
%----------------------------------------------------------- 123 empty-directory
non_empty_file('.').
non_empty_file('..').

empty_dir(Dir) :-
	directory_files(Dir, Files),
	maplist(non_empty_file, Files).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines empty_dir/1 and never calls it; the driver tests a freshly made temporary directory and / (its path is not printed, it holds the pid).
:- initialization((tmp_file(empty, Dir), make_directory(Dir), (empty_dir(Dir) -> E1 = empty ; E1 = 'not empty'), delete_directory(Dir), format("a new directory: ~w~n", [E1]), (empty_dir('/') -> E2 = empty ; E2 = 'not empty'), format("/: ~w~n", [E2]))).
%-------------------------------------------------------------- 124 empty-string
assign_empty_string(Variable) :- Variable = "".

is_empty_string(String)  :- String ==  "".
not_empty_string(String) :- String \== "".

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines assign_empty_string/1, is_empty_string/1 and not_empty_string/1 and never calls them; the driver assigns the empty string and tests it and "abc".
:- initialization((assign_empty_string(S), (is_empty_string(S) -> writeln('S is empty') ; writeln('S is not empty')), (not_empty_string("abc") -> writeln('"abc" is not empty') ; writeln('"abc" is empty')), (is_empty_string("abc") -> writeln('is_empty_string("abc") succeeds') ; writeln('is_empty_string("abc") fails')))).
%------------------------------------------------------------------- 125 entropy
:-module(shannon_entropy, [shannon_entropy/2]).

%!	shannon_entropy(+String, -Entropy) is det.
%
%	Calculate the Shannon Entropy of String.
%
%	Example query:
%	==
%	?- shannon_entropy(1223334444, H).
%	H = 1.8464393446710154.
%	==
%
shannon_entropy(String, Entropy):-
	atom_chars(String, Cs)
	,relative_frequencies(Cs, Frequencies)
	,findall(CI
		,(member(_C-F, Frequencies)
		 ,log2(F, L)
		 ,CI is F * L
		 )
		,CIs)
	,foldl(sum, CIs, 0, E)
	,Entropy is -E.

%!	frequencies(+Characters,-Frequencies) is det.
%
%	Calculates the relative frequencies of elements in the list of
%	Characters.
%
%	Frequencies is a key-value list with elements of the form:
%	C-F, where C a character in the list and F its relative
%	frequency in the list.
%
%	Example query:
%	==
%	?- relative_frequencies([a,a,a,b,b,b,b,b,b,c,c,c,a,a,f], Fs).
%	Fs = [a-0.3333333333333333, b-0.4, c-0.2,f-0.06666666666666667].
%	==
%
relative_frequencies(List, Frequencies):-
	run_length_encoding(List, Rle)
        % Sort Run-length encoded list and aggregate lengths by element
	,keysort(Rle, Sorted_Rle)
	,group_pairs_by_key(Sorted_Rle, Elements_Run_lengths)
	,length(List, Elements_in_list)
	,findall(E-Frequency_of_E
		,(member(E-RLs, Elements_Run_lengths)
                 % Sum the list of lengths of runs of E
		 ,foldl(plus, RLs, 0, Occurences_of_E)
		 ,Frequency_of_E is Occurences_of_E / Elements_in_list
		 )
		,Frequencies).


%!	run_length_encoding(+List, -Run_length_encoding) is det.
%
%	Converts a list to its run-length encoded form where each "run"
%	of contiguous repeats of the same element is replaced by that
%	element and the length of the run.
%
%	Run_length_encoding is a key-value list, where each element is a
%	term:
%
%	Element:term-Repetitions:number.
%
%	Example query:
%	==
%       ?- run_length_encoding([a,a,a,b,b,b,b,b,b,c,c,c,a,a,f], RLE).
%	RLE = [a-3, b-6, c-3, a-2, f-1].
%	==
%
run_length_encoding([], []-0):-
	!. % No more results needed.

run_length_encoding([Head|List], Run_length_encoded_list):-
	run_length_encoding(List, [Head-1], Reversed_list)
	% The resulting list is in reverse order due to the head-to-tail processing
	,reverse(Reversed_list, Run_length_encoded_list).

%!	run_length_encoding(+List,+Initialiser,-Accumulator) is det.
%
%	Business end of run_length_encoding/3. Calculates the run-length
%	encoded form of a list and binds the result to the Accumulator.
%	Initialiser is a list [H-1] where H is the first element of the
%	input list.
%
run_length_encoding([], Fs, Fs).

% Run of F consecutive occurrences of C
run_length_encoding([C|Cs],[C-F|Fs], Acc):-
        % Backtracking would produce successive counts
	% of runs of C at different indices in the list.
	!
	,F_ is F + 1
	,run_length_encoding(Cs, [C-F_| Fs], Acc).

% End of a run of consecutive identical elements.
run_length_encoding([C|Cs], Fs, Acc):-
	run_length_encoding(Cs,[C-1|Fs], Acc).


/* Arithmetic helper predicates */

%!	log2(N, L2_N) is det.
%
%	L2_N is the logarithm with base 2 of N.
%
log2(N, L2_N):-
	L_10 is log10(N)
	,L_2 is log10(2)
	,L2_N is L_10 / L_2.

%!	sum(+A,+B,?Sum) is det.
%
%	True when Sum is the sum of numbers A and B.
%
%	Helper predicate to allow foldl/4 to do addition. The following
%	call will raise an error (because there is no predicate +/3):
%	==
%	foldl(+, [1,2,3], 0, Result).
%	==
%
%	This will not raise an error:
%	==
%	foldl(sum, [1,2,3], 0, Result).
%	==
%
sum(A, B, Sum):-
	must_be(number, A)
	,must_be(number, B)
	,Sum is A + B.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines shannon_entropy/2 and never calls it; the driver runs its own example query on the task's 1223334444.
:- initialization((shannon_entropy(1223334444, H), writeln(H))).
%-------------------------------------------------------------- 126 enumerations
fruit(apple,1).
fruit(banana,2).
fruit(cherry,4).

write_fruit_name(N) :-
	fruit(Name,N),
	format('It is a ~p~n', Name).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the enumeration fruit/2 and write_fruit_name/1 and never calls them; the driver names every fruit by its value.
:- initialization(forall(fruit(_, N), write_fruit_name(N))).
%------------------------------------------------------- 127 equilibrium-index-1
equilibrium_index(List, Index) :-
    append(Front, [_|Back], List),
    sumlist(Front, Sum),
    sumlist(Back,  Sum),
    length(Front, Len),
    Index is Len.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines equilibrium_index/2 and never calls it; the driver lists every equilibrium index of the task's sequence.
:- initialization((findall(I, equilibrium_index([-7, 1, 5, 2, -4, 3, 0], I), Is), writeln(Is))).
%---------------------------------------------------------- 128 esthetic-numbers
main:-
    forall(between(2, 16, Base),
            (Min_index is Base * 4, Max_index is Base * 6,
            print_esthetic_numbers1(Base, Min_index, Max_index))),
    print_esthetic_numbers2(1000, 9999, 16),
    nl,
    print_esthetic_numbers2(100000000, 130000000, 8).

print_esthetic_numbers1(Base, Min_index, Max_index):-
    swritef(Format, '~%tr ', [Base]),
    writef('Esthetic numbers in base %t from index %t through index %t:\n',
            [Base, Min_index, Max_index]),
    print_esthetic_numbers1(Base, Format, Min_index, Max_index, 0, 1).

print_esthetic_numbers1(Base, Format, Min_index, Max_index, M, I):-
    I =< Max_index,
    !,
    next_esthetic_number(Base, M, N),
    (I >= Min_index -> format(Format, [N]) ; true),
    J is I + 1,
    print_esthetic_numbers1(Base, Format, Min_index, Max_index, N, J).
print_esthetic_numbers1(_, _, _, _, _, _):-
    write('\n\n').

print_esthetic_numbers2(Min, Max, Per_line):-
    writef('Esthetic numbers in base 10 between %t and %t:\n', [Min, Max]),
    M is Min - 1,
    print_esthetic_numbers2(Max, Per_line, M, 0).

print_esthetic_numbers2(Max, Per_line, M, Count):-
    next_esthetic_number(10, M, N),
    N =< Max,
    !,
    write(N),
    Count1 is Count + 1,
    (0 is Count1 mod Per_line -> nl ; write(' ')),
    print_esthetic_numbers2(Max, Per_line, N, Count1).
print_esthetic_numbers2(_, _, _, Count):-
    writef('\nCount: %t\n', [Count]).

next_esthetic_number(Base, M, N):-
    N is M + 1,
    N < Base,
    !.
next_esthetic_number(Base, M, N):-
    A is M // Base,
    B is A mod Base,
    (B is M mod Base + 1, B + 1 < Base ->
        N is M + 2
        ;
        next_esthetic_number(Base, A, C),
        D is C mod Base,
        (D == 0 -> E = 1 ; E is D - 1),
        N is C * Base + E).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%------------------------------------------------ 129 ethiopian-multiplication-1
halve(X,Y) :- Y is X // 2.
double(X,Y) :- Y is 2*X.
is_even(X) :- 0 is X mod 2.

% columns(First,Second,Left,Right) is true if integers First and Second
% expand into the columns Left and Right, respectively
columns(1,Second,[1],[Second]).
columns(First,Second,[First|Left],[Second|Right]) :-
    halve(First,Halved),
    double(Second,Doubled),
    columns(Halved,Doubled,Left,Right).

% contribution(Left,Right,Amount) is true if integers Left and Right,
% from their respective columns contribute Amount to the final sum.
contribution(Left,_Right,0) :-
    is_even(Left).
contribution(Left,Right,Right) :-
    \+ is_even(Left).

ethiopian(First,Second,Product) :-
    columns(First,Second,Left,Right),
    maplist(contribution,Left,Right,Contributions),
    sumlist(Contributions,Product).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines ethiopian/3 and never calls it; the driver multiplies the task's 17 by 34.
:- initialization((once(ethiopian(17, 34, P)), writeln(P))).
%------------------------------------------------ 130 ethiopian-multiplication-3
:- module(ethiopia, [test/0, mul/3]).

:- use_module(library(chr)).

:- chr_constraint mul/3, halve/2, double/2, even/1, add_odd/4.

mul(1, Y, S) <=>          S = Y.
mul(X, Y, S) <=> X \= 1 | halve(X, X1),
                          double(Y, Y1),
                          mul(X1, Y1, S1),
                          add_odd(X, Y, S1, S).

halve(X, Y) <=> Y is X // 2.

double(X, Y) <=> Y is X * 2.

even(X) <=> 0 is X mod 2 | true.
even(X) <=> 1 is X mod 2 | false.

add_odd(X, _, A, S) <=> even(X)    | S is A.
add_odd(X, Y, A, S) <=> \+ even(X) | S is A + Y.

test :-
    mul(17, 34, Z), !,
    writeln(Z).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines test/0 and never calls it; the driver calls it once at load.
:- initialization(test).
%------------------------------------------------ 131 ethiopian-multiplication-4
:- module(ethiopia, [test/0, mul/3]).

:- use_module(library(chr)).

:- chr_constraint mul/3, even/1, add_if_odd/4.

mul(1, Y, S) <=>          S = Y.
mul(X, Y, S) <=> X \= 1 | X1 is X // 2,
                          Y1 is Y * 2,
                          mul(X1, Y1, S1),
                          add_if_odd(X, Y, S1, S).

even(X) <=> 0 is X mod 2 | true.
even(X) <=> 1 is X mod 2 | false.

add_if_odd(X, _, A, S) <=> even(X)    | S is A.
add_if_odd(X, Y, A, S) <=> \+ even(X) | S is A + Y.

test :-
    mul(17, 34, Z),
    writeln(Z).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines test/0 and never calls it; the driver calls it once at load.
:- initialization(test).
%----------------------------------------------------------- 132 eulers-identity
% reduce() prints the intermediate results so that one can see Prolog "thinking."
%
reduce(A, C) :-
    simplify(A, B),
    (B = A -> C = A; io:format("= ~w~n", [B]), reduce(B, C)).

simplify(exp(i*X), cos(X) + i*sin(X)) :- !.

simplify(0 + A, A) :- !.
simplify(A + 0, A) :- !.
simplify(A + B, C) :-
    integer(A),
    integer(B), !,
    C is A + B.
simplify(A + B, C + D) :- !,
    simplify(A, C),
    simplify(B, D).

simplify(0 * _, 0) :- !.
simplify(_ * 0, 0) :- !.
simplify(1 * A, A) :- !.
simplify(A * 1, A) :- !.
simplify(A * B, C) :-
    integer(A),
    integer(B), !,
    C is A * B.
simplify(A * B, C * D) :- !,
    simplify(A, C),
    simplify(B, D).

simplify(cos(0),  1)  :- !.
simplify(sin(0),  0)  :- !.
simplify(cos(pi), -1) :- !.
simplify(sin(pi), 0)  :- !.

simplify(X, X).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines reduce/2 (it prints each step) and never calls it; the driver reduces e^(i*pi) + 1.
:- initialization((reduce(exp(i*pi) + 1, R), writeln(R))).
%------------------------------------------- 133 eulers-sum-of-powers-conjecture
makepowers :-
    retractall(pow5(_, _)),
    between(1, 249, X),
    Y is X * X * X * X * X,
    assert(pow5(X, Y)),
    fail.
makepowers.

within(A, Bx, N) :-  % like between but with an exclusive upper bound
   succ(B, Bx),
   between(A, B, N).

solution(X0, X1, X2, X3, Y) :-
    makepowers,
    within(4, 250, X0), pow5(X0, X0_5th),
    within(3, X0,  X1), pow5(X1, X1_5th),
    within(2, X1,  X2), pow5(X2, X2_5th),
    within(1, X2,  X3), pow5(X3, X3_5th),
    Y_5th is X0_5th + X1_5th + X2_5th + X3_5th,
    pow5(Y, Y_5th).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines solution/5 and never calls it; the driver prints its first answer (the search bounds are fixed at 250 by the solution itself, about 9 s under swipl).
:- initialization((once(solution(X0, X1, X2, X3, Y)), format("~w^5 + ~w^5 + ~w^5 + ~w^5 = ~w^5~n", [X0, X1, X2, X3, Y]))).
%-------------------------------------------- 134 evaluate-binomial-coefficients
binomial(N, K, 0) :- K > N.
binomial(N, K, X) :- binomial_helper(1, 1, K, N, X).

binomial_helper(R, D, K, _, R) :- D > K, !.
binomial_helper(R, D, K, N, X) :-
    D =< K,
    R1 is R * N / D,
    D1 is D + 1,
    N1 is N - 1,
    binomial_helper(R1, D1, K, N1, X).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines binomial/3 and never calls it; the driver prints the task's (5 3) = 10 and three more.
:- initialization(forall(member(N-K, [5-3, 10-0, 10-5, 3-5]), (once(binomial(N, K, X)), format("binomial(~w, ~w) = ~w~n", [N, K, X])))).
%------------------------------------------------------------- 135 even-or-odd-1
  even(N) :-
     (between(0, inf, N); integer(N) ),
     0 is N mod 2.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines even/1 and never calls it; the driver classifies -3..6.
:- initialization(forall(between(-3, 6, N), (even(N) -> format("~w is even~n", [N]) ; format("~w is odd~n", [N])))).
%------------------------------------------------------------- 136 even-or-odd-2
  odd(N) :- N = 0 -> false; 0 is lsb(abs(N)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines odd/1 and never calls it; the driver classifies -3..6.
:- initialization(forall(between(-3, 6, N), (odd(N) -> format("~w is odd~n", [N]) ; format("~w is even~n", [N])))).
%---------------------------------------------------------------- 137 exceptions
foo(X) :-
    \+ integer(X),
    throw(b('not even an int')).
foo(X) :-
    \+ between(1,10,X),
    throw(a('must be between 1 & 10')).
foo(X) :-
    format('~p is a valid number~n', X).

go(X) :-
    catch(
        foo(X),
        E,
        handle(E)).

handle(a(Msg)) :-
    format('~w~n', Msg),
    !.
handle(X) :- throw(X).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines go/1 (foo/1 under catch/3 with handle/1) and never calls it; the driver calls it on a valid number, on one out of range (caught and handled) and on an atom (rethrown, caught by the driver).
:- initialization((go(5), go(42), catch(go(abc), E, format("go(abc) rethrew ~w~n", [E])))).
%------------------------------------------------------------ 138 execute-brain-
/******************************************
 Starting point, call with program in atom.
*******************************************/
brain(Program) :-
	atom_chars(Program, Instructions),
	process_bf_chars(Instructions).

brain_from_file(File) :- % or from file...
	read_file_to_codes(File, Codes, []),
	maplist(char_code, Instructions, Codes),
	process_bf_chars(Instructions).

process_bf_chars(Instructions)	:-
	phrase(bf_to_pl(Code), Instructions, []),
	Code = [C|_],
	instruction(C, Code, mem([], [0])), !.


/********************************************
 DCG to parse the bf program into prolog form
*********************************************/
bf_to_pl([]) --> [].
bf_to_pl([loop(Ins)|Next]) --> loop_start, bf_to_pl(Ins), loop_end, bf_to_pl(Next).
bf_to_pl([Ins|Next]) --> bf_code(Ins), bf_to_pl(Next).
bf_to_pl(Ins) --> [X], { \+ member(X, ['[',']',>,<,+,-,'.',',']) }, bf_to_pl(Ins). % skip non bf characters

loop_start --> ['['].
loop_end --> [']'].

bf_code(next_addr) --> ['>'].
bf_code(prev_addr) --> ['<'].
bf_code(inc_caddr) --> ['+'].
bf_code(dec_caddr) --> ['-'].
bf_code(out_caddr) --> ['.'].
bf_code(in_caddr)  --> [','].

/**********************
  Instruction Processor
***********************/
instruction([], _, _).
instruction(I, Code, Mem) :-
	mem_instruction(I, Mem, UpdatedMem),
	next_instruction(Code, NextI, NextCode),
	!, % cuts are to force tail recursion, so big programs will run
	instruction(NextI, NextCode, UpdatedMem).

% to loop, add the loop code to the start of the program then execute
% when the loop has finished it will reach itself again then can retest for zero
instruction(loop(LoopCode), Code, Mem) :-
	caddr(Mem, X),
	dif(X, 0),
	append(LoopCode, Code, [NextI|NextLoopCode]),
	!,
	instruction(NextI, [NextI|NextLoopCode], Mem).
instruction(loop(_), Code, Mem) :-
	caddr(Mem, 0),
	next_instruction(Code, NextI, NextCode),
	!,
	instruction(NextI, NextCode, Mem).

% memory is stored in two parts:
%   1. a list with the current address and everything after it
%   2. a list with the previous memory in reverse order
mem_instruction(next_addr, mem(Mb, [Caddr]), mem([Caddr|Mb], [0])).
mem_instruction(next_addr, mem(Mb, [Caddr,NextAddr|Rest]), mem([Caddr|Mb], [NextAddr|Rest])).
mem_instruction(prev_addr, mem([PrevAddr|RestOfPrev], Caddrs), mem(RestOfPrev, [PrevAddr|Caddrs])).

% wrap instructions at the byte boundaries as this is what most programmers expect to happen
mem_instruction(inc_caddr, MemIn, MemOut) :- caddr(MemIn, 255), update_caddr(MemIn, 0, MemOut).
mem_instruction(inc_caddr, MemIn, MemOut) :- caddr(MemIn, Val), succ(Val, IncVal), update_caddr(MemIn, IncVal, MemOut).
mem_instruction(dec_caddr, MemIn, MemOut) :- caddr(MemIn, 0), update_caddr(MemIn, 255, MemOut).
mem_instruction(dec_caddr, MemIn, MemOut) :- caddr(MemIn, Val), succ(DecVal, Val), update_caddr(MemIn, DecVal, MemOut).

% input and output
mem_instruction(out_caddr, Mem, Mem) :- caddr(Mem, Val), char_code(Char, Val), write(Char).
mem_instruction(in_caddr, MemIn, MemOut) :-
	get_single_char(Code),
	char_code(Char, Code),
	write(Char),
	map_input_code(Code,MappedCode),
	update_caddr(MemIn, MappedCode, MemOut).

% need to map the newline if it is not a proper newline character (system dependent).
map_input_code(13,10) :- nl.
map_input_code(C,C).

% The value at the current address
caddr(mem(_, [Caddr]), Caddr).
caddr(mem(_, [Caddr,_|_]), Caddr).

% The updated value at the current address
update_caddr(mem(BackMem, [_]), Caddr, mem(BackMem, [Caddr])).
update_caddr(mem(BackMem, [_,M|Mem]), Caddr, mem(BackMem, [Caddr,M|Mem])).

% The next instruction, and remaining code
next_instruction([_], [], []).
next_instruction([_,NextI|Rest], NextI, [NextI|Rest]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines brain/1 and never calls it; the driver runs the Hello World! program of the Brainf*** article.
:- initialization(brain('++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++.')).
%------------------------------------------------- 139 exponentiation-operator-4
exp_recursive(Base, NegExp, NegPower) :-
    NegExp < 0,
    Exp is NegExp * -1,
    exp_recursive_(Base, Exp, Base, Power),
    NegPower is 1 / Power.
exp_recursive(Base, Exp, Power) :-
    Exp > 0,
    exp_recursive_(Base, Exp, Base, Power).
exp_recursive(_, 0, 1).

exp_recursive_(_,    1,   Power, Power).
exp_recursive_(Base, Exp, Acc,   Power)   :-
    Exp > 1,
    NewAcc is Base * Acc,
    NewExp is Exp  - 1,
    exp_recursive_(Base, NewExp, NewAcc, Power).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines exp_recursive/3 and never calls it; the driver raises the task's 2 and 2.5 to 3 and -3 (the examples of exponentiation-operator-3) and 2 to 0.
:- initialization(forall(member(B-E, [2-3, 2-(-3), 2.5-3, 2.5-(-3), 2-0]), (once(exp_recursive(B, E, P)), format("~w ^ ~w = ~w~n", [B, E, P])))).
%--------------------------------------------------------------- 140 factorial-1
fact(X, 1) :- X<2.
fact(X, F) :- Y is X-1, fact(Y,Z), F is Z*X.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines fact/2 and never calls it; the driver prints 0! .. 10! (its first answer each: backtracking into it does not end).
:- initialization(forall(between(0, 10, N), (once(fact(N, F)), format("~w! = ~w~n", [N, F])))).
%--------------------------------------------------------------- 141 factorial-2
fact(N, NF) :-
	fact(1, N, 1, NF).

fact(X, X, F, F) :- !.
fact(X, N, FX, F) :-
	X1 is X + 1,
	FX1 is FX * X1,
	fact(X1, N, FX1, F).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines fact/2 and never calls it; the driver prints 1! .. 10! (fact(0, F) counts up from 1 and never ends).
:- initialization(forall(between(1, 10, N), (fact(N, F), format("~w! = ~w~n", [N, F])))).
%---------------------------------------------- 142 factors-of-a-mersenne-number
mersenne_factor(P, F) :-
    prime(P),
    once((
        between(1, 100_000, K),  % Fail if we can't find a small factor
        Q is 2*K*P + 1,
        test_factor(Q, P, F))).

test_factor(Q, P, prime) :- Q*Q > (1 << P - 1), !.
test_factor(Q, P, Q) :-
    R is Q /\ 7, member(R, [1, 7]),
    prime(Q),
    powm(2, P, Q) =:= 1.


wheel235(L) :-
   W = [4, 2, 4, 2, 4, 6, 2, 6 | W],
   L = [1, 2, 2 | W].

prime(N) :-
   N >= 2,
   wheel235(W),
   prime(N, 2, W).

prime(N, D, _) :- D*D > N, !.
prime(N, D, [A|As]) :-
    N mod D =\= 0,
    D2 is D + A, prime(N, D2, As).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines mersenne_factor/2 and never calls it; the driver finds the task's factor of 2^929 - 1.
:- initialization((mersenne_factor(929, F), format("M929 has a factor: ~w~n", [F]))).
%--------------------------------------------------- 143 factors-of-an-integer-1
brute_force_factors( N , Fs ) :-
  integer(N) ,
  N > 0 ,
  setof( F , ( between(1,N,F) , N mod F =:= 0 ) , Fs )
  .

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines brute_force_factors/2 and never calls it; the driver factors 1, 12, 45, 53, 64 and 100.
:- initialization(forall(member(N, [1, 12, 45, 53, 64, 100]), (brute_force_factors(N, Fs), format("~w: ~w~n", [N, Fs])))).
%--------------------------------------------------- 144 factors-of-an-integer-2
smart_factors(N,Fs) :-
  integer(N) ,
  N > 0 ,
  setof( F , factor(N,F) , Fs )
  .

factor(N,F) :-
  L is floor(sqrt(N)) ,
  between(1,L,X) ,
  0 =:= N mod X ,
  ( F = X ; F is N // X )
  .

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines smart_factors/2 and never calls it; the driver factors 1, 12, 45, 53, 64 and 100.
:- initialization(forall(member(N, [1, 12, 45, 53, 64, 100]), (smart_factors(N, Fs), format("~w: ~w~n", [N, Fs])))).
%------------------------------------------------------------ 145 farey-sequence
task(1) :-
	between(1, 11, I),
	farey(I, F),
	write(I), write(': '),
	rwrite(F), nl, fail; true.

task(2) :- between(1, 10, I),
	I100 is I*100,
	farey( I100, F),
	length(F,N),
	write('|F('), write(I100), write(')| = '), writeln(N), fail; true.

% farey(+Order, Sequence)
farey(Order, Sequence) :-
  bagof( R,
	 I^J^(between(1, Order, J), between(0, J, I), R is I rdiv J),
	 S),
  predsort( rcompare, S, Sequence ).

rprint( rdiv(A,B) ) :- write(A), write(/), write(B), !.
rprint( I ) :- integer(I), write(I), write(/), write(1), !.

rwrite([]).
rwrite([R]) :- rprint(R).
rwrite([R, T|Rs]) :- rprint(R), write(', '), rwrite([T|Rs]).

rcompare(<, A, B) :- A < B, !.
rcompare(>, A, B) :- A > B, !.
rcompare(=, A, B) :- A =< B.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines task/1 and farey/2 and never calls them; task(1)'s printer rprint/1 expects rdiv/2 terms and fails on swipl's rationals, so the driver prints farey/2's sequences F1..F11 with ~w and the lengths of F100..F300 in task(2)'s format (F400..F1000 take 28 s).
:- initialization((forall(between(1, 11, I), (farey(I, F), format("~w: ~w~n", [I, F]))), forall(between(1, 3, I), (N is I*100, farey(N, F), length(F, L), format("|F(~w)| = ~w~n", [N, L]))))).
%---------------------------------------------------- 146 fast-fourier-transform
:- dynamic twiddles/2.
%_______________________________________________________________
% Arithemetic for complex numbers; only the needed rules
add(cx(R1,I1),cx(R2,I2),cx(R,I)) :- R is R1+R2, I is I1+I2.
sub(cx(R1,I1),cx(R2,I2),cx(R,I)) :- R is R1-R2, I is I1-I2.
mul(cx(R1,I1),cx(R2,I2),cx(R,I)) :- R is R1*R2-I1*I2, I is R1*I2+R2*I1.
polar_cx(Mag, Theta, cx(R, I)) :-     % Euler
	R is Mag * cos(Theta), I is Mag * sin(Theta).
%___________________________________________________
% FFT Implementation. Note: K rdiv N is a rational number,
% making the lookup in dynamic database predicate twiddles/2 very
% efficient.  Also, polar_cx/2 gets called only when necessary- in
% this case (N=8), exactly 3 times: (where Tf=1/4, 1/8, or 3/8).
tw(0,cx(1,0)) :- !.                    % Calculate e^(-2*pi*k/N)
tw(Tf, Cx) :- twiddles(Tf, Cx), !.     % dynamic match?
tw(Tf, Cx) :- polar_cx(1.0, -2*pi*Tf, Cx), assert(twiddles(Tf, Cx)).

fftVals(N, Even, Odd, V0, V1) :-       % solves all V0,V1 for N,Even,Odd
	nth0(K,Even,E), nth0(K,Odd,O), Tf is K rdiv N, tw(Tf,Cx),
	mul(Cx,O,M), add(E,M,V0), sub(E,M,V1).

split([],[],[]). % split [[a0,b0],[a1,b1],...] into [a0,a1,...] and [b0,b1,...]
split([[V0,V1]|T], [V0|T0], [V1|T1]) :- !, split(T, T0, T1).

fft([H], [H]).
fft([H|T], List) :-
	length([H|T],N),
	findall(Ve, (nth0(I,[H|T],Ve),I mod 2 =:= 0), EL), !, fft(EL, Even),
	findall(Vo, (nth0(I,T,Vo),I mod 2 =:= 0),OL), !, fft(OL, Odd),
	findall([V0,V1],fftVals(N,Even,Odd,V0,V1),FFTVals),    % calc FFT
	split(FFTVals,L0,L1), append(L0,L1,List).
%___________________________________________________
test :- D=[cx(1,0),cx(1,0),cx(1,0),cx(1,0),cx(0,0),cx(0,0),cx(0,0),cx(0,0)],
	time(fft(D,DRes)), writef('fft=['), P is 10^3, !,
	(member(cx(Ri,Ii), DRes), R is integer(Ri*P)/P, I is integer(Ii*P)/P,
	 write(R), (I>=0, write('+'),fail;write(I)), write('j, '),
	 fail; write(']'), nl).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines test/0 and never calls it; the driver calls it once at load.
:- initialization(test).
%------------------------------------------------------- 147 faulhabers-triangle
ft_rows(Lz) :-
    lazy_list(ft_row, [], Lz).

ft_row([], R1, R1) :- R1 = [1].
ft_row(R0, R2, R2) :-
    length(R0, P),
    Jmax is 1 + P, numlist(2, Jmax, Qs),
    maplist(term(P), Qs, R0, R1),
    sum_list(R1, S), Bk is 1 - S, % Bk is Bernoulli number
    R2 = [Bk | R1].

term(P, Q, R, S) :- S is R * (P rdiv Q).

show(N) :-
    ft_rows(Rs),
    length(Rows, N), prefix(Rows, Rs),
    forall(
        member(R, Rows),
            (format(string(S), "~w", [R]),
             re_replace(" rdiv "/g, "/", S, T),
             re_replace(","/g, ", ", T, U),
             write(U), nl)).

sum(N, K, S) :- % sum I=1,N (I ** K)
    ft_rows(Rows), drop(K, Rows, [Coefs|_]),
    reverse([0|Coefs], Poly),
    foldl(horner(N), Poly, 0, S).

horner(N, A, S0, S1) :-
    S1 is N*S0 + A.

drop(N, Lz1, Lz2) :-
    append(Pfx, Lz2, Lz1), length(Pfx, N), !.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines show/1 and sum/3 and never calls them; the driver prints the task's first 10 rows and the sum of n^17 for n = 1..1000.
:- initialization((show(10), sum(1000, 17, S), writeln(S))).
%------------------------------------------------------ 148 fibonacci-sequence-1
fib(1, 1) :- !.
fib(0, 0) :- !.
fib(N, Value) :-
  A is N - 1, fib(A, A1),
  B is N - 2, fib(B, B1),
  Value is A1 + B1.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines fib/2 and never calls it; the driver prints fib(0) .. fib(20).
:- initialization((findall(V, (between(0, 20, N), fib(N, V)), Vs), writeln(Vs))).
%----------------------------------------------------- 149 fibonacci-sequence-10
% Fibonacci sequence generator
fib(C, [P,S], C, N)  :- N is P + S.
fib(C, [P,S], Cv, V) :- succ(C, Cn), N is P + S, !, fib(Cn, [S,N], Cv, V).

fib(0, 0).
fib(1, 1).
fib(C, N) :- fib(2, [0,1], C, N). % Generate from 3rd sequence on

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines fib/2 and never calls it; the driver prints fib(0) .. fib(20) (its first answer each: retrying fib(0, V) does not end).
:- initialization((findall(V, (between(0, 20, N), once(fib(N, V))), Vs), writeln(Vs))).
%----------------------------------------------------- 150 fibonacci-sequence-11
% John Devou: 26-Nov-2021
% Efficient program to calculate n-th Fibonacci number.
% Works fast for n ≤ 1 000 000 000.

b(0,Bs,Bs).
b(N,Bs,Res):- N > 0, B is mod(N,2), M is div(N,2), b(M,[B|Bs],Res).

f([],A,_,_,A).
f([X|Xs],A,B,C,Res):- AA is A^2, BB is B^2, A_ is 2*BB-3*AA-C, B_ is AA+BB,
    (X =:= 1 -> T is A_+B_, f(Xs,B_,T,-2,Res); f(Xs,A_,B_,2,Res)).

fib(N,F):- b(N,[],Bs), f(Bs,0,1,2,F), !.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines fib/2 and never calls it; the driver prints fib(0) .. fib(20) and fib(100).
:- initialization((findall(V, (between(0, 20, N), fib(N, V)), Vs), writeln(Vs), fib(100, F100), format("fib(100) = ~w~n", [F100]))).
%------------------------------------------------------ 151 fibonacci-sequence-3
%:- dynamic fib/2.  % This is ISO, but GNU doesn't like it.
:- dynamic(fib/2).  % Not ISO, but works in SWI, YAP and GNU unlike the ISO declaration.
fib(1, 1) :- !.
fib(0, 0) :- !.
fib(N, Value) :-
  A is N - 1, fib(A, A1),
  B is N - 2, fib(B, B1),
  Value is A1 + B1,
  asserta((fib(N, Value) :- !)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the memoising fib/2 and never calls it; the driver prints fib(0) .. fib(30).
:- initialization((findall(V, (between(0, 30, N), fib(N, V)), Vs), writeln(Vs))).
%------------------------------------------------------ 152 fibonacci-sequence-7
fib([0,1|X]) :-
    ffib(0,1,X).
ffib(A,B,X) :-
    freeze(X, (C is A+B, X=[C|Y], ffib(B,C,Y)) ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the lazy list fib/1 and never calls it; the driver takes its first 20 elements.
:- initialization((fib(L), length(P, 20), append(P, _, L), writeln(P))).
%------------------------------------------------------ 153 fibonacci-sequence-9
take( 0, Next, Z-Z, Next).
take( N, Next, [A|B]-Z, NZ):- N>0, !, next( Next, A, Next1),
  N1 is N-1,
  take( N1, Next1, B-Z, NZ).

next( fib(A,B), A, fib(B,C)):- C is A+B.

%% usage: ?- take(15, fib(0,1), _X-[], G), writeln(_X).
%% [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377]
%% G = fib(610, 987)

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines take/4 and never calls it; the driver runs its own usage comment, take(15, fib(0,1), X-[], G).
:- initialization((take(15, fib(0, 1), X-[], G), writeln(X), writeln(G))).
%------------------------------------------------------------------ 154 filter-1
evens(D, Es) :- findall(E, (member(E, D), E mod 2 =:= 0), Es).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines evens/2 and never calls it; the driver filters the even numbers of 1..10.
:- initialization((evens([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], Es), writeln(Es))).
%------------------------------------------------ 155 find-common-directory-path
%! directory_prefix(PATHs,STOP0,PREFIX)

directory_prefix([],_STOP0_,'')
:-
!
.

directory_prefix(PATHs0,STOP0,PREFIX)
:-
prolog:once(longest_prefix(PATHs0,STOP0,LONGEST_PREFIX)) ->
prolog:atom_concat(PREFIX,STOP0,LONGEST_PREFIX) ;
PREFIX=''
.

%! longest_prefix(PATHs,STOP0,PREFIX)

longest_prefix(PATHs0,STOP0,PREFIX)
:-
QUERY=(shortest_prefix(PATHs0,STOP0,SHORTEST_PREFIX)) ,
prolog:findall(SHORTEST_PREFIX,QUERY,SHORTEST_PREFIXs) ,
lists:reverse(SHORTEST_PREFIXs,LONGEST_PREFIXs) ,
lists:member(PREFIX,LONGEST_PREFIXs)
.

%! shortest_prefix(PATHs,STOP0,PREFIX)

shortest_prefix([],_STOP0_,_PREFIX_) .

shortest_prefix([PATH0|PATHs0],STOP0,PREFIX)
:-
starts_with(PATH0,PREFIX) ,
ends_with(PREFIX,STOP0) ,
shortest_prefix(PATHs0,STOP0,PREFIX)
.

%! starts_with(TARGET,START)

starts_with(TARGET,START)
:-
prolog:atom_concat(START,_,TARGET)
.

%! ends_with(TARGET,END)

ends_with(TARGET,END)
:-
prolog:atom_concat(_,END,TARGET)
.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines directory_prefix/3 and never calls it; the driver runs it on the task's three paths with separator /.
:- initialization((directory_prefix(['/home/user1/tmp/coverage/test', '/home/user1/tmp/covert/operator', '/home/user1/tmp/coven/members'], '/', P), writeln(P))).
%------------------------------ 156 find-the-intersection-of-a-line-with-a-plane
:- initialization(main).

vector_plus(U, V, W) :-
    U = p(X1, Y1, Z1),
    V = p(X2, Y2, Z2),
    X3 is X1 + X2,
    Y3 is Y1 + Y2,
    Z3 is Z1 + Z2,
    W = p(X3, Y3, Z3).

vector_minus(U, V, W) :-
    U = p(X1, Y1, Z1),
    V = p(X2, Y2, Z2),
    X3 is X1 - X2,
    Y3 is Y1 - Y2,
    Z3 is Z1 - Z2,
    W = p(X3, Y3, Z3).

vector_times(U, S, V) :-
    U = p(X1, Y1, Z1),
    X2 is X1 * S,
    Y2 is Y1 * S,
    Z2 is Z1 * S,
    V = p(X2, Y2, Z2).

vector_dot(U, V, S) :-
    U = p(X1, Y1, Z1),
    V = p(X2, Y2, Z2),
    S is X1 * X2 + Y1 * Y2 + Z1 * Z2.

intersect_point(RayVector, RayPoint, PlaneNormal, PlanePoint, IntersectPoint) :-
    vector_minus(RayPoint, PlanePoint, Diff),
    vector_dot(Diff, PlaneNormal, Prod1),
    vector_dot(RayVector, PlaneNormal, Prod2),
    Prod3 is Prod1 / Prod2,
    vector_times(RayVector, Prod3, Times),
    vector_minus(RayPoint, Times, IntersectPoint).

main :-
    RayVector = p(0.0, -1.0, -1.0),
    RayPoint = p(0.0, 0.0, 10.0),
    PlaneNormal = p(0.0, 0.0, 1.0),
    PlanePoint = p(0.0, 0.0, 5.0),
    intersect_point(RayVector, RayPoint, PlaneNormal, PlanePoint, p(X, Y, Z)),
    format("The ray intersects the plane at (~f, ~f, ~f)\n", [X, Y, Z]).
%------------------------------------------------------ 157 finite-state-machine
state(ready, deposit, waiting).
state(ready, quit, exit).
state(waiting, select, dispense).
state(waiting, refund, refunding).
state(dispense, remove, ready).

message(ready, 'Please deposit coins.~n').
message(waiting, 'Please select an item, or refund coins.~n').
message(dispense, 'Please remove your item.~n').
message(refunding, 'Coins have been refunded~n').

act :- act(ready).

act(exit).
act(refunding) :-
	print_message(refunding),
	act(ready).
act(State) :-
	dif(State, exit),
	print_message(State),
	read(Action),
	state(State, Action, NextState),
	act(NextState).
	
print_message(State) :-	message(State, Message), format(Message).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines act/0 (a vending machine reading its actions with read/1) and never calls it; finite-state-machine.in drives deposit, select, remove, deposit, refund, quit.
:- initialization(act).
%------------------------------------------------------------- 158 five-weekends
main() :-
    weekends(1900, 2100, FiveWeekendList, RemainderWeekendList),

    length(FiveWeekendList, FiveLen),
    maplist(write, ["Total five weekend months:", FiveLen, '\n']),

    slice(FiveWeekendList, 5, FirstFiveList),
    maplist(write, ["First five {year,month} pairs:", FirstFiveList, '\n']),

    slice(FiveWeekendList, -5, LastFiveList),
    maplist(write, ["Last five {year,month} pairs:", LastFiveList, '\n']),

    maplist(take_year, FiveWeekendList, FiveYearList),
    list_to_set(FiveYearList, FiveYearSet),

    maplist(take_year, RemainderWeekendList, RemainderYearList),
    list_to_set(RemainderYearList, RemainderYearSet),

    subtract(RemainderYearSet, FiveYearSet, NonFiveWeekendSet),
    length(NonFiveWeekendSet, NonFiveWeekendLen),

    maplist(write, ["Total years with no five weekend months:", NonFiveWeekendLen, '\n']),
    writeln(NonFiveWeekendSet).

weekends(StartYear, EndYear, FiveWeekendList, RemainderWeekendList) :-
    numlist(StartYear, EndYear, YearList),
    numlist(1, 12, MonthList),
    pair(YearList, MonthList, YearMonthList),
    partition(has_five_weekends, YearMonthList, FiveWeekendList, RemainderWeekendList).

has_five_weekends({Year, Month}) :-
    long_month(Month),
    starts_on_a_friday(Year, Month).

starts_on_a_friday(Year, Month) :-
    Date = date(Year, Month, 1),
    day_of_the_week(Date, DayOfTheWeek),
    DayOfTheWeek == 5.

take_year({Year, _}, Year).

long_month(1).
long_month(3).
long_month(5).
long_month(7).
long_month(8).
long_month(10).
long_month(12).

% Helpers

% https://stackoverflow.com/a/7739806
pair(L1, L2, Pairs):-findall({A,B}, (member(A, L1), member(B, L2)), Pairs).

slice(_, 0, []).

slice(List, N, NList):-
    N < 0,
    N1 is abs(N),
    last_n_elements(List, N1, NList).

slice(List, N, NList):-
    N > 0,
    first_n_elements(List, N, NList).

first_n_elements(List, N, FirstN):-
    length(FirstN, N),
    append(FirstN, _, List).

last_n_elements(List, N, LastN) :-
    length(LastN, N),
    append(_, LastN, List).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines main/0 (written main()) and never calls it; the driver calls it once at load (1900..2100).
:- initialization(main).
%---------------------------------------------------------------- 159 fizzbuzz-1
fizzbuzz :-
   forall(between(1, 100, X), print_item(X)).

print_item(X) :-
   (  X mod 15 =:= 0
   -> write('FizzBuzz')
   ;  X mod 3 =:= 0
   -> write('Fizz')
   ;  X mod 5 =:= 0
   -> write('Buzz')
   ;  write(X)
   ),
   nl.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines fizzbuzz/0 and never calls it; the driver calls it once at load.
:- initialization(fizzbuzz).
%---------------------------------------------------------------- 160 fizzbuzz-2
fizzbuzz(X) :- X mod 15 =:= 0, !, write('FizzBuzz').
fizzbuzz(X) :- X mod 3 =:= 0, !, write('Fizz').
fizzbuzz(X) :- X mod 5 =:= 0, !, write('Buzz').
fizzbuzz(X) :- write(X).

dofizzbuzz :-between(1, 100, X), fizzbuzz(X), nl, fail.
dofizzbuzz.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines dofizzbuzz/0 and never calls it; the driver calls it once at load.
:- initialization(dofizzbuzz).
%---------------------------------------------------------------- 161 fizzbuzz-3
%        N  /3?  /5?  V
fizzbuzz(_, yes, yes, 'FizzBuzz').
fizzbuzz(_, yes, no,  'Fizz').
fizzbuzz(_, no,  yes, 'Buzz').
fizzbuzz(N, no,  no,  N).

% Unifies V with 'yes' if D divides evenly into N, 'no' otherwise.
divisible_by(N, D, yes) :- N mod D =:= 0.
divisible_by(N, D, no) :- N mod D =\= 0.

% Print 'Fizz', 'Buzz', 'FizzBuzz' or N as appropriate.
fizz_buzz_or_n(N) :- N > 100.
fizz_buzz_or_n(N) :- N =< 100,
   divisible_by(N, 3, Fizz),
   divisible_by(N, 5, Buzz),
   fizzbuzz(N, Fizz, Buzz, FB),
   write(FB), nl,
   M is N+1, fizz_buzz_or_n(M).

main :-
   fizz_buzz_or_n(1).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%------------------------------------------------------------ 162 flatten-a-list
flatten(List, FlatList) :-
	flatten(List, [], FlatList).

flatten(Var, T, [Var|T]) :-
	var(Var), !.
flatten([], T, T) :- !.
flatten([H|T], TailList, List) :- !,
	flatten(H, FlatTail, List),
	flatten(T, TailList, FlatTail).

flatten(NonList, T, [NonList|T]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines flatten/2 and never calls it; the driver flattens the task's list.
:- initialization((flatten([[1], 2, [[3, 4], 5], [[[]]], [[[6]]], 7, 8, []], F), writeln(F))).
%-------------------------------------------------- 163 floyd-warshall-algorithm
:- use_module(library(clpfd)).

path(List, To, From, [From], W) :-
    select([To,From,W],List,_).
path(List, To, From, [Link|R], W) :-
    select([To,Link,W1],List,Rest),
    W #= W1 + W2,
    path(Rest, Link, From, R, W2).

find_path(Din, From, To, [From|Pout], Wout) :-
    between(1, 4, From),
    between(1, 4, To),
    dif(From, To),
    findall([W,P], (
                path(Din, From, To, P, W),
                all_distinct(P)
            ), Paths),
    sort(Paths, [[Wout,Pout]|_]).


print_all_paths :-
    D = [[1, 3, -2], [2, 3, 3], [2, 1, 4], [3, 4, 2], [4, 2, -1]],
    format('Pair\t  Dist\tPath~n'),
    forall(
        find_path(D, From, To, Path, Weight),(
            atomic_list_concat(Path, ' -> ', PPath),
            format('~p -> ~p\t  ~p\t~w~n', [From, To, Weight, PPath]))).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines print_all_paths/0 (the task's graph) and never calls it; the driver calls it once at load.
:- initialization(print_all_paths).
%----------------------------------------------------------- 164 floyds-triangle
floyd(N) :-
	forall(between(1, N, I),
	       (   forall(between(1,I, J),
			  (   Last is N * (N-1)/2+J,
			      V is I * (I-1) /2 + J,
			      get_column(Last, C),
			      sformat(AR, '~~t~~w~~~w| ', [C]),
			      sformat(AF, AR, [V]),
			      writef(AF))),
	       nl)).

get_column(Last, C) :-
	name(Last, N1), length(N1,C).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines floyd/1 and never calls it; the driver prints the task's triangles of 5 and 14 rows.
:- initialization((floyd(5), nl, floyd(14))).
%------------------------------------------------------------ 165 four-bit-adder
% binary 4 bit adder chip simulation

b_not(in(hi), out(lo)) :- !.      % not(1) = 0
b_not(in(lo), out(hi)).           % not(0) = 1

b_and(in(hi,hi), out(hi)) :- !.   % and(1,1) = 1
b_and(in(_,_), out(lo)).          % and(anything else) = 0

b_or(in(hi,_), out(hi)) :- !.     % or(1,any) = 1
b_or(in(_,hi), out(hi)) :- !.     % or(any,1) = 1
b_or(in(_,_), out(lo)).           % or(anything else) = 0

b_xor(in(A,B), out(O)) :-
    b_not(in(A), out(NotA)), b_not(in(B), out(NotB)),
    b_and(in(A,NotB), out(P)), b_and(in(NotA,B), out(Q)),
    b_or(in(P,Q), out(O)).

b_half_adder(in(A,B), s(S), c(C)) :-
    b_xor(in(A,B),out(S)), b_and(in(A,B),out(C)).

b_full_adder(in(A,B,Ci), s(S), c(C1)) :-
  b_half_adder(in(Ci, A), s(S0), c(C0)),
  b_half_adder(in(S0, B), s(S), c(C)),
  b_or(in(C0,C), out(C1)).

b_4_bit_adder(in(A0,A1,A2,A3), in(B0,B1,B2,B3), out(S0,S1,S2,S3), c(V)) :-
  b_full_adder(in(A0,B0,lo), s(S0), c(C0)),
  b_full_adder(in(A1,B1,C0), s(S1), c(C1)),
  b_full_adder(in(A2,B2,C1), s(S2), c(C2)),
  b_full_adder(in(A3,B3,C2), s(S3), c(V)).

test_add(A,B,T) :-
  b_4_bit_adder(A, B, R, C),
  writef('%w + %w is %w %w  \t(%w)\n', [A,B,R,C,T]).

go :-
  test_add(in(hi,lo,lo,lo), in(hi,lo,lo,lo), '1 + 1 = 2'),
  test_add(in(lo,hi,lo,lo), in(lo,hi,lo,lo), '2 + 2 = 4'),
  test_add(in(hi,lo,hi,lo), in(hi,lo,lo,hi), '5 + 9 = 14'),
  test_add(in(hi,hi,lo,hi), in(hi,lo,lo,hi), '11 + 9 = 20'),
  test_add(in(lo,lo,lo,hi), in(lo,lo,lo,hi), '8 + 8 = 16'),
  test_add(in(hi,hi,hi,hi), in(hi,lo,lo,lo), '15 + 1 = 16').

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines go/0 and never calls it; the driver calls it once at load.
:- initialization(go).
%------------------------------------------------------------------ 166 fractran
load(Program, Fractions) :-
    re_split("[ ]+", Program, Split), odd_items(Split, TextualFractions),
    maplist(convert_frac, TextualFractions, Fractions).

odd_items(L, L) :- L = [_], !.  % remove the even elements from a list.
odd_items([X,_|L], [X|R]) :- odd_items(L, R).

convert_frac(Text, Frac) :-
    re_matchsub("([0-9]+)/([0-9]+)"/t, Text, Match, []),
    Frac is Match.1 rdiv Match.2.

step(_, [], stop) :- !.
step(N, [F|Fs], R) :-
    A is N*F,
    (integer(A) -> R = A; step(N, Fs, R)).

exec(Prg, Start, Lz) :-
    lazy_list(transition, Prg/Start, Lz).

transition(Prg/N0, Prg/N1, N1) :-
    step(N0, Prg, N1).

steps(K, Start, Prg, Seq) :-
    exec(Prg, Start, Values),
    length(Seq, K), Seq = [Start|Rest], prefix(Rest, Values), !.


% The actual PRIMEGEN program follows...

primegen(Prg) :-
    load("17/91 78/85 19/51 23/38 29/33 77/29 95/23 77/19 1/17 11/13 13/11 15/14 15/2 55/1", Prg).

primes(N, Primes) :-
    primegen(Prg), exec(Prg, 2, Steps),
    length(Primes, N), capture_primes(Primes, Steps).

capture_primes([], _) :- !.
capture_primes([P|Ps], [Q|Qs]) :- pow2(Q), !, P is lsb(Q), capture_primes(Ps, Qs).
capture_primes(Ps, [_|Qs]) :- capture_primes(Ps, Qs).

pow2(X) :- X /\ (X-1) =:= 0.

main :-
    primegen(Prg), steps(15, 2, Prg, Steps),
    format("The first 15 steps from PRIMEGEN are: ~w~n", [Steps]),
    primes(20, Primes),
    format("By running PRIMEGEN we found these primes: ~w~n", [Primes]),
    halt.

?- main.
%----------------------------------------------------- 167 function-definition-1
multiply(A, B, P) :- P is A * B.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines multiply/3 and never calls it; the driver multiplies 5 by 2 as function-definition-2's go/0 does.
:- initialization((multiply(5, 2, P), format("The product is ~d.~n", [P]))).
%----------------------------------------------------- 168 function-definition-4
:- use_module(library(function_expansion)).

user:function_expansion(multiply(A, B), P, P is A * B).  % "function" definition

go :-
  format("The product is ~d.~n", [multiply(5, 2)]).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines go/0 and never calls it; the driver calls it once at load.
:- initialization(go).
%----------------------------------------------------- 169 function-definition-5
go :-
  A is 5*2,
  format('The product is ~d.~n', [A]).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines go/0 and never calls it; the driver calls it once at load.
:- initialization(go).
%------------------------------------------------------------- 170 fusc-sequence
:- dynamic fusc_cache/2.

fusc(0, 0):-!.
fusc(1, 1):-!.
fusc(N, F):-
    fusc_cache(N, F),
    !.
fusc(N, F):-
    0 is N mod 2,
    !,
    M is N//2,
    fusc(M, F),
    assertz(fusc_cache(N, F)).
fusc(N, F):-
    N1 is (N - 1)//2,
    N2 is (N + 1)//2,
    fusc(N1, F1),
    fusc(N2, F2),
    F is F1 + F2,
    assertz(fusc_cache(N, F)).

print_fusc_sequence(N):-
    writef('First %w fusc numbers:\n', [N]),
    print_fusc_sequence(N, 0),
    nl.

print_fusc_sequence(N, M):-
    M >= N,
    !.
print_fusc_sequence(N, M):-
    fusc(M, F),
    writef('%w ', [F]),
    M1 is M + 1,
    print_fusc_sequence(N, M1).

print_max_fusc(N):-
    writef('Fusc numbers up to %w that are longer than any previous one:\n', [N]),
    print_max_fusc(N, 0, 0).

print_max_fusc(N, M, _):-
    M >= N,
    !.
print_max_fusc(N, M, Max):-
    fusc(M, F),
    (F >= Max ->
        writef('n = %w, fusc(n) = %w\n', [M, F]), Max1 = max(10, Max * 10)
        ;
        Max1 = Max
    ),
    M1 is M + 1,
    print_max_fusc(N, M1, Max1).

main:-
    print_fusc_sequence(61),
    print_max_fusc(1000000).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%------------------------------------------------------------ 171 gamma-function
gamma_coefficients(
     [ 1.00000000000000000000000,  0.57721566490153286060651, -0.65587807152025388107701,
      -0.04200263503409523552900,  0.16653861138229148950170, -0.04219773455554433674820,
      -0.00962197152787697356211,  0.00721894324666309954239, -0.00116516759185906511211,
      -0.00021524167411495097281,  0.00012805028238811618615, -0.00002013485478078823865,
      -0.00000125049348214267065,  0.00000113302723198169588, -0.00000020563384169776071,
       0.00000000611609510448141,  0.00000000500200764446922, -0.00000000118127457048702,
       0.00000000010434267116911,  0.00000000000778226343990, -0.00000000000369680561864,
       0.00000000000051003702874, -0.00000000000002058326053, -0.00000000000000534812253,
       0.00000000000000122677862, -0.00000000000000011812593,  0.00000000000000000118669,
       0.00000000000000000141238, -0.00000000000000000022987,  0.00000000000000000001714
    ]).

tolerance(1e-17).

gamma(X, _) :- X =< 0.0, !, fail.
gamma(X, Y) :-
    X < 1.0, small_gamma(X, Y), !.
gamma(1, 1) :- !.
gamma(1.0, 1) :- !.
gamma(X, Y) :-
    X1 is X - 1,
    gamma(X1, Y1),
    Y is X1 * Y1.

small_gamma(X, Y) :-
    gamma_coefficients(Cs),
    recip_gamma(X, 1.0, Cs, 1.0, 0.0, Y0),
    Y is 1 / Y0.

recip_gamma(_, _, [], _, Y, Y) :- !.
recip_gamma(_, _, [], X0, X1, Y) :- tolerance(Tol), abs(X1 - X0) < Tol, Y = X1, !. % early exit
recip_gamma(X, PrevPow, [C|Cs], _, X1, Y) :-
    Power is PrevPow * X,
    X2 is X1 + C*Power,
    recip_gamma(X, Power, Cs, X1, X2, Y).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines gamma/2 and never calls it; the driver prints gamma(x) for x = 0.1 .. 2.0 in steps of 0.1.
:- initialization(forall(between(1, 20, I), (X is I / 10.0, gamma(X, Y), format("gamma(~1f) = ~w~n", [X, Y])))).
%-------------------------------------------------------- 172 general-fizzbuzz-2
go :- maxNumber(M), factors(Fs), MLast is M+1, loop(1,MLast,Fs).

loop(B,B,_).
loop(A,B,Fs) :-
    A < B, fizzbuzz(A,Fs,S), ( (S = "", Res is A) ; Res = S ), writeln(Res),
    Next is A+1, loop(Next,B,Fs).

fizzbuzz(_,[],"").
fizzbuzz(N,[(F,S)|Fs],Res) :-
    fizzbuzz(N,Fs,OldRes),
    ( N mod F =:= 0, string_concat(S,OldRes,Res) ; Res = OldRes ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block's go/0 is the entry and reads maxNumber/1 and factors/1, the input facts of general-fizzbuzz-1 (max 105; 3 Fizz, 5 Buzz, 7 Baxx), so the driver includes that block and calls go/0 once at load.
:- include('general-fizzbuzz-1.pl').
:- initialization(go).
%------------------------------------- 173 generate-chess960-starting-position-1
check(Row) :-
    nth1(King, Row, ♔),
    nth1(Rook1, Row, ♖),
    nth1(Rook2, Row, ♖),
    nth1(Bishop1, Row, ♗),
    nth1(Bishop2, Row, ♗),
    Rook1 < King, King < Rook2,
    (Bishop1 + Bishop2) mod 2 =:= 1.

generate(Row) :-
    random_permutation([♖,♘,♗,♕,♔,♗,♘,♖], Row),
    check(Row) ; generate(Row).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): generate/1 draws its row with random_permutation/2; the driver runs the rule beneath it, check/1, over every permutation of the eight pieces (the 960 legal rows) and on two fixed rows, printing ASCII only.
:- initialization((findall(R, (permutation([♖,♘,♗,♕,♔,♗,♘,♖], R), check(R)), Rs), sort(Rs, S), length(S, N), format("~w distinct starting positions pass check/1~n", [N]), (check([♖,♘,♗,♕,♔,♗,♘,♖]) -> writeln('the classic position passes') ; writeln('the classic position fails')), (check([♔,♖,♘,♗,♕,♗,♘,♖]) -> writeln('king outside the rooks passes') ; writeln('king outside the rooks fails')))).
%---------------------------------------- 174 generate-lower-case-ascii-alphabet
a_to_z(From, To, L) :-
	maplist(atom_codes, [From, To], [[C_From], [C_To]]),
	bagof([C], between(C_From, C_To, C), L1),
	maplist(atom_codes,L, L1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines a_to_z/3 and never calls it; the driver prints a_to_z(a, z, L), the task's lower-case alphabet.
:- initialization((a_to_z(a, z, L), format("~w~n", [L]))).
%-------------------------------------------------- 175 golden-ratio-convergence
iterate(Phi0, N0, Phi, N) :-
    Phi1 = (1.0 + (1.0 / Phi0)),
    N1 is N0 + 1,
    ((abs(Phi1 - Phi0) =< 1.0e-5)
    -> (Phi = Phi1, N = N1)
    ;  iterate(Phi1, N1, Phi, N)).

main :-
    iterate(1.0, 0, Phi, N),
    PhiApprox is Phi,
    Error is Phi - (0.5 * (1.0 + sqrt(5.0))),
    write('Final Phi = '),
    write(Phi),
    write('\n  which is approximately '),
    write(PhiApprox),
    write('\n'),
    write(N),
    write(' iterations were required.'),
    write('\nThe error is approximately '),
    write(Error),
    write('\n'),
    halt.

:- initialization(main).
%--------------------------------------------------------------- 176 gray-code-1
to_gray(N, G) :-
  N0 is N >> 1,
  G is N xor N0.

from_gray(G, N) :-
  ( G > 0
  ->  S is G >> 1,
      from_gray(S, N0),
      N is G xor N0
  ;   N is G ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines to_gray/2 and from_gray/2 and never calls them; the driver prints the task's 5-bit table for 0..31: binary, Gray code, decoded.
:- initialization(forall(between(0, 31, N), (to_gray(N, G), from_gray(G, D), format("~t~w~2| ~|~`0t~2r~5+ => ~|~`0t~2r~5+ => ~|~`0t~2r~5+ ~t~w~2+~n", [N, N, G, D, D])))).
%--------------------------------------------------------------- 177 gray-code-2
:- use_module(library(apply)).

to_gray(N, G) :-
  N0 is N >> 1,
  G is N xor N0.

from_gray(G, N) :-
  ( G > 0
  ->  S is G >> 1,
      from_gray(S, N0),
      N is G xor N0
  ;   N is G ).

make_num(In, Out) :-
  atom_to_term(In, Out, _),
  integer(Out).

write_record(Number, Gray, Decoded) :-
  format('~w~10|~2r~10+~2r~10+~2r~10+~w~n',
         [Number, Number, Gray, Decoded, Decoded]).

go :-
  setof(N, between(0, 31, N), Numbers),
  maplist(to_gray, Numbers, Grays),
  maplist(from_gray, Grays, Decodeds),
  format('~w~10|~w~10+~w~10+~w~10+~w~n',
         ['Number', 'Binary', 'Gray', 'Decoded', 'Number']),
  format('~w~10|~w~10+~w~10+~w~10+~w~n',
         ['------', '------', '----', '-------', '------']),
  maplist(write_record, Numbers, Grays, Decodeds).
go :- halt(1).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines go/0 and never calls it; the driver calls it once at load.
:- initialization(go).
%------------------------------------------------- 178 greatest-common-divisor-1
gcd(X, 0, X):- !.
gcd(0, X, X):- !.
gcd(X, Y, D):- X > Y, !, Z is X mod Y, gcd(Y, Z, D).
gcd(X, Y, D):- Z is Y mod X, gcd(X, Z, D).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines gcd/3 and never calls it; the driver prints gcd for five fixed pairs.
:- initialization(forall(member(A-B, [12-18, 1071-1029, 49865-69811, 0-5, 7-0]), (gcd(A, B, D), format("gcd(~w, ~w) = ~w~n", [A, B, D])))).
%------------------------------------------------- 179 greatest-common-divisor-2
gcd(X, 0, X):- !.
gcd(0, X, X):- !.
gcd(X, Y, D):- X =< Y, !, Z is Y - X, gcd(X, Z, D).
gcd(X, Y, D):- gcd(Y, X, D).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines gcd/3 (by subtraction) and never calls it; the driver prints gcd for five fixed pairs.
:- initialization(forall(member(A-B, [12-18, 1071-1029, 49865-69811, 0-5, 7-0]), (gcd(A, B, D), format("gcd(~w, ~w) = ~w~n", [A, B, D])))).
%---------------------------------------------- 180 greatest-element-of-a-list-2
max_list(L, V) :-
	select(V, L, R), \+((member(X, R), X > V)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines max_list/2 and never calls it; the driver runs the example query of greatest-element-of-a-list-1, max_list([1,2,10,3,0,7,9,5], M).
:- initialization((max_list([1, 2, 10, 3, 0, 7, 9, 5], M), format("~w~n", [M]))).
%---------------------------------------------- 181 greatest-subsequential-sum-1
:- use_module(library(chr)).

:- chr_constraint
	init_chr/2,
	seq/2,
	% gss(Deb, Len, TT)
	gss/3,
	% gsscur(Deb, Len, TT, IdCur)
	gsscur/4,
	memoseq/3,
	clean/0,
	greatest_subsequence/0.


greatest_subsequence <=>
	L = [-1 , -2 , 3 , 5 , 6 , -2 , -1 , 4 , -4 , 2 , -1],
	init_chr(1, L),
	find_chr_constraint(gss(Deb, Len, V)),
	clean,
	writeln(L),
	forall(between(1, Len, I),
	       (   J is I+Deb-1, nth1(J, L, N), format('~w ', [N]))),
	format('==> ~w ~n', [V]).

% destroy last constraint gss
clean \ gss(_,_,_) <=> true.
clean <=> true.

init_chr_end @ init_chr(_, []) <=> gss(0, 0, 0), gsscur(1,0,0,1).

init_chr_loop @ init_chr(N, [H|T]) <=> seq(N, H), N1 is N+1, init_chr(N1, T).

% here, we memorize the list
gsscur_with_negative @ gsscur(Deb, Len, TT, N),  seq(N, V) <=> V =< 0 |
             memoseq(Deb, Len, TT),
	     TT1 is TT + V,
	     N1 is N+1,
	     % if TT1 becomes negative,
	     % we begin a new subsequence
	     (	 TT1 < 0 -> gsscur(N1,0,0,N1)
	     ;	 Len1 is Len + 1, gsscur(Deb, Len1, TT1, N1)).

gsscur_with_positive @ gsscur(Deb, Len, TT, N),  seq(N, V) <=> V > 0 |
             TT1 is TT + V,
	     N1 is N+1,
	     Len1 is Len + 1,
	     gsscur(Deb, Len1, TT1, N1).

gsscur_end @ gsscur(Deb, Len, TT, _N) <=> memoseq(Deb, Len, TT).

memoseq(_DC, _LC, TTC), gss(D, L, TT) <=> TTC =< TT |
	       gss(D, L, TT).

memoseq(DC, LC, TTC), gss(_D, _L, TT) <=> TTC > TT |
		gss(DC, LC, TTC).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the CHR constraint greatest_subsequence/0 (on the task's list) and never posts it; the driver posts it once at load.
:- initialization(greatest_subsequence).
%----------------------------------- 182 greedy-algorithm-for-egyptian-fractions
count_digits(Number, Count):-
    atom_number(A, Number),
    atom_length(A, Count).

integer_to_atom(Number, Atom):-
    atom_number(A, Number),
    atom_length(A, Count),
    (Count =< 20 ->
        Atom = A
        ;
        sub_atom(A, 0, 10, _, A1),
        P is Count - 10,
        sub_atom(A, P, 10, _, A2),
        atom_concat(A1, '...', A3),
        atom_concat(A3, A2, Atom)
    ).

egyptian(0, _, []):- !.
egyptian(X, Y, [Z|E]):-
    Z is (Y + X - 1)//X,
    X1 is -Y mod X,
    Y1 is Y * Z,
    egyptian(X1, Y1, E).

print_egyptian([]):- !.
print_egyptian([N|List]):-
    integer_to_atom(N, A),
    write(1/A),
    (List = [] -> true; write(' + ')),
    print_egyptian(List).

print_egyptian(X, Y):-
    writef('Egyptian fraction for %t/%t: ', [X, Y]),
    (X > Y ->
        N is X//Y,
        writef('[%t] ', [N]),
        X1 is X mod Y
        ;
        X1 = X
    ),
    egyptian(X1, Y, E),
    print_egyptian(E),
    nl.

max_terms_and_denominator1(D, Max_terms, Max_denom, Max_terms1, Max_denom1):-
    max_terms_and_denominator1(D, 1, Max_terms, Max_denom, Max_terms1, Max_denom1).

max_terms_and_denominator1(D, D, Max_terms, Max_denom, Max_terms, Max_denom):- !.
max_terms_and_denominator1(D, N, Max_terms, Max_denom, Max_terms1, Max_denom1):-
    Max_terms1 = f(_, _, _, Len1),
    Max_denom1 = f(_, _, _, Max1),
    egyptian(N, D, E),
    length(E, Len),
    last(E, Max),
    (Len > Len1 ->
        Max_terms2 = f(N, D, E, Len)
        ;
        Max_terms2 = Max_terms1
    ),
    (Max > Max1 ->
        Max_denom2 = f(N, D, E, Max)
        ;
        Max_denom2 = Max_denom1
    ),
    N1 is N + 1,
    max_terms_and_denominator1(D, N1, Max_terms, Max_denom, Max_terms2, Max_denom2).

max_terms_and_denominator(N, Max_terms, Max_denom):-
    max_terms_and_denominator(N, 1, Max_terms, Max_denom, f(0, 0, [], 0),
                              f(0, 0, [], 0)).

max_terms_and_denominator(N, N, Max_terms, Max_denom, Max_terms, Max_denom):-!.
max_terms_and_denominator(N, N1, Max_terms, Max_denom, Max_terms1, Max_denom1):-
    max_terms_and_denominator1(N1, Max_terms2, Max_denom2, Max_terms1, Max_denom1),
    N2 is N1 + 1,
    max_terms_and_denominator(N, N2, Max_terms, Max_denom, Max_terms2, Max_denom2).

show_max_terms_and_denominator(N):-
    writef('Proper fractions with most terms and largest denominator, limit = %t:\n', [N]),
    max_terms_and_denominator(N, f(N_max_terms, D_max_terms, E_max_terms, Len),
                              f(N_max_denom, D_max_denom, E_max_denom, Max)),
    writef('Most terms (%t): %t/%t = ', [Len, N_max_terms, D_max_terms]),
    print_egyptian(E_max_terms),
    nl,
    count_digits(Max, Digits),
    writef('Largest denominator (%t digits): %t/%t = ', [Digits, N_max_denom, D_max_denom]),
    print_egyptian(E_max_denom),
    nl.

main:-
    print_egyptian(43, 48),
    print_egyptian(5, 121),
    print_egyptian(2014, 59),
    nl,
    show_max_terms_and_denominator(100),
    nl,
    show_max_terms_and_denominator(1000).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%---------------------------------- 183 guess-the-number-with-feedback-player--1
min(1). max(10).

pick_number(Min, Max) :-
    min(Min), max(Max),
    format('Pick a number between ~d and ~d, and I will guess it...~nReady? (Enter anything when ready):', [Min, Max]),
    read(_).

guess_number(Min, Max) :-
    Guess is (Min + Max) // 2,
    format('I guess ~d...~nAm I correct (c), too low (l), or too high (h)? ', [Guess]),
    repeat,
        read(Score),
        ( Score = l -> NewMin is Guess + 1, guess_number(NewMin, Max)
        ; Score = h -> NewMax is Guess - 1, guess_number(Min, NewMax)
        ; Score = c -> writeln('I am correct!')
        ; writeln('Invalid input'),
          false
        ).

play :-
    pick_number(Min, Max),
    guess_number(Min, Max).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines play/0 and never calls it; the input answers as the transcript in guess-the-number-with-feedback-player--2 does (ready, h, l, c for the number 3).
:- initialization((play, nl)).
%------------------------------------------------------ 184 hailstone-sequence-1
hailstone(1,[1]) :- !.
hailstone(N,[N|S]) :- 0 is N mod 2, N1 is N / 2, hailstone(N1,S).
hailstone(N,[N|S]) :- 1 is N mod 2, N1 is (3 * N) + 1, hailstone(N1, S).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines hailstone/2 and never calls it; the driver shows the task's 27 sequence and the longest start below 10000 (below the task's 100000 it takes 6 s under swipl).
:- initialization((hailstone(27, L), length(L, N), L = [A, B, C, D|_], append(_, [E, F, G, H], L), format("hailstone(27): ~w elements, ~w, ~w, ~w, ~w ... ~w, ~w, ~w, ~w~n", [N, A, B, C, D, E, F, G, H]), aggregate_all(max(Len, K), (between(1, 9999, K), hailstone(K, S), length(S, Len)), max(ML, MK)), format("longest below 10000: ~w (~w elements)~n", [MK, ML]))).
%------------------------------------------------------ 185 hailstone-sequence-5
:- use_module(library(chr)).
:- chr_option(debug, off).
:- chr_option(optimize, full).

:- chr_constraint collatz/2, hailstone/1, clean/0.

% to remove all constraints hailstone/1 after computation
clean @ clean \ hailstone(_) <=> true.
clean @ clean <=> true.

% compute Collatz number
init @ collatz(1,X) <=>  X = 1 | true.
collatz @ collatz(N, C) <=> (N mod 2 =:= 0 -> C is N / 2; C is 3 * N + 1).

% Hailstone loop
hailstone(1) ==> true.
hailstone(N) ==> N \= 1 | collatz(N, H), hailstone(H).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the CHR constraints hailstone/1, collatz/2 and clean/0 and never posts them; the driver posts hailstone(27) and prints the task's length and first and last four, as hailstone-sequence-6 checks.
:- initialization((hailstone(27), findall(X, find_chr_constraint(hailstone(X)), L), clean, length(L, N), L = [A, B, C, D|_], append(_, [E, F, G, H], L), format("hailstone(27): ~w elements, ~w, ~w, ~w, ~w ... ~w, ~w, ~w, ~w~n", [N, A, B, C, D, E, F, G, H]))).
%--------------------------------------------------------- 186 hamming-numbers-1
%% collect N elements produced by a generator in a row

take( 0, Next, Z-Z, Next).
take( N, Next, [A|B]-Z, NZ):- N>0, !, next(Next,A,Next1),
  N1 is N-1,
  take(N1,Next1,B-Z,NZ).

%% a generator provides specific {next} implementation

next( hamm( A2,B,C3,D,E5,F,[H|G] ), H, hamm(X,U,Y,V,Z,W,G) ):-
  H is min(A2, min(C3,E5)),
  (   A2 =:= H -> B=[N2|U],X is N2*2 ; (X,U)=(A2,B) ),
  (   C3 =:= H -> D=[N3|V],Y is N3*3 ; (Y,V)=(C3,D) ),
  (   E5 =:= H -> F=[N5|W],Z is N5*5 ; (Z,W)=(E5,F) ).

mkHamm( hamm(1,X,1,X,1,X,X) ).       % Hamming numbers generator init state

main(N) :-
    mkHamm(G),take(20,G,A-[],_),           write(A), nl,
    take(1691-1,G,_,G2),take(2,G2,B-[],_),     write(B), nl,
    take(  N  -1,G,_,G3),take(2,G3,[C1|_]-_,_),   write(C1), nl.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines main/1 and never calls it; the driver runs main(1000000): the first 20, the 1691st and 1692nd, and the millionth Hamming number, as the task asks.
:- initialization(main(1000000)).
%--------------------------------------------------------- 187 hamming-numbers-2
hamming(N) :-
     % to stop cleanly
     nb_setval(go, 1),

     % display list
     (	 N = 20 -> watch_20(20, L); watch(1,N,L)),

     % go
     L=[1|L235],
     multlist(L,2,L2),
     multlist(L,3,L3),
     multlist(L,5,L5),
     merge_(L2,L3,L23),
     merge_(L5,L23,L235).


%% multlist(L,N,LN)
%% multiply each element of list L with N, resulting in list LN
%% here only do multiplication for 1st element, then use multlist recursively
multlist([X|L],N,XLN) :-
	% the trick to stop
	nb_getval(go, 1) ->

	% laziness flavor	
	when(ground(X),
	     (	 XN is X*N,
		 XLN=[XN|LN],
		 multlist(L,N,LN)));

	true.

merge_([X|In1],[Y|In2],XYOut) :-
	% the trick to stop
	nb_getval(go, 1) ->

	% laziness flavor
	(   X < Y -> XYOut = [X|Out], In11 = In1, In12 = [Y|In2]
	;   X = Y -> XYOut = [X|Out], In11 = In1, In12 = In2
	;            XYOut = [Y|Out], In11 = [X | In1], In12 = In2),
	freeze(In11,freeze(In12, merge_(In11,In12,Out)));

	true.

%% display nth element
watch(Max, Max, [X|_]) :-
	% laziness flavor
	when(ground(X),
	     (format('~w~n', [X]),

	      % the trick to stop
	      nb_linkval(go, 0))).


watch(N, Max, [_X|L]):-
	 N1 is N + 1,
	 watch(N1, Max, L).


%% display nth element
watch_20(1, [X|_]) :-
	% laziness flavor
	when(ground(X),
	     (format('~w~n', [X]),

	      % the trick to stop
	      nb_linkval(go, 0))).


watch_20(N, [X|L]):-
	% laziness flavor
	when(ground(X),
	     (format('~w ', [X]),
	      N1 is N - 1,
	      watch_20(N1, L))).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines hamming/1 and never calls it; the driver prints the first 20 and the 1691st (the millionth takes 18 s under swipl, so it is left out).
:- initialization((hamming(20), hamming(1691))).
%----------------------------------------------------------- 188 happy-numbers-1
happy_numbers(L, Nb) :-
    % creation of the list
    length(L, Nb),
    % Process of this list
    get_happy_number(L, 1).


% the game is over
get_happy_number([], _).

% querying the newt happy_number
get_happy_number([H | T], N) :-
     N1 is N+1,
    (is_happy_number(N) ->
        H = N,
        get_happy_number(T, N1);
        get_happy_number([H | T], N1)).

% we must memorized the numbers reached
is_happy_number(N) :-
    is_happy_number(N, [N]).

% a number is happy when we get 1
is_happy_number(N, _L) :-
    get_next_number(N, 1), !.

% or when this number is not already reached !
is_happy_number(N, L) :-
    get_next_number(N, NN),
    \+member(NN, L),
    is_happy_number(NN, [NN | L]).

% Process of the next number from N
get_next_number(N, NewN) :-
    get_list_digits(N, LD),
    maplist(square, LD, L),
    sumlist(L, NewN).

get_list_digits(N, LD) :-
	number_chars(N, LCD),
	maplist(number_chars_, LD, LCD).

number_chars_(D, CD) :-
	number_chars(D, [CD]).

square(N, SN) :-
	SN is N * N.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines happy_numbers/2 and never calls it; the driver prints the task's first 8 happy numbers.
:- initialization((happy_numbers(L, 8), format("~w~n", [L]))).
%----------------------------------------------------------- 189 harmonic-series
main:-
    print_harmonic_series(20),
    nl,
    nth_harmonic_number(100, T),
    Num is numerator(T),
    Denom is denominator(T),
    writef('100th harmonic number: %t/%t\n', [Num, Denom]),
    nl,
    print_first_harmonic_greater_than(10).

print_harmonic_series(N):-
    writef('First %t harmonic numbers:\n', [N]),
    harmonic_first(H),
    print_harmonic_series(N, H).

print_harmonic_series(N, H):-
    H = h(I, T),
    Num is numerator(T),
    Denom is denominator(T),
    writef('%3r. %t/%t\n', [I, Num, Denom]),
    (I == N, ! ; harmonic_next(H, H1), print_harmonic_series(N, H1)).

print_first_harmonic_greater_than(N):-
    harmonic_first(H),
    print_first_harmonic_greater_than(1, N, H).

print_first_harmonic_greater_than(N, L, _):-
    N > L,
    !.
print_first_harmonic_greater_than(N, L, H):-
    H = h(P, T),
    (T > N ->
        writef('Position of first term >%3r: %t\n', [N, P]),
        N1 is N + 1
        ;
        N1 = N),
    harmonic_next(H, H1),
    print_first_harmonic_greater_than(N1, L, H1).

harmonic_first(h(1, 1)).

harmonic_next(h(N1, T1), h(N2, T2)):-
    N2 is N1 + 1,
    T2 is T1 + 1 rdiv N2.

nth_harmonic_number(N, T):-
    harmonic_first(H),
    nth_harmonic_number(N, T, H).

nth_harmonic_number(N, T, h(N, T)):-!.
nth_harmonic_number(N, T, H1):-
    harmonic_next(H1, H2),
    nth_harmonic_number(N, T, H2).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%----------------------------------------------------------------- 190 hash-join
% Name/Age
person_age('Jonah',  27).
person_age('Alan',   18).
person_age('Glory',  28).
person_age('Popeye', 18).
person_age('Alan',   28).

% Character/Nemesis
character_nemisis('Jonah', 'Whales').
character_nemisis('Jonah', 'Spiders').
character_nemisis('Alan',  'Ghosts').
character_nemisis('Alan',  'Zombies').
character_nemisis('Glory', 'Buffy').

join_and_print :-
  format('Age\tName\tCharacter\tNemisis\n\n'),
  forall(
    (person_age(Person, Age), character_nemisis(Person, Nemesis)),
    format('~w\t~w\t~w\t\t~w\n', [Age, Person, Person, Nemesis])
  ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines join_and_print/0 (over the task's two tables) and never calls it; the driver calls it once at load.
:- initialization(join_and_print).
%---------------------------------------------- 191 hello-world-newline-omission
:- write('Goodbye, World!').
%---------------------------------------------------------- 192 hello-world-text
:- write('Hello world!'), nl.
%---------------------------------------------------- 193 higher-order-functions
first(Predicate) :- call(Predicate).
second(Argument) :- write(Argument).

:-first(second('Hello World!')).
%-------------------------------------- 194 hofstadter-figure-figure-sequences-1
:- use_module(library(chr)).

:- chr_constraint ffr/2, ffs/2, hofstadter/1,hofstadter/2.
:- chr_option(debug, off).
:- chr_option(optimize, full).

% to remove duplicates
ffr(N, R1) \ ffr(N, R2) <=> R1 = R2 | true.
ffs(N, R1) \ ffs(N, R2) <=> R1 = R2 | true.

% compute ffr
ffr(N, R), ffr(N1, R1), ffs(N1,S1) ==>
         N > 1, N1 is N - 1 |
	 R is R1 + S1.

% compute ffs
ffs(N, S), ffs(N1,S1) ==>
         N > 1, N1 is N - 1 |
	 V is S1 + 1,
	 (   find_chr_constraint(ffr(_, V)) ->  S is V+1; S = V).

% init
hofstadter(N) ==>  ffr(1,1), ffs(1,2).
% loop
hofstadter(N), ffr(N1, _R), ffs(N1, _S) ==> N1 < N, N2 is N1 +1 |  ffr(N2,_), ffs(N2,_).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the CHR constraints hofstadter/1, ffr/2, ffs/2 and never posts them; the driver posts hofstadter(10) and prints the task's first ten R (the 1..1000 check at hofstadter(960) takes 41 s under swipl).
:- initialization((hofstadter(10), findall(K-R, find_chr_constraint(ffr(K, R)), L), msort(L, S), pairs_values(S, V), format("~w~n", [V]))).
%---------------------------------- 195 horners-rule-for-polynomial-evaluation-1
horner([], _X, 0).

horner([H|T], X, V) :-
	horner(T, X, V1),
	V is V1 * X + H.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines horner/3 and never calls it; the driver evaluates the task's 6x^3 - 4x^2 + 7x - 19 at x = 3.
:- initialization((horner([-19, 7, -4, 6], 3, V), format("~w~n", [V]))).
%------------------------------------------------------------ 196 huffman-coding
huffman :-
   L = 'this is an example for huffman encoding',
   atom_chars(L, LA),
   msort(LA, LS),
   packList(LS, PL),
   sort(PL, PLS),
   build_tree(PLS, A),
   coding(A, [], C),
   sort(C, SC),
   format('Symbol~t   Weight~t~30|Code~n'),
   maplist(print_code, SC).

build_tree([[V1|R1], [V2|R2]|T], AF) :-
   V is V1 + V2,
   A = [V, [V1|R1], [V2|R2]],
   (   T=[] -> AF=A ;  sort([A|T], NT), build_tree(NT, AF) ).

coding([_A,FG,FD], Code, CF) :-
   (   is_node(FG) ->  coding(FG, [0 | Code], C1)
          ;  leaf_coding(FG, [0 | Code], C1) ),
   (   is_node(FD) ->  coding(FD, [1 | Code], C2)
          ;  leaf_coding(FD, [1 | Code], C2) ),
   append(C1, C2, CF).

leaf_coding([FG,FD], Code, CF) :-
   reverse(Code, CodeR),
   CF = [[FG, FD, CodeR]] .

is_node([_V, _FG, _FD]).

print_code([N, Car, Code]):-
   format('~w :~t~w~t~30|', [Car, N]),
   forall(member(V, Code), write(V)),
   nl.

packList([], []).
packList([X], [[1,X]]) :- !.
packList([X|Rest], [XRun|Packed]):-
    run(X, Rest, XRun, RRest),
    packList(RRest, Packed).

run(V, [], [1,V], []).
run(V, [V|LRest], [N1,V], RRest):-
    run(V, LRest, [N, V], RRest),
    N1 is N + 1.
run(V, [Other|RRest], [1,V], [Other|RRest]):-
    dif(V, Other).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines huffman/0 (on the task's string) and never calls it; the driver calls it once at load.
:- initialization(huffman).
%----------------------------------------------------------- 197 identity-matrix
%rotates one list clockwise by one integer
rotate(Int,List,Rotated) :-
   integer(Int),
   length(Suff,Int),
   append(Pre,Suff,List),
   append(Suff,Pre,Rotated).
%rotates a list of lists by a list of integers
rotate(LoInts,LoLists,Rotated) :-
   is_list(LoInts),
   maplist(rotate,LoInts,LoLists,Rotated).

%helper function
append_(Suff,Pre,List) :-
   append([Pre],Suff,List).
idmatrix(N,IdMatrix):-
   %make an N length list of 1s and append with N-1 0s
   length(Ones,N),
   maplist(=(1),Ones),
   succ(N0,N),
   length(Zeros,N0),
   maplist(=(0),Zeros),
   maplist(append_(Zeros),Ones,M),
   %create the offsets at rotate each row
   numlist(0,N0,Offsets),
   rotate(Offsets,M,IdMatrix).

main :-
   idmatrix(5,I),
   maplist(writeln,I).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%----------- 198 idiomatically-determine-all-the-lowercase-and-uppercase-letters
chars :-
    findall(Lower, maplist(char_type(Lower), [alpha, ascii, lower]), Lowers),

    writeln('-- Lower Case Characters --'),
    writeln(Lowers),
    nl,

    findall(Upper, maplist(char_type(Upper), [alpha, ascii, upper]), Uppers),
    writeln('-- Upper Case Characters --'),
    writeln(Uppers).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines chars/0 and never calls it; the driver calls it once at load.
:- initialization(chars).
%-------------------------------------------- 199 increment-a-numerical-string-1
incr_numerical_string(S1, S2) :-
	string_to_atom(S1, A1),
	atom_number(A1, N1),
	N2 is N1+1,
	atom_number(A2, N2),
	string_to_atom(S2, A2).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines incr_numerical_string/2 and never calls it; the driver increments three fixed numerical strings.
:- initialization(forall(member(S0, ["12345", "-10", "99"]), (incr_numerical_string(S0, S), format("~w -> ~w~n", [S0, S])))).
%-------------------------------------------- 200 input-output-for-lines-of-text
number_of_lines(Num) :-	
	current_input(In),
	read_line_to_codes(In, Line),
	number_codes(Num, Line).
	
input_lines_for_num(0, ListOfLines)	:-	
	format('~nThe lines you entered were: ~n~n'),
	maplist(format('~w~n'), ListOfLines).	
input_lines_for_num(Num, CurrentLines) :-
	Num > 0,
	Num1 is Num - 1,
	current_input(In),
	read_line_to_codes(In, Line),
	atom_codes(LineAsAtom, Line),
	append(CurrentLines, [LineAsAtom], MoreLines),
	input_lines_for_num(Num1, MoreLines).
	
lines :-
	number_of_lines(Num),
	input_lines_for_num(Num, []).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines lines/0 (reads a count, then that many lines) and never calls it; the input is the task's sample.
:- initialization(lines).
%------------------------------------------------------ 201 integer-comparison-1
:- set_prolog_flag(double_quotes, chars).

println([]) :- write('\n').
println([Char | Chars]) :- write(Char), println(Chars).

my_compare(A, B) :-
    (   A < B
    ->  println("A is less than B")
    ;   A > B
    ->  println("A is greater than B")
    ;   % double equals is necessary if we want the predicate to fail if A or B is unbound
        A == B
    ->  println("A is equal to B")
    ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines my_compare/2 and never calls it; the driver compares three fixed pairs, one for each outcome.
:- initialization(forall(member(A-B, [1-2, 2-1, 2-2]), (format("~w ~w: ", [A, B]), my_compare(A, B)))).
%-------------------------------------------------------- 202 integer-sequence-1
loop(I) :-
	writeln(I),
	I1 is I+1,
	loop(I1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines loop/1, which prints integers forever, and never calls it; the driver bounds it with call_with_depth_limit/3 (depth 21: 1..20).
:- initialization(call_with_depth_limit(loop(1), 21, _)).
%----------------------------------------------------------- 203 inverted-syntax
% Dracula is a vampire.
% Also, you become a vampire if someone who is a vampire bites you.
vampire(dracula).
vampire(You) :- bites(Someone, You), vampire(Someone).

% Oh no! Dracula just bit Bob...
bites(dracula, bob).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines vampire/1 and bites/2 and never queries them; the driver lists every vampire.
:- initialization(forall(vampire(X), format("~w is a vampire~n", [X]))).
%------------------------------------------------------ 204 isbn13-check-digit-1
:- use_module(library(clpfd)).
:- use_module(library(dcg/basics), [digit/3]).
:- use_module(library(dcg/high_order), [sequence/4]).

base10_digit(Number) --> { Number in 0..9, Number #= Number0 - 48 }, digit(Number0).

isbn13 -->
    sequence(base10_digit, [D1, D2, D3]), "-",
    sequence(base10_digit, [D4, D5, D6, D7, D8, D9, D10, D11, D12, D13]),
    { ( D1 + 3 * D2 + D3 + 3 * D4 +
        D5 + 3 * D6 + D7 + 3 * D8 +
        D9 + 3 * D10 + D11 + 3 * D12 + D13 ) mod 10 #= 0 }.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the DCG isbn13//0 and never calls it; the driver checks the task's four ISBNs.
:- initialization(forall(member(S, ['978-0596528126', '978-0596528120', '978-1788399081', '978-1788399083']), (atom_codes(S, Cs), (phrase(isbn13, Cs) -> R = good ; R = bad), format("~w: ~w~n", [S, R])))).
%-------------------------------------------- 205 isqrt-integer-square-root-of-x
%%% -*- Prolog -*-
%%%
%%% The Rosetta Code integer square root task, for SWI Prolog.
%%%

%% pow4gtx/2 -- Find a power of 4 greater than X.
pow4gtx(X, Q) :- pow4gtx(X, 1, Q), !.
pow4gtx(X, A, Q) :- X < A, Q is A.
pow4gtx(X, A, Q) :- A1 is A * 4,
                    pow4gtx(X, A1, Q).

%% isqrt/2 -- Find integer square root.
%% isqrt/3 -- Find integer square root and remainder.
isqrt(X, R) :- isqrt(X, R, _).
isqrt(X, R, Z) :- pow4gtx(X, Q),
                  isqrt(X, Q, 0, X, R, Z).
isqrt(_, 1, R0, Z0, R, Z) :- R is R0,
                             Z is Z0.
isqrt(X, Q, R0, Z0, R, Z) :- Q1 is Q // 4,
                             T is Z0 - R0 - Q1,
                             (T >= 0
                             -> R1 is (R0 // 2) + Q1,
                                isqrt(X, Q1, R1, T, R, Z)
                             ;  R1 is R0 // 2,
                                isqrt(X, Q1, R1, Z0, R, Z)).

roots(N) :- roots(0, N).
roots(I, N) :- isqrt(I, R),
               write(R),
               (I =:= N; write(" ")),
               I1 is I + 1,
               (N < I1, !; roots(I1, N)).

rootspow7(N) :- rootspow7(1, N).
rootspow7(I, N) :- Pow7 is 7**I,
                   isqrt(Pow7, R),
                   format("~t~D~2|~t~D~87|~t~D~131|~n",
                          [I, Pow7, R]),
                   I1 is I + 2,
                   (N < I1, !; rootspow7(I1, N)).

main :-
  format("isqrt(i) for 0 <= i <= 65:~2n"),
  roots(65),
  format("~3n"),
  format("isqrt(7**i) for 1 <= i <= 73, i odd:~2n"),
  format("~t~s~2|~t~s~87|~t~s~131|~n",
         ["i", "7**i", "isqrt(7**i)"]),
  format("-----------------------------------------------------------------------------------------------------------------------------------~n"),
  rootspow7(73),
  halt.

:- initialization(main).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Instructions for GNU Emacs--
%%% local variables:
%%% mode: prolog
%%% prolog-indent-width: 2
%%% end:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%-------------------------------------------------- 206 iterated-digits-squaring
:- initialization(main, main).

%!  next_number_in_chain(+Number0, -Number) is det.
next_number_in_chain(Number0, Number) :- next_number_in_chain_(Number0, 0, Number).

next_number_in_chain_(Number0, Number1, Number) :-
    divmod(Number0, 10, Div, Mod),
    Number2 is Number1 + Mod ^ 2,
    (   Div = 0
    ->  Number2 = Number
    ;   next_number_in_chain_(Div, Number2, Number)
    ).

%!  number_chain(+Number, -End) is det.
number_chain(Number0, End) :-
    (   Number0 =< 81 * 9
    ->  number_chain_(Number0, End)
    ;   next_number_in_chain(Number0, Number),
        number_chain(Number, End)
    ).

:- table number_chain_/2.
number_chain_(89, 89).
number_chain_( 1,  1).
number_chain_(Number0, End) :-
    next_number_in_chain(Number0, Number),
    number_chain_(Number, End).

%!  task(+Max, -Result) is det.
task(Max, Result) :-
    aggregate_all(count, ( between(1, Max, N), number_chain(N, 89) ), Result).

main([Input]) :-
    atom_number(Input, Number),
    time(task(Number, Result)),
    writeln(Result).
%------------------------------------------------------------- 207 jaccard-index
show([]).
show([X|Xs]):- write(X), show(Xs).

j(N,M,X):- M > 0 -> X is N/M; X is 1.

task:- L = [[], [1,2,3,4,5], [1,3,5,7,9], [2,4,6,8,10], [2,3,5,7], [8]],
    forall((member(A,L), member(B,L)), (
        findall(X, (member(X,A), member(X,B)), I), length(I,N),
        findall(X, (member(X,B), not(member(X,A))), T), append(A,T,U), length(U,M),
        j(N,M,J), show(["A = ",A,", B = ",B,", J = ",J]), nl)).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines task/0 and never calls it; the driver calls it once at load.
:- initialization(task).
%------------------------------------------------------- 208 jewels-and-stones-1
:- system:set_prolog_flag(double_quotes,codes) .

count_jewels(STONEs0,JEWELs0,COUNT)
:-
findall(X,(member(X,JEWELs0),member(X,STONEs0)),ALLs) ,
length(ALLs,COUNT)
.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines count_jewels/3 and never calls it; the driver counts the task's two examples (the file sets double_quotes=codes itself).
:- initialization(forall(member(S-J, ["aAAbbbb"-"aA", "ZZ"-"z"]), (count_jewels(S, J, N), format("~s ~s: ~w~n", [S, J, N])))).
%------------------------------------------------------- 209 jewels-and-stones-2
count_jewels(Stones, Jewels, N):-
    string_codes(Stones, Scodes),
    string_codes(Jewels, Jcodes),
    msort(Scodes, SScodes),
    sort(Jcodes, SJcodes),
    count_jewels(SScodes, SJcodes, N, 0).

count_jewels([], _, N, N):-!.
count_jewels(_, [], N, N):-!.
count_jewels([C|Stones], [C|Jewels], N, R):-
    !,
    R1 is R + 1,
    count_jewels(Stones, [C|Jewels], N, R1).
count_jewels([S|Stones], [J|Jewels], N, R):-
    J < S,
    !,
    count_jewels([S|Stones], Jewels, N, R).
count_jewels([_|Stones], Jewels, N, R):-
    count_jewels(Stones, Jewels, N, R).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines count_jewels/3 and never calls it; the driver counts the task's two examples.
:- initialization(forall(member(S-J, ["aAAbbbb"-"aA", "ZZ"-"z"]), (count_jewels(S, J, N), format("~w ~w: ~w~n", [S, J, N])))).
%-------------------------------------------------------- 210 josephus-problem-1
josephus(N, K, Survivors) :- josephus(N, K, 1, Survivors).

:- table josephus/4.
josephus(N, K, M, Survivors) :-
    K > 0,
    N > 0,
    N0 is N - 1,
    (   M = N
    ->  numlist(0, N0, Survivors)
    ;   josephus(N0, K, M, Survivors0),
        findall(Survivor, (
            member(Survivor0, Survivors0),
            Survivor is (Survivor0 + K) mod N
        ), Survivors)
    ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines josephus/3 and josephus/4 and never calls them; the driver prints the task's survivor for n = 41, k = 3 and the last three (extra credit).
:- initialization((josephus(41, 3, S), format("~w~n", [S]), josephus(41, 3, 3, S3), format("~w~n", [S3]))).
%------------------------------------------------------------ 211 json-pointer-1
:- module(json_pointer, [json_pointer/3]).
:- use_module(library(http/json), [atom_json_term/3]).

%!  json_pointer(+Pointer, +JSON0, -JSON) is semidet.
%   Fails if the pointer is invalid.
json_pointer(Pointer, JSON0, JSON) :-
    once(phrase(json_pointer(JSON0, JSON), Pointer)).

json_pointer(JSON, JSON) --> [].
json_pointer(JSON0, JSON) -->
    "/", property_name(Key),
    { json_get_key(Key, JSON0, JSON1) },
    json_pointer(JSON1, JSON).

property_name([0'/ | Cs]) --> "~1", property_name(Cs).
property_name([0'~ | Cs]) --> "~0", property_name(Cs).
property_name([C   | Cs]) --> [C], { C \= 0'/, C \= 0'~ }, property_name(Cs).
property_name([])         --> [].

json_get_key(Name, json(KeyVals), JSON) :-
    !,
    atom_codes(Key, Name),
    memberchk(Key=JSON, KeyVals).

json_get_key(Number, JSON0, JSON) :-
    is_list(JSON0),
    maplist(is_digit, Number),
    Number \= [],
    !,
    number_codes(Index, Number),
    nth0(Index, JSON0, JSON).

:- begin_tests(json_pointer).

example_json(JSON) :- atom_json_term(`{
  "wiki": {
    "links": [
      "https://rosettacode.org/wiki/Rosetta_Code",
      "https://discord.com/channels/1011262808001880065"
    ]
  },
  "": "Rosetta",
  " ": "Code",
  "g/h": "chrestomathy",
  "i~j": "site",
  "abc": ["is", "a"],
  "def": { "": "programming" }
}`, JSON, []).

test(entire_document) :-
    example_json(JSON0),
    json_pointer(``, JSON0, JSON),
    assertion(JSON0 == JSON).

test(valid_pointers, [forall(member(Pointer => Expected, [
    `/`              => 'Rosetta',
    `/ `            => 'Code',
    `/abc`          => [is, a],
    `/def/`         => programming,
    `/g~1h`         => chrestomathy,
    `/i~0j`         => site,
    `/wiki/links/0`  => 'https://rosettacode.org/wiki/Rosetta_Code',
    `/wiki/links/1`  => 'https://discord.com/channels/1011262808001880065'
]))]) :-
    example_json(JSON),
    json_pointer(Pointer, JSON, Actual),
    assertion(Actual == Expected).

test(invalid_pointers, [fail, forall(member(Pointer, [
    `/wiki/links/2`, `/wiki/name`, `/no/such/thing`, `bad/pointer`
]))]) :-
    example_json(JSON),
    json_pointer(Pointer, JSON, _).

:- end_tests(json_pointer).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines json_pointer/3 and its plunit tests, whose example_json/1 dies under swipl 9.0.4 (atom_json_term/3 refuses a code list); the driver parses the task's document from an atom and resolves the task's pointers.
:- initialization((atom_json_term('{"wiki": {"links": ["https://rosettacode.org/wiki/Rosetta_Code", "https://discord.com/channels/1011262808001880065"]}, "": "Rosetta", " ": "Code", "g/h": "chrestomathy", "i~j": "site", "abc": ["is", "a"], "def": {"": "programming"}}', J, []), forall(member(P, [``, `/`, `/ `, `/abc`, `/def/`, `/g~1h`, `/i~0j`, `/wiki/links/0`, `/wiki/links/1`, `/wiki/links/2`, `/wiki/name`, `/no/such/thing`, `bad/pointer`]), (json_pointer(P, J, V) -> format("\"~s\" => ~q~n", [P, V]) ; format("\"~s\" => error~n", [P]))))).
%--------------------------------------- 212 kernighans-large-earthquake-problem
:- initialization(main, main).

process_line(Line):-
    split_string(Line, "\s\t", "\s\t", [_, _, Magnitude_string]),
    read_term_from_atom(Magnitude_string, Magnitude, []),
    Magnitude > 6,
    !,
    writef('%w\n', [Line]).
process_line(_).

process_stream(Stream):-
    read_line_to_string(Stream, String),
    String \= end_of_file,
    !,
    process_line(String),
    process_stream(Stream).
process_stream(_).

process_file(File):-
    open(File, read, Stream),
    process_stream(Stream),
    close(Stream).

main([File]):-
    process_file(File),
    !.
main(_):-
    swritef(Message, 'File argument is missing\n', []),
    write(user_error, Message).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): main/1 reads the file named on its command line; the driver feeds the same reader, process_stream/1, the task's three data lines (main then runs with no argument and only writes its usage to stderr).
:- initialization(process_stream(user_input)).
%---------------------------------------------------- 213 knapsack-problem-0-1-1
:- use_module(library(clpfd)).

knapsack :-
        L = [
             item(map,  9,      150),
             item(compass,      13,     35),
             item(water,        153,    200),
             item(sandwich, 50,         160),
             item(glucose,      15,     60),
             item(tin,  68,     45),
             item(banana,       27,     60),
             item(apple,        39,     40),
             item(cheese,       23,     30),
             item(beer,         52,     10),
             item('suntan cream',       11,     70),
             item(camera,       32,     30),
             item('t-shirt',    24,     15),
             item(trousers, 48,         10),
             item(umbrella, 73,         40),
             item('waterproof trousers',        42,     70),
             item('waterproof overclothes',     43,     75),
             item('note-case',22,       80),
             item(sunglasses,   7,      20),
             item(towel,        18,     12),
             item(socks,        4,      50),
             item(book,         30,     10 )],
        length(L, N),
        length(R, N),
        R ins 0..1,
        maplist(arg(2), L, LW),
        maplist(arg(3), L, LV),
        scalar_product(LW, R, #=<, 400),
        scalar_product(LV, R, #=, VM),
        labeling([max(VM)], R),
        scalar_product(LW, R, #=, WM),
        %% affichage des résultats
        compute_lenword(L, 0, Len),
        sformat(A1, '~~w~~t~~~w|', [Len]),
        sformat(A2, '~~t~~w~~~w|', [4]),
        sformat(A3, '~~t~~w~~~w|', [5]),
        print_results(A1,A2,A3, L, R, WM, VM).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% to show the results in a good way
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
compute_lenword([], N, N).
compute_lenword([item(Name, _, _)|T], N, NF):-
        atom_length(Name, L),
        (   L > N -> N1 = L; N1 = N),
        compute_lenword(T, N1, NF).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
print_results(A1,A2,A3, [], [], WM, WR) :-
        sformat(W1, A1, [' ']),
        sformat(W2, A2, [WM]),
        sformat(W3, A3, [WR]),
        format('~w~w~w~n', [W1,W2,W3]).


print_results(A1,A2,A3, [_H|T], [0|TR], WM, VM) :-
        print_results(A1,A2,A3, T, TR, WM, VM).

print_results(A1, A2, A3, [item(Name, W, V)|T], [1|TR], WM, VM) :-
        sformat(W1, A1, [Name]),
        sformat(W2, A2, [W]),
        sformat(W3, A3, [V]),
        format('~w~w~w~n', [W1,W2,W3]),
        print_results(A1, A2, A3, T, TR, WM, VM).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines knapsack/0 (clpfd, on the task's items) and never calls it; the driver calls it once at load.
:- initialization(knapsack).
%---------------------------------------------------- 214 knapsack-problem-0-1-2
:- use_module(library(simplex)).

knapsack  :-
   L = [
        (map,  9,    150),
        (compass,    13,   35),
        (water,   153,  200),
        (sandwich, 50,  160),
        (glucose,    15,   60),
        (tin,  68,   45),
        (banana,  27,   60),
        (apple,   39,   40),
        (cheese,  23,   30),
        (beer,    52,   10),
        ('suntan cream',   11,   70),
        (camera,  32,   30),
        ('t-shirt',  24,   15),
        (trousers, 48,  10),
        (umbrella, 73,  40),
        ('waterproof trousers',  42,   70),
        ('waterproof overclothes',  43,   75),
        ('note-case',22,   80),
        (sunglasses,    7,    20),
        (towel,   18,   12),
        (socks,   4,    50),
        (book,    30,   10 )],
    gen_state(S0),
    length(L, N),
    numlist(1, N, LN),
    time(( create_constraint_N(LN, S0, S1),
      maplist(create_constraint_WV, LN, L, LW, LV),
      constraint(LW =< 400, S1, S2),
      maximize(LV, S2, S3)
         )),
   compute_lenword(L, 0, Len),
   sformat(A1, '~~w~~t~~~w|', [Len]),
   sformat(A2, '~~t~~w~~~w|', [4]),
   sformat(A3, '~~t~~w~~~w|', [5]),
   print_results(S3, A1,A2,A3, L, LN, 0, 0).


create_constraint_N([], S, S).

create_constraint_N([HN|TN], S1, SF) :-
   constraint(integral(x(HN)), S1, S2),
   constraint([x(HN)] =< 1, S2, S3),
   constraint([x(HN)] >= 0, S3, S4),
   create_constraint_N(TN, S4, SF).

create_constraint_WV(N, (_, W, V), W * x(N), V * x(N)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
compute_lenword([], N, N).
compute_lenword([(Name, _, _)|T], N, NF):-
   atom_length(Name, L),
   (   L > N -> N1 = L; N1 = N),
   compute_lenword(T, N1, NF).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
print_results(_S, A1, A2, A3, [], [], WM, VM) :-
   sformat(W1, A1, [' ']),
   sformat(W2, A2, [WM]),
   sformat(W3, A3, [VM]),
   format('~w~w~w~n', [W1,W2,W3]).


print_results(S, A1, A2, A3, [(Name, W, V)|T], [N|TN], W1, V1) :-
   variable_value(S, x(N), X),
   (   X = 0 -> W1 = W2, V1 = V2
   ;   sformat(S1, A1, [Name]),
       sformat(S2, A2, [W]),
       sformat(S3, A3, [V]),
       format('~w~w~w~n', [S1,S2,S3]),
       W2 is W1 + W,
       V2 is V1 + V),
   print_results(S, A1, A2, A3, T, TN, W2, V2).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines knapsack/0 (simplex, on the task's items) and never calls it; the driver calls it once at load (time/1's report goes to stderr).
:- initialization(knapsack).
%------------------------------------------------ 215 knapsack-problem-bounded-1
:- use_module(library(clpfd)).

% tuples (name, weights, value, nb pieces).
knapsack :-
   L = [(   map,          9,  150,  1),
        (   compass,    13,   35,   1),
        (   water,   153,  200,  2),
        (   sandwich,   50,   60,   2),
        (   glucose,    15,   60,   2),
        (   tin,  68,   45,   3),
        (   banana,  27,   60,   3),
        (   apple,   39,   40,   3),
        (   cheese,  23,   30,   1),
        (   beer,    52,   10,   3),
        (   'suntan cream',   11,   70,   1),
        (   camera,  32,   30,   1),
        (   'T-shirt',  24,   15,   2),
        (   trousers,   48,   10,   2),
        (   umbrella,   73,   40,   1),
        (   'waterproof trousers',  42,   70,   1),
        (   'waterproof overclothes',  43,   75,   1),
        (   'note-case',   22,   80,   1),
        (   sunglasses,    7,    20,   1),
        (   towel,   18,   12,   2),
        (   socks,   4,    50,   1),
        (   book,    30,   10,   2)],

   % Takes is the list of the numbers of each items
   % these numbers are between 0 and the 4th value of the tuples of the items
        maplist(collect, L, Ws, Vs, Takes),
        scalar_product(Ws, Takes, #=<, 400),
        scalar_product(Vs, Takes, #=, VM),

   % to have statistics on the resolution of the problem.
   time(labeling([max(VM), down], Takes)),
        scalar_product(Ws, Takes, #=, WM),

   %% displayinf of the results.
   compute_lenword(L, 0, Len),
   sformat(A1, '~~w~~t~~~w|', [Len]),
   sformat(A2, '~~t~~w~~~w|', [4]),
   sformat(A3, '~~t~~w~~~w|', [5]),
   print_results(A1,A2,A3, L, Takes, WM, VM).

collect((_, W, V, N), W, V, Take) :-
   Take in 0..N.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
compute_lenword([], N, N).
compute_lenword([(Name, _, _, _)|T], N, NF):-
   atom_length(Name, L),
   (   L > N -> N1 = L; N1 = N),
   compute_lenword(T, N1, NF).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
print_results(A1,A2,A3, [], [], WM, WR) :-
   sformat(W0, '~w ', [' ']),
   sformat(W1, A1, [' ']),
   sformat(W2, A2, [WM]),
   sformat(W3, A3, [WR]),
   format('~w~w~w~w~n', [W0,W1,W2,W3]).


print_results(A1,A2,A3, [_H|T], [0|TR], WM, VM) :-
   !,
   print_results(A1,A2,A3, T, TR, WM, VM).

print_results(A1, A2, A3, [(Name, W, V, _)|T], [N|TR], WM, VM) :-
   sformat(W0, '~w ', [N]),
   sformat(W1, A1, [Name]),
   sformat(W2, A2, [W]),
   sformat(W3, A3, [V]),
   format('~w~w~w~w~n', [W0,W1,W2,W3]),
   print_results(A1, A2, A3, T, TR, WM, VM).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines knapsack/0 (clpfd, on the task's items) and never calls it; the driver calls it once at load (time/1's report goes to stderr).
:- initialization(knapsack).
%------------------------------------------------ 216 knapsack-problem-bounded-2
:- use_module(library(simplex)).
% tuples (name, weights, value, pieces).
knapsack :-
   L = [(map,  9,    150,  1),
        (   compass,    13,   35,   1),
        (   water,   153,  200,  2),
        (   sandwich,   50,   60,   2),
        (   glucose,    15,   60,   2),
        (   tin,  68,   45,   3),
        (   banana,  27,   60,   3),
        (   apple,   39,   40,   3),
        (   cheese,  23,   30,   1),
        (   beer,    52,   10,   3),
        (   'suntan cream',   11,   70,   1),
        (   camera,  32,   30,   1),
        (   'T-shirt',  24,   15,   2),
        (   trousers,   48,   10,   2),
        (   umbrella,   73,   40,   1),
        (   'waterproof trousers',  42,   70,   1),
        (   'waterproof overclothes',  43,   75,   1),
        (   'note-case',   22,   80,   1),
        (   sunglasses,    7,    20,   1),
        (   towel,   18,   12,   2),
        (   socks,   4,    50,   1),
        (   book,    30,   10,   2)],

    gen_state(S0),
    length(L, N),
    numlist(1, N, LN),
    time(( create_constraint_N(LN, L, S0, S1),
      maplist(create_constraint_WV, LN, L, LW, LV),
      constraint(LW =< 400, S1, S2),
      maximize(LV, S2, S3)
         )),
   compute_lenword(L, 0, Len),
   sformat(A1, '~~w~~t~~~w|', [Len]),
   sformat(A2, '~~t~~w~~~w|', [4]),
   sformat(A3, '~~t~~w~~~w|', [5]),
   print_results(S3, A1,A2,A3, L, LN, 0, 0).


create_constraint_N([], [], S, S).

create_constraint_N([HN|TN], [(_, _, _, Nb) | TL], S1, SF) :-
   constraint(integral(x(HN)), S1, S2),
   constraint([x(HN)] =< Nb, S2, S3),
   constraint([x(HN)] >= 0, S3, S4),
   create_constraint_N(TN, TL, S4, SF).

create_constraint_WV(N, (_, W, V, _), W * x(N), V * x(N)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
compute_lenword([], N, N).
compute_lenword([(Name, _, _, _)|T], N, NF):-
   atom_length(Name, L),
   (   L > N -> N1 = L; N1 = N),
   compute_lenword(T, N1, NF).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
print_results(_S, A1, A2, A3, [], [], WM, VM) :-
   sformat(W0, '~w ', [' ']),
   sformat(W1, A1, [' ']),
   sformat(W2, A2, [WM]),
   sformat(W3, A3, [VM]),
   format('~w~w~w~w~n', [W0, W1,W2,W3]).


print_results(S, A1, A2, A3, [(Name, W, V,_)|T], [N|TN], W1, V1) :-
   variable_value(S, x(N), X),
   (   X = 0 -> W1 = W2, V1 = V2
   ;   sformat(S0, '~w ', [X]),
       sformat(S1, A1, [Name]),
       sformat(S2, A2, [W]),
       sformat(S3, A3, [V]),
       format('~w~w~w~w~n', [S0, S1,S2,S3]),
       W2 is W1 + X * W,
       V2 is V1 + X * V),
   print_results(S, A1, A2, A3, T, TN, W2, V2).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines knapsack/0 (simplex, on the task's items) and never calls it; the driver calls it once at load (time/1's report goes to stderr).
:- initialization(knapsack).
%----------------------------------------------- 217 knapsack-problem-continuous
:- use_module(library(simplex)).
% tuples (name, weights, value).
knapsack :-
   L = [(   beef,      3.8,   36),
        (   pork,      5.4,   43),
        (   ham,    3.6,   90),
        (   greaves, 2.4,  45),
        (   flitch,  4.0,  30),
        (   brawn,   2.5,  56),
        (   welt,      3.7,   67),
        (   salami,  3.0,  95),
        (   sausage, 5.9,  98)],

    gen_state(S0),
    length(L, N),
    numlist(1, N, LN),
    (   (  create_constraint_N(LN, L, S0, S1, [], LW, [], LV),
      constraint(LW =< 15.0, S1, S2),
      maximize(LV, S2, S3)
         )),
   compute_lenword(L, 0, Len),
   sformat(A1, '~~w~~t~~~w|', [Len]),
   sformat(A2, '~~t~~2f~~~w|', [10]),
   sformat(A3, '~~t~~2f~~~w|', [10]),
   print_results(S3, A1,A2,A3, L, LN, 0, 0).


create_constraint_N([], [], S, S, LW, LW, LV, LV).

create_constraint_N([HN|TN], [(_, W, V) | TL], S1, SF, LW, LWF, LV, LVF) :-
   constraint([x(HN)] >= 0, S1, S2),
   constraint([x(HN)] =< W, S2, S3),
   X is V/W,
   create_constraint_N(TN, TL, S3, SF, [x(HN) | LW], LWF, [X * x(HN) | LV], LVF).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
compute_lenword([], N, N).
compute_lenword([(Name, _, _)|T], N, NF):-
   atom_length(Name, L),
   (   L > N -> N1 = L; N1 = N),
   compute_lenword(T, N1, NF).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
print_results(_S, A1, A2, A3, [], [], WM, VM) :-
   sformat(W1, A1, [' ']),
   sformat(W2, A2, [WM]),
   sformat(W3, A3, [VM]),
   format('~w~w~w~n', [W1,W2,W3]).


print_results(S, A1, A2, A3, [(Name, W, V)|T], [N|TN], W1, V1) :-
   variable_value(S, x(N), X),
   (   X = 0 -> W1 = W2, V1 = V2
   ;
       sformat(S1, A1, [Name]),
       sformat(S2, A2, [X]),
       Vtemp is X * V/W,
       sformat(S3, A3, [Vtemp]),
       format('~w~w~w~n', [S1,S2,S3]),
       W2 is W1 + X,
       V2 is V1 + Vtemp ),
   print_results(S, A1, A2, A3, T, TN, W2, V2).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines knapsack/0 (simplex, on the task's items) and never calls it; the driver calls it once at load.
:- initialization(knapsack).
%------------------------------------------------ 218 knapsack-problem-unbounded
:- use_module(library(simplex)).

% tuples (name, Explantion, Value, weights, volume).
knapsack :-
   L =[( panacea, 'Incredible healing properties', 3000, 0.3,  0.025),
       ( ichor,   'Vampires blood',                1800, 0.2,  0.015),
       ( gold ,    'Shiney shiney',           2500,   2.0,  0.002)],

    gen_state(S0),
    length(L, N),
    numlist(1, N, LN),

    % to get statistics
    time((create_constraint_N(LN, L, S0, S1, [], LVa, [], LW, [], LVo),
          constraint(LW =< 25.0, S1, S2),
          constraint(LVo =< 0.25, S2, S3),
          maximize(LVa, S3, S4)
         )),

   % we display the results
   compute_lenword(L, 0, Len),
   sformat(A0, '~~w~~t~~~w|', [3]),
   sformat(A1, '~~w~~t~~~w|', [Len]),
   sformat(A2, '~~t~~w~~~w|', [10]),
   sformat(A3, '~~t~~2f~~~w|', [10]),
   sformat(A4, '~~t~~3f~~~w|', [10]),
   sformat(A33, '~~t~~w~~~w|', [10]),
   sformat(A44, '~~t~~w~~~w|', [10]),

   sformat(W0, A0, ['Nb']),
   sformat(W1, A1, ['Items']),
   sformat(W2, A2, ['Value']),
   sformat(W3, A33, ['Weigth']),
   sformat(W4, A44, ['Volume']),
   format('~w~w~w~w~w~n', [W0, W1,W2,W3,W4]),

   print_results(S4, A0, A1, A2, A3, A4, L, LN, 0, 0, 0).


create_constraint_N([], [], S, S, LVa, LVa, LW, LW, LVo, LVo).

create_constraint_N([HN|TN], [(_, _,Va, W, Vo) | TL], S1, SF, LVa, LVaF, LW, LWF, LVo, LVoF) :-
   constraint(integral(x(HN)), S1, S2),
   constraint([x(HN)] >= 0, S2, S3),
   create_constraint_N(TN, TL, S3, SF,
             [Va * x(HN) | LVa], LVaF,
             [W * x(HN) | LW], LWF,
             [Vo * x(HN) | LVo], LVoF).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
compute_lenword([], N, N).
compute_lenword([(Name, _, _, _, _)|T], N, NF):-
   atom_length(Name, L),
   (   L > N -> N1 = L; N1 = N),
   compute_lenword(T, N1, NF).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
print_results(_S, A0, A1, A2, A3, A4, [], [], VaM, WM, VoM) :-
   sformat(W0, A0, [' ']),
   sformat(W1, A1, [' ']),
   sformat(W2, A2, [VaM]),
   sformat(W3, A3, [WM]),
   sformat(W4, A4, [VoM]),
   format('~w~w~w~w~w~n', [W0, W1,W2,W3,W4]).


print_results(S, A0, A1, A2, A3, A4, [(Name, _, Va, W, Vo)|T], [N|TN], Va1, W1, Vo1) :-
   variable_value(S, x(N), X),
   (   X = 0 -> Va1 = Va2, W1 = W2, Vo1 = Vo2
   ;
       sformat(S0, A0, [X]),
       sformat(S1, A1, [Name]),
       Vatemp is X * Va,
       Wtemp is X * W,
       Votemp is X * Vo,
       sformat(S2, A2, [Vatemp]),
       sformat(S3, A3, [Wtemp]),
       sformat(S4, A4, [Votemp]),
       format('~w~w~w~w~w~n', [S0,S1,S2,S3,S4]),
       Va2 is Va1 + Vatemp,
       W2 is W1 + Wtemp,
       Vo2 is Vo1 + Votemp ),
   print_results(S, A0, A1, A2, A3, A4, T, TN, Va2, W2, Vo2).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines knapsack/0 (simplex, on the task's items) and never calls it; the driver calls it once at load (time/1's report goes to stderr).
:- initialization(knapsack).
%------------------------------------------------------------ 219 knights-tour-1
% N is the number of lines of the chessboard
knight(N) :-
  Max is N * N,
  length(L, Max),
  knight(N, 0, Max, 0, 0, L),
  display(N, 0, L).

% knight(NbCol, Coup, Max, Lig, Col, L),
% NbCol : number of columns per line
% Coup  : number of the current move
% Max   : maximum number of moves
% Lig/ Col : current position of the knight
% L : the "chessboard"

% the game is over
knight(_, Max, Max, _, _, _) :- !.

knight(NbCol, N, MaxN, Lg, Cl, L) :-
  % Is the move legal
  Lg >= 0, Cl >= 0, Lg < NbCol, Cl < NbCol,

  Pos is Lg * NbCol + Cl,
  N1 is N+1,
  % is the place free
  nth0(Pos, L, N1),

  LgM1 is Lg - 1, LgM2 is Lg - 2, LgP1 is Lg + 1, LgP2 is Lg + 2,
  ClM1 is Cl - 1, ClM2 is Cl - 2, ClP1 is Cl + 1, ClP2 is Cl + 2,
  maplist(best_move(NbCol, L),
    [(LgP1, ClM2), (LgP2, ClM1), (LgP2, ClP1),(LgP1, ClP2),
     (LgM1, ClM2), (LgM2, ClM1), (LgM2, ClP1),(LgM1, ClP2)],
    R),
  sort(R, RS),
  pairs_values(RS, Moves),

  move(NbCol, N1, MaxN, Moves, L).

move(NbCol, N1, MaxN, [(Lg, Cl) | R], L) :-
  knight(NbCol, N1, MaxN, Lg, Cl, L);
  move(NbCol, N1, MaxN,  R, L).

%% An illegal move is scored 1000
best_move(NbCol, _L, (Lg, Cl), 1000-(Lg, Cl)) :-
  (   Lg < 0 ; Cl < 0; Lg >= NbCol; Cl >= NbCol), !.

best_move(NbCol, L, (Lg, Cl), 1000-(Lg, Cl)) :-
  Pos is Lg*NbCol+Cl,
  nth0(Pos, L, V),
  \+var(V), !.

%% a legal move is scored with the number of moves a knight can make
best_move(NbCol, L, (Lg, Cl), R-(Lg, Cl)) :-
  LgM1 is Lg - 1, LgM2 is Lg - 2, LgP1 is Lg + 1, LgP2 is Lg + 2,
  ClM1 is Cl - 1, ClM2 is Cl - 2, ClP1 is Cl + 1, ClP2 is Cl + 2,
  include(possible_move(NbCol, L),
    [(LgP1, ClM2), (LgP2, ClM1), (LgP2, ClP1),(LgP1, ClP2),
     (LgM1, ClM2), (LgM2, ClM1), (LgM2, ClP1),(LgM1, ClP2)],
    Res),
  length(Res, Len),
  (   Len = 0 -> R = 1000; R = Len).

% test if a place is enabled
possible_move(NbCol, L, (Lg, Cl)) :-
  % move must be legal
  Lg >= 0, Cl >= 0, Lg < NbCol, Cl < NbCol,
  Pos is Lg * NbCol + Cl,
  % place must be free
  nth0(Pos, L, V),
  var(V).


display(_, _, []).
display(N, N, L) :-
  nl,
  display(N, 0, L).

display(N, M, [H | T]) :-
  writef('%3r', [H]),
  M1 is M + 1,
  display(N, M1, T).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines knight/1 and never calls it; the driver prints a tour of the task's 8x8 board.
:- initialization((knight(8), nl)).
%------------------------------------------------------------ 220 knights-tour-2
:- initialization(main).


board_size(8).
in_board(X*Y) :- board_size(N), between(1,N,Y), between(1,N,X).


% express jump-graph in dynamic "move"-rules
make_graph :-
    findall(_, (in_board(P), assert_moves(P)), _).

    % where
    assert_moves(P) :-
        findall(_, (can_move(P,Q), asserta(move(P,Q))), _).

    can_move(X*Y,Q) :-
        ( one(X,X1), two(Y,Y1) ; two(X,X1), one(Y,Y1) )
      , Q = X1*Y1, in_board(Q)
      . % where
        one(M,N) :- succ(M,N)  ; succ(N,M).
        two(M,N) :- N is M + 2 ; N is M - 2.



hamiltonian(P,Pn) :-
    board_size(N), Size is N * N
  , hamiltonian(P,Size,[],Ps), enumerate(Size,Ps,Pn)
  .
    % where
    enumerate(_, []    , []      ).
    enumerate(N, [P|Ps], [N:P|Pn]) :- succ(M,N), enumerate(M,Ps,Pn).


hamiltonian(P,N,Ps,Res) :-
    N =:= 1 -> Res = [P|Ps]
  ; warnsdorff(Ps,P,Q), succ(M,N)
  , hamiltonian(Q,M,[P|Ps],Res)
  .
    % where
    warnsdorff(Ps,P,Q) :-
        moves(Ps,P,Qs), maplist(next_moves(Ps), Qs, Xs)
      , keysort(Xs,Ys), member(_-Q,Ys)
      .
    next_moves(Ps,Q,L-Q) :- moves(Ps,Q,Rs), length(Rs,L).

    moves(Ps,P,Qs) :-
        findall(Q, (move(P,Q), \+ member(Q,Ps)), Qs).



show_path(Pn)  :- findall(_, (in_board(P), show_cell(Pn,P)), _).
    % where
    show_cell(Pn,X*Y) :-
        member(N:X*Y,Pn), format('%3.0d',[N]), board_size(X), nl.


main :- make_graph, hamiltonian(5*3,Pn), show_path(Pn), halt.
%---------------------------------------------------------------- 221 koch-curve
main:-
    write_koch_snowflake('koch_snowflake.svg').

write_koch_snowflake(File):-
    open(File, write, Stream),
    koch_snowflake(Stream, 600, 5),
    close(Stream).

koch_snowflake(Stream, Size, N):-
    format(Stream, "<svg xmlns='http://www.w3.org/2000/svg' width='~d' height='~d'>\n",
           [Size, Size]),
    write(Stream, "<rect width='100%' height='100%' fill='black'/>\n"),
    write(Stream, "<path stroke-width='1' stroke='white' fill='none' d='"),
    Sqrt3_2 = 0.86602540378444,
    Length is Size * Sqrt3_2 * 0.95,
    X0 is (Size - Length)/2,
    Y0 is Size/2 - Length * Sqrt3_2/3,
    X1 is X0 + Length/2,
    Y1 is Y0 + Length * Sqrt3_2,
    X2 is X0 + Length,
    format(Stream, 'M ~g,~g ', [X0, Y0]),
    koch_curve(Stream, X0, Y0, X1, Y1, N),
    koch_curve(Stream, X1, Y1, X2, Y0, N),
    koch_curve(Stream, X2, Y0, X0, Y0, N),
    write(Stream, "z'/>\n</svg>\n").

koch_curve(Stream, _, _, X1, Y1, 0):-
    !,
    format(Stream, 'L ~g,~g\n', [X1, Y1]).
koch_curve(Stream, X0, Y0, X1, Y1, N):-
    N > 0,
    Sqrt3_2 = 0.86602540378444,
    N1 is N - 1,
    Dx is X1 - X0,
    Dy is Y1 - Y0,
    X2 is X0 + Dx/3,
    Y2 is Y0 + Dy/3,
    X3 is X0 + Dx/2 - Dy * Sqrt3_2/3,
    Y3 is Y0 + Dy/2 + Dx * Sqrt3_2/3,
    X4 is X0 + 2 * Dx/3,
    Y4 is Y0 + 2 * Dy/3,
    koch_curve(Stream, X0, Y0, X2, Y2, N1),
    koch_curve(Stream, X2, Y2, X3, Y3, N1),
    koch_curve(Stream, X3, Y3, X4, Y4, N1),
    koch_curve(Stream, X4, Y4, X1, Y1, N1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): main/0 writes koch_snowflake.svg (depth 5, 3072 path lines) to a file and prints nothing; the driver writes the same SVG at depth 2 to standard output.
:- initialization(koch_snowflake(user_output, 600, 2)).
%--------------------------------------------------------------- 222 lah-numbers
% Reference: https://en.wikipedia.org/wiki/Lah_number#Identities_and_relations

:- dynamic unsigned_lah_number_cache/3.

unsigned_lah_number(N, N, 1):-!.
unsigned_lah_number(_, 0, 0):-!.
unsigned_lah_number(N, K, 0):-
	K > N,
	!.
unsigned_lah_number(N, K, L):-
	unsigned_lah_number_cache(N, K, L),
	!.
unsigned_lah_number(N, K, L):-
	N1 is N - 1,
	K1 is K - 1,
	unsigned_lah_number(N1, K, L1),
	unsigned_lah_number(N1, K1, L2),
	!,
	L is (N1 + K) * L1 + L2,
	assertz(unsigned_lah_number_cache(N, K, L)).

print_unsigned_lah_numbers(N):-
	between(1, N, K),
	unsigned_lah_number(N, K, L),
	writef('%11r', [L]),
	fail.
print_unsigned_lah_numbers(_):-
	nl.

print_unsigned_lah_numbers:-
	between(1, 12, N),
	print_unsigned_lah_numbers(N),
	fail.
print_unsigned_lah_numbers.

max_unsigned_lah_number(N, Max):-
    aggregate_all(max(L), (between(1, N, K), unsigned_lah_number(N, K, L)), Max).

main:-
	writeln('Unsigned Lah numbers up to L(12,12):'),
	print_unsigned_lah_numbers,
	writeln('Maximum value of L(n,k) where n = 100:'),
	max_unsigned_lah_number(100, M),
	writeln(M).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%-------------------------------------- 223 largest-int-from-concatenated-ints-1
largest_int_v1(In, Out) :-
	maplist(name, In, LC),
	aggregate(max(V), get_int(LC, V), Out).


get_int(LC, V) :-
	permutation(LC, P),
	append(P, LV),
	name(V, LV).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines largest_int_v1/2 and never calls it; the driver runs the task's two lists.
:- initialization(forall(member(L, [[1, 34, 3, 98, 9, 76, 45, 4], [54, 546, 548, 60]]), (largest_int_v1(L, N), format("~w~n", [N])))).
%-------------------------------------- 224 largest-int-from-concatenated-ints-2
largest_int_v2(In, Out) :-
	maplist(name, In, LC),
	predsort(my_sort,LC, LCS),
	append(LCS, LC1),
	name(Out, LC1).


my_sort(R, L1, L2) :-
	append(L1, L2, V1), name(I1, V1),
	append(L2, L1, V2), name(I2, V2),
	(   I1 < I2, R = >; I1 = I2, R = '='; R = <).



% particular case  95 958
my_sort(>, [H1], [H1,  H2 | _]) :-
	H1 > H2.

my_sort(<, [H1], [H1, H2 | _]) :-
	H1 < H2.

my_sort(R, [H1], [H1, H1 | T]) :-
	my_sort(R, [H1], [H1 | T]).



% particular case  958 95
my_sort(>, [H1,  H2 | _], [H1]) :-
	H1 > H2.

my_sort(<, [H1,  H2 | _], [H1]) :-
	H1 < H2.

my_sort(R, [H1,  H1 | T], [H1]) :-
	my_sort(R, [H1 | T], [H1]) .

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines largest_int_v2/2 and never calls it; the driver runs the task's two lists.
:- initialization(forall(member(L, [[1, 34, 3, 98, 9, 76, 45, 4], [54, 546, 548, 60]]), (largest_int_v2(L, N), format("~w~n", [N])))).
%------------------------------------ 225 largest-number-divisible-by-its-digits
%  Find the largest integer divisible by all it's digits, with no digit repeated.
%  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%  We go for a generic algorithm here.  Test for divisibility is done by
%  calculating the least common multiplier for all digits, and testing
%  whether a candidate can be divided by the LCM without remainder.
%
%  Instead of iterating numbers and checking whether the number has
%  repeating digits, it is more efficient to generate permutations of
%  digits and then convert to a number.  Doing it this way reduces search
%  space greatly.
%
% Notes:
%  For decimal numbers we could improve times by testing only numbers
%  of length 7 (since 5x2=10 and 0 is not one of our digits, and 9x2=18
%  which needs 2 digits to store), but that sort of logic does not
%  hold for hexadecimal numbers.
%  We could also explicitly eliminate odd numbers, but the double validity
%  check actually slows us down very slightly instead of speeding us up.

:- dynamic
   trial/1.       % temporarily store digit combinations here.

gcd(X, X, X).  % Calculate greatest common divisor
gcd(M, N, X) :- N > M, B is N-M, gcd(M,B,X).
gcd(M, N, X) :- N < M, A is M-N, gcd(A,N,X).

lcm(A, B, LCM) :- gcd(A,B,GCD), LCM is A * B / GCD.

lcm([H], H).   % Calculate least common multiplier
lcm([A|T], LCM) :- lcm(T, B), !, lcm(A,B,LCM).

mkint(_, Val, [], Val).     % Result = Val where list is empty
mkint(Radix, Val, [H|T], Int) :-  % (((I0*10+I1)*10+I2)*10+In)...
   V0 is Val*Radix+H, !, mkint(Radix, V0, T, Int).

% Turn a list of digits into an integer number using Radix.
mkint(Radix, [H|T], Int) :- mkint(Radix, H, T, Int).

domain(0, []).       % For example, domain(5) is [1,2,3,4,5]
domain(N, [N|Digits]) :-
   succ(N0, N), !, domain(N0, Digits).

trial(0, Digits, Digits).   % generates a combination of digits to test
trial(N, D, Digits) :-      % remove N digits, and find remaining combinations
    append(L0,[_|L1],D), succ(N0, N), trial(N0, L1, Dx),
    append(L0, Dx, Digits). % trial(1, [3,2,1], D) -> D=[2,1]; D=[3,1]; D=[3,2].

make_trials(_,_) :- retractall(trial(_)), fail.
make_trials(N,Domain) :- trial(N, Domain, Digits), asserta(trial(Digits)), fail.
make_trials(_,_).           % trials are stored highest values to lowest

combinations(Radix, NDigits) :-  % Precalculate all possible digit combinations
    succ(R0, Radix), domain(R0, Domain), Nskip is R0 - NDigits,
    make_trials(Nskip, Domain).

test(Radix, Digits, LCM, Number) :-  % Make an integer and check for divisibility
   mkint(Radix, Digits, Number), 0 is Number mod LCM.

bignum(Radix, Number) :-
   succ(R0, Radix), between(1,R0,N), NDigits is Radix - N,    % loop decreasing length
   combinations(Radix, NDigits),            % precalc digit combos with length=NDigits
   trial(Digits), lcm(Digits, LCM),         % for a combination, calculate LCM
   permutation(Digits, Trial),              % generate a permutation
   test(Radix, Trial, LCM, Number).         % test for divisibility

largest_decimal(N) :- bignum(10, N), !.
largest_hex(N, H) :- bignum(16, N), !, sformat(H, '~16r', [N]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines largest_decimal/1 and largest_hex/2 and never calls them; the driver prints the decimal answer (the hexadecimal extra credit takes 16 s under swipl, so it is left out).
:- initialization((largest_decimal(N), format("~w~n", [N]))).
%------------------------------------------------------ 226 largest-prime-factor
wheel2357(L) :-
   W = [2,  4,  2,  4,  6,  2,  6,  4,
        2,  4,  6,  6,  2,  6,  4,  2,
        6,  4,  6,  8,  4,  2,  4,  2,
        4,  8,  6,  4,  6,  2,  4,  6,
        2,  6,  6,  4,  2,  4,  6,  2,
        6,  4,  2,  4,  2, 10,  2, 10 | W],
   L = [1, 2, 2, 4 | W].

gpf(N, P) :-  % greatest prime factor
   wheel2357(W),
   gpf(N, 2, W, P).

gpf(N, D, _, N) :- D*D > N, !.
gpf(N, D, W, X) :-
   N mod D =:= 0, !,
   N2 is N/D,
   gpf(N2, D, W, X).
gpf(N, D, [S|Ss], X) :-
   plus(D, S, D2),
   gpf(N, D2, Ss, X).

main :-
    gpf(600_851_475_143, Euler003),
    format("The largest prime factor of 600,851,475,143 is ~p~n", [Euler003]),
    halt.

?- main.
%---------------------------------------------------------- 227 last-list-item-1
%!  last_list_item(+List, -Last) is det.
last_list_item(List, Last) :-
    msort(List, Sorted),
    ignore(( debugging(last_list_item), writeln('List' = Sorted) )),
    last_list_item_(Sorted, Last).

last_list_item_([Last], Last) :- !.
last_list_item_([X, Y | List0], Last) :-
    Z is X + Y,
    msort([Z | List0], List),
    ignore(( debugging(last_list_item), writeln('List' = List) )),
    last_list_item_(List, Last).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines last_list_item/2 and never calls it; the driver turns on its debug topic to show the steps and runs the task's list.
:- initialization((debug(last_list_item), last_list_item([6, 81, 243, 14, 25, 49, 123, 69, 11], Last), format("~w~n", [Last]))).
%---------------------------------------------------------- 228 last-list-item-3
:- use_module(library(heaps)).
last_list_item_heap(List, Last) :-
    pairs_keys(Pairs, List),
    list_to_heap(Pairs, Heap),
    last_list_item_heap_(Heap, Last).

last_list_item_heap_(Heap0, Last) :-
    get_from_heap(Heap0, Value0, _, Heap1),
    (   get_from_heap(Heap1, Value1, _, Heap2)
    ->  Value is Value0 + Value1,
        ignore(( debugging(last_list_item_heap), writeln(Value is Value0 + Value1) )),
        add_to_heap(Heap2, Value, _, Heap),
        last_list_item_heap_(Heap, Last)
    ;   Value0 = Last
    ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines last_list_item_heap/2 and never calls it; the driver turns on its debug topic to show the steps and runs the task's list.
:- initialization((debug(last_list_item_heap), last_list_item_heap([6, 81, 243, 14, 25, 49, 123, 69, 11], Last), format("~w~n", [Last]))).
%-------------------------------------------------- 229 law-of-cosines---triples
find_solutions(Limit, Solutions):-
    find_solutions(Limit, Solutions, Limit, []).

find_solutions(_, S, 0, S):-
    !.
find_solutions(Limit, Solutions, A, S):-
    find_solutions1(Limit, A, A, S1, S),
    A_next is A - 1,
    find_solutions(Limit, Solutions, A_next, S1).

find_solutions1(Limit, _, B, Triples, Triples):-
    B > Limit,
    !.
find_solutions1(Limit, A, B, [Triple|Triples], T):-
    is_solution(Limit, A, B, Triple),
    !,
    B_next is B + 1,
    find_solutions1(Limit, A, B_next, Triples, T).
find_solutions1(Limit, A, B, Triples, T):-
    B_next is B + 1,
    find_solutions1(Limit, A, B_next, Triples, T).

is_solution(Limit, A, B, t(Angle, A, B, C)):-
    X is A * A + B * B,
    Y is A * B,
    (
        Angle = 90, C is round(sqrt(X)), X is C * C
        ;
        Angle = 120, C2 is X + Y, C is round(sqrt(C2)), C2 is C * C
        ;
        Angle = 60, C2 is X - Y, C is round(sqrt(C2)), C2 is C * C
    ),
    C =< Limit,
    !.

write_triples(Angle, Solutions):-
    find_triples(Angle, Solutions, List, 0, Count),
    writef('There are %w solutions for gamma = %w:\n', [Count, Angle]),
    write_triples1(List),
    nl.

find_triples(_, [], [], Count, Count):-
    !.
find_triples(Angle, [Triple|Triples], [Triple|Result], C, Count):-
    Triple = t(Angle, _, _, _),
    !,
    C1 is C + 1,
    find_triples(Angle, Triples, Result, C1, Count).
find_triples(Angle, [_|Triples], Result, C, Count):-
    find_triples(Angle, Triples, Result, C, Count).

write_triples1([]):-!.
write_triples1([t(_, A, B, C)]):-
    writef('(%w,%w,%w)\n', [A, B, C]),
    !.
write_triples1([t(_, A, B, C)|Triples]):-
    writef('(%w,%w,%w) ', [A, B, C]),
    write_triples1(Triples).

main:-
    find_solutions(13, Solutions),
    write_triples(60, Solutions),
    write_triples(90, Solutions),
    write_triples(120, Solutions).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%--------------------------------------------------------------- 230 leap-year-1
leap_year(L) :-
	partition(is_leap_year, L, LIn, LOut),
	format('leap years : ~w~n', [LIn]),
	format('not leap years : ~w~n', [LOut]).

is_leap_year(Year) :-
	R4 is Year mod 4,
	R100 is Year mod 100,
	R400 is Year mod 400,
	(   (R4 = 0, R100 \= 0); R400 = 0).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines leap_year/1 and never calls it; the driver classifies seven fixed years.
:- initialization(leap_year([1900, 1994, 1996, 1997, 2000, 2024, 2100])).
%----------------------------------------------------- 231 least-common-multiple
lcm(X, Y, Z) :-
	Z is abs(X * Y) / gcd(X,Y).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines lcm/3 and never calls it; the driver prints the task's lcm(12, 18) and two more.
:- initialization(forall(member(A-B, [12-18, 4-6, -5-3]), (lcm(A, B, Z), format("lcm(~w, ~w) = ~w~n", [A, B, Z])))).
%----------------------------------------------------------- 232 left-factorials
leftfact(N):-
    leftfact(N, 0, 0, 1).

leftfact(N, N, _, _):-
    !.
leftfact(N, M, L, F):-
    ((M =< 10 ; (M =< 110, 0 is M mod 10)) ->
        writef("!%w = %w\n", [M, L])
        ;
        (0 is M mod 1000 ->
            number_string(L, S),
            string_length(S, Len),
            writef("length of !%w is %w\n", [M, Len])
            ;
            true)),
    L1 is L + F,
    M1 is M + 1,
    F1 is F * M1,
    leftfact(N, M1, L1, F1).

main:-
    leftfact(10001).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%---------------------------------------------------------- 233 letter-frequency
frequency(File) :-
  read_file_to_codes(File, Code, []),

  % we only keep alphabetic codes
  include(my_code_type, Code, LstCharCode),

  % we translate char_codes into uppercase atoms.
  maplist(my_upcase, LstCharCode, LstChar),

  % sort and pack the list
  msort(LstChar, SortLstChar),
  packList(SortLstChar, Freq),
  maplist(my_write, Freq).


my_write([Num, Atom]) :-
  swritef(A, '%3r', [Num]),
  writef('Number of %w :%w\n', [Atom, A]).


my_code_type(Code) :-
  code_type(Code, alpha).

my_upcase(CharCode, UpChar) :-
  char_code(Atom, CharCode),
  upcase_atom(Atom, UpChar).

:- use_module(library(clpfd)).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ?- packList([a,a,a,b,c,c,c,d,d,e], L).
%  L = [[3,a],[1,b],[3,c],[2,d],[1,e]] .
%
% ?- packList(R,  [[3,a],[1,b],[3,c],[2,d],[1,e]]).
% R = [a,a,a,b,c,c,c,d,d,e] .
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
packList([],[]).

packList([X],[[1,X]]) :-
  !.

packList([X|Rest],[XRun|Packed]):-
  run(X,Rest, XRun,RRest),
  packList(RRest,Packed).

run(Var,[],[1,Var],[]).

run(Var,[Var|LRest],[N1, Var],RRest):-
  N #> 0,
  N1 #= N + 1,
  run(Var,LRest,[N, Var],RRest).

run(Var,[Other|RRest], [1,Var],[Other|RRest]):-
  dif(Var,Other).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines frequency/1 over a named file and never calls it; the driver names standard input, which carries a fixed text.
:- initialization(frequency('/dev/stdin')).
%------------------------------------------------------ 234 levenshtein-distance
levenshtein(S, T, R) :-
  length(S, M),
  M1 is M+1,
  length(T, N),
  N1 is N+1,
  length(Lev, N1),
  maplist(init(M1), Lev),
  numlist(0, N, LN),
  maplist(init_n, LN, Lev),
  nth0(0, Lev, Lev0),
  numlist(0, M, Lev0),

  % compute_levenshtein distance
  numlist(1, N, LN1),
  maplist(work_on_T(Lev, S), LN1, T),
  last(Lev, LevLast),
  last(LevLast, R).


work_on_T(Lev, S, J, TJ) :-
  length(S, M),
  numlist(1, M, LM),
  maplist(work_on_S(Lev, J, TJ), LM, S).

work_on_S(Lev, J, C, I, C) :-
  % same char
  !,
  I1 is I-1, J1 is J-1,
  nth0(J1, Lev, LevJ1),
  nth0(I1, LevJ1, V),
  nth0(J, Lev, LevJ),
  nth0(I, LevJ, V).


work_on_S(Lev, J, _C1, I, _C2) :-
  I1 is I-1, J1 is J - 1,
  % compute the value for deletion
  nth0(J, Lev, LevJ),
  nth0(I1, LevJ, VD0),
  VD is VD0 + 1,

  % compute the value for insertion
  nth0(J1, Lev, LevJ1),
  nth0(I, LevJ1, VI0),
  VI is VI0 + 1,

  % compute the value for substitution
  nth0(I1, LevJ1, VS0),
  VS is VS0 + 1,

  % set the minimum value to cell(I,J)
  sort([VD, VI, VS], [V|_]),

  nth0(I, LevJ, V).


init(Len, C) :-
  length(C, Len).

init_n(N, L) :-
  nth0(0, L, N).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines levenshtein/3 and never calls it; the driver runs the task's two pairs.
:- initialization(forall(member(A-B, [kitten-sitting, rosettacode-raisethysword]), (atom_codes(A, S), atom_codes(B, T), levenshtein(S, T, R), format("~w ~w: ~w~n", [A, B, R])))).
%------------------------------------------------------- 235 list-comprehensions
% We need operators
:- op(700, xfx, <-).
:- op(450, xfx, ..).
:- op(1100, yfx, &).

% use for explicit list usage
my_bind(V, [H|_]) :- V = H.
my_bind(V, [_|T]) :- my_bind(V, T).

% we need to define the intervals of numbers
Vs <- M..N :-
        integer(M),
	integer(N),
	M =< N,
	between(M, N, Vs).

% for explicit list comprehension like Vs <- [1,2,3]
Vs <- Xs :-
	is_list(Xs),
	my_bind(Vs, Xs).

% finally we define list comprehension
% prototype is Vs <- {Var, Dec, Pred} where
% Var is the list of variables to output
% Dec is the list of intervals of the variables
% Pred is the list of predicates
Vs <- {Var & Dec & Pred} :-
	findall(Var,  maplist(call, [Dec, Pred]), Vs).

% for list comprehension without Pred
Vs <- {Var & Dec} :-
	findall(Var, maplist(call, [Dec]), Vs).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the <- comprehension and never uses it; the driver builds the task's Pythagorean triples up to 20.
:- initialization((L <- {(X,Y,Z) & X <- 1..20, Y <- X..20, Z <- Y..20 & X*X+Y*Y =:= Z*Z}, format("~w~n", [L]))).
%------------------------------------------------------------- 236 long-primes-1
% See https://en.wikipedia.org/wiki/Full_reptend_prime
long_prime(Prime):-
    is_prime(Prime),
    M is 10 mod Prime,
    M > 1,
    primitive_root(10, Prime).

% See https://en.wikipedia.org/wiki/Primitive_root_modulo_n#Finding_primitive_roots
primitive_root(Base, Prime):-
    Phi is Prime - 1,
    primitive_root(Phi, 2, Base, Prime).

primitive_root(1, _, _, _):-!.
primitive_root(N, P, Base, Prime):-
    is_prime(P),
    0 is N mod P,
    !,
    X is (Prime - 1) // P,
    R is powm(Base, X, Prime),
    R \= 1,
    divide_out(N, P, M),
    Q is P + 1,
    primitive_root(M, Q, Base, Prime).
primitive_root(N, P, Base, Prime):-
    Q is P + 1,
    Q * Q < Prime,
    !,
    primitive_root(N, Q, Base, Prime).
primitive_root(N, _, Base, Prime):-
    X is (Prime - 1) // N,
    R is powm(Base, X, Prime),
    R \= 1.

divide_out(N, P, M):-
    divmod(N, P, Q, 0),
    !,
    divide_out(Q, P, M).
divide_out(N, _, N).

print_long_primes([], _):-
    !,
    nl.
print_long_primes([Prime|_], Limit):-
    Prime > Limit,
    !,
    nl.
print_long_primes([Prime|Primes], Limit):-
    writef('%w ', [Prime]),
    print_long_primes(Primes, Limit).

count_long_primes(_, L, Limit, _):-
    L > Limit,
    !.
count_long_primes([], Limit, _, Count):-
    writef('Number of long primes up to %w: %w\n', [Limit, Count]),
    !.
count_long_primes([Prime|Primes], L, Limit, Count):-
    Prime > L,
    !,
    writef('Number of long primes up to %w: %w\n', [L, Count]),
    Count1 is Count + 1,
    L1 is L * 2,
    count_long_primes(Primes, L1, Limit, Count1).
count_long_primes([_|Primes], L, Limit, Count):-
    Count1 is Count + 1,
    count_long_primes(Primes, L, Limit, Count1).

main(Limit):-
    find_prime_numbers(Limit),
    findall(Prime, long_prime(Prime), Primes),
    writef('Long primes up to 500:\n'),
    print_long_primes(Primes, 500),
    count_long_primes(Primes, 500, Limit, 0).

main:-
    main(256000).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block's main/0 is the entry and calls find_prime_numbers/1 and is_prime/1, which long-primes-2 (module prime_numbers) defines, so the driver includes that block (its module/2 directive errs inside an include and its clauses join user) and calls main/0, the long primes to 500 and their counts to 256000.
:- include('long-primes-2.pl').
:- initialization(main).
%------------------------------------------------------------- 237 long-primes-3
isPrime(A):-
  	A1 is ceil(sqrt(A)),
  	between(2, A1, N),
  	0 =:= A mod N,!,
  	false.
isPrime(_).

divisors(N, Dlist):-
	N1 is floor(sqrt(N)),
	numlist(1, N1, Ds0),
	include([D]>>(N mod D =:= 0), Ds0, Ds1),
	reverse(Ds1, [Dh|Dt]),
	( Dh * Dh < N
	-> Ds1a = [Dh|Dt]
	;  Ds1a = Dt
	),
	maplist([X,Y]>>(Y is N div X), Ds1a, Ds2),
	append(Ds1, Ds2, Dlist).

longPrime(P):-
	divisors(P - 1, Dlist),
	longPrime(P, Dlist).

longPrime(_,[]):- false.
longPrime(P, [D|Dtail]):-
	powm(10, D, P) =\= 1,!,
	longPrime(P, Dtail).
longPrime(P, [D|_]):-!,
	D =:= P - 1.

isLongPrime(N):-
	isPrime(N),
	longPrime(N).

longPrimes(N, LongPrimes):-
	numlist(7, N, List),
	include(isLongPrime, List, LongPrimes).

run([]):-!.
run([Limit|Tail]):-
	statistics(runtime,[Start|_]),
	longPrimes(Limit, LongPrimes),
	length(LongPrimes, Num),
	statistics(runtime,[Stop|_]),
	Runtime is Stop - Start,
	writef('there are%5r long primes up to%6r [time (ms)%5r]\n',[Num, Limit, Runtime]),
	run(Tail).

do:-	longPrimes(500, LongPrimes),
	writeln('long primes up to 500:'),
	writeln(LongPrimes),
	numlist(0, 7, List),
	maplist([X, Y]>>(Y is 500 * 2**X), List, LimitList),
	run(LimitList).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): do/0 also prints each limit's runtime, which no ref can hold; the driver calls longPrimes/2 and prints do/0's lines without the time, for limits 500..16000 (the task's 64000 takes 8 s under swipl).
:- initialization((longPrimes(500, LongPrimes), writeln('long primes up to 500:'), writeln(LongPrimes), forall(between(0, 5, X), (Limit is 500 * 2**X, longPrimes(Limit, L), length(L, Num), writef('there are%5r long primes up to%6r\n', [Num, Limit]))))).
%----------------------------------------------------------------- 238 long-year
% See https://en.wikipedia.org/wiki/ISO_week_date#Weeks_per_year

p(Year, P):-
    P is (Year + (Year//4) - (Year//100) + (Year//400)) mod 7.

long_year(Year):-
    p(Year, 4),
    !.
long_year(Year):-
    Year_before is Year - 1,
    p(Year_before, 3).

print_long_years(From, To):-
    writef("Long years between %w and %w:\n", [From, To]),
    print_long_years(From, To, 0),
    nl.

print_long_years(From, To, _):-
    From > To,
    !.
print_long_years(From, To, Count):-
    long_year(From),
    !,
    (Count > 0 ->
        (0 is Count mod 10 -> nl ; write(' '))
        ;
        true
    ),
    write(From),
    Count1 is Count + 1,
    Next is From + 1,
    print_long_years(Next, To, Count1).
print_long_years(From, To, Count):-
    Next is From + 1,
    print_long_years(Next, To, Count).

main:-
     print_long_years(1800, 2100).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%----------------------------------------------------- 239 longest-common-prefix
common_prefix(String1, String2, Prefix):-
    string_chars(String1, Chars1),
    string_chars(String2, Chars2),
    common_prefix1(Chars1, Chars2, Chars),
    string_chars(Prefix, Chars).

common_prefix1([], _, []):-!.
common_prefix1(_, [], []):-!.
common_prefix1([C1|_], [C2|_], []):-
    C1 \= C2,
    !.
common_prefix1([C|Chars1], [C|Chars2], [C|Chars]):-
    common_prefix1(Chars1, Chars2, Chars).

lcp([], ""):-!.
lcp([String], String):-!.
lcp(List, Prefix):-
    min_member(Min, List),
    max_member(Max, List),
    common_prefix(Min, Max, Prefix).

test(Strings):-
    lcp(Strings, Prefix),
    writef('lcp(%t) = %t\n', [Strings, Prefix]).

main:-
    test(["interspecies", "interstellar", "interstate"]),
    test(["throne", "throne"]),
    test(["throne", "dungeon"]),
    test(["throne", "", "throne"]),
    test(["cheese"]),
    test([""]),
    test([]),
    test(["prefix", "suffix"]),
    test(["foo", "foobar"]).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%---------------------------------------------- 240 longest-common-subsequence-1
% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
test :-
    time(lcs("thisisatest", "testing123testing", Lcs)),
    writef('%s',[Lcs]).

	
lcs([ H|L1],[ H|L2],[H|Lcs]) :- !,
    lcs(L1,L2,Lcs).

lcs([H1|L1],[H2|L2],Lcs):-
    lcs(    L1 ,[H2|L2],Lcs1),
    lcs([H1|L1],    L2 ,Lcs2),
    longest(Lcs1,Lcs2,Lcs),!.

lcs(_,_,[]).


longest(L1,L2,Longest) :-
    length(L1,Length1),
    length(L2,Length2),
    ((Length1 > Length2) -> Longest = L1; Longest = L2).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines test/0 and never calls it; written for code lists, so the flag is set at its head; the driver calls it once and ends the line (time/1's report goes to stderr).
:- initialization((test, nl)).
%---------------------------------------------- 241 longest-common-subsequence-2
% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
%declare that we will add lcs_db facts during runtime
:- dynamic lcs_db/3.

test :-
    retractall(lcs_db(_,_,_)), %clear the database of known results
    time(lcs("thisisatest", "testing123testing", Lcs)),
    writef('%s',[Lcs]).


% check if the result is known
lcs(L1,L2,Lcs) :-
    lcs_db(L1,L2,Lcs),!.

lcs([ H|L1],[ H|L2],[H|Lcs]) :- !,
    lcs(L1,L2,Lcs).

lcs([H1|L1],[H2|L2],Lcs) :-
    lcs(    L1 ,[H2|L2],Lcs1),
    lcs([H1|L1],    L2 ,Lcs2),
    longest(Lcs1,Lcs2,Lcs),!,
    assert(lcs_db([H1|L1],[H2|L2],Lcs)).

lcs(_,_,[]).


longest(L1,L2,Longest) :-
    length(L1,Length1),
    length(L2,Length2),
    ((Length1 > Length2) -> Longest = L1; Longest = L2).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines test/0 and never calls it; written for code lists, so the flag is set at its head; the driver calls it once and ends the line (time/1's report goes to stderr).
:- initialization((test, nl)).
%-------------------------------------------------- 242 longest-common-substring
common_sublist(A, B, M) :-
	append(_, Ma, A),
	append(M, _, Ma),
	append(_, Mb, B),
	append(M, _, Mb).	

longest_list([], L, _, L).
longest_list([L|Ls], LongestList, LongestLength, Result) :-	
	length(L, Len),
	Len >= LongestLength -> longest_list(Ls, L, Len, Result)
	; longest_list(Ls, LongestList, LongestLength, Result).
	
longest_substring(A, B, Result) :-
	string_chars(A, AChars),
	string_chars(B, BChars),
	findall(SubString, (
		dif(SubString, []), common_sublist(AChars, BChars, SubString)
	), AllSubstrings),
	longest_list(AllSubstrings, [], 0, LongestSubString),
	string_chars(Result, LongestSubString).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines longest_substring/3 and never calls it; the driver prints the longest common substring of the task's two strings thisisatest and testing123testing.
:- initialization(forall(member(A-B, ["thisisatest"-"testing123testing"]), (longest_substring(A, B, S), format("~w~n", [S])))).
%-------------------------------------------- 243 longest-increasing-subsequence
lis(In, Out) :-
	% we ask Prolog to find the longest sequence
	aggregate(max(N,Is), (one_is(In, [], Is), length(Is, N)), max(_, Res)),
	reverse(Res, Out).


% we describe the way to find increasing subsequence
one_is([], Current, Current).


one_is([H | T], Current, Final) :-
	(   Current = [], one_is(T, [H], Final));
	(   Current = [H1 | _], H1 < H,   one_is(T, [H | Current], Final));
	one_is(T, Current, Final).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines lis/2 and never calls it; the driver prints a longest increasing subsequence of each of the task's two lists.
:- initialization(forall(member(L, [[3,2,6,4,5,1], [0,8,4,12,2,10,6,14,1,9,5,13,3,11,7,15]]), (lis(L, S), format("~w: ~w~n", [L, S])))).
%----------------------------------------------------- 244 look-and-say-sequence
look_and_say(L) :-
  maplist(write, L), nl,
  encode(L, L1),
  look_and_say(L1).

% This code is almost identical to the code of "run-length-encoding"
encode(In, Out) :-
  packList(In, R1),
  append(R1,Out).


% use of library clpfd allows packList(?In, ?Out) to works
% in both ways In --> Out and In <-- Out.

:- use_module(library(clpfd)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% ?- packList([a,a,a,b,c,c,c,d,d,e], L).
%  L = [[3,a],[1,b],[3,c],[2,d],[1,e]] .
% ?- packList(R,  [[3,a],[1,b],[3,c],[2,d],[1,e]]).
% R = [a,a,a,b,c,c,c,d,d,e] .
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
packList([],[]).

packList([X],[[1,X]]) :- !.


packList([X|Rest],[XRun|Packed]):-
    run(X,Rest, XRun,RRest),
    packList(RRest,Packed).


run(Var,[],[1,Var],[]).

run(Var,[Var|LRest],[N1, Var],RRest):-
    N #> 0,
    N1 #= N + 1,
    run(Var,LRest,[N, Var],RRest).


run(Var,[Other|RRest], [1,Var],[Other|RRest]):-
    dif(Var,Other).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): look_and_say/1 prints a term and recurses forever; the driver runs the same step, encode/2, from [1] and prints the first 10 terms in look_and_say/1's own format.
:- initialization((length(Ns, 10), foldl([_, L0, L1]>>(maplist(write, L0), nl, encode(L0, L1)), Ns, [1], _))).
%---------------------------------- 245 loop-over-multiple-arrays-simultaneously
multiple_arrays(L1, L2, L3) :-
	maplist(display, L1, L2, L3).

display(A,B,C) :-
	writef('%s%s%s\n', [[A],[B],[C]]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines multiple_arrays/3 and never calls it; the driver runs it on the task's three arrays a b c, A B C, 1 2 3, as code lists (its writef %s takes a code).
:- initialization(multiple_arrays(`abc`, `ABC`, `123`)).
%------------------------------------------------------------ 246 loops-continue
:- initialization(main).

print_list(Min, Max) :-
    Min < Max,
    write(Min),
    Min1 is Min + 1,
    (
        Min mod 5 =:= 0
        -> nl
        ; write(',')
    ),
    print_list(Min1, Max).

print_list(Max, Max) :-
    write(Max),
    nl.

main :-
    print_list(1, 10).
%------------------------------------------------------------ 247 loops-do-while
% initial condition
do(0):- write(0),nl,do(1).

% control condition
do(V):- 0 is mod(V,6), !, fail.

% loop
do(V) :-
    write(V),nl,
    Y is V + 1,
    do(Y).

wloop :-
   do(0).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines wloop/0 and never calls it; the driver calls it once at load (it prints 0..5 and then fails by design when the value reaches a multiple of 6, so the failure is absorbed).
:- initialization((wloop -> true ; true)).
%-------------------------------------------------------- 248 loops-downward-for
rfor(Hi,Lo,Hi) :- Hi >= Lo.
rfor(Hi,Lo,Val) :- Hi > Lo, H is Hi - 1, !, rfor(H,Lo,Val).

reverse_iter :-
  rfor(10,0,Val), write(Val), nl, fail.
reverse_iter.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines reverse_iter/0 and never calls it; the driver calls it once at load (10 down to 0).
:- initialization(reverse_iter).
%----------------------------------------- 249 loops-for-with-a-specified-step-1
for(Lo,Hi,Step,Lo)  :- Step>0, Lo=<Hi.
for(Lo,Hi,Step,Val) :- Step>0, plus(Lo,Step,V), V=<Hi, !, for(V,Hi,Step,Val).

example :-
  for(0,10,2,Val), write(Val), write(' '), fail.
example.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines example/0 and never calls it; the driver calls it once at load.
:- initialization(example).
%----------------------------------------- 250 loops-for-with-a-specified-step-2
for(Hi,Lo,Step,Hi)  :- Step<0, Lo=<Hi.
for(Hi,Lo,Step,Val) :- Step<0, plus(Hi,Step,V), Lo=<V, !, for(V,Lo,Step,Val).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the downward for/4 and never calls it; the driver counts from 10 down to 0 by step -2, as the sibling's example/0 does upward.
:- initialization((forall(for(10, 0, -2, V), (write(V), write(' '))), nl)).
%----------------------------------------------------------------- 251 loops-for
example :-
    between(1,5,I), nl, between(1,I,_J),
    write('*'), fail.
example.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines example/0 and never calls it; the driver calls it once at load.
:- initialization(example).
%------------------------------------------------------------- 252 loops-foreach
?- foreach(member(X, [red,green,blue,black,white]), writeln(X)).
red
green
blue
black
white
true.
%----------------------------------------------------- 253 loops-n-plus-one-half
example :-
  between(1,10,Val), write(Val), Val<10, write(', '), fail.
example.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines example/0 and never calls it; the driver calls it once at load.
:- initialization(example).
%------------------------------------------------------------- 254 loops-while-1
while(0) :- !.
while(X) :-
    writeln(X),
    X1 is X // 2,
    while(X1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines while/1 and never calls it; the driver starts it at the task's 1024 (halving to 1).
:- initialization(while(1024)).
%------------------------------------------------ 255 loops-with-multiple-ranges
for(Lo,Hi,Step,Lo)  :- Step>0, Lo=<Hi.
for(Lo,Hi,Step,Val) :- Step>0, plus(Lo,Step,V), V=<Hi, !, for(V,Hi,Step,Val).
for(Hi,Lo,Step,Hi)  :- Step<0, Lo=<Hi.
for(Hi,Lo,Step,Val) :- Step<0, plus(Hi,Step,V), Lo=<V, !, for(V,Lo,Step,Val).

sym(x,5).                 % symbolic lookups for values
sym(y,-5).
sym(z,-2).
sym(one,1).
sym(three,3).
sym(seven,7).

range(-three,3^3,three).  % as close as we can syntactically get
range(-seven,seven,x).
range(555,550-y,1).
range(22,-28, -three).
range(1927,1939,1).
range(x,y,z).
range(11^x,11^x+one,1).

translate(V, V)   :- number(V), !.    % difference list based parser
translate(S, V)   :- sym(S,V), !.
translate(-S, V)  :- translate(S,V0), !, V is -V0.
translate(A+B, V) :- translate(A,A0), translate(B, B0), !, V is A0+B0.
translate(A-B, V) :- translate(A,A0), translate(B, B0), !, V is A0-B0.
translate(A^B, V) :- translate(A,A0), translate(B, B0), !, V is A0^B0.

range_value(Val) :-             % enumerate values for all ranges in order
	range(From,To,Step),
	translate(From,F), translate(To,T), translate(Step,S),
	for(F,T,S,Val).

calc_values([], S, P, S, P).    % calculate all values in generated order
calc_values([J|Js], S, P, Sum, Product) :-
  S0 is S + abs(J), ((abs(P)< 2^27, J \= 0) -> P0 is P * J; P0=P),
  !, calc_values(Js, S0, P0, Sum, Product).

calc_values(Sum, Product) :-    % Find the sum and product
	findall(V, range_value(V), Values),
	calc_values(Values, 0, 1, Sum, Product).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines calc_values/2 and never calls it; the driver prints the task's sum and product over its seven ranges.
:- initialization((calc_values(Sum, Prod), format("sum = ~w~nprod = ~w~n", [Sum, Prod]))).
%--------------------------------------------------------- 256 lucas-lehmer-test
show(Count) :-
    findall(N, limit(Count, (between(2, infinite, N), mersenne_prime(N))), S),
    forall(member(P, S), (write(P), write(" "))), nl.

lucas_lehmer_seq(M, L) :-
    lazy_list(ll_iter, 4-M, L).

ll_iter(S-M, T-M, T) :-
    T is ((S*S) - 2) mod M.

drop(N, Lz1, Lz2) :-
    append(Pfx, Lz2, Lz1), length(Pfx, N), !.

mersenne_prime(2).
mersenne_prime(P) :-
    P > 2,
    prime(P),
    M is (1 << P) - 1,
    lucas_lehmer_seq(M, Residues),
    Skip is P - 3, drop(Skip, Residues, [R|_]),
    R =:= 0.

% check if a number is prime
%
wheel235(L) :-
   W = [4, 2, 4, 2, 4, 6, 2, 6 | W],
   L = [1, 2, 2 | W].

prime(N) :-
   N >= 2,
   wheel235(W),
   prime(N, 2, W).

prime(N, D, _) :- D*D > N, !.
prime(N, D, [A|As]) :-
    N mod D =\= 0,
    D2 is D + A, prime(N, D2, As).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines show/1 and never calls it; the driver prints the first 15 Mersenne prime exponents (to M1279).
:- initialization(show(15)).
%------------------------------------------------------------- 257 ludic-numbers
% John Devou: 26-Nov-2021

d(_,_,[],[]).
d(N,N,[_|Xs],Rs):- d(N,1,Xs,Rs).
d(N,M,[X|Xs],[X|Rs]):- M < N, M_ is M+1, d(N,M_,Xs,Rs).

l([],[]).
l([X|Xs],[X|Rs]):- d(X,1,Xs,Ys), l(Ys,Rs).

% g(N,L):- generate in L a list with Ludic numbers up to N

g(N,[1|X]):- numlist(2,N,L), l(L,X).

s(0,Xs,[],Xs).
s(N,[X|Xs],[X|Ls],Rs):- N > 0, M is N-1, s(M,Xs,Ls,Rs).

t([X,Y,Z|_],[X,Y,Z]):- Y =:= X+2, Z =:= X+6.
t([_,Y,Z|Xs],R):- t([Y,Z|Xs],R).

% tasks

t1:- g(500,L), s(25,L,X,_), write(X), !.
t2:- g(1000,L), length(L,X), write(X), !.
t3:- g(22000,L), s(1999,L,_,R), s(6,R,X,_), write(X), !.
t4:- g(249,L), findall(A, t(L,A), X), write(X), !.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the task's four parts t1..t4 and never calls them; the driver calls each once (first 25, count up to 1000, 2000th..2005th, triplets below 250).
:- initialization((t1, nl, t2, nl, t3, nl, t4, nl)).
%---------------------------------------------------------- 258 lunar-arithmetic
number_digits(Number, Digits) :-
    (   ground(Number)
    ->  number_chars(Number, Chars),
        maplist(atom_number, Chars, Digits0),
        reverse(Digits0, Digits)
    ;   reverse(Digits0, Digits),
        maplist(atom_number, Chars, Digits0),
        number_chars(Number, Chars)
    ).

lunar_eval(Expr, Number) :-
    lunar_eval_(Expr, Digits),
    number_digits(Number, Digits).

lunar_eval_(A0 + B0, C) :- !,
    lunar_eval_(A0, A),
    lunar_eval_(B0, B),
    lunar_add(A, B, C).

lunar_eval_(A0 * B0, C) :- !,
    lunar_eval_(A0, A),
    lunar_eval_(B0, B),
    lunar_mul(A, B, C).

lunar_eval_(!(A), C) :- !,
    (   A < 10
    ->  C = 1
    ;   numlist(10, A, As0),
        maplist(number_digits, As0, As),
        foldl(lunar_mul, As, [1], C)
    ).

lunar_eval_(N, D) :-
    integer(N),
    N >= 0,
    number_digits(N, D).

lunar_add([], Cs, Cs) :- !.
lunar_add(Cs, [], Cs) :- !.
lunar_add([A | As], [B | Bs], [C | Cs]) :-
    C is max(A, B),
    lunar_add(As, Bs, Cs).

min(A, B, C) :- C is min(A, B).

lunar_mul(As0, Bs0, Cs) :-
    length(As0, ALen),
    length(Bs0, BLen),
    (   ALen < BLen
    ->  Bs = As0, As = Bs0
    ;   As = As0, Bs = Bs0
    ),
    findall(Row, (
        nth0(N, Bs, B),
        length(Zeros, N),
        maplist(=(0), Zeros),
        maplist(min(B), As, Row0),
        append(Zeros, Row0, Row)
    ), [Row | Rows]),
    foldl(lunar_add, Rows, Row, Cs).

lunar_evens(E)   :- between(0, inf, N), lunar_eval(2 * N, E).
lunar_squares(S) :- between(0, inf, S0), lunar_eval(S0 * S0, S).

lunar_factorials(F) :- lunar_factorials(1, 1, F).

lunar_factorials(_, F, F).
lunar_factorials(P0, F0, F) :-
    succ(P0, P1),
    lunar_eval(P1 * F0, F1),
    lunar_factorials(P1, F1, F).

lunar_nonmonotonic_square(P) :- lunar_nonmonotonic_square(1, 1, P).

lunar_nonmonotonic_square(P0, S0, P) :-
    succ(P0, P1),
    lunar_eval(P1 * P1, S1),
    (   S1 < S0
    ->  P = P1
    ;   lunar_nonmonotonic_square(P1, S1, P)
    ).

task :-
    writeln("Lunar addition:"),
    foreach((
        member(Addition, [
            976 + 348,
            23 + 321,
            232 + 35,
            123 + 32192 + 415 + 8
        ]),
        lunar_eval(Addition, Result)
    ), (
        writeln(Addition=Result)
    )),

    writeln("\nLunar multiplication:"),
    foreach((
        member(Multiplication, [
            978 * 348,
            23 * 321,
            232 * 35,
            123 * 32192 * 415 * 8
        ]),
        lunar_eval(Multiplication, Result)
    ), (
        writeln(Multiplication=Result)
    )),

    writeln("\nFirst 20 distinct even numbers:"),
    findall(Even, limit(20, distinct(lunar_evens(Even))), Evens),
    atomic_list_concat(Evens, ' ', ResultEvens),
    writeln(ResultEvens),

    writeln("\nFirst 20 lunar squares:"),
    findall(Square, limit(20, lunar_squares(Square)), Squares),
    atomic_list_concat(Squares, ' ', ResultSquares),
    writeln(ResultSquares),

    writeln("\nFirst 18 lunar factorials:"),
    findall(Factorial, limit(18, lunar_factorials(Factorial)), Factorials),
    atomic_list_concat(Factorials, ' ', ResultFactorials),
    writeln(ResultFactorials),

    writeln("\nFirst lunar square smaller than the previous:"),
    lunar_nonmonotonic_square(NR),
    succ(NR0, NR),
    lunar_eval(NR0 * NR0, NS0),
    lunar_eval(NR * NR, NS),
    writeln(NR^2=NS),
    writeln(NR0^2=NS0).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines task/0 and never calls it; the driver calls it once at load.
:- initialization(task).
%----------------------------------------------------------- 259 lychrel-numbers
reverse_number(Number, Rev):-
    reverse_number(Number, 0, Rev).

reverse_number(0, Rev, Rev):-!.
reverse_number(N, R, Rev):-
    R1 is R * 10 + N mod 10,
    N1 is N // 10,
    reverse_number(N1, R1, Rev).

lychrel(N, M, _, [], [], []):-
    M > N,
    !.
lychrel(N, M, Cache, Seeds, Related, Palindromes):-
    reverse_number(M, R),
    lychrel_sequence(M, 0, M, R, Cache, Sequence, Result),
    update_cache(Cache, Sequence, Result, Cache1),
    M1 is M + 1,
    (Result == 0 ->
        S = Seeds, Rel = Related, P = Palindromes
        ;
        (R == M ->
            Palindromes = [M|P]
            ;
            Palindromes = P),
        (Result == M ->
            Seeds = [M|S], Related = Rel
            ;
            Seeds = S, Related = [M|Rel])),
    lychrel(N, M1, Cache1, S, Rel, P).

update_cache(Cache, [], _, Cache):-!.
update_cache(Cache, [S|Seq], Result, Cache2):-
    put_assoc(S, Cache, Result, Cache1),
    update_cache(Cache1, Seq, Result, Cache2).

lychrel_sequence(N, 500, _, _, _, [], N):-!.
lychrel_sequence(N, I, Sum, Rev, Cache, [Sum1|Sequence], Result):-
    I1 is I + 1,
    Sum1 is Sum + Rev,
    reverse_number(Sum1, Rev1),
    (((Rev1 == Sum1, Result = 0) ; get_assoc(Sum1, Cache, Result)) ->
        Sequence = []
        ;
        lychrel_sequence(N, I1, Sum1, Rev1, Cache, Sequence, Result)).

lychrel(N):-
    empty_assoc(Cache),
    lychrel(N, 1, Cache, Seeds, Related, Palindromes),
    length(Seeds, Num_seeds),
    length(Related, Num_related),
    writef('number of seeds: %w\n', [Num_seeds]),
    writef('seeds: %w\n', [Seeds]),
    writef('number of related: %w\n', [Num_related]),
    writef('palindromes: %w\n', [Palindromes]).

main:-
    lychrel(10000).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%------------------------------------------------------------ 260 magic-constant
m(X,Y):- Y is X*(X*X+1)/2.

l(L,R,T,X):- L > R -> X is L; M is div(L+R,2), m(M,F),
    (T < F -> R_ is M-1, l(L,R_,T,X); L_ is M+1, l(L_,R,T,X)).
l(B,X):- l(1,B,B,X).

task:-
    write("First 20 magic constants are:"), forall(between(3,22,N), (m(N,X), format(" ~d",X))), nl,
    write("The 1000th magic constant is:"), forall(m(1002,X), format(" ~d",X)), nl,
    forall(between(1,20,N), (l(10**N,X), format("10^~d:\t~d\n",[N,X]))).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines task/0 and never calls it; the driver calls it once at load.
:- initialization(task).
%----------------------------------------------------------------- 261 map-range
% map_range(+S, +A1, +A2, +B1, +B2, -R)
map_range(S, A1, A2, B1, B2, R) :-
    R is B1 + (S - A1) * (B2 - B1) / (A2 - A1).

% bucle principal
run :-
    forall(between(0, 10, I),
           ( map_range(I, 0, 10, -1, 0, R),
             format("~w maps to ~1f~n", [I, R])
           )).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines run/0 and never calls it; the driver calls it once at load.
:- initialization(run).
%---------------------------------------------------------------- 262 mastermind
mastermind :- mastermind(7, 4, 8, no_duplicates).

mastermind(Colours, Length, Guesses, Duplicates) :-
	between(2, 20, Colours),
	between(4, 10, Length),
	between(7, 20, Guesses),
	member(Duplicates, [allow_duplicates, no_duplicates]),

	create_board(Colours, Length, Duplicates, Board),
	intro(Colours, Length, Duplicates),
	play(board(Board, Length, Colours, Guesses), [], 0), !.

intro(Colours, Length, Duplicates) :-
	format('Guess the code!~n'),
	format('There are ~p character types, and ~p letters to guess~n',
	    [Colours, Length]),
	Duplicates = allow_duplicates
	-> format('Duplicates are allowed~n~n')
	; format('Duplicates are not allowed~n~n').

/* Create the combination to be guessed */
create_board(Colours, Length, Duplicates, Board) :-
	length(Board, Length),
	valid_char_list(Colours, CharSet),
	repeat,
	maplist(random_alpha(CharSet), Board),
	check_for_duplicates(Board, Duplicates).

check_for_duplicates(_, allow_dupicates).
check_for_duplicates(Board, no_duplicates) :- is_set(Board).

/* Main loop - get the player guess and print out status */
play(board(Board,_,_,MaxGuesses), _, MaxGuesses) :-
	write('Sorry, You failed to guess in time...!\nThe code was : '),
	maplist(write, Board),
	nl.
play(BoardData, PrevGuesses, GuessNum) :-
	BoardData = board(_, Length, Colours, MaxGuesses),
	GuessNum < MaxGuesses,
	ReportedGuess is GuessNum + 1,
	format('Guess #~p of #~p: ', [ReportedGuess, MaxGuesses]),
	get_player_guess(Length, Colours, Guess),
	evaluate_and_print_result(BoardData, PrevGuesses, ReportedGuess, Guess).

evaluate_and_print_result(board(Board,_,_,_), _, _,Board) :-
	format('Well done! You Guessed Correctly.~n').
evaluate_and_print_result(BoardData, PrevGuesses, NextGuessNum, Guess) :-
	BoardData = board(Board, _, _, _),
	dif(Board, Guess),
	match_guess_to_board(Board, Guess, Diffs),
	append(PrevGuesses, [guess(NextGuessNum, Guess, Diffs)], Guesses),
	maplist(print_guess, Guesses),
	play(BoardData, Guesses, NextGuessNum).

/* Get the player guess and validate that it matches the rules */
get_player_guess(Length, Colours, Guess) :-
	repeat,
	read_line_to_string(user_input, Line),
	string_chars(Line, Guess),

	% validate the correct number of items have been entered
	length(Guess, Length),

	% validate that all the characters are valid for the number of colours
	valid_char_list(Colours, ValidCharSet),
	subset(Guess, ValidCharSet).

/* Predicates to figure out how many places are correct */
match_guess_to_board(Board, Guess, Matches) :-
	maplist(guess_differences(Board), Board, Guess, Differences),
	sort(0, @>=, Differences, Matches).

% Same position, same type
guess_differences(_Board, B, B, 'X').
% Same type, different position
guess_differences(Board, B, G, 'O') :- dif(B, G), member(G, Board).
% Type not on board
guess_differences(Board, B, G, '-') :- dif(B, G), \+ member(G, Board).

/* Print out the current progress */
print_guess(guess(NextGuessNumber, Guess, Differences))	:-
	format('~w: ', NextGuessNumber),
	maplist(format('~w '), Guess),
	format(' : '),
	maplist(format('~w '), Differences),
	nl.

/* Utils */
alpha_chars([a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t]).

valid_char_list(Colours, CharSet) :-
	alpha_chars(AllChars),
	truncate_list(AllChars, Colours, CharSet).

random_alpha(AllChars, RandomMember) :- random_member(RandomMember, AllChars).

truncate_list(_, 0, []).
truncate_list([A|T], N, [A|R]) :-
	N > 0,
	N1 is N - 1,
	truncate_list(T, N1, R).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): mastermind/0 draws its code with random_member/2; the driver plays the same game, play/3, on the fixed code bdaf with the guesses in mastermind.in, after mastermind/4's intro.
:- initialization((intro(7, 4, no_duplicates), play(board([b, d, a, f], 4, 7, 8), [], 0))).
%----------------------------------------------------- 263 matrix-multiplication
% SWI-Prolog has transpose/2 in its clpfd library
:- use_module(library(clpfd)).

% N is the dot product of lists V1 and V2.
dot(V1, V2, N) :- maplist(product,V1,V2,P), sumlist(P,N).
product(N1,N2,N3) :- N3 is N1*N2.

% Matrix multiplication with matrices represented
% as lists of lists. M3 is the product of M1 and M2
mmult(M1, M2, M3) :- transpose(M2,MT), maplist(mm_helper(MT), M1, M3).
mm_helper(M2, I1, M3) :- maplist(dot(I1), M2, M3).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines mmult/3 and never calls it; the driver multiplies a 2x3 by a 3x2 matrix and prints the product.
:- initialization((mmult([[1,2,3],[4,5,6]], [[7,8],[9,10],[11,12]], M), format("~w~n", [M]))).
%------------------------------------------------- 264 maximum-triangle-path-sum
max_path(N, V) :-
	data(N, T),
	path(0, T, V).

path(_N, [], 0) .
path(N, [H | T], V) :-
	nth0(N, H, V0),
	N1 is N+1,
	path(N, T, V1),
	path(N1, T, V2),
	V is V0 +  max(V1, V2).

data(1, P) :-
	P =
	[ [55],
	  [94, 48],
	  [95, 30, 96],
	  [77, 71, 26, 67]].


data(2, P) :-
	P =
	[ [55],
	  [94, 48],
	  [95, 30, 96],
	  [77, 71, 26, 67],
	  [97, 13, 76, 38, 45],
	  [7, 36, 79, 16, 37, 68],
	  [48, 7, 9, 18, 70, 26, 6],
	  [18, 72, 79, 46, 59, 79, 29, 90],
	  [20, 76, 87, 11, 32, 7, 7, 49, 18],
	  [27, 83, 58, 35, 71, 11, 25, 57, 29, 85],
	  [14, 64, 36, 96, 27, 11, 58, 56, 92, 18, 55],
	  [2, 90, 3, 60, 48, 49, 41, 46, 33, 36, 47, 23],
	  [92, 50, 48, 2, 36, 59, 42, 79, 72, 20, 82, 77, 42],
	  [56, 78, 38, 80, 39, 75, 2, 71, 66, 66, 1, 3, 55, 72],
	  [44, 25, 67, 84, 71, 67, 11, 61, 40, 57, 58, 89, 40, 56, 36],
	  [85, 32, 25, 85, 57, 48, 84, 35, 47, 62, 17, 1, 1, 99, 89, 52],
	  [6, 71, 28, 75, 94, 48, 37, 10, 23, 51, 6, 48, 53, 18, 74, 98, 15],
	  [27, 2, 92, 23, 8, 71, 76, 84, 15, 52, 92, 63, 81, 10, 44, 10, 69, 93]].

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines max_path/2 and never calls it; the driver prints the maximum path sum of its small example and of the task's 18-row triangle.
:- initialization(forall(member(N, [1, 2]), (max_path(N, V), format("~w: ~w~n", [N, V])))).
%-------------------------------------------------------------------- 265 menu-1
rosetta_menu([], "") :- !.              %% Incase of an empty list.
rosetta_menu(Items, SelectedItem) :-
    repeat,                             %% Repeat until everything that follows is true.
        display_menu(Items),            %% IO
        get_choice(Choice),             %% IO
    number(Choice),                     %% True if Choice is a number.
    nth1(Choice, Items, SelectedItem),  %% True if SelectedItem is the 1-based nth member of Items, (fails if Choice is out of range)
    !.

display_menu(Items) :-
    nl,
    foreach( nth1(Index, Items, Item),
             format('~w) ~s~n', [Index, Item]) ).

get_choice(Choice) :-
    prompt1('Select a menu item by number:'),
    read(Choice).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines rosetta_menu/2 and never calls it; the driver runs menu-2's example over the task's four items with the answers a, 10 and 3 (two rejected, then mirror mirror) in menu-1.in.
:- initialization((rosetta_menu(["fee fie", "huff and puff", "mirror mirror", "tick tock"], S), format("~s~n", [S]))).
%-------------------------------------------- 266 merge-and-aggregate-datasets-1
patient(1001,'Hopper').
patient(4004,'Wirth').
patient(3003,'Kemeny').
patient(2002,'Gosling').
patient(5005,'Kurtz').

visit(2002,'2020-09-10',6.8).
visit(1001,'2020-09-17',5.5).
visit(4004,'2020-09-24',8.4).
visit(2002,'2020-10-08',nan).
visit(1001,'',6.6).
visit(3003,'2020-11-12',nan).
visit(4004,'2020-11-05',7.0).
visit(1001,'2020-11-19',5.3).

summaryDates(Id, Lastname, LastDate) :-
     aggregate(max(Ts),
	       Score^Date^(visit(Id, Date, Score), Date \= '', parse_time(Date, iso_8601, Ts)),
	       MaxTs),
     format_time(atom(LastDate), '%Y-%m-%d', MaxTs),
     patient(Id,Lastname).

summaryScores(Id, Lastname, Sum, Mean) :-
     aggregate(r(sum(Score),count), Date^(visit(Id, Date, Score), Score \= nan), r(Sum,Count)),
     patient(Id,Lastname),
     Mean is Sum/Count.

test :-
    summaryDates(Id, Lastname, LastDate),
    writeln(summaryDates(Id, Lastname, LastDate)),
    fail.

test :-
    summaryScores(Id, Lastname, ScoreSum, ScoreMean),
    writeln(summaryScores(Id, Lastname, ScoreSum, ScoreMean)),
    fail.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines test/0 and never calls it; the driver calls it once at load.
:- initialization(test).
%----------------------------------------------------------- 267 mersenne-primes
lucas_lehmer_seq(M, L) :-
    lazy_list(ll_iter, 4-M, L).

ll_iter(S-M, T-M, T) :-
    T is ((S*S) - 2) mod M.

drop(N, Lz1, Lz2) :-
    append(Pfx, Lz2, Lz1), length(Pfx, N), !.

mersenne_prime(2).
mersenne_prime(P) :-
    P > 2,
    M is (1 << P) - 1,
    lucas_lehmer_seq(M, Residues),
    Skip is P - 3, drop(Skip, Residues, [R|_]),
    R =:= 0.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines mersenne_prime/1 and never calls it; the driver lists the Mersenne primes 2^P-1 for P up to 700 (to M607).
:- initialization(forall((between(2, 700, P), mersenne_prime(P)), format("M~w~n", [P]))).
%---------------------------------------------------------- 268 mertens-function
:- dynamic mertens_number_cache/2.

mertens_number(1, 1):- !.
mertens_number(N, M):-
    mertens_number_cache(N, M),
    !.
mertens_number(N, M):-
    N >= 2,
    mertens_number(N, 2, M, 0),
    assertz(mertens_number_cache(N, M)).

mertens_number(N, N, M, M):- !.
mertens_number(N, K, M, S):-
    N1 is N // K,
    mertens_number(N1, M1),
    K1 is K + 1,
    S1 is S - M1,
    mertens_number(N, K1, M, S1).

print_mertens_numbers(Count):-
    print_mertens_numbers(Count, 0).

print_mertens_numbers(Count, Count):-!.
print_mertens_numbers(Count, N):-
    (N == 0 ->
        write('   ')
        ;
        mertens_number(N, M),
        writef('%3r', [M])
    ),
    N1 is N + 1,
    Column is N1 mod 20,
    (N > 0, Column == 0 ->
        nl
        ;
        true
    ),
    print_mertens_numbers(Count, N1).

count_zeros(From, To, Z, C):-
    count_zeros(From, To, Z, C, 0, 0, 0).

count_zeros(From, To, Z, C, Z, C, _):-
    From > To,
    !.
count_zeros(From, To, Z, C, Z1, C1, P):-
    mertens_number(From, M),
    (M == 0 -> Z2 is Z1 + 1 ; Z2 = Z1),
    (M == 0, P \= 0 -> C2 is C1 + 1 ; C2 = C1),
    Next is From + 1,
    count_zeros(Next, To, Z, C, Z2, C2, M).

main:-
    writeln('First 199 Mertens numbers:'),
    print_mertens_numbers(200),
    count_zeros(1, 1000, Z, C),
    writef('M(n) is zero %t times for 1 <= n <= 1000.\n', [Z]),
    writef('M(n) crosses zero %t times for 1 <= n <= 1000.\n', [C]).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%--------------------------------------------------------- 269 metaprogramming-1
:- initialization(main).
main :- clause(less_than(1,2),B),writeln(B).
less_than(A,B) :- A<B.

%----------------------------------------------------- 270 middle-three-digits-1
middle_3_digits(Number, [D1,D2,D3]) :-
    verify_middle_3_able(Number, Digits),
    append(FrontDigits, [D1,D2,D3| BackDigits], Digits),
    same_length(FrontDigits, BackDigits).

verify_middle_3_able(Number, Digits) :-
    must_be(number, Number),
    AbsNumber is abs(Number),
    number_chars(AbsNumber, Digits),
    length(Digits, NumDigits),
    ( 3 > NumDigits         ->  domain_error('at least 3 digits',    Number)
    ; 0 is NumDigits mod 2  ->  domain_error('odd number of digits', Number)
    ; true
    ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines middle_3_digits/2 and never calls it; the driver prints it for the task's ten good and seven bad numbers, the bad ones as the domain_error it raises.
:- initialization(forall(member(N, [123, 12345, 1234567, 987654321, 10001, -10001, -123, -100, 100, -12345, 1, 2, -1, -10, 2002, -2002, 0]), catch((middle_3_digits(N, D), atom_chars(A, D), format("~w: ~w~n", [N, A])), error(E, _), format("~w: ~w~n", [N, E])))).
%----------------------------------------------- 271 miller-rabin-primality-test
:- module(primality, [is_prime/2]).

% is_prime/2 returns false if N is composite, true if N probably prime
%    implements a Miller-Rabin primality test and is deterministic for N < 3.415e+14,
%    and is probabilistic for larger N. Adapted from the Erlang version.
is_prime(1, Ret) :- Ret = false, !.          % 1 is non-prime
is_prime(2, Ret) :- Ret = true, !.           % 2 is prime
is_prime(3, Ret) :- Ret = true, !.           % 3 is prime
is_prime(N, Ret) :-
	N > 3, (N mod 2 =:= 0), Ret = false, !.  % even number > 3 is composite
is_prime(N, Ret) :-
	N > 3, (N mod 2 =:= 1),                  % odd number > 3
	N < 341550071728321,
	deterministic_witnesses(N, L),
 	is_mr_prime(N, L, Ret), !.               % deterministic test
is_prime(N, Ret) :-
	random_witnesses(N, 100, [], Out),
	is_mr_prime(N, Out, Ret), !.             % probabilistic test

% returns list of deterministic witnesses
deterministic_witnesses(N, L) :- N < 1373653,
	L = [2, 3].
deterministic_witnesses(N, L) :- N < 9080191,
	L = [31, 73].
deterministic_witnesses(N, L) :- N < 25326001,
	L = [2, 3, 5].
deterministic_witnesses(N, L) :- N < 3215031751,
	L = [2, 3, 5, 7].
deterministic_witnesses(N, L) :- N < 4759123141,
	L = [2, 7, 61].
deterministic_witnesses(N, L) :- N < 1122004669633,
	L = [2, 13, 23, 1662803].
deterministic_witnesses(N, L) :- N < 2152302898747,
	L = [2, 3, 5, 7, 11].
deterministic_witnesses(N, L) :- N < 3474749660383,
	L = [2, 3, 5, 7, 11, 13].
deterministic_witnesses(N, L) :- N < 341550071728321,
	L = [2, 3, 5, 7, 11, 13, 17].

% random_witnesses/4 returns a list of K witnesses selected at random with range 2 -> N-2
random_witnesses(_, 0, T, T).
random_witnesses(N, K, T, Out) :-
		G is N - 2,
		H is 1 + random(G),
		I is K - 1,
    	random_witnesses(N, I, [H | T], Out), !.

% find_ds/2 receives odd integer N and returns [D, S] s.t. N-1 = 2^S * D
find_ds(N, L) :-
	A is N - 1,
    find_ds(A, 0, L), !.

find_ds(D, S, L) :-
	D mod 2 =:= 0,
	P is D // 2,
	Q is S + 1,
	find_ds(P, Q, L), !.
find_ds(D, S, L) :-
	L = [D, S].

is_mr_prime(N, As, Ret) :-
    find_ds(N, L),
    L = [D | T],
    T = [S | _],
    outer_loop(N, As, D, S, Ret), !.

outer_loop(N, As, D, S, Ret) :-
    As = [A | At],
    Base is powm(A, D, N),
    inner_loop(Base, N, 0, S, Result),
	(  Result == false           -> Ret = false
	;  Result == true, At == []  -> Ret = true
	;  outer_loop(N, At, D, S, Ret)
	).

inner_loop(Base, N, Loop, S, Result) :-
    Next_Base is (Base * Base) mod N,
    Next_Loop is Loop + 1,
	( Loop =:= 0, Base =:= 1   -> Result = true
	;             Base =:= N-1 -> Result = true
	; Next_Loop =:= S          -> Result = false
	; inner_loop(Next_Base, N, Next_Loop, S, Result)
	).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines is_prime/2 and never calls it; the driver prints the primes up to 100 and its verdict on some strong pseudoprimes and large primes, all below its deterministic-witness bound (no random witnesses).
:- initialization((findall(N, (between(1, 100, N), is_prime(N, R), R == true), Ps), format("~w~n", [Ps]), forall(member(N, [561, 1373653, 25326001, 3215031751, 2152302898747, 3474749660383, 4294967291, 1000000007, 999999999989]), (is_prime(N, R), format("~w: ~w~n", [N, R]))))).
%---------------------------------------------------------- 272 minesweeper-game
:- use_module(library(clpfd)).

% Play - run the minesweeper game with a specified width and height
play(W,H) :-
	format('
Welcome to prolog minesweeper!
: o X Y  exposes a cell of the grid
: m X Y  marks bombs

Any else to quit.
'),

	make_grid(W, H, Grid),
	!,
	play(Grid),
	!.

play(Grid) :- % win condition is true
	map_grid(won, Grid),
	map_grid(print_cell, Grid),
	writeln('you won!').

play(Grid) :- % lose condition is true
	\+ map_grid(still_playing, Grid),
	map_grid(print_cell, Grid),
	writeln('you hit a bomb!').

play(Grid) :- % stil playing
	map_grid(print_cell, Grid),
	parse_input(Op, X, Y),
	do_op(Op, p(X,Y), Grid, Grid2),
	!,
	play(Grid2).

/* Create a new Grid
 *
 * The grid is created initially as a flat list, and after everything
 * has been populated is converted into a 2 dimensional array.
 */
make_grid(W, H, grid(W,H,MappedCells)) :-
	% create a flat list
	Len is W * H,
	length(Cells, Len),

	% create a list of bombs that is 20% of the grid list
	NBombs is W * H / 5,
	floor(NBombs, NBint),
	format('There are ~w bombs on the grid~n', NBint),
	length(AllBombs, NBint),
	maplist(=('?'), AllBombs),
	% add the bombs to the start of the grid list
	map_bombs_to_cells(Cells, AllBombs, NewC),

	% randomise and convert to a 2D array
	random_permutation(NewC, RCells),
	convert_col(RCells, W, H, CreatedCells),

	% populate the hidden part of the grid with number of bombs next to each cell
	map_grid(adj_bomb(grid(W,H,CreatedCells)), grid(W,H,CreatedCells), grid(W,H,MappedCells)).

% puts the bombs at the start of the flat list before shuffling.
map_bombs_to_cells(C, [], C).
map_bombs_to_cells([_|Ct], [B|Bt], [B|R]) :- map_bombs_to_cells(Ct, Bt, R).

convert_row(T, 0, [], T).
convert_row([H|T], W, [H|R], Rem) :-
	dif(W, 0), succ(W1, W),
	convert_row(T, W1, R, Rem).

convert_col([], _, 0, []).
convert_col(C, W, H, [Row|MoreCells]) :- dif(H, 0), succ(H1, H),
	convert_row(C, W, Row, Rem),
	convert_col(Rem, W, H1, MoreCells).

% determine the number of bombs next to a cell (use mapgrid)
adj_bomb(_, _, _, C, cell('.',C)) :- C =@= '?'.
adj_bomb(Grid, p(X,Y), D, Cell, cell('.',NBombs)) :-
	dif(Cell, '?'),
	findall(p(Ax,Ay), (
		adj(p(X,Y), D, p(Ax,Ay)),
		indomain(Ax), indomain(Ay),
		grid_val_xy(Grid, p(Ax,Ay), Val),
		Val =@= '?'
	), Bombs),
	length(Bombs, NBombs).

% Print the grid (use mapgrid)
print_cell(p(X,_), dim(X,_), cell(C,A), cell(C,A)) :- format("~w~n", C).
print_cell(p(X,_), dim(W,_), cell(C,A), cell(C,A)) :- dif(X,W), format("~w ", C).

% determine if we have lost yet or not (use mapgrid).
still_playing(_,_,cell(A,_),_) :- A \= '*'.

% determine if we have won yet or not (use mapgrid).
won(_,_,cell(N,N),_) :- integer(N).
won(_,_,cell('?','?'),_).

% Operate on all cells in a grid, this is a meta predicate that is
% applied several times throughout the code
map_grid(Goal, G) :- map_grid(Goal, G, G).

map_grid(Goal, grid(W,H,Cells), grid(W,H,OutCells)) :-
	map_grid_col(Cells, 1, dim(W,H), Goal, OutCells).

map_grid_col([], _, _, _, []).
map_grid_col([H|T], Y, D, Goal, [NRow|NCol]) :-
	map_grid_row(H, p(1, Y), D, Goal, NRow),
	succ(Y, Y1),
	map_grid_col(T, Y1, D, Goal, NCol).

map_grid_row([], _, _, _, []).
map_grid_row([H|T], p(X, Y), D, Goal, [Cell|R]) :-
	call(Goal, p(X, Y), D, H, Cell),
	succ(X, X1),
	map_grid_row(T, p(X1, Y), D, Goal, R).

% Get a value from the grid by X Y
grid_val_xy(grid(_,_,Cells), p(X,Y), Val) :-
	nth1(Y, Cells, Row),
	nth1(X, Row, Val).

% Set a value on the grid by X Y
grid_set_xy(grid(W,H,Cells), p(X,Y), Val, grid(W,H,NewCells)) :- grid_set_col(Cells, X, Y, Val, NewCells).
grid_set_col([H|T], X, 1, Val, [Row|T]) :- grid_set_row(H, X, Val, Row).
grid_set_col([H|T], X, Y, Val, [H|New]) :- dif(Y, 0), succ(Y1, Y), grid_set_col(T, X, Y1, Val, New).
grid_set_row([_|T], 1, Val, [Val|T]).
grid_set_row([H|T], X, Val, [H|New]) :- dif(X, 0), succ(X1, X), grid_set_row(T, X1, Val, New).

% All coordinates adjacent to an x,y position
adj(p(X,Y), dim(W,H), p(Ax,Ay)) :-

	dif(p(X,Y),p(Ax,Ay)),

	% adjacent X
	Ax in 1..W,
	Xmin #= X-1, Xmax #= X+1,
	Ax in Xmin..Xmax,

	% adjacent Y
	Ay in 1..H,
	Ymin #= Y-1, Ymax #= Y+1,
	Ay in Ymin..Ymax.

% get user operation from input
parse_input(Op, X, Y) :-
	read_line_to_codes(user_input, In),
	maplist(char_code, InChars, In),
	phrase(mine_op(Op, X, Y), InChars, []).

mine_op(mark, X, Y) --> [m], [' '], coords(X, Y).
mine_op(open, X, Y) --> [o], [' '], coords(X, Y).
coords(Xi, Yi) --> number_(X), { number_chars(Xi, X) }, [' '], number_(Y), { number_chars(Yi, Y) }.

number_([D|T]) --> digit(D), number_(T).
number_([D]) --> digit(D).
digit(D) --> [D], { char_type(D, digit) }.


% Do mark operation
do_op(mark, P, G, Ng) :-
	grid_val_xy(G, P, cell(_,A)),
	grid_set_xy(G, P, cell('?',A), Ng).

% Do open operation, opening a bomb
do_op(open, P, G, Ng) :-
	grid_val_xy(G, P, cell(_,'?')),
	grid_set_xy(G, P, cell('*','?'), Ng).

% Do open operation, not a bomb
do_op(open, P, G, Ng) :-
	grid_val_xy(G, P, cell(_,A)),
	dif(A, '?'),
	grid_set_xy(G, P, cell(A,A), Ng1),
	expose_grid(P, Ng1, Ng).

% expose the grid by checking all the adjacent cells and operating
% appropriately
expose_grid(p(X,Y), grid(W,H,Cells), Ng2) :-
	findall(p(Ax,Ay), (
		    adj(p(X,Y), dim(W,H), p(Ax,Ay)),
		    indomain(Ax), indomain(Ay)
		), Coords),
	expose_grid_(Coords, grid(W,H,Cells), Ng2).

expose_grid_([], G, G).

expose_grid_([H|T], G, Ng) :-  % this cell has already been exposed, continue
	grid_val_xy(G, H, cell(A,B)),
	member(A, [B,'?']),
	expose_grid_(T, G, Ng).

expose_grid_([H|T], G, Ng) :- % ignore bombs
	grid_val_xy(G, H, cell(_,'?')),
	expose_grid_(T, G, Ng).

expose_grid_([H|T], G, Ng) :- % is an integer, expose and continue
	grid_val_xy(G, H, cell(_,N)),
	integer(N),
	N #> 0,
	grid_set_xy(G, H, cell(N,N), Ng1),
	expose_grid_(T, Ng1, Ng).

expose_grid_([H|T], G, Ng) :- % is a space, recurse
	grid_val_xy(G, H, cell('.',0)),
	grid_set_xy(G, H, cell(0,0), Ng1),
	expose_grid(H, Ng1, Ng2),
	expose_grid_(T, Ng2, Ng).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): play/2 shuffles its bombs with random_permutation/2 inside make_grid/3; the driver builds the same 6x4 grid with make_grid/3's own steps minus the shuffle (its four bombs stay in the top row) and plays it, play/1, with the moves in minesweeper-game.in (open 6 4, mark the four bombs).
:- initialization((W = 6, H = 4, Len is W * H, length(Cells, Len), NB is Len // 5, length(Bs, NB), maplist(=('?'), Bs), map_bombs_to_cells(Cells, Bs, NewC), convert_col(NewC, W, H, CC), map_grid(adj_bomb(grid(W, H, CC)), grid(W, H, CC), G), play(G))).
%-------------------------- 273 minimum-multiple-of-m-where-digital-sum-equals-m
main:-
    between(1, 40, N),
    min_mult_dsum(N, M),
    writef('%6r', [M]),
    (0 is N mod 10 -> nl ; true),
    fail.
main.

min_mult_dsum(N, M):-
    min_mult_dsum(N, 1, M).

min_mult_dsum(N, M, M):-
    P is M * N,
    digit_sum(P, N),
    !.
min_mult_dsum(N, K, M):-
    L is K + 1,
    min_mult_dsum(N, L, M).

digit_sum(N, Sum):-
    digit_sum(N, Sum, 0).

digit_sum(N, Sum, S1):-
    N < 10,
    !,
    Sum is S1 + N.
digit_sum(N, Sum, S1):-
    divmod(N, 10, M, Digit),
    S2 is S1 + Digit,
    digit_sum(M, Sum, S2).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%---------------------------------------------------- 274 modular-exponentiation
main:-
    A = 2988348162058574136915891421498819466320163312926952423791023078876139,
    B = 2351399303373464486466122544523690094744975233415544072992656881240319,
    M is 10 ** 40,
    P is powm(A, B, M),
    writeln(P).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%----------------------------------------------------------- 275 modular-inverse
egcd(_, 0, 1, 0) :- !.
egcd(A, B, X, Y) :-
    divmod(A, B, Q, R),
    egcd(B, R, S, X),
    Y is S - Q*X.

modinv(A, B, N) :-
    egcd(A, B, X, Y),
    A*X + B*Y =:= 1,
    N is X mod B.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines modinv/3 and never calls it; the driver prints the task's inverse of 42 modulo 2017.
:- initialization((modinv(42, 2017, N), format("~w~n", [N]))).
%-------------------------------------------------------------- 276 morse-code-1
% convert text to morse
% query text2morse(Text, Morse)
% where
% Text is string to convert
% Morse is Morse representation
% There is a space between chars and double space between words
%
text2morse(Text, Morse) :-
   string_lower(Text, TextLower),         % rules are in lower case
   string_chars(TextLower, Chars),        % convert string into list of chars
   chars2morse(Chars, MorseChars),        % convert each char into morse
   string_chars(MorsePlusSpace, MorseChars), % append returned string list into single string
   string_concat(Morse, ' ', MorsePlusSpace).   % Remove trailing space

chars2morse([], "").
chars2morse([H|CharTail], Morse) :-
   morse(H, M),
   chars2morse(CharTail, MorseTail),
   string_concat(M,' ', MorseSpace),
   string_concat(MorseSpace, MorseTail, Morse).

% space
morse(' ', " ").
% letters
morse('a', ".-").
morse('b', "-...").
morse('c', "-.-.").
morse('d', "-..").
morse('e', ".").
morse('f', "..-.").
morse('g', "--.").
morse('h', "....").
morse('i', "..").
morse('j', ".---").
morse('k', "-.-").
morse('l', ".-..").
morse('m', "--").
morse('n', "-.").
morse('o', "---").
morse('p', ".--.").
morse('q', "--.-").
morse('r', ".-.").
morse('s', "...").
morse('t', "-").
morse('u', "..-").
morse('v', "...-").
morse('w', ".--").
morse('x', "-..-").
morse('y', "-.--").
morse('z', "--..").
% numbers
morse('1', ".----").
morse('2', "..---").
morse('3', "...--").
morse('4', "....-").
morse('5', ".....").
morse('6', "-....").
morse('7', "--...").
morse('8', "---..").
morse('9', "----.").
morse('0', "-----").
% common punctuation
morse('.', ".-.-.-").
morse(',', "--..--").
morse('/', "-..-.").
morse('?', "..--..").
morse('=', "-...-").
morse('+', ".-.-.").
morse('-', "-....-").
morse('@', ".--.-.").

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines text2morse/2 and never calls it; the driver runs morse-code-2's example text Hello World.
:- initialization((text2morse("Hello World", M), format("~w~n", [M]))).
%----------------------------------------------------- 277 multiplication-tables
make_table(S,E) :-
	print_header(S,E),
	make_table_rows(S,E),
	fail.
make_table(_,_).

print_header(S,E) :-
	nl,
	write('      '),
	forall(between(S,E,X), print_num(X)),
	nl,
	Sp is E * 4 + 2,
	write('    '),
	forall(between(1,Sp,_), write('-')).
	
make_table_rows(S,E) :-
	between(S,E,N),
	nl,
	print_num(N), write(': '),
	between(S,E,N2),
	X is N * N2,
	print_row_item(N,N2,X).
	
print_row_item(N, N2, _) :-
	N2 < N,
	write('    ').
print_row_item(N, N2, X) :-
	N2 >= N,
	print_num(X).
	
print_num(X) :- X < 10,	          format('   ~p', X).
print_num(X) :- between(10,99,X), format('  ~p', X).
print_num(X) :- X > 99,	          format(' ~p', X).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines make_table/2 and never calls it; the driver prints the task's 12x12 upper-triangle table.
:- initialization((make_table(1, 12), nl)).
%---------------------------------------------------------------- 278 multisplit
multisplit(_LSep, '') -->
	{!},
	[].

multisplit(LSep, T) -->
	{next_sep(LSep, T, [], Token, Sep, T1)},
	(   {Token \= '' },[Token], {!}; []),
	(   {Sep \= '' },[Sep], {!}; []),
	multisplit(LSep, T1).

next_sep([], T, Lst, Token, Sep, T1) :-
	% if we can't find any separator, the game is over
	(   Lst = [] ->
	Token = T, Sep = '', T1 = '';

	% we sort the list to get nearest longest separator
	predsort(my_sort, Lst, [(_,_, Sep)|_]),
	atomic_list_concat([Token|_], Sep, T),
	atom_concat(Token, Sep, Tmp),
	atom_concat(Tmp, T1, T)).

next_sep([HSep|TSep], T, Lst, Token, Sep, T1) :-
	sub_atom(T, Before, Len, _, HSep),
	next_sep(TSep, T, [(Before, Len,HSep) | Lst], Token, Sep, T1).

next_sep([_HSep|TSep], T, Lst, Token, Sep, T1) :-
	next_sep(TSep, T, Lst, Token, Sep, T1).


my_sort(<, (N1, _, _), (N2, _, _)) :-
	N1 < N2.

my_sort(>, (N1, _, _), (N2, _, _)) :-
	N1 > N2.

my_sort(>, (N, N1, _), (N, N2, _)) :-
	N1 < N2.

my_sort(<, (N, N1, _), (N, N2, _)) :-
	N1 > N2.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the multisplit//2 DCG and never calls it; the driver splits the task's a!===b=!=c on the separators ==, != and = and prints the tokens and separators.
:- initialization((phrase(multisplit(['==', '!=', '='], 'a!===b=!=c'), L), format("~w~n", [L]))).
%------------------------------------------------------------------- 279 mutex-2
synchronized_goal(G) :- with_mutex(my_mutex, call(G)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines synchronized_goal/1 and never calls it; the driver runs two goals in turn under its mutex my_mutex (with_mutex/2 creates it on first use).
:- initialization(forall(member(G, [writeln(first), writeln(second)]), synchronized_goal(G))).
%-------------------------------------------------------- 280 mutual-recursion-1
female(0,1).
female(N,F) :- N>0,
	       N1 is N-1,
	       female(N1,R),
	       male(R, R1),
	       F is N-R1.

male(0,0).
male(N,F) :- N>0,
	     N1 is N-1,
	     male(N1,R),
	     female(R, R1),
	     F is N-R1.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines female/2 and male/2 and never calls them; the driver prints F(n) and M(n) for n = 0..19.
:- initialization((forall(between(0, 19, N), (female(N, F), format("~w ", [F]))), nl, forall(between(0, 19, N), (male(N, M), format("~w ", [M]))), nl)).
%-------------------------------------------------------- 281 n-queens-problem-1
solution([]).

solution([X/Y|Others]) :-
 solution(Others),
 member(Y, [1,2,3,4,5,6,7,8]),
 noattack(X/Y, Others).

noattack(_,[]).

noattack(X/Y,[X1/Y1|Others]) :-
 Y =\= Y1,
 Y1 - Y =\= X1 - X,
 Y1 - Y =\= X - X1,
 noattack(X/Y,Others).

member(Item,[Item|Rest]).

member(Item,[First|Rest]) :-
 member(Item,Rest).

template([1/Y1,2/Y2,3/Y3,4/Y4,5/Y5,6/Y6,7/Y7,8/Y8]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines solution/1 and template/1 and never calls them; the driver prints every 8-queens solution and their count.
:- initialization((findall(S, (template(S), solution(S)), Ss), forall(member(S, Ss), format("~w~n", [S])), length(Ss, N), format("~w solutions~n", [N]))).
%-------------------------------------------------------- 282 n-queens-problem-2
solution(Queens) :-
 permutation([1,2,3,4,5,6,7,8], Queens),
 safe(Queens).

permutation([],[]).

permutation([Head|Tail],PermList) :-
 permutation(Tail,PermTail),
 del(Head,PermList,PermTail).

del(Item,[Item|List],List).

del(Item,[First|List],[First|List1]) :-
 del(Item,List,List1).

safe([]).

safe([Queen|Others]) :-
 safe(Others),
 noattack(Queen,Others,1).

noattack(_,[],_).

noattack(Y,[Y1|Ylist],Xdist) :-
 Y1-Y=\=Xdist,
 Y-Y1=\=Xdist,
 Dist1 is Xdist + 1,
 noattack(Y,Ylist,Dist1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines solution/1 and never calls it; the driver prints every 8-queens solution and their count.
:- initialization((findall(Q, solution(Q), Qs), forall(member(Q, Qs), format("~w~n", [Q])), length(Qs, N), format("~w solutions~n", [N]))).
%-------------------------------------------------------- 283 n-queens-problem-3
solution(Ylist) :-
 sol(Ylist,[1,2,3,4,5,6,7,8],
    [1,2,3,4,5,6,7,8],
    [-7,-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7],
    [2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]).

sol([],[],[],Du,Dv).

sol([Y|Ylist],[X|Dx1],Dy,Du,Dv) :-
 del(Y,Dy,Dy1),
 U is X-Y,
 del(U,Du,Du1),
 V is X+Y,
 del(V,Dv,Dv1),
 sol(Ylist,Dx1, Dy1,Du1,Dv1).

del(Item,[Item|List],List).

del(Item,[First|List],[First|List1]) :-
 del(Item,List,List1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines solution/1 and never calls it; the driver prints every 8-queens solution and their count.
:- initialization((findall(Q, solution(Q), Qs), forall(member(Q, Qs), format("~w~n", [Q])), length(Qs, N), format("~w solutions~n", [N]))).
%-------------------------------------------------------- 284 n-queens-problem-4
:- initialization(main).


queens(N,Qs) :- bagof(X, between(1,N,X), Xs), place(Xs,[],Qs).

place(Xs,Qs,Res) :-
    Xs = [] -> Res = Qs
  ; select(Q,Xs,Ys), not_diag(Q,Qs,1), place(Ys,[Q|Qs],Res)
  .

not_diag(_, []     , _).
not_diag(Q, [Qh|Qs], D) :-
     abs(Q - Qh) =\= D, D1 is D + 1, not_diag(Q,Qs,D1).


main :- findall(Qs, (queens(8,Qs), write(Qs), nl), _), halt.
%-------------------------------------------------------- 285 n-queens-problem-5
% 8 queens problem.
%  q(Row) represents a queen, allocated one per row. No rows ever clash.
%  The columns are chosen iteratively from available columns held in a
%  list, reduced with each allocation, so we need never check verticals.
%  For diagonals, we check prior to allocation whether each newly placed
%  queen will clash with any of the prior placements. This prevents
%  most invalid permutations from ever being attempted.
can_place(_, []) :- !.	   % success for empty board
can_place(q(R,C),Board) :- % check diagonals against allocated queens
	member(q(Ra,Ca), Board), abs(Ra-R) =:= abs(Ca-C), !, fail.
can_place(_,_).            % succeed if no diagonals failed

queens([], [], Board, Board).                            % found a solution
queens([q(R)|Queens], Columns, Board, Solution) :-
	nth0(_,Columns,C,Free), can_place(q(R,C),Board), % find all solutions
	queens(Queens,Free,[q(R,C)|Board], Solution).    % recursively

queens :-
  findall(q(N), between(0,7,N), Queens), findall(N, between(0,7,N), Columns),
  findall(B, queens(Queens, Columns, [], B), Boards),     % backtrack over all
  length(Boards, Len), writef('%w solutions:\n', [Len]),  % Output solutions
  member(R,Boards), reverse(R,Board), writef('  - %w\n', [Board]), fail.
queens.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines queens/0 and never calls it; the driver calls it once at load (the 92 boards of 8 queens).
:- initialization(queens).
%-------------------------------------------------------- 286 n-queens-problem-6
not_diagonal(X, N) :-
  maplist(plus, X, N, Z1), maplist(plus, X, Z2, N), is_set(Z1), is_set(Z2).

queens(N, Qs) :-
  numlist(1, N, P), findall(Q, (permutation(P, Q), not_diagonal(Q, P)), Qs).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines queens/2 and never calls it; the driver prints the solutions for N = 8 and their count.
:- initialization((queens(8, Qs), forall(member(Q, Qs), format("~w~n", [Q])), length(Qs, N), format("~w solutions~n", [N]))).
%-------------------------------------------------------- 287 n-queens-problem-8
:- use_module(library(clpfd)).

% DOC: http://www.pathwayslms.com/swipltuts/clpfd/clpfd.html
length_(Length, List) :- length(List, Length).

applyConstraints([]).
applyConstraints([ Q | Queens ]) :-
    checkConstraints(Q, Queens),
    applyConstraints(Queens).

checkConstraints(_, []).
checkConstraints([Row0, Col0], [ [Row1, Col1] | Queens]) :-
    Row0 #\= Row1,                 % No two queens on same row
    Col0 #\= Col1,                 % No two queens on same columns
    Row0 + Col0 #\= Row1 + Col1,   % Down diagonals: [8,1], [7,2], [6,3]
    Row0 - Col0 #\= Row1 - Col1,   % Up   diagonals: [1,1], [2,2], [3,3]
    checkConstraints([Row0,Col0], Queens).


% Optimization: pre-assign each queen to a named row
optimizeQueens(Queens) :- optimizeQueens(Queens, 1).
optimizeQueens([],_).
optimizeQueens([[Row,_] | Queens], Index) :-
    Row #= Index,
    NextIndex is Index + 1,
    optimizeQueens(Queens, NextIndex).


nqueens(N, Queens) :-
    % Function Preconditions
    N > 0,

    % Create 2D Datastructure for Queens
    length(Queens, N), maplist(length_(2), Queens),
    flatten(Queens, QueenArray),

    % Queens coords must be in range
    QueenArray ins 1..N,

    % Apply Constraints
    optimizeQueens(Queens),
    applyConstraints(Queens),

    % Solve
    label(QueenArray),
    true.


all_nqueens(N) :- all_nqueens(N, _).
all_nqueens(N, Solutions) :-
    findall(Queens, (nqueens(N,Queens), write(Queens), nl), Solutions),
    length(Solutions,Count),
    write(Count), write(' solutions'), nl,
    Count #>= 1.


print_nqueens_all(N)                 :- all_nqueens(N, Solutions), print_nqueens(N, Solutions).
print_nqueens(N)                     :- nqueens(N, Queens),        print_board(N, Queens).
print_nqueens(N, [Queens|Remaining]) :- print_count(Remaining),    print_board(N, Queens),    print_nqueens(N, Remaining).
print_nqueens(_, []).

print_count(Remaining) :- length(Remaining, Count), Count1 is Count + 1, nl, write('# '), write(Count1), nl.
print_board(N, [[_,Q] | Queens]) :- print_line(N, '-'), print_line(N, '|', Q), print_board(N, Queens).
print_board(N, [])  :- print_line(N, '-').
print_line(0,'-')   :- write('-'), nl.
print_line(N,'-')   :- write('----'), N1 is N-1, print_line(N1,'-').
print_line(0,'|',_) :- write('|'), nl.
print_line(N,'|',Q) :- write('|'), (( Q == N ) -> write(' Q ') ; write('   ')), N1 is N-1, print_line(N1,'|',Q).

%:- initialization main.
main :-
    print_nqueens_all(8).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%---------------------------------------------------------- 288 named-parameters
:- initialization(main).

main :-
	sum(b=2,output=Output,a=1),
	writeln(Output).

sum(A1,B1,C1) :-
	named_args([A1,B1,C1],[a=A,b=B,output=Output]),
	Output is A + B.

named_args([],_).
named_args([A|B],C) :-
	member(A,C),
	named_args(B,C).
%----------------------------------------------- 289 narcissistic-decimal-number
digits(0, []):-!.
digits(N, [D|DList]):-
	divmod(N, 10, N1, D),
	digits(N1, DList).

combi(0, _, []).
combi(N, [X|T], [X|Comb]):-
	N > 0,
	N1 is N - 1,
	combi(N1, [X|T], Comb).
combi(N, [_|T], Comb):-
	N > 0,
	combi(N, T, Comb).

powSum([], _, Sum, Sum).
powSum([D|DList], Pow, Acc, Sum):-
	Acc1 is Acc + D^Pow,
	powSum(DList, Pow, Acc1, Sum).

armstrong(Exp, PSum):-
	numlist(0, 9, DigList),
	(Exp > 1 ->
	  Min is 10^(Exp - 1)
	  ; Min is 0
	),
	Max is 10^Exp - 1,
	combi(Exp, DigList, Comb),
	powSum(Comb, Exp, 0, PSum),
	between(Min, Max, PSum),
	digits(PSum, DList),
	sort(0, @=<, DList, DSort),	% hold equal digits
	( DSort = Comb;
      PSum =:= 0,	% special case because
	  Comb = [0]	% DList in digits(0, DList) is [] and not [0]
	).
	
do:-between(1, 7, Exp),
	findall(ArmNum, armstrong(Exp, ArmNum), ATemp),
	sort(ATemp, AList),
	writef('%d -> %w\n', [Exp, AList]),
	fail.
do.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines do/0 and never calls it; the driver calls it once at load (the narcissistic numbers of 1..7 digits, the task's first 25).
:- initialization(do).
%---------------------------------------------------------- 290 neighbour-primes
primes(2, Limit):- 2 =< Limit.
primes(P, Limit):-
	between(3, Limit, P),
	P /\ 1 > 0,             % odd
	M is floor(sqrt(P)) - 1, % reverse 2*I+1
	Max is M div 2,
	forall(between(1, Max, I), P mod (2*I+1) > 0).

isPrime(P):-
	primes(P, inf).

primeProd(PList, [P1, P2]):-
	append(_, [P1, P2| _], PList),
	Prod is P1 * P2 + 2,
	isPrime(Prod).

showList(List):-
	findnsols(10, _, (member(Pair, List), format('~|~t(~d,~d)~9+ ', Pair)), _),
	nl,
	fail.
showList(_).

do:-Limit is 500,
	findall(P, primes(P, Limit), PrimeList),
	findall(Pair, primeProd(PrimeList, Pair), P1P2List),
	showList(P1P2List).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines do/0 and never calls it; the driver calls it once at load (the task's limit 500).
:- initialization(do).
%------------------------------------------------------------------ 291 nim-game
nim :- next_turn(12), !.

next_turn(N) :-
   % Player Turn
   format('How many dots would you like to take? '),
   read_line_to_codes(user_input, Line),
   number_codes(PlayerGuess, Line),
   member(PlayerGuess,[1,2,3]),
   N1 is N - PlayerGuess,
   format('You take ~d dots~n~d dots remaining.~n~n', [PlayerGuess, N1]),

   % Computer Turn
   CompGuess is 4 - PlayerGuess,
   N2 is N1 - CompGuess,
   format('Computer takes ~d dots~n~d dots remaining.~n~n', [CompGuess, N2]),
   (
      N2 = 0
      -> format('Computer wins!')
      ; next_turn(N2)
   ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines nim/0 and never calls it; nim-game.in holds the player's three moves 1, 2 and 3, after which the computer has taken the last of the 12 dots.
:- initialization((nim, nl)).
%--------------------------------------------------------- 292 nimber-arithmetic
% highest power of 2 that divides a given number
hpo2(N, P):-
    P is N /\ -N.

% base 2 logarithm of the highest power of 2 dividing a given number
lhpo2(N, Q):-
    hpo2(N, M),
    lhpo2_(M, 0, Q).

lhpo2_(M, Q, Q):-
    1 is M mod 2,
    !.
lhpo2_(M, Q1, Q):-
    M1 is M >> 1,
    Q2 is Q1 + 1,
    lhpo2_(M1, Q2, Q).

% nim-sum of two numbers
nimsum(X, Y, Sum):-
    Sum is X xor Y.

% nim-product of twp numbers
nimprod(X, Y, Product):-
    (X < 2 ; Y < 2),
    !,
    Product is X * Y.
nimprod(X, Y, Product):-
    hpo2(X, H),
    X > H,
    !,
    nimprod(H, Y, P1),
    X1 is X xor H,
    nimprod(X1, Y, P2),
    Product is P1 xor P2.
nimprod(X, Y, Product):-
    hpo2(Y, H),
    H < Y,
    !,
    nimprod(Y, X, Product).
nimprod(X, Y, Product):-
    lhpo2(X, Xp),
    lhpo2(Y, Yp),
    Comp is Xp /\ Yp,
    (Comp == 0 ->
        Product is X * Y
        ;
        hpo2(Comp, H),
        X1 is X >> H,
        Y1 is Y >> H,
        Z is 3 << (H - 1),
        nimprod(X1, Y1, P),
        nimprod(P, Z, Product)
     ).

print_row(N, B, Function):-
    writef('%3r |', [B]),
    Goal =.. [Function, A, B, C],
    forall(between(0, N, A), (Goal, writef('%3r', [C]))),
    nl.

print_table(N, Operator, Function):-
    writef('  %w |', [Operator]),
    forall(between(0, N, A), writef('%3r', [A])),
    writef('\n --- -', []),
    forall(between(0, N, _), writef('---', [])),
    nl,
    forall(between(0, N, A), print_row(N, A, Function)).

main:-
    print_table(15, '+', nimsum),
    nl,
    print_table(15, '*', nimprod),
    nl,
    A = 21508, B = 42689,
    nimsum(A, B, Sum),
    nimprod(A, B, Product),
    writef('%w + %w = %w\n', [A, B, Sum]),
    writef('%w * %w = %w\n', [A, B, Product]).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%--------------------------------------------- 293 non-continuous-subsequences-1
% fetch all the subsequences
ncsubs(L, LNCSL) :-
	setof(NCSL, one_ncsubs(L, NCSL), LNCSL).

% how to build one subsequence
one_ncsubs(L, NCSL) :-
	extract_elem(L, NCSL);
	(   sublist(L, L1),
	    one_ncsubs(L1, NCSL)).

% extract one element of the list
% this element is neither the first nor the last.
extract_elem(L, NCSL) :-
	length(L, Len),
	Len1 is Len - 2,
	between(1, Len1, I),
	nth0(I, L, Elem),
	select(Elem, L, NCS1),
	(   NCSL = NCS1; extract_elem(NCS1, NCSL)).

% extract the first or the last element of the list
sublist(L, SL) :-
	(L = [_|SL];
	reverse(L, [_|SL1]),
	reverse(SL1, SL)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines ncsubs/2 and never calls it; the driver prints the non-continuous subsequences of the task's 1..4 and of the sibling's example [a,e,i,o,u].
:- initialization(forall(member(L, [[1,2,3,4], [a,e,i,o,u]]), (ncsubs(L, S), format("~w: ~w~n", [L, S])))).
%--------------------------------------------------------- 294 nonogram-solver-1
/*
* Nonogram/paint-by-numbers solver in SWI-Prolog. Uses CLP(FD),
* in particular the automaton/3 (finite-state/RE) constraint.
* Copyright (c) 2011 Lars Buitinck.
* Do with this code as you like, but don't remove the copyright notice.
*/

:- use_module(library(clpfd)).

nono(RowSpec, ColSpec, Grid) :-
	rows(RowSpec, Grid),
	transpose(Grid, GridT),
	rows(ColSpec, GridT).

rows([], []).
rows([C|Cs], [R|Rs]) :-
	row(C, R),
	rows(Cs, Rs).

row(Ks, Row) :-
	sum(Ks, #=, Ones),
	sum(Row, #=, Ones),
	arcs(Ks, Arcs, start, Final),
	append(Row, [0], RowZ),
	automaton(RowZ, [source(start), sink(Final)], [arc(start,0,start) | Arcs]).

% Make list of transition arcs for finite-state constraint.
arcs([], [], Final, Final).
arcs([K|Ks], Arcs, CurState, Final) :-
	gensym(state, NextState),
	(   K == 0
	->  Arcs = [arc(CurState,0,CurState), arc(CurState,0,NextState) | Rest],
	    arcs(Ks, Rest, NextState, Final)
	;   Arcs = [arc(CurState,1,NextState) | Rest],
	    K1 #= K-1,
	    arcs([K1|Ks], Rest, NextState, Final)).


make_grid(Grid, X, Y, Vars) :-
	length(Grid,X),
	make_rows(Grid, Y, Vars).

make_rows([], _, []).
make_rows([R|Rs], Len, Vars) :-
	length(R, Len),
	make_rows(Rs, Len, Vars0),
	append(R, Vars0, Vars).

print([]).
print([R|Rs]) :-
	print_row(R),
	print(Rs).

print_row([]) :- nl.
print_row([X|R]) :-
	(   X == 0
	->  write(' ')
	;   write('x')),
	print_row(R).

nonogram(Rows, Cols) :-
	length(Rows, X),
	length(Cols, Y),
	make_grid(Grid, X, Y, Vars),
	nono(Rows, Cols, Grid),
	label(Vars),
	print(Grid).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines nonogram/2 and never calls it; the driver solves the task's first puzzle (rows C BA CB BB F AE F A B, columns AB CA AE GA E C D C, letters as numbers).
:- initialization(nonogram([[3],[2,1],[3,2],[2,2],[6],[1,5],[6],[1],[2]], [[1,2],[3,1],[1,5],[7,1],[5],[3],[4],[3]])).
%------------------------------------------------------------------ 295 nth-root
iroot(_, 0, 0) :- !.
iroot(M, N, R) :-
    M > 1,
    (N > 0 ->
        irootpos(M, N, R)
    ;
        N /\ 1 =:= 1,
        NegN is -N, irootpos(M, NegN, R0), R is -R0).

irootpos(N, A, R) :-
    X0 is 1 << (msb(A) div N),  % initial guess is 2^(log2(A) / N)
    newton(N, A, X0, X1),
    iroot_loop(A, X1, N, A, R).

iroot_loop(X1, X2, _, _, X1) :- X1 =< X2, !.
iroot_loop(_, X1, N, A, R) :-
    newton(N, A, X1, X2),
    iroot_loop(X1, X2, N, A, R).

newton(2, A, X0, X1) :- X1 is (X0 + A div X0) >> 1, !.  % fast special case
newton(N, A, X0, X1) :- X1 is ((N - 1)*X0 + A div X0**(N - 1)) div N.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines iroot/3 and never calls it; the driver prints integer M-th roots of a few numbers, sqrt(2) and cbrt(2) to many digits among them.
:- initialization(forall(member(M-N, [2-2, 3-1000, 5-100000, 2-(2*10**100), 3-(2*10**60)]), (A is N, iroot(M, A, R), format("~w root of ~w = ~w~n", [M, A, R])))).
%----------------------------------------------------------------------- 296 nth
nth(N, N_Th) :-
    ( tween(N)      -> Th = "th"
    ; 1 is N mod 10 -> Th = "st"
    ; 2 is N mod 10 -> Th = "nd"
    ; 3 is N mod 10 -> Th = "rd"
    ; Th = "th" ),
    string_concat(N, Th, N_Th).

tween(N) :- Tween is N mod 100, between(11, 13, Tween).

test :-
    forall( between(0,25, N),     (nth(N, N_Th), format('~w, ', N_Th)) ),
    nl, nl,
    forall( between(250,265,N),   (nth(N, N_Th), format('~w, ', N_Th)) ),
    nl, nl,
    forall( between(1000,1025,N), (nth(N, N_Th), format('~w, ', N_Th)) ).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines test/0 and never calls it; the driver calls it once at load.
:- initialization(test).
%-------------------------------------------------------------- 297 number-names
:- module(spell, [spell/2]).

%
% spell numbers up to the nonillions.
%

ones(1, "one").  ones(2, "two").    ones(3, "three").  ones(4, "four").  ones( 5, "five").
ones(6, "six").  ones(7, "seven").  ones(8, "eight").  ones(9, "nine").  ones(10, "ten").

ones(11, "eleven").     ones(12, "twelve").    ones(13, "thirteen").
ones(14, "fourteen").   ones(15, "fifteen").   ones(16, "sixteen").
ones(17, "seventeen").  ones(18, "eighteen").  ones(19, "nineteen").

tens(2, "twenty").  tens(3, "thirty").  tens(4, "forty").   tens(5, "fifty").
tens(6, "sixty").   tens(7, "seventy"). tens(8, "eighty").  tens(9, "ninety").

group( 1, "thousand").   group( 2, "million").      group(3, "bilion").
group( 4, "trillion").   group( 5, "quadrillion").  group(6, "quintillion").
group( 7, "sextilion").  group( 8, "septillion").   group(9, "octillion").
group(10, "nonillion").  group(11, "decillion").

spellgroup(N, G) :- G is floor(log10(N) / 3).

spell(N, S) :-
    N < 0, !,
    NegN is -N, spell(NegN, S0),
    string_concat("negative ", S0, S).
spell(0, "zero") :- !.
spell(N, S) :- between(1, 19, N), ones(N, S), !.
spell(N, S) :-
    N < 100, !,
    divmod(N, 10, Tens, Ones),
    tens(Tens, StrTens), ones_part(Ones, StrOnes),
    string_concat(StrTens, StrOnes, S).
spell(N, S) :-
    N < 1000, !,
    divmod(N, 100, Hundreds, Tens),
    ones(Hundreds, H), string_concat(H, " hundred", StrHundreds),
    tens_part(Tens, StrTens),
    string_concat(StrHundreds, StrTens, S).
spell(N, S) :-
    spellgroup(N, G), group(G, StrG),
    M is 10**(3*G), divmod(N, M, Group, Rest),
    spell(Group, S1),
    spell_remaining(Rest, S2),
    format(string(S), "~w ~w~w", [S1, StrG, S2]).

ones_part(0, "") :- !.
ones_part(N, S) :-
    ones(N, StrN),
    string_concat("-", StrN, S).

tens_part(0, "") :- !.
tens_part(N, S) :-
    spell(N, Tens),
    string_concat(" and ", Tens, S).

spell_remaining(0, "") :- !.
spell_remaining(N, S) :-
    spell(N, Rest),
    string_concat(", ", Rest, S).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines spell/2 and never calls it; the driver spells a range of numbers, a negative and a large one.
:- initialization(forall(member(N, [0, 7, 13, 21, 99, 100, 101, 999, 1000, 1001, 12345, 1000000, 123456789, -42, 9007199254740991]), (spell(N, S), format("~w: ~w~n", [N, S])))).
%------------------------------------------------------ 298 number-reversal-game
play :- random_numbers(L), do_turn(0,L), !.

do_turn(N, L) :-
	print_list(L),
	how_many_to_flip(F),
	flip(L,F,[],Lnew),
	succ(N,N1),
	sorted(N1,Lnew).

how_many_to_flip(F) :-
	read_line_to_codes(user_input, Line),
	number_codes(F, Line),
	between(1,9,F).
	
flip(L,0,C,R) :- append(C,L,R).
flip([Ln|T],N,C,R) :- dif(N,0), succ(N0,N), flip(T,N0,[Ln|C],R).
	
sorted(N,L) :-
	sort(L,L)
	-> print_list(L), format('-> ~p~n', N)
	; do_turn(N,L).	

random_numbers(L) :- random_permutation([1,2,3,4,5,6,7,8,9],L).

print_list(L) :-
	atomic_list_concat(L, ' ', Lf),
	format('(~w) ',Lf).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): play/0 deals the digits with random_permutation/2; the driver plays the same game, do_turn/2, from the fixed list 2 3 1 4 5 6 7 8 9 with the flips 2 and 3 in number-reversal-game.in.
:- initialization(do_turn(0, [2, 3, 1, 4, 5, 6, 7, 8, 9])).
%--------------------------------- 299 numbers-with-prime-digits-whose-sum-is-13
digit_sum(N, M) :- digit_sum(N, 0, M).
digit_sum(0, A, B) :- !, A = B.
digit_sum(N, A0, M) :-
    divmod(N, 10, Q, R),
    plus(A0, R, A1),
    digit_sum(Q, A1, M).

prime_digits(0).
prime_digits(N) :-
    prime_digits(M),
    member(D, [2, 3, 5, 7]),
    N is 10 * M + D.	

prime13(N) :-
    prime_digits(N),
    (N > 333_333 -> !, false ; true),
    digit_sum(N, 13).

main :-
    findall(N, prime13(N), S),
    format("Those numbers whose digits are all prime and sum to 13 are: ~n~w~n", [S]),
    halt.

?- main.
%---------------------------- 300 numerical-integration-adaptive-simpsons-method
%%% -*- mode: prolog; prolog-indent-width: 2; -*-

main :-
  quad_asr(sine, 0.0, 1.0, 0.000000001, 1000, QuadVal),
  write('estimate of ∫ sin x dx from 0 to 1: '),
  write(QuadVal),
  write('\n'),
  halt.

sine(X, Y) :- Y is sin(X).

quad_asr(F, A, B, Tol, Depth, QuadVal) :-
  call(F, A, FA),
  call(F, B, FB),
  simpson_rule(F, A, FA, B, FB, M, FM, Whole),
  recursive_simpson(F, A, FA, B, FB, Tol, Whole, M, FM, Depth,
                    QuadVal).

recursive_simpson(F, A, FA, B, FB, Tol, Whole, M, FM, Depth,
                  QuadVal) :-
  simpson_rule(F, A, FA, M, FM, LM, FLM, Left),
  simpson_rule(F, M, FM, B, FB, RM, FRM, Right),
  Delta is (Left + Right - Whole),
  Tol_ is (0.5 * Tol),
  ((Depth > 0,
    Tol_ =\= Tol,
    AbsDelta is abs(Delta),
    Tol15 is (15.0 * Tol),
    AbsDelta > Tol15)
  -> (Depth_ is Depth - 1,
      recursive_simpson(F, A, FA, M, FM, Tol_, Left, LM, FLM,
                        Depth_, QuadValLeft),
      recursive_simpson(F, M, FM, B, FB, Tol_, Right, RM, FRM,
                        Depth_, QuadValRight),
      QuadVal is QuadValLeft + QuadValRight)
  ;  left_right_estimate(Left, Right, Delta, QuadVal)).

left_right_estimate(Left, Right, Delta, Estimate) :-
  Estimate is Left + Right + (Delta / 15.0).

simpson_rule(F, A, FA, B, FB, M, FM, QuadVal) :-
  M is (0.5 * (A + B)),
  call(F, M, FM),
  QuadVal is ((B - A) / 6.0) * (FA + (4.0 * FM) + FB).

:- initialization(main).
%------------------------------------------------- 301 odd-squarefree-semiprimes
oddPrimes(3, Limit):- 3 =< Limit.
oddPrimes(N, Limit):-
	between(5, Limit, N),
	N /\ 1 > 0,             % odd
	N mod 3 > 0,		    % \= 3*i
	M is floor(sqrt(N)) + 1, % reverse 6*I-1
	Max is M div 6,
	forall(between(1, Max, I), (N mod (6*I-1) > 0, N mod (6*I+1) > 0)).

merge([], Sort, Sort).
merge([X|Sort1], [Y|Sort2], [X|Sort]):-
	X < Y,!,
	merge(Sort1, [Y|Sort2], Sort).
merge(Sort1, [Y|Sort2], [Y|Sort]):-
	merge(Sort2, Sort1, Sort).

semiPrimes(PList, Limit, SpList):-
	semiPrimes(PList, Limit, [], SpList).

semiPrimes([], _, Acc, Acc).	% odd, squarefree generator
semiPrimes([P|PList], Limit, Acc, SpList):-
	findall(Sp, (member(X, PList), X =< Limit div P, Sp is P * X), MList),
	MList = [_|_],!,
	merge(Acc, MList, Acc1),
	semiPrimes(PList, Limit, Acc1, SpList).
semiPrimes(_, _, Acc, Acc).

showList(List):-
	findnsols(20, X, (member(X, List), writef('%4r', [X])), _SubList), nl,
	fail.
showList(_).
	
do:-Limit is 1000,
	PLimit is Limit div 3,
	findall(N, oddPrimes(N, PLimit), PList),
	semiPrimes(PList, Limit, SpList),!,
	showList(SpList).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines do/0 and never calls it; the driver calls it once at load (the task's limit 1000).
:- initialization(do).
%---------------------------------------------------------- 302 odd-word-problem
% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
odd_word_problem :-
	read_line_to_codes(user_input, L),
	even_word(L, Out, []),
	string_to_list(Str, Out),
	writeln(Str).

even_word(".") --> ".".

even_word([H | T]) -->
	{char_type(H,alnum)},
	[H],
	even_word(T).

even_word([H | T]) -->
	[H],
	odd_word(T, []).

odd_word(".", R) --> R, ".".

odd_word([H|T], R) -->
	{char_type(H,alnum)},
	odd_word(T, [H | R]).

odd_word([H|T], R) -->
	R,
	[H],
	even_word(T).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines odd_word_problem/0 and never calls it; written for code lists (even_word//1 matches "." against read codes), so the flag is set at its head; odd-word-problem.in holds the task's two sentences, one a line, and the driver runs it once per line.
:- initialization(forall(between(1, 2, _), odd_word_problem)).
%------------------------------------------- 303 old-russian-measure-of-length-1
:- module(old_russian_unit_conversion, [convert/2]).
:- set_prolog_flag(prefer_rationals, true).     % Int/Int --> Rational
:- set_prolog_flag(rational_syntax,  natural).  % Write as `1/3`
:- use_module(library(clpq)).

%   The core conversion logic

convert(A, B) :- convert_shag(A, S), convert_shag(B, S).

convert_shag(tochka(T), S)       :- { S / T  = 1 / 2800 }.
convert_shag(millimetre(MM), S)  :- { S / MM = 10 / 7112 }.
convert_shag(liniya(L), S)       :- { S / L  = 1 / 280  }.
convert_shag(centimetre(CM), S)  :- { S / CM = 100 / 7112 }.
convert_shag(dyuym(D), S)        :- { S / D  = 1 / 28 }.
convert_shag(vyershok(V), S)     :- { S / V  = 1 / 16 }.
convert_shag(ladon(L), S)        :- { S / L  = 3 / 28 }.
convert_shag(pyad(P), S)         :- { S / P  = 1 / 4 }.
convert_shag(fut(F), S)          :- { S / F  = 3 / 7 }.
convert_shag(lokot(L), S)        :- { S / L  = 9 / 14  }.
convert_shag(shag(S), S).
convert_shag(metre(M), S)        :- {  M / S = 7112 / 10000 }.
convert_shag(sazhen(Sz), S)      :- { Sz / S = 1 / 3 }.
convert_shag(kilometre(KM), S)   :- { KM / S = 10668 / 15000000 }.
convert_shag(vyersta(V), S)      :- {  V / S = 1 / 1500  }.

%   The command line interface

:- initialization(main, main).

main([AmountA, UnitA]) :-
    atom_number(AmountA, NumberA),
    build_term(UnitA, NumberA, TermA),
    !,
    format("~w ~w is~n", [AmountA, UnitA]),
    functor(TermA, NormalisedA, _),
    foreach(
        (   convert(TermA, TermB),
            TermB =.. [UnitB, NumberB],
            UnitB \= NormalisedA
        ),
        format("~|~` t~f~20+ ~w~n", [NumberB, UnitB])
    ).

main([AmountA, UnitA, UnitB]) :-
    atom_number(AmountA, NumberA),
    build_term(UnitA, NumberA, TermA),
    build_term(UnitB, NumberB, TermB),
    !,
    convert(TermA, TermB),
    format("~w ~w is ~f ~w~n", [AmountA, UnitA, NumberB, UnitB]).

main(_) :- with_output_to(user_error, format("Invalid argument~n", [])), halt(22).

build_term(A0, N, T) :- normalise(A0, A), T =.. [A, N].

% user input normalisation

normalise(millimetre, millimetre).
normalise(millimeter, millimetre).
normalise(millimetres, millimetre).
normalise(millimeters, millimetre).
normalise(centimetre, centimetre).
normalise(centimeter, centimetre).
normalise(centimetre, centimetre).
normalise(centimetres, centimetre).
normalise(metre, metre).
normalise(meter, metre).
normalise(meters, metre).
normalise(metres, metre).
normalise(kilometre, kilometre).
normalise(kilometer, kilometre).
normalise(kilometers, kilometre).
normalise(kilometres, kilometre).
normalise(tochka, tochka).
normalise(точка, tochka).
normalise(liniya, liniya).
normalise(линия, liniya).
normalise(dyuym, dyuym).
normalise(дюйм, dyuym).
normalise(pyerst, dyuym).
normalise(перст, dyuym).
normalise(vyershok, vyershok).
normalise(вершок, vyershok).
normalise(ladon, ladon).
normalise(ладонь, ladon).
normalise(pyad, pyad).
normalise(пядь, pyad).
normalise(четверть, pyad).
normalise(chyetvyert, pyad).
normalise(fut, fut).
normalise(фут, fut).
normalise(lokot, lokot).
normalise(локоть, lokot).
normalise(shag, shag).
normalise(шаг, shag).
normalise(arshin, shag).
normalise(аршин, shag).
normalise(sazhen, sazhen).
normalise(сажень, sazhen).
normalise(vyersta, vyersta).
normalise(верста, vyersta).
%---------------------------------------------------------- 304 orbital-elements
:- use_module(library(clpr)).

v3_add(v(X1,Y1,Z1),v(X2,Y2,Z2),v(X,Y,Z)) :-
	{ X = X1 + X2 },
	{ Y = Y1 + Y2 },
	{ Z = Z1 + Z2 }.
	
v3_mul(v(X1,Y1,Z1),M,v(X,Y,Z)) :-
	{ X = X1 * M },
	{ Y = Y1 * M },
	{ Z = Z1 * M }.
	
v3_muladd(V1,X1,V2,X2,R) :-
	v3_mul(V1,X1,V1X1),
	v3_mul(V2,X2,V2X2),
	v3_add(V1X1,V2X2,R).
	
v3_rotate(IV, JV, Alpha, R1, R2) :-
	{ SinA = sin(Alpha) },
	{ CosA = cos(Alpha) },
	{ NegSinA = 0 - SinA },
	v3_muladd(IV, CosA, JV, SinA, R1),
	v3_muladd(IV, NegSinA, JV, CosA, R2).
	
v3_abs(v(X,Y,Z), Abs) :- { Abs = (X * X + Y * Y + Z * Z) ^ 0.5 }.
	
orbital_state_vectors(
	o(SemiMajor,Ecc,Inc,LongAscNode,ArgPer,TrueAnon),
	Position,
	Speed) :-
	
	v3_rotate(v(1,0,0),v(0,1,0),LongAscNode,I1,J1),	
	v3_rotate(J1,v(0,0,1),Inc,J2,_),
	v3_rotate(I1,J2,ArgPer,I,J),
	
	find_l(Ecc, SemiMajor, L),
	
	{ C = cos(TrueAnon) },
	{ S = sin(TrueAnon) },
	{ R = L / (1.0 + Ecc * C ) },
	{ RPrime = S * R * R / L },
	
	v3_muladd(I, C, J, S, P1),
	v3_mul(P1, R, Position),
	
	{ SpeedIr = RPrime * C - R * S },
	{ SpeedJr = RPrime * S + R * C },
	v3_muladd(I, SpeedIr, J, SpeedJr, SpeedA),
	v3_abs(SpeedA, SpeedAbs),
	v3_mul(SpeedDiv, SpeedAbs, SpeedA),
	{ Sf = (2.0 / R - 1.0 / SemiMajor ) ^ 0.5 },
	v3_mul(SpeedDiv, Sf, Speed).
	
	
find_l(1.0, SemiMajor, L) :-
	{ L = SemiMajor * 2.0 }.
find_l(Ecc, SemiMajor, L) :-
	dif(Ecc,1.0),
	{ L = SemiMajor * (1.0 - Ecc * Ecc) }.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines orbital_state_vectors/3 and never calls it; the driver runs the task's elements (a 1, e 0.1, i 0, node 355/(113*6), periapsis 0, true anomaly 0).
:- initialization((orbital_state_vectors(o(1.0, 0.1, 0.0, 355.0/(113*6), 0.0, 0.0), P, S), format("position: ~w~nspeed: ~w~n", [P, S]))).
%----------------------------------------------- 305 order-by-pair-comparisons-1
ask_sort(List, Sorted) :- predsort(ask, List, Sorted).

ask(Cmp, Left, Right) :-
    format("Comparing ~w with ~w:   ", [Left, Right]),
    get_single_char(Cmp0),
    char_code(Cmp1, Cmp0),
    (   memberchk(Cmp1, [<, =, >])
    ->  Cmp = Cmp1,
        writeln(Cmp1)
    ;   format("Please answer <, = or >."),
        ask(Cmp, Left, Right)
    ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines ask_sort/2 and never calls it; the driver sorts the task's seven colours, order-by-pair-comparisons-1.in holding the answers to each comparison, one a line (get_single_char/1).
:- initialization((ask_sort(["violet", "red", "green", "indigo", "blue", "yellow", "orange"], S), format("~w~n", [S]))).
%---------------------------------------------------- 306 palindrome-detection-1
palindrome(Word) :- name(Word,List), reverse(List,List).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines palindrome/1 and never calls it; the driver tests a few palindromes and non-palindromes.
:- initialization(forall(member(W, [racecar, rotor, abba, a, '', ab, palindrome]), ((palindrome(W) -> R = yes ; R = no), format("~q: ~w~n", [W, R])))).
%---------------------------------------------------- 307 palindrome-detection-2
pali(Str) :- sub_string(Str, 0, 1, _, X), string_concat(Str2, X, Str), string_concat(X, Mid, Str2), pali(Mid).
pali(Str) :- string_length(Str, Len), Len < 2.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines pali/1 over strings and never calls it; the driver tests a few palindromes and non-palindromes.
:- initialization(forall(member(W, ["racecar", "rotor", "abba", "a", "", "ab", "palindrome"]), ((pali(W) -> R = yes ; R = no), format("~q: ~w~n", [W, R])))).
%---------------------------------------------------- 308 palindrome-detection-3
pali(Str) :- sub_atom(Str, 0, 1, _, X), atom_concat(Str2, X, Str), atom_concat(X, Mid, Str2), pali(Mid).
pali(Str) :- atom_length(Str, Len), Len < 2.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines pali/1 over atoms and never calls it; the driver tests a few palindromes and non-palindromes.
:- initialization(forall(member(W, [racecar, rotor, abba, a, '', ab, palindrome]), ((pali(W) -> R = yes ; R = no), format("~q: ~w~n", [W, R])))).
%------------------------------------------------ 309 palindromic-gapful-numbers
init_palindrome(Digit, p(10, Next, 0)):-
    Next is Digit * 10 - 1.

next_palindrome(Digit, p(Power, Next, Even), p(Power1, Next2, Even1), Palindrome):-
    Next1 is Next + 1,
    (Next1 is Power * (Digit + 1) ->
        (Even == 1 -> Power1 is Power * 10 ; Power1 = Power),
        Next2 is Digit * Power1,
        Even1 is 1 - Even
        ;
        Power1 = Power,
        Next2 = Next1,
        Even1 = Even
    ),
    (Even1 == 1 ->
        X is 10 * Power1, Y = Next2
        ;
        X = Power1, Y is Next2 // 10
    ),
    reverse_number(Y, Z),
    Palindrome is Next2 * X + Z.

reverse_number(N, R):-
    reverse_number(N, 0, R).

reverse_number(0, Result, Result):-
    !.
reverse_number(N, R, Result):-
    R1 is R * 10 + N mod 10,
    N1 is N // 10,
    reverse_number(N1, R1, Result).

is_gapful(N):-
    is_gapful(N, N).

is_gapful(N, M):-
    M < 10,
    !,
    0 is N mod (N mod 10 + 10 * (M mod 10)).
is_gapful(N, M):-
    M1 is M // 10,
    is_gapful(N, M1).

find_palindromic_gapful_numbers(N, List):-
    find_palindromic_gapful_numbers(N, 1, List).

find_palindromic_gapful_numbers(_, 10, []):-
    !.
find_palindromic_gapful_numbers(N, Digit, [Numbers|Rest]):-
    find_palindromic_gapful_numbers1(Digit, N, Numbers),
    Next_digit is Digit + 1,
    find_palindromic_gapful_numbers(N, Next_digit, Rest).

find_palindromic_gapful_numbers1(Digit, N, List):-
    init_palindrome(Digit, P),
    find_palindromic_gapful_numbers1(Digit, P, N, 0, List).

find_palindromic_gapful_numbers1(_, _, N, N, []):-
    !.
find_palindromic_gapful_numbers1(Digit, P, N, Count, List):-
    next_palindrome(Digit, P, P_next, Palindrome),
    (is_gapful(Palindrome) ->
        Count1 is Count + 1,
        List = [Palindrome|Rest]
        ;
        Count1 = Count,
        List = Rest
    ),
    find_palindromic_gapful_numbers1(Digit, P_next, N, Count1, Rest).

print_numbers(First, Last, Numbers):-
    (First == 1 ->
        writef("First %w palindromic gapful numbers ending in:\n", [Last])
        ;
        Count is Last - First + 1,
        writef("Last %w of first %w palindromic gapful numbers ending in:\n", [Count, Last])
    ),
    print_numbers(First, Last, 1, Numbers),
    nl.

print_numbers(_, _, 10, _):-
    !.
print_numbers(First, Last, Digit, [N|Numbers]):-
    writef("%w:", [Digit]),
    print_numbers1(First, Last, 1, N),
    Next_digit is Digit + 1,
    print_numbers(First, Last, Next_digit, Numbers).

print_numbers1(_, Last, I, _):-
    I > Last,
    nl,
    !.
print_numbers1(First, Last, I, [_|Numbers]):-
    I < First,
    !,
    J is I + 1,
    print_numbers1(First, Last, J, Numbers).
print_numbers1(First, Last, I, [N|Numbers]):-
    writef(" %w", [N]),
    J is I + 1,
    print_numbers1(First, Last, J, Numbers).

main:-
    find_palindromic_gapful_numbers(1000, Numbers),
    print_numbers(1, 20, Numbers),
    print_numbers(86, 100, Numbers),
    print_numbers(991, 1000, Numbers).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%----------------------------------------------------------- 310 pangram-checker
% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
pangram(L) :-
	numlist(0'a, 0'z, Alphabet),
	forall(member(C, Alphabet), member(C, L)).

pangram_example :-
	L1 = "the quick brown fox jumps over the lazy dog",
	(   pangram(L1) -> R1= ok; R1 = ko),
	format('~s --> ~w ~n', [L1,R1]),

	L2 = "the quick brown fox jumped over the lazy dog",
	(   pangram(L2) -> R2 = ok; R2 = ko),
	format('~s --> ~w ~n', [L2, R2]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines pangram_example/0 and never calls it; written for code lists (member/2 over "..."), so the flag is set at its head and the driver calls it once at load.
:- initialization(pangram_example).
%--------------------------------------------------- 311 parametric-polymorphism
% Tree Definition
tree(leaf(_)).
tree(branch(Left, Right)) :- tree(Left), tree(Right).

% Definition of the addone function
addone(X, Y) :- Y is X + 1.

% Definition of treewalk
treewalk(leaf(Value), Func, leaf(NewValue)) :- call(Func, Value, NewValue).
treewalk(branch(Left, Right), Func, branch(NewLeft, NewRight)) :-
     treewalk(Left, Func, NewLeft),
     treewalk(Right, Func, NewRight).

% Execution
run :-
     X = branch(leaf(2), branch(leaf(3),leaf(4))),
     treewalk(X, addone, Y),
     write(Y).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines run/0 and never calls it; the driver calls it once at load.
:- initialization(run).
%-------------------------------------------- 312 parse-command-line-arguments-1
:- initialization(main, main).

main(Argv) :-
	opt_spec(Spec),
	opt_parse(Spec, Argv, Opts, _),	
	(
		member(help(true), Opts) -> show_help
		; maplist(format('~w~n'), Opts)
	).
		
show_help :-
	opt_spec(Spec),		
	opt_help(Spec, HelpText),
	write('Usage: swipl opts.pl <options>\n\n'),
	write(HelpText).
	
opt_spec([
	[opt(help),
		type(boolean),
		default(false),
		shortflags([h]),
		longflags([help]),
		help('Show Help')],
		
	[opt(noconnect),
		type(boolean),
		default(false),
		shortflags([n]),
		longflags([noconnect]),
		help('do not connect, just check server status')],
		
	[opt(server),
		type(atom),
		default('www.google.com'),
		shortflags([s]),
		longflags([server]),
		help('The server address.')],
		
	[opt(port),
		type(integer),
		default(5000),
		shortflags([p]),
		longflags([port]),
		help('The server port.')]	
]).
%------------------------------------------ 313 parsing-rpn-calculator-algorithm
rpn(L) :-
	writeln('Token  Action                             Stack'),
	parse(L, [],[X] ,[]),
	format('~nThe final output value is ~w~n', [X]).

% skip spaces
parse([X|L], St) -->
	{char_type(X, white)},
	parse(L, St).

% detect operators
parse([Op|L], [Y, X | St]) -->
	{ is_op(Op, X, Y, V),
	  writef('    %s', [[Op]]),
	  with_output_to(atom(Str2), writef('Apply %s on top of stack', [[Op]])),
	  writef('  %35l', [Str2]),
	  writef('%w\n', [[V | St]])},
	parse(L, [V | St]).

% detect number
parse([N|L], St) -->
	{char_type(N, digit)},
	parse_number(L, [N], St).

% string is finished
parse([], St) --> St.

% compute numbers
parse_number([N|L], NC, St) -->
	{char_type(N, digit)},
	parse_number(L, [N|NC], St).

parse_number(S, NC, St) -->
	{ reverse(NC, RNC),
	  number_chars(V, RNC),
	  writef('%5r', [V]),
	  with_output_to(atom(Str2), writef('Push num %w on top of stack', [V])),
	  writef('  %35l', [Str2]),
	  writef('%w\n', [[V | St]])},
	parse(S, [V|St]).

% defining operations
is_op(42, X, Y, V) :-	V is X*Y.
is_op(43, X, Y, V) :-	V is X+Y.
is_op(45, X, Y, V) :-	V is X-Y.
is_op(47, X, Y, V) :-	V is X/Y.
is_op(94, X, Y, V) :-	V is X**Y.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines rpn/1 over a code list and never calls it; the driver runs the task's expression 3 4 2 * 1 5 - 2 3 ^ ^ / +.
:- initialization((atom_codes('3 4 2 * 1 5 - 2 3 ^ ^ / +', L), rpn(L))).
%---------------------------------------------- 314 partial-function-application
fs(P, S, S1) :-
	maplist(P, S, S1).

f1(X, Y) :-
	Y is 2 * X.

f2(X, Y) :-
	Y is X * X.

create_partial(P, fs(P)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fs :-
	% partial functions
	create_partial(f1, FSF1),
	create_partial(f2, FSF2),

	S1 = [0,1,2,3],
	call(FSF1,S1, S11), format('~w : ~w ==> ~w~n',[FSF1, S1, S11]),
	call(FSF1,S1, S12), format('~w : ~w ==> ~w~n',[FSF2, S1, S12]),

	S2 = [2,4,6,8],
	call(FSF1,S2, S21), format('~w : ~w ==> ~w~n',[FSF2, S2, S21]),
	call(FSF2,S2, S22), format('~w : ~w ==> ~w~n',[FSF1, S2, S22]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines fs/0 and never calls it; the driver calls it once at load.
:- initialization(fs).
%------------------------------------ 315 partition-an-integer-x-into-n-primes-2
:- module(prime_numbers, [find_prime_numbers/1, is_prime/1]).
:- dynamic is_prime/1.

find_prime_numbers(N):-
    retractall(is_prime(_)),
    assertz(is_prime(2)),
    init_sieve(N, 3),
    sieve(N, 3).

init_sieve(N, P):-
    P > N,
    !.
init_sieve(N, P):-
    assertz(is_prime(P)),
    Q is P + 2,
    init_sieve(N, Q).

sieve(N, P):-
    P * P > N,
    !.
sieve(N, P):-
    is_prime(P),
    !,
    S is P * P,
    cross_out(S, N, P),
    Q is P + 2,
    sieve(N, Q).
sieve(N, P):-
    Q is P + 2,
    sieve(N, Q).

cross_out(S, N, _):-
    S > N,
    !.
cross_out(S, N, P):-
    retract(is_prime(S)),
    !,
    Q is S + 2 * P,
    cross_out(Q, N, P).
cross_out(S, N, P):-
    Q is S + 2 * P,
    cross_out(Q, N, P).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this file is the sieve module (find_prime_numbers/1, is_prime/1) of the solution and never calls it; the driver sieves to 100 and prints the primes it leaves.
:- initialization((find_prime_numbers(100), findall(P, is_prime(P), Ps), format("~w~n", [Ps]))).
%-------------------------------------------------------- 316 pascals-triangle-3
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% Produce a pascal's triangle of depth N
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%  Prolog is declarative.  The predicate pascal/3 below says that to produce
%  a row of depth N, we can do so by first producing the row at depth(N-1),
%  and then adding the paired values in that row.  The triangle is produced
%  by prepending the row at N-1 to the preceding rows as recursion unwinds.
%  The triangle produced by pascal/3 is upside down and lacks the last row,
%  so pascal/2 prepends the last row to the triangle and reverses it.
%  Finally, pascal/1 produces the triangle, iterates each row and prints it.
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
pascal_row([V], [V]).                           % No more value pairs to add
pascal_row([V0, V1|T], [V|Rest]) :-             % Add values from preceding row
    V is V0 + V1, !, pascal_row([V1|T], Rest).  % Drops initial value (1).

pascal(1, [1], []).    % at depth 1, this row is [1] and no preceding rows.
pascal(N, [1|ThisRow], [Last|Preceding]) :- % Produce a row of depth N
    succ(N0, N),                            % N is the successor to N0
    pascal(N0, Last, Preceding),            % Get the previous row
    !, pascal_row(Last, ThisRow).           % Calculate this row from the previous

pascal(N, Triangle) :-
   pascal(N, Last, Rows),             % Retrieve row at depth N and preceding rows
   !, reverse([Last|Rows], Triangle). % Add last row to triangle and reverse order

pascal(N) :-
  pascal(N, Triangle), member(Row, Triangle), % Iterate and write each row
  write(Row), nl, fail.
pascal(_).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines pascal/1 and never calls it; the driver runs pascals-triangle-4's example pascal(5).
:- initialization(pascal(5)).
%--------------------------------------------------- 317 pascals-triangle-puzzle
:- use_module(library(clpfd)).

puzzle(Ts, X, Y, Z) :-
    Ts =   [ [151],
            [_, _],
          [40, _, _],
         [_, _, _, _],
       [X, 11, Y, 4, Z]],
    Y #= X + Z, triangle(Ts), append(Ts, Vs), Vs ins 0..sup, label(Vs).

triangle([T|Ts]) :- ( Ts = [N|_] -> triangle_(T, N), triangle(Ts) ; true ).

triangle_([], _).
triangle_([T|Ts], [A,B|Rest]) :- T #= A + B, triangle_(Ts, [B|Rest]).

% ?- puzzle(_,X,Y,Z).
% X = 5,
% Y = 13,
% Z = 8 ;

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines puzzle/4 and never calls it; the driver prints the first solution of its comment's example, the solved rows and X, Y, Z.
:- initialization((once(puzzle(Ts, X, Y, Z)), forall(member(T, Ts), format("~w~n", [T])), format("X = ~w, Y = ~w, Z = ~w~n", [X, Y, Z]))).
%--------------------------------------------------------------- 318 peano-curve
main:-
    write_peano_curve('peano_curve.svg', 656, 4).

write_peano_curve(File, Size, Order):-
    open(File, write, Stream),
    format(Stream,
           "<svg xmlns='http://www.w3.org/2000/svg' width='~d' height='~d'>\n",
           [Size, Size]),
    write(Stream, "<rect width='100%' height='100%' fill='white'/>\n"),
    peano_curve(Stream, "L", 8, 8, 8, 90, Order),
    write(Stream, "</svg>\n"),
    close(Stream).

peano_curve(Stream, Axiom, X, Y, Length, Angle, Order):-
    write(Stream, "<path stroke-width='1' stroke='black' fill='none' d='"),
    format(Stream, 'M~g,~g\n', [X, Y]),
    rewrite(Axiom, Order, S),
    string_chars(S, Chars),
    execute(Stream, X, Y, Length, Angle, Chars),
    write(Stream, "'/>\n").

rewrite(S, 0, S):-!.
rewrite(S0, N, S):-
    string_chars(S0, Chars0),
    rewrite1(Chars0, '', S1),
    N1 is N - 1,
    rewrite(S1, N1, S).

rewrite1([], S, S):-!.
rewrite1([C|Chars], T, S):-
    rewrite2(C, X),
    string_concat(T, X, T1),
    rewrite1(Chars, T1, S).

rewrite2('L', "LFRFL-F-RFLFR+F+LFRFL"):-!.
rewrite2('R', "RFLFR+F+LFRFL-F-RFLFR"):-!.
rewrite2(X, X).

execute(_, _, _, _, _, []):-!.
execute(Stream, X, Y, Length, Angle, ['F'|Chars]):-
    !,
    Theta is (pi * Angle) / 180.0,
    X1 is X + Length * cos(Theta),
    Y1 is Y + Length * sin(Theta),
    format(Stream, 'L~g,~g\n', [X1, Y1]),
    execute(Stream, X1, Y1, Length, Angle, Chars).
execute(Stream, X, Y, Length, Angle, ['+'|Chars]):-
    !,
    Angle1 is (Angle + 90) mod 360,
    execute(Stream, X, Y, Length, Angle1, Chars).
execute(Stream, X, Y, Length, Angle, ['-'|Chars]):-
    !,
    Angle1 is (Angle - 90) mod 360,
    execute(Stream, X, Y, Length, Angle1, Chars).
execute(Stream, X, Y, Length, Angle, [_|Chars]):-
    execute(Stream, X, Y, Length, Angle, Chars).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): main/0 writes peano_curve.svg (order 4, 6561 segments) and prints nothing; the driver writes the same path element, peano_curve/7, to standard output at order 2.
:- initialization(peano_curve(user_output, "L", 8, 8, 8, 90, 2)).
%--------------------------------------------------------- 319 perfect-numbers-1
tt_divisors(X, N, TT) :-
	Q is X / N,
	(   0 is X mod N -> (Q = N -> TT1 is N + TT;
                             TT1 is N + Q + TT);
            TT = TT1),
	(   sqrt(X) > N + 1 -> N1 is N+1, tt_divisors(X, N1, TT1);
	    TT1 = X).

perfect(X) :-
	tt_divisors(X, 2, 1).

perfect_numbers(N, L) :-
	numlist(2, N, LN),
	include(perfect, LN, L).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines perfect_numbers/2 and never calls it; the driver prints the perfect numbers up to 10000.
:- initialization((perfect_numbers(10000, L), format("~w~n", [L]))).
%--------------------------------------------------------- 320 perfect-numbers-2
perfect(N) :-
   factor_2s(N, Chk, Exp),
   Chk =:= (1 << (Exp+1)) - 1,
   prime(Chk).

factor_2s(N, S, D) :- factor_2s(N, 0, S, D).

factor_2s(D, S, D, S) :- getbit(D, 0) =:= 1, !.
factor_2s(N, E, D, S) :-
   E2 is E + 1, N2 is N >> 1, factor_2s(N2, E2, D, S).

% check if a number is prime
%
wheel235(L) :-
   W = [4, 2, 4, 2, 4, 6, 2, 6 | W],
   L = [1, 2, 2 | W].

prime(N) :-
   N >= 2,
   wheel235(W),
   prime(N, 2, W).

prime(N, D, _) :- D*D > N, !.
prime(N, D, [A|As]) :-
    N mod D =\= 0,
    D2 is D + A, prime(N, D2, As).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines perfect/1 and never calls it; the driver prints the perfect numbers up to 10000 and its verdict on four larger even perfect numbers and one non-perfect.
:- initialization((findall(N, (between(1, 10000, N), perfect(N)), L), format("~w~n", [L]), forall(member(N, [33550336, 33550337, 8589869056, 137438691328, 2305843008139952128]), ((perfect(N) -> R = yes ; R = no), format("~w: ~w~n", [N, R]))))).
%------------------------------------------------------------ 321 permutations-1
:- use_module(library(clpfd)).

permut_clpfd(L, N) :-
    length(L, N),
    L ins 1..N,
    all_different(L),
    label(L).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines permut_clpfd/2 and never calls it; the driver runs permutations-2's example, the permutations of 1..3.
:- initialization(forall(permut_clpfd(L, 3), writeln(L))).
%------------------------------------------------------------ 322 permutations-3
% permut_Prolog(P, L)
% P is a permutation of L

permut_Prolog([], []).
permut_Prolog([H | T], NL) :-
	select(H, NL, NL1),
	permut_Prolog(T, NL1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines permut_Prolog/2 and never calls it; the driver runs permutations-4's example over [ab, cd, ef].
:- initialization(forall(permut_Prolog(P, [ab, cd, ef]), writeln(P))).
%------------------------------------------------------------ 323 permutations-5
insert(X, L, [X|L]).
insert(X, [Y|Ys], [Y|L2]) :- insert(X, Ys, L2).

permutation([], []).
permutation([X|Xs], P) :- permutation(Xs, L), insert(X, L, P).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines permutation/2 and never calls it; the driver prints the permutations of [1,2,3].
:- initialization(forall(permutation([1, 2, 3], P), writeln(P))).
%---------------------------------------------------------- 324 phrase-reversals
:- set_prolog_flag(double_quotes, chars).
:- use_module(library(dcg/basics)).
:- use_module(library(dcg/high_order)).

%!  string_words(+String, -Words) is det.
%!  string_words(-String, +Words) is det.
%   Relates a string to the list of space-separated words in that string.
string_words(String, Words) :-
    once(phrase(sequence(nonblanks, " ", Words), String)).

phrase_reversals(String) :-
    reverse(String, Reversed),
    string_words(String, Words),
    maplist(reverse, Words, ReversedWords),
    string_words(ReversedWordsString, ReversedWords),
    reverse(Words, ReversedPhraseWords),
    string_words(ReversedPhrase, ReversedPhraseWords),
    format("~s~n~s~n~s~n~s~n", [String, Reversed, ReversedWordsString, ReversedPhrase]).

?- phrase_reversals("rosetta code phrase reversal").
%------------------------------------------------------------------------ 325 pi
pi_spigot :-
    pi(X),
    forall(member(Y, X), write(Y)).

pi(OUT) :-
    pi(1, 180, 60, 2, OUT).

pi(Q, R, T, I, OUT) :-
    freeze(OUT,
           (   OUT = [Digit | OUT_]
           ->  U is 3 * (3 * I + 1) * (3 * I + 2),
               Y is (Q * (27 * I - 12) + 5 * R) // (5 * T),
               Digit is Y,
               Q2 is 10 * Q * I * (2 * I - 1),
               R2 is 10 * U * (Q * (5 * I - 2) + R - Y * T),
               T2 is T * U,
               I2 is I + 1,
               pi(Q2, R2, T2, I2, OUT_)
           ;   true)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): pi_spigot/0 writes digits of pi forever; the driver takes the first 100 digits of the same lazy list, pi/1, and writes them as pi_spigot/0 does.
:- initialization((pi(X), length(Ds, 100), append(Ds, _, X), forall(member(D, Ds), write(D)), nl)).
%----------------------------------------------------------- 326 pierpont-primes
?- use_module(library(heaps)).

three_smooth(Lz) :-
    singleton_heap(H, 1, nothing),
    lazy_list(next_3smooth, 0-H, Lz).

next_3smooth(Top-H0, N-H2, N) :-
    min_of_heap(H0, Top, _), !,
    get_from_heap(H0, Top, _, H1),
    next_3smooth(Top-H1, N-H2, N).
next_3smooth(_-H0, N-H3, N) :-
    get_from_heap(H0, N, _, H1),
    N2 is N * 2,
    N3 is N * 3,
    add_to_heap(H1, N2, nothing, H2),
    add_to_heap(H2, N3, nothing, H3).

first_kind(K) :-
    three_smooth(Ns), member(N, Ns),
    K is N + 1,
    prime(K).

second_kind(K) :-
    three_smooth(Ns), member(N, Ns),
    K is N - 1,
    prime(K).

show(Seq, N) :-
    format("The first ~w values of ~s are: ", [N, Seq]),
    once(findnsols(N, X, call(Seq, X), L)),
    write(L), nl,
    once(offset(249, call(Seq, TwoFifty))),
    format("The 250th value of ~w is ~w~n", [Seq, TwoFifty]).

main :-
    show(first_kind, 50), nl,
    show(second_kind, 50), nl,
    halt.

% primality checker -- Miller Rabin preceded with a round of trial divisions.

prime(N) :-
    integer(N),
    N > 1,
    divcheck(
        N,
        [  2,   3,   5,   7,  11,  13,  17,  19,  23,  29,  31,
          37,  41,  43,  47,  53,  59,  61,  67,  71,  73,  79,
          83,  89,  97, 101, 103, 107, 109, 113, 127, 131, 137,
         139, 149],
        Result),
    ((Result = prime, !); miller_rabin_primality_test(N)).

divcheck(_, [],    unknown) :- !.
divcheck(N, [P|_], prime) :- P*P > N, !.
divcheck(N, [P|Ps], State) :- N mod P =\= 0, divcheck(N, Ps, State).

miller_rabin_primality_test(N) :-
    bases(Bases, N),
    forall(member(A, Bases), strong_fermat_pseudoprime(N, A)).

miller_rabin_precision(16).

bases([31, 73], N) :- N < 9_080_191, !.
bases([2, 7, 61], N) :- N < 4_759_123_141, !.
bases([2, 325, 9_375, 28_178, 450_775, 9_780_504, 1_795_265_022], N) :-
    N < 18_446_744_073_709_551_616, !. % 2^64
bases(Bases, N) :-
    miller_rabin_precision(T), RndLimit is N - 2,
    length(Bases, T), maplist(random_between(2, RndLimit), Bases).

strong_fermat_pseudoprime(N, A) :-  % miller-rabin strong pseudoprime test with base A.
    succ(Pn, N), factor_2s(Pn, S, D),
    X is powm(A, D, N),
    ((X =:= 1, !); \+ composite_witness(N, S, X)).

composite_witness(_, 0, _) :- !.
composite_witness(N, K, X) :-
    X =\= N-1,
    succ(Pk, K), X2 is (X*X) mod N, composite_witness(N, Pk, X2).

factor_2s(N, S, D) :- factor_2s(0, N, S, D).
factor_2s(S, D, S, D) :- D /\ 1 =\= 0, !.
factor_2s(S0, D0, S, D) :-
    succ(S0, S1), D1 is D0 >> 1,
    factor_2s(S1, D1, S, D).

?- main.
%------------------------------------------------------------- 327 playing-cards
/** <module> Cards

  A card is represented by the term "card(Pip, Suit)".
  A deck is represented internally as a list of cards.

  Usage:
  new_deck(D0), deck_shuffle(D0, D1), deck_deal(D1, C, D2).
*/
:- module(cards, [ new_deck/1,     % -Deck
                   deck_shuffle/2, % +Deck, -NewDeck
                   deck_deal/3,    % +Deck, -Card, -NewDeck
                   print_deck/1    % +Deck
                  ]).

%% new_deck(-Deck)
new_deck(Deck) :-
        Suits = [clubs, hearts, spades, diamonds],
        Pips = [2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace],
        setof(card(Pip, Suit), (member(Suit, Suits), member(Pip, Pips)), Deck).

%% deck_shuffle(+Deck, -NewDeck)
deck_shuffle(Deck, NewDeck) :-
        length(Deck, NumCards),
        findall(X, (between(1, NumCards, _I), X is random(1000)), Ord),
        pairs_keys_values(Pairs, Ord, Deck),
        keysort(Pairs, OrdPairs),
        pairs_values(OrdPairs, NewDeck).

%% deck_deal(+Deck, -Card, -NewDeck)
deck_deal([Card|Cards], Card, Cards).

%% print_deck(+Deck)
print_deck(Deck) :-
        maplist(print_card, Deck).

% print_card(+Card)
print_card(card(Pip, Suit)) :-
        format('~a of ~a~n', [Pip, Suit]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this module defines new_deck/1, print_deck/1 and deck_deal/3 and never calls them; the driver prints a new deck and deals one card (deck_shuffle/2 is random/1 and is not called).
:- initialization((new_deck(D), print_deck(D), deck_deal(D, C, D1), length(D1, N), format("dealt ~w, ~w left~n", [C, N]))).
%-------------------------------------------------------------- 328 polymorphism
% Point
point_construct(X, Y, point(X1,Y1)) :-
	default(X, X1),
	default(Y, Y1).

% Circle
circle_construct(X, Y, R, circle(X1,Y1,R1)) :-
	default(X, X1),
	default(Y, Y1),
	default(R, R1).
	
% Accessors for general X,Y
% individual getters/setters can be made but it is not required
shape_x_y_set(point(_,_), X, Y, point(X,Y)).
shape_x_y_set(circle(_,_,R), X, Y, circle(X,Y,R)).

% Accessors for R
cicle_r_set(circle(X,Y,_), R, circle(X,Y,R)).

% Print
print_shape(point(X,Y)) :- format('Point (~p,~p)', [X,Y]).
print_shape(circle(X,Y,R)) :- format('Circle (~p,~p,~p)', [X,Y,R]).

% Default values for constructor (default to 0).
default(N, 0) :- var(N).
default(N, N) :- number(N).

% Tests
test_point :-
	point_construct(2,3,P),
	test_poly(P).
	
test_circle :-
	circle_construct(3,4,_,C),
	cicle_r_set(C, 5, C1),
	test_poly(C1).

test_poly(T) :-
	shape_x_y_set(_, X, Y, T),
	X1 is X * 2,
	Y1 is Y * 2,
	shape_x_y_set(T, X1, Y1, T1),	
	print_shape(T1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines test_point/0 and test_circle/0 and never calls them; the driver calls each once at load.
:- initialization((test_point, nl, test_circle, nl)).
%---------------------------------------------------------- 329 population-count
is_evil(Number) :- popcount(Number) mod 2 =:= 0.

:-  numlist(0, 29, Powers),
    maplist([P0, P] >> (P is popcount(3 ^ P0)), Powers, PowerPopcounts),
    numlist(0, 59, Numbers),
    partition(is_evil, Numbers, EvilNumbers, OdiousNumbers),
    writeln('The pop counts of the first 30 powers of 3 are:'),
    writeln(PowerPopcounts),
    writeln('The first 30 evil numbers are:'),
    writeln(EvilNumbers),
    writeln('The first 30 odious numbers are:'),
    writeln(OdiousNumbers).
%--------------------------------------------------------------- 330 power-set-1
powerset(X,Y) :- bagof( S, subseq(S,X), Y).

subseq( [], []).
subseq( [], [_|_]).
subseq( [X|Xs], [X|Ys] ) :- subseq(Xs, Ys).
subseq( [X|Xs], [_|Ys] ) :- append(_, [X|Zs], Ys), subseq(Xs, Zs).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines powerset/2 and never calls it; the driver prints the power set of the task's {1,2,3,4}.
:- initialization((powerset([1, 2, 3, 4], P), format("~w~n", [P]))).
%--------------------------------------------------------------- 331 power-set-2
power_set( [], [[]]).
power_set( [X|Xs], PS) :-
  power_set(Xs, PS1),
  maplist( append([X]), PS1, PS2 ), % i.e. prepend X to each PS1
  append(PS1, PS2, PS).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines power_set/2 and never calls it; the driver prints the power set of the task's {1,2,3,4}.
:- initialization((power_set([1, 2, 3, 4], P), format("~w~n", [P]))).
%--------------------------------------------------------------- 332 power-set-3
:- use_module(library(chr)).

:- chr_constraint chr_power_set/2, chr_power_set/1, clean/0.

clean @ clean \ chr_power_set(_) <=> true.
clean @ clean <=> true.

only_one @ chr_power_set(A) \ chr_power_set(A) <=> true.


creation @ chr_power_set([H | T], A) <=>
           append(A, [H], B),
	   chr_power_set(T, A),
           chr_power_set(T, B),
	   chr_power_set(B).


empty_element @ chr_power_set([], _) <=> chr_power_set([]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the CHR constraint chr_power_set/2 and never posts it; the driver posts it for the task's {1,2,3,4}, collects the chr_power_set/1 subsets from the store and cleans it.
:- initialization((chr_power_set([1, 2, 3, 4], []), findall(L, find_chr_constraint(chr_power_set(L)), Ls), clean, format("~w~n", [Ls]))).
%----------------------------------------------- 333 primality-by-trial-division
prime(2).
prime(N) :-
  between(3, inf, N),
  1 is N mod 2,             % odd
  M is floor(sqrt(N+1)),    % round-off paranoia
  Max is (M-1) // 2,        % integer division
  forall( between(1, Max, I), N mod (2*I+1) > 0 ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines prime/1 and never calls it; the driver prints the primes up to 100.
:- initialization((findall(N, (between(1, 100, N), prime(N)), L), format("~w~n", [L]))).
%---------------------------------------------------------- 334 prime-conspiracy
% table of nth prime values (up to 100,000)

nthprime(    10, 29).
nthprime(   100, 541).
nthprime(  1000, 7919).
nthprime( 10000, 104729).
nthprime(100000, 1299709).

conspiracy(M) :-
    N is 10**M,
    nthprime(N, P),
    sieve(P, Ps),
    tally(Ps, Counts),
    sort(Counts, Sorted),
    show(Sorted).

show(Results) :-
    forall(
        member(tr(D1, D2, Count), Results),
        format("~d -> ~d: ~d~n", [D1, D2, Count])).


% count results

tally(L, R) :- tally(L, [], R).
tally([_], T, T) :- !.
tally([A|As], T0, R) :-
    [B|_] = As,
    Da is A mod 10, Db is B mod 10,
    count(Da, Db, T0, T1),
    tally(As, T1, R).

count(D1, D2, [], [tr(D1, D2, 1)]) :- !.
count(D1, D2, [tr(D1, D2, N)|Ts], [tr(D1, D2, Sn)|Ts]) :- succ(N, Sn), !.
count(D1, D2, [T|Ts], [T|Us]) :- count(D1, D2, Ts, Us).


% implement a prime sieve

sieve(Limit, Ps) :-
    numlist(2, Limit, Ns),
    sieve(Limit, Ns, Ps).

sieve(Limit, W, W) :- W = [P|_], P*P > Limit, !.
sieve(Limit, [P|Xs], [P|Ys]) :-
    Q is P*P,
    remove_multiples(P, Q, Xs, R),
    sieve(Limit, R, Ys).

remove_multiples(_, _, [], []) :- !.
remove_multiples(N, M, [A|As], R) :-
    A =:= M, !,
    remove_multiples(N, M, As, R).
remove_multiples(N, M, [A|As], [A|R]) :-
    A < M, !,
    remove_multiples(N, M, As, R).
remove_multiples(N, M, L, R) :-
    plus(M, N, M2),
    remove_multiples(N, M2, L, R).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines conspiracy/1 and never calls it; the driver runs it on the first 10000 primes (its table reaches 100000, the task's million is out of reach).
:- initialization(conspiracy(4)).
%----------------------------------------------------- 335 prime-decomposition-1
prime_decomp(N, L) :-
    SN is sqrt(N),
    prime_decomp_1(N, SN, 2, [], L).


prime_decomp_1(1, _, _, L, L) :- !.

% Special case for 2, increment 1
prime_decomp_1(N, SN, D, L, LF) :-
    (   0 is N mod D ->
        Q is N / D,
        SQ is sqrt(Q),
        prime_decomp_1(Q, SQ, D, [D |L], LF)
    ;
        D1 is D+1,
        (   D1 > SN ->
            LF = [N |L]
        ;
            prime_decomp_2(N, SN, D1, L, LF)
        )
    ).

% General case, increment 2
prime_decomp_2(1, _, _, L, L) :- !.

prime_decomp_2(N, SN, D, L, LF) :-
    (   0 is N mod D ->
        Q is N / D,
        SQ is sqrt(Q),
        prime_decomp_2(Q, SQ, D, [D |L], LF);
        D1 is D+2,
        (   D1 > SN ->
            LF = [N |L]
        ;
            prime_decomp_2(N, SN, D1, L, LF)
        )
    ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines prime_decomp/2 and never calls it; the driver decomposes two small numbers and prime-decomposition-2's first two examples (its third takes 8 s).
:- initialization(forall(member(N, [12, 1001, 9007199254740991, 576460752303423487]), (prime_decomp(N, L), format("~w: ~w~n", [N, L])))).
%----------------------------------------------------- 336 prime-decomposition-3
factors( N, FS):-
    factors2( N, FS).

factors2( N, FS):-
    ( N < 2        -> FS = []
    ; 4 > N        -> FS = [N]
    ; 0 is N rem 2 -> FS = [K|FS2], N2 is N div 2, factors2( N2, FS2)
    ;                 factors( N, 3, FS)
    ).

factors( N, K, FS):-
    ( N < 2        -> FS = []
    ; K*K > N      -> FS = [N]
    ; 0 is N rem K -> FS = [K|FS2], N2 is N div K, factors( N2, K, FS2)
    ;                 K2 is K+2, factors( N, K2, FS)
    ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines factors/2 and never calls it; the driver prints factors(N, FS) for a few small numbers and two large ones (factors2/2 pushes an unbound K for each factor 2, so FS goes through numbervars/3 before printing).
:- initialization(forall(member(N, [2, 3, 12, 13, 97, 360, 1001, 2147483647, 600851475143]), (factors(N, FS), numbervars(FS, 0, _), format("~w: ~w~n", [N, FS])))).
%----------------------------------------------------- 337 prime-decomposition-4
wheel2357(L) :-
    W = [2,  4,  2,  4,  6,  2,  6,  4,
         2,  4,  6,  6,  2,  6,  4,  2,
         6,  4,  6,  8,  4,  2,  4,  2,
         4,  8,  6,  4,  6,  2,  4,  6,
         2,  6,  6,  4,  2,  4,  6,  2,
         6,  4,  2,  4,  2, 10,  2, 10 | W],
    L = [1, 2, 2, 4 | W].

factor(1, 1) :- !.
factor(N, Fac) :-
    N > 1,
    wheel2357(W),
    factor(N, 2, W, 1, Fac0),
    reverse_factors(Fac0, Fac).

factor(N, F, _, Fac1, Fac2) :- F*F > N, !, add_factor(N, Fac1, Fac2).
factor(N, F, W, Fac1, Fac) :-
    divmod(N, F, Q, 0), !,
    add_factor(F, Fac1, Fac2),
    factor(Q, F, W, Fac2, Fac).
factor(N, F1, [A|As], Fac1, Fac) :-
    F2 is F1 + A,
    factor(N, F2, As, Fac1, Fac).

add_factor(F, 1, F) :- !.
add_factor(F, F, F**2) :- !.
add_factor(F, F**Ex1, F**Ex2) :- succ(Ex1, Ex2), !.

add_factor(F, F*A, F**2*A) :- !.
add_factor(F, F**Ex1*Rest, F**Ex2*Rest) :- succ(Ex1, Ex2), !.
add_factor(F, Fac, F*Fac).

reverse_factors(A*B, C*A) :- reverse_factors(B, C), !.
reverse_factors(A, A).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines factor/2 and never calls it; the driver prints factor(N, F), the factorisation as a product term, for a few small numbers and two large ones.
:- initialization(forall(member(N, [1, 2, 12, 360, 1001, 1024, 2147483647, 600851475143]), (factor(N, F), format("~w: ~w~n", [N, F])))).
%- 338 prime-numbers-p-for-which-the-sum-of-primes-less-than-or-equal-to-p-is-prime
primes(2, Limit):- 2 =< Limit.
primes(3, Limit):- 3 =< Limit.
primes(N, Limit):-
	between(5, Limit, N),
	N /\ 1 > 0,             % odd
	N mod 3 > 0,		    % /= 3*i
	M is floor(sqrt(N)) + 1, % reverse 6*I-1
	Max is M div 6,
	forall(between(1, Max, I), (N mod (6*I-1) > 0, N mod (6*I+1) > 0)).

isPrime(N):-
	primes(N, inf).

primeSum(List, LastP):-
	append(SubList, _, List),
	sum_list(SubList, Sum),
	isPrime(Sum),
	last(SubList, LastP).

showList(List):-
	last(List, Last),
	FmtLen is 2 + floor(log10(Last)),	% one more for space
	swritef(FmtStr, '%%dr', [FmtLen]),
	findnsols(10, X, (member(X, List), writef(FmtStr, [X])), _), nl,
	fail.
showList(_).

do(Limit):-
	findall(N, primes(N, Limit), PrimeList),
	findall(LastP, primeSum(PrimeList, LastP), SumList),
	showList(SumList).

do:- do(2000).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines do/0 (the task's primes below 2000) and never calls it; the driver calls it once at load.
:- initialization(do).
%------------------------------------------------------------ 339 priority-queue
priority-queue :-
  TL0 = [3-'Clear drains',
         4-'Feed cat'],

  % we can create a priority queue from a list
  list_to_heap(TL0, Heap0),

  % alternatively we can start from an empty queue
  % get from empty_heap/1.

  % now we add the other elements
  add_to_heap(Heap0, 5, 'Make tea', Heap1),
  add_to_heap(Heap1, 1, 'Solve RC tasks', Heap2),
  add_to_heap(Heap2, 2, 'Tax return', Heap3),

  % we list the content of the heap:
  heap_to_list(Heap3, TL1),
  writeln('Content of the queue'), maplist(writeln, TL1),
  nl,

  % now we retrieve the minimum-priority pair
  get_from_heap(Heap3, Priority, Key, Heap4),
  format('Retrieve top of the queue : Priority ~w, Element ~w~n', [Priority, Key]),
  nl,

  % we list the content of the heap:
  heap_to_list(Heap4, TL2),
  writeln('Content of the queue'), maplist(writeln, TL2).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the clause priority-queue (a -/2 head over the task's five prioritised tasks) and never calls it; the driver calls it once at load.
:- initialization(priority-queue).
%------------------------------------------------------------ 340 program-name-1
% SWI-Prolog version 8.0.0 for i686-linux.
% This will find itself, and return the knowledge base it is in.
file_name(F) :- true
   , M = user            % M is the module    .
   , P = file_name(_)    % P is the predicate .
   , source_file(M:P, F) % F is the file      .
   , \+ predicate_property(M:P, imported_from(_))
   .

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines file_name/1 and never calls it; the driver prints the base name of the file it returns, so the answer does not depend on the directory the program runs in.
:- initialization((file_name(F), file_base_name(F, B), writeln(B))).
%--------------------------------------------------------- 341 proper-divisors-1
divisor(N, Divisor) :-
    UpperBound is round(sqrt(N)),
    between(1, UpperBound, D),
    0 is N mod D,
    (
        Divisor = D
     ;
        LargerDivisor is N/D,
        LargerDivisor =\= D,
        Divisor = LargerDivisor
    ).

proper_divisor(N, D) :-
    divisor(N, D),
    D =\= N.


%% Task 1
%

proper_divisors(N, Ds) :-
    setof(D, proper_divisor(N, D), Ds).


%% Task 2
%

show_proper_divisors_of_range(Low, High) :-
    findall( N:Ds,
             ( between(Low, High, N),
               proper_divisors(N, Ds) ),
             Results ),
    maplist(writeln, Results).


%% Task 3
%

proper_divisor_count(N, Count) :-
    proper_divisors(N, Ds),
    length(Ds, Count).

find_most_proper_divisors_in_range(Low, High, Result) :-
    aggregate_all( max(Count, N),
                   ( between(Low, High, N),
                     proper_divisor_count(N, Count) ),
                   max(MaxCount, Num) ),
    Result = (num(Num)-divisor_count(MaxCount)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the task's two entries and never calls them; the driver prints the proper divisors of 1..10 and the number in 1..20000 with the most proper divisors.
:- initialization((show_proper_divisors_of_range(1, 10), find_most_proper_divisors_in_range(1, 20000, R), writeln(R))).
%------------------------------------------------------- 342 pythagorean-triples
show :-
    Data = [100, 1_000, 10_000, 100_000, 1_000_000, 10_000_000, 100_000_000],
    forall(
        member(Max, Data),
        (count_triples(Max, Total, Prim),
         format("upto ~D, there are ~D Pythagorean triples (~D primitive.)~n", [Max, Total, Prim]))).

div(A, B, C) :- C is A div B.

count_triples(Max, Total, Prims) :-
    findall(S, (triple(Max, A, B, C), S is A + B + C), Ps),
    length(Ps, Prims),
    maplist(div(Max), Ps, Counts), sumlist(Counts, Total).

% - between_by/4

between_by(A, B, N, K) :-
    C is (B - A) div N,
    between(0, C, J),
    K is N*J + A.

% - Pythagorean triple generator

triple(P, A, B, C) :-
    Max is floor(sqrt(P/2)) - 1,
    between(0, Max, M),
    Start is (M /\ 1) + 1, succ(Pm, M),
    between_by(Start, Pm, 2, N),
    gcd(M, N) =:= 1,
    X is M*M - N*N,
    Y is 2*M*N,
    C is M*M + N*N,
    order2(X, Y, A, B),
    (A + B + C) =< P.

order2(A, B, A, B) :- A < B, !.
order2(A, B, B, A).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines show/0 and never calls it; show/0 runs perimeters up to 100,000,000 (over a minute), so the driver calls count_triples/3 for 100 .. 1,000,000 and prints them in show/0's own format.
:- initialization(forall(member(Max, [100, 1000, 10000, 100000, 1000000]), (count_triples(Max, Total, Prim), format("upto ~D, there are ~D Pythagorean triples (~D primitive.)~n", [Max, Total, Prim])))).
%-------------------------------------------------------------- 343 quaternion-1
% A quaternion is represented as a complex term qx/4
add(qx(R0,I0,J0,K0), qx(R1,I1,J1,K1), qx(R,I,J,K)) :-
	!, R is R0+R1, I is I0+I1, J is J0+J1, K is K0+K1.
add(qx(R0,I,J,K), F, qx(R,I,J,K)) :-
	number(F), !, R is R0 + F.
add(F, qx(R0,I,J,K), Qx) :-
	add(qx(R0,I,J,K), F, Qx).
mul(qx(R0,I0,J0,K0), qx(R1,I1,J1,K1), qx(R,I,J,K)) :- !,
	R is R0*R1 - I0*I1 - J0*J1 - K0*K1,
	I is R0*I1 + I0*R1 + J0*K1 - K0*J1,
	J is R0*J1 - I0*K1 + J0*R1 + K0*I1,
	K is R0*K1 + I0*J1 - J0*I1 + K0*R1.
mul(qx(R0,I0,J0,K0), F, qx(R,I,J,K)) :-
	number(F), !, R is R0*F, I is I0*F, J is J0*F, K is K0*F.
mul(F, qx(R0,I0,J0,K0), Qx) :-
	mul(qx(R0,I0,J0,K0),F,Qx).
abs(qx(R,I,J,K), Norm) :-
	Norm is sqrt(R*R+I*I+J*J+K*K).
negate(qx(Ri,Ii,Ji,Ki),qx(R,I,J,K)) :-
	R is -Ri, I is -Ii, J is -Ji, K is -Ki.
conjugate(qx(R,Ii,Ji,Ki),qx(R,I,J,K)) :-
	I is -Ii, J is -Ji, K is -Ki.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the quaternion operations over qx/4 and never calls them; the driver runs each on the task's q = (1,2,3,4), q1 = (2,3,4,5), q2 = (3,4,5,6), r = 7.
:- initialization((Q = qx(1,2,3,4), Q1 = qx(2,3,4,5), Q2 = qx(3,4,5,6), R = 7, abs(Q, N), format("abs(q) = ~w~n", [N]), negate(Q, Ng), format("-q = ~w~n", [Ng]), conjugate(Q, C), format("conj(q) = ~w~n", [C]), add(Q, R, QR), format("q + r = ~w~n", [QR]), add(R, Q, RQ), format("r + q = ~w~n", [RQ]), add(Q1, Q2, S), format("q1 + q2 = ~w~n", [S]), mul(Q, R, M1), format("q * r = ~w~n", [M1]), mul(R, Q, M2), format("r * q = ~w~n", [M2]), mul(Q1, Q2, P12), format("q1 * q2 = ~w~n", [P12]), mul(Q2, Q1, P21), format("q2 * q1 = ~w~n", [P21]))).
%---------------------------------------------------------- 344 queue-definition
empty(U-V) :-
    unify_with_occurs_check(U, V).

push(Queue, Value, NewQueue) :-
    append_dl(Queue, [Value|X]-X, NewQueue).

% when queue is empty pop fails.
pop([X|V]-U, X, V-U) :-
    \+empty([X|V]-U).

append_dl(X-Y, Y-Z, X-Z).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines empty/1, push/3 and pop/3 and never calls them; the driver pushes 1, 2, 3, pops them in FIFO order and tests empty/1 and pop/3 on the empty queue.
:- initialization((empty(Q0), push(Q0, 1, Q1), push(Q1, 2, Q2), push(Q2, 3, Q3), pop(Q3, A, Q4), format('pop: ~w~n', [A]), pop(Q4, B, Q5), format('pop: ~w~n', [B]), (empty(Q5) -> writeln('empty: yes') ; writeln('empty: no')), pop(Q5, C, Q6), format('pop: ~w~n', [C]), (empty(Q6) -> writeln('empty: yes') ; writeln('empty: no')), (pop(Q6, _, _) -> writeln('pop: a value') ; writeln('pop on the empty queue fails')))).
%--------------------------------------------------------------- 345 queue-usage
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% definitions of queue
empty(U-V) :-
    unify_with_occurs_check(U, V).

push(Queue, Value, NewQueue) :-
    append_dl(Queue, [Value|X]-X, NewQueue).


pop([X|V]-U, X, V-U) :-
    \+empty([X|V]-U).



append_dl(X-Y, Y-Z, X-Z).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% use of queue
queue :-
    % create an empty queue
    empty(Q),
    format('Create queue ~w~n~n', [Q]),

    % add numbers 1 and 2
    write('Add numbers 1 and 2 : '),
    push(Q, 1, Q1),
    push(Q1, 2, Q2),

    % display queue
    format('~w~n~n', [Q2]),

    % pop element
    pop(Q2, V, Q3),

    % display results
    format('Pop : Value ~w Queue : ~w~n~n', [V, Q3]),

    % test the queue
    write('Test of the queue : '),
    (   empty(Q3) -> writeln('Queue empy'); writeln('Queue not empty')), nl,

    % pop the elements
    write('Pop the queue : '),
    pop(Q3, V1, Q4),
    format('Value ~w Queue : ~w~n~n', [V1, Q4]),

    write('Pop the queue : '),
    pop(Q4, _V, _Q5).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): queue/0 prints its difference-list queues with their unbound tails by name (_123), which no ref can hold; the driver runs queue/0's own steps over empty/1, push/3 and pop/3 and prints each queue in queue/0's format after numbervars/3.
:- initialization((empty(Q), copy_term(Q, C0), numbervars(C0, 0, _), format('Create queue ~w~n~n', [C0]), write('Add numbers 1 and 2 : '), push(Q, 1, Q1), push(Q1, 2, Q2), copy_term(Q2, C2), numbervars(C2, 0, _), format('~w~n~n', [C2]), pop(Q2, V, Q3), copy_term(Q3, C3), numbervars(C3, 0, _), format('Pop : Value ~w Queue : ~w~n~n', [V, C3]), write('Test of the queue : '), (empty(Q3) -> writeln('Queue empy') ; writeln('Queue not empty')), nl, write('Pop the queue : '), pop(Q3, V1, Q4), copy_term(Q4, C4), numbervars(C4, 0, _), format('Value ~w Queue : ~w~n~n', [V1, C4]), write('Pop the queue : '), (pop(Q4, _, _) -> writeln('a value') ; writeln('fails, the queue is empty')))).
%------------------------------------------------------------------- 346 quine-1
quine :-
	listing(quine).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines quine/0 (it lists its own clause) and never calls it; the driver calls it once at load.
:- initialization(quine).
%------------------------------------------------------------------- 347 quine-2
quine:-asserta(a((quine:-asserta(a(A,B)),a(C,D+E),a(D,E),numbervars(C),write(C),write(.)),A+B)),a(F,G+H),a(G,H),numbervars(F),write(F),write(.).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines quine/0 and never calls it; the driver calls it once at load.
:- initialization(quine).
%------------------------------------------------------------------- 348 quine-3
% Tested with SWI-Prolog version 7.1.37
:- initialization(main).

before(Lines) :- Lines = [
  "% Tested with SWI-Prolog version 7.1.37",
  ":- initialization(main).",
  "",
  "before(Lines) :- Lines = ["
].

after(Lines) :- Lines = [
  "].",
  "",
  "% replaces quotes by harmless ats",
  "% replaces backslashes by harmless slashes",
  "% replaces linebreaks by harmless sharps",
  "maskCode(34, 64).",
  "maskCode(92, 47).",
  "maskCode(10, 35).",
  "maskCode(X, X).",
  "",
  "% Encodes dangerous characters in a string",
  "encode(D, S) :- ",
  "  string_codes(D, DC),",
  "  maplist(maskCode, DC, SC),",
  "  string_codes(S, SC).",
  "",
  "decode(S, D) :- ",
  "  string_codes(S, SC),",
  "  maplist(maskCode, DC, SC),",
  "  string_codes(D, DC).",
  "",
  "% writes each entry indented by two spaces,",
  "% enclosed in quotes and separated by commas,",
  "% with a newline between the list entries.",
  "mkStringList([],@@).",
  "mkStringList([Single],Out) :-",
  "  atomics_to_string([@  /@@, Single, @/@@], Out).",
  "",
  "mkStringList([H|T], Res) :-",
  "  mkStringList(T, TailRes),",
  "  atomics_to_string([@  /@@, H, @/@,/n@, TailRes], Res).",
  "",
  "quine(Q) :- ",
  "  before(BeforeEncoded),",
  "  after(AfterEncoded),",
  "  maplist(decode, BeforeEncoded, BeforeDecoded),",
  "  maplist(decode,  AfterEncoded, AfterDecoded),",
  "  atomic_list_concat(BeforeDecoded, @/n@, B),",
  "  atomic_list_concat(AfterDecoded, @/n@, A),",
  "  mkStringList(BeforeEncoded, BeforeData),",
  "  mkStringList(AfterEncoded, AfterData),",
  "  Center = @/n]./n/nafter(Lines) :- Lines = [/n@,",
  "  atomic_list_concat([",
  "     B, @/n@, BeforeData, ",
  "     Center, ",
  "     AfterData, @/n@, A, @/n@",
  "  ], Q).",
  "",
  "main :- (quine(Q), write(Q);true),halt.",
  "% line break in the end of file is important"
].

% replaces quotes by harmless ats
% replaces backslashes by harmless slashes
% replaces linebreaks by harmless sharps
maskCode(34, 64).
maskCode(92, 47).
maskCode(10, 35).
maskCode(X, X).

% Encodes dangerous characters in a string
encode(D, S) :-
  string_codes(D, DC),
  maplist(maskCode, DC, SC),
  string_codes(S, SC).

decode(S, D) :-
  string_codes(S, SC),
  maplist(maskCode, DC, SC),
  string_codes(D, DC).

% writes each entry indented by two spaces,
% enclosed in quotes and separated by commas,
% with a newline between the list entries.
mkStringList([],"").
mkStringList([Single],Out) :-
  atomics_to_string(["  \"", Single, "\""], Out).

mkStringList([H|T], Res) :-
  mkStringList(T, TailRes),
  atomics_to_string(["  \"", H, "\",\n", TailRes], Res).

quine(Q) :-
  before(BeforeEncoded),
  after(AfterEncoded),
  maplist(decode, BeforeEncoded, BeforeDecoded),
  maplist(decode,  AfterEncoded, AfterDecoded),
  atomic_list_concat(BeforeDecoded, "\n", B),
  atomic_list_concat(AfterDecoded, "\n", A),
  mkStringList(BeforeEncoded, BeforeData),
  mkStringList(AfterEncoded, AfterData),
  Center = "\n].\n\nafter(Lines) :- Lines = [\n",
  atomic_list_concat([
     B, "\n", BeforeData,
     Center,
     AfterData, "\n", A, "\n"
  ], Q).

main :- (quine(Q), write(Q);true),halt.
% line break in the end of file is important
%------------------------------------------------------------------- 349 quine-4
main:-X='main:-X=~q,format(X,X).',format(X,X).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%----------------------------------------------------------------- 350 rainbow-1
:- write('\e[91mR\e[33mA\e[92mI\e[32mN\e[36mB\e[94mO\e[35mW\e[0m'), nl.
%----------------------------------------------------------------- 351 rainbow-2
:- use_module(library(ansi_term)).

:-  ansi_format([fg(255,  10,  10)], 'R',   []),
    ansi_format([fg(240, 120,   0)], 'A',   []),
    ansi_format([fg(200, 220,   0)], 'I',   []),
    ansi_format([fg(  0, 225,  40)], 'N',   []),
    ansi_format([fg(  0, 200, 240)], 'B',   []),
    ansi_format([fg(  0,   0, 255)], 'O',   []),
    ansi_format([fg(240,   0, 240)], 'W~n', []).
%------------------------------------------------------- 352 range-consolidation
consolidate_ranges(Ranges, Consolidated):-
    normalize(Ranges, Normalized),
    sort(Normalized, Sorted),
    merge(Sorted, Consolidated).

normalize([], []):-!.
normalize([r(X, Y)|Ranges], [r(Min, Max)|Normalized]):-
    (X > Y -> Min = Y, Max = X; Min = X, Max = Y),
    normalize(Ranges, Normalized).

merge([], []):-!.
merge([Range], [Range]):-!.
merge([r(Min1, Max1), r(Min2, Max2)|Rest], Merged):-
    Min2 =< Max1,
    !,
    Max is max(Max1, Max2),
    merge([r(Min1, Max)|Rest], Merged).
merge([Range|Ranges], [Range|Merged]):-
    merge(Ranges, Merged).

write_range(r(Min, Max)):-
    writef('[%w, %w]', [Min, Max]).

write_ranges([]):-!.
write_ranges([Range]):-
    !,
    write_range(Range).
write_ranges([Range|Ranges]):-
    write_range(Range),
    write(', '),
    write_ranges(Ranges).

test_case([r(1.1, 2.2)]).
test_case([r(6.1, 7.2), r(7.2, 8.3)]).
test_case([r(4, 3), r(2, 1)]).
test_case([r(4, 3), r(2, 1), r(-1, -2), r(3.9, 10)]).
test_case([r(1, 3), r(-6, -1), r(-4, -5), r(8, 2), r(-6, -6)]).

main:-
    forall(test_case(Ranges),
           (consolidate_ranges(Ranges, Consolidated),
            write_ranges(Ranges), write(' -> '),
            write_ranges(Consolidated), nl)).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%----------------------------------------------------------- 353 range-expansion
range_expand :-
	L = '-6,-3--1,3-5,7-11,14,15,17-20',
	writeln(L),
	atom_chars(L, LA),
	extract_Range(LA, R),
	maplist(study_Range, R, LR),
	pack_Range(LX, LR),
	writeln(LX).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% extract_Range(?In, ?Out)
% In  : '-6,-3--1,3-5,7-11,14,15,17-20'
% Out : [-6], [-3--1], [3-5],[7-11], [14],[15], [17-20]
%
extract_Range([], []).

extract_Range(X , [Range | Y1]) :-
	get_Range(X, U-U, Range, X1),
	extract_Range(X1, Y1).

get_Range([], Range-[], Range, []).
get_Range([','|B], Range-[], Range, B) :- !.

get_Range([A | B], EC, Range, R) :-
	append_dl(EC, [A | U]-U, NEC),
	get_Range(B, NEC, Range, R).


append_dl(X-Y, Y-Z, X-Z).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% study Range(?In, ?Out)
% In  : [-6]
% Out : [-6,-6]
%
% In  : [-3--1]
% Out : [-3, -1]
%
study_Range(Range1, [Deb, Deb]) :-
       catch(number_chars(Deb, Range1), Deb, false).

study_Range(Range1, [Deb, Fin]) :-
       append(A, ['-'|B], Range1),
       A \= [],
       number_chars(Deb, A),
       number_chars(Fin, B).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
:- use_module(library(clpfd)).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Pack Range(?In, ?Out)
% In  : -6,
% Out : [-6]
%
% In  : -3, -2,-1
% Out : [-3,-1]
%
pack_Range([],[]).

pack_Range([X|Rest],[[X | V]|Packed]):-
    run(X,Rest, [X|V], RRest),
    pack_Range(RRest,Packed).


run(Fin,[Other|RRest], [Deb, Fin],[Other|RRest]):-
	Fin #\= Deb,
	Fin #\= Deb + 1,
	Other #\= Fin+1.

run(Fin,[],[_Var, Fin],[]).

run(Var,[Var1|LRest],[Deb, Fin], RRest):-
	Fin #\= Deb,
	Fin #\= Deb + 1,
	Var1 #= Var + 1,
	run(Var1,LRest,[Deb, Fin], RRest).

run(Val,[Other|RRest], [Val, Val],[Other|RRest]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines range_expand/0 (the task's range -6,-3--1,3-5,7-11,14,15,17-20) and never calls it; the driver calls it once at load.
:- initialization(range_expand).
%---------------------------------------------------------- 354 range-extraction
range_extract :-
	L = [0,  1,  2,  4,  6,  7,  8, 11, 12, 14,
	     15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
	     25, 27, 28, 29, 30, 31, 32, 33, 35, 36,
	     37, 38, 39] ,
	writeln(L),
	pack_Range(L, LP),
	maplist(study_Range, R, LP),
	extract_Range(LA, R),
	atom_chars(A, LA),
	writeln(A).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% extract_Range(?In, ?Out)
% In  : '-6,-3--1,3-5,7-11,14,15,17-20' =>
% Out : [-6], [-3--1], [3-5],[7-11], [14],[15], [17-20]
%
extract_Range([], []).


extract_Range(X , [Range | Y1]) :-
	get_Range(X, U-U, Range, X1),
	extract_Range(X1, Y1).



get_Range([], Range-[], Range, []).
get_Range([','|B], Range-[], Range, B) :- !.

get_Range([A | B], EC, Range, R) :-
	append_dl(EC, [A | U]-U, NEC),
	get_Range(B, NEC, Range, R).


append_dl(X-Y, Y-Z, X-Z).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% study Range(?In, ?Out)
% In  : [-6]
% Out : [-6,-6]
%
% In  : [-3--1]
% Out : [-3, -1]
%
study_Range(Range1, [Deb, Deb]) :-
       catch(number_chars(Deb, Range1), Deb, false).

study_Range(Range1, [Deb, Fin]) :-
       append(A, ['-'|B], Range1),
       A \= [],
       number_chars(Deb, A),
       number_chars(Fin, B).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
:- use_module(library(clpfd)).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Pack Range(?In, ?Out)
% In  : -6,
% Out : [-6]
%
% In  : -3, -2,-1
% Out : [-3,-1]
%
pack_Range([],[]).

pack_Range([X|Rest],[[X | V]|Packed]):-
    run(X,Rest, [X|V], RRest),
    pack_Range(RRest,Packed).



run(Fin,[Other|RRest], [Deb, Fin],[Other|RRest]):-
	Fin #\= Deb,
	Fin #\= Deb + 1,
	Other #\= Fin+1.

run(Fin,[],[_Var, Fin],[]).

run(Var,[Var1|LRest],[Deb, Fin], RRest):-
	Fin #\= Deb,
	Fin #\= Deb + 1,
	Var1 #= Var + 1,
	run(Var1,LRest,[Deb, Fin], RRest).

run(Val,[Other|RRest], [Val, Val],[Other|RRest]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines range_extract/0 (the task's 33 integers) and never calls it; the driver calls it once at load.
:- initialization(range_extract).
%---------------------------------------------------------- 355 read-entire-file
:- initialization(main).

main :-
    current_prolog_flag(argv, [File|_]),
    read_file_to_string(File, String, []).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): main/0 reads the file named by its first argument into a string and prints nothing (the task asks for no output); read-entire-file.argv names /dev/stdin and read-entire-file.in holds a short text, and the driver reports whether main/0 succeeded.
:- initialization((main -> writeln('main/0 read the file named on its command line into a string') ; writeln('main/0 failed'))).
%----------------------------------------------- 356 remove-duplicate-elements-1
uniq(Data,Uniques) :- sort(Data,Uniques).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines uniq/2 and never calls it; the driver prints it for a sample list with duplicates (the task fixes none).
:- initialization((uniq([1, 2, 3, a, b, c, 2, 3, 4, b, c, d], U), format("~w~n", [U]))).
%----------------------------------------------- 357 remove-duplicate-elements-3
member1(X,[H|_]) :- X==H,!.
member1(X,[_|T]) :- member1(X,T).

distinct([],[]).
distinct([H|T],C) :- member1(H,T),!, distinct(T,C).
distinct([H|T],[H|C]) :- distinct(T,C).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines distinct/2 and never calls it; the driver prints it for a sample list with duplicates (the task fixes none).
:- initialization((distinct([1, 2, 3, a, b, c, 2, 3, 4, b, c, d], U), format("~w~n", [U]))).
%----------------------------------------------- 358 remove-vowels-from-a-string
:- system:set_prolog_flag(double_quotes,chars) .

:- [library(lists)] .

%! remove_vowels(INPUTz0,OUTPUTz0)
%
% `OUTPUTz0` is `INPUTz0` but without any vowels .

remove_vowels(INPUTz0,OUTPUTz0)
:-
prolog:phrase(remove_vowels(INPUTz0),OUTPUTz0)
.

remove_vowels([])
-->
[]
.

remove_vowels([INPUT0|INPUTz0])
-->
{ vowel(INPUT0) } ,
! ,
remove_vowels(INPUTz0)
.

remove_vowels([INPUT0|INPUTz0])
-->
! ,
[INPUT0] ,
remove_vowels(INPUTz0)
.

vowel(CHAR)
:-
lists:member(CHAR,"AEIOUaeiouüéâäàåçêëèïîìÄÅÉæÆôöòûùÿÖÜáíóúªºαΩ")
.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines remove_vowels/2 over char lists (it sets double_quotes=chars itself) and never calls it; the driver prints it for a sample sentence (the task fixes none).
:- initialization((remove_vowels("Rosetta Code is a programming chrestomathy site.", O), atom_chars(A, O), writeln(A))).
%--------------------------------------------------------- 359 repeat-a-string-1
%repeat(Str,Num,Res).
repeat(Str,1,Str).
repeat(Str,Num,Res):-
    Num1 is Num-1,
    repeat(Str,Num1,Res1),
    string_concat(Str, Res1, Res).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines repeat/3 and never calls it; the driver prints the task's "ha" repeated 5 times.
:- initialization((repeat("ha", 5, R), writeln(R))).
%--------------------------------------------------------- 360 repeat-a-string-2
:- system:set_prolog_flag(double_quotes,chars) .

repeat(SOURCEz0,COUNT0,TARGETz)
:-
prolog:phrase(repeat(SOURCEz0,COUNT0),TARGETz)
.

%! repeat(SOURCEz0,COUNT0)//2

repeat(_SOURCEz0_,0)
-->
! ,
[]
.

repeat(SOURCEz0,COUNT0)
-->
SOURCEz0 ,
{ COUNT is COUNT0 - 1 } ,
repeat(SOURCEz0,COUNT)
.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines repeat/3 over char lists (it sets double_quotes=chars itself) and never calls it; the driver prints the task's "ha" repeated 5 times.
:- initialization((repeat("ha", 5, T), atom_chars(A, T), writeln(A))).
%-------------------------------------------------------------------- 361 repeat
repeat(_, 0).
repeat(Callable, Times) :-
	succ(TimesLess1, Times),
	Callable,
	repeat(Callable, TimesLess1).

test :- write('Hello, World'), nl.	
test(Name) :- format('Hello, ~w~n', Name).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines test/0 and never calls it; the driver calls it once at load.
:- initialization(test).
%-------------------------------------------------------- 362 reverse-a-string-2
accRev([H|T], A, R) :- accRev(T, [H|A], R).
accRev([], A, A).

rev(L,R) :- accRev(L,[],R).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines rev/2 over lists and never calls it; the driver reverses the task's asdf.
:- initialization((atom_chars(asdf, L), rev(L, R), atom_chars(A, R), writeln(A))).
%- 363 reverse-the-order-of-lines-in-a-text-file-while-preserving-the-contents-of-each-line
:- use_module(library(dcg/basics), [string_without/4]).
:- use_module(library(dcg/high_order), [sequence/4]).
:- initialization(main, main).

lines(Lines) --> sequence(line, Lines).
line(Line)   --> string_without("\n", Line), "\n".

main([Filename]) :-
    phrase_from_file(lines(Lines), Filename),
    reverse(Lines, ReversedLines),
    phrase(lines(ReversedLines), Codes),
    format("~s", [Codes]).
%------------------------------------------------------- 364 rock-paper-scissors
play :-
  findall(P,beats(P,_),Prev),
  play(Prev).

play(Prev) :-
  write('your choice? '),
  read(P),
  random_member(C, Prev),
  format('The computer chose ~p~n', C),
  result(C,P,Prev,Next),
  !,
  play(Next).

result(C,P,R,[C|R]) :-
  beats(C,P),
  format('Computer wins.~n').
result(C,P,R,[B|R]) :-
  beats(P,C),
  beats(B,P),
  format('You win!~n').
result(C,C,R,[B|R]) :-
  beats(B,C),
  format('It is a draw~n').

beats(paper, rock).
beats(rock, scissors).
beats(scissors, paper).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): play/0 reads the player's moves and draws the computer's with random_member/2, which no ref can hold; the driver calls the judge beneath it, result/4, on all nine pairs of moves and prints its verdicts.
:- initialization(forall((member(C, [rock, paper, scissors]), member(P, [rock, paper, scissors])), (format("computer ~w, you ~w: ", [C, P]), result(C, P, [], _)))).
%----------------------------------------------------- 365 roman-numerals-decode
decode_digit(i, 1).
decode_digit(v, 5).
decode_digit(x, 10).
decode_digit(l, 50).
decode_digit(c, 100).
decode_digit(d, 500).
decode_digit(m, 1000).

decode_string(Sum, _, [], Sum).

decode_string(LastSum, LastValue, [Digit|Rest], NextSum) :-
   decode_digit(Digit, Value),
   Value < LastValue,
   Sum is LastSum - Value,
   decode_string(Sum, Value, Rest, NextSum).

decode_string(LastSum, LastValue, [Digit|Rest], NextSum) :-
   decode_digit(Digit, Value),
   Value >= LastValue,
   Sum is LastSum + Value,
   decode_string(Sum, Value, Rest, NextSum).

decode_string(Atom, Value) :-
   atom_chars(Atom, String),
   reverse(String, [Last|Rest]),
   decode_digit(Last, Start),
   decode_string(Start, Start, Rest, Value).

test :-
   decode_string(mcmxc, 1990),
   decode_string(mmviii, 2008),
   decode_string(mdclxvi, 1666).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): test/0 only checks the task's three numerals and prints nothing; the driver prints decode_string/2 for the task's MCMXC, MMVIII and MDCLXVI.
:- initialization(forall(member(R, [mcmxc, mmviii, mdclxvi]), (decode_string(R, V), format("~w: ~w~n", [R, V])))).
%------------------------------------------------------------ 366 roots-of-unity
roots(N, Rs) :-
    succ(Pn, N), numlist(0, Pn, Ks),
    maplist(root(N), Ks, Rs).

root(N, M, R2) :-
    R0 is (2*M) rdiv N,  % multiple of PI
    (R0 > 1 -> R1 is R0 - 2; R1 = R0),  % adjust for principal values
    cis(R1, R2).

cis(0, 1) :- !.
cis(1, -1) :- !.
cis(1 rdiv 2, i) :- !.
cis(-1 rdiv 2, -i) :- !.
cis(-1 rdiv Q, exp(-i*pi/Q)) :- !.
cis(1 rdiv Q, exp(i*pi/Q)) :- !.
cis(P rdiv Q, exp(P*i*pi/Q)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines roots/2 and never calls it; under swipl 9 rdiv yields a rational number (1r3) that cis/2's P rdiv Q heads never match, so roots/2 fails for every n >= 3 and the driver prints the roots for n = 1 and 2 only.
:- initialization(forall(between(1, 2, N), (roots(N, Rs), format("~w: ~w~n", [N, Rs])))).
%------------------------------------------------------------------ 367 rot-13-1
:- use_module(library(ctypes)).

runtime_entry(start) :-
	prompt(_, ''),
	rot13.

rot13 :-
	get0(Ch),
	(   is_endfile(Ch) ->
		true
	;   rot13_char(Ch, Rot),
	    put(Rot),
	    rot13
	).

rot13_char(Ch, Rot) :-
	(   is_alpha(Ch) ->
		to_upper(Ch, Up),
		Letter is Up - 0'A,
		Rot is Ch + ((Letter + 13) mod 26) - Letter
	;   Rot = Ch
	).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines runtime_entry(start) (rot13 of standard input) and never calls it; rot-13-1.in holds two sample lines.
:- initialization(runtime_entry(start)).
%------------------------------------------------------------------ 368 rot-13-2
% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
rot13(Str, SR) :-
	maplist(rot, Str, Str1),
	string_to_list(SR, Str1).

rot(C, C1) :-
	(   member(C, "abcdefghijklmABCDEFGHIJKLM") -> C1 is C+13;
	    (	member(C, "nopqrstuvwxyzNOPQRSTUVWXYZ") -> C1 is C-13; C1 = C)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines rot13/2 and never calls it; written for code lists (member/2 over "..."), so the flag is set at its head and the driver prints rot13 of a sample line.
:- initialization((rot13("Hello, World!", R), writeln(R))).
%------------------------------------------------------- 369 run-length-encoding
% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
% the test
run_length :-
	L = "WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWBWWWWWWWWWWWWWW",
	writef('encode %s\n', [L]),
	encode(L, R),
	writeln(R), nl,
	writef('decode %w\n', [R]),
	decode(R, L1),
	writeln(L1).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  encode
%
%  translation
%  from
%  "WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWBWWWWWWWWWWWWWW"
%  to
%  "12W1B12W3B24W1B14W"
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
encode(In, Out) :-
	% Because of the special management of the "strings" by Prolog
	( is_list(In) -> I = In; string_to_list(In, I)),
	packList(I, R1),
	dcg_packList2List(R1,R2, []),
	string_to_list(Out,R2).



dcg_packList2List([[N, V]|T]) -->
	{ number_codes(N, LN)},
	LN,
	[V],
	dcg_packList2List(T).

dcg_packList2List([]) --> [].


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  decode
%
%  translation
%  from
%  "12W1B12W3B24W1B14W"
%  to
%  "WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWBWWWWWWWWWWWWWW"
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
decode(In, Out) :-
	% Because of the special management of the "strings" by Prolog
	( is_list(In) -> I = In; string_to_list(In, I)),
	dcg_List2packList(I, R1, []),
	packList(L1, R1),
	string_to_list(Out, L1).


dcg_List2packList([H|T]) -->
	{code_type(H, digit)},
	parse_number([H|T], 0).

dcg_List2packList([]) --> [].


parse_number([H|T], N) -->
	{code_type(H, digit), !,
	N1 is N*10 + H - 48 },
	parse_number(T, N1).

parse_number([H|T], N) -->
	[[N, H]],
	dcg_List2packList(T).


% use of library clpfd allows packList(?In, ?Out) to works
% in both ways In --> Out and In <-- Out.

:- use_module(library(clpfd)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% ?- packList([a,a,a,b,c,c,c,d,d,e], L).
%  L = [[3,a],[1,b],[3,c],[2,d],[1,e]] .
% ?- packList(R,  [[3,a],[1,b],[3,c],[2,d],[1,e]]).
% R = [a,a,a,b,c,c,c,d,d,e] .
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
packList([],[]).

packList([X],[[1,X]]) :- !.


packList([X|Rest],[XRun|Packed]):-
    run(X,Rest, XRun,RRest),
    packList(RRest,Packed).


run(Var,[],[1,Var],[]).

run(Var,[Var|LRest],[N1, Var],RRest):-
    N #> 0,
    N1 #= N + 1,
    run(Var,LRest,[N, Var],RRest).


run(Var,[Other|RRest], [1,Var],[Other|RRest]):-
    dif(Var,Other).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines run_length/0 (the task's WWW...W string) and never calls it; written for code lists (writef %s and string_to_list/2 over "..."), so the flag is set at its head and the driver calls it once at load.
:- initialization(run_length).
%------------------------------------------------------------- 370 search-a-list
% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
search_a_list(N1, N2) :-
	L = ["Zig", "Zag", "Wally", "Ronald", "Bush", "Krusty", "Charlie", "Bush", "Boz", "Zag"],

	write('List is :'), maplist(my_write, L), nl, nl,

	(   nth1(Ind1, L, N1) ->
	    format('~s is in position ~w~n', [N1, Ind1])
	;   format('~s is not present~n', [N1])),
	(   nth1(Ind2, L, N2) ->
	    format('~s is in position ~w~n', [N2, Ind2])
	;   format('~s is not present~n', [N2])),
	(   reverse_nth1(Ind3, L, N1) ->
	    format('~s last position is ~w~n', [N1, Ind3])
	;   format('~s is not present~n', [N1])).

reverse_nth1(Ind, L, N) :-
	reverse(L, RL),
	length(L, Len),
	nth1(Ind1, RL, N),
	Ind is Len - Ind1 + 1.

my_write(Name) :-
	writef(' %s', [Name]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines search_a_list/2 over the task's haystack and never calls it; written for code lists (writef %s and format ~s over "..."), so the flag is set at its head and the driver searches the task's needles Bush and Washington.
:- initialization(search_a_list("Bush", "Washington")).
%------------------------------------------------------------------ 371 sedols-1
:- set_prolog_flag(double_quotes, codes).
:- use_module(library(clpfd)).

sedol -->
    sdigit(S1), sdigit(S2), sdigit(S3), sdigit(S4), sdigit(S5), sdigit(S6), sdigit(S7),
    {   S7 in 0..9,
        (S1 + S2 * 3 + S3 + S4 * 7 + S5 * 3 + S6 * 9 + S7) mod 10 #= 0
    }.

sdigit(Value) --> [Code],
    {   Value in 0..35,
        Code in 48..57\/66..68\/70..72\/74..78\/80..84\/86..90,
        Code in 48..57 #<==> Value #= Code - 48,
        Code in 66..90 #<==> Value #= Code - 55
    }.

add_checksum_digit(SEDOL6, SEDOL7) :-
    append(SEDOL6, [_], SEDOL7),
    phrase(sedol, SEDOL7),
    once(label(SEDOL7)).

% adds the checksum digits to each number and removes any invalid numbers
task(SEDOL6s) :-
    convlist(add_checksum_digit, SEDOL6s, SEDOL7s),
    foreach(member(SEDOL7, SEDOL7s), format("~s~n", [SEDOL7])).

?- task([
      "710889",
      "B0YBKJ",
      "406566",
      "B0YBLH",
      "228276",
      "B0YBKL",
      "557910",
      "B0YBKR",
      "585284",
      "B0YBKT",
      "BOYBKT", % Ill formed test case - illegal vowel.
      "B00030"
    ]).
%--------------------------------------------------- 372 self-describing-numbers
:- use_module(library(clpfd)).

self_describling :-
   forall(between(1, 10, I),
          (findall(N, self_describling(I,N), L),
      format('Len ~w, Numbers ~w~n', [I, L]))).

% search of the self_describling numbers of a given len
self_describling(Len, N) :-
   length(L, Len),
   Len1 is Len - 1,
   L = [H|T],

   % the first figure is greater than 0
   H in 1..Len1,

   % there is a least to figures so the number of these figures
   % is at most Len - 2
   Len2 is Len - 2,
   T ins 0..Len2,

   % the sum of the figures is equal to the len of the number
   sum(L, #=, Len),

   % There is at least one figure corresponding to the number of zeros
   H1 #= H+1,
   element(H1, L, V),
   V #> 0,

   % create the list
   label(L),

   % test the list
   msort(L, LNS),
   packList(LNS,LNP),
   numlist(0, Len1, NumList),
   verif(LNP,NumList, L),

   % list is OK, create the number
   maplist(atom_number, LA, L),
   number_chars(N, LA).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% testing a number (not use in this program)
self_describling(N) :-
   number_chars(N, L),
   maplist(atom_number, L, LN),
   msort(LN, LNS),
   packList(LNS,LNP), !,
   length(L, Len),
   Len1 is Len - 1,
   numlist(0, Len1, NumList),
   verif(LNP,NumList, LN).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% verif(PackList, Order_of_Numeral, Numeral_of_the_nuber_to_test)
%  Packlist is of the form [[Number_of_Numeral, Order_of_Numeral]|_]
%  Test succeed when

%  All lists are empty
verif([], [], []).

% Packlist is empty and all lasting numerals are 0
verif([], [_N|S], [0|T]) :-
   verif([], S, T).

% Number of numerals N is V
verif([[V, N]|R], [N|S], [V|T]) :-
   verif(R, S, T).

% Number of numerals N is 0
verif([[V, N1]|R], [N|S], [0|T]) :-
   N #< N1,
   verif([[V,N1]|R], S, T).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% ?- packList([a,a,a,b,c,c,c,d,d,e], L).
%  L = [[3,a],[1,b],[3,c],[2,d],[1,e]] .
% ?- packList(R,  [[3,a],[1,b],[3,c],[2,d],[1,e]]).
% R = [a,a,a,b,c,c,c,d,d,e] .
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
packList([],[]).

packList([X],[[1,X]]) :- !.


packList([X|Rest],[XRun|Packed]):-
    run(X,Rest, XRun,RRest),
    packList(RRest,Packed).


run(Var,[],[1, Var],[]).

run(Var,[Var|LRest],[N1, Var],RRest):-
    N #> 0,
    N1 #= N + 1,
    run(Var,LRest,[N, Var],RRest).


run(Var,[Other|RRest], [1, Var],[Other|RRest]):-
    dif(Var,Other).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines self_describling/0 and never calls it; it searches lengths 1..10 (25 s), so the driver runs its own loop over self_describling/2 for lengths 1..8 in its own format.
:- initialization(forall(between(1, 8, I), (findall(N, self_describling(I, N), L), format('Len ~w, Numbers ~w~n', [I, L])))).
%----------------------------------------------------------------- 373 semiprime
factors(N, FList):-
	factors(N, 2, 0, FList).

factors(1, _, _Count, []).
factors(_, _, Count, []):- Count > 1. % break on 2 factors reached
factors(N, Start, Count, [Fac|FList]):-
	N1 is floor(sqrt(N)),
	between(Start, N1, Fac),
	N mod Fac =:= 0,!,
	N2 is N div Fac,
	Count1 is Count + 1,
	factors(N2, Fac, Count1, FList).
factors(N, _, _, [N]):- N >= 2.

semiPrimeList(Limit, List):-
	findall(N, semiPrimes(2, Limit, N), List).

semiPrimes(Start, Limit, N):-
	between(Start, Limit, N),
	factors(N, [F1, F2]),
	N =:= F1 * F2.	% correct factors break

do:- semiPrimeList(100, SemiPrimes),
	writeln(SemiPrimes),
	findall(N, semiPrimes(1675, 1685, N), SemiPrimes2),
	writeln(SemiPrimes2).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines do/0 (the semiprimes to 100 and in 1675..1685) and never calls it; the driver calls it once at load.
:- initialization(do).
%-------------------------------------- 374 sequence-of-primes-by-trial-division
wheel235(L) :-
    W = [6, 4, 2, 4, 2, 4, 6, 2 | W],
    lazy_list(accumulate, 1/W, L).

accumulate(M/[A|As], N/As, N) :- N is M + A.

roll235wheel(Limit, A) :-
    wheel235(W),
    append(A, [N|_], W),
    N > Limit, !.	

prime235(N) :- % N is prime excepting multiples of 2, 3, 5.
    wheel235(W),
    wheel_prime(N, W).

wheel_prime(N, [D|_]) :- D*D > N, !.
wheel_prime(N, [D|Ds]) :- N mod D =\= 0, wheel_prime(N, Ds).

primes(Limit, [2, 3, 5 | Primes]) :-
    roll235wheel(Limit, Candidates),
    include(prime235, Candidates, Primes).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines primes/2 and never calls it; the driver prints the primes up to 100.
:- initialization((primes(100, Ps), format("~w~n", [Ps]))).
%--------------------------------------------------------------------- 375 set-1
:- use_module(library(lists)).

set :-
	A = [2, 4, 1, 3],
	B = [5, 2, 3, 2],
	(   is_set(A) -> format('~w is a set~n', [A])
	;   format('~w is not a set~n', [A])),
	(   is_set(B) -> format('~w is a set~n', [B])
	;   format('~w is not a set~n', [B])),

	% create a set from a list

	list_to_set(B, BS),
	(   is_set(BS) -> format('~nCreate a set from a list~n~w is a set~n', [BS])
	;   format('~w is not a set~n', [BS])),

	intersection(A, BS, I),
	format('~n~w intersection ~w => ~w~n', [A, BS, I]),
	union(A, BS, U),
	format('~w union ~w => ~w~n', [A, BS, U]),
	difference(A, BS, D),
	format('~w difference ~w => ~w~n', [A, BS, D]),

	X = [1,2],
	(   subset(X, A) -> format('~n~w is a subset of ~w~n', [X, A])
	;   format('~w is not a subset of ~w~n', [X, A])),
	Y = [1,5],
	(   subset(Y, A) -> format('~w is a subset of ~w~n', [Y, A])
	;   format('~w is not a subset of ~w~n', [Y, A])),
	Z = [1, 2, 3, 4],
	(  equal(Z, A) -> format('~n~w is equal to ~w~n', [Z, A])
	;   format('~w is not equal to ~w~n', [Z, A])),
	T = [1, 2, 3],
	(  equal(T, A) -> format('~w is equal to ~w~n', [T, A])
	;   format('~w is not equal to ~w~n', [T, A])).



% compute difference of sets
difference(A, B, D) :-
	exclude(member_(B), A, D).

member_(L, X) :-
	member(X, L).

equal([], []).
equal([H1 | T1], B) :-
	select(H1, B, B1),
	equal(T1, B1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines set/0 and never calls it; the driver calls it once at load.
:- initialization(set).
%---------------------------------------------------------------- 376 set-puzzle
do_it(N) :-	
	card_sets(N, Cards, Sets),
	!,
	format('Cards: ~n'),
	maplist(print_card, Cards),
	format('~nSets: ~n'),
	maplist(print_set, Sets).
	
print_card(Card) :- format('  ~p ~p ~p ~p~n', Card).
print_set(Set) :- maplist(print_card, Set), nl.

n(9,4).
n(12,6).

card_sets(N, Cards, Sets) :-
	n(N,L),
	repeat,
	random_deal(N, Cards),	
	setof(Set, is_card_set(Cards, Set), Sets),	
	length(Sets, L).

random_card([C,S,N,Sh]) :-
	random_member(C, [red, green, purple]),
	random_member(S, [oval, squiggle, diamond]),
	random_member(N, [one, two, three]),
	random_member(Sh, [solid, open, striped]).
	
random_deal(N, Cards) :-
	length(Cards, N),
	maplist(random_card, Cards).
	
is_card_set(Cards, Result) :-
	select(C1, Cards, Rest),
	select(C2, Rest, Rest2),
	select(C3, Rest2, _),
	
	match(C1, C2, C3),
	sort([C1,C2,C3], Result).
	
match([],[],[]).
match([A|T1],[A|T2],[A|T3]) :-
	match(T1,T2,T3).
match([A|T1],[B|T2],[C|T3]) :-
	dif(A,B), dif(B,C), dif(A,C),
	match(T1,T2,T3).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): do_it/1 deals its cards with random_member/2, which no ref can hold; the driver gives the solver beneath it, is_card_set/2, one fixed nine-card deal with exactly four sets and prints cards and sets in do_it/1's format.
:- initialization((Cards = [[green,squiggle,one,solid],[red,squiggle,two,solid],[purple,squiggle,two,solid],[red,squiggle,two,striped],[red,diamond,one,striped],[green,oval,three,striped],[purple,oval,three,solid],[red,oval,three,open],[green,squiggle,two,open]], setof(Set, is_card_set(Cards, Set), Sets), format('Cards: ~n'), maplist(print_card, Cards), format('~nSets: ~n'), maplist(print_set, Sets))).
%------------------------------------------------------------- 377 sexy-primes-2
:- module(prime_numbers, [find_prime_numbers/1, is_prime/1]).
:- dynamic is_prime/1.

find_prime_numbers(N):-
    retractall(is_prime(_)),
    assertz(is_prime(2)),
    init_sieve(N, 3),
    sieve(N, 3).

init_sieve(N, P):-
    P > N,
    !.
init_sieve(N, P):-
    assertz(is_prime(P)),
    Q is P + 2,
    init_sieve(N, Q).

sieve(N, P):-
    P * P > N,
    !.
sieve(N, P):-
    is_prime(P),
    !,
    S is P * P,
    cross_out(S, N, P),
    Q is P + 2,
    sieve(N, Q).
sieve(N, P):-
    Q is P + 2,
    sieve(N, Q).

cross_out(S, N, _):-
    S > N,
    !.
cross_out(S, N, P):-
    retract(is_prime(S)),
    !,
    Q is S + 2 * P,
    cross_out(Q, N, P).
cross_out(S, N, P):-
    Q is S + 2 * P,
    cross_out(Q, N, P).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this file is the sieve module (prime_numbers) of the task's solution and never calls it; the driver sieves to 100 with find_prime_numbers/1 and prints the is_prime/1 table it builds.
:- initialization((find_prime_numbers(100), findall(P, is_prime(P), Ps), format("~w~n", [Ps]))).
%------------------------------------------------------------------- 378 sha-1-1
:- use_module(library(sha)).
sha_hex(Str,Hex):-
   sha_hash(Str, Hash, []),
   hash_atom(Hash, Hex).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines sha_hex/2 and never calls it; the driver prints the SHA-1 of the task's "Rosetta Code".
:- initialization((sha_hex("Rosetta Code", H), writeln(H))).
%------------------------------------------------ 379 short-circuit-evaluation-1
short_circuit :-
	(   a_or_b(true, true) -> writeln('==> true'); writeln('==> false')) , nl,
	(   a_or_b(true, false)-> writeln('==>  true'); writeln('==> false')) , nl,
	(   a_or_b(false, true)-> writeln('==> true'); writeln('==> false')) , nl,
	(   a_or_b(false, false)-> writeln('==> true'); writeln('==> false')) , nl,
	(   a_and_b(true, true)-> writeln('==> true'); writeln('==> false')) , nl,
	(   a_and_b(true, false)-> writeln('==>  true'); writeln('==> false')) , nl,
	(   a_and_b(false, true)-> writeln('==>  true'); writeln('==> false')) , nl,
	(   a_and_b(false, false)-> writeln('==>  true'); writeln('==> false')) .


a_and_b(X, Y) :-
	format('a(~w) and b(~w)~n', [X, Y]),
	(   a(X), b(Y)).

a_or_b(X, Y) :-
	format('a(~w) or b(~w)~n', [X, Y]),
	(   a(X); b(Y)).

a(X) :-
	format('a(~w)~n', [X]),
	X.

b(X) :-
	format('b(~w)~n', [X]),
	X.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines short_circuit/0 and never calls it; the driver calls it once at load.
:- initialization(short_circuit).
%---------------------------------------------------------- 380 show-ascii-table
ascii :-
    forall(between(32, 47, N), row(N)).

row(N) :- N > 127, nl, !.
row(N) :-
    code(N),
    ascii(N),
    Nn is N + 16,
    row(Nn).

code(N) :- N < 100, format('  ~d : ', N).
code(N) :- N >= 100, format(' ~d : ', N).

ascii(32) :- write(' Spc    '), !.
ascii(127) :- write(' Del   '), !.
ascii(A) :- char_code(D,A), format(' ~w      ', D).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines ascii/0 and never calls it; the driver calls it once at load.
:- initialization(ascii).
%------------------------------------------------ 381 sierpinski-arrowhead-curve
main:-
    write_sierpinski_arrowhead('sierpinski_arrowhead.svg', 600, 8).

write_sierpinski_arrowhead(File, Size, Order):-
    open(File, write, Stream),
    format(Stream,
           "<svg xmlns='http://www.w3.org/2000/svg' width='~d' height='~d'>\n",
           [Size, Size]),
    write(Stream, "<rect width='100%' height='100%' fill='white'/>\n"),
    write(Stream, "<path stroke-width='1' stroke='black' fill='none' d='"),
    Margin = 20.0,
    Side is Size - 2.0 * Margin,
    X = Margin,
    Y is 0.5 * Size + 0.25 * sqrt(3) * Side,
    Cursor = cursor(X, Y, 0),
    (Order mod 2 == 1 -> turn(Cursor, -60, Cursor1) ; Cursor1 = Cursor),
    format(Stream, "M~g,~g", [X, Y]),
    curve(Stream, Order, Side, Cursor1, _, 60),
    write(Stream, "'/>\n</svg>\n"),
    close(Stream).

turn(cursor(X, Y, A), Angle, cursor(X, Y, A1)):-
    A1 is (A + Angle) mod 360.

draw_line(Stream, cursor(X, Y, A), Length, cursor(X1, Y1, A)):-
    Theta is (pi * A)/180.0,
    X1 is X + Length * cos(Theta),
    Y1 is Y + Length * sin(Theta),
    format(Stream, "L~g,~g", [X1, Y1]).

curve(Stream, 0, Length, Cursor, Cursor1, _):-
    !,
    draw_line(Stream, Cursor, Length, Cursor1).
curve(Stream, Order, Length, Cursor, Cursor1, Angle):-
    Order1 is Order - 1,
    Angle1 is -Angle,
    Length2 is Length/2.0,
    curve(Stream, Order1, Length2, Cursor, Cursor2, Angle1),
    turn(Cursor2, Angle, Cursor3),
    curve(Stream, Order1, Length2, Cursor3, Cursor4, Angle),
    turn(Cursor4, Angle, Cursor5),
    curve(Stream, Order1, Length2, Cursor5, Cursor1, Angle1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): main/0 writes an order-8 SVG to sierpinski_arrowhead.svg and prints nothing; the driver has write_sierpinski_arrowhead/3 write an order-4 curve to /dev/stdout.
:- initialization(write_sierpinski_arrowhead('/dev/stdout', 600, 4)).
%--------------------------------------------------------- 382 sierpinski-carpet
main:-
    write_sierpinski_carpet('sierpinski_carpet.svg', 486, 4).

write_sierpinski_carpet(File, Size, Order):-
    open(File, write, Stream),
    format(Stream,
           "<svg xmlns='http://www.w3.org/2000/svg' width='~d' height='~d'>\n",
           [Size, Size]),
    write(Stream, "<rect width='100%' height='100%' fill='white'/>\n"),
    Side is Size/3.0,
    sierpinski_carpet(Stream, 0, 0, Side, Order),
    write(Stream, "</svg>\n"),
    close(Stream).

sierpinski_carpet(Stream, X, Y, Side, 0):-
    !,
    X0 is X + Side,
    Y0 is Y + Side,
    write_square(Stream, X0, Y0, Side).
sierpinski_carpet(Stream, X, Y, Side, Order):-
    Order1 is Order - 1,
    Side1 is Side / 3.0,
    X0 is X + Side,
    Y0 is Y + Side,
    X1 is X0 + Side,
    Y1 is Y0 + Side,
    write_square(Stream, X0, Y0, Side),
    sierpinski_carpet(Stream, X, Y, Side1, Order1),
    sierpinski_carpet(Stream, X0, Y, Side1, Order1),
    sierpinski_carpet(Stream, X1, Y, Side1, Order1),
    sierpinski_carpet(Stream, X, Y0, Side1, Order1),
    sierpinski_carpet(Stream, X1, Y0, Side1, Order1),
    sierpinski_carpet(Stream, X, Y1, Side1, Order1),
    sierpinski_carpet(Stream, X0, Y1, Side1, Order1),
    sierpinski_carpet(Stream, X1, Y1, Side1, Order1).

write_square(Stream, X, Y, Side):-
    format(Stream,
           "<rect fill='black' x='~g' y='~g' width='~g' height='~g'/>\n",
           [X, Y, Side, Side]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): main/0 writes an order-4 SVG (4681 squares) to sierpinski_carpet.svg and prints nothing; the driver has write_sierpinski_carpet/3 write an order-2 carpet to /dev/stdout.
:- initialization(write_sierpinski_carpet('/dev/stdout', 486, 2)).
%------------------------------------------------------- 383 sierpinski-pentagon
main:-
    write_sierpinski_pentagon('sierpinski_pentagon.svg', 600, 5).

write_sierpinski_pentagon(File, Size, Order):-
    open(File, write, Stream),
    format(Stream, "<svg xmlns='http://www.w3.org/2000/svg' width='~d' height='~d'>\n",
       [Size, Size]),
    write(Stream, "<rect width='100%' height='100%' fill='white'/>\n"),
    Margin = 5,
    Radius is Size/2 - 2 * Margin,
    Side is Radius * sin(pi/5) * 2,
    Height is Side * (sin(pi/5) + sin(2 * pi/5)),
    X is Size/2,
    Y is (Size - Height)/2,
    Scale_factor is 1/(2 + cos(2 * pi/5) * 2),
    sierpinski_pentagon(Stream, X, Y, Scale_factor, Side, Order),
    write(Stream, "</svg>\n"),
    close(Stream).

sierpinski_pentagon(Stream, X, Y, _, Side, 1):-
    !,
    write(Stream, "<polygon stroke-width='1' stroke='black' fill='blue' points='"),
    format(Stream, '~g,~g', [X, Y]),
    Angle is 6 * pi/5,
    write_pentagon_points(Stream, Side, Angle, X, Y, 5),
    write(Stream, "'/>\n").
sierpinski_pentagon(Stream, X, Y, Scale_factor, Side, N):-
    Side1 is Side * Scale_factor,
    N1 is N - 1,
    Angle is 6 * pi/5,
    sierpinski_pentagons(Stream, X, Y, Scale_factor, Side1, Angle, N1, 5).

write_pentagon_points(_, _, _, _, _, 0):-!.
write_pentagon_points(Stream, Side, Angle, X, Y, N):-
    N1 is N - 1,
    X1 is X + cos(Angle) * Side,
    Y1 is Y - sin(Angle) * Side,
    Angle1 is Angle + 2 * pi/5,
    format(Stream, ' ~g,~g', [X1, Y1]),
    write_pentagon_points(Stream, Side, Angle1, X1, Y1, N1).

sierpinski_pentagons(_, _, _, _, _, _, _, 0):-!.
sierpinski_pentagons(Stream, X, Y, Scale_factor, Side, Angle, N, I):-
    I1 is I - 1,
    Distance is Side + Side * cos(2 * pi/5) * 2,
    X1 is X + cos(Angle) * Distance,
    Y1 is Y - sin(Angle) * Distance,
    Angle1 is Angle + 2 * pi/5,
    sierpinski_pentagon(Stream, X1, Y1, Scale_factor, Side, N),
    sierpinski_pentagons(Stream, X1, Y1, Scale_factor, Side, Angle1, N, I1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): main/0 writes an order-5 SVG to sierpinski_pentagon.svg and prints nothing; the driver has write_sierpinski_pentagon/3 write an order-4 pentaflake (125 pentagons) to /dev/stdout.
:- initialization(write_sierpinski_pentagon('/dev/stdout', 600, 4)).
%------------------------------------------------------- 384 sierpinski-triangle
sierpinski_triangle(N) :-
	Len is 2 ** (N+1) - 1,
	length(L, Len),
	numlist(1, Len, LN),
	maplist(init(N), L, LN),
	atomic_list_concat(L, Line),
	writeln(Line),
	NbTours is 2**N - 1,
	loop(NbTours, LN, Len, L).

init(N, Cell, Num) :-
	(   Num is 2 ** N + 1  -> Cell = *; Cell = ' ').

loop(0, _, _, _) :- !.

loop(N, LN, Len, L) :-
	maplist(compute_next_line(Len, L), LN, L1),
	atomic_list_concat(L1, Line),
	writeln(Line),
	N1 is N - 1,
	loop(N1, LN, Len, L1).



compute_next_line(Len, L, I, V) :-
	I1 is I - 1,
	I2 is I+1,
	(   I = 1 ->  V0 = ' '; nth1(I1, L, V0)),
	nth1(I, L, V1),
	(   I = Len -> V2 = ' '; nth1(I2, L, V2)),
	rule_90(V0, V1, V2, V).

rule_90('*','*','*', ' ').
rule_90('*','*',' ', '*').
rule_90('*',' ','*', ' ').
rule_90('*',' ',' ', '*').
rule_90(' ','*','*', '*').
rule_90(' ','*',' ', ' ').
rule_90(' ',' ','*', '*').
rule_90(' ',' ',' ', ' ').

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines sierpinski_triangle/1 and never calls it; the driver draws the task's order 4.
:- initialization(sierpinski_triangle(4)).
%--------------------------------------------------- 385 sieve-of-eratosthenes-1
primes(N, L) :- numlist(2, N, Xs),
           sieve(Xs, L).

sieve([H|T], [H|X]) :- H2 is H + H,
                       filter(H, H2, T, R),
                       sieve(R, X).
sieve([], []).

filter(_, _, [], []).
filter(H, H2, [H1|T], R) :-
    (   H1 < H2 -> R = [H1|R1], filter(H, H2, T, R1)
    ;   H3 is H2 + H,
        (   H1 =:= H2  ->       filter(H, H3, T, R)
        ;                       filter(H, H3, [H1|T], R) ) ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines primes/2 and never calls it; the driver prints the primes up to 100.
:- initialization((primes(100, L), format("~w~n", [L]))).
%-------------------------------------------------- 386 sieve-of-eratosthenes-10
sieve(N, [2|PS]) :-       % PS is list of odd primes up to N
    retractall(mult(_)),
    sieve_O(3,N,PS).

sieve_O(I,N,PS) :-        % sieve odds from I up to N to get PS
    I =< N, !, I1 is I+2,
    (   mult(I) -> sieve_O(I1,N,PS)
    ;   (   I =< N / I ->
            ISq is I*I, DI  is 2*I, add_mults(DI,ISq,N)
        ;   true
        ),
        PS = [I|T],
        sieve_O(I1,N,T)
    ).
sieve_O(I,N,[]) :- I > N.

add_mults(DI,I,N) :-
    I =< N, !,
    ( mult(I) -> true ; assert(mult(I)) ),
    I1 is I+DI,
    add_mults(DI,I1,N).
add_mults(_,I,N) :- I > N.

main(N) :- current_prolog_flag(verbose,F),
  set_prolog_flag(verbose,normal),
  time( sieve( N,P)), length(P,Len), last(P, LP), writeln([Len,LP]),
  set_prolog_flag(verbose,F).

:- dynamic( mult/1 ).
:- main(100000), main(1000000).
%-------------------------------------------------- 387 sieve-of-eratosthenes-12
?- use_module(library(heaps)).

prime(2).
prime(N) :- prime_heap(N, _).

prime_heap(3, H) :- list_to_heap([9-6], H).
prime_heap(N, H) :-
    prime_heap(M, H0), N0 is M + 2,
    next_prime(N0, H0, N, H).

next_prime(N0, H0, N, H) :-
    \+ min_of_heap(H0, N0, _),
    N = N0, Composite is N*N, Skip is N+N,
    add_to_heap(H0, Composite, Skip, H).
next_prime(N0, H0, N, H) :-
    min_of_heap(H0, N0, _),
    adjust_heap(H0, N0, H1), N1 is N0 + 2,
    next_prime(N1, H1, N, H).

adjust_heap(H0, N, H) :-
    min_of_heap(H0, N, _),
    get_from_heap(H0, N, Skip, H1),
    Composite is N + Skip, add_to_heap(H1, Composite, Skip, H2),
    adjust_heap(H2, N, H).
adjust_heap(H, N, H) :-
    \+ min_of_heap(H, N, _).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the unbounded generator prime/1 and never calls it; the driver prints its first 25 primes (those below 100).
:- initialization((once(findnsols(25, P, prime(P), Ps)), format("~w~n", [Ps]))).
%--------------------------------------------------- 388 sieve-of-eratosthenes-2
primes(X, PS) :- X > 1, range(2, X, R), sieve(R, PS).

range(X, X, [X]) :- !.
range(X, Y, [X | R]) :- X < Y, X1 is X + 1, range(X1, Y, R).

mult(A, B, C) :- C is A*B.

sieve([X], [X]) :- !.
sieve([H | T], [H | S]) :- maplist( mult(H), [H | T], MS),
                           remove(MS, T, R), sieve(R, S).

remove( _,       [],      []     ) :- !.
remove( [H | X], [H | Y], R      ) :- !, remove(X, Y, R).
remove( X,       [H | Y], [H | R]) :- remove(X, Y, R).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines primes/2 and never calls it; the driver prints the primes up to 100.
:- initialization((primes(100, L), format("~w~n", [L]))).
%--------------------------------------------------- 389 sieve-of-eratosthenes-4
primes(X, PS) :- X > 1, range(2, X, R), sieve(X, R, PS).

range(X, X, [X]) :- !.
range(X, Y, [X | R]) :- X < Y, X1 is X + 1, range(X1, Y, R).

sieve(X, [H | T], [H | T]) :- H*H > X, !.
sieve(X, [H | T], [H | S]) :- mults( H, X, MS), remove(MS, T, R), sieve(X, R, S).

mults( H, Lim, MS):- M is H*H, mults( H, M, Lim, MS).
mults( _, M, Lim, []):- M > Lim, !.
mults( H, M, Lim, [M|MS]):- M2 is M+H, mults( H, M2, Lim, MS).

remove( _,       [],      []     ) :- !.
remove( [H | X], [H | Y], R      ) :- !, remove(X, Y, R).
remove( [H | X], [G | Y], R      ) :- H < G, !, remove(X, [G | Y], R).
remove( X,       [H | Y], [H | R]) :- remove(X, Y, R).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines primes/2 and never calls it; the driver prints the primes up to 100.
:- initialization((primes(100, L), format("~w~n", [L]))).
%--------------------------------------------------- 390 sieve-of-eratosthenes-5
primes(N,[]):- N < 2, !.
primes(N,[2|R]):- ints(3,N,L), sift(N,L,R).
ints(A,B,[A|C]):- A=<B -> D is A+2, ints(D,B,C).
ints(_,_,[]).
sift(_,[],[]).
sift(N,[A|B],[A|C]):- A*A =< N ->  rmv(A,B,D), sift(N,D,C)
                      ; C=B.
rmv(A,B,D):- M is A*A, rmv(A,M,B,D).
rmv(_,_,[],[]).
rmv(P,M,[A|B],C):- (   M>A ->  C=[A|D], rmv(P,M,B,D)
                   ;   M==A ->  M2 is M+2*P, rmv(P,M2,B,C)
                   ;   M<A ->  M2 is M+2*P, rmv(P,M2,[A|B],C)
                   ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines primes/2 and never calls it; the driver prints the primes up to 100.
:- initialization((primes(100, L), format("~w~n", [L]))).
%--------------------------------------------------- 391 sieve-of-eratosthenes-6
primes(PS):- count(2, 1, NS), sieve(NS, PS).

count(N, D, [N|T]):- freeze(T, (N2 is N+D, count(N2, D, T))).

sieve([N|NS],[N|PS]):- N2 is N*N, count(N2,N,A), remove(A,NS,B), freeze(PS, sieve(B,PS)).

take(N, X, A):- length(A, N), append(A, _, X).

remove([A|T],[B|S],R):- A < B -> remove(T,[B|S],R) ;
                        A=:=B -> remove(T,S,R) ;
                        R = [B|R2], freeze(R2, remove([A|T], S, R2)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the lazy infinite list primes/1 and its take/3 and never calls them; the driver prints its first 25 primes (those below 100).
:- initialization((primes(PS), take(25, PS, A), format("~w~n", [A]))).
%--------------------------------------------------- 392 sieve-of-eratosthenes-8
% %sieve( +N, -Primes ) is true if Primes is the list of consecutive primes
% that are less than or equal to N
sieve( N, [2|Rest]) :-
  retractall( composite(_) ),
  sieve( N, 2, Rest ) -> true.  % only one solution

% sieve P, find the next non-prime, and then recurse:
sieve( N, P, [I|Rest] ) :-
  sieve_once(P, N),
  (P = 2 -> P2 is P+1; P2 is P+2),
  between(P2, N, I),
  (composite(I) -> fail; sieve( N, I, Rest )).

% It is OK if there are no more primes less than or equal to N:
sieve( N, P, [] ).

sieve_once(P, N) :-
  forall( between(P, N, P, IP),
          (composite(IP) -> true ; assertz( composite(IP) )) ).


% To avoid division, we use the iterator
% between(+Min, +Max, +By, -I)
% where we assume that By > 0
% This is like "for(I=Min; I <= Max; I+=By)" in C.
between(Min, Max, By, I) :-
  Min =< Max,
  A is Min + By,
  (I = Min; between(A, Max, By, I) ).


% Some Prolog implementations require the dynamic predicates be
%  declared:

:- dynamic( composite/1 ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines sieve/2 and never calls it; the driver prints the primes up to 100.
:- initialization((sieve(100, Ps), format("~w~n", [Ps]))).
%--------------------------------------------------------------------- 393 sleep
rosetta_sleep(Time) :-
	writeln('Sleeping...'),
	sleep(Time),
	writeln('Awake!').

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines rosetta_sleep/1 and never calls it; the driver sleeps one second between its two lines.
:- initialization(rosetta_sleep(1)).
%---------------------------------------- 394 smallest-square-that-begins-with-n
firstSqr(Num, Sqr):-
	Start is ceil(sqrt(Num)),
	NumLen is floor(log10(Num)) + 1,
	between(Start, inf, N),
	Sqr is N * N,
	SqrLen is floor(log10(Sqr)) + 1,
	Num =:= Sqr div 10**(SqrLen - NumLen),!.

showList(List):-
	findnsols(7, _, (member(NumSqr, List), writef('%3r ->%6r', NumSqr)), _),
	nl,
	fail.
showList(_).

do:-findall([Num, Sqr], (between(1, 49, Num), firstSqr(Num, Sqr)), NumSqrList),
	showList(NumSqrList).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines do/0 (the task's n = 1..49) and never calls it; the driver calls it once at load.
:- initialization(do).
%--------------------------------------------------- 395 solve-a-hopido-puzzle-1
hopido(Grid,[C|Solved],Xs,Ys) :-	
	select(C,Grid,RGrid),
	solve(RGrid,C,Solved,Xs,Ys).
	
solve([],_,[],_,_).	
solve(Grid,p(X,Y),[p(X1,Y1)|R],Xs,Ys) :-
	valid_move(X,Y,Xs,Ys,X1,Y1),
	select(p(X1,Y1),Grid,NextGrid),
	solve(NextGrid,p(X1,Y1),R,Xs,Ys).	
	
valid_move(X,Y,Xs,_,X1,Y)   :- j3(X,X1,Xs).			% right	(3,0)
valid_move(X,Y,Xs,_,X1,Y)   :- j3(X1,X,Xs).			% left (-3,0)
valid_move(X,Y,_,Ys,X,Y1)   :- j3(Y,Y1,Ys).			% up (0,3).
valid_move(X,Y,_,Ys,X,Y1)   :- j3(Y1,Y,Ys).  			% down (0,-3).
valid_move(X,Y,Xs,Ys,X1,Y1) :- j2(X,X1,Xs), j2(Y,Y1,Ys).  	% up-right (2,2).
valid_move(X,Y,Xs,Ys,X1,Y1) :- j2(X1,X,Xs), j2(Y,Y1,Ys).  	% up-left (-2,2).
valid_move(X,Y,Xs,Ys,X1,Y1) :- j2(X1,X,Xs), j2(Y1,Y,Ys).  	% down-left (-2,-2).
valid_move(X,Y,Xs,Ys,X1,Y1) :- j2(X,X1,Xs), j2(Y1,Y,Ys).  	% down-right (2,-2).

j2(O,N,[O,_,N|_]).
j2(O,N,[_|T]) :- j2(O,N,T).

j3(O,N,[O,_,_,N|_]).
j3(O,N,[_|T]) :- j3(O,N,T).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines hopido/4 and never calls it; the driver solves the task's puzzle (the cells solve-a-hopido-puzzle-2 lists) and prints the path, as that file's test/0 does.
:- initialization((P = [p(1,0),p(2,0),p(4,0),p(5,0),p(0,1),p(1,1),p(2,1),p(3,1),p(4,1),p(5,1),p(6,1),p(0,2),p(1,2),p(2,2),p(3,2),p(4,2),p(5,2),p(6,2),p(1,3),p(2,3),p(3,3),p(4,3),p(5,3),p(2,4),p(3,4),p(4,4),p(3,5)], XYs = [0,1,2,3,4,5,6], hopido(P, S, XYs, XYs), maplist(writeln, S))).
%---------------------------------------------------- 396 solve-a-numbrix-puzzle
/*
 * Solver
 */
solve([A|T]) :-
	numlist(1,81,S),
	select(A,S,R),
	solve_([A|T],R).

solve_([_],[]).
solve_([A,B|T],R) :-
	move(A,B),
	select(B,R,Rt),
	solve_([B|T],Rt).
	
move(A,B) :- lr(A,B) ; lr(B,A) ; ud(A,B) ; ud(B,A).

% create the left-right mapping rules at compile time
term_expansion(lr(0,0),LrList) :-
	findall(LR,
		(between(1,81,N), M is N mod 9, dif(M,0), succ(N,N1), LR = lr(N,N1)),
		LrList).
lr(0,0).

% create the up-down mapping rules at compile time
term_expansion(ud(0,0),UdList) :-
	findall(UD,
		(between(1,72,N), N9 is N + 9, UD = ud(N,N9)),
		UdList).
ud(0,0).


/*
 * Grid <-> Solvable List
 */
grid_solvable([],_,_).
grid_solvable([A|T],N,S) :-
	(integer(A) -> nth1(A,S,N);true),
	succ(N,N1),
	grid_solvable(T,N1,S).
	
solvable_grid([],_,_).
solvable_grid([A|T],N,G) :-
	nth1(A,G,N),
	succ(N,N1),
	solvable_grid(T,N1,G).


/*
 * Print Grid
 */
print_cell(C) :-
	C >= 10 -> format(' ~d', C)
	; format('  ~d', C).
print_grid([],_).
print_grid([C|T],N) :-
	print_cell(C),
	(0 is N mod 9 -> nl ; true),
	succ(N,N1),
	print_grid(T,N1).

	
/* 	
 * Numbrix!
 */
numbrix(L) :-
	length(S, 81),
	grid_solvable(L,1,S),
	solve(S),
	solvable_grid(S,1,P),
	print_grid(P,1),
	!.

test1 :- numbrix([
     _,  _,  _,  _,  _,  _,  _,  _,  _,
     _,  _, 46, 45,  _, 55, 74,  _,  _,
     _, 38,  _,  _, 43,  _,  _, 78,  _,
     _, 35,  _,  _,  _,  _,  _, 71,  _,
     _,  _, 33,  _,  _,  _, 59,  _,  _,
     _, 17,  _,  _,  _,  _,  _, 67,  _,
     _, 18,  _,  _, 11,  _,  _, 64,  _,
     _,  _, 24, 21,  _,  1,  2,  _,  _,
     _,  _,  _,  _,  _,  _,  _,  _,  _
]).

test2 :- numbrix([
     _,  _,  _,  _,  _,  _,  _,  _,  _,
     _, 11, 12, 15, 18, 21, 62, 61,  _,
     _,  6,  _,  _,  _,  _,  _, 60,  _,
     _, 33,  _,  _,  _,  _,  _, 57,  _,
     _, 32,  _,  _,  _,  _,  _, 56,  _,
     _, 37,  _,  1,  _,  _,  _, 73,  _,
     _, 38,  _,  _,  _,  _,  _, 72,  _,
     _, 43, 44, 47, 48, 51, 76, 77,  _,
     _,  _,  _,  _,  _,  _,  _,  _,  _
]).

test3 :- numbrix([
    17,  _,  _,  _, 11,  _,  _,  _, 59,
    _,  15,  _,  _,  6,  _,  _, 61,  _,
    _,   _,  3,  _,  _,  _, 63,  _,  _,
    _,   _,  _,  _, 66,  _,  _,  _,  _,
    23, 24,  _, 68, 67, 78,  _, 54, 55,
    _,   _,  _,  _, 72,  _,  _,  _,  _,
    _,   _, 35,  _,  _,  _, 49,  _,  _,
    _,  29,  _,  _, 40,  _,  _, 47,  _,
    31,  _,  _,  _, 39,  _,  _,  _, 45
]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines test1/0, test2/0 (the task's two puzzles) and test3/0 and never calls them; the driver solves the task's two.
:- initialization((test1, nl, test2)).
%-------------------------------------------- 397 solve-the-no-connection-puzzle
:- use_module(library(clpfd)).

edge(a, c).
edge(a, d).
edge(a, e).
edge(b, d).
edge(b, e).
edge(b, f).
edge(c, d).
edge(c, g).
edge(d, e).
edge(d, g).
edge(d, h).
edge(e, f).
edge(e, g).
edge(e, h).
edge(f, h).

connected(A, B) :-
	(   edge(A,B); edge(B, A)).

no_connection_puzzle(Vs) :-
	% construct the arranged list of the nodes
	bagof(A, B^(edge(A,B); edge(B, A)), Lst),
	sort(Lst, L),
	length(L, Len),

	% construct the list of the values
	length(Vs, Len),
	Vs ins 1..Len,
	all_distinct(Vs),

	% two connected nodes must have values different for more than 1
	set_constraints(L, Vs),
	label(Vs).


set_constraints([], []).

set_constraints([H | T], [VH | VT]) :-
	set_constraint(H, T, VH, VT),
	set_constraints(T, VT).



set_constraint(_, [], _, []).
set_constraint(H, [H1 | T1], V, [VH | VT]) :-
	connected(H, H1),
	(   V - VH #> 1; VH - V #> 1),
	set_constraint(H, T1, V, VT).

set_constraint(H, [H1 | T1], V, [_VH | VT]) :-
	\+connected(H, H1),
	set_constraint(H, T1, V, VT).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines no_connection_puzzle/1 and never calls it; the driver prints the first arrangement it finds, the values of holes a..h.
:- initialization((no_connection_puzzle(Vs), format("~w~n", [Vs]))).
%----------------------------------------- 398 sort-a-list-of-object-identifiers
main:-
    sort_oid_list(["1.3.6.1.4.1.11.2.17.19.3.4.0.10",
    "1.3.6.1.4.1.11.2.17.5.2.0.79",
    "1.3.6.1.4.1.11.2.17.19.3.4.0.4",
    "1.3.6.1.4.1.11150.3.4.0.1",
    "1.3.6.1.4.1.11.2.17.19.3.4.0.1",
    "1.3.6.1.4.1.11150.3.4.0"], Sorted_list),
    foreach(member(oid(_, Oid), Sorted_list), writeln(Oid)).

sort_oid_list(Oid_list, Sorted_list):-
    parse_oid_list(Oid_list, Parsed),
    sort(1, @=<, Parsed, Sorted_list).

parse_oid_list([], []):-!.
parse_oid_list([Oid|Oid_list], [oid(Numbers, Oid)|Parsed]):-
    parse_oid(Oid, Numbers),
    parse_oid_list(Oid_list, Parsed).

parse_oid(Oid, Numbers):-
    split_string(Oid, ".", ".", Strings),
    number_strings(Numbers, Strings).

number_strings([], []):-!.
number_strings([Number|Numbers], [String|Strings]):-
    number_string(Number, String),
    number_strings(Numbers, Strings).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%--------------------------------------------------- 399 sort-disjoint-sublist-1
% ===
% Problem description
% ===
% http://rosettacode.org/wiki/Sort_disjoint_sublist
%
% Given a list of values and a set of integer indices into that value list,
% the task is to sort the values at the given indices, while preserving the
% values at indices outside the set of those to be sorted.
%
% Make your example work with the following list of values and set of indices:
%
%        Values: [7, 6, 5, 4, 3, 2, 1, 0]
%
%        Indices: {6, 1, 7}
%
% Where the correct result would be:
%
%        [7, 0, 5, 4, 3, 2, 1, 6].
%
% In case of one-based indexing, rather than the zero-based indexing above,
% you would use the indices {7, 2, 8} instead.
%
% The indices are described as a set rather than a list but any collection-type
% of those indices without duplication may be used as long as the example is
% insensitive to the order of indices given.


% ===
% Notes
% ===
% For predicate descriptions, see https://www.swi-prolog.org/pldoc/man?section=preddesc
%
% Solution using only predicates marked "builtin".
%
% - sort/2 is a built-in predicate. When called as sort(A,B) then
%          it sorts A to B according to the "standard order of terms",
%          (for integers, this means ascending order). It does remove
%          duplicates.
% - msort/2 is the same as sort/2 but does not remove duplicates.
%
% Everything is a list as there is no "set" datatype in Prolog.


% ===
% Main predicate (the one that would be exported from a Module)
% sort_disjoint_sublist(+Values,+Indexes,?ValuesSorted)
% ===

sort_disjoint_sublist(Values,Indexes,ValuesSorted) :-
   sort(Indexes,IndexesSorted),
   insert_fresh_vars(0,IndexesSorted,Values,FreshVars,ValsToSort,ValuesFreshened),
   msort(ValsToSort,ValsSorted),  % this is the "sorting of values"
   % The next two lines could be left out with suitable naming,
   % but they make explicit what happens:
   FreshVars = ValsSorted,         % fresh variables are unified with sorted variables
   ValuesSorted = ValuesFreshened. % ValuesFreshend is automatically the sought output

% ===
% Helper predicate (would not be exported from a Module)
% ===

% insert_fresh_vars(+CurIdx,+[I|Is],+[V|Vs],-FreshVars,-ValsToSort,-ValsFreshy)
%
%   CurIdx:     Monotonically increasing index into the list of values by
%               which we iterate.
%   [I|Is]:     Sorted list of indexes of interest. The smallest (leftmost)
%               element is removed on every "index hit", leaving eventually
%               an empty list, which gives us the base case.
%   [V|Vs]:     The list of values of interest with the leftmost element the
%               element with index CurIdx, all elements with lower index
%               having been discarded. Leftmost element is popped off on
%               each call.
%   FreshVars:  Constructed as output. If there was an "index hit", the
%               fresh variable pushed on FreshVars is also pushed on Vars.
%   ValsToSort: Constructed as output. If there was an "index hit", the
%               leftmost value from [V|Vs] is pushed on.
%   ValsFreshy: Constructed as output. If there was an "index hit", a fresh
%               variable is pushed on. If there was no "index hit", the actual
%               value from [V|Vs] is pushed on instead.

insert_fresh_vars(CurIdx,[I|Is],[V|Vs],FreshVars,ValsToSort,[V|ValsFreshy]) :-
   CurIdx<I, % no index hit, CurIdx is still too small, iterate over value
   !,
   succ(CurIdx,NextIdx),
   insert_fresh_vars(NextIdx,[I|Is],Vs,FreshVars,ValsToSort,ValsFreshy).

insert_fresh_vars(CurIdx,[I|Is],[V|Vs],[Fresh|FreshVars],[V|ValsToSort],[Fresh|ValsFreshy]) :-
   CurIdx=I, % index hit, replace value by fresh variable
   !,
   succ(CurIdx,NextIdx),
   insert_fresh_vars(NextIdx,Is,Vs,FreshVars,ValsToSort,ValsFreshy).

insert_fresh_vars(_,[],V,[],[],V).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines sort_disjoint_sublist/3 and never calls it; the driver runs the task's values and indices {6, 1, 7}.
:- initialization((sort_disjoint_sublist([7,6,5,4,3,2,1,0], [6,1,7], R), format("~w~n", [R]))).
%--------------------------------------------------- 400 sort-disjoint-sublist-2
% ===
% Main predicate
% ===

sort_disjoint_sublist(Values,Indexes,ValuesSorted) :-
   sort(Indexes,IndexesSorted),
   insert_fresh_vars_by_splintering(IndexesSorted,Values,FreshVars,ValsToSort,ValuesFreshened),
   msort(ValsToSort,ValsSorted),  % this is the "sorting of values"
   % The next two lines could be left out with suitable naming,
   % but they make explicit what happens:
   FreshVars = ValsSorted,         % fresh variables are unified with sorted variables
   ValuesSorted = ValuesFreshened. % ValuesFreshend is automatically the sought output

% ===
% Helpers
% ===

insert_fresh_vars_by_splintering([I|Is],Values,[Fresh|FreshVars],[ValAtI|ValsToSort],ValsFreshyFinal) :-
   splinter(Values,I,ValAtI,ValsFront,ValsBack),         % splinter  Values  --> ValsFront + ValAtI + ValsBack
   append([ValsFront,[Fresh],ValsBack],ValsFreshyNext),  % recompose ValsFront + Fresh + ValsBack --> ValuesFreshyNext
   insert_fresh_vars_by_splintering(Is,ValsFreshyNext,FreshVars,ValsToSort,ValsFreshyFinal).

insert_fresh_vars_by_splintering([],V,[],[],V).

% "splinter" a list into a frontlist, the element at position N and a backlist

splinter(List, N, Elem, Front, Back) :-
    length(Front, N),
    append(Front, [Elem|Back], List).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines sort_disjoint_sublist/3 and never calls it; the driver runs the task's values and indices {6, 1, 7}.
:- initialization((sort_disjoint_sublist([7,6,5,4,3,2,1,0], [6,1,7], R), format("~w~n", [R]))).
%-------------------------------------------- 401 sort-numbers-lexicographically
lexicographical_sort(Numbers, Sorted_numbers):-
    number_strings(Numbers, Strings),
    sort(Strings, Sorted_strings),
    number_strings(Sorted_numbers, Sorted_strings).

number_strings([], []):-!.
number_strings([Number|Numbers], [String|Strings]):-
    number_string(Number, String),
    number_strings(Numbers, Strings).

number_list(From, To, []):-
    From > To,
    !.
number_list(From, To, [From|Rest]):-
    Next is From + 1,
    number_list(Next, To, Rest).

lex_sorted_number_list(Number, List):-
    (Number < 1 ->
        number_list(Number, 1, Numbers)
        ;
        number_list(1, Number, Numbers)
    ),
    lexicographical_sort(Numbers, List).

test(Number):-
    lex_sorted_number_list(Number, List),
    writef('%w: %w\n', [Number, List]).

main:-
    test(0),
    test(5),
    test(13),
    test(21),
    test(-22).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%-------------------------------------------- 402 sort-using-a-custom-comparator
rosetta_sort :-
	L = ["Here", "are", "some", "sample", "strings", "to", "be", "sorted" ],
	predsort(my_comp, L, L1),
	writeln('Input list :'),
	maplist(my_write, L), nl,nl,
	writeln('Sorted list :'),
	maplist(my_write, L1).


my_comp(Comp, W1, W2) :-
	string_length(W1,L1),
	string_length(W2, L2),
	(   L1 < L2 -> Comp = '>'
	;   L1 > L2 -> Comp = '<'
	;   compare(Comp, W1, W2)).

my_write(W) :-
	format('~s ', [W]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines rosetta_sort/0 (the task's eight strings) and never calls it; the driver calls it once at load.
:- initialization(rosetta_sort).
%----------------------------------------------- 403 sorting-algorithms-bogosort
bogo_sort(L,Rl) :-
	min_list(L,Min),
	repeat,
	random_permutation(L,Rl),
	is_sorted(Rl,Min),
	!.
	
is_sorted([],_).
is_sorted([N|T],P) :-
	N >= P,
	is_sorted(T,N).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines bogo_sort/2 and never calls it; it shuffles with random_permutation/2 until sorted, so only its running time varies, and the driver prints the sorted result for an eight-element list.
:- initialization((bogo_sort([3, 1, 4, 1, 5, 9, 2, 6], L), format("~w~n", [L]))).
%------------------------------------------ 404 sorting-algorithms-bubble-sort-1
%___________________________________________________________________________
% Bubble sort

bubble(0, Res, Res, sorted).
bubble(Len, [A,B|T], Res, unsorted) :- A > B, !, bubble(Len,[B,A|T], Res, _).
bubble(Len, [A|T], [A|Ts], Ch) :- L is Len-1, bubble(L, T, Ts, Ch).

bubblesort(In, Out) :- length(In, Len), bubblesort(Len, In, Out).
bubblesort(0, In, In).
bubblesort(Len, In, Out) :-
   bubble(Len, In, Bubbled, SortFlag),  % bubble the list
   (SortFlag=sorted -> Out=Bubbled;     % list is already sorted
    SegLen is Len - 1,          % one fewer to process
    writef('bubbled=%w\n', [Bubbled]),  % show progress
    bubblesort(SegLen, Bubbled, Out)).

test :-  In = [8,9,1,3,4,2,6,5,4],
    writef('  input=%w\n', [In]),
    bubblesort(In, R),
    writef('-> %w\n', [R]).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines test/0 and never calls it; the driver calls it once at load.
:- initialization(test).
%------------------------------------------ 405 sorting-algorithms-bubble-sort-2
:- initialization(main).


bubble_sort(Xs,Res) :-
    write(Xs), nl
  , bubble_pass(Xs,Ys,Changed)
  , ( Changed == true -> bubble_sort(Ys,Res) ; Res = Xs )
  .

bubble_pass(Xs,Res,Changed) :-
    Xs = [X|Ys], Ys = [Y|Zs]
  , ( X > Y -> H = Y, T = [X|Zs], Changed = true
             ; H = X, T = Ys
    )
  , Res = [H|R], !, bubble_pass(T,R,Changed)
  ; Res = Xs
  .


test([8,9,1,3,4,2,6,5,4]).

main :- test(T), bubble_sort(T,_), halt.
%------------------------------------------ 406 sorting-algorithms-cocktail-sort
ctail(_, [], Rev, Rev, sorted) :- write(Rev), nl.
ctail(fwrd, [A,B|T], In, Rev, unsorted) :- A > B, !,
	ctail(fwrd, [B,A|T], In, Rev, _).
ctail(bkwd, [A,B|T], In, Rev, unsorted) :- A < B, !,
	ctail(bkwd, [B,A|T], In, Rev, _).
ctail(D,[A|T], In, Rev, Ch) :- !, ctail(D, T, [A|In], Rev, Ch).

cocktail([], []).
cocktail(In, [Min|Out]) :-
	ctail(fwrd, In, [], [Max|Rev], SFlag),
	( SFlag=sorted->reverse([Max|Rev], [Min|Out]);
	 (ctail(bkwd, Rev, [Max], [Min|Tmp], SortFlag),
	  (SortFlag=sorted->Out=Tmp; !, cocktail(Tmp, Out)))).

test :-  In = [8,9,1,3,4,2,6,5,4],
	 writef('  input=%w\n', [In]),
	 cocktail(In, R),
	 writef('-> %w\n', [R]).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines test/0 and never calls it; the driver calls it once at load.
:- initialization(test).
%--------------------------------------- 407 sorting-algorithms-insertion-sort-1
insert_sort(L1,L2) :-
  insert_sort_intern(L1,[],L2).

insert_sort_intern([],L,L).
insert_sort_intern([H|T],L1,L) :-
  insert(L1,H,L2),
  insert_sort_intern(T,L2,L).

insert([],X,[X]).
insert([H|T],X,[X,H|T]) :-
  X =< H,
  !.
insert([H|T],X,[H|T2]) :-
  insert(T,X,T2).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines insert_sort/2 and never calls it; the driver sorts a sample list.
:- initialization((insert_sort([4, 65, 2, -31, 0, 99, 2, 83, 782, 1], L), format("~w~n", [L]))).
%--------------------------------------- 408 sorting-algorithms-insertion-sort-2
% insertion sort
isort(L, LS) :-
	foldl(insert, [], L, LS).


% foldl(Pred, Init, List, R).
foldl(_Pred, Val, [], Val).
foldl(Pred, Val, [H | T], Res) :-
	call(Pred, Val, H, Val1),
	foldl(Pred, Val1, T, Res).

% insertion in a sorted list
insert([], N, [N]).

insert([H | T], N, [N, H|T]) :-
	N =< H, !.

insert([H | T], N, [H|L1]) :-
	insert(T, N, L1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines isort/2 and never calls it; the driver sorts one ten-element sample list (the task gives no data) and prints it.
:- initialization((isort([4, 65, 2, -31, 0, 99, 2, 83, 782, 1], S), format("~w~n", [S]))).
%--------------------------------------------- 409 sorting-algorithms-merge-sort
% msort( L, S )
% True if S is a sorted copy of L, using merge sort
msort( [], [] ).
msort( [X], [X] ).
msort( U, S ) :- split(U, L, R), msort(L, SL), msort(R, SR), merge(SL, SR, S).

% split( LIST, L, R )
% Alternate elements of LIST in L and R
split( [], [], [] ).
split( [X], [X], [] ).
split( [L,R|T], [L|LT], [R|RT] ) :- split( T, LT, RT ).

% merge( LS, RS, M )
% Assuming LS and RS are sorted, True if M is the sorted merge of the two
merge( [], RS, RS ).
merge( LS, [], LS ).
merge( [L|LS], [R|RS], [L|T] ) :- L =< R, merge(    LS, [R|RS], T).
merge( [L|LS], [R|RS], [R|T] ) :- L > R,  merge( [L|LS],   RS,  T).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines msort/2 (its own merge sort, overriding the builtin) and never calls it; the driver sorts one ten-element sample list (the task gives no data) and prints it.
:- initialization((msort([4, 65, 2, -31, 0, 99, 2, 83, 782, 1], S), format("~w~n", [S]))).
%------------------------------------------ 410 sorting-algorithms-patience-sort
patience_sort(UnSorted,Sorted) :-
	make_piles(UnSorted,[],Piled),
	merge_piles(Piled,[],Sorted).

make_piles([],P,P).
make_piles([N|T],[],R) :-
	make_piles(T,[[N]],R).
make_piles([N|T],[[P|Pnt]|Tp],R) :-
	N =< P,
	make_piles(T,[[N,P|Pnt]|Tp],R).
make_piles([N|T],[[P|Pnt]|Tp],R) :-
	N > P,
	make_piles(T,[[N],[P|Pnt]|Tp], R).
	
merge_piles([],M,M).
merge_piles([P|T],L,R) :-
	merge_pile(P,L,Pl),
	merge_piles(T,Pl,R).
	
merge_pile([],M,M).
merge_pile(M,[],M).
merge_pile([N|T1],[N|T2],[N,N|R]) :-
	merge_pile(T1,T2,R).
merge_pile([N|T1],[P|T2],[P|R]) :-
	N > P,
	merge_pile([N|T1],T2,R).
merge_pile([N|T1],[P|T2],[N|R]) :-
	N < P,
	merge_pile(T1,[P|T2],R).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines patience_sort/2 and never calls it; the driver sorts one ten-element sample list (the task gives no data) and prints it.
:- initialization((patience_sort([4, 65, 2, -31, 0, 99, 2, 83, 782, 1], S), format("~w~n", [S]))).
%--------------------------------------- 411 sorting-algorithms-permutation-sort
permutation_sort(L,S) :- permutation(L,S), sorted(S).

sorted([]).
sorted([_]).
sorted([X,Y|ZS]) :- X =< Y, sorted([Y|ZS]).

permutation([],[]).
permutation([X|XS],YS) :- permutation(XS,ZS), select(X,YS,ZS).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines permutation_sort/2 and never calls it; the driver sorts one eight-element sample list (permutation sort is n!, so kept short) and prints it.
:- initialization((permutation_sort([4, 65, 2, -31, 0, 99, 83, 1], S), format("~w~n", [S]))).
%---------------------------------------------- 412 sorting-algorithms-quicksort
qsort( [], [] ).
qsort( [H|U], S ) :- splitBy(H, U, L, R), qsort(L, SL), qsort(R, SR), append(SL, [H|SR], S).

% splitBy( H, U, LS, RS )
% True if LS = { L in U | L <= H }; RS = { R in U | R > H }
splitBy( _, [], [], []).
splitBy( H, [U|T], [U|LS], RS ) :- U =< H, splitBy(H, T, LS, RS).
splitBy( H, [U|T], LS, [U|RS] ) :- U  > H, splitBy(H, T, LS, RS).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines qsort/2 and never calls it; the driver sorts one ten-element sample list (the task gives no data) and prints it.
:- initialization((qsort([4, 65, 2, -31, 0, 99, 2, 83, 782, 1], S), format("~w~n", [S]))).
%----------------------------------------- 413 sorting-algorithms-selection-sort
selection_sort([], []).
selection_sort([H | L], [H1 | L2]) :-
	exchange(H, L, H1, L1),
	selection_sort(L1, L2).


exchange(H, [], H, []).

exchange(H, L, H1, L1) :-
	min_list(L, H2),
	(   H < H2
	->  H1 = H, L1 = L
	;   H1 = H2,
	    % does the exchange of the number H
	    % and the min of the list
	    nth0(Ind, L, H1, L2),
	    nth0(Ind, L1, H, L2)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines selection_sort/2 and never calls it; the driver sorts one ten-element sample list (the task gives no data) and prints it.
:- initialization((selection_sort([4, 65, 2, -31, 0, 99, 2, 83, 782, 1], S), format("~w~n", [S]))).
%------------------------------------------------------------------- 414 soundex
% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
%____________________________________________________________________
% Implements the American soundex algorithm
%   as described at https://en.wikipedia.org/wiki/Soundex
%  In SWI Prolog, a 'string' is specified in 'single quotes',
%    while a "list of codes" may be specified in "double quotes".
%  So, "abc" is equivalent to [97, 98, 99], while
%    'abc' = abc  (an atom), and 'Abc' is also an atom.  There are
%    conversion methods that can produce lists of characters:
%        ?- atom_chars('Abc', X).
%	 X = ['A', b, c].
%    or lists of codes (mapping to unicode code points):
%        ?- atom_codes('Abc', X).
%        X = [65, 98, 99].
%    and the conversion predicates are bidirectional.
%        ?- atom_codes(A, [65, 98, 99]).
%        A = 'Abc'.
%  A single character code may be specified as 0'C, where C is the
%    character you want to convert to a code.
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

%  Relates groups of consonants to representative digits
creplace(Ch, 0'1) :- member(Ch, "bfpv").
creplace(Ch, 0'2) :- member(Ch, "cgjkqsxz").
creplace(Ch, 0'3) :- member(Ch, "dt").
creplace(0'l, 0'4).
creplace(Ch, 0'5) :- member(Ch, "mn").
creplace(0'r, 0'6).

% strips elements contained in <Set> from a string
strip(Set, [H|T], Tr) :- memberchk(H, Set), !, strip(Set, T, Tr).
strip(Set, [H|T], [H|Tr]) :- !, strip(Set, T, Tr).
strip(_, [], []).

% Replace consonants with appropriate digits
consonants([H|T], [Ch|Tr]) :- creplace(H, Ch), !, consonants(T, Tr).
consonants([H|T], [H|Tr]) :- !, consonants(T, Tr).
consonants([], []).

% Replace adjacent digits with single digit
adjacent([Ch, Ch|T], [Ch|Tr]) :- between(0'0, 0'9, Ch), !, adjacent(T, Tr).
adjacent([H|T], [H|Tr]) :- !, adjacent(T, Tr).
adjacent([], []).

% Replace first character with original one if its a digit
chk_digit([H,D|T], [H|T]) :- between(0'0, 0'9, D), !.
chk_digit([_,H|T], [H|T]).

% Faithul representation of soundex rules:
%   1: Save 1st letter, strip "hw"
%   2: Replace consonants with appropriate digits
%   3: Replace adjacent digits with single occurrence
%   4: Remove vowels except 1st letter
%   5: If 1st symbol is a digit, replace it with saved 1st letter
%   6: Ensure trailing zeroes
do_soundex([H|T], Res) :-
	strip("hw", T, Ts), consonants([H|Ts], Tc),
	adjacent(Tc, [C|Ta]), strip("aeiouy", Ta, Tv),
	chk_digit([H,C|Tv], Td), append(Td, "0000", Tr),
	atom_codes(Tf, Tr), sub_string(Tf, 0, 4, _, Res).

% Prepare string, convert to lower case and do the soundex alogorithm
soundex(Text, Res) :-
	downcase_atom(Text, Lower), atom_codes(Lower, T),
	do_soundex(T, Res).

% Perform tests to check that the right values are produced
test(S,V) :- not(soundex(S,V)), writef('%w failed\n', [S]).
test :- test('Robert', 'r163'), !, fail.
test :- test('Rupert', 'r163'), !, fail.
test :- test('Rubin', 'r150'), !, fail.
test :- test('Ashcroft', 'a261'), !, fail.
test :- test('Ashcraft', 'a261'), !, fail.
test :- test('Tymczak', 't522'), !, fail.
test :- test('Pfister', 'p236'), !, fail.
test.  % Succeeds only if all the tests succeed

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): the coo's driver called test/0, which prints nothing when every check passes; written for code lists (member/2 over "bfpv"), so the flag is set at its head and the driver prints soundex/2 of the seven names test/0 checks.
:- initialization(forall(member(N, ['Robert', 'Rupert', 'Rubin', 'Ashcroft', 'Ashcraft', 'Tymczak', 'Pfister']), (soundex(N, S), format("~w: ~w~n", [N, S])))).
%--------------------------------------------- 415 spelling-of-ordinal-numbers-2
:- module(number_name, [number_name/3]).

small_name(0, zero, zeroth).
small_name(1, one, first).
small_name(2, two, second).
small_name(3, three, third).
small_name(4, four, fourth).
small_name(5, five, fifth).
small_name(6, six, sixth).
small_name(7, seven, seventh).
small_name(8, eight, eighth).
small_name(9, nine, ninth).
small_name(10, ten, tenth).
small_name(11, eleven, eleventh).
small_name(12, tewlve, twelfth).
small_name(13, thirteen, thirteenth).
small_name(14, fourteen, fourteenth).
small_name(15, fifteen, fifteenth).
small_name(16, sixteen, sixteenth).
small_name(17, seventeen, seventeenth).
small_name(18, eighteen, eighteenth).
small_name(19, nineteen, nineteenth).
small_name(20, twenty, twentieth).
small_name(30, thirty, thirtieth).
small_name(40, forty, fortieth).
small_name(50, fifty, fiftieth).
small_name(60, sixty, sixtieth).
small_name(70, seventy, seventieth).
small_name(80, eighty, eightieth).
small_name(90, ninety, ninetieth).

big_names([big(100, hundred, hundredth),
    big(1000, thousand, thousandth),
    big(1000000, million, millionth),
    big(1000000000, billion, billionth),
    big(1000000000000, trillion, trillionth),
    big(1000000000000000, quadrillion, quadrillionth),
    big(1000000000000000000, quintillion, quintillionth),
    big(1000000000000000000000, sextillion, sextillionth),
    big(1000000000000000000000000, septillion, septillionth)]).

big_name(Number, Big):-
    big_names(Names),
    big_name(Names, Number, Big).

big_name([Big], _, Big):-
    !.
big_name([Big1, Big2|_], Number, Big1):-
    Big2 = big(N2, _, _),
    Number < N2,
    !.
big_name([_|Names], Number, Big):-
    big_name(Names, Number, Big).

get_big_name(big(_, C, _), cardinal, C).
get_big_name(big(_, _, O), ordinal, O).

get_small_name(Number, cardinal, Name):-
    small_name(Number, Name, _),
    !.
get_small_name(Number, ordinal, Name):-
    small_name(Number, _, Name).

number_name(Number, Type, Name):-
    Number < 20,
    !,
    get_small_name(Number, Type, Name).
number_name(Number, Type, Name):-
    Number < 100,
    !,
    N is Number mod 10,
    (N = 0 ->
        get_small_name(Number, Type, Name)
        ;
        N1 is Number - N,
        get_small_name(N1, cardinal, Name1),
        get_small_name(N, Type, Name2),
        atomic_list_concat([Name1, '-', Name2], Name)
     ).
number_name(Number, Type, Name):-
    big_name(Number, big(P, C, O)),
    N is Number // P,
    number_name(N, cardinal, Name1),
    M is Number mod P,
    (M = 0 ->
        get_big_name(big(P, C, O), Type, Name2)
        ;
        number_name(M, Type, Name3),
        atomic_list_concat([C, ' ', Name3], Name2)
    ),
    atomic_list_concat([Name1, ' ', Name2], Name).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the module number_name with number_name/3 and never calls it; the driver spells the task's twelve numbers as ordinals.
:- initialization(forall(member(N, [1, 2, 3, 4, 5, 11, 65, 100, 101, 272, 23456, 8007006005004003]), (number_name(N, ordinal, Name), format("~w: ~w~n", [N, Name])))).
%------------------------------------------------------------- 416 spiral-matrix
%  Prolog implementation: SWI-Prolog 7.2.3

replace([_|T], 0, E, [E|T]) :- !.
replace([H|T], N, E, Xs)    :-
  succ(N1, N), replace(T, N1, E, Xs1), Xs = [H|Xs1].

% True if Xs is the Original grid with the element at (X, Y) replaces by E.
replace_in([H|T], (0, Y), E, Xs) :- replace(H, Y, E, NH), Xs = [NH|T], !.
replace_in([H|T], (X, Y), E, Xs) :-
  succ(X1, X), replace_in(T, (X1, Y), E, Xs1), Xs = [H|Xs1].

% True, if E is the value at (X, Y) in Xs
get_in(Xs, (X, Y), E) :- nth0(X, Xs, L), nth0(Y, L, E).

create(N, Mx) :-             % NxN grid full of nils
  numlist(1, N, Ns),
  findall(X, (member(_, Ns), X = nil), Ls),
  findall(X, (member(_, Ns), X = Ls), Mx).

% Depending of the direction, returns two possible coordinates and directions
% (C,D) that will be used in case of a turn, and (A,B) otherwise.
ops(right, (X,Y), (A,B), (C,D), D1, D2) :-
  A is X, B is Y+1, D1 = right, C is X+1, D is Y, D2 = down.

ops(left, (X,Y), (A,B), (C,D), D1, D2) :-
  A is X, B is Y-1, D1 = left, C is X-1, D is Y, D2 = up.

ops(up, (X,Y), (A,B), (C,D), D1, D2) :-
  A is X-1, B is Y, D1 = up, C is X, D is Y+1, D2 = right.

ops(down, (X,Y), (A,B), (C,D), D1, D2) :-
  A is X+1, B is Y, D1 = down, C is X, D is Y-1, D2 = left.

% True if NCoor is the right coor in spiral shape. Returns a new direction also.
next(Dir, Mx, Coor, NCoor, NDir) :-
  ops(Dir, Coor, C1, C2, D1, D2),
  (get_in(Mx, C1, nil) -> NCoor = C1, NDir = D1
                        ; NCoor = C2, NDir = D2).

% Returns an spiral with [H|Vs] elements called R, only work if the length of
% [H|Vs], is the square of the size of the grid.
spiralH(Dir, Mx, Coor, [H|Vs], R)  :-
 replace_in(Mx, Coor, H, NMx),
 (Vs = [] -> R = NMx
           ; next(Dir, Mx, Coor, NCoor, NDir),
             spiralH(NDir, NMx, NCoor, Vs, R)).

% True if Mx is the grid in spiral shape of the numbers from 0 to N*N-1.
spiral(N, Mx) :-
  Sq is N*N-1, numlist(0, Sq, Ns),
  create(N, EMx), spiralH(right, EMx, (0,0), Ns, Mx).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines spiral/2 and never calls it; the driver prints the task's 5x5 spiral, one row a line.
:- initialization((spiral(5, M), forall(member(R, M), format("~w~n", [R])))).
%------------------------------------------------- 417 stable-marriage-problem-2
:- dynamic person/4, prop/2.
% person(Name, Preference, Status, Candidate)
% prop(Name, List_of_Candidates) (for a woman)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% facts
prefere(abe,[ abi, eve, cath, ivy, jan, dee, fay, bea, hope, gay]).
prefere(  bob,[ cath, hope, abi, dee, eve, fay, bea, jan, ivy, gay]).
prefere(  col,[ hope, eve, abi, dee, bea, fay, ivy, gay, cath, jan]).
prefere(  dan,[ ivy, fay, dee, gay, hope, eve, jan, bea, cath, abi]).
prefere(   ed,[ jan, dee, bea, cath, fay, eve, abi, ivy, hope, gay]).
prefere( fred,[ bea, abi, dee, gay, eve, ivy, cath, jan, hope, fay]).
prefere(  gav,[ gay, eve, ivy, bea, cath, abi, dee, hope, jan, fay]).
prefere(  hal,[ abi, eve, hope, fay, ivy, cath, jan, bea, gay, dee]).
prefere(  ian,[ hope, cath, dee, gay, bea, abi, fay, ivy, jan, eve]).
prefere(  jon,[ abi, fay, jan, gay, eve, bea, dee, cath, ivy, hope]).

prefere(  abi,[ bob, fred, jon, gav, ian, abe, dan, ed, col, hal]).
prefere(  bea,[ bob, abe, col, fred, gav, dan, ian, ed, jon, hal]).
prefere( cath,[ fred, bob, ed, gav, hal, col, ian, abe, dan, jon]).
prefere(  dee,[ fred, jon, col, abe, ian, hal, gav, dan, bob, ed]).
prefere(  eve,[ jon, hal, fred, dan, abe, gav, col, ed, ian, bob]).
prefere(  fay,[ bob, abe, ed, ian, jon, dan, fred, gav, col, hal]).
prefere(  gay,[ jon, gav, hal, fred, bob, abe, col, ed, dan, ian]).
prefere( hope,[ gav, jon, bob, abe, ian, dan, hal, ed, col, fred]).
prefere(  ivy,[ ian, col, hal, gav, fred, bob, abe, ed, jon, dan]).
prefere(  jan,[ ed, hal, gav, abe, bob, jon, col, ian, fred, dan]).


man(abe).
man(bob).
man(col).
man(dan).
man(ed).
man(fred).
man(gav).
man(hal).
man(ian).
man(jon).

woman(abi).
woman(bea).
woman(cath).
woman(dee).
woman(eve).
woman(fay).
woman(gay).
woman(hope).
woman(ivy).
woman(jan).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% rules
stable_mariage :-
	%initialization
	retractall(person(_,_,_,_)),
	retractall(prop(_,_)),
	forall(prefere(P, Pref), assert(person(P, Pref, free, none))),
	bagof(X, man(X), LstMen),
	bagof(Y, woman(Y), LstWomen),
	forall(member(Z, LstWomen), assert(prop(Z, []))),

	% compute the mariages
	iteration(LstMen, LstWomen, LstCouple),
	maplist(print_couple,LstCouple),
	nl,

	% test of the stability of couples
	stability(LstCouple),
	nl,

	% Perturbation of couples
	length(LstCouple, Len),
	get_two_random_couples(Len, V1, V2),

	nth0(V1, LstCouple, C1),
	select(C1, LstCouple, Lst1),
	(   V2 > 0 -> V22 is V2 - 1; V22 = V2),
	nth0(V22, Lst1, C2),
	select(C2, Lst1, Lst2),
	C1 = couple(M1, W1),
	C2 = couple(M2, W2),

	writeln('perturbation of couples'),
	format('~w with ~w~n', [W1, M2]),
	format('~w with ~w~n', [W2, M1]),
	nl,
	stability([couple(M1, W2), couple(M2, W1)| Lst2]).


% the algorithm
iteration(Men, Women, LstCouples) :-
	% Men propose
	bagof(M,  X^Y^(member(M, Men),person(M, X, free, Y)), LM),
	forall(member(X, LM),
	       (   retract(person(X, [W|Pref], free, Elu)),
		   assert(person(X, Pref, free, Elu)),
		   retract(prop(W, Prop)),
		   assert(prop(W, [X| Prop])))),
	
	% women dispose
	bagof(W, L^(prop(W, L), L \= []), LW),
	forall(member(W, LW),
	       (   retract(prop(W, Prop)),
	           retract(person(W, Pref, _, Elu)),
		   (   Elu = none -> Prop1 = Prop; Prop1 = [Elu|Prop]),
	           order_prop(Pref, Prop1, [M | Prop2]),
		   retract(person(M, PrefM, _, _)),
		   assert(person(M, PrefM, maybe, W)),
		   forall(member(Y, Prop2),
			  (   retract(person(Y, Pref1, _, _TE)),
			      assert(person(Y, Pref1, free, none)))),
		   assert(prop(W, [])),
		   assert(person(W, Pref, maybe, M))
	       )),
	
	% finished ?
	(   bagof(X, T^Z^(member(X, Women), person(X, T, free, Z)), _LW1) ->
	    iteration(Men, Women, LstCouples)
	;
	    make_couple(Women, LstCouples)
	).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% compute order preference of candidates.
order_prop(Pref, Prop, Res) :-
	maplist(index(Pref), Prop, Rtemp),
	sort(Rtemp, Rtemp1),
	maplist(simplifie,Rtemp1, Res).

index(Lst, Value, [Ind, Value]) :-
	nth0(Ind, Lst, Value).

simplifie([_, V], V).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
print_couple(couple(M, W)) :-
	format('~w with ~w~n', [W, M]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% creation of couples
make_couple([], []).

make_couple([W | LW], [couple(M, W) | LC]) :-
	make_couple(LW, LC),
	person(W, _, _, M).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% miscellaneous
get_two_random_couples(Len, C1, C2) :-
	C1 is random(Len),
	repeat,
	C2 is random(Len),
	C1 \= C2.

print_unstable_couple((C1, C2)) :-
	format('~w and ~w~n', [C1, C2]).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% test the stability of couples
stability(LstCouple) :-
	study_couples(LstCouple, [], CoupleInstable),
	(   CoupleInstable = []
	->
	    writeln('Couples are stable')
	;
	    sort(CoupleInstable, SortCoupleInstable),
	    writeln('Unstable couples are'),
	    maplist(print_unstable_couple, SortCoupleInstable),
	    nl
	).


% compute the stability od couple
study_couples([], UnstableCouple, UnstableCouple).

study_couples([H | T], CurrentUnstableCouple, UnstableCouple):-
	include(unstable_couple(H), T, Lst),
	(   Lst \= []
	->
	    maplist(build_one_couple(H), Lst, Lst1),
	   append(CurrentUnstableCouple, Lst1,CurrentUnstableCouple1)
	;
	   CurrentUnstableCouple1 = CurrentUnstableCouple
	),
	study_couples(T, CurrentUnstableCouple1, UnstableCouple).


build_one_couple(C1, C2, (C1, C2)).

unstable_couple(couple(X1, Y1), couple(X2, Y2)) :-
	prefere(X1, PX1),
	prefere(X2, PX2),
	prefere(Y1, PY1),
	prefere(Y2, PY2),

	% index of women for X1
	nth0(IY12, PX1, Y2),
	nth0(IY11, PX1, Y1),
	% index of men for Y2
	nth0(IX21, PY2, X1),
	nth0(IX22, PY2, X2),

	% index of women for X2
	nth0(IY21, PX2, Y1),
	nth0(IY22, PX2, Y2),
	% index of men for Y1
	nth0(IX11, PY1, X1),
	nth0(IX12, PY1, X2),

	% A couple is unstable
	( (IY12 < IY11 , IX21 < IX22);
	  (IY21 < IY22 , IX12 < IX11)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): stable_mariage/0 perturbs two couples chosen by random/1; the driver runs its own set-up, iteration/3, print_couple/1 and stability/1 and swaps the first two couples' wives as the fixed perturbation, in stable_mariage/0's own format.
:- initialization((retractall(person(_, _, _, _)), retractall(prop(_, _)), forall(prefere(P, Pref), assert(person(P, Pref, free, none))), bagof(X, man(X), LstMen), bagof(Y, woman(Y), LstWomen), forall(member(Z, LstWomen), assert(prop(Z, []))), iteration(LstMen, LstWomen, LstCouple), maplist(print_couple, LstCouple), nl, stability(LstCouple), nl, LstCouple = [couple(M1, W1), couple(M2, W2)|Rest], writeln('perturbation of couples'), format('~w with ~w~n', [W1, M2]), format('~w with ~w~n', [W2, M1]), nl, stability([couple(M1, W2), couple(M2, W1)|Rest]))).
%--------------------------------------------------------------------- 418 stack
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
%--------------------------------------------------------- 419 state-name-puzzle
state_name_puzzle :-
	L = ["Alabama", "Alaska", "Arizona", "Arkansas",
	     "California", "Colorado", "Connecticut",
	     "Delaware",
	     "Florida", "Georgia", "Hawaii",
	     "Idaho", "Illinois", "Indiana", "Iowa",
	     "Kansas", "Kentucky", "Louisiana",
	     "Maine", "Maryland", "Massachusetts", "Michigan",
	     "Minnesota", "Mississippi", "Missouri", "Montana",
	     "Nebraska", "Nevada", "New Hampshire", "New Jersey",
	     "New Mexico", "New York", "North Carolina", "North Dakota",
	     "Ohio", "Oklahoma", "Oregon",
	     "Pennsylvania", "Rhode Island",
	     "South Carolina", "South Dakota", "Tennessee", "Texas",
	     "Utah", "Vermont", "Virginia",
	     "Washington", "West Virginia", "Wisconsin", "Wyoming",
	     "New Kory", "Wen Kory", "York New", "Kory New", "New Kory"],

	maplist(goedel, L, R),

	% sort remove duplicates
	sort(R, RS),

	study(RS).

study([]).

study([V-Word|T]) :-
	study_1_Word(V-Word, T, T),
	study(T).


study_1_Word(_, [], _).
study_1_Word(V1-W1, [V2-W2 | T1], T) :-
	TT is V1+V2,
	study_2_Word(W1, W2, TT, T),
	study_1_Word(V1-W1, T1, T).

study_2_Word(_W1, _W2, _TT, []).

study_2_Word(W1, W2, TT, [V3-W3 | T]) :-
	(   W2 \= W3 -> study_3_Word(W1, W2, TT, V3-W3, T); true),
	study_2_Word(W1, W2, TT, T).

study_3_Word(_W1, _W2, _TT, _V3-_W3, []).

study_3_Word(W1, W2, TT, V3-W3, [V4-W4|T]) :-
	TT1 is V3 + V4,
	(   TT1 < TT -> study_3_Word(W1, W2, TT, V3-W3, T)
	;   (TT1 = TT -> ( W4 \= W2 -> format('~w & ~w  with ~w & ~w~n', [W1, W2, W3, W4])
	                               ; true),
           	         study_3_Word(W1, W2, TT, V3-W3, T))
	;   true).

% Compute a Goedel number for the word
goedel(Word, Goedel-A) :-
	name(A, Word),
	downcase_atom(A, Amin),
	atom_codes(Amin, LA),
	compute_Goedel(LA, 0, Goedel).

compute_Goedel([], G, G).

compute_Goedel([32|T], GC, GF) :-
	compute_Goedel(T, GC, GF).

compute_Goedel([H|T], GC, GF) :-
	Ind is H - 97,
	GC1 is GC + 26 ** Ind,
	compute_Goedel(T, GC1, GF).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines state_name_puzzle/0 (the task's 50 states plus its fictitious five) and never calls it; the driver calls it once at load.
:- initialization(state_name_puzzle).
%------------------------------------------------------------ 420 steady-squares
steadySquare([], _, []).
steadySquare([N| NTail], Modulo, SteadyList):-
	Modulo =< N,!,
	Modulo1 is Modulo * 10,
	steadySquare([N| NTail], Modulo1, SteadyList).
steadySquare([N| NTail], Modulo, [N| SteadyList]):-
	N ^ 2 mod Modulo =:= N,!,
	steadySquare(NTail, Modulo, SteadyList).
steadySquare([_| NTail], Modulo, SteadyList):-
	steadySquare(NTail, Modulo, SteadyList).

candidateList(Limit, List):-
	candidateList(5, Limit, List0),
	append([0,1], List0, List).

candidateList(N, Limit, [N, N1| Tail]):-
	N < Limit,!,
	N1 is N + 1,
	N10 is N + 10,
	candidateList(N10, Limit, Tail).
candidateList(_, _, []).

showList(_, []):-!.
showList(FrmStr, [StSquare| Tail]):-
	Sqr is StSquare ^ 2,
	format(FrmStr, [StSquare, Sqr]),
	showList(FrmStr, Tail).
	
do:- candidateList(1000000, List),
	steadySquare(List, 1, SteadySquareList),
	last(SteadySquareList, LastStSqr),
	LastLen is 1 + floor(log10(LastStSqr)),
	LastSqrLen is 1 + floor(log10(LastStSqr ^ 2)),
	swritef(FrmStr, '~|~t~d~%d+ ~|~t~d~%d+~n', [LastLen, LastSqrLen]),
	showList(FrmStr, SteadySquareList).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines do/0 (the steady squares below 1,000,000) and never calls it; the driver calls it once at load.
:- initialization(do).
%-------------------------------------------------------- 421 stem-and-leaf-plot
:- initialization(main, main).
:- use_module(library(dcg/basics), [blanks/2, eol/2, integer/3]).
:- use_module(library(dcg/high_order), [sequence/4, sequence/5]).

%!  numbers_to_stem_leaves(+Numbers, -StemLeaves) is det.
%   Converts a list of Numbers to a list of Stem-Leaves pairs.
numbers_to_stem_leaves(Numbers, StemLeaves) :-
    findall(Stem - Leaves, (
        group_by(Stem, Leaf, (
            member(Number, Numbers),
            divmod(Number, 10, Stem, Leaf)
        ), Leaves0),
        msort(Leaves0, Leaves)
    ), StemLeaves).

stem_leaf_plot(StemLeaves) --> sequence(stem_leaves, StemLeaves).

stem_leaves(Stem - Leaves) --> rpad_integer(4, Stem), " | ", sequence(integer, " ", Leaves), "\n".

rpad_integer(Pad, N) -->
    (   { Pad0 is Pad - 1, N < 10 ^ Pad0, \+ ( Pad = 1, N = 0 ) }
    ->  " ", rpad_integer(Pad0, N)
    ;   integer(N)
    ).

%!  display_stem_leaf_plot(Numbers) is det.
%   Prints the stem-and-leaf plot of a list of Numbers.
display_stem_leaf_plot(Numbers) :-
    numbers_to_stem_leaves(Numbers, StemLeaves),
    once(phrase(stem_leaf_plot(StemLeaves), Codes)),
    format("~s", [Codes]).

int(N) --> integer(N), blanks.

main([Filename]) :-
    phrase_from_file((blanks, sequence(int, Numbers)), Filename),
    display_stem_leaf_plot(Numbers).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): main/1 under initialization(main, main) reads the numbers from a file named on its command line; the driver gives display_stem_leaf_plot/1 the task's 121 numbers and halts before main runs.
:- initialization((display_stem_leaf_plot([12, 127, 28, 42, 39, 113, 42, 18, 44, 118, 44, 37, 113, 124, 37, 48, 127, 36, 29, 31, 125, 139, 131, 115, 105, 132, 104, 123, 35, 113, 122, 42, 117, 119, 58, 109, 23, 105, 63, 27, 44, 105, 99, 41, 128, 121, 116, 125, 32, 61, 37, 127, 29, 113, 121, 58, 114, 126, 53, 114, 96, 25, 109, 7, 31, 141, 46, 13, 27, 43, 117, 116, 27, 7, 68, 40, 31, 115, 124, 42, 128, 52, 71, 118, 117, 38, 27, 106, 33, 117, 116, 111, 40, 119, 47, 105, 57, 122, 109, 124, 115, 43, 120, 43, 27, 27, 18, 28, 48, 125, 107, 114, 34, 133, 45, 120, 30, 127, 31, 116, 146]), halt)).
%---------------------------------------- 422 stirling-numbers-of-the-first-kind
:- dynamic stirling1_cache/3.

stirling1(N, N, 1):-!.
stirling1(_, 0, 0):-!.
stirling1(N, K, 0):-
	K > N,
	!.
stirling1(N, K, L):-
	stirling1_cache(N, K, L),
	!.
stirling1(N, K, L):-
	N1 is N - 1,
	K1 is K - 1,
	stirling1(N1, K, L1),
	stirling1(N1, K1, L2),
	!,
	L is L2 + (N - 1) * L1,
	assertz(stirling1_cache(N, K, L)).

print_stirling_numbers(N):-
	between(1, N, K),
	stirling1(N, K, L),
	writef('%10r', [L]),
	fail.
print_stirling_numbers(_):-
	nl.

print_stirling_numbers_up_to(M):-
	between(1, M, N),
	print_stirling_numbers(N),
	fail.
print_stirling_numbers_up_to(_).

max_stirling1(N, Max):-
    aggregate_all(max(L), (between(1, N, K), stirling1(N, K, L)), Max).

main:-
	writeln('Unsigned Stirling numbers of the first kind up to S1(12,12):'),
	print_stirling_numbers_up_to(12),
	writeln('Maximum value of S1(n,k) where n = 100:'),
	max_stirling1(100, M),
	writeln(M).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%--------------------------------------- 423 stirling-numbers-of-the-second-kind
:- dynamic stirling2_cache/3.

stirling2(N, N, 1):-!.
stirling2(_, 0, 0):-!.
stirling2(N, K, 0):-
	K > N,
	!.
stirling2(N, K, L):-
	stirling2_cache(N, K, L),
	!.
stirling2(N, K, L):-
	N1 is N - 1,
	K1 is K - 1,
	stirling2(N1, K, L1),
	stirling2(N1, K1, L2),
	!,
	L is K * L1 + L2,
	assertz(stirling2_cache(N, K, L)).

print_stirling_numbers(N):-
	between(1, N, K),
	stirling2(N, K, L),
	writef('%8r', [L]),
	fail.
print_stirling_numbers(_):-
	nl.

print_stirling_numbers_up_to(M):-
	between(1, M, N),
	print_stirling_numbers(N),
	fail.
print_stirling_numbers_up_to(_).

max_stirling2(N, Max):-
    aggregate_all(max(L), (between(1, N, K), stirling2(N, K, L)), Max).

main:-
	writeln('Stirling numbers of the second kind up to S2(12,12):'),
	print_stirling_numbers_up_to(12),
	writeln('Maximum value of S2(n,k) where n = 100:'),
	max_stirling2(100, M),
	writeln(M).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%--------------------------------------------- 424 strange-unique-prime-triplets
primes(2, Limit):- 2 =< Limit.
primes(N, Limit):-
	between(3, Limit, N),
	N /\ 1 > 0,             % odd
	M is floor(sqrt(N)) - 1, % reverse 2*I+1
	Max is M div 2,
	forall(between(1, Max, I), N mod (2*I+1) > 0).

primeComb(N, List, Comb):-
	comb(N, List, Comb),
	sumlist(Comb, Sum),
	primes(Sum, inf).

comb(0, _, []).
comb(N, [X|T], [X|Comb]):-
	N > 0,
    N1 is N - 1,
    comb(N1, T, Comb).
comb(N, [_|T], Comb):-
    N > 0,
    comb(N, T, Comb).

tripletList(Limit, List, Len):-
	findall(N, primes(N, Limit), PrimeList),
	findall(Comb, primeComb(3, PrimeList, Comb), List),
	length(List, Len).

showList([]).
showList([[I, J, K]|TList]):-
	Sum is I + J + K,
	writef('%3r +%3r +%3r =%3r\n', [I, J, K, Sum]),
	showList(TList).

run([]).
run([Limit|TLimits]):-
	tripletList(Limit, List, Len),
	( Limit < 50
	  -> List1 = List
	  ; List1 = []
	),
	showList(List1),
	writef('number of prime Triplets up to%5r is%7r\n', [Limit, Len]),
	run(TLimits).
	
do:- run([30, 1000]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): do/0 runs run([30, 1000]) in about 8 s; the driver calls run/1 on the task's 30 and a shrunk 500 (the count only).
:- initialization(run([30, 500])).
%------------------------------------------------------ 425 string-concatenation
:- set_prolog_flag(double_quotes, chars).

println([]) :- write('\n').
println([Char | Chars]) :- write(Char), println(Chars).

:- S0 = "Hello, ",
   S1 = "world!",
   append(S0, S1, S),
   println(S).
%----------------------------------------------------------- 426 string-matching
:- system:set_prolog_flag(double_quotes,codes) .

:- [library(lists)] .

%!  starts_with(FIRSTz,SECONDz)
%
% True if `SECONDz` is the beginning of `FIRSTz` .

starts_with(FIRSTz,SECONDz)
:-
lists:append(SECONDz,_,FIRSTz)
.

%!  contains(FIRSTz,SECONDz)
%
% True once if `SECONDz` is contained within `FIRSTz` at one or more positions .

contains(FIRSTz,SECONDz)
:-
contains(FIRSTz,SECONDz,_) ,
!
.

%!  contains(FIRSTz,SECONDz,NTH1)
%
% True if `SECONDz` is contained within `FIRSTz` at position `NTH1` .

contains(FIRSTz,SECONDz,NTH1)
:-
lists:append([PREFIXz,SECONDz,_SUFFIXz_],FIRSTz) ,
prolog:length(PREFIXz,NTH0) ,
NTH1 is NTH0 + 1
.

%!  ends_with(FIRSTz,SECONDz)
%
% True if `SECONDz` is the ending of `FIRSTz` .

ends_with(FIRSTz,SECONDz)
:-
lists:append(_,SECONDz,FIRSTz)
.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines starts_with/2, contains/2,3 and ends_with/2 and never calls them; the driver asks all three of four string pairs, with every match position of contains/3.
:- initialization(forall(member(F-S, ["abcd"-"ab", "abcd"-"bc", "abcd"-"cd", "abab"-"ab"]), ((starts_with(F, S) -> A = yes ; A = no), (contains(F, S) -> B = yes ; B = no), findall(N, contains(F, S, N), Ns), (ends_with(F, S) -> C = yes ; C = no), format("~s / ~s: starts with ~w, contains ~w at ~w, ends with ~w~n", [F, S, A, B, Ns, C])))).
%---------------------------------------------------------- 427 string-prepend-1
:- op(200, xfx, user:(=+)).

%% +Prepend =+ +Chars
%
%    Will destructively update Chars
%    So that Chars = Prepend prefixed to Chars.
%    eazar001 in ##prolog helped refine this approach.

[X|Xs] =+ Chars :-
  append(Xs, Chars, Rest),
  nb_setarg(2, Chars, Rest),
  nb_setarg(1, Chars, X).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines =+/2 and never calls it; the driver runs the Rosetta page's own query (Str = `World!`, `Hello, ` =+ Str) and prints Str.
:- initialization((Str = `World!`, `Hello, ` =+ Str, format("~s~n", [Str]))).
%--------------------------------- 428 strip-a-set-of-characters-from-a-string-2
:- system:set_prolog_flag(double_quotes,chars) .

%! strip_chars(SOURCEz0,SETz0,TARGETz)
%
% `TARGETz` is `SOURCEz0` but with any of the characters in `SETz0` removed .

strip_chars(SOURCEz0,SETz0,TARGETz)
:-
prolog:phrase(strip_chars(SOURCEz0,SETz0),TARGETz)
.

strip_chars([],_SETz0_) --> ! .

strip_chars([SOURCE0|SOURCEz0],SETz0)
-->
{ \+ \+ lists:member(SOURCE0,SETz0) } ,
! ,
strip_chars(SOURCEz0,SETz0)
.

strip_chars([SOURCE0|SOURCEz0],SETz0)
-->
[SOURCE0] ,
strip_chars(SOURCEz0,SETz0)
.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines strip_chars/3 and never calls it; the driver strips the task's "aei" from the task's sentence.
:- initialization((strip_chars("She was a soul stripper. She took my heart!", "aei", T), atom_chars(A, T), writeln(A))).
%------------------------------------------------------ 429 strip-block-comments
:- system:set_prolog_flag(double_quotes,codes) .

strip_block_comments(INPUTz)
:-
strip_block_comments(INPUTz,OUTPUTz) ,
system:format("```~n",[OUTPUTz]) ,
system:format("~s~n",[OUTPUTz]) ,
system:format("```~n",[OUTPUTz])
.

strip_block_comments(INPUTz,OUTPUTz)
:-
prolog:phrase(block(OUTPUTz),INPUTz)
.

block([]) --> \+ [_] , ! .
block([CODE|OUTPUTz]) --> \+ comment , ! , [CODE] , block(OUTPUTz) .
block(OUTPUTz) --> comment , ! , block(OUTPUTz) .

comment --> comment_entr , zero_or_more(comment_each) , comment_exit .
comment_entr --> "/*" .
comment_each --> comment , ! .
comment_each --> \+ comment_exit , ! , [_] .
comment_exit --> "*/" .

zero_or_more(CALLABLE) --> call(CALLABLE) , ! , zero_or_more(CALLABLE) .
zero_or_more(_) --> ! .

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): strip_block_comments/1 passes an argument to format/2 strings with no directive, which swipl refuses (too many arguments); the driver calls strip_block_comments/2 on the task's sample text and prints it in /1's own format.
:- initialization((strip_block_comments("  /**\n   * Some comments\n   * longer comments here that we can parse.\n   *\n   * Rahoo \n   */\n   function subroutine() {\n    a = /* inline comment */ b + c ;\n   }\n   /*/ <-- tricky comments */\n\n   /**\n    * Another comment.\n    */\n    function something() {\n    }\n", Out), format("```~n", []), format("~s~n", [Out]), format("```~n", []))).
%-------------------------------------------- 430 strip-comments-from-a-string-1
% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
stripcomment(A,B) :- stripcomment(A,B,a).
stripcomment([A|AL],[A|BL],a) :- \+ A=0';, \+ A=0'# , \+ A=10, \+ A=13 , stripcomment(AL,BL,a).
stripcomment([A|AL],   BL ,a) :-  ( A=0';;    A=0'#), \+ A=10, \+ A=13 , stripcomment(AL,BL,b).
stripcomment([A|AL],   BL ,b) :-                      \+ A=10, \+ A=13 , stripcomment(AL,BL,b).
stripcomment([A|AL],[A|BL],_M):-                       ( A=10;    A=13), stripcomment(AL,BL,a).
stripcomment([],[],_M).
start :-
In = "apples, pears ; and bananas
apples, pears # and bananas",
    stripcomment(In,Out),
    format("~s~n",[Out]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines start/0 and never calls it; written for code lists (stripcomment/2 walks "..." as codes), so the flag is set at its head and the driver calls start/0 once at load.
:- initialization(start).
%-------------------------------------------- 431 strip-comments-from-a-string-2
strip_1comment(A,D) :- ((S1=0'#;S1=0';),append(B,[S1|C],A)), \+ ((S2=0'#;S2=0';),append(_X,[S2|_Y],B)) -> B=D; A=D.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines strip_1comment/2 over code lists and never calls it; the driver strips the task's two sample lines.
:- initialization(forall(member(S, [`apples, pears # and bananas`, `apples, pears ; and bananas`]), (strip_1comment(S, D), format("~s~n", [D])))).
%----------------------------- 432 strip-whitespace-from-a-string-top-and-tail-1
% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
strip :-
	In = "    There are unwanted blanks here!    ",
	strip_left(In, OutLeft),
	format('In          : ~s__~n', [In]),
	format('Strip left  : ~s__~n', [OutLeft]),
	strip_right(In, OutRight),
	format('Strip right : ~s__~n', [OutRight]),
	strip(In, Out),
	format('Strip       : ~s__~n', [Out]).


strip_left(In, Out) :-
	strip_action(In, Out, []).

strip_right(In, Out) :-
	reverse(In, RIn),
	strip_left(RIn, ROut),
	reverse(ROut, Out).

strip(In, Out) :-
	strip_left(In, Tmp),
	strip_right(Tmp, Out).

strip_action([X|T]) -->
	{\+code_type(X, graph), !},
	strip_action(T).


strip_action(X) --> X.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines strip/0 and never calls it; written for code lists (strip_action//1 over "..."), so the flag is set at its head and the driver calls strip/0 once at load.
:- initialization(strip).
%----------------------------- 433 strip-whitespace-from-a-string-top-and-tail-2
:- system:set_prolog_flag(double_quotes,chars) .

strip_leading(INPUTz,OUTPUTz)
:-
prolog:phrase(strip_leading(OUTPUTz),INPUTz)
.

strip_trailing(INPUTz,OUTPUTz)
:-
prolog:phrase(strip_trailing(OUTPUTz),INPUTz)
.

strip_leading_and_trailing(INPUTz,OUTPUTz)
:-
prolog:phrase(strip_leading_and_trailing(OUTPUTz),INPUTz)
.

strip_leading(OUTPUTz)
-->
strip_leading_spacious ,
strip_leading_nonspacious(OUTPUTz)
.

strip_trailing(OUTPUTz)
-->
strip_trailing_nonspacious(OUTPUTz) ,
strip_trailing_spacious
.

strip_leading_and_trailing(OUTPUTz)
-->
strip_leading_spacious ,
strip_trailing_nonspacious(OUTPUTz) ,
strip_trailing_spacious
.

strip_leading_spacious
-->
[CHAR] ,
{ prolog:char_type(CHAR,space) } ,
! ,
strip_leading_spacious
.

strip_leading_spacious
-->
[]
.

strip_leading_nonspacious([OUTPUT|OUTPUTz])
-->
[OUTPUT] ,
! ,
strip_leading_nonspacious(OUTPUTz)
.

strip_leading_nonspacious([])
-->
[]
.

strip_trailing_nonspacious([OUTPUT|OUTPUTz])
-->
\+ strip_trailing_spacious ,
[OUTPUT] ,
! ,
strip_trailing_nonspacious(OUTPUTz)
.

strip_trailing_nonspacious([])
-->
[]
.

strip_trailing_spacious
-->
[CHAR] ,
{ prolog:char_type(CHAR,space) } ,
! ,
strip_trailing_spacious
.

strip_trailing_spacious
-->
\+ [_] % .i.e. at end-of-string .
.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines strip_leading/2, strip_trailing/2 and strip_leading_and_trailing/2 and never calls them; the driver strips one padded string all three ways, each bracketed.
:- initialization((S = "  \t Hello, World! \t  ", strip_leading(S, L), strip_trailing(S, T), strip_leading_and_trailing(S, B), format("[~s]~n[~s]~n[~s]~n[~s]~n", [S, L, T, B]))).
%------------------------------------------------------- 434 substitution-cipher
cypher(O, S) :-
	nonvar(O),
	var(S),
	atom_chars(O,Oc),
	sub_chars(Oc,Sc),
	atom_chars(S,Sc).
cypher(O, S) :-
	nonvar(S),
	var(O),
	atom_chars(S,Sc),
	sub_chars(Oc,Sc),
	atom_chars(O,Oc).	
	
% mapping based on ADA implementation but have added space character	
base(['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,' ']).
subs(['V',s,c,i,'B',j,e,d,g,r,z,y,'H',a,l,v,'X','Z','K',t,'U','P',u,m,'G',f,'I',w,'J',x,q,'O','C','F','R','A',p,n,'D',h,'Q','W',o,b,' ','L',k,'E','S','Y','M','T','N']).

sub_chars(Original,Subbed) :-
	base(Base),
	subs(Subs),
	maplist(sub_char(Base,Subs),Original,Subbed).	
	
sub_char([Co|_],[Cs|_],Co,Cs) :- !.
sub_char([_|To],[_|Ts], Co, Cs) :- sub_char(To,Ts,Co,Cs).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines cypher/2 and never calls it; the driver encodes a sample sentence and decodes it back.
:- initialization((cypher('The quick brown fox jumped over the lazy dogs', S), writeln(S), cypher(O, S), writeln(O))).
%--------------------------------------------------------------- 435 substring-1
substring_task(Str, N, M, Char, SubStr) :-
    sub_string(Str, N, M, _, Span),
    sub_string(Str, N, _, 0, ToEnd),
    sub_string(Str, 0, _, 1, MinusLast),
    string_from_substring_to_m(Str, Char, M, FromCharToMth),
    string_from_substring_to_m(Str, SubStr, M, FromSubToM),
    maplist( writeln,
            [ 'from n to m ':Span,
              'from n to end ': ToEnd,
              'string minus last char ': MinusLast,
              'form known char to m ': FromCharToMth,
              'from known substring to m ': FromSubToM ]).


string_from_substring_to_m(String, Sub, M, FromSubToM) :-
    sub_string(String, Before, _, _, Sub),
    sub_string(String, Before, M, _, FromSubToM).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines substring_task/5 and never calls it; the driver runs the Rosetta page's own query (substring-2) substring_task("abcdefghijk", 2, 4, "d", "ef").
:- initialization(substring_task("abcdefghijk", 2, 4, "d", "ef")).
%---------------------------------------------------- 436 substring-top-and-tail
% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
remove_first_last_chars :-
    L = "Rosetta",
    L = [_|L1],
    remove_last(L, L2),
    remove_last(L1, L3),
    writef('Original string      : %s\n', [L]),
    writef('Without first char       : %s\n', [L1]),
    writef('Without last char        : %s\n', [L2]),
    writef('Without first/last chars : %s\n', [L3]).

remove_last(L, LR) :-
    append(LR, [_], L).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines remove_first_last_chars/0 and never calls it; written for code lists (L = "Rosetta", L = [_|L1]), so the flag is set at its head and the driver calls it once at load.
:- initialization(remove_first_last_chars).
%---------------------------------------------- 437 successive-prime-differences
prime(2).     % use swi prolog
prime(N):-
	N /\ 1 > 0,              % odd
	M is floor(sqrt(N)) - 1, % reverse 2*I+1
	Max is M // 2,           % integer division
	forall(between(1, Max, I), N mod (2*I+1) > 0).

primesByDiffs([],_,[]).
primesByDiffs([Prime|Primes], Diff, [Slide|Slides]):-
	length(Diff, Len0),
	Len is Len0 + 1,
	length(Slide, Len),
	append(Slide, _, [Prime|Primes]),
	select(Diff, Slide),!,
	primesByDiffs(Primes, Diff, Slides).
primesByDiffs([_|Primes], Diff, Slides):-
	primesByDiffs(Primes, Diff, Slides).

select([],_).
select([Diff|Diffs],[S1, S2|Stail]):-
	S2 is S1 + Diff,
	select(Diffs, [S2|Stail]).

run([],_).
run([Diff|Dtail], PrimeList):-
	statistics(runtime,[Start|_]),
	primesByDiffs(PrimeList, Diff, SlideList),	
	length(SlideList, Num),
	statistics(runtime,[Stop|_]),
	Runtime is Stop - Start,
	SlideList = [First|SlideTail],
	format('~|~w~t~7+ number: ~|~t~d~4+ [time(ms) ~|~t~d~3+] first: ~|~w~t~22+',[Diff, Num, Runtime, First]),
	writeLast(SlideTail),!, nl,
	run(Dtail, PrimeList).

writeLast([]).
writeLast(SlideTail):-
	last(SlideTail, Last),
	format('last: ~w',[Last]).

do:-	Num is 1000000,
	statistics(runtime,[Start|_]),
	numlist(2, Num, List),
	include(prime, List, PrimeList),
	length(PrimeList, NumPrimes),
	statistics(runtime,[Stop|_]),
	RunTime is Stop - Start,
	format('there are ~w primes until ~w [time(ms) ~w]~n',[NumPrimes, Num, RunTime]),
	DiffList = [[1], [2], [2,2], [2,4], [4,2], [2,4,6],
		    [2,6,4], [4,2,6], [4,6,2], [6,2,4], [6,4,2]],
	run(DiffList, PrimeList).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): do/0 prints its runtime and takes 25 s over primes below 1,000,000; the driver calls primesByDiffs/3 over the primes below 100,000 (shrunk) for do/0's eleven difference lists and prints run/2's lines without the time.
:- initialization((numlist(2, 100000, L), include(prime, L, PL), length(PL, NP), format('there are ~w primes until ~w~n', [NP, 100000]), forall(member(D, [[1], [2], [2,2], [2,4], [4,2], [2,4,6], [2,6,4], [4,2,6], [4,6,2], [6,2,4], [6,4,2]]), (primesByDiffs(PL, D, SL), length(SL, Num), SL = [First|Tail], format('~|~w~t~7+ number: ~|~t~d~4+ first: ~|~w~t~22+', [D, Num, First]), once(writeLast(Tail)), nl)))).
%------------------------------------------------------------------ 438 sudoku-1
:- use_module(library(clpfd)).

sudoku(Rows) :-
        length(Rows, 9), maplist(length_(9), Rows),
        append(Rows, Vs), Vs ins 1..9,
        maplist(all_distinct, Rows),
        transpose(Rows, Columns), maplist(all_distinct, Columns),
        Rows = [A,B,C,D,E,F,G,H,I],
        blocks(A, B, C), blocks(D, E, F), blocks(G, H, I).

length_(L, Ls) :- length(Ls, L).

blocks([], [], []).
blocks([A,B,C|Bs1], [D,E,F|Bs2], [G,H,I|Bs3]) :-
        all_distinct([A,B,C,D,E,F,G,H,I]),
        blocks(Bs1, Bs2, Bs3).

problem(1, [[_,_,_,_,_,_,_,_,_],
            [_,_,_,_,_,3,_,8,5],
            [_,_,1,_,2,_,_,_,_],
            [_,_,_,5,_,7,_,_,_],
            [_,_,4,_,_,_,1,_,_],
            [_,9,_,_,_,_,_,_,_],
            [5,_,_,_,_,_,_,7,3],
            [_,_,2,_,1,_,_,_,_],
            [_,_,_,_,4,_,_,_,9]]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines sudoku/1 and its own problem(1, Rows) and never calls them; the driver solves problem 1 and prints the grid, one row a line.
:- initialization((problem(1, Rows), sudoku(Rows), maplist(label, Rows), forall(member(R, Rows), format("~w~n", [R])))).
%--------------------------------------------- 439 sum-and-product-of-an-array-1
sum([],0).
sum([H|T],X) :- sum(T,Y), X is H + Y.
product([],1).
product([H|T],X) :- product(T,Y), X is H * X.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines sum/2 and product/2 and never calls them; product/2 evaluates X is H * X with X unbound (an instantiation error), so the driver prints sum/2 of a sample array only.
:- initialization((L = [1, 2, 3, 4, 5], sum(L, S), format("sum of ~w: ~w~n", [L, S]))).
%-------------------------------------------------- 440 sum-digits-of-an-integer
digit_sum(N, Base, Sum):-
    digit_sum(N, Base, Sum, 0).

digit_sum(N, Base, Sum, S1):-
    N < Base,
    !,
    Sum is S1 + N.
digit_sum(N, Base, Sum, S1):-
    divmod(N, Base, M, Digit),
    S2 is S1 + Digit,
    digit_sum(M, Base, Sum, S2).

test_digit_sum(N, Base):-
    digit_sum(N, Base, Sum),
    writef('Sum of digits of %w in base %w is %w.\n', [N, Base, Sum]).

main:-
    test_digit_sum(1, 10),
    test_digit_sum(1234, 10),
    test_digit_sum(0xfe, 16),
    test_digit_sum(0xf0e, 16).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%------------------------------------------------ 441 sum-multiples-of-3-and-5-1
sum_of_multiples_of_3_and_5_slow(N, TT) :-
	sum_of_multiples_of_3_and_5(N, 1, 0, TT).

sum_of_multiples_of_3_and_5(N, K, S, S) :-
	3 * K >= N.

sum_of_multiples_of_3_and_5(N, K, C, S) :-
	T3 is 3 * K, T3 < N,
	C3 is C + T3,
	T5 is 5 * K,
	(   (T5 < N, K mod 3 =\= 0)
	->  C5 is C3 + T5
	;   C5 = C3),
	K1 is K+1,
	sum_of_multiples_of_3_and_5(N, K1, C5, S).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines sum_of_multiples_of_3_and_5_slow/2 and never calls it; the driver prints it for the task's 1000.
:- initialization((sum_of_multiples_of_3_and_5_slow(1000, S), format("~w~n", [S]))).
%------------------------------------------------ 442 sum-multiples-of-3-and-5-2
sum_of_multiples_of_3_and_5_fast(N, TT):-
	maplist(compute_sum(N), [3,5,15], [TT3, TT5, TT15]),
	TT is TT3 + TT5 - TT15.

compute_sum(N, N1, Sum) :-
	(   N mod N1 =:= 0
	->  N2 is N div N1 - 1
	;   N2 is N div N1),
	Sum is N1 * N2 * (N2 + 1) / 2.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines sum_of_multiples_of_3_and_5_fast/2 and never calls it; the driver prints it for the task's 1000 and its stretch 1e20.
:- initialization(forall(member(N, [1000, 100000000000000000000]), (sum_of_multiples_of_3_and_5_fast(N, S), format("~w: ~w~n", [N, S])))).
%----------------------------------------------------------- 443 sum-of-a-series
sum(S) :-
        findall(L, (between(1,1000,N),L is 1/N^2), Ls),
        sumlist(Ls, S).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines sum/1 (1/k^2 for k = 1..1000) and never calls it; the driver prints the sum.
:- initialization((sum(S), format("~w~n", [S]))).
%------------------------------------------------------ 444 sum-of-first-n-cubes
cube(X, XCubed) :- XCubed is X ^ 3.

first_n_cubes(N, Cubes) :-
    Max is N - 1,
    numlist(0, Max, Nums),
    maplist(cube, Nums, Cubes).

print_formatted(Width, Height, Numbers) :-
    FormatNumber = "~|~` t~d~8+",
    length(FormatRow0, Width),
    maplist(=(FormatNumber), FormatRow0),
    atomics_to_string(FormatRow0, FormatRow1),
    string_concat(FormatRow1, "~n", FormatRow),
    length(FormatString0, Height),
    maplist(=(FormatRow), FormatString0),
    atomics_to_string(FormatString0, FormatString),
    format(FormatString, Numbers).

:-  first_n_cubes(50, [Cube | Cubes]),
    scanl(plus, Cubes, Cube, CumulativeSums),
    print_formatted(10, 5, CumulativeSums).
%---------------------------------------------------------- 445 summarize-primes
isPrime(2).
isPrime(N):-
	between(3, inf, N),
	N /\ 1 > 0,             % odd
	M is floor(sqrt(N)) - 1, % reverse 2*I+1
	Max is M div 2,
	forall(between(1, Max, I), N mod (2*I+1) > 0).

primeSum([], _, _, []).
primeSum([P|PList], Index, Acc, [Index|CList]):-
	Sum is Acc + P,
	isPrime(Sum),!,
	format('~|~t~d~3+  ~|~t~d~3+  ~|~t~d~5+', [Index, P, Sum]),nl,
	Index1 is Index + 1,
	primeSum(PList, Index1, Sum, CList).
primeSum([P|PList], Index, Acc, CntList):-
	Index1 is Index + 1,
	Sum is Acc + P,
	primeSum(PList, Index1, Sum, CntList).

do:-Limit is 1000,
	numlist(1, Limit, List),
	include(isPrime, List, PrimeList),
	primeSum(PrimeList, 1, 0, CntList),
	length(CntList, Number),
	format('~nfound ~d such primes~n', [Number]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines do/0 (primes below 1000) and never calls it; the driver calls it once at load.
:- initialization(do).
%------------------------------------------------------- 446 sylvesters-sequence
sylvesters_sequence(N, S, R):-
    sylvesters_sequence(N, S, 2, R, 0).

sylvesters_sequence(0, [X], X, R, S):-
    !,
    R is S + 1 rdiv X.
sylvesters_sequence(N, [X|Xs], X, R, S):-
    Y is X * X - X + 1,
    M is N - 1,
    T is S + 1 rdiv X,
    sylvesters_sequence(M, Xs, Y, R, T).

main:-
    sylvesters_sequence(9, Sequence, Sum),
    writeln('First 10 elements in Sylvester\'s sequence:'),
    forall(member(S, Sequence), writef('%t\n', [S])),
    N is numerator(Sum),
    D is denominator(Sum),
    writef('\nSum of reciprocals: %t / %t\n', [N, D]).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%------------------------------------------------------ 447 symmetric-difference
sym_diff :-
    A = ['John', 'Serena', 'Bob', 'Mary', 'Serena'],
    B = ['Jim', 'Mary', 'John', 'Jim', 'Bob'],
    format('A : ~w~n', [A]),
    format('B : ~w~n', [B]),
    list_to_set(A, SA),
    list_to_set(B, SB),
    format('set from A : ~w~n', [SA]),
    format('set from B : ~w~n', [SB]),
    subtract(SA, SB, DAB),
    format('difference A\\B : ~w~n', [DAB]),
    subtract(SB, SA, DBA),
    format('difference B\\A : ~w~n', [DBA]),
    union(DAB, DBA, Diff),
    format('symetric difference : ~w~n', [Diff]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines sym_diff/0 and never calls it; the driver calls it once at load.
:- initialization(sym_diff).
%---------------------------------------------------------------- 448 tau-number
tau(N, T) :-
    findall(M, (between(1, N, M), 0 is N mod M), Ms),
    length(Ms, T).

tau_numbers(Limit, Ns) :-
    findall(N, (between(1, Limit, N), tau(N, T), 0 is N mod T), Ns).

print_tau_numbers :-
    tau_numbers(1100, Ns),
    writeln("The first 100 tau numbers are:"),
    forall(member(N, Ns), format("~d ", [N])).

:- print_tau_numbers.
%---------------------------------------------------- 449 temperature-conversion
convKelvin(Temp) :-
    Kelvin is Temp,
    Celsius is Temp - 273.15,
    Fahrenheit is (Temp - 273.15) * 1.8 + 32.0,
    Rankine is (Temp - 273.15) * 1.8 + 32.0 + 459.67,
    format('~f degrees Kelvin~n', [Kelvin]),
    format('~f degrees Celsius~n', [Celsius]),
    format('~f degrees Fahrenheit~n', [Fahrenheit]),
    format('~f degrees Rankine~n', [Rankine]).

test :-
    convKelvin(0.0),
    nl,
    convKelvin(21.0).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines test/0 and never calls it; the driver calls it once at load.
:- initialization(test).
%----------------------------------------------------------- 450 test-a-function
palindrome(Word) :- name(Word,List), reverse(List,List).

:- begin_tests(palindrome).

test(valid_palindrome) :- palindrome('ingirumimusnocteetconsumimurigni').
test(invalid_palindrome, [fail]) :- palindrome('this is not a palindrome').

:- end_tests(palindrome).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines palindrome/1 and a plunit unit and never runs them; the driver asks palindrome/1 of the two test words and runs the unit, printing its verdict (plunit's own report goes to stderr).
:- initialization((forall(member(W, ['ingirumimusnocteetconsumimurigni', 'this is not a palindrome']), ((palindrome(W) -> R = yes ; R = no), format("~w: ~w~n", [W, R]))), (run_tests(palindrome) -> writeln('palindrome tests: passed') ; writeln('palindrome tests: failed')))).
%------------------------------------------------------------- 451 the-name-game
map_name1(C, Cs, C, Cs).
map_name1(C, Cs, Fc, [Fc,C|Cs]) :- member(C, ['a','e','i','o','u']).
map_name1(C, Cs, Fc, [Fc|Cs]) :-
    \+ member(C, ['a','e','i','o','u']),
    dif(C, Fc).

map_name(C, Cs, Fc, Name) :-
    map_name1(C, Cs, Fc, NChars),
    atom_chars(Name, NChars).

song(Name) :-
   string_lower(Name, LName),
   atom_chars(LName, [First|Chars]),

   map_name(First, Chars, 'b', BName),
   map_name(First, Chars, 'f', FName),
   map_name(First, Chars, 'm', MName),

   maplist(write,
           [Name, ", ", Name, ", bo-", BName, '\n',
            "Banana-fana fo-", FName, '\n',
            "Fee-fi-mo-", MName, '\n',
            Name, "!\n\n"]).

test :-
    maplist(song, ["Gary", "Earl", "Billy", "Felix", "Mary"]).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines test/0 and never calls it; the driver calls it once at load.
:- initialization(test).
%---------------------------------------------- 452 the-twelve-days-of-christmas
day(1, 'first').
day(2, 'second').
day(3, 'third').
day(4, 'fourth').
day(5, 'fifth').
day(6, 'sixth').
day(7, 'seventh').
day(8, 'eighth').
day(9, 'ninth').
day(10, 'tenth').
day(11, 'eleventh').
day(12, 'twelfth').

gift(1, 'A partridge in a pear tree.').
gift(2, 'Two turtle doves and').
gift(3, 'Three French hens,').
gift(4, 'Four calling birds,').
gift(5, 'Five gold rings,').
gift(6, 'Six geese a-laying,').
gift(7, 'Seven swans a-swimming,').
gift(8, 'Eight maids a-milking,').
gift(9, 'Nine ladies dancing,').
gift(10, 'Ten lords a-leaping,').
gift(11, 'Eleven pipers piping,').
gift(12, 'Twelve drummers drumming,').

giftsFor(0, []) :- !.
giftsFor(N, [H|T]) :- gift(N, H), M is N-1, giftsFor(M,T).

writeln(S) :- write(S), write('\n').

writeList([])    :- writeln(''), !.
writeList([H|T]) :- writeln(H), writeList(T).

writeGifts(N) :- day(N, Nth), write('On the '), write(Nth),
    writeln(' day of Christmas, my true love sent to me:'),
    giftsFor(N,L), writeList(L).

writeLoop(0) :- !.
writeLoop(N) :- Day is 13 - N, writeGifts(Day), M is N - 1, writeLoop(M).

main :- writeLoop(12), halt.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%---------------------------------------------------------------- 453 thue-morse
%!  thue_morse(+N, -TM) is det.
%   Calculates the Nth number of the Thue-Morse sequence, indexing from 0.
thue_morse(N, TM) :- TM is popcount(N) mod 2.

%!  thue_morse_list(-List) is multi.
%   Calculates progressively longer prefixes of the Thue-Morse sequence.
thue_morse_list(List) :- thue_morse_list(0, List).

thue_morse_list(N, [TM | List]) :-
    thue_morse(N, TM),
    (   List = []
    ;   N1 is N + 1, thue_morse_list(N1, List)
    ).

:- length(List, 20), once(thue_morse_list(List)), write(List).
%------------------------------------------------------- 454 tokenize-a-string-1
% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
splitup(Sep,[token(B)|BL]) --> splitup(Sep,B,BL).
splitup(Sep,[A|AL],B)      --> [A], {\+ [A] = Sep }, splitup(Sep,AL,B).
splitup(Sep,[],[B|BL])     --> Sep, splitup(Sep,B,BL).
splitup(_Sep,[],[])        --> [].
start :-
    phrase(splitup(",",Tokens),"Hello,How,Are,You,Today"),
    phrase(splitup(".",Tokens),Backtogether),
    string_to_list(ABack,Backtogether),
    writeln(ABack).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines start/0 and never calls it; written for code lists (splitup//3 over "Hello,How,Are,You,Today"), so the flag is set at its head and the driver calls start/0 once at load.
:- initialization(start).
%-------------------------------------------------------- 455 top-rank-per-group
% emp(name,id,salary,dpt)
emp('Tyler Bennett','E10297',32000,'D101').
emp('John Rappl','E21437',47000,'D050').
emp('George Woltman','E00127',53500,'D101').
emp('Adam Smith','E63535',18000,'D202').
emp('Claire Buckman','E39876',27800,'D202').
emp('David McClellan','E04242',41500,'D101').
emp('Rich Holcomb','E01234',49500,'D202').
emp('Nathan Adams','E41298',21900,'D050').
emp('Richard Potter','E43128',15900,'D101').
emp('David Motsinger','E27002',19250,'D202').
emp('Tim Sampair','E03033',27000,'D101').
emp('Kim Arlich','E10001',57000,'D190').
emp('Timothy Grove','E16398',29900,'D190').

departments(Depts) :-  % Find the set of departments
  findall(Dpt, emp(_,_,_,Dpt), DList), list_to_set(DList, Depts).

greater(emp(_,_,Sal1,_), emp(_,_,Sal2,_)) :-
  Sal1 > Sal2.  % First employee salary greater than second

% Maintains a decreasing ordered list of employees truncated after (N) items.
%  Rule 1: For N=0, always return an empty set.
%  Rule 2: Add employee with greater salary at start of list, call with N-1
%  Rule 3: Try to add new employee at N-1
%  Rule 4: for an empty input list regardless of N, add the new employee
topSalary(0, _, _, []).
topSalary(N, Emp, [E|R], [Emp|Res]) :-
  greater(Emp,E), N0 is N - 1, !, topSalary(N0, E, R, Res).
topSalary(N, Emp, [E|R], [E|Res]) :-
  N0 is N - 1, !, topSalary(N0, Emp, R, Res).
topSalary(_, Emp, [], [Emp]).

% For each employee, add him to the list if top salary
topEmps(N, [Emp|Emps], R, Res) :-
  topSalary(N, Emp, R, Rt), !, topEmps(N, Emps, Rt, Res).
topEmps(_, [], Res, Res).

% For each department, find the list of top employees in that department
topDeps(N, [Dept|T], [dept(Dept,Ro)|Res]) :-
  findall(emp(Name, Id, Sal, Dept), emp(Name, Id, Sal, Dept), Emps),
  topEmps(N, Emps, [], Ro), !, topDeps(N, T, Res).
topDeps(_, [], []).

% Calculate and report the list of highest salaried employees per department
topDeps(N) :-
  departments(D), topDeps(N, D, Res),
  member(dept(Dept,R), Res),
  writef('Department: %w\n', [Dept]),
  member(emp(Name,Id,Sal,_), R),
  writef('  ID: %w\t%w\tSalary: %w\n', [Id,Name,Sal]),
  fail.
topDeps(_).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines topDeps/1 and never calls it; the driver prints the top 3 salaries of each department of the task's table.
:- initialization(topDeps(3)).
%--------------------------------------------------------- 456 towers-of-hanoi-1
hanoi(N) :- move(N,left,center,right).

move(0,_,_,_) :- !.
move(N,A,B,C) :-
    M is N-1,
    move(M,A,C,B),
    inform(A,B),
    move(M,C,B,A).

inform(X,Y) :- write([move,a,disk,from,the,X,pole,to,Y,pole]), nl.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines hanoi/1 and never calls it; the driver moves 3 disks.
:- initialization(hanoi(3)).
%--------------------------------------------------------- 457 towers-of-hanoi-2
hanoi(N, Src, Aux, Dest, Moves-NMoves) :-
  NMoves is 2^N - 1,
  length(Moves, NMoves),
  phrase(move(N, Src, Aux, Dest), Moves).


move(1, Src, _, Dest) --> !,
  [Src->Dest].

move(2, Src, Aux, Dest) --> !,
  [Src->Aux,Src->Dest,Aux->Dest].

move(N, Src, Aux, Dest) -->
  { succ(N0, N) },
  move(N0, Src, Dest, Aux),
  move(1, Src, Aux, Dest),
  move(N0, Aux, Src, Dest).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines hanoi/5 and never calls it; the driver moves 3 disks and prints the move count and the moves.
:- initialization((hanoi(3, left, center, right, Moves-N), format("~w moves: ~w~n", [N, Moves]))).
%----------------------------------------------- 458 trabb-pardo-knuth-algorithm
:- use_module(library(dcg/basics)).
:- use_module(library(dcg/high_order)).

main :-
    % ask for 11 numbers to be read into a sequence S
    format("Enter 11 numbers for evaluation~n", []),
    length(S, 11),
    phrase_from_stream((sequence(integer, "\n", S), remainder(_)), user_input),

    % reverse sequence S
    reverse(S, ReversedS),

    % for each item in sequence S
    foreach((
        member(Item, ReversedS),
        % result := call a function to do an operation
        Result is sqrt(abs(Item)) + 5 * Item ^ 3
    ),
        % if result overflows
        (   Result > 400
        %   alert user
        ->  format("~d: OVERFLOW~n", [Item])
        %   else print result
        ;   format("~d: ~f~n", [Item, Result])
        )
    ).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%------------------------------------------------------------ 459 tree-traversal
tree :-
	Tree= [1,
	        [2,
		   [4,
		     [7, nil, nil],
		     nil],
		   [5, nil, nil]],
	        [3,
		 [6,
		   [8, nil, nil],
		   [9,nil, nil]],
		 nil]],
	
	write('preorder    : '), preorder(Tree), nl,
	write('inorder     : '), inorder(Tree), nl,
	write('postorder   : '), postorder(Tree), nl,
	write('level-order : '), level_order([Tree]).

preorder(nil).
preorder([Node, FG, FD]) :-
	format('~w ', [Node]),
	preorder(FG),
	preorder(FD).


inorder(nil).
inorder([Node, FG, FD]) :-
	inorder(FG),
	format('~w ', [Node]),
	inorder(FD).

postorder(nil).
postorder([Node, FG, FD]) :-
	postorder(FG),
	postorder(FD),
	format('~w ', [Node]).


level_order([]).

level_order(A) :-
	level_order_(A, U-U, S),
	level_order(S).

level_order_([], S-[],S).

level_order_([[Node, FG, FD] | T], CS, FS) :-
	format('~w ', [Node]),
	append_dl(CS, [FG, FD|U]-U, CS1),
	level_order_(T, CS1, FS).

level_order_([nil | T], CS, FS) :-
	level_order_(T, CS, FS).


append_dl(X-Y, Y-Z, X-Z).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines tree/0 (the task's tree, all four orders) and never calls it; the driver calls it once at load and ends its last line.
:- initialization((tree, nl)).
%------------------------------------------------------ 460 truncatable-primes-2
:- module(prime_numbers, [find_prime_numbers/1, is_prime/1]).
:- dynamic is_prime/1.

find_prime_numbers(N):-
    retractall(is_prime(_)),
    assertz(is_prime(2)),
    init_sieve(N, 3),
    sieve(N, 3).

init_sieve(N, P):-
    P > N,
    !.
init_sieve(N, P):-
    assertz(is_prime(P)),
    Q is P + 2,
    init_sieve(N, Q).

sieve(N, P):-
    P * P > N,
    !.
sieve(N, P):-
    is_prime(P),
    !,
    S is P * P,
    cross_out(S, N, P),
    Q is P + 2,
    sieve(N, Q).
sieve(N, P):-
    Q is P + 2,
    sieve(N, Q).

cross_out(S, N, _):-
    S > N,
    !.
cross_out(S, N, P):-
    retract(is_prime(S)),
    !,
    Q is S + 2 * P,
    cross_out(Q, N, P).
cross_out(S, N, P):-
    Q is S + 2 * P,
    cross_out(Q, N, P).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution is the prime_numbers module (a sieve) that truncatable-primes-1 loads, and never calls it; the driver sieves to 100 and prints the primes it asserted.
:- initialization((find_prime_numbers(100), findall(P, is_prime(P), Ps), format("~w~n", [Ps]))).
%--------------------------------------------------------------- 461 truth-table
/*
    To evaluate the truth table a line of text is inputted and then there are three steps
    Let's say the expression is:
    'not a and (b or c)'

    Step 1: tokenize into atoms and brackets
    eg: Tokenized = [ not, a, and, '(', b, or, c, ')' ].

    Step 2: convert to a term that can be evaluated, and get out the variables
    eg: Expression = op(and, op(not, a), op(or, b, c)), Variables = [ a, b, c ]

    Step 3: permeate over the variables, substituting the values for each var, and evaluate the expression for each permutation
    eg: [ 0, 0, 0]
        op(and, op(not, 0), op(or, 0, 0))
        op(and, 1, op(or, 0, 0))
        op(and, 1, 0)
        0

        [ 0, 0, 1]
        op(and, op(not, 0), op(or, 0, 1))
        op(and, 1, op(or, 0, 0))
        op(and, 1, 1)
        1
*/
truth_table :-
    current_input(In),
    read_line_to_codes(In, Line),
    atom_codes(A, Line),
    atom_chars(A, Chars),

    % parse everything into the form we want
    phrase(tok(Tok), Chars, _),
    phrase(expr(Expr,Vars), Tok, _),
    list_to_set(Vars,VarSet),

    % evaluate
    print_expr(Expr, VarSet), !.

print_expr(Expr, Vars) :-
    % write the header (once)
    maplist(format('~p '), Vars),
    format('~n'),

    % write the results for as many times as there are rows
    eval_expr(Expr, Vars, Tvals, R),
    maplist(format('~p '), Tvals),
    format('~p~n', R),
    fail.
print_expr(_, _).


% Step 1 - tokenize the input into spaces, brackets and atoms
tok([A|As]) --> spaces(_), chars([X|Xs]), {atom_codes(A, [X|Xs])}, spaces(_), tok(As).
tok([A|As]) --> spaces(_), bracket(A), spaces(_), tok(As).
tok([]) --> [].
chars([X|Xs]) --> char(X), { dif(X, ')'), dif(X, '(') }, !, chars(Xs).
chars([]) --> [].
spaces([X|Xs]) --> space(X), !, spaces(Xs).
spaces([]) --> [].
bracket('(') --> ['('].
bracket(')') --> [')'].


% Step 2 - Parse the expression into an evaluable term
expr(op(I, E, E2), V) --> starter(E, V1), infix(I), expr(E2, V2), { append(V1, V2, V) }.
expr(E, V) --> starter(E, V).

starter(op(not, E),V) --> [not], expr(E, V).
starter(E,V) --> ['('], expr(E,V), [')'].
starter(V,[V]) --> variable(V).

infix(or) --> [or].
infix(and) --> [and].
infix(xor) --> [xor].
infix(nand) --> [nand].

variable(V) --> [V], \+ infix(V), \+ bracket(V).
space(' ') --> [' '].
char(X) --> [X], { dif(X, ' ') }.


% Step 3 - evaluate the parsed expression
eval_expr(Expr, Vars, Tvals, R) :-
    length(Vars,Len),
    length(Tvals, Len),
    maplist(truth_val, Tvals),
    eval(Expr, [Tvals,Vars],R).

eval(X, [Vals,Vars], R) :- nth1(N,Vars,X), nth1(N,Vals,R).
eval(op(Op,A,B), V, R) :- eval(A,V,Ae), eval(B,V,Be), e(Op,Ae,Be,R).
eval(op(not,A), V, R) :- eval(A,V,Ae), e(not,Ae,R).

truth_val(0). truth_val(1).

e(or,0,0,0). e(or,0,1,1). e(or,1,0,1). e(or,1,1,1).
e(and,0,0,0). e(and,0,1,0). e(and,1,0,0). e(and,1,1,1).
e(xor,0,0,0). e(xor,0,1,1). e(xor,1,0,1). e(xor,1,1,0).
e(nand,0,0,1). e(nand,0,1,1). e(nand,1,0,1). e(nand,1,1,0).
e(not, 1, 0). e(not, 0, 1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines truth_table/0 (reads one expression line) and never calls it; truth-table.in holds two expressions, the one in its own comment and a xor b.
:- initialization((truth_table, nl, truth_table)).
%----------------------------------------------------- 462 two-identical-strings
main:-
    writeln('Decimal\tBinary'),
    main(1, 1000).

main(N, Limit):-
    format(string(Binary), '~2r', N),
    string_length(Binary, Length),
    I is N + (N << Length),
    I < Limit,
    !,
    writef('%w\t%w%w\n', [I, Binary, Binary]),
    N1 is N + 1,
    main(N1, Limit).
main(_, _).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%----------------------------------------------------------- 463 twos-complement
d(1234567).

b([-D, -D + 1, -2, -1, 0, 1, 2, D - 2, D - 1]) :-
    d(D).

print_array([]).
print_array([H|T]) :-
    NegH is -H,
    format('~d -> ~d~n', [H, NegH]),
    print_array(T).

main :-
    b(B),
    print_array(B).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%-------------------------------------------------- 464 unicode-variable-names-1
% Unicode in predicate names:
是.            % be: means, approximately, "True".
不是 :- \+ 是.  % not be: means, approximately, "False".  Defined as not 是.

% Unicode in variable names:
test(Garçon, Δ) :-
  Garçon = boy,
  Δ = delta.

% Call test2(1, Result) to have 2 assigned to Result.
test2(Δ, R) :- R is Δ + 1.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines 是/0, 不是/0, test/2 and test2/2 and never calls them; the driver runs the Rosetta page's own four queries (unicode-variable-names-2).
:- initialization(((是 -> writeln(true) ; writeln(false)), (不是 -> writeln(true) ; writeln(false)), test(X, Y), format("X = ~w, Y = ~w~n", [X, Y]), test2(1, R), format("Result = ~w~n", [R]))).
%-------------------------------------------------- 465 universal-lambda-machine
:- set_prolog_flag(double_quotes, chars).

/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    List.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

skip(N, Es0, Es) :-
    '@skip'(0, N, Es0, Es).

'@skip'(N0, N, Es0, Es) :-
    N0 == N, !,
    Es0 = Es.
'@skip'(N, N, Es, Es).
'@skip'(N0, N, [_|Es1], Es) :-
    N1 is N0+1,
    '@skip'(N1, N, Es1, Es).

foldl(_G_3, [], S, S).
foldl(G_3, [E|Es], S0, S) :-
    call(G_3, E, S0, S1),
    foldl(G_3, Es, S1, S).

/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    BLC.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

% De Bruijn index.
blc_expr(v(N)) --> blc_variable(N).
blc_expr(l(E)) --> blc_lambda(E).
blc_expr(a(E0,E1)) --> blc_application(E0, E1).

blc_variable(N) --> "1", '@blc_count'(0, N).
blc_lambda(E) --> "00", blc_expr(E).
blc_application(E0, E1) --> "01", blc_expr(E0), blc_expr(E1).

'@blc_count'(N0, N) --> { N0 == N }, !, "0".
'@blc_count'(N, N) --> "0".
'@blc_count'(N0, N) --> "1", { N1 is N0+1 }, '@blc_count'(N1, N).


% Local variable of the argument.
'@blc_shift'(_, >, v(N), v(N)).
% Global variable of the argument.
'@blc_shift'(M, =, v(N0), v(N)) :-
    N is M+N0.
% Global variable of the argument.
'@blc_shift'(M, <, v(N0), v(N)) :-
    N is M+N0.

blc_shift(M, L, v(N0), v(N)) :-
    compare(O, L, N0),
    '@blc_shift'(M, O, v(N0), v(N)).
blc_shift(M, L0, l(E0), l(E)) :-
    L is L0+1,
    blc_shift(M, L, E0, E).
blc_shift(M, L, a(E0,A0), a(E,A)) :-
    blc_shift(M, L, E0, E),
    blc_shift(M, L, A0, A).

blc_substitute(Z, L, v(N), E) :-
    compare(O, L, N),
    '@blc_substitute'(O, Z, v(N), E).
blc_substitute(Z, L0, l(E0), l(E)) :-
    L is L0+1,
    blc_substitute(Z, L, E0, E).
blc_substitute(Z, L, a(E0,A0), a(E,A)) :-
    blc_substitute(Z, L, E0, E),
    blc_substitute(Z, L, A0, A).

% Local variable.
'@blc_substitute'(>, _, v(N), v(N)).
% Variable to substitute.
'@blc_substitute'(=, E0, v(N), E) :-
    blc_shift(N, 0, E0, E).
% Global variable.
'@blc_substitute'(<, _, v(N0), v(N)) :-
    N is N0-1, N @>= 0.

% https://web.archive.org/web/20241118083658/https://www.itu.dk/%7Esestoft/papers/sestoft-lamreduce.pdf#page=5

'@blc_cbn'(A0, v(N), a(v(N),A0)).
'@blc_cbn'(A0, l(E0), E) :-
    blc_substitute(A0, 0, E0, E1),
    blc_cbn(E1, E).
'@blc_cbn'(A0, a(E1,A1), a(a(E1,A1),A0)).

blc_cbn(v(N), v(N)).
blc_cbn(l(E), l(E)).
blc_cbn(a(E0,A0), E) :-
    blc_cbn(E0, E1),
    '@blc_cbn'(A0, E1, E).

'@blc_nor'(A0, v(N), a(v(N),A)) :-
    blc_nor(A0, A).
'@blc_nor'(A0, l(E0), E) :-
    blc_substitute(A0, 0, E0, E1),
    blc_nor(E1, E).
'@blc_nor'(A0, a(E1,A1), a(E,A)) :-
    blc_nor(a(E1,A1), E),
    blc_nor(A0, A).

blc_nor(v(N), v(N)).
blc_nor(l(E0), l(E1)) :-
    blc_nor(E0, E1).
blc_nor(a(E0,A0), E) :-
    blc_cbn(E0, E1),
    '@blc_nor'(A0, E1, E).

/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    Krivine.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

'@ksubstitute_variable'(>, _, _, v(I), v(I)).
'@ksubstitute_variable'(=, Env, L, v(I0), E) :-
    I is I0-L,
    skip(I, Env, [E0-Env0|_]),
    ksubstitute(Env0, 0, E0, E).
'@ksubstitute_variable'(<, Env, L, v(I0), E) :-
    I is I0-L,
    skip(I, Env, [E0-Env0|_]),
    ksubstitute(Env0, 0, E0, E).

ksubstitute(Env, L, v(I0), E) :-
    compare(O, L, I0),
    '@ksubstitute_variable'(O, Env, L, v(I0), E).
ksubstitute(Env, L0, l(E0), l(E)) :-
    L is L0+1,
    ksubstitute(Env, L, E0, E).
ksubstitute(Env, L, a(E0,A0), a(E,A)) :-
    ksubstitute(Env, L, E0, E),
    ksubstitute(Env, L, A0, A).

% Source: https://arxiv.org/abs/1802.00640v5
krivine(M0, M) :-
    '@krivine'([M0-[]], [M1-Env]),
    ksubstitute(Env, 0, M1, M).

'@krivine'(S0, S) :-
    '@kstep'(S0, S1), !,
    '@krivine'(S1, S).
'@krivine'(S, S).

'@kstep'([v(I)-Env0|Env], [C|Env]) :-
    skip(I, Env0, [C|_]).
'@kstep'([l(M)-Env0,N-Env1|Env], [M-[N-Env1|Env0]|Env]).
'@kstep'([a(M,N)-Env0|Env], [M-Env0,N-Env0|Env]).

/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    Interpreter.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

get_chars(Cs0) :-
    get_char(C),
    C \== end_of_file, !,
    [C|Cs] = Cs0,
    get_chars(Cs).
get_chars([]).

encode('0', l(a(a(v(0),l(l(v(1)))),E)), E).
encode('1', l(a(a(v(0),l(l(v(0)))),E)), E).

decode(l(l(v(1))), '0').
decode(l(l(v(0))), '1').

machine(E0) :-
    krivine(a(E0,l(l(v(1)))), E1),
    blc_nor(E1, E2),
    krivine(a(E0,l(l(v(0)))), E3),
    once(decode(E2, C)),
    put_char(C), flush_output,
    machine(E3).

interpret :-
    Nil = l(l(v(0))),
    get_chars(Cs0),
    phrase(blc_expr(E0), Cs0, Cs1),
    once(foldl(encode, Cs1, A0, Nil)),
    machine(a(E0,A0)),
    false.
interpret :-
    halt.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines interpret/0 (reads a BLC program and its input as 0/1 characters from standard input) and never calls it; universal-lambda-machine.in holds the identity program 0010 and the input 0110.
:- initialization(interpret).
%------------------------------------------------ 466 universal-turing-machine-1
turing(Config, Rules, TapeIn, TapeOut) :-
    call(Config, IS, _, _, _, _),
    perform(Config, Rules, IS, {[], TapeIn}, {Ls, Rs}),
    reverse(Ls, Ls1),
    append(Ls1, Rs, TapeOut).

perform(Config, Rules, State, TapeIn, TapeOut) :-
    call(Config, _, FS, RS, B, Symbols),
    ( memberchk(State, FS) ->
        TapeOut = TapeIn
    ; memberchk(State, RS) ->
        {LeftIn, RightIn} = TapeIn,
        symbol(RightIn, Symbol, RightRem, B),
        memberchk(Symbol, Symbols),
        once(call(Rules, State, Symbol, NewSymbol, Action, NewState)),
        memberchk(NewSymbol, Symbols),
        action(Action, {LeftIn, [NewSymbol|RightRem]}, {LeftOut, RightOut}, B),
        perform(Config, Rules, NewState, {LeftOut, RightOut}, TapeOut) ).

symbol([],       B,   [], B).
symbol([Sym|Rs], Sym, Rs, _).

action(left,  {Lin, Rin},  {Lout, Rout}, B) :- left(Lin, Rin, Lout, Rout, B).
action(stay,  Tape,        Tape,         _).
action(right, {Lin, Rin},  {Lout, Rout}, B) :- right(Lin, Rin, Lout, Rout, B).

left([],     Rs, [], [B|Rs], B).
left([L|Ls], Rs, Ls, [L|Rs], _).

right(L, [],     [B|L], [], B).
right(L, [S|Rs], [S|L], Rs, _).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the machine turing/4 and never calls it; the driver asserts the task's simple incrementer and three-state busy beaver (as universal-turing-machine-2 and -3 write them) and prints each final tape.
:- initialization((forall(member(C, [inc_config(q0, [qf], [q0], b, [b, 1]), inc_rules(q0, 1, 1, right, q0), inc_rules(q0, b, 1, stay, qf), bb_config('A', ['HALT'], ['A', 'B', 'C'], 0, [0, 1]), bb_rules('A', 0, 1, right, 'B'), bb_rules('A', 1, 1, left, 'C'), bb_rules('B', 0, 1, left, 'A'), bb_rules('B', 1, 1, right, 'B'), bb_rules('C', 0, 1, left, 'B'), bb_rules('C', 1, 1, stay, 'HALT')]), assertz(C)), turing(inc_config, inc_rules, [1, 1, 1], T1), format("incrementer: ~w~n", [T1]), turing(bb_config, bb_rules, [], T2), format("three-state busy beaver: ~w~n", [T2]))).
%------------------------------------------------- 467 van-der-corput-sequence-1
% vdc( N, Base, Out )
% Out = the Van der Corput representation of N in given Base
vdc( 0, _, [] ).
vdc( N, Base, Out ) :-
    Nr is mod(N, Base),
    Nq is N // Base,
    vdc( Nq, Base, Tmp ),
    Out = [Nr|Tmp].

% Writes every element of a list to stdout; no newlines
write_list( [] ).
write_list( [H|T] ) :-
    write( H ),
    write_list( T ).

% Writes the Nth Van der Corput item.
print_vdc( N, Base ) :-
    vdc( N, Base, Lst ),
    write('0.'),
    write_list( Lst ).
print_vdc( N ) :-
    print_vdc( N, 2 ).

% Prints the first N+1 elements of the Van der Corput
% sequence, each to its own line
print_some( 0, _ ) :-
    write( '0.0' ).
print_some( N, Base ) :-
    M is N - 1,
    print_some( M, Base ),
    nl,
    print_vdc( N, Base ).
print_some( N ) :-
    print_some( N, 2 ).

test :-
   writeln('First 10 members in base 2:'),
   print_some( 9 ),
   nl,
   write('7th member in base 4 (stretch goal) => '),
   print_vdc( 7, 4 ).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines test/0 and never calls it; the driver calls it once at load.
:- initialization(test).
%------------------------------------------------- 468 van-der-corput-sequence-2
% g(B,N,X):- consecutively generate in X the first N elements of the sequence based on {0, 1, ..., B}

g(_,N,[L|_]-_,X):- N > 1, atomic_list_concat(['0.'|L],X).
g(B,N,[L|Ls]-Xs,X):- N > 2, M is N-1, findall([I|L], between(0,B,I), T), append(T,Ys,Xs), g(B,M,Ls-Ys,X).
g(_,N,'0.0'):- N > 0.
g(B,N,X):- N > 0, findall([I], between(1,B,I), T), T \= [], append(T,Ys,Xs), g(B,N,Xs-Ys,X).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines g/3 (its first argument the largest digit, so base B+1) and never calls it; the driver prints the task's first ten in base 2 and the stretch base 4.
:- initialization((writeln('First 10 members in base 2:'), forall(g(1, 10, X), writeln(X)), writeln('First 10 members in base 4:'), forall(g(3, 10, Y), writeln(Y)))).
%---------------------------------------------------------- 469 van-eck-sequence
van_eck_init(v(0, 0, _assoc)):-
    empty_assoc(_assoc).

van_eck_next(v(Index, Last_term, Last_pos), v(Index1, Next_term, Last_pos1)):-
    (get_assoc(Last_term, Last_pos, V) ->
        Next_term is Index - V
        ;
        Next_term = 0
    ),
    Index1 is Index + 1,
    put_assoc(Last_term, Last_pos, Index, Last_pos1).

van_eck_sequence(N, Seq):-
    van_eck_init(V),
    van_eck_sequence(N, V, Seq).

van_eck_sequence(0, _, []):-!.
van_eck_sequence(N, V, [Term|Rest]):-
    V = v(_, Term, _),
    van_eck_next(V, V1),
    N1 is N - 1,
    van_eck_sequence(N1, V1, Rest).

write_list(From, To, _, _):-
    To < From,
    !.
write_list(_, _, _, []):-!.
write_list(From, To, N, [_|Rest]):-
    From > N,
    !,
    N1 is N + 1,
    write_list(From, To, N1, Rest).
write_list(From, To, N, [E|Rest]):-
    writef('%t ', [E]),
    F1 is From + 1,
    N1 is N + 1,
    write_list(F1, To, N1, Rest).

write_list(From, To, List):-
    write_list(From, To, 1, List),
    nl.

main:-
    van_eck_sequence(1000, Seq),
    writeln('First 10 terms of the Van Eck sequence:'),
    write_list(1, 10, Seq),
    writeln('Terms 991 to 1000 of the Van Eck sequence:'),
    write_list(991, 1000, Seq).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%--------------------------------------------------------------- 470 variables-1
mortal(X) :- man(X).
man(socrates).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines mortal/1 and man/1 and never calls them; the driver asks the Rosetta page's own queries mortal(socrates) and mortal(zeus) (variables-3, -4).
:- initialization(forall(member(Q, [socrates, zeus]), ((mortal(Q) -> R = yes ; R = no), format("mortal(~w): ~w~n", [Q, R])))).
%--------------------------------------------------------------- 471 variables-2
student(X,Y) :- taught(Y,X).
taught(socrates,plato).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines student/2 and taught/2 and never calls them; the driver asks the Rosetta page's own queries student(X, socrates) and student(socrates, X) (variables-3).
:- initialization(((student(X, socrates) -> format("student(X, socrates): X = ~w~n", [X]) ; writeln('student(X, socrates): no')), (student(socrates, Y) -> format("student(socrates, X): X = ~w~n", [Y]) ; writeln('student(socrates, X): no')))).
%------------------------------------------------------- 472 variadic-function-1
printAll( List ) :- forall( member(X,List), (write(X), nl)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines printAll/1 and never calls it; the driver prints five arguments, one a line.
:- initialization(printAll(['Mary', had, a, little, lamb])).
%------------------------------------------------------- 473 variadic-function-2
execute( Term ) :-
  Term =.. [F | Args],
  forall( member(X,Args), (G =.. [F,X], G, nl) ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines execute/1 and never calls it; the driver applies write/1 to five arguments, one a line.
:- initialization(execute(write('Mary', had, a, little, lamb))).
%----------------------------------------------------------- 474 vector-products
dot_product([A1, A2, A3], [B1, B2, B3], Ans) :-
    Ans is A1 * B1 + A2 * B2 + A3 * B3.

cross_product([A1, A2, A3], [B1, B2, B3], Ans) :-
    T1 is A2 * B3 - A3 * B2,
    T2 is A3 * B1 - A1 * B3,
    T3 is A1 * B2 - A2 * B1,
    Ans = [T1, T2, T3].

scala_triple(A, B, C, Ans) :-
    cross_product(B, C, Temp),
    dot_product(A, Temp, Ans).

vector_triple(A, B, C, Ans) :-
    cross_product(B, C, Temp),
    cross_product(A, Temp, Ans).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the four products and never calls them; the driver prints them for the task's a = (3,4,5), b = (4,3,5), c = (-5,-12,-13).
:- initialization((A = [3, 4, 5], B = [4, 3, 5], C = [-5, -12, -13], dot_product(A, B, D), cross_product(A, B, X), scala_triple(A, B, C, S), vector_triple(A, B, C, V), format("a . b = ~w~na x b = ~w~na . (b x c) = ~w~na x (b x c) = ~w~n", [D, X, S, V]))).
%------------------------------------------------ 475 wilson-primes-of-order-n-1
main:-
    wilson_primes(11000).

wilson_primes(Limit):-
    writeln('  n | Wilson primes\n---------------------'),
    make_factorials(Limit),
    find_prime_numbers(Limit),
    wilson_primes(1, 12, -1).

wilson_primes(N, N, _):-!.
wilson_primes(N, M, S):-
    wilson_primes(N, S),
    S1 is -S,
    N1 is N + 1,
    wilson_primes(N1, M, S1).

wilson_primes(N, S):-
    writef('%3r |', [N]),
    N1 is N - 1,
    factorial(N1, F1),
    is_prime(P),
    P >= N,
    PN is P - N,
    factorial(PN, F2),
    0 is (F1 * F2 - S) mod (P * P),
    writef(' %w', [P]),
    fail.
wilson_primes(_, _):-
    nl.

make_factorials(N):-
    retractall(factorial(_, _)),
    make_factorials(N, 0, 1).

make_factorials(N, N, F):-
    assert(factorial(N, F)),
    !.
make_factorials(N, M, F):-
    assert(factorial(M, F)),
    M1 is M + 1,
    F1 is F * M1,
    make_factorials(N, M1, F1).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%------------------------------------------------ 476 wilson-primes-of-order-n-2
:- module(prime_numbers, [find_prime_numbers/1, is_prime/1]).
:- dynamic is_prime/1.

find_prime_numbers(N):-
    retractall(is_prime(_)),
    assertz(is_prime(2)),
    init_sieve(N, 3),
    sieve(N, 3).

init_sieve(N, P):-
    P > N,
    !.
init_sieve(N, P):-
    assertz(is_prime(P)),
    Q is P + 2,
    init_sieve(N, Q).

sieve(N, P):-
    P * P > N,
    !.
sieve(N, P):-
    is_prime(P),
    !,
    S is P * P,
    cross_out(S, N, P),
    Q is P + 2,
    sieve(N, Q).
sieve(N, P):-
    Q is P + 2,
    sieve(N, Q).

cross_out(S, N, _):-
    S > N,
    !.
cross_out(S, N, P):-
    retract(is_prime(S)),
    !,
    Q is S + 2 * P,
    cross_out(Q, N, P).
cross_out(S, N, P):-
    Q is S + 2 * P,
    cross_out(Q, N, P).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution is the prime_numbers module (a sieve) that wilson-primes-of-order-n-1 loads, and never calls it; the driver sieves to 100 and prints the primes it asserted.
:- initialization((find_prime_numbers(100), findall(P, is_prime(P), Ps), format("~w~n", [Ps]))).
%----------------------------------------------------------------- 477 wireworld
:- initialization(main, main).
:- set_prolog_flag(double_quotes, codes).
:- use_module(library(ansi_term), [ansi_format/3]).
:- use_module(library(dcg/basics), [blanks/2, eol/2, eos/2, string_without/4]).
:- use_module(library(dcg/high_order), [optional/4, sequence/4]).

grid(Grid) --> sequence(row, Grid), blanks.
row(Row)   --> string_without("\n", Row), { Row \= [] }, eol.

:- meta_predicate maplist_with_nth0(3, +, -).
maplist_with_nth0(Goal, List0, List) :-
    length(List0, Length),
    succ(LastIndex, Length),
    numlist(0, LastIndex, N0s),
    maplist(Goal, N0s, List0, List).

:- meta_predicate map_grid0(3, +, -).
map_grid0(Goal, Grid0, Grid) :-
    maplist_with_nth0({Goal}/[Y, Row0, Row] >> (
        maplist_with_nth0({Goal, Y}/[X, T0, T] >> (
            call(Goal, yx(Y, X), T0, T)
        ), Row0, Row)
    ), Grid0, Grid).

yxth0(yx(Y, X)) --> nth0(Y), nth0(X).

moore_neighbourhood(yx(Y0, X0), yx(Y, X)) :- succ(Y0, Y), ( succ(X, X0) ; X = X0 ; succ(X0, X) ).
moore_neighbourhood(yx(Y, X0), yx(Y, X))  :- succ(X, X0) ; succ(X0, X).
moore_neighbourhood(yx(Y0, X0), yx(Y, X)) :- succ(Y, Y0), ( succ(X, X0) ; X = X0 ; succ(X0, X) ).

transition(_, _, 0' , 0' ) :- !.
transition(_, _, 0'H, 0't) :- !.
transition(_, _, 0't, 0'.) :- !.
transition(Grid, Here, 0'., State) :-
    aggregate_all(count, (
        moore_neighbourhood(Here, There),
        yxth0(There, Grid, 0'H)
    ), AdjacentHeads),
    (   between(1, 2, AdjacentHeads)
    ->  State = 0'H
    ;   State = 0'.
    ).

char_attributes(0'., [bg(yellow)]).
char_attributes(0' , []).
char_attributes(0't, [bg(red)]).
char_attributes(0'H, [bg(blue)]).

display(Grid) :-
    maplist([Row] >> (
        maplist([Char] >> (
            char_attributes(Char, Attributes),
            ansi_format(Attributes, "~c", [Char])
        ), Row),
        nl
    ), Grid).

simulate(Grid0) :-
    map_grid0(transition(Grid0), Grid0, Grid),
    display(Grid),
    sleep(0.25),
    length(Grid, Height),
    format("\e[~dA", [Height]),
    simulate(Grid).

main([Filename]) :-
    format("Welcome to WireWorld! Press ^C to exit.~n~n", []),
    once(phrase_from_file(grid(Grid), Filename)),
    simulate(Grid).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): main/1 under initialization(main, main) reads a grid file named on its command line and animates it forever with sleep/1 and cursor escapes; the driver parses the task's sample circuit with grid//1, prints ten generations of transition/4 with display/1, and halts before main runs.
:- initialization((phrase(grid(G0), "tH.........\n.   .      \n   ...     \n.   .      \nHt.. ......\n"), display(G0), nl, foldl([_, Ga, Gb]>>(map_grid0(transition(Ga), Ga, Gb), display(Gb), nl), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], G0, _), halt)).
%----------------------------------------------------------------- 478 word-wrap
% See https://en.wikipedia.org/wiki/Line_wrap_and_word_wrap#Minimum_number_of_lines
word_wrap(String, Length, Wrapped):-
    re_split("\\S+", String, Words),
    wrap(Words, Length, Length, Wrapped, '').

wrap([_], _, _, Result, Result):-!.
wrap([Space, Word|Words], Line_length, Space_left, Result, String):-
    string_length(Word, Word_len),
    string_length(Space, Space_len),
    (Space_left < Word_len + Space_len ->
        Space1 = '\n',
        Space_left1 is Line_length - Word_len
        ;
        Space1 = Space,
        Space_left1 is Space_left - Word_len - Space_len
    ),
    atomic_list_concat([String, Space1, Word], String1),
    wrap(Words, Line_length, Space_left1, Result, String1).

sample_text("Lorem ipsum dolor sit amet, consectetur adipiscing \
elit, sed do eiusmod tempor incididunt ut labore et dolore magna \
aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco \
laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure \
dolor in reprehenderit in voluptate velit esse cillum dolore eu \
fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \
proident, sunt in culpa qui officia deserunt mollit anim id est \
laborum.").

test_word_wrap(Line_length):-
    sample_text(Text),
    word_wrap(Text, Line_length, Wrapped),
    writef('Wrapped at %w characters:\n%w\n',
           [Line_length, Wrapped]).

main:-
    test_word_wrap(60),
    nl,
    test_word_wrap(80).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%------------------------------------------------------------ 479 zebra-puzzle-2
% attribute store is 'Name - Value' pairs with unique names
attrs( H, [N-V | R]) :- !, memberchk( N-X, H), X = V, (R = [], ! ; attrs( H, R)).
attrs( HS, AttrsL) :- maplist( attrs, HS, AttrsL).

in(    HS, Attrs) :- in( member, HS, Attrs).
in( G, HS, Attrs) :- call( G, A, HS), attrs( A, Attrs).

left_of( [A,B], HS) :- append( _, [A,B | _], HS).
next_to( [A,B], HS) :- left_of( [A,B], HS) ; left_of( [B,A], HS).

zebra( Owner, Houses):-
    Houses = [A,_,C,_,_],                                               % 1
    maplist( in(Houses), [ [ nation-englishman,   color-red          ]  % 2
                         , [ nation-swede,        owns -dog          ]  % 3
                         , [ nation-dane,         drink-tea          ]  % 4
                         , [ drink -coffee,       color-green        ]  % 6
                         , [ smoke -'Pall Mall',  owns -birds        ]  % 7
                         , [ color -yellow,       smoke-'Dunhill'    ]  % 8
                         , [ drink -beer,         smoke-'Blue Master']  % 13
                         , [ nation-german,       smoke-'Prince'     ]  % 14
                         ] ),
    in( left_of, Houses,   [[color -green    ],  [color -white    ]]),  % 5
    in( left_of,  [C,A],   [[drink -milk     ],  [nation-norwegian]]),  % 9, 10
    maplist( in( next_to, Houses),
                         [ [[smoke -'Blend'  ],  [owns -cats      ]]    % 11
                         , [[owns  -horse    ],  [smoke-'Dunhill' ]]    % 12
                         , [[nation-norwegian],  [color-blue      ]]    % 15
                         , [[drink -water    ],  [smoke-'Blend'   ]]    % 16
                         ] ),
    in( Houses, [owns-zebra, nation-Owner]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines zebra/2 and never calls it; the driver prints the first solution's five houses (each attribute list closed) and the zebra's owner.
:- initialization((zebra(Owner, Houses), maplist(length, Houses, _), forall(member(H, Houses), format("~w~n", [H])), format("~w owns the zebra~n", [Owner]))).
%------------------------------------------------------------ 480 zebra-puzzle-4
:- initialization(main).


zebra(X) :-
    houses(Hs), member(h(_,X,zebra,_,_), Hs)
  , findall(_, (member(H,Hs), write(H), nl), _), nl
  , write('the one who keeps zebra: '), write(X), nl
  .


houses(Hs) :-
    Hs = [_,_,_,_,_]                         %  1
  , H3 = h(_,_,_,milk,_), Hs = [_,_,H3,_,_]  %  9
  , H1 = h(_,nvg,_,_,_ ), Hs = [H1|_]        % 10

  , maplist( flip(member,Hs),
       [ h(red,eng,_,_,_)                    %  2
       , h(_,swe,dog,_,_)                    %  3
       , h(_,dan,_,tea,_)                    %  4
       , h(green,_,_,coffe,_)                %  6
       , h(_,_,birds,_,pm)                   %  7
       , h(yellow,_,_,_,dh)                  %  8
       , h(_,_,_,beer,bm)                    % 13
       , h(_,ger,_,_,pri)                    % 14
       ])

  , infix([ h(green,_,_,_,_)
          , h(white,_,_,_,_) ], Hs)          %  5

  , maplist( flip(nextto,Hs),
      [ [h(_,_,_,_,bl   ), h(_,_,cats,_,_)]  % 11
      , [h(_,_,horse,_,_), h(_,_,_,_,dh  )]  % 12
      , [h(_,nvg,_,_,_  ), h(blue,_,_,_,_)]  % 15
      , [h(_,_,_,water,_), h(_,_,_,_,bl  )]  % 16
      ])
  .


flip(F,X,Y) :- call(F,Y,X).

infix(Xs,Ys) :- append(Xs,_,Zs) , append(_,Zs,Ys).
nextto(P,Xs) :- permutation(P,R), infix(R,Xs).


main :- findall(_, (zebra(_), nl), _), halt.
%------------------------------------------------------------ 481 zebra-puzzle-5
:- use_module(library(clpfd)).

zebra :-
    Nation = [Englishman, Spaniard, Japanese,     Ukrainian,   Norwegian ],
    Color  = [Red,        Green,    White,        Yellow,      Blue      ],
    Smoke  = [Oldgold,    Kools,    Chesterfield, Luckystrike, Parliament],
    Pet    = [Dog,        Snails,   Fox,          Horse,       Zebra     ],
    Drink  = [Tea,        Coffee,   Milk,         Orangejuice, Water     ],

    % house numbers 1 to 5
    Nation ins 1..5,
    Color  ins 1..5,
    Smoke  ins 1..5,
    Pet    ins 1..5,
    Drink  ins 1..5,

    % the values in each list are exclusive
    all_different(Nation),
    all_different(Color),
    all_different(Smoke),
    all_different(Pet),
    all_different(Drink),

    % actual constraints
    Englishman    #= Red,
    Spaniard      #= Dog,
    Green         #= Coffee,
    Ukrainian     #= Tea,
    Green         #= White + 1,
    Oldgold       #= Snails,
    Yellow        #= Kools,
    Milk          #= 3,
    Norwegian     #= 1,
    (Chesterfield #= Fox   - 1 #\/ Chesterfield #= Fox   + 1),
    (Kools        #= Horse - 1 #\/ Kools        #= Horse + 1),
    Luckystrike   #= Orangejuice,
    Japanese      #= Parliament,
    (Norwegian    #= Blue  - 1 #\/ Norwegian    #= Blue  + 1),

    % get solution
    flatten([Nation, Color, Smoke, Pet, Drink], List), label(List),

    % print the answers
    sort([Englishman-englishman, Spaniard-spaniard, Japanese-japanese,         Ukrainian-ukrainian,     Norwegian-norwegian],   NationNames),
    sort([Red-red,               Green-green,       White-white,               Yellow-yellow,           Blue-blue],             ColorNames),
    sort([Oldgold-oldgold,       Kools-kools,       Chesterfield-chesterfield, Luckystrike-luckystrike, Parliament-parliament], SmokeNames),
    sort([Dog-dog,               Snails-snails,     Fox-fox,                   Horse-horse,             Zebra-zebra],           PetNames),
    sort([Tea-tea,               Coffee-coffee,     Milk-milk,                 Orangejuice-orangejuice, Water-water],           DrinkNames),
    Fmt = '~w~16|~w~32|~w~48|~w~64|~w~n',
    format(Fmt, NationNames),
    format(Fmt, ColorNames),
    format(Fmt, SmokeNames),
    format(Fmt, PetNames),
    format(Fmt, DrinkNames).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines zebra/0 and never calls it; the driver calls it once at load.
:- initialization(zebra).
%---------------------------------------------------- 482 zero-to-the-zero-power
:- X is 0 ^ 0.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution evaluates X is 0 ^ 0 in a directive and never prints X; the driver evaluates the same expression and prints it.
:- initialization((X is 0 ^ 0, format("0 ^ 0 = ~w~n", [X]))).
%------------------------------------------------------------ 483 zig-zag-matrix
zig_zag(N) :-
   zig_zag(N, N).

% compute zig_zag for a matrix of Lig lines of Col columns
zig_zag(Lig, Col) :-
   length(M, Lig),
   maplist(init(Col), M),
   fill(M, 0, 0, 0, Lig, Col, up),
   % display the matrix
   maplist(print_line, M).


fill(M, Cur, L, C, NL, NC, _) :-
   L is NL - 1,
   C is NC - 1,
   nth0(L, M, Line),
   nth0(C, Line, Cur).

fill(M, Cur, L, C, NL, NC, Sens) :-
   nth0(L, M, Line),
   nth0(C, Line, Cur),
   Cur1 is Cur + 1,
   compute_next(NL, NC, L, C, Sens, L1, C1, Sens1),
   fill(M, Cur1, L1, C1, NL, NC, Sens1).


init(N, L) :-
   length(L, N).

% compute_next
% arg1 : Number of lnes of the matrix
% arg2 : number of columns of the matrix
% arg3 : current line
% arg4 : current column
% arg5 : current direction of movement
% arg6 : nect line
% arg7 : next column
% arg8 : next direction of movement
compute_next(_NL, NC, 0, Col, up, 0, Col1, down) :-
   Col < NC - 1,
   Col1 is Col+1.

compute_next(_NL, NC, 0, Col, up, 1, Col, down) :-
   Col is NC - 1.

compute_next(NL, _NC, Lig, 0, down, Lig1, 0, up) :-
   Lig < NL - 1,
   Lig1 is Lig+1.

compute_next(NL, _NC, Lig, 0, down, Lig, 1, up) :-
   Lig is NL - 1.

compute_next(NL, _NC, Lig, Col, down, Lig1, Col1, down) :-
   Lig < NL - 1,
   Lig1 is Lig + 1,
   Col1 is Col-1.

compute_next(NL, _NC, Lig, Col, down, Lig, Col1, up) :-
   Lig is NL - 1,
   Col1 is Col+1.

compute_next(_NL, NC, Lig, Col, up, Lig1, Col1, up) :-
   Col < NC - 1,
   Lig1 is Lig - 1,
   Col1 is Col+1.

compute_next(_NL, NC, Lig, Col, up, Lig1, Col, down) :-
   Col is NC - 1,
   Lig1 is Lig + 1.


print_line(L) :-
   maplist(print_val, L),
   nl.

print_val(V) :-
   writef('%3r ', [V]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines zig_zag/1 and never calls it; the driver prints the task's 5x5 zig-zag matrix.
:- initialization(zig_zag(5)).
