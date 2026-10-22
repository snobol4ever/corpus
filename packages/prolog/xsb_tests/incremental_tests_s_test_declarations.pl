:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import numbervars/1 from num_vars.
:- import setof/3 from setof.

test:- test_bf,fail.
test:- test_fb,fail.
test:- test_bb,fail.
test.

:- dynamic d1/1.
:- dynamic d2/1 as incremental.
:- dynamic d3/1 as opaque.
:- dynamic d4/1 as tabled.
:- table t1/1.
:- table t1_1/1 as answer_abstract(7).
:- table t1_2/1 as intern.
:- table t1_3/1 as subgoal_abstract(7).
:- table t2/1 as subsumptive.
:- table t3/1 as variant.
:- table t4/1 as incremental.
:- table t4_si/1 as subsumptive,incremental.
:- table t5/1 as opaque.
:- table t6(_,lattice(gt(X,Y,Z))) as ans_subsumption.
% t7 not ready.
:- table t7/1 as dyn.
:- table t8/1.
:- dynamic t8/1.

t1(1).
t1_1(1).
t1_2(1).
t1_3(1).
t2(1).
t3(1).
t4(1).
t4_si(1).
t5(1).
t6(1,2).
t7(1).

t8(1).

p1(2).
p2(2).

% this will show up as dynamic -- this is ok.
:- multifile p3/1.
p3(2).

test_bf:- setof(_X,true,_F),fail.
test_bf:- writeln('-----'),
	predicate_property(setof(_,_,_),P),
	write(prop(setof,P)),writeln('.'),fail.
test_bf:-  writeln('-----'),
	predicate_property(p1(_X),P),
	write(prop(p1,P)),writeln('.'),fail.
test_bf:- writeln('-----'),
        spy( p2/1),
	predicate_property(p2(_),P),
	write(prop(p2,P)),writeln('.'),fail.
% multifile will show up as dynamic -- this is ok.
test_bf:-  writeln('-----'),
	predicate_property(p3(_X),P),
	write(prop(p3,P)),writeln('.'),fail.
test_bf:-  writeln('-----'),
	predicate_property(d1(_X),P),
	write(prop(d1,P)),writeln('.'),fail.
test_bf:-  writeln('-----'),
	predicate_property(d2(_X),P),
	write(prop(d2,P)),writeln('.'),fail.
test_bf:-  writeln('-----'),
	predicate_property(d3(_X),P),
	write(prop(d3,P)),writeln('.'),fail.
test_bf:-  writeln('-----'),
	predicate_property(d4(_X),P),
        P \= private,   % want ST and MT tests to be the same 
	write(prop(d4,P)),writeln('.'),fail.
test_bf:-  writeln('-----'),
	predicate_property(t1(_X),P),
        P \= private,   % want ST and MT tests to be the same 
	write(prop(t1,P)),writeln('.'),fail.
test_bf:-  writeln('-----'),
	predicate_property(t1_1(_X),P),
        P \= private,   % want ST and MT tests to be the same 
	write(prop(t1_1,P)),writeln('.'),fail.
test_bf:-  writeln('-----'),
	predicate_property(t1_2(_X),P),
        P \= private,   % want ST and MT tests to be the same 
	write(prop(t1_2,P)),writeln('.'),fail.
test_bf:-  writeln('-----'),
	predicate_property(t1_3(_X),P),
        P \= private,   % want ST and MT tests to be the same 
	write(prop(t1_3,P)),writeln('.'),fail.
test_bf:-  writeln('-----'),
	predicate_property(t2(_X),P),
        P \= private,   % want ST and MT tests to be the same 
	write(prop(t2,P)),writeln('.'),fail.
test_bf:-  writeln('-----'),
	predicate_property(t3(_X),P),
        P \= private,   % want ST and MT tests to be the same 
	write(prop(t3,P)),writeln('.'),fail.
test_bf:-  writeln('-----'),
	predicate_property(t4(_X),P),
        P \= private,   % want ST and MT tests to be the same 
	write(prop(t4,P)),writeln('.'),fail.
test_bf:-  writeln('-----'),
	predicate_property(t4_si(_X),P),
        P \= private,   % want ST and MT tests to be the same 
	write(prop(t4_si,P)),writeln('.'),fail.
test_bf:-  writeln('-----'),
	predicate_property(t5(_X),P),
        P \= private,   % want ST and MT tests to be the same 
	write(prop(t5,P)),writeln('.'),fail.
test_bf:-  writeln('-----'),
	predicate_property(t6(_,_),P),
        P \= private,   % want ST and MT tests to be the same 
	write(prop(t6,P)),writeln('.'),fail.
% not ready
test_bf:-  writeln('-----'),
	predicate_property(t7(_),P),
        P \= private,   % want ST and MT tests to be the same 
	write(prop(t7,P)),writeln('.'),fail.
test_bf:-  writeln('-----'),
	predicate_property(t8(_),P),
        P \= private,   % want ST and MT tests to be the same 
	write(prop(t8,P)),writeln('.'),fail.
test_bf.

test_fb:- setof(Pred,Pred^predicate_property(Pred,tabled),Predlist),
	  numbervars(Predlist),write('Tabled predicates are: '),writeln(Predlist),fail.
test_fb:- setof(Pred,Pred^predicate_property(Pred,(incremental)),Predlist),
	  numbervars(Predlist),write('Incremental predicates are: '),writeln(Predlist),fail.
test_fb:- setof(Pred,Pred^predicate_property(Pred,(opaque)),Predlist),
	  numbervars(Predlist),write('Opaque predicates are: '),writeln(Predlist),fail.
test_fb:- setof([Pred,M],Pred^predicate_property(Pred,(updating=M)),Predlist),
	  numbervars(Predlist),write('Updating modes are: '),writeln(Predlist),fail.
test_fb.

test_bb:- predicate_property(t4(_),tabled),writeln(t4_tabled_succeeded),fail.
test_bb:- predicate_property(t4(_),(updating=M)),writeln(t4_updating(M)),fail.
test_bb:- predicate_property(t4_si(_),tabled),writeln(t4_si_tabled_succeeded),fail.
test_bb:- predicate_property(t4_si(_),(updating=M)),writeln(t4_si_updating(M)),fail.
test_bb.

% DRIVER (appended by the vendoring, CEO-700): XSB incremental_tests/stest.sh runs gentest.sh s_test_declarations "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
