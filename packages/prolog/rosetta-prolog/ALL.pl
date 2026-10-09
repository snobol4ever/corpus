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
%----------------------------------------------------------------- 2 100-doors-3
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
%------------------------------------------------------- 3 aks-test-for-primes-7
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
%-------------------------------------------- 4 aliquot-sequence-classifications
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
%----------------------------------------------------------------- 5 anti-primes
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
%---------------------------------- 6 append-numbers-at-same-position-in-strings
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
%---------------------------------------------------------- 7 attractive-numbers
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
%--------------------------------------------------- 8 averages-root-mean-square
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
%---------------------------------------------------------------- 9 bell-numbers
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
%--------------------------------------------------------------- 10 benfords-law
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
%-------------------------------------------------------------- 11 binary-digits
binary(X) :- format('~2r~n', [X]).
main :- maplist(binary, [5,50,9000]), halt.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%----------------------------------------------- 12 calculating-the-value-of-e-1
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
%------------------------------------------------------------- 13 chinese-zodiac
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
%------------------------------------------------------------ 14 church-numerals
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
%---------------------------------------------------------- 15 comma-quibbling-1
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
%--------------------------------------------------- 16 command-line-arguments-1
:-
    current_prolog_flag(os_argv, Args),
    write(Args).
%--------------------------------------------------- 17 command-line-arguments-2
:-
    current_prolog_flag(argv, Args),
    write(Args).
%-------------------------------------------------- 18 compare-a-list-of-strings
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
%--------------------------------------------------- 19 compile-time-calculation
% Taken from RosettaCode Factorial page for Prolog
fact(X, 1) :- X<2.
fact(X, F) :- Y is X-1, fact(Y,Z), F is Z*X.
	
goal_expansion((X = factorial_of(N)), (X = F)) :- fact(N,F).
				
test :-	
	F = factorial_of(10),
	format('!10 = ~p~n', F).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines test/0 and never calls it; the driver calls it once at load.
:- initialization(test).
%--------------------------------------------------- 20 conditional-structures-1
go :- write('Hello, World!'), nl.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines go/0 and never calls it; the driver calls it once at load.
:- initialization(go).
%--------------------------------------------------- 21 conditional-structures-4
fact(X) :-
    (   X = bar ->  write('You got me!'), nl
    ;               write(X), write(' is not right!'), nl, fail ).

go :-
    (   fact(booger)
    ;   fact(bar) ).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines go/0 and never calls it; the driver calls it once at load.
:- initialization(go).
%---------------------------------- 22 create-a-two-dimensional-array-at-runtime
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
%------------------------------------------------------------- 23 damm-algorithm
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
%--------------------------------------------------------- 24 department-numbers
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
%-------------------------- 25 determine-if-a-string-has-all-the-same-characters
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
%---------------------------- 26 determine-if-a-string-has-all-unique-characters
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
%---------------------------------------------------- 27 determine-sentence-type
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
%--------------------------------------------------------------- 28 digital-root
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
%-------------------------------------- 29 dinesmans-multiple-dwelling-problem-2
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
%------------------------------------------------------------ 30 discordian-date
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
%---------------------------------------------------------- 31 egyptian-division
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
%----------------------------------------------------------- 32 esthetic-numbers
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
%------------------------------------------------- 33 ethiopian-multiplication-3
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
%------------------------------------------------- 34 ethiopian-multiplication-4
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
%----------------------------------------------------- 35 fast-fourier-transform
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
%------------------------------- 36 find-the-intersection-of-a-line-with-a-plane
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
%----------------------------------------------------------------- 37 fizzbuzz-3
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
%------------------------------------------------------------- 38 four-bit-adder
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
%------------------------------------------------------------------- 39 fractran
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
%------------------------------------------------------ 40 function-definition-4
:- use_module(library(function_expansion)).

user:function_expansion(multiply(A, B), P, P is A * B).  % "function" definition

go :-
  format("The product is ~d.~n", [multiply(5, 2)]).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines go/0 and never calls it; the driver calls it once at load.
