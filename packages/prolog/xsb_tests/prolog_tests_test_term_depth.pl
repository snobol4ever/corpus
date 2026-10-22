:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import for/3 from basics.

test:- 
    makelist(100,L),term_depth(L,LN),writeln(list_depth(LN)),
    makef(100,F),term_depth(F,FN),writeln(functor_depth(FN)).

makelist(0,[]):-!.
makelist(N,[N|T]):- 
    N1 is N - 1,
    makelist(N1,T).

makef(0,a):-!.
makef(N,f(T)):- 
    N1 is N - 1,
    makef(N1,T).

test_td(Nin,Nout):-
    makelist(Nin,L),
    term_depth(L,Nout).

time(Len,Its,Time):-
    cputime(B),
    makelist(Len,L),
    cputime(A),T is A - B,writeln(maketime(T)),
    cputime(Before),
    time_1(Its,L),
    cputime(After),
    Time is After - Before.

timef(Len,Its,Time):-
    makef(Len,L),
    cputime(Before),
    time_1(Its,L),
    cputime(After),
    Time is After - Before.


time_1(Its,L):- 
    for(_I,1,Its),
    term_depth(L,_),
    fail.
time_1(_Its,_L).

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh test_term_depth "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
