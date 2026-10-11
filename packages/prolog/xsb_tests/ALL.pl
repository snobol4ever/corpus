%----------------------------------------------- 1 basic_tests_ensure_loaded_aux
:- export p/1.
p(iii).
?- writeln(loaded).
%-------------------------------------------------------- 2 basic_tests_gpp_test
%% tests complex xpp option
:- compiler_options([xpp_on(gpp,gpp)]).

#define ppp uuu

:- export p/1, test/0.

p(X) :- q(X).
q(1).

test :- writeln(ppp).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh gpp_test "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
%---------------------------------------------------------- 3 basic_tests_interp

%:- export interp/1.

%:- import call_c/1 from standard.
%:- import clause0/2 from assert.
%:- import abolish_table_info/0 from machine.
:- import numbervars/3 from num_vars.

%interp(G) :- abolish_table_info,interp1(G).

/* trying to abstract too much can abstract out the input numbers */
%:- set_prolog_flag(max_table_subgoal_depth,20).
:- set_prolog_flag(max_table_subgoal_size,20).

:- table(interp1/1).
%:- table(ssh/2).

%:- (interp1(p(A,S,D)),fail ; interp1(p(Q,W,E)),p,fail).

test:-
	interp1(p(A,S,D)),T=p(A,S,D),numbervars(T,0,_),writeq(T),nl,fail 
	; nl,interp1(p(Q,W,E)),T=p(Q,W,E),numbervars(T,0,_),writeq(T),nl,fail.
test:- 
	nl,interp1(split(4,[6,3,7,2,1,9],L1,L2)),
	write(L1),nl,write(L2),nl,fail.
test.

interp1(G) :- interp0(G).

interp0(true) :- !.
interp0((A,B)) :- !, interp1(A), interp1(B).
interp0(ge(A,B)) :- A >= B.
interp0(lt(A,B)) :- A < B.
interp0(G) :- myclause(G,B), interp1(B).

%:- interp1(split(4,[6,3,7,2,1,9],L1,L2)).
%:- interp1(split(4,[6,3],L1,L2)).

myclause(split(_,[],[],[]),true).
myclause(split(X,[Y|R],[Y|L1],L2),(ge(X,Y), split(X,R,L1,L2))).
myclause(split(X,[Y|R],L1,[Y|L2]),(lt(X,Y), split(X,R,L1,L2))).

myclause(p(_A,B,B),true).
myclause(p(f(g(h(A,B))),g(f(h(B,C))),h(f(g(C,A)))),true).
myclause(p(f(g(f(A,B))),f(g(h(A,B))),f(g(h(A,B)))),true).
myclause(p(A,f(B,[g(1),A]),[f(B,[1,A,g(1)])]),true).
myclause(p(A,f(B,A),[f(B,[1,A])]),true).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh interp "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
%---------------------------------------------------------- 4 basic_tests_tcyl11

:- ['tcyl-24-24-2'].

:- table(a/2).

tw(X) :- a(X,Y), writeln(a(X,Y)), fail.
tw(_).	

ts(X) :- statistics, a(X,_Y), fail.
ts(_) :- statistics.

a(X,Y) :- cyl(X,Y).
a(X,Y) :- cyl(X,Z), a(Z,Y).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tcyl11 "['tcyl-24-24-2'],tw(1)."
:- consult(basic_tests_tcyl_24_24_2).
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tw(1)))).
%---------------------------------------------------------- 5 basic_tests_tcyl12

:- ['tcyl-24-24-2'].

:- table a/2.

tw(X) :- a(X,Y), writeln(a(X,Y)), fail.
tw(_).	

ts(X) :- statistics, a(X,_Y), fail.
ts(_) :- statistics.

a(X,Y) :- cyl(X,Y).
a(X,Y) :- a(X,Z), cyl(Z,Y).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tcyl12 "['tcyl-24-24-2'],tw(1)."
:- consult(basic_tests_tcyl_24_24_2).
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tw(1)))).
%---------------------------------------------------------- 6 basic_tests_testsg
:- [acyl,'tcyl-24-24-2'].

:- table sg/2.

test :- statistics, sg(1,_F), fail.
test :- statistics.

tw :- sg(1,F), write(sg(1,F)), nl, fail.
tw.

sg(X,Y) :- cyl(X,X1), sg(X1,Y1), acyl(Y1,Y).
sg(X,X).


% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh testsg "[acyl,'tcyl-24-24-2'],tw."
:- consult(basic_tests_acyl).
:- consult(basic_tests_tcyl_24_24_2).
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tw))).
%--------------------------------------------------------- 7 basic_tests_thstr13
:- table a/2, b/2, c/2.

tw :- tw1; tw2; tw3; true.

tw1 :- a(1,Y),write(a(Y)),nl,fail.

tw2 :- b(1,Y),write(b(Y)),nl,fail.

tw3 :- c(1,Y),write(c(Y)),nl,fail.

a(X,Y) :- p(X,Y).
a(X,Y) :- a(X,Z),a(Z,Y).

c(X,Y) :- p(X,Y).
c(X,Y) :- c(X,Z),p(Z,Y).

b(X,Y) :- p(X,Y).
b(X,Y) :- b(X,Z),p(Z,Y).

p(1,2).
p(1,7).
p(7,8).
p(8,7).
p(8,9).
p(8,10).
p(2,3).
p(3,4).
p(4,5).
p(4,1).
p(5,1).
p(1,1).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh thstr13 "tw."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tw))).
%--------------------------------------------------------- 8 basic_tests_thstr23
:- table a/2.
:- table b/2.

tw1 :- generate(b(1,_)), generate(a(1,_)).

generate(Call) :- call(Call), write(Call), nl, fail.
generate(_).

a(X,Y) :- b(X,Y).
a(X,Y) :- q(X,Y).
a(X,Y) :- a(X,Z), a(Z,Y).

b(X,Y) :- p(X,Y).
b(X,Y) :- b(X,Z), p(Z,Y).

p(1,2).
p(2,3).
p(3,4).
p(4,5).
p(4,1).
p(5,1).

q(1,7).
q(7,8).
q(8,7).
q(8,9).
q(8,10).
q(1,1).


% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh thstr23 "tw1."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tw1))).
%--------------------------------------------------------- 9 basic_tests_thstr43
:- table a/2.

tw :- ((a(a,D) ; a(b,D) ; a(c,D)),write(D),nl ; a(Q,W),write(a(Q,W)),nl), fail.
tw.

a(a,X) :- p(1,X).
a(a,X) :- p(2,X).
a(a,X) :- p(3,X).

a(b,X) :- p(2,X).
a(b,X) :- p(3,X).
a(c,X) :- p(3,X).

p(1,10).
p(1,11).
p(2,12).
p(2,13).
p(3,14).
p(3,15).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh thstr43 "tw."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tw))).
%--------------------------------------------------------- 10 basic_tests_tsing1
:- table a/2.

tw :- a(X,Y),write(X),write(' '),write(Y),write('   '),fail.
tw.	

a(X,Y) :- p(X,Y) ; a(X,Z),p(Z,Y).

p(1,2).
p(2,3).
p(3,4).
p(4,5).
p(5,1).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tsing1 "a(X,Y),write(X),write(' '),write(Y),nl,fail."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((a(X,Y),write(X),write(' '),write(Y),nl,fail))).
%-------------------------------------------------------- 11 basic_tests_tsstr13
:- import tfindall/3, abolish_table_pred/1 from tables.
:- import numbervars/3 from num_vars.

:- table b/2.
:- table q/2.

testcombo :- 	(a4w(A,B,C),fail ; 
		 abolish_table_pred(b/2),a5w(A,B,C),fail ;
		 abolish_table_pred(b/2),a6w(A,B,C),fail).

a4w(A,B,C) :- a4(A,B,C),T = a4(A,B,C),numbervars(T,0,_T1),writeq(T),nl.

a5w(A,B,C) :- a5(A,B,C),T = a5(A,B,C),numbervars(T,0,_T1),writeq(T),nl.

a6w(A,B,C) :- a6(A,B,C),T = a6(A,B,C),numbervars(T,0,_T1),writeq(T),nl.

a4(_A,_B,L) :- b(X,Y), tfindall(X-Y,b(X,Y),L1), sort(L1,L).

a5(X,Y,L) :- b(X,Y), tfindall(X-Y,b(X,Y),L1), sort(L1,L).

a6(X,Y,L) :- q(X,Y), tfindall(X-Y,q(X,Y),L1), sort(L1,L).

b(X,Y) :- p(X,Y).
b(_,_).

p(1,2).
p(1,3).
p(2,3).

q(1,2).
q(1,3).
q(2,3).


% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tsstr13 "testcombo."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((testcombo))).
%-------------------------------------------------------- 12 basic_tests_tsstr23
:- import set_pil_on/0,set_pil_off/0,
	tfindall/3,abolish_table_pred/1  from tables.
:- import numbervars/3 from num_vars.

:- table c/2.
:- table d/2.
:- table e/2.

member(X,[X|_]).
member(X,[_|List]):-member(X,List).

testcombo:-   c(W,E),T = c(W,E),numbervars(T,0,T1),writeq(T),nl,fail 
	   ;  d(W,E),T = d(W,E),numbervars(T,0,T1),writeq(T),nl,fail 
	   ; true.

tc1:-d(W,E),T = d(W,E),numbervars(T,0,_T1),writeq(T),nl,fail.
tc1.

tc2:-e(W,E),T = e(W,E),numbervars(T,0,_T1),writeq(T),nl,fail.

c(X,Y):-p(X,Y).
c(X,Y):-p(X,Z),
	tfindall(Yprime,c(Z,Yprime),Ylist),member(Y,Ylist).

d(X,Y):-p(X,Y).
d(X,Y):-p(X,Z),
	d(Z,_),tfindall(Yprime,d(Z,Yprime),Ylist),
	member(Y,Ylist).
d(X,Y):-p(X,Z),
	tfindall(Yprime,d(Z,Yprime),Ylist),member(Y,Ylist).

e(X,Y):-p(X,Y).
e(X,Y):-p(X,Z),
	e(Z,_),tfindall(Yprime,e(Z,Yprime),Ylist),
	member(Y,Ylist).
%e(X,Y):-p(X,Z),
%	tfindall(Yprime,e(Z,Yprime),Ylist),member(Y,Ylist).

p(1,2).
p(1,7).
p(2,3).
p(3,4).
p(4,5).
p(4,15).
p(7,8).
p(7,18).
p(8,9).
p(8,10).


% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tsstr23 "testcombo."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((testcombo))).
%-------------------------------------------------------- 13 basic_tests_tsstr33
:- import set_pil_on/0,set_pil_off/0,
	  tfindall/3,
	  abolish_table_pred/1  from tables.
:- import numbervars/3 from numbervars.

son:- set_pil_on.
sof:- set_pil_off.

:- table(p/1).
:- table(r/1).
:- table(q/1).

r(X) :- p(X).
p(X) :- q(X).

q(a).
q(b).
q(c).


testcombo:-
	a(_W,_E),fail
	 ; abolish_table_pred(r/1),abolish_table_pred(q/1),
	   abolish_table_pred(p/1),b(X,F),fail
	 ; abolish_table_pred(r/1),abolish_table_pred(q/1),
	   abolish_table_pred(p/1),c(X,F),fail
	 ; abolish_table_pred(r/1),abolish_table_pred(q/1),
	   abolish_table_pred(p/1),d(X,F),fail
	 ; abolish_table_pred(r/1),abolish_table_pred(q/1),
	   abolish_table_pred(p/1),e(X,F),fail
	 ; abolish_table_pred(r/1),abolish_table_pred(q/1),
	   abolish_table_pred(p/1),f(X,F),fail
	 ; true.

/*
testcombo:-
	a(W,E),fail
	 ; abolish_table_pred(r/1),
	   abolish_table_pred(p/1),b(X,F),fail
	 ; abolish_table_pred(r/1),
	   abolish_table_pred(p/1),c(X,F),fail
	 ; abolish_table_pred(r/1),
	   abolish_table_pred(p/1),d(X,F),fail
	 ; abolish_table_pred(r/1),
	   abolish_table_pred(p/1),e(X,F),fail
	 ; abolish_table_pred(r/1),
	   abolish_table_pred(p/1),f(X,F),fail
	 ; true.
*/
a(X,F):-p(X),tfindall(X,p(X),F),write(terma(X,F)),nl.
b(X,F):-p(X),tfindall(X,r(X),F),write(termb(X,F)),nl.
c(X,F):-r(X),tfindall(X,r(X),F),write(termc(X,F)),nl.
d(X,F):-r(X),tfindall(X,p(X),F),write(termd(X,F)),nl.
e(X,F):-r(X),tfindall(X,q(X),F),write(terme(X,F)),nl.
f(X,F):-q(X),tfindall(X,q(X),F),write(termf(X,F)),nl.

