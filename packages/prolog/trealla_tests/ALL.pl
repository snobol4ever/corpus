%-------------------------------------------------------------- 1 tests_test0000
:-initialization(main).

f(1). f(2). f(3).
g(a). g(b).

main :- f(X), write(X), nl, g(Y), write('\t'), write(Y), nl, fail.
main.
%-------------------------------------------------------------- 2 tests_test0001
:-initialization(main).

f(1). f(2). f(3).

main :- f(X), write(X), nl, fail.
main.
%-------------------------------------------------------------- 3 tests_test0002
:-initialization(main).

h([H|T],L) :- L=[H|T].

main :- h([a,b,c,d],L), write(L), nl, L=[a,b,c,d].
%-------------------------------------------------------------- 4 tests_test0003
:-initialization(main).

xrevzap([], L, L) :- !.
xrevzap([H|L], L2, L3) :- xrevzap(L, [H|L2], L3).
xreverse(L1, L2) :- xrevzap(L1, [], L2).

main :- xreverse([a,b,c,d],L), write(L), nl, L=[d,c,b,a].
%-------------------------------------------------------------- 5 tests_test0004
:-initialization(main).

xmember(X, X) :- var(X), !, fail.
xmember(X, [X|_]).
xmember(X, [_|T]) :- xmember(X,T).

main :- xmember(X,[a,[b,b],c]), write(X), nl, fail.
main.
%-------------------------------------------------------------- 6 tests_test0005
:-initialization(main).

f5(F) :- F=f(X,Y,Z), X=1, Y=2, Z=3.

main :- f5(X), write(X), nl.
%-------------------------------------------------------------- 7 tests_test0007
:-initialization(main).

g(a). g(b).

main :-
	ignore((g(X),X==z)),
	ignore((g(X),X==a)),
	write(X), nl.
%-------------------------------------------------------------- 8 tests_test0008
:-initialization(main).

g(a). g(b).

main :- call(g(X)), write(X), nl, fail.
main.
%-------------------------------------------------------------- 9 tests_test0009
:-initialization(main).

g(a). g(b).

main :- once(g(X)), write(X), nl, fail.
main.
%------------------------------------------------------------- 10 tests_test0010
:-initialization(main).

upto(N,X) :- N > 0, N1 is N - 1, upto(N1,X).
upto(N,X) :- true, N > 0, X = N.

main :- \+ ( upto(3,I), upto(I,J), \+ (write([I,J]), nl) ).
%------------------------------------------------------------- 11 tests_test0011
:-initialization(main).

upto(_,N,X) :- N > 0, N2 is N - 1, upto(c,N2,X).
upto(_,N,X) :- N > 0, X = N.

main :- upto(a,3,I), upto(b,I,J), write([I,J]), nl, fail.
main.
%------------------------------------------------------------- 12 tests_test0012
:-initialization(main).

sum(I,I,T,T) :- !.
sum(I,X,Tmp,T) :- NewTmp is Tmp+I, NewI is I+1, sum(NewI,X,NewTmp,T).

main :- sum(1,10000,0,T), write(T), nl.
%------------------------------------------------------------- 13 tests_test0015
:-initialization(main).

main :- \+ (\+ true), write('PASSED!'), nl.
%------------------------------------------------------------- 14 tests_test0016
:-initialization(main).

main :- call((true;false)), call((false;true)), write(ok), nl.
%------------------------------------------------------------- 15 tests_test0017
:-initialization(main).

integers(Low,High,[Low|Rest]) :-
	Low =< High,
	!,
	M is Low+1,
	integers(M,High,Rest).
integers(_,_,[]).

main :- integers(1, 100000, L), L=[H|_], write(H), nl.
%------------------------------------------------------------- 16 tests_test0018
:-initialization(main).

main :- atom_concat(X, Y, abcdef),
			write(X), write(' <==> '), write(Y), nl, fail.
main.
%------------------------------------------------------------- 17 tests_test0019
:-initialization(main).

populate :-
	assertz(x24(0)),
	assertz(x24(1)),
	assertz(x24(2)),
	assertz(x24(3)).

main :- populate, clause(x24(X),B), write(' > '), write(X), write(' <==> '), write(B), nl, fail.
main :- nl.
%------------------------------------------------------------- 18 tests_test0020
:-initialization(main).

populate :-
	assertz(x24(0)),
	assertz(x24(1)),
	assertz(x24(2)),
	assertz(x24(3)).

main :- populate, retract(x24(X)), write(X), nl.
%------------------------------------------------------------- 19 tests_test0021
:-initialization(main).

populate :-
	assertz(x24(0)),
	assertz(x24(1)),
	assertz(x24(2)),
	assertz(x24(3)).


main :- populate, retract(x24(X)), write(X), nl, fail.
main.
%------------------------------------------------------------- 20 tests_test0022
:-initialization(main).

:-set_prolog_flag(double_quotes,atom).
main :- S="a b c", write(S), nl.
%------------------------------------------------------------- 21 tests_test0023
:-initialization(main).
:-set_prolog_flag(double_quotes,chars).

