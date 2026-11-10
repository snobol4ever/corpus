%------------------------------------------------------------------- 1 abolish#0
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( abolish(abolish/1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------- 2 abolish#1
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( abolish(foo/a) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------- 3 abolish#2
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( abolish(foo/(-1)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------- 4 abolish#3
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (current_prolog_flag(max_arity,A), X is A + 1, abolish(foo/X)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------- 5 abolish#4
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( abolish(5/2) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------------- 6 and#5
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ','(X=1, var(X)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------------- 7 and#6
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ','(var(X), X=1) -> ( ((X == 1)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------------- 8 and#7
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ','(fail, call(3)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------------- 9 and#8
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ','(nofoo(X), call(X)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------------- 10 and#9
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ','(X = true, call(X)) -> ( ((X == true)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------------- 11 arg#10
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( arg(1,foo(a,b),a) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------------- 12 arg#11
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( arg(1,foo(a,b),X) -> ( ((X == a)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------------- 13 arg#12
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( arg(1,foo(X,b),a) -> ( ((X == a)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------------- 14 arg#13
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( arg(2,foo(a, f(X,b), c), f(a, Y)) -> ( ((X == a,Y == b)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------------- 15 arg#14
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( arg(1,foo(X,b),Y) -> ( ((Y == X)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------------- 16 arg#15
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( arg(1,foo(a,b),b) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------------- 17 arg#16
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( arg(0,foo(a,b),foo) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------------- 18 arg#17
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( arg(3,foo(3,4),N) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------------- 19 arg#18
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( arg(X,foo(a,b),a) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------------- 20 arg#19
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( arg(1,X,a) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------------- 21 arg#20
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( arg(0,atom,A) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------------- 22 arg#21
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( arg(0,3,A) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------------- 23 arg#22
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( arg(-3,foo(a,b),A) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------------- 24 arg#23
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( arg(a,foo(a,b),X) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 25 arith_diff#24
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=\\='(0,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 26 arith_diff#25
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=\\='(1.0,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 27 arith_diff#26
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=\\='(3 * 2,7 - 1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 28 arith_diff#27
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=\\='(N,5) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 29 arith_diff#28
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=\\='(floot(1),5) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 30 arith_eq#29
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=:='(0,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 31 arith_eq#30
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=:='(1.0,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 32 arith_eq#31
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=:='(3 * 2,7 - 1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 33 arith_eq#32
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=:='(N,5) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 34 arith_eq#33
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=:='(floot(1),5) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 35 arith_eq#34
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( 0.333 =:= 1/3 -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 36 arith_gt#35
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '>'(0,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 37 arith_gt#36
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '>'(1.0,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 38 arith_gt#37
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '>'(3*2,7-1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 39 arith_gt#38
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '>'(X,5) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 40 arith_gt#39
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '>'(2 + floot(1),5) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 41 arith_gt=#40
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '>='(0,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 42 arith_gt=#41
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '>='(1.0,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 43 arith_gt=#42
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '>='(3*2,7-1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 44 arith_gt=#43
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '>='(X,5) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 45 arith_gt=#44
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '>='(2 + floot(1),5) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 46 arith_lt#45
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '<'(0,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 47 arith_lt#46
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '<'(1.0,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 48 arith_lt#47
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '<'(3*2,7-1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 49 arith_lt#48
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '<'(X,5) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 50 arith_lt#49
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '<'(2 + floot(1),5) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 51 arith_lt=#50
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=<'(0,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 52 arith_lt=#51
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=<'(1.0,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 53 arith_lt=#52
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=<'(3*2,7-1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 54 arith_lt=#53
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=<'(X,5) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 55 arith_lt=#54
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=<'(2 + floot(1),5) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 56 asserta#55
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (asserta((bar(X) :- X)), clause(bar(X), B)) -> ( ((B == call(X))) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 57 asserta#56
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( asserta(_) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 58 asserta#57
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( asserta(4) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 59 asserta#58
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( asserta((foo :- 4)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 60 asserta#59
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( asserta((atom(_) :- true)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 61 assertz#60
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( assertz((foo(X) :- X -> call(X))) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 62 assertz#61
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( assertz(_) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 63 assertz#62
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( assertz(4) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 64 assertz#63
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( assertz((foo :- 4)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 65 assertz#64
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( assertz((atom(_) :- true)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------------- 66 atom#65
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom(atom) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------------- 67 atom#66
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom('string') -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------------- 68 atom#67
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom(a(b)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------------- 69 atom#68
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom(Var) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------------- 70 atom#69
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom([]) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------------- 71 atom#70
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom(6) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------------- 72 atom#71
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom(3.3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 73 atom_chars#72
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_chars('',L) -> ( ((L == [])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 74 atom_chars#73
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_chars([],L) -> ( ((L == ['[',']'])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 75 atom_chars#74
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_chars('''',L) -> ( ((L == [''''])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 76 atom_chars#75
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_chars('iso',L) -> ( ((L == ['i','s','o'])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 77 atom_chars#76
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_chars(A,['p','r','o','l','o','g']) -> ( ((A == 'prolog')) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 78 atom_chars#77
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_chars('North',['N'|X]) -> ( ((X == ['o','r','t','h'])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 79 atom_chars#78
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_chars('iso',['i','s']) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 80 atom_chars#79
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_chars(A,L) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 81 atom_chars#80
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_chars(A,[a,E,c]) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 82 atom_chars#81
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_chars(A,[a,b|L]) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 83 atom_chars#82
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_chars(f(a),L) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 84 atom_chars#83
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_chars(A,iso) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 85 atom_chars#84
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_chars(A,[a,f(b)]) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 86 atom_chars#85
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (atom_chars(X,['1','2']), Y is X + 1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 87 atom_codes#86
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_codes('',L) -> ( ((L == [])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 88 atom_codes#87
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_codes([],L) -> ( ((L == [ 0'[, 0'] ])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 89 atom_codes#88
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_codes('''',L) -> ( ((L == [ 39 ])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 90 atom_codes#89
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_codes('iso',L) -> ( ((L == [ 0'i, 0's, 0'o ])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 91 atom_codes#90
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_codes(A,[ 0'p, 0'r, 0'o, 0'l, 0'o, 0'g]) -> ( ((A == 'prolog')) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 92 atom_codes#91
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_codes('North',[0'N | L]) -> ( ((L == [0'o, 0'r, 0't, 0'h])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 93 atom_codes#92
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_codes('iso',[0'i, 0's]) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 94 atom_codes#93
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_codes(A,L) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 95 atom_codes#94
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_codes(f(a),L) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 96 atom_codes#95
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_codes(A, 0'x) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 97 atom_codes#96
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_codes(A,[ 0'i, 0's, 1000]) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 98 atom_concat#97
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_concat('hello',' world',A) -> ( ((A == 'hello world')) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 99 atom_concat#98
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_concat(T,' world','small world') -> ( ((T == 'small')) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------ 100 atom_concat#99
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_concat('hello',' world','small world') -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 101 atom_concat#100
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_concat(T1,T2,'hello') -> ( ((T1 == '',T2 == 'hello') ; (T1 == 'h',T2 == 'ello') ; (T1 == 'he',T2 == 'llo') ; (T1 == 'hel',T2 == 'lo') ; (T1 == 'hell',T2 == 'o') ; (T1 == 'hello',T2 == '')) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 102 atom_concat#101
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_concat(A1,'iso',A3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 103 atom_concat#102
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_concat('iso',A2,A3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 104 atom_concat#103
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_concat(f(a),'iso',A3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 105 atom_concat#104
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_concat('iso',f(a),A3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 106 atom_concat#105
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_concat(A1,A2,f(a)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 107 atom_length#106
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_length('enchanted evening', N) -> ( ((N == 17)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 108 atom_length#107
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_length('', N) -> ( ((N == 0)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 109 atom_length#108
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_length('scarlet', 5) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 110 atom_length#109
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_length(Atom, 4) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 111 atom_length#110
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_length(1.23, 4) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 112 atom_length#111
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atom_length(atom, '4') -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 113 atomic#112
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atomic(atom) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 114 atomic#113
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atomic(a(b)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 115 atomic#114
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atomic(Var) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 116 atomic#115
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atomic([]) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 117 atomic#116
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atomic(6) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 118 atomic#117
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( atomic(3.3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 119 bagof#118
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( bagof(X,(X=1;X=2),L) -> ( ((L == [1, 2])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 120 bagof#119
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( bagof(X,(X=1;X=2),X) -> ( ((X == [1, 2])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 121 bagof#120
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( bagof(X,(X=Y;X=Z),L) -> ( ((L == [Y, Z])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 122 bagof#121
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( bagof(X,fail,L) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 123 bagof#122
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( bagof(1,(Y=1;Y=2),L) -> ( ((L == [1],Y == 1) ; (L == [1],Y == 2)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 124 bagof#123
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( bagof(f(X,Y),(X=a;Y=b),L) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 125 bagof#124
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( bagof(X,Y^((X=1,Y=1);(X=2,Y=2)),S) -> ( ((S == [1, 2])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 126 bagof#125
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( bagof(X,Y^((X=1;Y=1);(X=2,Y=2)),S) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 127 bagof#126
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (set_prolog_flag(unknown, warning), bagof(X,(Y^(X=1;Y=1);X=3),S)) -> ( ((S == [3])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 128 bagof#127
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( bagof(X,(X=Y;X=Z;Y=1),L) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 129 bagof#128
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( bagof(X,Y^Z,L) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 130 bagof#129
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( bagof(X,1,L) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 131 bagof#130
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( findall(X,call(4),S) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 132 call#131
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( call(!) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 133 call#132
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( call(fail) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 134 call#133
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( call((fail, X)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 135 call#134
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( call((fail, call(1))) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 136 call#135
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( call((write(3), X)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 137 call#136
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( call((write(3), call(1))) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 138 call#137
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( call(X) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 139 call#138
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( call(1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 140 call#139
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( call((fail, 1)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 141 call#140
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( call((write(3), 1)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 142 call#141
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( call((1; true)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------- 143 catch-and-throw#142
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (catch(true, C, write('something')), throw(blabla)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error') ) ), nl.
%------------------------------------------------------- 144 catch-and-throw#143
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( catch(number_chars(A,L), error(instantiation_error, _), fail) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 145 char_code#144
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( char_code(a,Code) -> ( ((Code == 0'a)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 146 char_code#145
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( char_code(Char,99) -> ( ((Char == c)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 147 char_code#146
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( char_code(Char,0'c) -> ( ((Char == c)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 148 char_code#147
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( char_code(Char,163) -> ( ((Char == '\xa3\')) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 149 char_code#148
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( char_code(b,98) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 150 char_code#149
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( char_code(b,4) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 151 char_code#150
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( char_code('ab',Code) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 152 char_code#151
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( char_code(a,x) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 153 char_code#152
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( char_code(Char,Code) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 154 char_code#153
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( char_code(Char,-2) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 155 clause#154
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( clause(x,Body) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 156 clause#155
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( clause(_,B) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 157 clause#156
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( clause(4,B) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 158 clause#157
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( clause(f(_),5) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 159 clause#158
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( clause(atom(_),Body) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 160 compound#159
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( compound(33.3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 161 compound#160
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( compound(-33.3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 162 compound#161
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( compound(-a) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 163 compound#162
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( compound(_) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 164 compound#163
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( compound(a) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 165 compound#164
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( compound(a(b)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 166 compound#165
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( compound([a]) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 167 copy_term#166
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( copy_term(X,Y) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 168 copy_term#167
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( copy_term(X,3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 169 copy_term#168
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( copy_term(_,a) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 170 copy_term#169
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( copy_term(a+X,X+b) -> ( ((X == a)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 171 copy_term#170
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( copy_term(_,_) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 172 copy_term#171
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( copy_term(X+X+Y,A+B+B) -> ( ((B == A)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 173 copy_term#172
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( copy_term(a,a) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 174 copy_term#173
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( copy_term(a,b) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 175 copy_term#174
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( copy_term(f(a),f(X)) -> ( ((X == a)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 176 copy_term#175
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (copy_term(a+X,X+b),copy_term(a+X,X+b)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------- 177 current_input#176
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( exists(current_input/1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------- 178 current_output#177
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( exists(current_output/1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------- 179 current_predicate#178
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( current_predicate(current_predicate/1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------- 180 current_predicate#179
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( current_predicate(run_tests/1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------- 181 current_predicate#180
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( current_predicate(4) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------- 182 current_predicate#181
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( current_predicate(dog) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------- 183 current_predicate#182
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( current_predicate(0/dog) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------- 184 current_prolog_flag#183
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( current_prolog_flag(debug, off) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------- 185 current_prolog_flag#184
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (set_prolog_flag(unknown, warning), current_prolog_flag(unknown, warning)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------- 186 current_prolog_flag#185
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (set_prolog_flag(unknown, warning), current_prolog_flag(unknown, error)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------- 187 current_prolog_flag#186
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( current_prolog_flag(debug, V) -> ( ((V == off)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------- 188 current_prolog_flag#187
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( current_prolog_flag(5, V) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------- 189 current_prolog_flag#188
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( current_prolog_flag(warning, V) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------- 190 cut#189
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ! -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------- 191 cut#190
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (!,fail;true) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------- 192 cut#191
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (call(!),fail;true) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 193 fail#192
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( fail -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 194 fail#193
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( undef_pred -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 195 fail#194
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (set_prolog_flag(unknown, fail), undef_pred) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 196 fail#195
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (set_prolog_flag(unknown, warning), undef_pred) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 197 findall#199
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( findall(X,(X=1 ; X=2),S) -> ( ((S == [1,2])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 198 findall#200
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( findall(X+Y,(X=1),S) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 199 findall#201
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( findall(X,fail,L) -> ( ((L == [])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 200 findall#202
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( findall(X,(X=1 ; X=1),S) -> ( ((S == [1,1])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 201 findall#203
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( findall(X,(X=2 ; X=1),[1,2]) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 202 findall#204
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( findall(X,(X=1 ; X=2),[X,Y]) -> ( ((X == 1,Y == 2)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 203 findall#205
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( findall(X,Goal,S) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 204 findall#206
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( findall(X,4,S) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 205 findall#207
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( findall(X,call(1),S) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 206 float#208
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( float(3.3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 207 float#209
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( float(-3.3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 208 float#210
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( float(3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 209 float#211
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( float(atom) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 210 float#212
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( float(X) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 211 functor#213
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(foo(a,b,c),foo,3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 212 functor#214
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(foo(a,b,c),X,Y) -> ( ((X == foo,Y == 3)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 213 functor#215
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(X,foo,3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 214 functor#216
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(X,foo,0) -> ( ((X == foo)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 215 functor#217
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(mats(A,B),A,B) -> ( ((A == mats,B == 2)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 216 functor#218
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(foo(a),foo,2) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 217 functor#219
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(foo(a),fo,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 218 functor#220
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(1,X,Y) -> ( ((X == 1,Y == 0)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 219 functor#221
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(X,1.1,0) -> ( ((X == 1.1)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 220 functor#222
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor([_|_],'.',2) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 221 functor#223
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor([],[],0) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 222 functor#224
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(X, Y, 3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 223 functor#225
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(X, foo, N) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 224 functor#226
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(X, foo, a) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 225 functor#227
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(F, 1.5, 1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 226 functor#228
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(F,foo(a),1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 227 functor#229
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (current_prolog_flag(max_arity,A), X is A + 1, functor(T, foo, X)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 228 functor#230
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(T, foo, -1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 229 functor-bis#231
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(foo(a,b,c),foo,3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 230 functor-bis#232
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(foo(a,b,c),X,Y) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 231 functor-bis#233
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(X,foo,3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 232 functor-bis#234
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(X,foo,0) -> ( ((X == foo)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 233 functor-bis#235
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(mats(A,B),A,B) -> ( ((A == mats,B == 2)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 234 functor-bis#236
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(foo(a),foo,2) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 235 functor-bis#237
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(foo(a),fo,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 236 functor-bis#238
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(1,X,Y) -> ( ((X == 1,Y == 0)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 237 functor-bis#239
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(X,1.1,0) -> ( ((X == 1.1)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 238 functor-bis#240
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor([_|_],'.',2) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 239 functor-bis#241
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor([],[],0) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 240 functor-bis#242
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(X, Y, 3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 241 functor-bis#243
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(X, foo, N) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 242 functor-bis#244
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(X, foo, a) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 243 functor-bis#245
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(F, 1.5, 1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 244 functor-bis#246
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(F,foo(a),1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 245 functor-bis#247
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (current_prolog_flag(max_arity,A), X is A + 1, functor(T, foo, X)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------- 246 functor-bis#248
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( functor(T, foo, -1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 247 halt#251
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( halt(a) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 248 if-then#252
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '->'(true, true) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 249 if-then#253
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '->'(true, fail) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 250 if-then#254
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '->'(fail, true) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 251 if-then#255
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '->'(true, X=1) -> ( ((X == 1)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 252 if-then#256
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '->'(';'(X=1, X=2), true) -> ( ((X == 1)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 253 if-then#257
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '->'(true, ';'(X=1, X=2)) -> ( ((X == 1) ; (X == 2)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 254 if-then-else#258
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ';'('->'(true, true), fail) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 255 if-then-else#259
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ';'('->'(fail, true), true) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 256 if-then-else#260
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ';'('->'(true, fail), fail) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 257 if-then-else#261
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ';'('->'(fail, true), fail) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 258 if-then-else#262
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ';'('->'(true, X=1), X=2) -> ( ((X == 1)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 259 if-then-else#263
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ';'('->'(fail, X=1), X=2) -> ( ((X == 2)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 260 if-then-else#264
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ';'('->'(true, ';'(X=1, X=2)), true) -> ( ((X == 1) ; (X == 2)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 261 if-then-else#265
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ';'('->'(';'(X=1, X=2), true), true) -> ( ((X == 1)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 262 integer#266
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( integer(3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 263 integer#267
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( integer(-3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 264 integer#268
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( integer(3.3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 265 integer#269
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( integer(X) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 266 integer#270
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( integer(atom) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------------- 267 is#271
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( 'is'(Result,3 + 11.0) -> ( ((Result == 14.0)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------------- 268 is#272
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (X = 1 + 2, 'is'(Y, X * 3)) -> ( ((X == (1 + 2),Y == 9)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------------- 269 is#273
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( 'is'(foo,77) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------------- 270 is#274
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( 'is'(77, N) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------------- 271 is#275
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( 'is'(77, foo) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------------- 272 is#276
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( 'is'(X,float(3)) -> ( ((X == 3.0)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 273 nonvar#277
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( nonvar(33.3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 274 nonvar#278
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( nonvar(foo) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 275 nonvar#279
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( nonvar(Foo) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 276 nonvar#280
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (foo=Foo,nonvar(Foo)) -> ( ((Foo == foo)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 277 nonvar#281
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( nonvar(_) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 278 nonvar#282
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( nonvar(a(b)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 279 not_provable#283
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( \+(true) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 280 not_provable#284
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( \+(!) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 281 not_provable#285
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( \+((!,fail)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 282 not_provable#286
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ((X=1;X=2), \+((!,fail))) -> ( ((X == 1) ; (X == 2)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 283 not_provable#287
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( \+(4 = 5) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 284 not_provable#288
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( \+(3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 285 not_provable#289
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( \+(X) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 286 not_unify#290
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '\\='(1,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 287 not_unify#291
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '\\='(X,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 288 not_unify#292
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '\\='(X,Y) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 289 not_unify#293
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ('\\='(X,Y),'\\='(X,abc)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 290 not_unify#294
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '\\='(f(X,def),f(def,Y)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 291 not_unify#295
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '\\='(1,2) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 292 not_unify#296
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '\\='(1,1.0) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 293 not_unify#297
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '\\='(g(X),f(f(X))) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 294 not_unify#298
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '\\='(f(X,1),f(a(X))) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 295 not_unify#299
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '\\='(f(X,Y,X),f(a(X),a(Y),Y,2)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 296 number#300
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number(3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 297 number#301
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number(3.3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 298 number#302
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number(-3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 299 number#303
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number(a) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 300 number#304
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number(X) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 301 number_chars#305
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_chars(33,L) -> ( ((L == ['3','3'])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 302 number_chars#306
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_chars(33,['3','3']) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 303 number_chars#307
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_chars(33.0,L) -> ( ((L == ['3','3','.','0'])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 304 number_chars#308
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_chars(X,['3','.','3','E','+','0']) -> ( ((X == 3.3)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 305 number_chars#309
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_chars(3.3,['3','.','3','E','+','0']) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 306 number_chars#310
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_chars(A,['-','2','5']) -> ( ((A == (-25))) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 307 number_chars#311
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_chars(A,['\n',' ','3']) -> ( ((A == 3)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 308 number_chars#312
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_chars(A,['3',' ']) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 309 number_chars#313
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_chars(A,['0',x,f]) -> ( ((A == 15)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 310 number_chars#314
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_chars(A,['0','''','A']) -> ( ((A == 65)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 311 number_chars#315
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_chars(A,['4','.','2']) -> ( ((A == 4.2)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 312 number_chars#316
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_chars(A,['4','2','.','0','e','-','1']) -> ( ((A == 4.2)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 313 number_chars#317
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_chars(A,L) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 314 number_chars#318
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_chars(a,L) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 315 number_chars#319
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_chars(A,4) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 316 number_chars#320
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_chars(A,['4',2]) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 317 number_codes#321
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_codes(33,L) -> ( ((L == [0'3,0'3])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 318 number_codes#322
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_codes(33,[0'3,0'3]) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 319 number_codes#323
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_codes(33.0,L) -> ( ((L == [51,51,46,48])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 320 number_codes#324
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_codes(33.0,[0'3,0'.,0'3,0'E,0'+,0'0,0'1]) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 321 number_codes#325
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_codes(A,[0'-,0'2,0'5]) -> ( ((A == (-25))) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 322 number_codes#326
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_codes(A,[0' ,0'3]) -> ( ((A == 3)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 323 number_codes#327
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_codes(A,[0'0,0'x,0'f]) -> ( ((A == 15)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 324 number_codes#328
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_codes(A,[0'0,39,0'a]) -> ( ((A == 97)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 325 number_codes#329
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_codes(A,[0'4,0'.,0'2]) -> ( ((A == 4.2)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 326 number_codes#330
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_codes(A,[0'4,0'2,0'.,0'0,0'e,0'-,0'1]) -> ( ((A == 4.2)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 327 number_codes#331
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_codes(A,L) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 328 number_codes#332
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_codes(a,L) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 329 number_codes#333
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_codes(A,4) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------- 330 number_codes#334
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( number_codes(A,[ 0'1, 0'2, 1000]) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 331 once#335
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( once(!) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 332 once#336
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (once(!), (X=1; X=2)) -> ( ((X == 1) ; (X == 2)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 333 once#337
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( once(repeat) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 334 once#338
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( once(fail) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 335 once#339
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( once(3) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 336 once#340
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( once(X) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------------- 337 or#341
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ';'(true, fail) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------------- 338 or#342
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ';'((!, fail), true) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------------- 339 or#343
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ';'(!, call(3)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------------- 340 or#344
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ';'((X=1, !), X=2) -> ( ((X == 1)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------------- 341 or#345
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ';'(X=1, X=2) -> ( ((X == 1) ; (X == 2)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%---------------------------------------------------------------- 342 repeat#346
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (repeat,!,fail) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 343 retract#347
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( retract((4 :- X)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 344 retract#348
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( retract((atom(_) :- X == '[]')) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------- 345 set_prolog_flag#349
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (set_prolog_flag(unknown, fail), current_prolog_flag(unknown, V)) -> ( ((V == fail)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------- 346 set_prolog_flag#350
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( set_prolog_flag(X, warning) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------- 347 set_prolog_flag#351
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( set_prolog_flag(5, decimals) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------- 348 set_prolog_flag#352
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( set_prolog_flag(date, 'July 1999') -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------- 349 set_prolog_flag#353
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( set_prolog_flag(debug, no) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------- 350 set_prolog_flag#354
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( set_prolog_flag(max_arity, 40) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------- 351 set_prolog_flag#355
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( set_prolog_flag(double_quotes, atom) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------- 352 set_prolog_flag#356
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- set_prolog_flag(double_quotes, atom).
:- catch( ( X = "fred" -> ( ((X == fred)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------- 353 set_prolog_flag#357
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- set_prolog_flag(double_quotes, atom).
:- catch( ( set_prolog_flag(double_quotes, codes) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------- 354 set_prolog_flag#358
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- set_prolog_flag(double_quotes, codes).
:- catch( ( X = "fred" -> ( ((X == [102,114,101,100])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------- 355 set_prolog_flag#359
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- set_prolog_flag(double_quotes, codes).
:- catch( ( set_prolog_flag(double_quotes, chars) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------- 356 set_prolog_flag#360
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- set_prolog_flag(double_quotes, chars).
:- catch( ( X = "fred" -> ( ((X == [f,r,e,d])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 357 setof#361
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( setof(X,(X=1;X=2),L) -> ( ((L == [1, 2])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 358 setof#362
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( setof(X,(X=1;X=2),X) -> ( ((X == [1, 2])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 359 setof#363
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( setof(X,(X=2;X=1),L) -> ( ((L == [1, 2])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 360 setof#364
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( setof(X,(X=2;X=2),L) -> ( ((L == [2])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 361 setof#365
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( setof(X,fail,L) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 362 setof#366
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( setof(1,(Y=2;Y=1),L) -> ( ((L == [1],Y == 1) ; (L == [1],Y == 2)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 363 setof#367
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( setof(f(X,Y),(X=a;Y=b),L) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 364 setof#368
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( setof(X,Y^((X=1,Y=1);(X=2,Y=2)),S) -> ( ((S == [1, 2])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 365 setof#369
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( setof(X,Y^((X=1;Y=1);(X=2,Y=2)),S) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 366 setof#370
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (set_prolog_flag(unknown, warning), setof(X,(Y^(X=1;Y=1);X=3),S)) -> ( ((S == [3])) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 367 setof#371
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (set_prolog_flag(unknown, warning), setof(X,Y^(X=1;Y=1;X=3),S)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 368 setof#372
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( setof(X,(X=Y;X=Z;Y=1),L) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 369 setof#373
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( setof(X, X^(true; 4),L) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 370 setof#374
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( setof(X,1,L) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 371 sub_atom#375
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( sub_atom(abracadabra, 0, 5, _, S2) -> ( ((S2 == 'abrac')) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 372 sub_atom#376
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( sub_atom(abracadabra, _, 5, 0, S2) -> ( ((S2 == 'dabra')) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 373 sub_atom#377
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( sub_atom(abracadabra, 3, Length, 3, S2) -> ( ((Length == 5,S2 == 'acada')) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 374 sub_atom#378
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( sub_atom(abracadabra, Before, 2, After, ab) -> ( ((Before == 0,After == 9) ; (Before == 7,After == 2)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 375 sub_atom#379
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( sub_atom('Banana', 3, 2, _, S2) -> ( ((S2 == 'an')) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 376 sub_atom#380
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( sub_atom('charity', _, 3, _, S2) -> ( ((S2 == 'cha') ; (S2 == 'har') ; (S2 == 'ari') ; (S2 == 'rit') ; (S2 == 'ity')) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 377 sub_atom#381
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( sub_atom('ab', Before, Length, After, Sub_atom) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 378 sub_atom#382
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( sub_atom(Banana, 3, 2, _, S2) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 379 sub_atom#383
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( sub_atom(f(a), 2, 2, _, S2) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 380 sub_atom#384
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( sub_atom('Banana', 4, 2, _, 2) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 381 sub_atom#385
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( sub_atom('Banana', a, 2, _, S2) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 382 sub_atom#386
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( sub_atom('Banana', 4, n, _, S2) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 383 sub_atom#387
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( sub_atom('Banana', 4, _, m, S2) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------------- 384 t#388
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( (assertz(t_foo(1,2)),assertz(t_foo(2,3)),assertz(t_foo(3,4)),assertz((t_foo(_,_))),bagof([X,Y], t_foo(X,Y), S)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 385 term_diff#389
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '\\=='(1,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 386 term_diff#390
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '\\=='(X,X) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 387 term_diff#391
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '\\=='(1,2) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 388 term_diff#392
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '\\=='(X,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 389 term_diff#393
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '\\=='(X,Y) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 390 term_diff#394
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '\\=='(_,_) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 391 term_diff#395
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '\\=='(X,a(X)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------- 392 term_diff#396
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '\\=='(f(a),f(a)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 393 term_eq#397
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=='(1,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 394 term_eq#398
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=='(X,X) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 395 term_eq#399
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=='(1,2) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 396 term_eq#400
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=='(X,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 397 term_eq#401
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=='(X,Y) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 398 term_eq#402
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=='(_,_) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 399 term_eq#403
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=='(X,a(X)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 400 term_eq#404
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '=='(f(a),f(a)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 401 term_gt#405
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@>'(1.0,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 402 term_gt#406
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@>'(aardvark,zebra) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 403 term_gt#407
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@>'(short,short) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 404 term_gt#408
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@>'(short,shorter) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 405 term_gt#409
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@>'(foo(b),foo(a)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 406 term_gt#410
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@>'(X,X) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 407 term_gt#411
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@>'(foo(a,X),foo(b,Y)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 408 term_gt=#412
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@>='(1.0,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 409 term_gt=#413
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@>='(aardvark,zebra) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 410 term_gt=#414
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@>='(short,short) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 411 term_gt=#415
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@>='(short,shorter) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 412 term_gt=#416
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@>='(foo(b),foo(a)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 413 term_gt=#417
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@>='(X,X) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 414 term_gt=#418
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@>='(foo(a,X),foo(b,Y)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 415 term_lt#419
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@<'(1.0,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 416 term_lt#420
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@<'(aardvark,zebra) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 417 term_lt#421
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@<'(short,short) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 418 term_lt#422
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@<'(short,shorter) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 419 term_lt#423
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@<'(foo(b),foo(a)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 420 term_lt#424
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@<'(X,X) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%--------------------------------------------------------------- 421 term_lt#425
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@<'(foo(a,X),foo(b,Y)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 422 term_lt=#426
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@=<'(1.0,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 423 term_lt=#427
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@=<'(aardvark,zebra) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 424 term_lt=#428
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@=<'(short,short) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 425 term_lt=#429
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@=<'(short,shorter) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 426 term_lt=#430
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@=<'(foo(b),foo(a)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 427 term_lt=#431
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@=<'(X,X) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%-------------------------------------------------------------- 428 term_lt=#432
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '@=<'(foo(a,X),foo(b,Y)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%------------------------------------------------------------------ 429 true#433
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( true -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 430 unify#434
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '='(1,1) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 431 unify#435
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '='(X,1) -> ( ((X == 1)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 432 unify#436
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '='(X,Y) -> ( ((Y == X)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 433 unify#437
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( ('='(X,Y),'='(X,abc)) -> ( ((X == abc,Y == abc)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 434 unify#438
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '='(f(X,def),f(def,Y)) -> ( ((X == def,Y == def)) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 435 unify#439
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '='(1,2) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 436 unify#440
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '='(1,1.0) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 437 unify#441
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '='(g(X),f(f(X))) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 438 unify#442
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '='(f(X,1),f(a(X))) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 439 unify#443
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '='(f(X,Y,X),f(a(X),a(Y),Y,2)) -> ( (true) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
%----------------------------------------------------------------- 440 unify#444
exists(P/I) :- make_list(I,List), G =.. [P|List], set_prolog_flag(unknown, fail), catch(call(G),_,true), reset_flags, !.
exists(P/I) :- reset_flags.
reset_flags :- set_prolog_flag(unknown, error).
make_list(N,L) :- N >= 0, make_list1(N,L).
make_list1(0,[]).
make_list1(N,[_|L1]) :- N1 is N-1, make_list(N1,L1).
run_tests(_).
:- catch( ( '='(f(A,B,C),f(g(B,B),g(C,C),g(D,D))) -> ( ((A == g(g(g(D,D),g(D,D)),g(g(D,D),g(D,D))),B == g(g(D,D),g(D,D)),C == g(D,D))) -> nl, write('@I success') ; nl, write('@I success wrong-bindings') ) ; nl, write('@I failure') ), INRIA_E, ( nl, write('@I error '), ( INRIA_E = error(INRIA_F, _), nonvar(INRIA_F) -> true ; INRIA_F = INRIA_E ), ( compound(INRIA_F) -> functor(INRIA_F, INRIA_N, _) ; INRIA_N = INRIA_F ), write(INRIA_N) ) ), nl.