alta(X,F):-son,p(X),tfindall(X,p(X),F),write(term(X,F)),sof.
alta1(X,F):-son,p(X),tfindall(Y,p(Y),F),write(term(X,F)),fail ; sof.
altb(X,F):-son,p(X),tfindall(X,r(X),F),write(term(X,F)),fail ; sof.
altb1(X,F):-son,p(X),tfindall(Y,r(Y),F),write(term(X,F)),sof.
altb2(X,F):-son,p(X),mtfindall(Y,r(Y),F),write(term(X,F)),sof.
altc(X,F):-son,r(X),tfindall(X,r(X),F),write(term(X,F)),sof.

mtfindall(_,B,_) :- call(B),fail.
mtfindall(A,B,C) :- tfindall(A,B,C).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tsstr33 "testcombo."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((testcombo))).
%--------------------------------------------------------- 14 basic_tests_tstr11
:- import numbervars/3 from num_vars.

:- table a/2.

/* ?- a(Q,W). */

tw:- a(Q,W),T = a(Q,W),numbervars(T,0,_T1),writeq(T),nl.

a(X,Y):-p(X,Y).
a(X,Y):-a(X,Z),p(Z,Y).

%:-a(Q,W),fail.

p(f(a,b),f(c,d)).
p(f(c,d),f(e,f)).

p(f(1,2),f(3,4)).
p(f(3,D),f(5,D)).

p(f(10,20),f(30,40)).
p(f(30,D),f(E,D,E)).

p([a,b],[c,d]).
p([c,d],[e,f]).
p([c,d],[g,g]).

p([X],[X]).
p([1,2],[3,4]).
p([3,X],[5,X]).

p(3,1).
p(3,4).

p(10,20).
p(10,25).
p(20,30).
p(25,40).
p(25,40).
p(40,20).
p(40,50).
p(50,50).
p(50,60).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tstr11 "tw,fail."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tw,fail))).
%--------------------------------------------------------- 15 basic_tests_tstr12
:- import numbervars/3 from num_vars.

:- table a/2.

/* ?- a(Q,W), a(W,W), a(f(F),f(F)) , a([F],[F]) */

a(X,Y) :- p(X,Y).
a(X,Y) :- a(X,Z),p(Z,Y).

testcombo :- 
	(tw(_Q,_W),fail ; tw(A,A),fail ; tw(f(F),f(F)),fail ; tw([F],[F]),fail).

tw(Q,W) :- a(Q,W),T = a(Q,W),numbervars(T,0,_T1),writeq(T),nl.

p(f(1),f(2)).
p(f(2),f(3)).
p(f(3),f(1)).

p([1],[2]).
p([2],[3]).
p([3],[1]).

p(f([1]),f([2])).
p(f([2]),f([3])).
p(f([3]),f([1])).

p([f(1)],[f(2)]).
p([f(2)],[f(3)]).
p([f(3)],[f(1)]).


% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tstr12 "testcombo."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((testcombo))).
%--------------------------------------------------------- 16 basic_tests_tstr13
:- table a/2.

tw :- a(X,Y),write(X),write(' '),write(Y),nl,fail.
tw.	

ts :- statistics, a(_X,_Y), fail.
ts :- statistics.

a(X,Y) :- p(X,Y).
a(X,Y) :- a(X,Z), p(Z,Y).

p(1,2).
p(2,3).
p(3,4).
p(4,5).
p(5,6).
p(6,7).
p(7,8).
p(8,9).
p(9,10).
p(10,11).
p(11,12).
p(12,13).
p(13,14).
p(14,15).
p(15,16).
p(16,17).
p(17,18).
p(18,19).
p(19,20).
p(20,21).
p(21,22).
p(22,23).
p(23,24).
p(24,25).
p(25,26).
p(26,27).
p(27,28).
p(28,29).
p(29,30).
p(30,31).
p(31,32).
p(32,33).
p(33,34).
p(34,1).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tstr13 "tw."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tw))).
%--------------------------------------------------------- 17 basic_tests_tstr21
:- import numbervars/3 from num_vars.

:- table a/2.

/* ?- a(Q,W). */

tw :- a(Q,W),T = a(Q,W),numbervars(T,0,_T1),writeq(T),nl.

a(X,Y) :- a(X,Z), p(Z,Y).
a(X,Y) :- p(X,Y).

%:-a(Q,W),fail.

