:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import gc_dynamic/1 from standard.

:- index(p/2,[2,*(1)]).
:- index(q/2,[2,*(1)]).

init:- retractall(p(_,_)),retractall(q(_,_)),initp,initq.
initp:- assert(p(f(1),1)),assert(p(f(2),2)),assert(p(f(3),3)).
initq:- assert(q(f(1),1)),assert(q(f(2),2)),assert(q(f(3),3)).

test:- test1,test2,test3,test4,test5.

test1:- init,fail.
test1:- p(X,Y),retractall(p(_,_)),writeln((1-1,p(X,Y))),fail.
test1:- q(X,Y),retractall(q(_,_)),writeln((1-2,q(X,Y))),fail.
test1:- initq,fail.
test1:- q(X,Y),gc_dynamic(N),writeln((1-3,q(X,Y),gc(N))),fail.
test1:- q(X,Y),gc_dynamic(N),writeln((1-4,q(X,Y),gc(N))),fail.
test1.

test2:- init,fail.
test2:- q(X,Y),retractall(p(_,_)),writeln((2-1,q(X,Y))),fail.
test2:- p(X,Y),writeln((2-2,p(X,Y))),fail.
test2.

test3:- init,fail.
test3:- q(X,Y),retractall(q(_,_)),writeln((3-1,q(X,Y))),fail.
test3:- init,fail.
test3:- q(X,Y),retractall(q(_,_)),writeln((3-2,q(X,Y))),fail.
test3:- gc_dynamic(N),writeln((3-3,gc(N))).

test4:- init,fail.
test4:- q(X,Y),retractall(q(_,_)),writeln((4-1,q(X,Y))),fail.
test4:- init,fail.
test4:- q(X,Y),retractall(q(_,_)),gc_dynamic(N),writeln((4-2,q(X,Y),gc(N))),fail.
test4:- gc_dynamic(N),writeln((4-3,gc(N))).

test5:- init,fail.
test5:- q(X,Y),retractall(q(_,_)),writeln((5-1,q(X,Y))),fail.
test5:- init,fail.
test5:- q(_X,_Y),retract(q(f(1),_)),fail.
test5:- q(X,Y),retractall(q(_,_)),gc_dynamic(N),writeln((5-2,q(X,Y),gc(N))),fail.
test5:- init,fail.
test5:- retract(q(f(1),_)),fail.
test5:- gc_dynamic(N),writeln((5-3,gc(N))).


% DRIVER (appended by the vendoring, CEO-700): XSB retract_tests/test.sh runs gentest.sh test_retra_gc_fancy "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