:- initialization(go).
%------------------------------------------------------ 41 function-definition-5
go :-
  A is 5*2,
  format('The product is ~d.~n', [A]).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines go/0 and never calls it; the driver calls it once at load.
:- initialization(go).
%-------------------------------------------------------------- 42 fusc-sequence
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
%--------------------------------------------------- 43 golden-ratio-convergence
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
%---------------------------------------------------------------- 44 gray-code-2
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
%------------------------------------ 45 greedy-algorithm-for-egyptian-fractions
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
%------------------------------------------------------------ 46 harmonic-series
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
%----------------------------------------------- 47 hello-world-newline-omission
:- write('Goodbye, World!').
%----------------------------------------------------------- 48 hello-world-text
:- write('Hello world!'), nl.
%----------------------------------------------------- 49 higher-order-functions
first(Predicate) :- call(Predicate).
second(Argument) :- write(Argument).

:-first(second('Hello World!')).
%------------------------------------------------------------ 50 identity-matrix
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
%--------------------------------------------- 51 isqrt-integer-square-root-of-x
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
%-------------------------------------------------------------- 52 jaccard-index
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
%------------------------------------------------------------- 53 knights-tour-2
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
%---------------------------------------------------------------- 54 lah-numbers
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
%------------------------------------------------------- 55 largest-prime-factor
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
%--------------------------------------------------- 56 law-of-cosines---triples
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
%------------------------------------------------------------ 57 left-factorials
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
%------------------------------------------------------------------ 58 long-year
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
%------------------------------------------------------ 59 longest-common-prefix
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
%------------------------------------------------------------- 60 loops-continue
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
%------------------------------------------ 61 loops-for-with-a-specified-step-1
for(Lo,Hi,Step,Lo)  :- Step>0, Lo=<Hi.
for(Lo,Hi,Step,Val) :- Step>0, plus(Lo,Step,V), V=<Hi, !, for(V,Hi,Step,Val).

example :-
  for(0,10,2,Val), write(Val), write(' '), fail.
example.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines example/0 and never calls it; the driver calls it once at load.
:- initialization(example).
%------------------------------------------------------------------ 62 loops-for
example :-
    between(1,5,I), nl, between(1,I,_J),
    write('*'), fail.
example.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines example/0 and never calls it; the driver calls it once at load.
:- initialization(example).
%-------------------------------------------------------------- 63 loops-foreach
?- foreach(member(X, [red,green,blue,black,white]), writeln(X)).
red
green
blue
black
white
true.
%------------------------------------------------------ 64 loops-n-plus-one-half
example :-
  between(1,10,Val), write(Val), Val<10, write(', '), fail.
example.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines example/0 and never calls it; the driver calls it once at load.
:- initialization(example).
%----------------------------------------------------------- 65 lunar-arithmetic
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
%------------------------------------------------------------ 66 lychrel-numbers
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
%------------------------------------------------------------- 67 magic-constant
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
%------------------------------------------------------------------ 68 map-range
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
%--------------------------------------------- 69 merge-and-aggregate-datasets-1
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
%----------------------------------------------------------- 70 mertens-function
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
%---------------------------------------------------------- 71 metaprogramming-1
:- initialization(main).
main :- clause(less_than(1,2),B),writeln(B).
less_than(A,B) :- A<B.