p(f(a,b),f(c,d)).
p(f(c,d),f(e,f)).

p(f(1,2),f(3,4)).
p(f(3,D),f(5,D)).

p(f(10,20),f(30,40)).
p(f(30,D),f(E,D,E)).

p([a,b],[c,d]).
p([c,d],[e,f]).
p([c,d],[g,g]).

p([X],[X]).
p([1,2],[3,4]).
p([3,X],[5,X]).

p(3,1).
p(3,4).

p(10,20).
p(10,25).
p(20,30).
p(25,40).
p(25,40).
p(40,20).
p(40,50).
p(50,50).
p(50,60).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tstr21 "tw,fail."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tw,fail))).
%--------------------------------------------------------- 18 basic_tests_tstr22

:- table(a/2).
:- import numbervars/3 from num_vars.

/* ?- a(Q,W), a(W,W), a(f(F),f(F)) , a([F],[F]) */

a(X,Y) :- a(X,Z), p(Z,Y).
a(X,Y) :- p(X,Y).

testcombo :-
	(tw(_Q,_W),fail ; tw(A,A),fail ; tw(f(F),f(F)),fail ; tw([F],[F]),fail).

tw(Q,W) :- a(Q,W),T = a(Q,W),numbervars(T,0,_T1),writeq(T),nl.

p(f(1),f(2)).
p(f(2),f(3)).
p(f(3),f(1)).

p([1],[2]).
p([2],[3]).
p([3],[1]).

p(f([1]),f([2])).
p(f([2]),f([3])).
p(f([3]),f([1])).

p([f(1)],[f(2)]).
p([f(2)],[f(3)]).
p([f(3)],[f(1)]).


% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tstr22 "testcombo."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((testcombo))).
%--------------------------------------------------------- 19 basic_tests_tstr23
:- table a/2.

tw :- a(X,Y),write(X),write(' '),write(Y),nl,fail.
tw.	

ts :- statistics,a(_X,_Y),fail.
ts :- statistics.

a(X,Y) :- a(X,Z),p(Z,Y).
a(X,Y) :- p(X,Y).

p(1,2).
p(2,3).
p(3,4).
p(4,5).
p(5,6).
p(6,7).
p(7,8).
p(8,9).
p(9,10).
p(10,11).
p(11,12).
p(12,13).
p(13,14).
p(14,15).
p(15,16).
p(16,17).
p(17,18).
p(18,19).
p(19,20).
p(20,21).
p(21,22).
p(22,23).
p(23,24).
p(24,25).
p(25,26).
p(26,27).
p(27,28).
p(28,29).
p(29,30).
p(30,31).
p(31,32).
p(32,33).
p(33,34).
p(34,1).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tstr23 "tw."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tw))).
%--------------------------------------------------------- 20 basic_tests_tstr31
:- import numbervars/3 from num_vars.

:- table(a/2).

/* ?- a(Q,W). */

a(X,Y):-p(Z,Y),a(X,Z).
a(X,Y):-p(X,Y).

tw :- a(Q,W),T = a(Q,W),numbervars(T,0,_T1),writeq(T),nl.

p(f(a,b),f(c,d)).
p(f(c,d),f(e,f)).

p(f(1,2),f(3,4)).
p(f(3,D),f(5,D)).

p(f(10,20),f(30,40)).
p(f(30,D),f(E,D,E)).

/*
p(11,22).
p(22,33).
p(22,44).
*/

p([a,b],[c,d]).
p([c,d],[e,f]).
p([c,d],[g,g]).

p([X],[X]).
p([1,2],[3,4]).
p([3,X],[5,X]).

p(3,1).
p(3,4).

p(10,20).
p(10,25).
p(20,30).
p(25,40).
p(25,40).
p(40,20).
p(40,50).
p(50,50).
p(50,60).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tstr31 "tw,fail."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tw,fail))).
%--------------------------------------------------------- 21 basic_tests_tstr32
:- import numbervars/3 from num_vars.

:- table(a/2).

/* ?- a(Q,W), a(W,W), a(f(F),f(F)) , a([F],[F]) */

testcombo:- 
	(tw(_Q,_W),fail ; tw(A,A),fail ; tw(f(F),f(F)),fail ; tw([F],[F]),fail).

tw(Q,W) :- a(Q,W),T = a(Q,W),numbervars(T,0,_T1),writeq(T),nl.