main :- S="a b c", write(S), nl.
%------------------------------------------------------------- 22 tests_test0024
:-initialization(main).
:-set_prolog_flag(double_quotes,codes).

main :- S="a b c", write(S), nl.
%------------------------------------------------------------- 23 tests_test0025
:-initialization(main).

main :- findall(integer(I),between(1,10,I),L), write(L), nl.
%------------------------------------------------------------- 24 tests_test0026
:-initialization(main).

foo(a,b,c).
foo(a,b,d).
foo(b,c,e).
foo(b,c,f).
foo(c,c,g).
foo(d,e,g).

main :- findall(C, foo(_,_,C), Cs), write(Cs), nl, fail.
main.
%------------------------------------------------------------- 25 tests_test0027
:-initialization(main).

foo(a,b,c).
foo(a,b,d).
foo(b,c,e).
foo(b,c,f).
foo(c,c,g).
foo(d,e,g).

main :- bagof(C, foo(_,_,C), Cs), write(Cs), nl, fail.
main.
%------------------------------------------------------------- 26 tests_test0028
:-initialization(main).

foo(a,b,c).
foo(a,b,d).
foo(b,c,e).
foo(b,c,f).
foo(c,c,g).
foo(d,e,g).

main :- findall(Cs, bagof(C, foo(_,_,C), Cs), L), write(L), nl.
%------------------------------------------------------------- 27 tests_test0029
:-initialization(main).

foo(a,b,c).
foo(a,b,d).
foo(b,c,e).
foo(b,c,f).
foo(c,c,g).
foo(d,e,g).

main :- between(1,10,_),bagof(C, foo(_,_,C), Cs), write(Cs), nl, fail.
main.
%------------------------------------------------------------- 28 tests_test0030
:-initialization(main).

foo(a,b,c).
foo(a,b,d).
foo(b,c,e).
foo(b,c,f).
foo(c,c,g).
foo(d,e,g).

main :- bagof(C, A^B^foo(A,B,C), Cs), write(Cs), nl, fail.
main.
%------------------------------------------------------------- 29 tests_test0031
:-initialization(main).

foo(a,b,c).
foo(a,b,d).
foo(b,c,e).
foo(b,c,f).
foo(c,c,g).
foo(d,e,g).

main :- setof(C, A^B^foo(A,B,C), Cs), write(Cs), nl, fail.
main.
%------------------------------------------------------------- 30 tests_test0032
:- use_module(library(iso_ext)).
:- initialization(main).

equal(3,1+2).
equal(24,6*4).
equal(1,5 mod 2).

main :- forall(equal(Left,Right), Left =:= Right), write(ok), nl.
%------------------------------------------------------------- 31 tests_test0033
:-initialization(main).

main :-
    Item = {
       'author': 'Philip K Dick',
       'works': [
          {'title': 'The Man in the High Castle'},
          {'title': 'Do Androids Dream of Electric Sheep'}
       ]
    },
    Item = {Author,_Works},
    Author = ('author':V),
    V == 'Philip K Dick',
    write(V), nl.
%------------------------------------------------------------- 32 tests_test0034
:-initialization(main).

main :-
    number_chars(123, ['1','2','3']),
    number_codes(123, [49,50,51]),
    atom_chars('123', ['1','2','3']),
    atom_codes('123', [49,50,51]),
    atom_codes('一二三', [19968,20108,19977]),
    write('PASSED!'), nl.
%------------------------------------------------------------- 33 tests_test0035
:-initialization(main).

main :-
    write((1/2/3)), nl,
    write((a,b,c)), nl,
    write({a,b,c}), nl,
    write(((1/2)/3)), nl,
    write((a,(b,c))), nl,
    write({a,(b,c)}), nl.
%------------------------------------------------------------- 34 tests_test0036
:-initialization(main).

main :-
    write([a]), nl,
    write('.'(a,[])), nl,
    write(.(a,[])), nl.
%------------------------------------------------------------- 35 tests_test0037
:- initialization(main).

last_element([], Out) :- Out = nil.
last_element([Arg|Rest], Out) :- write(Arg), last_element(Rest, Out).

foo(A, B, Out) :- last_element([A|B], Out).
bar(A, B) :- foo(A, [B], _Out).

main :- bar(a, b), nl.
%------------------------------------------------------------- 36 tests_test0039
:- initialization(main).

main :- write('foo\
bar'), nl.
%------------------------------------------------------------- 37 tests_test0040
:-initialization(main).

:-op(500, xfy, '').

main :-
	write_canonical(1 '' 2), nl, write(1 '' 2), nl,
	write_canonical((-)-(-)), nl, write((-)-(-)), nl,
	write_canonical((1+2)*3), nl, write((1+2)*3), nl,
	write_canonical(1*(2+3)), nl, write(1*(2+3)), nl,
	writeq([.,.(.,.,.)]), nl.
%------------------------------------------------------------- 38 tests_test0041
:- initialization(main).

list(0,L) :- L = [].
list(N,L) :- N1 is N - 1, list(N1,L1), L = [c|L1].

main :- list(5000,L), atom_chars(A,L), write(A), nl.