%--------------------------- 72 minimum-multiple-of-m-where-digital-sum-equals-m
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
%----------------------------------------------------- 73 modular-exponentiation
main:-
    A = 2988348162058574136915891421498819466320163312926952423791023078876139,
    B = 2351399303373464486466122544523690094744975233415544072992656881240319,
    M is 10 ** 40,
    P is powm(A, B, M),
    writeln(P).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%--------------------------------------------------------- 74 n-queens-problem-4
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
%--------------------------------------------------------- 75 n-queens-problem-8
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
%----------------------------------------------------------- 76 named-parameters
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
%---------------------------------------------------------- 77 nimber-arithmetic
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
%------------------------------------------------------------------------ 78 nth
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
%---------------------------------- 79 numbers-with-prime-digits-whose-sum-is-13
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
%----------------------------- 80 numerical-integration-adaptive-simpsons-method
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
%------------------------------------------------- 81 palindromic-gapful-numbers
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
%---------------------------------------------------- 82 parametric-polymorphism
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
%--------------------------------------------- 83 parse-command-line-arguments-1
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
%----------------------------------------------------------- 84 phrase-reversals
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
%------------------------------------------------------------ 85 pierpont-primes
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
%----------------------------------------------------------- 86 population-count
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
%-------------------------------------------------------------------- 87 quine-3
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
%-------------------------------------------------------------------- 88 quine-4
main:-X='main:-X=~q,format(X,X).',format(X,X).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
%------------------------------------------------------------------ 89 rainbow-1
:- write('\e[91mR\e[33mA\e[92mI\e[32mN\e[36mB\e[94mO\e[35mW\e[0m'), nl.
%------------------------------------------------------------------ 90 rainbow-2
:- use_module(library(ansi_term)).

:-  ansi_format([fg(255,  10,  10)], 'R',   []),
    ansi_format([fg(240, 120,   0)], 'A',   []),
    ansi_format([fg(200, 220,   0)], 'I',   []),
    ansi_format([fg(  0, 225,  40)], 'N',   []),
    ansi_format([fg(  0, 200, 240)], 'B',   []),
    ansi_format([fg(  0,   0, 255)], 'O',   []),
    ansi_format([fg(240,   0, 240)], 'W~n', []).
%-------------------------------------------------------- 91 range-consolidation
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
%--------------------------------------------------------------------- 92 repeat
repeat(_, 0).
repeat(Callable, Times) :-
	succ(TimesLess1, Times),
	Callable,
	repeat(Callable, TimesLess1).

test :- write('Hello, World'), nl.	
test(Name) :- format('Hello, ~w~n', Name).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines test/0 and never calls it; the driver calls it once at load.
:- initialization(test).
%------------------------------------------------------------------- 93 sedols-1
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
%--------------------------------------------------- 94 sieve-of-eratosthenes-10
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
%------------------------------------------ 95 sort-a-list-of-object-identifiers
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
%--------------------------------------------- 96 sort-numbers-lexicographically
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
%------------------------------------------- 97 sorting-algorithms-bubble-sort-1
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
%------------------------------------------- 98 sorting-algorithms-bubble-sort-2
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
%------------------------------------------- 99 sorting-algorithms-cocktail-sort
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
%---------------------------------------- 100 stirling-numbers-of-the-first-kind
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
%--------------------------------------- 101 stirling-numbers-of-the-second-kind
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
%------------------------------------------------------ 102 string-concatenation
:- set_prolog_flag(double_quotes, chars).

println([]) :- write('\n').
println([Char | Chars]) :- write(Char), println(Chars).

:- S0 = "Hello, ",
   S1 = "world!",
   append(S0, S1, S),
   println(S).
%-------------------------------------------------- 103 sum-digits-of-an-integer
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
%------------------------------------------------------ 104 sum-of-first-n-cubes
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
%------------------------------------------------------- 105 sylvesters-sequence
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
%---------------------------------------------------------------- 106 tau-number
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
%---------------------------------------------------- 107 temperature-conversion
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
%------------------------------------------------------------- 108 the-name-game
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
%---------------------------------------------- 109 the-twelve-days-of-christmas
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
%---------------------------------------------------------------- 110 thue-morse
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
%----------------------------------------------- 111 trabb-pardo-knuth-algorithm
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
%----------------------------------------------------- 112 two-identical-strings
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
%----------------------------------------------------------- 113 twos-complement
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
%------------------------------------------------- 114 van-der-corput-sequence-1
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
%---------------------------------------------------------- 115 van-eck-sequence
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
%------------------------------------------------ 116 wilson-primes-of-order-n-1
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
%----------------------------------------------------------------- 117 word-wrap
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
%------------------------------------------------------------ 118 zebra-puzzle-4
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