a(X,Y) :- p(Z,Y),a(X,Z).
a(X,Y) :- p(X,Y).

p(f(1),f(2)).
p(f(2),f(3)).
p(f(3),f(1)).

p([1],[2]).
p([2],[3]).
p([3],[1]).

p(f([1]),f([2])).
p(f([2]),f([3])).
p(f([3]),f([1])).

p([f(1)],[f(2)]).
p([f(2)],[f(3)]).
p([f(3)],[f(1)]).


% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tstr32 "testcombo."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((testcombo))).
%--------------------------------------------------------- 22 basic_tests_tstr33
:- table a/2.

tw :- a(X,Y), write(X), write(' '), write(Y), nl, fail.
tw.

ts :- statistics,a(_X,_Y),fail.
ts :- statistics.

a(X,Y):-p(X,Y).
a(X,Y):-p(X,Z),a(Z,Y).

p(1,2).
p(2,3).
p(3,4).
p(4,5).
p(5,6).
p(6,7).
p(7,8).
p(8,9).
p(9,10).
p(10,11).
p(11,12).
p(12,13).
p(13,14).
p(14,15).
p(15,16).
p(16,17).
p(17,18).
p(18,19).
p(19,20).
p(20,21).
p(21,22).
p(22,23).
p(23,24).
p(24,25).
p(25,26).
p(26,27).
p(27,28).
p(28,29).
p(29,30).
p(30,31).
p(31,32).
p(32,33).
p(33,34).
p(34,1).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tstr33 "tw."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tw))).
%--------------------------------------------------------- 23 basic_tests_tstr51
:- import numbervars/3 from num_vars.

:- table(a/2).

/* ?- a(Q,W). */

a(X,Y):-a(X,Z),a(Z,Y).
a(X,Y):-p(X,Y).

tw:- a(Q,W),T = a(Q,W),numbervars(T,0,_T1),writeq(T),nl.

p(f(a,b),f(c,d)).
p(f(c,d),f(e,f)).

p(f(1,2),f(3,4)).
p(f(3,D),f(5,D)).

p(f(10,20),f(30,40)).
p(f(30,D),f(E,D,E)).

/*
p(11,22).
p(22,33).
p(22,44).
*/

p([a,b],[c,d]).
p([c,d],[e,f]).
p([c,d],[g,g]).

p([X],[X]).
p([1,2],[3,4]).
p([3,X],[5,X]).

p(3,1).
p(3,4).

p(10,20).
p(10,25).
p(20,30).
p(25,40).
p(25,40).
p(40,20).
p(40,50).
p(50,50).
p(50,60).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tstr51 "tw,fail."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tw,fail))).
%--------------------------------------------------------- 24 basic_tests_tstr52
:- import numbervars/3 from num_vars.

:- table(a/2).

/* ?- a(Q,W), a(W,W), a(f(F),f(F)) , a([F],[F]) */

testcombo:- 
	(tw(_Q,_W),fail ; tw(A,A),fail ; tw(f(F),f(F)),fail ; tw([F],[F]),fail).

tw(Q,W):- a(Q,W),T = a(Q,W),numbervars(T,0,_T1),writeq(T),nl.

a(X,Y):-a(X,Z),a(Z,Y).
a(X,Y):-p(X,Y).

p(f(1),f(2)).
p(f(2),f(3)).
p(f(3),f(1)).

p([1],[2]).
p([2],[3]).
p([3],[1]).

p(f([1]),f([2])).
p(f([2]),f([3])).
p(f([3]),f([1])).

p([f(1)],[f(2)]).
p([f(2)],[f(3)]).
p([f(3)],[f(1)]).


% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tstr52 "testcombo."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((testcombo))).
%--------------------------------------------------------- 25 basic_tests_tstr53
:- table a/2.

tw :- a(X,Y),write(X),write(' '),write(Y),nl,fail.
tw.	

ts :- statistics,a(_X,_Y),fail.
ts :- statistics.

a(X,Y) :- a(X,Z), a(Z,Y).
a(X,Y) :- p(X,Y).

p(1,2).
p(2,3).
p(3,4).
p(4,5).
p(5,6).
p(6,7).
p(7,8).
p(8,9).
p(9,10).
p(10,11).
p(11,12).
p(12,13).
p(13,14).
p(14,15).
p(15,16).
p(16,17).
p(17,18).
p(18,19).
p(19,20).
p(20,21).
p(21,22).
p(22,23).
p(23,24).
p(24,25).
p(25,26).
p(26,27).
p(27,28).
p(28,29).
p(29,30).
p(30,31).
p(31,32).
p(32,33).
p(33,34).
p(34,1).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tstr53 "tw."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tw))).
%--------------------------------------------------------- 26 basic_tests_tstr61
:- import numbervars/3 from num_vars.

:- table a/2.

/* ?- a(Q,W). */

a(X,Y) :- p(X,Y).
a(X,Y) :- a(X,Z), a(Z,Y).

tw :- a(Q,W), T = a(Q,W), numbervars(T,0,_T1), writeq(T), nl.

p(f(a,b),f(c,d)).
p(f(c,d),f(e,f)).

p(f(1,2),f(3,4)).
p(f(3,D),f(5,D)).

p(f(10,20),f(30,40)).
p(f(30,D),f(E,D,E)).

/*
p(11,22).
p(22,33).
p(22,44).
*/

p([a,b],[c,d]).
p([c,d],[e,f]).
p([c,d],[g,g]).

p([X],[X]).
p([1,2],[3,4]).
p([3,X],[5,X]).

p(3,1).
p(3,4).

p(10,20).
p(10,25).
p(20,30).
p(25,40).
p(25,40).
p(40,20).
p(40,50).
p(50,50).
p(50,60).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tstr61 "tw,fail."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tw,fail))).
%--------------------------------------------------------- 27 basic_tests_tstr62
:- import numbervars/3 from num_vars.

:- table a/2.

/* ?- a(Q,W), a(W,W), a(f(F),f(F)) , a([F],[F]) */

a(X,Y) :- p(X,Y).
a(X,Y) :- a(X,Z), a(Z,Y).

testcombo :-
	(tw(_Q,_W),fail ; tw(A,A),fail ; tw(f(F),f(F)),fail ; tw([F],[F]),fail).

testcombo1 :- 
	(a(_Q,_W),fail ; a(A,A),fail ; a(f(F),f(F)),fail ; a([F],[F]),fail).

tw(Q,W) :- a(Q,W),T = a(Q,W),numbervars(T,0,_T1),writeq(T),nl.

p(f(1),f(2)).
p(f(2),f(3)).
p(f(3),f(1)).

p([1],[2]).
p([2],[3]).
p([3],[1]).

p(f([1]),f([2])).
p(f([2]),f([3])).
p(f([3]),f([1])).

p([f(1)],[f(2)]).
p([f(2)],[f(3)]).
p([f(3)],[f(1)]).


% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tstr62 "testcombo."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((testcombo))).
%--------------------------------------------------------- 28 basic_tests_tstr63
:- table a/2.

tw :- a(X,Y),write(X),write(' '),write(Y),nl,fail.
tw.

ts :- statistics,a(_X,_Y),fail.
ts :- statistics.

a(X,Y) :- p(X,Y).
a(X,Y) :- a(X,Z), a(Z,Y).

p(1,2).
p(2,3).
p(3,4).
p(4,5).
p(5,6).
p(6,7).
p(7,8).
p(8,9).
p(9,10).
p(10,11).
p(11,12).
p(12,13).
p(13,14).
p(14,15).
p(15,16).
p(16,17).
p(17,18).
p(18,19).
p(19,20).
p(20,21).
p(21,22).
p(22,23).
p(23,24).
p(24,25).
p(25,26).
p(26,27).
p(27,28).
p(28,29).
p(29,30).
p(30,31).
p(31,32).
p(32,33).
p(33,34).
p(34,1).

/* 
== Statistics ===
Permanent space: 120736 in use, 384K allocated.
Stack space allocated: 64K+64K+768K+768K+64K
Stacks in use : global 84, local 100, trail 156, cp 256
OLDT Stacks in use : table 0, tab_heap 0 opentables 0
num unwinds: 0
TIME: cputime: 0.40*1 sec, elapsetime 14.75 sec
== Statistics ===
Permanent space: 120736 in use, 384K allocated.
Stack space allocated: 64K+64K+768K+768K+64K
Stacks in use : global 92, local 88, trail 156, cp 220
OLDT Stacks in use : table 52080, tab_heap 0 opentables 0
num unwinds: 0
TIME: cputime: 4.67*1 sec, elapsetime 19.11 sec
*/

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs ../gentest.sh tstr63 "tw."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tw))).
