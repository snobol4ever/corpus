%--------------- 1 test_gate_builder_mines_a_prolog_collection_by_swipl__display
:- use_module(library(pce)).
:- initialization(main, main).
main :- write(x), nl.
%------------------ 2 test_gate_builder_mines_a_prolog_collection_by_swipl__held
:- initialization(main, main).
main :- write(held), nl.
%----------------- 3 test_gate_builder_mines_a_prolog_collection_by_swipl__input
:- initialization(main, main).
main :- read(X), write(got(X)), nl.
%----------------- 4 test_gate_builder_mines_a_prolog_collection_by_swipl__plain
:- initialization(main).
main :- write(plain), nl.
%--------------------- 5 test_gate_builder_mines_an_xsb_collection_by_xsb__other
:- initialization(main).
main :- writeln(swi).
%- 6 test_gate_frame_reuse_rung3_staged_argv_are_never_addressed_so_never_granted__bt
p(X) :- q(X), s(X).
q(1).
q(2).
q(3).
s(3).
:- initialization(main).
main :- p(X), write(X), nl, halt.
%- 7 test_gate_frame_reuse_rung3e_a_single_reader_temp_takes_its_sealed_calls_argv_slot__bt
p(X) :- q(X), s(X).
q(1).
q(2).
q(3).
s(3).
:- initialization(main).
main :- p(X), write(X), nl, halt.
%- 8 test_gate_frame_reuse_rung3e_a_single_reader_temp_takes_its_sealed_calls_argv_slot__nest
q(X, Y) :- Y is X - 1.
p(X, Z) :- Z is (X - 1) * (X + 2).
u(X) :- 1 = X.
v(X) :- X = 1.
:- initialization(main).
main :- q(5, Y), write(Y), nl, p(5, Z), write(Z), nl, ( u(1) -> write(u_ok) ; write(u_bad) ), nl, ( v(1) -> write(v_ok) ; write(v_bad) ), nl, ( u(2) -> write(u2_bad) ; write(u2_ok) ), nl.
%- 9 test_gate_gc_a_callee_saved_register_at_an_allocating_return_is_named_not_assumed__w
app([], L, L).
app([H|T], L, [H|R]) :- app(T, L, R).
:- app([1,2],[3],X), write(X), nl.
%- 10 test_gate_gc_a_prolog_box_result_survives_the_cap_raise_tail_under_gc_stress__cap
:- initialization(main).
:- set_prolog_flag(stack_limit, 4194304).
mk(0, L, L) :- !.
mk(N, A, L) :- N1 is N - 1, mk(N1, [N|A], L).
main :- catch(mk(5000000, [], _), error(E, _), (write(caught(E)), nl)), findall(X, between(1, 3, X), L), write(L), nl, write(after), nl, halt.
%- 11 test_gate_gc_a_prolog_box_result_survives_the_cap_raise_tail_under_gc_stress__fa
:- initialization(main).
main :- findall(X, between(1, 3, X), L), write(L), nl, findall(Y-Z, (member(Y, [a, b]), Z = Y), P), write(P), nl, halt.
%- 12 test_gate_gc_a_prolog_retained_frame_is_reached_by_its_call_sites_typed_frame_link__w
:- initialization(main).
mk(N, T) :- length(L, N), fill(L, N), T = t(L, N).
fill([], _).
fill([H|T], N) :- number_codes(N, Cs), atom_codes(H, [0'k|Cs]), N1 is N + 1, fill(T, N1).
q(X, T) :- mk(5, T0), member(X, [1,2,3,4,5,6]), T = T0.
churn(0) :- !.
churn(N) :- mk(8, _), N1 is N - 1, churn(N1).
r(S) :- q(X, T), churn(6), X >= 5, T = t(L, _), length(L, Len), S is X * 100 + Len.
loop(0, A, A) :- !.
loop(N, A0, A) :- r(S), A1 is A0 + S, N1 is N - 1, loop(N1, A1, A).
main :- loop(4, 0, A), write(A), nl, q(_, t(L, _)), write(L), nl, halt.
%- 13 test_gate_gc_a_run_time_prolog_fragment_registers_its_frame_map_and_its_site_table__w
:- initialization(main).
:- dynamic(r/2).
loop(0) :- !.
loop(N) :- retractall(r(_, _)), assertz((r(X, Y) :- atom_concat(X, abc, Z), atom_length(Z, Y))), r(hello, L), L =:= 8, N1 is N - 1, loop(N1).
main :- loop(300), r(hi, V), write(V), nl, halt.
%---------------------------- 14 test_gate_gc_map_table_present_in_both_media__c
app([], L, L).
app([H|T], L, [H|R]) :- app(T, L, R).
:- app([1,2],[3],X), write(X), nl.
%-- 15 test_gate_gc_the_chain_over_the_maps_finds_every_frame_by_return_pc__cont
:- initialization(main).
p :- write(before), nl, shift(ball1), write(after), nl, shift(ball2), write(end), nl.
main :- reset(p, B1, C1), writeq(B1), nl,
        reset(C1, B2, C2), writeq(B2), nl,
        reset(C2, B3, C3), ( var(B3) -> writeq(no_ball) ; writeq(B3) ), writeq(C3), nl,
        reset(true, B4, C4), ( var(B4) -> writeq(no_ball) ; writeq(B4) ), writeq(C4), nl.
%----- 16 test_gate_gc_the_chain_over_the_maps_finds_every_frame_by_return_pc__w
p(1).
p(2).
q(X, Y) :- p(X), Y is X * 2.
:- q(X, Y), write(Y), nl, fail.
:- true.
%---------- 17 test_gate_gc_the_frame_map_dump_reports_in_mode_4_as_in_mode_3__w
:- initialization(main).
main :- X = f(a, [b, c]), write(X), nl.
%------------------- 18 test_gate_gc_the_pending_prolog_ball_is_a_rooted_cell__w
:- initialization(main).
main :- catch(( X is foo + 1, write(X) ), error(type_error(evaluable, foo/0), _), write(caught_type_error)), nl.
%-------------------------- 19 test_gate_gc_the_stack_walk_survives_valgrind__hw
:- initialization(main).
main :- write(hello), nl, halt.
%--------------------- 20 test_gate_no_stored_code_address_in_the_prolog_gate__g
:- initialization(main).
p(1). p(2). p(3).
q(a). q(b).
det(X) :- ( X > 1 -> write(big) ; write(small) ), nl.
nore(X) :- ( p(X) -> write(found(X)) ; write(none) ), nl.
redoarm :- ( true -> p(Y), write(y(Y)), nl, fail ; true ).
redoarm :- write(redoarm_done), nl.
cutarm :- ( true -> p(Y), Y > 1, !, write(cut(Y)), nl ; true ).
elseredo :- ( fail -> true ; q(Z), write(z(Z)), nl, fail ).
elseredo :- write(elseredo_done), nl.
nested :- ( p(A) -> ( A > 0 -> write(pos(A)) ; write(neg(A)) ) ; write(no) ), nl.
sc1 :- ( p(X) *-> write(sc(X)), nl, fail ; write(scnone), nl ).
sc1 :- write(sc1_done), nl.
sc2 :- ( fail *-> write(never) ; write(scelse) ), nl.
sc3 :- ( q(W) *-> ( W == b -> write(scb) ; write(sca) ) ; write(scno) ), nl, fail.
sc3 :- write(sc3_done), nl.
sccut :- ( p(X) *-> X > 1, !, write(sccut(X)), nl ; write(no) ).
sccut :- write(sccut_done), nl.
noelse :- ( p(X), X > 2 -> write(ne(X)), nl ; true ).
ite_in_findall :- findall(V, ( p(V0), ( V0 > 1 -> V = big(V0) ; V = small(V0) ) ), L), write(L), nl.
sc_in_findall :- findall(V, ( q(V1) *-> V = got(V1) ; V = none ), L), write(L), nl.
ite_backtrack_into :- ( true -> p(X) ; true ), write(bt(X)), nl, X >= 3, write(bt_done), nl.
main :- det(0), det(5), nore(_), redoarm, cutarm, elseredo, nested, sc1, sc2, sc3, sccut, noelse,
        ite_in_findall, sc_in_findall, ite_backtrack_into.
%----------------------- 21 test_gate_no_unnamed_holes_in_an_activation_frame__w
q(1).
q(2).
r(N) :- N > 0, q(_), N1 is N-1, r(N1).
r(0).
:- initialization(main).
main :- r(5), write(ok), nl.
%- 22 test_gate_pl_a_ball_propagates_past_the_remaining_clauses_of_a_dynamic_predicate__ball
:- dynamic(p/1).
:- dynamic(q/2).
p(X) :- X > 0, throw(boom).
p(_) :- write(second), nl.
main :- catch(p(1), E, (write(caught(E)), nl)), assertz(q(1, a)), assertz((q(X, b) :- X > 5, throw(qq))), assertz(q(_, c)),
        catch(findall(V, q(9, V), L), E2, (write(caught(E2)), nl)), ( var(L) -> true ; write(L), nl ),
        findall(V, q(1, V), L1), write(L1), nl.
:- initialization(main).
%- 23 test_gate_pl_a_ball_propagates_past_the_remaining_clauses_of_a_dynamic_predicate__big
:- initialization(main).
t1 :- A is 1 + 9223372036854775807, A =:= 9223372036854775808.
main :- ( catch(t1, E, (write(caught(E)), nl, fail)) -> write(static_ok) ; write(static_no) ), nl,
        assertz((t2 :- A is 1 + 9223372036854775807, A =:= 9223372036854775808)),
        ( catch(t2, E2, (write(caught(E2)), nl, fail)) -> write(dyn_ok) ; write(dyn_no) ), nl,
        X = 9223372036854775808, assertz(t3(X)), t3(Y), write(Y), nl,
        assertz((t4(Z) :- Z is -9223372036854775809 - 1)), t4(W), write(W), nl.
%- 24 test_gate_pl_a_ball_propagates_past_the_remaining_clauses_of_a_dynamic_predicate__cut
:- initialization(main).
:- dynamic(r/1).
:- dynamic(s/1).
r(a) :- !, fail.
r(_).
s(X) :- X == a, !, \+ true.
s(_) :- true.
main :- ( r(a) -> write(wrong) ; write(cut_ok) ), nl, ( s(a) -> write(wrong) ; write(cut_ok) ), nl, assertz((t(X) :- X == a, !, fail)), assertz(t(_)), ( t(a) -> write(wrong) ; write(cut_ok) ), nl, ( t(b) -> write(ok_b) ; write(wrong_b) ), nl.
%- 25 test_gate_pl_a_ball_propagates_past_the_remaining_clauses_of_a_dynamic_predicate__cut2
:- initialization(main).
:- dynamic(p/1). :- dynamic(q/1). :- dynamic(u/1). :- dynamic(v/2). :- dynamic(w/1).
p(X) :- member(X, [1,2,3]), X > 1, !.
p(9).
q(X) :- ( X > 0 -> true ; fail ).
q(_) :- true.
u(X) :- \+ X = a.
u(b).
v(X, Y) :- call((member(Y, [x, y]), !)), X = 1.
v(2, z).
w(1). w(2) :- !. w(3).
main :- findall(X, p(X), L1), write(L1), nl, findall(a, q(1), L2), length(L2, N2), write(N2), nl,
        findall(X, u(X), L3), write(L3), nl, findall(X-Y, v(X, Y), L4), write(L4), nl, findall(X, w(X), L5), write(L5), nl,
        assertz(w(4)), findall(X, (w(X), X > 1), L6), write(L6), nl, ( w(2) -> write(w2) ; write(no) ), nl.
%---- 26 test_gate_pl_a_bar_inside_an_argument_is_the_infix_operator_as_swipl__w
:- initialization(main).
t(A|B, A-B).
type(A|B) --> [A], [B].
main :- ( t(p|q, R) -> writeq(head-R) ; writeq(head-no) ), nl,
    X = f(a|b), writeq(X), nl, X = f(Y), functor(Y, N, Ar), writeq(N/Ar), nl,
    Z = [a|b], writeq(Z), nl,
    W = (a|b), W =.. L, writeq(L), nl,
    E = [f(a|b), c], writeq(E), nl,
    ( phrase(type(u|v), [u, v]) -> writeq(dcg-yes) ; writeq(dcg-no) ), nl,
    read_term_from_atom('f(a|b)', T, []), writeq(read(T)), nl,
    term_to_atom(T2, 'g([x|y], (p|q), {r|s})'), writeq(T2), nl.
%-- 27 test_gate_pl_a_big_integer_past_the_double_range_raises_float_overflow__w
t(G) :- catch((X is G, write(X)), error(E, _), write(E)), nl.
main :- B is 7^823543, t(float(B)), t(exp(B)), t(log(B)), t(sqrt(B)), t(float(2^1023)), t(float(2^1024)), t(float(-(2^2000))), t(sign(B)), t(abs(-(2^70))), t(float(2^80)).
:- initialization(main).
%----------------- 28 test_gate_pl_a_binary_stream_has_no_encoding_property__orc
:- initialization(main).
main :- open('ob.bin', write, B, [type(binary)]),
	( stream_property(B, encoding(E)) -> format("oracle_says=~w~n", [E]) ; write('oracle_says=no_solution'), nl ),
	close(B), halt.
%------------------ 29 test_gate_pl_a_binary_stream_has_no_encoding_property__sp
:- initialization(main).
main :- open('b.bin', write, B, [type(binary)]),
	( stream_property(B, encoding(E1)) -> write(bin_encoding(E1)) ; write(bin_no_encoding) ), nl,
	( stream_property(B, type(T1)) -> write(bin_type(T1)) ; write(bin_no_type) ), nl,
	close(B),
	open('t.txt', write, S, [type(text), encoding(utf8)]),
	( stream_property(S, encoding(E2)) -> write(txt_encoding(E2)) ; write(txt_no_encoding) ), nl,
	( stream_property(S, type(T2)) -> write(txt_type(T2)) ; write(txt_no_type) ), nl,
	close(S),
	open('p.txt', write, P, []),
	( stream_property(P, encoding(E3)) -> write(plain_encoding(E3)) ; write(plain_no_encoding) ), nl,
	close(P), halt.
%- 30 test_gate_pl_a_bounded_conditional_runs_assert_2_exists_and_a_huge_length_is_a_resource_error__w
:- dynamic f/1.
:- if(current_prolog_flag(bounded, false)).
big(yes).
:- else.
big(no).
:- endif.
:- if(current_prolog_flag(bounded, true)).
bnd(yes).
:- else.
bnd(no).
:- endif.
:- if(\+ current_prolog_flag(bounded, true)).
nb(yes).
:- else.
nb(no).
:- endif.
t :- big(B), write(B), nl, bnd(C), write(C), nl, nb(D), write(D), nl,
     assert(f(1), R), ( clause(f(X), true, R) -> write(X) ; write(noref) ), nl,
     erase(R), ( f(_) -> write(still) ; write(erased) ), nl,
     catch((N is 1<<66, length(_, N)), error(E, _), (write(E), nl)).
:- initialization(t).
%- 31 test_gate_pl_a_call_of_a_dynamic_predicate_with_a_rational_or_bignum_argument_matches_only_an_equal_value_as_swipl__g
:- initialization(main).
:- dynamic(fr/1).
:- dynamic(rl/2).
:- dynamic(pr/2).
t(L, G) :- ( catch(G, _, fail) -> R = yes ; R = no ), write(L), write(' '), write(R), nl.
run :-
    A is 1 rdiv 4, B is 1 rdiv 8, C is 2 rdiv 8, G is 10^30, H is G + 1, I is 10^30,
    assertz(fr(A)), assertz(fr(G)), assertz((rl(A, k) :- true)), assertz((rl(G, k) :- true)), assertz(pr(a, A)),
    t(rational_other, fr(B)), t(rational_same, fr(A)), t(rational_same_value_other_form, fr(C)), t(rational_vs_integer, fr(1)),
    t(bigint_plus_one, fr(H)), t(bigint_same_value, fr(I)), t(bigint_vs_integer, fr(5)),
    t(rule_rational_other, rl(B, _)), t(rule_rational_same, rl(A, _)), t(rule_bigint_other, rl(H, _)), t(rule_bigint_same, rl(I, _)),
    t(second_argument_rational_other, pr(a, B)), t(second_argument_rational_same, pr(a, A)),
    t(lookup_count_rational_other, (findall(X, fr(X), L), L = [_, _])).
main :- run, set_prolog_flag(occurs_check, true), write(occurs_check), nl, retractall(fr(_)), retractall(rl(_, _)), retractall(pr(_, _)), run, halt.
%- 32 test_gate_pl_a_caught_throw_leaves_no_trail_entry_for_a_cell_newer_than_the_choice_point_and_still_undoes_the_older_ones_as_swipl__loop
t(0) :- !.
t(N) :- catch(throw(oops(N)), oops(_), true), M is N - 1, t(M).
:- t(1000000), write(done), nl.
%- 33 test_gate_pl_a_caught_throw_leaves_no_trail_entry_for_a_cell_newer_than_the_choice_point_and_still_undoes_the_older_ones_as_swipl__sound
t1 :- catch(( catch(throw(f(1)), f(Z), true), throw(done) ), done, true), ( var(Z) -> write(t1_unbound) ; write(t1_bound(Z)) ), nl.
t2 :- ( member(A, [1,2,3]), catch(throw(f(A)), f(Z), true), Z == 2 -> write(t2(Z)) ; write(t2_none) ), nl.
t3 :- ( catch(throw(f(1)), f(Z), true), fail ; var(Z), write(t3_unbound_after_fail) ), nl.
t4 :- catch(( catch(( catch(throw(g(1)), g(W), true), throw(h(W)) ), h(V), ( V == 1 -> throw(i(V)) ; true ) ) ), i(U), true ), ( var(W) -> write(t4_w_unbound) ; write(t4_w(W)) ), write(u(U)), nl.
t5 :- X = f(_), catch(throw(k(2)), k(A), true), X = f(A), write(t5(X)), nl.
t6 :- ( catch(throw(f(1)), f(Z), true), Z == 1, throw(again) ; true ), write(t6_reached), nl.
t7 :- catch(( member(A, [1,2]), catch(throw(f(A)), f(Z), true), Z >= 2, throw(found(Z)) ), found(R), true), write(t7(R)), nl.
t8 :- ( catch(( catch(throw(f(1)), f(Z), true), Z == 2 ), _, true) -> write(t8_yes) ; write(t8_no) ), nl.
:- forall(member(G, [t1,t2,t3,t4,t5,t6,t7,t8]), ( catch(G, E, (write(G-E), nl)) -> true ; write(G-failed), nl )).
%----------- 34 test_gate_pl_a_choice_inside_a_dynamic_clause_body_is_retried__g
:- initialization(main).
:- dynamic(a/1).
a(X) :- ( X = 1 ; X = 2 ), !.
a(z).
:- dynamic(b/1).
b(X) :- ( between(1,3,X) -> true ; X = none ).
b(z).
:- dynamic(c/1).
c(X) :- \+ ( X == q ; fail ), ( X = 1 ; X = 2 ; X = 3 ).
c(z).
:- dynamic(d/2).
d(X,Y) :- ( X = 1 ; X = 2 ), ( Y = p ; Y = q ).
d(z,z).
:- dynamic(e/1).
e(X) :- between(1,2,X), ( true ; X > 5 ).
e(z).
:- dynamic(f/1).
f(X) :- once(( X = 1 ; X = 2 )).
f(z).
:- dynamic(g/1).
g(1). g(2). g(3).
:- dynamic(h/1).
h(X) :- ( X = 1 ; X = 2 ).
:- dynamic(i/1).
i(X) :- ( X = 1 ; X = 2 ; X = 3 ), X >= 2.
i(z).
:- dynamic(j/1).
j(a) :- ( true ; write(j_alt), nl ).
j(b).
s(N, G) :- write(N), write(':'), ( call(G), write(' '), write(G), fail ; true ), nl.
:- dynamic(m/1).
m(X) :- between(1,3,X).
m(z).
:- dynamic(n/1).
n(X) :- repeat, nb_getval(c,N), N1 is N+1, nb_setval(c,N1), X = N1, (N1 >= 2 -> ! ; true).
n(z).
:- dynamic(o/1).
o(X) :- member(X,[p,q]).
o(z).
main :-
  s(a, a(_)), s(b, b(_)), s(c, c(_)), s(d, d(_,_)), s(e, e(_)), s(f, f(_)), s(g, g(_)), s(h, h(_)), s(i, i(_)),
  assertz((k(X) :- ( X = 1 ; X = 2 ))), assertz(k(z)), s(k, k(_)),
  ( h(X1), X1 == 1 -> write(first(X1)) ; write(none) ), nl,
  findall(X2, j(X2), L), write(L), nl,
  ( j(X3), X3 == a, retract((j(a) :- _)), fail ; true ), findall(X4, j(X4), L2), write(L2), nl,
  s(m, m(_)), nb_setval(c,0), s(n, n(_)), s(o, o(_)),
  halt.
%- 35 test_gate_pl_a_clause_built_at_run_time_calls_the_programs_own_print_2_not_the_builtin_in_mode_4__a1
:- use_module(library(lists)).
print(N,M) :- write(N-M), nl.
main :- assertz((t :- print(2,0))), t.
:- initialization(main).
%- 36 test_gate_pl_a_clause_built_at_run_time_calls_the_programs_own_print_2_not_the_builtin_in_mode_4__a2
:- use_module(library(lists)).
test :- print(2,0), fail.
test.
print(N,M) :- write(N-M), nl, fail.
zz :- listing(foo/1).
run(G) :- catch(ignore(G), E, (write(caught(E)), nl)).
:- initialization(run(test)).
%----- 37 test_gate_pl_a_clause_lowered_at_run_time_reads_a_live_program_tree__w
'$s'(1). '$s'(2). '$s'(3).
p(X) :- clause('$s'(X), true).
:- initialization(main).
main :- G = p(_), clause(G, B), write(B), nl, findall(X, p(X), L), write(L), nl.
%----- 38 test_gate_pl_a_clause_retry_reseeds_only_the_frames_own_local_cells__w
:- initialization(main).
main :- Nil = black('',_,_,''), insert(Nil, 1, a, Nil, T1), write(t1(T1)), nl, insert(T1, 2, b, Nil, T2), write(t2(T2)), nl.
insert(Tree0,Key,Val,Nil,Tree) :-
    insert2(Tree0,Key,Val,Nil,TreeI,_),
    fix_root(TreeI,Tree).
insert2(black('',_,_,''), K, V, Nil, T, Status) =>
    T = red(Nil,K,V,Nil),
    Status = not_done.
insert2(black(L,K0,V0,R), K, V, Nil, NT, Flag) =>
    (   K @< K0
    ->  insert2(L, K, V, Nil, IL, Flag0),
        fix_left(Flag0, black(IL,K0,V0,R), NT, Flag)
    ;   K == K0
    ->  NT = black(L,K0,V,R),
        Flag = done
    ;   insert2(R, K, V, Nil, IR, Flag0),
        fix_right(Flag0, black(L,K0,V0,IR), NT, Flag)
    ).
fix_root(black(L,K,V,R), Root) => Root = black(L,K,V,R).
fix_root(red(L,K,V,R), Root) => Root = black(L,K,V,R).
fix_left(done,T0,T,Done) => T = T0, Done = done.
fix_right(done,T0,T,Done) => T0 = T, Done = done.
fix_right(not_done,Tmp,Final,Done) =>
    fix_right(Tmp,Final,Done).
fix_right(black(red(Ep,KD,VD,De),KC,VC,red(red(Ga,KB,VB,Be),KA,VA,Al)),
          red(black(Ep,KD,VD,De),KC,VC,black(red(Ga,KB,VB,Be),KA,VA,Al)),
          not_done) :- !.
fix_right(T,T,done).
%- 39 test_gate_pl_a_clause_with_a_cut_then_a_disjunction_retries_when_the_program_links_setup_call_cleanup__a0
mm(X) :- !, (X = g ; X = i).
:- initialization(((mm(X), write(X), nl, fail ; true), write(done), nl, halt)).
%- 40 test_gate_pl_a_clause_with_a_cut_then_a_disjunction_retries_when_the_program_links_setup_call_cleanup__a1
mm(X) :- !, (X = g ; X = i).
unused :- setup_call_cleanup(true, true, true).
:- initialization(((mm(X), write(X), nl, fail ; true), write(done), nl, halt)).
%- 41 test_gate_pl_a_clause_with_a_cut_then_a_disjunction_retries_when_the_program_links_setup_call_cleanup__a2
mm(X) :- !, (X = g ; X = i).
:- initialization((with_output_to(string(S), forall(mm(X), write(X))), write(S), nl, halt)).
%- 42 test_gate_pl_a_clpfd_program_compiles_in_seconds_not_minutes_the_bound_spine_decision_is_not_quadratic__c
:- use_module(library(clpfd)).
:- initialization(main).
main :- X in 1..5, X #> 3, label([X]), write(X), nl.
%- 43 test_gate_pl_a_consulted_file_loads_at_its_directive_so_its_goals_run_before_the_includers_later_ones_as_swipl__h
:- writeln(h1).
hp(1).
:- initialization(writeln(h_init)).
:- initialization((hp(X), writeln(hp(X)))).
%- 44 test_gate_pl_a_consulted_file_loads_at_its_directive_so_its_goals_run_before_the_includers_later_ones_as_swipl__m
:- writeln(m1).
:- ensure_loaded(h).
:- initialization(writeln(m_init)).
:- initialization((hp(X), writeln(m_hp(X)))).
%- 45 test_gate_pl_a_cut_inside_a_control_goal_held_in_a_variable_cuts_to_the_call__w
:- initialization(main).
main :-
    G1 = (member(A, [1,2,3]), (A >= 2 -> ! ; true)), findall(A, G1, L1), writeq(then_cut(L1)), nl,
    G2 = (member(B, [1,2,3]), (B >= 2, ! ; true)), findall(B, call(G2), L2), writeq(arm_cut(L2)), nl,
    findall(N, (G3 = (length(_, N), (N >= 2 -> ! ; true)), call(G3)), L3), writeq(generator_cut(L3)), nl,
    G4 = (member(C, [1,2,3]), (C >= 2 -> true ; !)), findall(C, G4, L4), writeq(else_cut(L4)), nl,
    G5 = (member(D, [1,2,3]), (D >= 2 -> ! ; true)), forall(call(G5), (write(D), write(' '))), nl,
    G6 = (member(E, [1,2,3]), \+ \+ !), findall(E, G6, L6), writeq(negation_keeps_cut_local(L6)), nl,
    G7 = (member(F, [1,2,3]), true ; F = 0), findall(F, G7, L7), writeq(cut_free_keeps_all(L7)), nl,
    halt.
%----------------------- 46 test_gate_pl_a_cut_redo_reaches_its_own_barrier__cut
:- initialization(main).
mem(M,[M|_]).
mem(M,[_|T]) :- mem(M,T).
c1 :- mem(X,[1,2]), write(X), (true -> ! ; true), fail.
c1 :- write(c1b).
c2 :- mem(X,[1,2]), write(X), (! ; true), fail.
c2 :- write(c2b).
c3(X) :- (true -> (X = 1 ; X = 2, !) ; true).
c4(X) :- catch((mem(X,[1,2,3]), (X >= 2, ! ; true)), _, true).
c5(X) :- (mem(X,[1,2,3]) *-> (X >= 2, ! ; true) ; true).
c6 :- mem(X,[a,b]), write(X), (fail ; !), fail.
c6 :- write(c6b).
t(G) :- ( catch(G, E, (write(ex(E)), fail)) -> true ; write(' no') ), nl.
main :- t(c1), t(c2), findall(X, c3(X), L3), write(L3), nl,
        findall(X, c4(X), L4), write(L4), nl,
        findall(X, c5(X), L5), write(L5), nl, t(c6).
%------------------- 47 test_gate_pl_a_cyclic_term_hashes_in_finite_time__w_acyc
main :- term_hash(f(a, [1, 2|g(x)], 3.5), H1), term_hash(f(a, [1, 2|g(x)], 3.5), H2), term_hash(f(a, [1, 2|g(y)], 3.5), H3),
        ( H1 == H2 -> write(same) ; write(differ) ), nl, ( H1 == H3 -> write(same) ; write(differ) ), nl, term_hash(_, U), ( var(U) -> write(unbound) ; write(bound) ), nl.
:- initialization(main).
%-------------------- 48 test_gate_pl_a_cyclic_term_hashes_in_finite_time__w_cyc
main :- X = f(X), write(a), nl, term_hash(X, T), write(b), nl, ( integer(T) -> write(ok) ; write(no) ), nl,
        L = [a|L], term_hash(L, T2), ( integer(T2) -> write(ok2) ; write(no2) ), nl,
        Y = g(1, Z, h(Y)), Z = k(Y), term_hash(Y, T3), ( integer(T3) -> write(ok3) ; write(no3) ), nl.
:- initialization(main).
%------- 49 test_gate_pl_a_directive_name_before_an_infix_operator_is_an_atom__b
:- dynamic foo/1.
:- dynamic bar/1, baz/2.
:- dynamic((qux/1, quux/1)).
:- multifile m1/1.
foo(1).
bar(2).
baz(3, 4).
qux(5).
quux(6).
:- initialization(main).
main :- foo(A), bar(B), baz(C, D), qux(E), quux(F), write([A, B, C, D, E, F]), nl,
    assertz(bar(7)), findall(X, bar(X), L), write(L), nl,
    ( m1(_) -> write(m1_true) ; write(m1_fails) ), nl,
    retract(foo(1)), ( foo(_) -> write(foo_left) ; write(foo_gone) ), nl.
%- 50 test_gate_pl_a_dynamic_clause_with_a_disjunction_then_an_if_then_else_then_fail_retries_the_disjunction__a0
t :- (fail ; true), (true -> write(a) ; write(b)), fail.
t :- writeln(end).
:- initialization((t, halt)).
%- 51 test_gate_pl_a_dynamic_clause_with_a_disjunction_then_an_if_then_else_then_fail_retries_the_disjunction__a1
:- dynamic t/0.
t :- (fail ; true), (true -> write(a) ; write(b)), fail.
t :- writeln(end).
:- initialization((t, halt)).
%- 52 test_gate_pl_a_dynamic_clause_with_a_disjunction_then_an_if_then_else_then_fail_retries_the_disjunction__a2
:- dynamic t/0.
:- initialization(main).
main :- assertz((t :- (fail ; true), (true -> write(a) ; write(b)), fail)), assertz((t :- writeln(end))), t, halt.
%- 53 test_gate_pl_a_dynamic_predicate_of_ground_facts_asserts_without_a_code_fragment_and_answers_as_swipl__dp
:- dynamic t/2, u/1, w/2, e/1, nd/1, r2/1, big/2.
show(G) :- ( findall(G, G, L) -> \+ \+ ( numbervars(L, 0, _), write(L) ) ; write(none) ), nl.
:- assertz(t(1, a)), assertz(t(2, b)), asserta(t(0, z)), assertz(t(2, bb)).
:- show(t(_, _)).
:- show(t(2, _)).
:- show(t(_, b)).
:- show(t(7, _)).
:- setup_call_cleanup(true, t(1, _), ( write(det_cleanup_1), nl )).
:- setup_call_cleanup(true, t(2, _), ( write(det_cleanup_2), nl )), write(after_t2), nl, !.
:- setup_call_cleanup(true, t(0, _), ( write(det_cleanup_0), nl )).
:- assertz(u(g(1, 2))), assertz(u([a, b, c])), assertz(u(1.5)), assertz(u(-7)), assertz(u('A b')).
:- ( u(X), X = g(_, _), setarg(1, X, 99), write(changed(X)), nl, fail ; true ).
:- show(u(_)).
:- u(g(A, B)), write(A-B), nl.
:- show(u(g(1, _))).
:- show(u([a|_])).
:- show(u(-7)).
:- show(u(1.5)).
:- show(u(2.5)).
:- forall(t(K, _), assertz(t(K, new))).
:- show(t(2, _)).
:- forall(retract(t(2, V)), ( write(r(V)), nl )).
:- show(t(_, _)).
:- assertz(w(1, a)), assertz(w(2, b)).
:- assertz(w(_, anyv)).
:- show(w(1, _)).
:- show(w(3, _)).
:- show(w(_, _)).
:- assertz(e(1)), assertz(e(2)), assertz(e(3)).
:- forall(e(X), ( X == 2 -> assertz(( e(Y) :- Y = rule )) ; true )).
:- show(e(_)).
:- show(e(rule)).
:- show(e(2)).
:- assertz(r2(1)), assertz(r2(2)), retract(r2(1)), retract(r2(2)).
:- assertz(( r2(Z) :- Z = fromrule )).
:- show(r2(_)).
:- assertz(nd(1)), retractall(nd(_)), assertz(nd(2)), assertz(nd(3)), show(nd(_)).
:- show(nd(3)).
:- retractall(nd(2)), show(nd(_)).
:- forall(between(1, 30, I), ( J is I * I, assertz(big(I, J)) )).
:- show(big(30, _)).
:- show(big(_, 100)).
:- retract(big(30, _)), show(big(30, _)).
:- assertz(big(31, 961)), show(big(31, _)).
:- clause(big(5, X), B), write(X-B), nl.
:- aggregate_all(count, big(_, _), N), write(N), nl.
:- dynamic fa/1, fb/2, fc/1.
:- assertz(fa(1)), assertz(fa(2)), assertz(fa(3)).
:- ( freeze(X, ( write(woke(X)), nl )), fa(X), write(got(X)), nl, fail ; true ).
:- dif(X, 2), findall(X, fa(X), L), write(L), nl.
:- freeze(X, X > 1), findall(X, fa(X), L), write(L), nl.
:- assertz(fb(a, 1)), assertz(fb(b, 2)), assertz(fb(a, 3)).
:- catch(( fb(a, X), X > 2, write(x(X)), nl ), E, ( write(E), nl )).
:- forall(fb(K, V), ( write(K-V), nl )).
:- findall(K-V, ( fb(K, V), V > 1 ), L), write(L), nl.
:- bagof(V, fb(a, V), L), write(L), nl.
:- aggregate_all(count, fb(a, _), C), write(C), nl.
:- aggregate_all(sum(V), fb(_, V), S), write(S), nl.
:- setof(K, V^fb(K, V), L), write(L), nl.
:- ( \+ fb(c, _) -> write(no_c) ; write(c) ), nl.
:- ( fb(a, 3) -> write(yes) ; write(no) ), nl.
:- call(fb, b, W), write(w(W)), nl.
:- G = fb(a, Z), call(G), write(z(Z)), nl.
:- retract(fb(a, 1)), findall(V, fb(a, V), L), write(L), nl.
:- assertz(fc(f(X, Y))), write(unreachable), nl ; write(nonground_ok), nl.
:- fc(Q), write(Q), nl.
:- forall(between(1, 5, I), assertz(fb(k, I))), findall(V, fb(k, V), L), write(L), nl.
:- fb(k, 3), !, write(cut_ok), nl.
:- once(fb(k, V)), write(once(V)), nl.
:- \+ \+ ( fb(k, 4), write(inner), nl ).
:- length(L, 2), L = [fb(k, 5), fb(k, 1)], maplist(call, L), write(ok_maplist), nl.
%- 54 test_gate_pl_a_fact_table_that_gains_a_rule_compiles_no_slot_at_the_flip__cnt
:- dynamic f/1.
:- forall(between(1, 300, I), assertz(f(I))).
:- assertz((f(X) :- X = rule)).
:- retract(f(1)).
:- ( f(10) -> true ; true ).
:- retract(f(2)).
:- findall(X, f(X), L), length(L, N), write(N), nl.
:- retract(f(3)).
%- 55 test_gate_pl_a_fact_table_that_gains_a_rule_compiles_no_slot_at_the_flip__wit
:- dynamic f/1, g/2.
:- forall(between(1, 40, I), assertz(f(I))).
:- assertz((f(X) :- between(101, 102, X))).
:- asserta(f(0)).
:- retract(f(5)).
:- findall(X, f(X), L), length(L, N), write(N), nl.
:- f(101), write(yes101), nl.
:- ( f(103) -> write(yes103) ; write(no103) ), nl.
:- f(0), f(40), write(ends), nl.
:- forall(between(1, 40, I), ( J is I * 2, assertz(g(I, J)) )).
:- assertz((g(K, V) :- between(41, 45, K), V is K * 2)).
:- g(41, V), write(V), nl.
:- g(7, V), write(V), nl.
:- findall(K-V, ( g(K, V), K mod 20 =:= 0 ), L2), write(L2), nl.
:- assertz(g(50, odd)), findall(W, g(50, W), L3), write(L3), nl.
:- retract(f(1)), retract(f(2)), findall(X, ( f(X), X < 6 ), L4), write(L4), nl.
:- assertz((h(Z) :- Z = first)), assertz(h(second)), findall(Z, h(Z), L5), write(L5), nl.
%- 56 test_gate_pl_a_fact_with_a_user_1200_infix_operator_reads_as_swipl_reads_it__z
:- op(1200, xfx, ===>).
:- op(1200, xfy, ====>).
a ===> b.
c ===> (d, e).
p ====> q ====> r.
x :- true.
y.
main :- forall(clause(===>(X, Y), true), (writeq(X-Y), nl)), forall(clause(====>(X, Y), true), (write_canonical(X-Y), nl)), x, y, write(done), nl.
:- initialization(main).
%- 57 test_gate_pl_a_float_with_no_fraction_is_a_syntax_error_only_under_the_iso_flag__w
r(S) :- catch((read(S, X), (X == end_of_file -> true ; writeq(got(X)), nl, r(S))), error(syntax_error(_), _), (write(syntax_error), nl, r(S))).
t(G) :- catch((G -> writeq(G) ; write(failed)), error(syntax_error(_), _), write(syntax_error)), nl.
pass :- open('f.in', read, S), r(S), close(S),
        t(number_codes(_, "1e33")), t(number_chars(_, ['1','E','3'])), t(atom_to_term('1e33', _, _)), t(number_codes(_, "1.5e3")).
main :- write(default), nl, pass, set_prolog_flag(iso, true), write(iso), nl, pass.
:- initialization(main).
%- 58 test_gate_pl_a_fresh_variable_after_a_findall_over_a_multi_clause_predicate_keeps_its_cell_when_main_called_setup_call_cleanup__scc
v1(_).
v1(_).
t1 :- setup_call_cleanup(true, true, true), findall(x, v1(_), L), length(L, N), write(N), nl.
t2 :- setup_call_cleanup(true, true, true), findall(x, v1(_), L), N = foo, write(L-N), nl.
t3 :- setup_call_cleanup(true, true, true), findall(x, v1(_), L), copy_term(L, M), write(M), nl.
:- initialization(main).
main :- t1, t2, t3, halt.
%- 59 test_gate_pl_a_library_arms_the_wakeup_road_only_when_the_program_imports_it__data
:- initialization(main).
main :- T = label(_), functor(T, N, A), writeq(N/A), nl.
%- 60 test_gate_pl_a_library_arms_the_wakeup_road_only_when_the_program_imports_it__pio
:- use_module(library(pio)).
:- initialization(main).
main :- F = 'pio_null.txt', open(F, write, S), close(S),
    ( phrase_from_file("a", F) -> writeq(a-yes) ; writeq(a-no) ), nl,
    ( phrase_from_file([], F) -> writeq(empty-yes) ; writeq(empty-no) ), nl,
    delete_file(F).
%- 61 test_gate_pl_a_local_definition_overrides_the_weak_import_of_a_module_file_as_swipl__a
:- use_module(u).
bar(1).
main :- findall(X, bar(X), L), write(local(L)), nl, findall(Y, helper(Y), M), write(helper(M)), nl.
:- initialization(main).
%- 62 test_gate_pl_a_local_definition_overrides_the_weak_import_of_a_module_file_as_swipl__c
:- use_module(u).
:- multifile bar/1.
bar(1).
main :- findall(X, bar(X), L), write(mf(L)), nl.
:- initialization(main).
%- 63 test_gate_pl_a_memory_limit_is_a_catchable_resource_error_for_length_numlist_and_the_trail_arena_answers_as_swipl__t
:- initialization(main).
main :- catch((length(L, 5000000), (true ; true), maplist(=(x), L), write(bound)), error(resource_error(_), _), write(caught)), nl, halt.
%- 64 test_gate_pl_a_memory_limit_is_a_catchable_resource_error_for_length_numlist_and_the_trail_arena_answers_as_swipl__w
:- use_module(library(lists)).
:- initialization(main).
t(T, G) :- catch((call(G) -> \+ \+ (numbervars(T, 0, _), writeq(T)) ; writeq(no)), error(E, _), \+ \+ (numbervars(E, 0, _), writeq(caught(E)))), nl.
main :-
    t(E1, catch(length(_, 100000000), error(E1, _), true)),
    t(E2, catch((length(L2, 100000000), L2 = [_|_]), error(E2, _), true)),
    t(E3, (current_prolog_flag(stack_limit, Old3), set_prolog_flag(stack_limit, 1000000), catch((numlist(1, 100000, L3), L3 = [_|_], length(L3, _)), error(E3, _), true), set_prolog_flag(stack_limit, Old3))),
    t(L4, (length(L4, 3), L4 = [a|_])),
    t(L5, numlist(1, 5, L5)),
    t(L6, (length(L6, 0))),
    t(N7, (length(L7, 7), length(L7, N7))),
    t(yes, (current_prolog_flag(stack_limit, X8), integer(X8))),
    t(E9, (current_prolog_flag(stack_limit, Old), set_prolog_flag(stack_limit, 1000000), catch(length(_, 100000), error(E9, _), true), set_prolog_flag(stack_limit, Old))),
    t(N10, (length(L10, 10000), length(L10, N10))),
    t(L11, (numlist(5, 1, L11))),
    t(E12, catch(length(_, -1), error(E12, _), true)),
    t(E13, catch(length(_, a), error(E13, _), true)),
    t(E14, catch(numlist(a, 3, _), error(E14, _), true)), t(E15, catch(numlist(1, b, _), error(E15, _), true)), t(E16, catch(numlist(_, 3, _), error(E16, _), true)), t(L17, numlist(3, 3, L17)).
%-------- 65 test_gate_pl_a_meta_called_format_reads_its_empty_argument_list__fm
:- initialization(main).
t(G) :- catch(call(G), E, (write(raised(E)), nl)).
main :- format("a~n", []), X = format("b~n", []), t(X), G = format("d ~w~n", [1]), t(G), t(call(format, "e~n", [])), Z = format('f~n', []), t(Z).
%------------- 66 test_gate_pl_a_module_qualified_goal_runs_its_goal_as_swipl__g
:- initialization(main).
p(1). p(2).
r(X, Y) :- Y is X * 10.
q(M, G) :- findall(X, call(M:G, X), L), write(L), nl.
t(G) :- catch((G -> write(yes) ; write(no)), error(E, _), write(E)), nl.
main :-
  findall(X, user:p(X), L), write(L), nl,
  G = p(Y), call(user:G), write(Y), nl,
  q(user, p),
  lists:append([a], [b], Z), write(Z), nl,
  call(user:r, 4, R), write(R), nl,
  t(user:p(2)), t(user:p(3)),
  t(user:user:p(1)),
  t(call(_:p(1))),
  t(\+ user:p(3)),
  forall(user:p(V), (write(V), nl)),
  M = user, t(M:p(1)),
  halt.
%- 67 test_gate_pl_a_negative_unbounded_integer_literal_reads_as_its_own_value__ctl
:- initialization(main).
main :-
    F = 123456789012345678901234567890, write(f(F)), nl,
    G is -(123456789012345678901234567890), write(g(G)), nl,
    H = -42, write(h(H)), nl,
    I = -9223372036854775807, write(i(I)), nl,
    J is 2 + 3, write(j(J)), nl,
    halt.
%- 68 test_gate_pl_a_negative_unbounded_integer_literal_reads_as_its_own_value__neg
:- initialization(main).
main :-
    A = -9223372036854775808, write(a(A)), nl,
    B = -123456789012345678901234567890, write(b(B)), nl,
    C is -123456789012345678901234567890 * 2, write(c(C)), nl,
    ( integer(-9223372036854775808) -> write(d(yes)) ; write(d(no)) ), nl,
    E is -9223372036854775808, write(e(E)), nl,
    halt.
%- 69 test_gate_pl_a_number_in_unicode_digits_or_digit_groups_converts_as_swipl__g
:- initialization(main).
main :- ( catch(atom_number('1_2', N), _, fail) -> write(N) ; write(no) ), nl, halt.
%- 70 test_gate_pl_a_number_in_unicode_digits_or_digit_groups_converts_as_swipl__w
:- initialization(main).
t(A) :- ( catch(atom_number(A, N), _, fail) -> writeq(N) ; writeq(no) ), nl.
main :- forall(member(A, ['٠١٢٣٤٥٦٧٨٩', '١2', '1٢', '١٢.٣٤', '-١٢', '+١٢', '١٢e٣', '١٢.٥e-٣', '١r٣', '۱۲', '١۲', '१२', '٠x١', ' ١٢', '١_٢', '１２',
                          '1_2', '1_000_000', '-1_0', '1_2.5', '12_', '_12']), t(A)),
        number_codes(C, `٠١٢٣٤٥٦٧٨٩`), writeq(C), nl,
        number_string(S1, "-١٢.٣٤٥٦٧e٨٩"), writeq(S1), nl,
        number_string(S2, "-١٢.٣٤٥٦٧e-٨٩"), writeq(S2), nl,
        halt.
%- 71 test_gate_pl_a_pipe_stream_has_a_position_as_swipl_and_phrase_from_file_reads_standard_input_through_it__pos
:- open('/dev/stdin', read, S), stream_property(S, position(P0)), writeln(P0), get_char(S, C), writeln(C), stream_property(S, position(P1)), writeln(P1),
   read_line_to_string(S, L), writeln(L), stream_property(S, position(P2)), writeln(P2), close(S).
%- 72 test_gate_pl_a_predicate_with_more_than_64_clauses_keeps_every_clause__assertz100
:- initialization(main).
:- dynamic(f/2).
fill(0) :- !.
fill(N) :- K is N * 7, assertz(f(N, K)), N1 is N - 1, fill(N1).
main :- fill(100), findall(x, f(_, _), L), length(L, C), write(C), nl, ( f(1, K) -> write(K) ; write(none) ), nl, ( f(36, K2) -> write(K2) ; write(none) ), nl,
        findall(N, (f(N, V), V < 60), L2), write(L2), nl, halt.
%---- 73 test_gate_pl_a_predicates_frame_overlays_its_clauses_construct_slots__g
:- initialization(main).
p(N, R) :- ( N > 0 -> L1 = [a, b, c, N] ; L1 = [] ), ( atom(L1) -> L2 = L1 ; L2 = f(L1, L1) ), mk(50, _), N < 0, R = L2.
p(N, R) :- ( N > 1 -> M = g(N, [x, y]) ; M = h ), ( M = g(_, _) -> R = ok(M) ; R = no ), mk(100, _).
p(_, last).
mk(0, []) :- !.
mk(K, [K-x|T]) :- K1 is K - 1, mk(K1, T).
main :- forall(between(1, 200, I), ( p(I, R), ( I =:= 200 -> write(R), nl ; true ) )), halt.
%-------- 74 test_gate_pl_a_prefix_operator_wins_the_write_over_a_postfix_one__w
o(1). o(2). o(3).
main :- ( op(555, fx, o), o(X), write(o(X)), nl, op(555, xf, o), fail ; true ), write(o(9)), nl,
        op(0, fx, o), write(o(9)), nl.
:- initialization(main).
%----- 75 test_gate_pl_a_prelude_dcg_rule_reaches_the_program_that_calls_it__own
:- initialization(main).
utf8_codes([own|T]) --> [_], !, utf8_codes(T).
utf8_codes([]) --> [].
main :- phrase(utf8_codes(L), [1,2]), writeq(L), nl, halt.
%----- 76 test_gate_pl_a_prelude_dcg_rule_reaches_the_program_that_calls_it__pre
:- initialization(main).
main :- ( catch(phrase(utf8_codes(L), [104,195,169]), E, (writeq(E), nl, fail)) -> writeq(L) ; writeq(no) ), nl,
        ( catch(phrase(sequence(digit, Ds), [49,50]), E2, (writeq(E2), nl, fail)) -> writeq(Ds) ; writeq(no) ), nl, halt.
digit(D) --> [D].
%- 77 test_gate_pl_a_program_that_links_setup_call_cleanup_compiles_and_links_a_predicate_of_three_unit_clauses_in_mode_4__scc
v1(_).
v1(_).
v1(_).
v2(_, _).
v2(_, _).
v2(_, _).
unused :- setup_call_cleanup(true, true, true).
:- initialization(main).
main :-
    findall(x, v1(_), L1), length(L1, N1), write(N1), nl,
    findall(x, v2(_, _), L2), length(L2, N2), write(N2), nl,
    halt.
%- 78 test_gate_pl_a_program_with_more_than_64_dynamic_declarations_keeps_every_one__g300
:- initialization(main).
nm(P, K, F) :- number_codes(K, Cs), atom_codes(A, Cs), atom_concat(P, A, F).
main :- forall(between(0, 299, K), (nm(g, K, N), nb_setval(N, K))), nb_getval(g0, A), write(A), nl, nb_getval(g299, B), write(B), nl, nb_getval(g150, C), write(C), nl.
%- 79 test_gate_pl_a_program_with_more_than_64_dynamic_declarations_keeps_every_one__r300
:- initialization(main).
nm(P, K, F) :- number_codes(K, Cs), atom_codes(A, Cs), atom_concat(P, A, F).
main :- forall(between(0, 299, K), (nm(r, K, F), T =.. [F, K], assertz(T))), nm(r, 0, F0), G0 =.. [F0, A], call(G0), write(A), nl, nm(r, 299, F9), G9 =.. [F9, B], call(G9), write(B), nl, aggregate_all(count, (between(0, 299, K2), nm(r, K2, Fk), Gk =.. [Fk, _], call(Gk)), C), write(C), nl.
%--------------- 80 test_gate_pl_a_programs_dialect_follows_its_own_markers__gnu
:- initialization(main).
main :- X = "ab", ( is_list(X) -> write(codes) ; write(other) ), nl,
  current_prolog_flag(double_quotes, F), write(F), nl,
  display(f('A b', 1+2, -(x))), nl, halt.
%--------------- 81 test_gate_pl_a_programs_dialect_follows_its_own_markers__swi
:- use_module(library(lists)).
:- initialization(main).
main :- X = "ab", ( string(X) -> write(string) ; is_list(X) -> write(codes) ; write(other) ), nl,
  current_prolog_flag(double_quotes, F), write(F), nl,
  display(f('A b', 1+2, -(x))), nl,
  string_concat(X, "c", Y), write(Y), nl, halt.
%---------------------- 82 test_gate_pl_a_quoted_atom_doubles_its_apostrophe__rt
:- initialization(main).
main :- A = 'it''s', open('rtq.txt', write, S), writeq(S, A), write(S, '.'), nl(S), close(S),
	open('rtq.txt', read, R), read(R, B), close(R),
	( A == B -> write(user_output, '@roundtrip_ok@') ; write(user_output, '@roundtrip_broken@'), writeq(user_output, B) ), nl(user_output).
%- 83 test_gate_pl_a_read_before_a_column_stop_carries_the_input_column_on_a_pipe_as_on_a_file__z
t :- read(_), read(_), format('~w ~8|is ~d~n', [ab, 1]), format('~w ~8|is ~d~n', [ab, 2]).
:- initialization(t).
%- 84 test_gate_pl_a_rule_clause_assert_retract_loop_reuses_the_code_pool_pages_and_leaves_no_stale_site_block__r
:- initialization(main).
:- dynamic(pr/3).
loop(0) :- !.
loop(N) :- ( retract((pr(a, 1, M) :- M >= 0)) -> true ; M = 0 ), M1 is M + 1, assertz((pr(a, 1, M1) :- M1 >= 0)), N1 is N - 1, loop(N1).
main :- loop(4000), pr(a, 1, V), write(V), nl, halt.
%- 85 test_gate_pl_a_rule_clause_assert_retract_loop_reuses_the_code_pool_pages_and_leaves_no_stale_site_block__s
:- initialization(main).
:- dynamic(pr/3).
put(0, M) :- assertz((pr(a, 1, M) :- M >= 0)).
put(1, M) :- assertz((pr(a, 1, M) :- M >= 0, atom(a), integer(M), M < 100000000)).
put(2, M) :- assertz((pr(a, 1, M) :- ( M > 5 -> true ; M >= 0 ), M1 is M + 1, M1 > 0)).
drop :- ( clause(pr(a, 1, _), _, R) -> erase(R) ; true ).
loop(N, N) :- !.
loop(I, N) :- drop, K is I mod 3, M is I + 1, put(K, M), I1 is I + 1, loop(I1, N).
main :- loop(0, 120), pr(a, 1, 120), write(done), nl, halt.
%- 86 test_gate_pl_a_run_time_clause_calling_a_predicate_created_by_assert_sees_every_clause__w
:- initialization(main).
c(A, T) :- term_to_atom(T, A).
main :- c('w1 :- assert(zz(a)), assert(zz(b)), assert(zz(c)), fail', W1), c('r1 :- findall(Y, zz(Y), L), write(L), nl', R1),
        c('w2 :- assert(yy(a)), assert(yy(b)), assert(yy(c)), fail', W2), c('r2 :- findall(Y, yy(Y), L), write(L), nl', R2),
        c('w3 :- assert(xx(a)), assert(xx(b)), assert(xx(c)), fail', W3), c('r3 :- findall(Y, xx(Y), L), write(L), nl', R3),
        assertz(W1), assertz(R1), ( w1 ; true ), r1,
        assertz(W2), ( w2 ; true ), assertz(R2), r2,
        assertz(R3), assertz(W3), ( w3 ; true ), r3,
        consult('two.pl'), t, halt.
%--- 87 test_gate_pl_a_shift_outside_the_int64_window_is_computed_not_wrapped__a
:- initialization(main).
main :-
    A is 123456789012345678901234567890 << 24, write(a(A)), nl,
    B is 2071261215926550121592655012157194240 >> 24, write(b(B)), nl,
    C is -123456789012345678901234567890 >> 4, write(c(C)), nl,
    D is 123456789012345678901234567890 << 0, write(d(D)), nl,
    halt.
%--- 88 test_gate_pl_a_shift_outside_the_int64_window_is_computed_not_wrapped__b
:- initialization(main).
main :-
    A is 1 << 64, write(a(A)), nl,
    B is 1 << 63, write(b(B)), nl,
    C is 3 << 62, write(c(C)), nl,
    D is -1 << 70, write(d(D)), nl,
    halt.
%--- 89 test_gate_pl_a_shift_outside_the_int64_window_is_computed_not_wrapped__c
:- initialization(main).
main :-
    A is 1 << (-2), write(a(A)), nl,
    B is 16 >> (-2), write(b(B)), nl,
    C is 123456789012345678901234567890 << (-4), write(c(C)), nl,
    D is 5 >> 200, write(d(D)), nl,
    E is -5 >> 200, write(e(E)), nl,
    halt.
%--- 90 test_gate_pl_a_shift_outside_the_int64_window_is_computed_not_wrapped__d
:- initialization(main).
main :-
    A is 12345 >> 3, write(a(A)), nl,
    B is -12345 >> 3, write(b(B)), nl,
    C is 1 << 62, write(c(C)), nl,
    D is 1024 >> 10, write(d(D)), nl,
    E is 1 << 10, ( E == 1024 -> write(e(narrow)) ; write(e(wide)) ), nl,
    halt.
%--- 91 test_gate_pl_a_shift_outside_the_int64_window_is_computed_not_wrapped__e
:- initialization(main).
main :-
    A is 123456789012345678901234567890 /\ 24, write(a(A)), nl,
    B is 123456789012345678901234567890 \/ 1, write(b(B)), nl,
    C is 123456789012345678901234567890 xor 1, write(c(C)), nl,
    D is gcd(123456789012345678901234567890, 24), write(d(D)), nl,
    E is 123456789012345678901234567890 // 10, write(e(E)), nl,
    halt.
%--- 92 test_gate_pl_a_shift_outside_the_int64_window_is_computed_not_wrapped__f
:- initialization(main).
main :-
    A is (1 << 100) >> 100, ( A == 1 -> write(a(round_trips)) ; write(a(A)) ), nl,
    B is (123456789012345678901234567890 << 37) >> 37,
    ( B == 123456789012345678901234567890 -> write(b(round_trips)) ; write(b(B)) ), nl,
    C is (1 << 100), D is C >> 99, write(c(D)), nl,
    E is 0 << 1000, write(e(E)), nl,
    halt.
%---- 93 test_gate_pl_a_syntax_error_costs_its_own_clause_and_not_the_file__body
a2(two).
a3(three).
:- initialization(( ( catch(a1(P), _, fail) -> write(p(P)) ; write(no_a1) ), nl,
                    ( catch(a2(Q), _, fail) -> write(q(Q)) ; write(no_a2) ), nl,
                    ( catch(a3(R), _, fail) -> write(r(R)) ; write(no_a3) ), nl )).
%- 94 test_gate_pl_a_table_that_depends_only_on_itself_completes_at_once_instead_of_once_per_leader_round_as_swipl__w
:- dynamic cnt/1.
cnt(0).
bump :- retract(cnt(N)), N1 is N + 1, assertz(cnt(N1)).
edge(a,b). edge(b,c). edge(c,a). edge(x,y).
:- table leader/1, reach/2.
reach(L, L).
reach(L, T) :- reach(L, T1), edge(T1, T).
leader(N) :- bump, member(N, [a,x]), reach(N, _).
:- table p/1, q/1, lead2/1.
p(1).
p(X) :- q(X).
q(X) :- p(Y), X is Y + 1, X < 4.
lead2(done) :- findall(X, p(X), Xs), findall(Y, q(Y), Ys), assertz(res2(Xs, Ys)).
:- dynamic res2/2.
:- table lead3/1, nest3/1, olda/1.
olda(1).
olda(X) :- nest3(Y), X is Y + 10, X < 14.
nest3(Y) :- olda(Z), Y is Z + 1, Y < 4.
lead3(X) :- olda(X).
:- table slead/2.
slead(X, Y) :- edge(X, Y).
slead(X, Y) :- slead(X, Z), edge(Z, Y).
main :- forall(leader(_), true), cnt(C), findall(T, reach(a,T), L), msort(L, S), write(count(C, S)), nl,
        forall(lead2(_), true), res2(Xs, Ys), msort(Xs, SX), msort(Ys, SY), write(mutual(SX, SY)), nl,
        findall(X, lead3(X), L3), msort(L3, S3), write(older(S3)), nl,
        findall(Y, slead(a, Y), L4), msort(L4, S4), write(self(S4)), nl,
        halt.
:- initialization(main).
%- 95 test_gate_pl_a_tabled_subgoal_deeper_than_max_table_subgoal_size_raises_the_tripwire_as_swipl__w
:- use_module(library(lists)).
:- table p/1, r/1, rr/1.
mk(0, 0) :- !.
mk(N, f(X)) :- N1 is N - 1, mk(N1, X).
rr(X) :- mk(30, X).
p(X) :- p(f(X)).
r(X) :- member(X, [a, f(a), f(f(a))]).
show(G) :- copy_term(G, G2), numbervars(G2, 0, _), writeq(G2).
t1 :- set_prolog_flag(max_table_subgoal_size, 4), set_prolog_flag(max_table_subgoal_size_action, error),
      catch(p(_), error(resource_error(tripwire(F, M:G)), _), (write(caught(F, M)), write(' '), show(G), nl)).
t2 :- abolish_all_tables, findall(X, r(X), L), msort(L, S), write(within(S)), nl.
t4 :- abolish_all_tables, set_prolog_flag(max_table_answer_size, 10), set_prolog_flag(max_table_answer_size_action, error),
      catch(rr(_), error(resource_error(tripwire(F, _)), _), (write(caught(F)), nl)).
t3 :- abolish_all_tables, set_prolog_flag(max_table_subgoal_size, infinite), findall(X, r(X), L), msort(L, S), write(unset(S)), nl.
:- initialization((t1, t2, t3, t4, halt)).
%- 96 test_gate_pl_a_thousand_asserted_clauses_cost_a_thousand_clause_compilations_not_a_million__w_flt
:- dynamic d/2.
main :- forall(between(1, 1000, I), (F is float(I), assertz(d(F, I)))), write(done1), nl, forall(between(1, 1000, I), (F is float(I), d(F, I2), I2 == I)), write(done2), nl, retractall(d(_, _)), ( d(_, _) -> write(left) ; write(empty) ), nl.
:- initialization(main).
%- 97 test_gate_pl_a_thousand_asserted_clauses_cost_a_thousand_clause_compilations_not_a_million__w_str
:- dynamic d/2.
main :- forall(between(1, 1000, I), (string_concat("a", I, D), assertz(d(D, I)))), write(done1), nl, forall(between(1, 1000, I), (string_concat("a", I, D), d(D, I2), I2 == I)), write(done2), nl.
:- initialization(main).
%------------- 98 test_gate_pl_a_thrown_ball_never_redoes_a_builtin_generator__w
:- initialization(main).
:- dynamic(f/1).
:- dynamic(g/1).
f(1). f(2). f(3).
g(1). g(2). g(3).
t(between) :- between(1, 3, X), write(X), nl, throw(x).
t(repeat) :- repeat, write(r), nl, throw(x).
t(sub_atom) :- sub_atom(abc, B, 1, _, S), write(B-S), nl, throw(x).
t(clause) :- clause(f(X), true), write(X), nl, throw(x).
t(atom_concat) :- atom_concat(A, B, ab), write(A+B), nl, throw(x).
t(between_throw_in_callee) :- between(1, 3, X), write(X), nl, thr.
t(between_undefined_callee) :- between(1, 3, X), write(X), nl, undefined_zz(X).
t(between_deep_callee) :- between(1, 3, X), write(X), nl, deep(X).
t(user_facts) :- g(X), write(X), nl, throw(x).
t(disjunction) :- (X = 1 ; X = 2 ; X = 3), write(X), nl, throw(x).
t(member) :- member(X, [a, b, c]), write(X), nl, throw(x).
t(retract) :- retract(f(X)), write(X), nl, throw(x).
t(redo_between) :- ( between(1, 3, X), write(X), nl, fail ; true ).
t(redo_repeat) :- flag_reset, repeat, bump(N), write(N), nl, N >= 3, !.
t(redo_sub_atom) :- ( sub_atom(abc, B, 1, _, S), write(B-S), nl, fail ; true ).
t(redo_clause) :- ( clause(g(X), true), write(X), nl, fail ; true ).
t(redo_atom_concat) :- ( atom_concat(A, B, ab), write(A+B), nl, fail ; true ).
t(redo_retract) :- assertz(h(1)), assertz(h(2)), ( retract(h(X)), write(X), nl, fail ; true ).
:- dynamic(h/1).
:- dynamic(cnt/1).
flag_reset :- retractall(cnt(_)), assertz(cnt(0)).
bump(N) :- retract(cnt(M)), N is M + 1, assertz(cnt(N)).
thr :- throw(x).
deep(X) :- X > 0, thr.
formal(error(F, _), F) :- !.
formal(B, B).
names([between, repeat, sub_atom, clause, atom_concat, between_throw_in_callee, between_undefined_callee, between_deep_callee, user_facts, disjunction, member, retract, redo_between, redo_repeat, redo_sub_atom, redo_clause, redo_atom_concat, redo_retract]).
main :- names(L), forall(member(N, L), (write(N), write(':'), nl, catch(t(N), E, (formal(E, F), write(caught(F)), nl)))), halt.
%- 99 test_gate_pl_a_write_to_a_binary_current_output_raises_permission_error__wb
:- initialization(main).
t(N, G) :- open('wb.bin', write, S, [type(binary)]), current_output(O), set_output(S),
    catch((call(G, S), R = ok), E, R = E), set_output(O), close(S),
    ( R = error(permission_error(A, B, _), _) -> write(N-perm(A, B)) ; write(N-R) ), nl.
w1(_) :- write(a).         w2(S) :- write(S, a).        q1(_) :- writeq(a).          p1(_) :- print(a).
c1(_) :- write_canonical(a). t2(_) :- write_term(a, []). t3(S) :- write_term(S, a, []). n1(S) :- nl(S).
f1(_) :- format("x", []).  f2(S) :- format(S, "x", []).
m(G, _) :- call(G).
main :- t(w1, w1), t(w2, w2), t(q1, q1), t(p1, p1), t(c1, c1), t(t2, t2), t(t3, t3), t(n1, n1), t(f1, f1), t(f2, f2),
        t(mw1, m(write(a))), t(mq1, m(writeq(a))), t(mn0, m(nl)), t(mf1, m(format("x", []))).
%--------------- 100 test_gate_pl_a_zero_arity_term_is_the_atom_in_both_modes__z
t(G) :- catch((G -> write(yes) ; write(no)), error(E, _), writeq(E)), nl.
main :- X = foo(), t(atom(X)), t(compound(X)), t(functor(X, _, _)), t(arg(1, X, _)), t(X == foo),
    t(compound_name_arity(X, _, _)), t(X =.. _),
    read_term_from_atom('bar()', T, []), t(atom(T)), t(compound(T)), t(T == bar), t(compound_name_arguments(T, _, _)).
:- initialization(main).
%- 101 test_gate_pl_abolishing_a_table_abolishes_the_tables_whose_conditional_answers_depend_on_it_as_swipl__g
:- initialization(main).
:- table undef/2, p01/2, p11/2, u1/2, q0/1, q1/1, q2/1, r0/1, r1/1.
undef(A,B):- tnot(undef(A,B)).
p01(A,B):- p11(A,B).
p11(A,B):- u1(A,B).
u1(A,B):- undef(A,B).
q0(X):- q1(X).
q1(X):- q2(X).
q2(1).
r0(X):- r1(X).
r1(X):- undef(X,X).
show(Tag):- findall(G, (current_table(user:G,_), ground(G)), L0), msort(L0, L), findall(x, (current_table(user:G,_), \+ ground(G)), V), length(V, NV), writeq(Tag-L-NV), nl.
err(G):- catch((G, writeq(no_error)), error(E,_), writeq(E)), nl.
main:- ( p01(a,b), fail ; p01(c,d), fail ; q0(_), fail ; r0(e), fail ; true ), show(before),
       abolish_table_subgoals(p11(a,b)), show(p11ab),
       abolish_table_call(q1(_)), show(q1),
       abolish_table_subgoals(u1(c,_), [abolish_tables_transitively]), show(u1c),
       abolish_table_pred(r1/1), show(r1),
       err(abolish_table_call(q0(_), [bad])), halt.
%- 102 test_gate_pl_an_arithmetic_function_directive_expands_the_later_clauses_with_no_use_module_line_as_swipl__a
:- use_module(library(lists)).
:- arithmetic_function(binomial/2).
binomial(N, K, R) :- R is N * K.
t(R) :- R is binomial(3, 4) + 1.
:- initialization((t(R), writeln(R))).
%- 103 test_gate_pl_an_if_directive_condition_reads_as_swipl_reads_it_and_the_reader_stops_at_end_of_file__w
:- module(w, []).
:- initialization(main).
defd(1).
:- if(current_predicate(defd/1)).
a(defd_seen).
:- else.
a(defd_missing).
:- endif.
:- if(current_predicate(later/0)).
b(later_seen).
:- else.
b(later_not_yet).
:- endif.
later.
:- if(current_predicate(atom_length/2)).
c(builtin).
:- else.
c(no_builtin).
:- endif.
:- if(current_predicate(nosuch_pred_xyz/1)).
d(nosuch_seen).
:- elif(\+ current_predicate(nosuch_pred_xyz/1)).
d(nosuch_absent).
:- endif.
:- if(current_prolog_flag(dialect, yap)).
e(yap).
:- elif(current_prolog_flag(dialect, swi)).
e(swi).
:- else.
e(other).
:- endif.
:- if(current_prolog_flag(version_data, swi(_, _, _, _))).
f(swi_version).
:- else.
f(other_version).
:- endif.
:- if((current_prolog_flag(bounded, false), \+ current_prolog_flag(no_such_flag_xyz, _))).
g(conj).
:- else.
g(noconj).
:- endif.
:- if((current_prolog_flag(bounded, true) -> fail ; true)).
h(ite).
:- else.
h(noite).
:- endif.
:- if(exists_source(library(assoc))).
i(assoc).
:- else.
i(no_assoc).
:- endif.
:- if(current_predicate(random_property/1)).
j(prelude).
:- else.
j(no_prelude).
:- endif.
main :- forall(member(G, [a(_), b(_), c(_), d(_), e(_), f(_), g(_), h(_), i(_), j(_)]), ((call(G) -> writeq(G) ; writeq(none(G))), nl)),
        ( catch(after_eof, _, fail) -> writeq(read_past_end_of_file) ; writeq(stopped_at_end_of_file) ), nl, halt.
end_of_file.
after_eof.
%------- 104 test_gate_pl_an_initialization_goal_may_contain_a_variable__control
a(1).
m :- a(X), write(x(X)), nl.
:- initialization(m).
:- initialization(a(1)).
:- initialization(write(tail)).
%------- 105 test_gate_pl_an_initialization_goal_may_contain_a_variable__subject
a(1).
:- initialization(( a(X), write(x(X)), nl )).
:- initialization(a(_)).
:- initialization(write(tail)).
%- 106 test_gate_pl_an_int64_overflow_promotes_to_the_bignum_core_instead_of_raising__a
:- initialization(main).
main :- X = -9223372036854775808,
    A is abs(X), write(a(A)), nl,
    B is -(X), write(b(B)), nl,
    C is X * -1, write(c(C)), nl,
    D is X // -1, write(d(D)), nl,
    E is 0 - X, write(e(E)), nl,
    halt.
%- 107 test_gate_pl_an_int64_overflow_promotes_to_the_bignum_core_instead_of_raising__b
:- initialization(main).
main :-
    A is 9223372036854775807 + 1, write(a(A)), nl,
    B is 9223372036854775807 * 9223372036854775807, write(b(B)), nl,
    C is -9223372036854775807 - 10, write(c(C)), nl,
    D is 4611686018427387904 * 4, write(d(D)), nl,
    halt.
%- 108 test_gate_pl_an_int64_overflow_promotes_to_the_bignum_core_instead_of_raising__c
:- initialization(main).
main :-
    succ(9223372036854775807, A), write(a(A)), nl,
    plus(9223372036854775807, 1, B), write(b(B)), nl,
    halt.
%- 109 test_gate_pl_an_int64_overflow_promotes_to_the_bignum_core_instead_of_raising__d
:- initialization(main).
main :- X = -9223372036854775808,
    A is sign(X), write(a(A)), nl,
    B is X + 1, write(b(B)), nl,
    ( X < 0 -> write(c(yes)) ; write(c(no)) ), nl,
    halt.
%- 110 test_gate_pl_an_int64_overflow_promotes_to_the_bignum_core_instead_of_raising__e
:- initialization(main).
main :-
    A is 2 + 2, write(a(A)), nl,
    B is 7 // 2, write(b(B)), nl,
    C is -7 // 2, write(c(C)), nl,
    D is 7 mod -2, write(d(D)), nl,
    E is abs(-5), write(e(E)), nl,
    F is 0 - 5, write(f(F)), nl,
    G is 6 * 7, write(g(G)), nl,
    ( integer(42) -> write(h(yes)) ; write(h(no)) ), nl,
    succ(3, I), write(i(I)), nl,
    plus(3, 4, J), write(j(J)), nl,
    halt.
%- 111 test_gate_pl_an_int64_overflow_promotes_to_the_bignum_core_instead_of_raising__f
:- initialization(main).
main :-
    A is 123456789012345678901234567890 * 2, write(a(A)), nl,
    B is -123456789012345678901234567890, write(b(B)), nl,
    C is 123456789012345678901234567890 // 123456789012345678901234567890, write(c(C)), nl,
    halt.
%- 112 test_gate_pl_an_int64_overflow_promotes_to_the_bignum_core_instead_of_raising__g
:- initialization(main).
main :-
    succ(123456789012345678901234567890, A), write(a(A)), nl,
    succ(B, 123456789012345678901234567891), write(b(B)), nl,
    plus(123456789012345678901234567890, 1, C), write(c(C)), nl,
    plus(123456789012345678901234567890, D, 987654321098765432109876543210), write(d(D)), nl,
    plus(E, 1, 123456789012345678901234567890), write(e(E)), nl,
    ( succ(X, 0) -> write(f(X)) ; write(f(fail)) ), nl,
    halt.
%- 113 test_gate_pl_an_opaque_goal_barrier_releases_the_frame_its_goal_carved__1
:- initialization(main).
q(1).
q(2).
r(_).
p(0) :- !.
p(N) :- N > 0, $2, N1 is N - 1, p(N1).
main :- ( p($N) -> write(ok) ; write(no) ), nl.
%- 114 test_gate_pl_an_opaque_goal_barrier_releases_the_frame_its_goal_carved__safety
:- initialization(main).
q(1).
q(2).
cp(0) :- !.
cp(N) :- N > 0, q(_), N1 is N - 1, cp(N1).
on(0) :- !.
on(N) :- N > 0, once(q(_)), N1 is N - 1, on(N1).
cnt(G, C) :- findall(x, G, L), length(L, C).
main :- cnt(cp(3), A), cnt(on(3), B), write(cp(A)), write(' '), write(once(B)), nl.
%------------------- 115 test_gate_pl_an_operator_atom_operand_is_bracketed__wop
main :- write((<)/(>)), nl, writeq((:-)/2), nl, writeq(- (-)), nl, writeq(1 - (-)), nl, writeq((-) - 1), nl, writeq(a = (\+)), nl,
        writeq([-, +]), nl, writeq(f(:-, <)), nl, write(a+b), nl, writeq(- - a), nl, writeq((a :- b)), nl.
:- initialization(main).
%- 116 test_gate_pl_an_unbounded_integer_is_an_integer_to_arg_functor_and_format__w
t(G) :- catch((G -> write(yes) ; write(no)), error(E, _), (E = representation_error(_) -> write(representation_error) ; write(E))), nl.
main :- B is 2^150, N is -(2^150), t(arg(B, t(1,2,3), _)), t(arg(N, t(1,2,3), _)), t(functor(_, t, B)), t(functor(_, t, N)),
        t(format("~d", [B])), t(format("~2d", [B])), t(format("~D", [B])), t(format("~d", [N])), t(format("~2d", [314])).
:- initialization(main).
%- 117 test_gate_pl_an_unbounded_integer_is_an_integer_to_arg_functor_and_sub_atom__w
t(G) :- catch((G -> R = yes ; R = no), error(E, _), R = err(E)), writeq(R), nl.
main :- B = 18446744073709551616000, N is -B, M is 2^63 + 5,
        t(integer(B)),
        t(arg(N, t(1,2,3), _)), t(arg(B, t(1,2,3), _)),
        t(functor(_, f, N)),
        t(sub_atom(abc, B, _, _, _)), t(sub_atom(abc, _, N, _, _)), t(sub_atom(abc, _, _, B, _)), t(sub_atom(abc, N, _, _, _)),
        t(sub_atom(abc, M, _, _, _)),
        halt.
:- initialization(main).
%- 118 test_gate_pl_asserting_a_conjunction_of_sixty_thousand_goals_does_not_overflow_the_default_stack_answers_as_swipl__w
:- initialization(main).
mk(0, B, B) :- !.
mk(N, A, B) :- N1 is N-1, mk(N1, (true, A), B).
main :- mk(60000, true, Body), assertz((p :- Body)), p, write(ok), nl.
%- 119 test_gate_pl_autoload_2_and_an_explicit_import_into_a_module_reach_the_library_over_a_user_definition_as_swipl__g
:- module(m, []).
:- initialization(main).
user:day_of_the_year(_, user_fact).
user:last(_, user_fact).
:- autoload(library(date), [day_of_the_year/2]).
:- use_module(library(lists), [last/2]).
plain(D) :- day_of_the_year(date(1952, 3, 11), D).
imported(L) :- last([1, 2, 3], L).
qualified(L) :- lists:last([4, 5], L).
main :- plain(A), writeq(A), nl, imported(C), writeq(C), nl, qualified(E), writeq(E), nl, user:last([1], U), writeq(U), nl, halt.
%---------- 120 test_gate_pl_backslash_c_layout_escape_agrees_with_the_oracle__w
:- initialization(main).
main :- X = '\c ', write(empty(X)), nl,
        Y = 'x\c y', write(inline(Y)), nl,
        Z = 'a\c
             b', write(across_lines(Z)), nl,
        W = 'p\c	q', write(across_tab(W)), nl,
        V = "d\c q", atom_string(A, V), write(double_quoted(A)), nl.
%- 121 test_gate_pl_backtrackable_global_and_setarg_assignments_restore_as_swipl_and_keep_no_trail_in_a_deterministic_loop__bloop
:- nb_setval(k, []).
t(0) :- !.
t(N) :- nb_getval(k, _), b_setval(k, [N, x, y, z]), N1 is N - 1, t(N1).
:- t(2000000), writeln(done).
%- 122 test_gate_pl_backtrackable_global_and_setarg_assignments_restore_as_swipl_and_keep_no_trail_in_a_deterministic_loop__restore
g(V) :- nb_getval(k, V).
t1 :- nb_setval(k, a), ( b_setval(k, b), b_setval(k, c), fail ; g(V), writeln(t1(V)) ).
t2 :- nb_setval(k, a), b_setval(k, b), ( b_setval(k, c), b_setval(k, d), fail ; g(V), writeln(t2(V)) ).
t3 :- nb_setval(k, a), ( member(X, [1, 2, 3]), b_setval(k, x(X)), b_setval(k, y(X)), g(V), writeln(t3(X, V)), fail ; g(W), writeln(t3_end(W)) ).
t4 :- nb_setval(k, a), b_setval(k, b), ( ( member(X, [1, 2]), b_setval(k, c(X)), b_setval(k, d(X)), g(V1), writeln(t4in(X, V1)), fail ; g(V2), writeln(t4mid(V2)) ), b_setval(k, e), fail ; g(V3), writeln(t4end(V3)) ).
t5 :- nb_setval(k, a), ( b_setval(k, 1), ( b_setval(k, 2), b_setval(k, 3), g(A), writeln(t5a(A)), fail ; g(B), writeln(t5b(B)), b_setval(k, 4), b_setval(k, 5), fail ) ; g(C), writeln(t5c(C)) ).
t6 :- nb_setval(k, a), \+ ( b_setval(k, p), b_setval(k, q), fail ), g(V), writeln(t6(V)).
t7 :- nb_setval(k, a), findall(X, ( member(X, [1, 2]), b_setval(k, X), b_setval(k, z) ), L), g(V), writeln(t7(L, V)).
t8 :- nb_setval(k, a), catch(( b_setval(k, m), b_setval(k, n), throw(oops) ), oops, true), g(V), writeln(t8(V)).
t9 :- nb_setval(k, a), ( ( b_setval(k, 1), b_setval(k, 2) ; b_setval(k, 3), b_setval(k, 4) ), g(V), writeln(t9(V)), fail ; g(W), writeln(t9_end(W)) ).
t10 :- nb_setval(k, a), ( member(X, [1, 2, 3]), b_setval(k, x(X)), b_setval(k, y(X)), g(V), writeln(t10(X, V)), X >= 3, ! ; true ), g(W), writeln(t10_end(W)).
t11 :- nb_setval(k, a), member(X, [1, 2]), b_setval(k, p(X)), ( X == 1 -> fail ; true ), g(V), writeln(t11(X, V)).
s1 :- T = f(a,b), ( setarg(1, T, x), setarg(2, T, y), fail ; writeln(s1(T)) ).
s2 :- ( member(_, [1,2]), T = f(a), setarg(1, T, z), writeln(s2(T)), fail ; true ).
s3 :- T = f(a), ( member(X, [1,2,3]), setarg(1, T, X), writeln(s3(T)), fail ; writeln(s3_end(T)) ).
s4 :- T = g(1,2,3), ( setarg(1, T, p), ( setarg(2, T, q), fail ; writeln(s4a(T)) ), setarg(3, T, r), fail ; writeln(s4b(T)) ).
s5 :- T = h(0), ( between(1, 3, I), setarg(1, T, I), I >= 3 -> writeln(s5(T)) ; writeln(no) ).
s6 :- T = k(a), \+ ( setarg(1, T, b), fail ), writeln(s6(T)).
s7 :- T = k(a), findall(x, (member(_, [1,2]), setarg(1, T, c)), _), writeln(s7(T)).
s8 :- T = m(a,b), catch((setarg(1,T,x), throw(e)), e, true), writeln(s8(T)).
s9 :- ( member(X, [1,2]), T = f(X), setarg(1, T, new), writeln(s9(T)), fail ; true ).
s10 :- T = c(0), ( between(1, 50000, I), setarg(1, T, I), I >= 50000 -> writeln(s10(T)) ; true ), ( T = c(V), V > 0, fail ; writeln(s10b(T)) ).
s11 :- T = d(a, b), ( member(X, [1,2]), setarg(X, T, n(X)), numlist(1, 5000, L), length(L, _), writeln(s11(T)), fail ; writeln(s11_end(T)) ).
s12 :- T = e(1), ( setarg(1, T, f(2)), T = e(f(A)), setarg(1, T, A), writeln(s12(T)), fail ; writeln(s12_end(T)) ).
:- t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, halt.
%- 123 test_gate_pl_backtrackable_global_and_setarg_assignments_restore_as_swipl_and_keep_no_trail_in_a_deterministic_loop__sloop
t(0) :- !.
t(N) :- T = f(a, b, c), setarg(2, T, x), setarg(1, T, N), N1 is N - 1, t(N1).
:- t(2000000), writeln(done).
%- 124 test_gate_pl_between_through_a_variable_link_ttyflush_and_time_answer_as_swipl__w
:- initialization(main).
t(N, G) :- ( catch(G, error(E, _), (writeq(N-E), nl)) -> true ; writeq(N-failed), nl ).
p(Y) :- X = Y, X = 2.
main :-
    t(direct, (X1 = 2, between(X1, 5, Z1), writeq(Z1), nl)),
    t(link_low, (X2 = Y2, Y2 = 2, between(X2, 5, Z2), writeq(Z2), nl)),
    t(link_high, (X3 = Y3, Y3 = 5, between(1, X3, Z3), writeq(Z3), nl)),
    t(link_both, (A4 = B4, B4 = 2, C4 = D4, D4 = 3, findall(Z4, between(A4, C4, Z4), L4), writeq(L4), nl)),
    t(link_call, (X5 = Y5, Y5 = 2, call(between, X5, 3, Z5), writeq(Z5), nl)),
    t(link_head, (p(X6), between(X6, 3, Z6), writeq(Z6), nl)),
    t(link_atom, (X7 = Y7, Y7 = a, between(X7, 5, _))),
    t(link_unbound, (X8 = _Y8, between(X8, 5, _))),
    t(link_float, (X9 = Y9, Y9 = 1.5, between(X9, 5, _))),
    t(link_check, (X10 = Y10, Y10 = 3, between(1, 5, X10), writeq(in), nl)),
    t(ttyflush, (ttyflush, writeq(flushed), nl)),
    t(time_all, (findall(M, time(member(M, [a,b,c])), Ms), writeq(Ms), nl)),
    t(time_fail, ((time(fail) -> writeq(no) ; writeq(failed_through)), nl)),
    t(time_bind, (time(X11 = 7), writeq(X11), nl)),
    t(time_cut, (once(time(member(Q, [x,y]))), writeq(Q), nl)),
    writeq(done), nl, halt.
%--------- 125 test_gate_pl_big_integer_multiplication_is_exact_at_every_size__w
chk(N, A, B) :- P is A * B, Q is A * (B - 1), ( P - Q =:= A -> T1 = ok ; T1 = bad ), S is (A + B) * (A + B), R is A*A + 2*A*B + B*B, ( S =:= R -> T2 = ok ; T2 = bad ), write(N-T1-T2), nl.
main :- forall(member(E, [31, 64, 65, 300, 1023, 2500]), ( A is 3^E + 12345, B is 7^(E // 2 + 3) - 1, C is A * B, write(C), nl, D is -(A) * A, write(D), nl )),
        forall(member(K, [40, 200, 1500, 9000, 30000]), ( A is 3^(K*20) + 7, B is 5^(K*13) - 11, chk(K, A, B), C is 2^(K*32) - 1, chk(ones(K), C, C) )).
:- initialization(main).
%- 126 test_gate_pl_call_n_with_a_variable_closure_and_a_compound_argument_hands_the_later_arguments_over_as_swipl__z
r(A, B, C, D, E) :- format("r5: ~q | ~q | ~q | ~q | ~q~n", [A, B, C, D, E]).
r(A, B, C, D) :- format("r4: ~q | ~q | ~q | ~q~n", [A, B, C, D]).
a1(G, X, Y, D, H, K) :- call(G, p(X, Y), D, H, K).
a2(G, X, D, H, K) :- call(G, p(X), D, H, K).
a3(G, X, Y, D, H) :- call(G, p(X, Y), D, H).
a4(G, X, Y, D, H, K) :- call(G, [X, Y], D, H, K).
a5(G, X, Y, D, H, K) :- call(G, f(X, Y, X), D, H, K).
a6(G, X, D, H, K) :- call(G, X, D, H, K).
b1(X, Y, D, H, K) :- call(r(g), p(X, Y), D, H, K).
t :- a1(r(g), 1, 2, dd, hh, kk), a2(r(g), 1, dd, hh, kk), a3(r(g), 1, 2, dd, hh), a4(r(g), 1, 2, dd, hh, kk), a5(r(g), 1, 2, dd, hh, kk),
     a6(r(g), 1, dd, hh, kk), b1(1, 2, dd, hh, kk).
:- initialization(t).
%- 127 test_gate_pl_call_with_depth_limit_answers_as_swipl_for_recursion_control_constructs_and_the_frame_each_builtin_call_costs__bi1
:- dynamic zz/1.
c0 :- var(X).
c1 :- nonvar(a).
c2 :- atom(a).
c3 :- integer(1).
c4 :- number(1).
c5 :- atomic(a).
c6 :- compound(f(a)).
c7 :- callable(a).
c8 :- is_list([]).
c9 :- ground(a).
c10 :- X = a.
c11 :- a = a.
c12 :- X = Y.
c13 :- f(X) = f(a).
c14 :- a \= b.
c15 :- X == X.
c16 :- a == a.
c17 :- a \== b.
c18 :- a @< b.
c19 :- 1 < 2.
c20 :- 1 =:= 1.
c21 :- X is 1.
c22 :- a =@= a.
c23 :- true.
c24 :- fail ; true.
c25 :- \+ fail.
c26 :- (true -> true ; fail).
c27 :- call(true).
c28 :- functor(f(a), _, _).
c29 :- arg(1, f(a), _).
c30 :- X =.. [a].
c31 :- copy_term(a, _).
c32 :- atom_length(a, _).
c33 :- nb_setval(k, 1).
c34 :- writeln(x).
c35 :- nl.
c36 :- length([], _).
c37 :- succ(1, _).
c38 :- between(1, 1, _).
c39 :- !.
c40 :- X = 1, X == 1.
cases([c0-0,c1-1,c2-2,c3-3,c4-4,c5-5,c6-6,c7-7,c8-8,c9-9,c10-10,c11-11,c12-12,c13-13,c14-14,c15-15,c16-16,c17-17,c18-18,c19-19,c20-20,c21-21,c22-22,c23-23,c24-24,c25-25,c26-26,c28-28,c29-29,c30-30,c31-31,c32-32,c33-33,c34-34,c35-35,c36-36,c37-37,c38-38,c39-39,c40-40]).
name_of(N, C) :- name_tab(N, C).
name_tab(0, "var(X)").
name_tab(1, "nonvar(a)").
name_tab(2, "atom(a)").
name_tab(3, "integer(1)").
name_tab(4, "number(1)").
name_tab(5, "atomic(a)").
name_tab(6, "compound(f(a))").
name_tab(7, "callable(a)").
name_tab(8, "is_list([])").
name_tab(9, "ground(a)").
name_tab(10, "X = a").
name_tab(11, "a = a").
name_tab(12, "X = Y").
name_tab(13, "f(X) = f(a)").
name_tab(14, "a \\= b").
name_tab(15, "X == X").
name_tab(16, "a == a").
name_tab(17, "a \\== b").
name_tab(18, "a @< b").
name_tab(19, "1 < 2").
name_tab(20, "1 =:= 1").
name_tab(21, "X is 1").
name_tab(22, "a =@= a").
name_tab(23, "true").
name_tab(24, "fail ; true").
name_tab(25, "\\+ fail").
name_tab(26, "(true -> true ; fail)").
name_tab(27, "call(true)").
name_tab(28, "functor(f(a), _, _)").
name_tab(29, "arg(1, f(a), _)").
name_tab(30, "X =.. [a]").
name_tab(31, "copy_term(a, _)").
name_tab(32, "atom_length(a, _)").
name_tab(33, "nb_setval(k, 1)").
name_tab(34, "writeln(x)").
name_tab(35, "nl").
name_tab(36, "length([], _)").
name_tab(37, "succ(1, _)").
name_tab(38, "between(1, 1, _)").
name_tab(39, "!").
name_tab(40, "X = 1, X == 1").
:- cases(L), forall(member(G-N, L), ( name_tab(N, C), ( call_with_depth_limit(G, 1, R) -> format('~s ~w~n', [C, R]) ; format('~s failed~n', [C]) ) )).
%- 128 test_gate_pl_call_with_depth_limit_answers_as_swipl_for_recursion_control_constructs_and_the_frame_each_builtin_call_costs__bi2
c0(X, Y, Z) :- X \= Y.
c1(X, Y, Z) :- X \== Y.
c2(X, Y, Z) :- X \== a.
c3(X, Y, Z) :- X @< Y.
c4(X, Y, Z) :- X == Y.
c5(X, Y, Z) :- X == a.
c6(X, Y, Z) :- a == X.
c7(X, Y, Z) :- X = f(Y).
c8(X, Y, Z) :- f(Y) = X.
c9(X, Y, Z) :- a = X.
c10(X, Y, Z) :- fail.
c11(X, Y, Z) :- false.
c12(X, Y, Z) :- X is Y.
c13(X, Y, Z) :- 1 =:= X.
c14(X, Y, Z) :- X =@= Y.
c15(X, Y, Z) :- X > 1.
c16(X, Y, Z) :- X = Y, Y = Z.
c17(X, Y, Z) :- \+ X = a.
c18(X, Y, Z) :- \+ a = a.
c19(X, Y, Z) :- (X = a ; Y = b).
c20(X, Y, Z) :- (X = a -> true ; true).
cases([c0-0,c1-1,c2-2,c3-3,c4-4,c5-5,c6-6,c7-7,c8-8,c9-9,c10-10,c11-11,c12-12,c13-13,c14-14,c15-15,c16-16,c17-17,c18-18,c19-19,c20-20]).
name_tab(0, "X \\= Y").
name_tab(1, "X \\== Y").
name_tab(2, "X \\== a").
name_tab(3, "X @< Y").
name_tab(4, "X == Y").
name_tab(5, "X == a").
name_tab(6, "a == X").
name_tab(7, "X = f(Y)").
name_tab(8, "f(Y) = X").
name_tab(9, "a = X").
name_tab(10, "fail").
name_tab(11, "false").
name_tab(12, "X is Y").
name_tab(13, "1 =:= X").
name_tab(14, "X =@= Y").
name_tab(15, "X > 1").
name_tab(16, "X = Y, Y = Z").
name_tab(17, "\\+ X = a").
name_tab(18, "\\+ a = a").
name_tab(19, "(X = a ; Y = b)").
name_tab(20, "(X = a -> true ; true)").
:- cases(L), forall(member(G-N, L), ( name_tab(N, C), G1 =.. [G, 1, 2, 3], ( call_with_depth_limit(G1, 1, R) -> format('~s ~w~n', [C, R]) ; format('~s failed~n', [C]) ) )).
%- 129 test_gate_pl_call_with_depth_limit_answers_as_swipl_for_recursion_control_constructs_and_the_frame_each_builtin_call_costs__ctl
:- initialization(main).
p(0) :- !.
p(N) :- N1 is N - 1, p(N1).
r(G) :- call(G).
w(T, G) :- w(T, G, 20).
w(T, G, L) :- ( call_with_depth_limit(G, L, R) -> true ; R = failed ), write(T/L-R), nl.
main :-
    w(conj, (true, true)), w(conj3, (true, true, true)), w(disj, (fail ; true)), w(disj_t, (true ; true)), w(ite, (true -> true ; true)), w(ite_nc, (true -> true)), w(soft, (true *-> true ; true)), w(notnot, \+ \+ true),
    w(conj_p0, (true, p(0))), w(conj_p1, (p(1), true)), w(conj_p1b, (true, p(1))), w(disj_p1, (fail ; p(1))), w(ite_p1, (p(1) -> true ; true)), w(notnot_p1, \+ \+ p(1)), w(conj_atom, (true, atom(a))),
    w(conj_cut, (true, !)), w(cut_conj, (!, true)), w(ite_cut, (true -> ! ; true)), w(disj_cut, (fail ; !)), w(conj_cut_mid, (true, !, true)), w(cut_only, !),
    w(nested, ((true, true) ; true)), w(nested2, ((true ; fail), (true -> true ; true))), w(nested_p0, ((true, true), p(0))), w(nested_p1, ((true ; fail), (true, p(1)))),
    w(r_conj, r((true, true))), w(r_disj, r((fail ; true))), w(r_ite, r((true -> true ; fail))), w(r_soft, r((true *-> true ; fail))), w(r_notnot, r(\+ \+ true)), w(r_conj_p0, r((true, p(0)))), w(r_conj_atom, r((true, atom(a)))),
    forall(member(L, [0, 1, 2, 3]), (w(true, true, L), w(conj, (true, true), L), w(conj_atom, (true, atom(a)), L), w(r_conj, r((true, true)), L), w(r_conj_atom, r((true, atom(a))), L), w(notnot, \+ \+ true, L), w(ite, (true -> true ; fail), L), w(conj_fail, (true, fail), L))),
    halt.
%- 130 test_gate_pl_call_with_depth_limit_answers_as_swipl_for_recursion_control_constructs_and_the_frame_each_builtin_call_costs__goals
:- initialization(main).
:- dynamic dyn/1.
dyn(1).
fact(1).
fa :- findall(X, member(X, [a, b]), _).
fb :- findall(X, fact(X), _).
fc :- findall(x, true, _).
w(T, G) :- ( call_with_depth_limit(G, 30, R) -> write(T-R) ; write(T-failed) ), nl.
main :-
    w(true, true), w(fail, fail), w(findall_member, findall(X, member(X, [a, b]), _)), w(findall_true, findall(x, true, _)), w(findall_fact, findall(X, fact(X), _)), w(findall_empty, findall(X, member(X, []), _)),
    w(findall_in_clause, fa), w(findall_fact_in_clause, fb), w(findall_true_in_clause, fc), w(once, once(member(_, [a, b]))), w(not, \+ fail), w(catch, catch(true, _, true)), w(forall, forall(member(_, [a]), true)),
    w(nth0_0, nth0(0, [a, b, c], _)), w(nth0_1, nth0(1, [a, b, c], _)), w(nth0_long, (numlist(1, 50, L), nth0(40, L, _))), w(nth1_3, nth1(3, [a, b, c, d], _)), w(nth0_var, nth0(_, [a, b, c], c)), w(nth0_none, nth0(5, [a], _)),
    w(last_1, last([a], _)), w(last_3, last([a, b, c], _)), w(last_partial, last([a|_], _)),
    w(is, _ is 1 + 1), w(atom, atom(a)), w(eq, _ = a), w(sort, sort([b, a], _)), w(msort, msort([b, a], _)), w(atom_codes, atom_codes(abc, _)), w(assertz, assertz(zz(1))), w(nl, nl), w(between, between(1, 3, _)),
    w(call_atom, call(atom, a)), w(call_eq, call(=, _, a)), w(maplist, maplist(atom, [a, b])), w(exclude, exclude(atom, [a], _)), w(dyn, dyn(_)), w(member, member(_, [a, b, c])), w(append, append([a], [b], _)),
    halt.
%- 131 test_gate_pl_call_with_depth_limit_answers_as_swipl_for_recursion_control_constructs_and_the_frame_each_builtin_call_costs__lib
mem(El, [H|T]) :- mem_(T, El, H).
mem_(_, El, El).
mem_([H|T], El, _) :- mem_(T, El, H).
t(G) :- forall(call_with_depth_limit(G, 20, R), (write(G-R), nl)).
:- t(mem(_, [a, b, c])).
:- t(member(_, [a, b, c])).
:- t(member(c, [a, b, c])).
:- t(append(_, _, [a])).
:- t(reverse([a, b, c], _)).
:- forall(call_with_depth_limit(member(X, [a, b, c]), 10, R), (write(X-R), nl)).
%- 132 test_gate_pl_call_with_depth_limit_answers_as_swipl_for_recursion_control_constructs_and_the_frame_each_builtin_call_costs__rec
t(0).
t(N) :- N > 0, N1 is N - 1, t(N1).
u(0).
u(N) :- N > 0, N1 is N - 1, u(N1), true.
w(0) :- !.
w(N) :- N1 is N - 1, w(N1).
x(0).
x(N) :- N > 0, N1 is N - 1, y(N1).
y(N) :- x(N).
:- forall(member(G, [t(5), u(5), w(5), x(5)]), ( call_with_depth_limit(G, 100, R), writeln(G-R) )).
:- forall(member(G, [t(5), u(5), w(5), x(5)]), forall(member(L, [3, 4, 5, 6, 7, 8, 9, 10, 11]), ( call_with_depth_limit(G, L, R) -> format("~w L=~w R=~w~n", [G, L, R]) ; true ))).
loop(I) :- writeln(I), I1 is I + 1, loop(I1).
loop2(I) :- I1 is I + 1, writeln(I), loop2(I1).
:- call_with_depth_limit(loop(1), 6, R), writeln(R).
:- call_with_depth_limit(loop2(1), 6, R), writeln(R).
%- 133 test_gate_pl_call_with_depth_limit_answers_as_swipl_for_recursion_control_constructs_and_the_frame_each_builtin_call_costs__shapes
:- dynamic dyn/1.
fact(0, 1) :- !.
fact(N, F) :- N1 is N - 1, fact(N1, F1), F is N * F1.
len([], 0).
len([_|T], N) :- len(T, M), N is M + 1.
spin(N) :- N1 is N + 1, spin(N1).
color(red).
color(green).
color(blue).
deep(0) :- !.
deep(N) :- N1 is N - 1, deep(N1).
r(X) :- deep(20), X = first.
r(second).
neg(X) :- \+ color(X).
ite(X, Y) :- ( color(X) -> Y = yes ; Y = no ).
dsj(X) :- ( X = 1 ; X = 2 ).
dyn(1).
dyn(2) :- dyn(1).
show(G, L) :- catch(( findall(R, call_with_depth_limit(G, L, R), Rs) -> print(Rs) ; print(none) ), error(E, _), print(E)), nl.
:- show(fact(5, _), 100).
:- show(fact(5, _), 3).
:- show(fact(7, _), 6).
:- show(len([a, b, c], _), 100).
:- show(true, 10).
:- show(fail, 10).
:- show(spin(0), 6).
:- show(color(_), 10).
:- show(r(_), 12).
:- show(r(_), 100).
:- show(neg(red), 10).
:- show(neg(pink), 10).
:- show(ite(red, _), 10).
:- show(ite(pink, _), 10).
:- show(dsj(_), 10).
:- show(dyn(2), 10).
:- show(dyn(_), 10).
:- show(call_with_depth_limit(fact(3, _), 10, _), 20).
:- show(true, a).
:- show(true, _).
:- show(undefined_pred_xyz, 10).
%- 134 test_gate_pl_catch_between_sub_atom_and_atom_concat_exit_deterministically_on_their_last_answer_as_swipl__w
d(N, G) :- setup_call_cleanup(true, G, F = c), ( F == c -> R = det ; R = nondet ), writeq(N-R), nl.
t(N, G) :- ( catch(findall(G, G, L), E, (L = e(E))) -> true ; L = failed ), writeq(N-L), nl.
loop(_, 0) :- !.
loop(H, N) :- call(H), N1 is N-1, loop(H, N1).
h1 :- catch(nb_getval(k, _), _, true).
h2 :- atom_concat(ab, cd, _).
h3 :- atom_concat(ab, _, abcd).
p(X) :- catch(member(X, [1,2,3]), _, true).
q(X) :- catch((member(X, [1,2,3]), !), _, true).
s(R) :- ( catch(true, _, true), X = 1, fail ; var(X) -> R = undone ; R = kept(X) ).
u(R) :- ( atom_concat(ab, cd, A), A = abcd, X = 1, fail ; var(X) -> R = undone ; R = kept(X) ).
v(R) :- ( between(5, 5, B), X = B, fail ; var(X) -> R = undone ; R = kept(X) ).
z(X) :- catch((between(1, 3, X), X > 1, throw(hit(X))), hit(X), true).
main :- nb_setval(k, 0),
        d(catch, catch(nb_getval(k, _), _, true)), d(catch_true, catch(true, _, true)), d(atom_concat_ppm, atom_concat(ab, cd, _)),
        d(atom_concat_pmp, atom_concat(ab, _, abcd)), d(sub_atom, sub_atom(abc, 0, 1, _, _)), d(between_last, between(3, 3, _)),
        d(atom_concat_mmp, atom_concat(_, _, ab)), d(between, between(1, 3, _)),
        loop(h1, 20000), loop(h2, 20000), loop(h3, 20000), writeq(loops-done), nl,
        t(p, p(_)), t(q, q(_)), t(s, s(_)), t(u, u(_)), t(v, v(_)), t(z, z(_)), t(sub, sub_atom(abcab, _, 2, _, ab)),
        t(acpmp, atom_concat(abcde, _, abcd)), t(acmmp, atom_concat(_, _, abc)),
        halt.
:- initialization(main).
%- 135 test_gate_pl_clause_2_reads_static_code_on_every_road_and_obeys_the_iso_and_protect_flags__body
h3(2).
h3(3).
call1_a(X) :- X.
:- dynamic d1/1.
d1(5).
r(G) :- catch((call(G) -> write(yes) ; write(no)), error(permission_error(A, B, PI), _), (write(perm(A, B, PI)))), nl.
t :- T = atom(_), r(clause(T, _)),
     r(clause(atom(_), _)),
     r(call(clause(atom(_), _))),
     r((clause(h3(X), B), X == 2, B == true)),
     Y = h3, U =.. [Y, _], r(clause(U, _)),
     r(call(clause(h3(_), _))),
     r((G = clause(call1_a(Z), Body), call(G), Body == call(Z))),
     r(call(clause(d1(_), _))),
     r(call(clause(nosuch(_), _))),
     r(call(clause((a, b), _))).
:- initialization(t).
%- 136 test_gate_pl_clause_2_returns_a_static_clause_with_its_leading_unifications_moved_to_the_head_and_a_loaded_unit_test_body_runs_in_its_unit_as_swipl__w1
:- use_module(library(lists)).
:- initialization(main).
a1(X) :- X = f(A), q(A).
a2(X) :- f(_) = X, q(X).
a3(X, X) :- X = f(_).
a4(X) :- X = f(X).
a5(X) :- X = f(_), q([X]).
a6(X, Y) :- X = f(Y), Y = a.
a7(A, B) :- B = g(y), A = h(x), q(A, B).
a8(X) :- X = a, X = b.
a9(X) :- foo = bar, X = f(Y), q(Y).
a10(X) :- q(X), X = f(_).
a11(X, _) :- X = f(Z), Z = g(_), q(Z).
a12(X, Y) :- Y = k, X = j.
a13(f(X)) :- X = a, q(X).
a14([H|T]) :- H = a, q(T).
b1(X) :- X = a, q(X).
b2(X, Y) :- X = f(Y), q(Y).
b3(X) :- X = 1, q(X).
b4(X) :- X = [], q(X).
b5(X, Y) :- Y = a, X = f(Y).
b6(X, Y) :- X = f(Y), Y = g(Z), q(Z).
b7(X, Y) :- X = g(Y), Y = a, q(X).
b8(X) :- X = a.
b9(X, Y) :- X = f(Y), Y = g(_).
b10(X, Y) :- X = f(Y), Y = 1.
c1(X) :- X = f(Y), q(Y), X = g(_).
c2(X, Y) :- q(Y), X = f(_).
c3(X) :- ( X = f(_) ; q(X) ).
c4(X, Y) :- Y = k, q(Y), X = j.
c5(X) :- true, X = f(A), q(A).
c6(X) :- X = Y, q(Y).
c7(f(X), X) :- X = a.
c8(X) :- X = f(_), !, q(X).
c9(X) :- X = f(A), A = b, q(X).
c11(X) :- X = "str", q(X).
c12(X) :- X = 'A b', q(X).
:- dynamic d1/1.
d1(X) :- X = f(_), q(X).
q(_).
q(_, _).
s(a1, T) :- clause(a1(X1), B), T = (a1(X1) :- B).
s(a2, T) :- clause(a2(X1), B), T = (a2(X1) :- B).
s(a3, T) :- clause(a3(X1, X2), B), T = (a3(X1, X2) :- B).
s(a4, T) :- clause(a4(X1), B), T = (a4(X1) :- B).
s(a5, T) :- clause(a5(X1), B), T = (a5(X1) :- B).
s(a6, T) :- clause(a6(X1, X2), B), T = (a6(X1, X2) :- B).
s(a7, T) :- clause(a7(X1, X2), B), T = (a7(X1, X2) :- B).
s(a8, T) :- clause(a8(X1), B), T = (a8(X1) :- B).
s(a9, T) :- clause(a9(X1), B), T = (a9(X1) :- B).
s(a10, T) :- clause(a10(X1), B), T = (a10(X1) :- B).
s(a11, T) :- clause(a11(X1, X2), B), T = (a11(X1, X2) :- B).
s(a12, T) :- clause(a12(X1, X2), B), T = (a12(X1, X2) :- B).
s(a13, T) :- clause(a13(X1), B), T = (a13(X1) :- B).
s(a14, T) :- clause(a14(X1), B), T = (a14(X1) :- B).
s(b1, T) :- clause(b1(X1), B), T = (b1(X1) :- B).
s(b2, T) :- clause(b2(X1, X2), B), T = (b2(X1, X2) :- B).
s(b3, T) :- clause(b3(X1), B), T = (b3(X1) :- B).
s(b4, T) :- clause(b4(X1), B), T = (b4(X1) :- B).
s(b5, T) :- clause(b5(X1, X2), B), T = (b5(X1, X2) :- B).
s(b6, T) :- clause(b6(X1, X2), B), T = (b6(X1, X2) :- B).
s(b7, T) :- clause(b7(X1, X2), B), T = (b7(X1, X2) :- B).
s(b8, T) :- clause(b8(X1), B), T = (b8(X1) :- B).
s(b9, T) :- clause(b9(X1, X2), B), T = (b9(X1, X2) :- B).
s(b10, T) :- clause(b10(X1, X2), B), T = (b10(X1, X2) :- B).
s(c1, T) :- clause(c1(X1), B), T = (c1(X1) :- B).
s(c2, T) :- clause(c2(X1, X2), B), T = (c2(X1, X2) :- B).
s(c3, T) :- clause(c3(X1), B), T = (c3(X1) :- B).
s(c4, T) :- clause(c4(X1, X2), B), T = (c4(X1, X2) :- B).
s(c5, T) :- clause(c5(X1), B), T = (c5(X1) :- B).
s(c6, T) :- clause(c6(X1), B), T = (c6(X1) :- B).
s(c7, T) :- clause(c7(X1, X2), B), T = (c7(X1, X2) :- B).
s(c8, T) :- clause(c8(X1), B), T = (c8(X1) :- B).
s(c9, T) :- clause(c9(X1), B), T = (c9(X1) :- B).
s(c11, T) :- clause(c11(X1), B), T = (c11(X1) :- B).
s(c12, T) :- clause(c12(X1), B), T = (c12(X1) :- B).
s(d1, T) :- clause(d1(X1), B), T = (d1(X1) :- B).
pr(T) :- copy_term(T, T1), numbervars(T1, 0, _), writeq(T1), nl.
main :- forall(s(N, T), (writeq(N), write(' '), pr(T))), halt.
%- 137 test_gate_pl_clause_2_returns_a_static_clause_with_its_leading_unifications_moved_to_the_head_and_a_loaded_unit_test_body_runs_in_its_unit_as_swipl__w2
:- use_module(library(lists)).
:- initialization(main).
q(_).
term_expansion(gen(H, B), [(H :- B)]).
gen(l1(X1), (f(_) = X1, q(X1))).
gen(l2(X1), (X1 = f(A), q(A))).
gen(l3(X1, X2), (X2 = k, X1 = j)).
gen(l4(X1), (X1 = f(_), q(X1))).
s(l1, T) :- clause(l1(X1), B), T = (l1(X1) :- B).
s(l2, T) :- clause(l2(X1), B), T = (l2(X1) :- B).
s(l3, T) :- clause(l3(X1, X2), B), T = (l3(X1, X2) :- B).
s(l4, T) :- clause(l4(X1), B), T = (l4(X1) :- B).
pr(T) :- copy_term(T, T1), numbervars(T1, 0, _), writeq(T1), nl.
main :- forall(s(N, T), (writeq(N), write(' '), pr(T))), halt.
%- 138 test_gate_pl_clause_2_returns_a_static_clause_with_its_leading_unifications_moved_to_the_head_and_a_loaded_unit_test_body_runs_in_its_unit_as_swipl__w3
:- use_module(library(plunit)).
:- initialization(main).
main :- ( catch(run_tests, E, (print_message(silent, E), true)) -> true ; true ), halt.
:- begin_tests(u).
term_expansion(c2(H), [H]).
c2(p11(a)).
c2((p12(X) :- X = f(_))).
test(unqual) :- p11(a), format("T:unqual~n").
test(conj) :- true, p11(a), format("T:conj~n").
test(neg) :- \+ p11(b), format("T:neg~n").
test(once) :- once(p11(a)), format("T:once~n").
test(unif) :- p12(Y), Y = f(_), format("T:unif~n").
test(fails) :- p11(zzz), format("T:fails~n").
:- end_tests(u).
%-------------------- 139 test_gate_pl_clause_2_sees_the_clauses_of_its_call__lu
:- dynamic(cr/1).
:- dynamic(cs/1).
:- dynamic(ct/1).
:- dynamic(p/1).
cr(1). cr(2). cr(3).
cs(1). cs(2). cs(3).
ct(1). ct(2). ct(3).
p(1). p(2). p(3).
main :- ( clause(cr(X), true), write(X), retract(cr(_)), fail ; nl ),
        ( clause(cs(Y), true), write(Y), retract(cs(Y)), fail ; nl ),
        ( clause(ct(Z), true), write(Z), retract(ct(3)), fail ; nl ),
        ( clause(p(P), true), write(P), assertz(p(9)), fail ; nl ),
        ( retract(p(X2)), write(X2), fail ; nl ), ( p(W) -> write(W) ; write(empty) ), nl,
        assertz(q(1)), assertz(q(2)), ( retract(q(A)), write(A), assertz(q(3)), fail ; nl ),
        findall(B, q(B), Bs), write(Bs), nl.
:- initialization(main).
%-------------- 140 test_gate_pl_clpfd_helpers_called_by_name_answer_as_swipl__w
:- use_module(library(clpfd)).
:- initialization(main).
main :- Vs = [A,B,C], Vs ins 1..3, all_different(Vs), labeling([ff, down], Vs), writeq(Vs), nl,
    [P,Q] ins 1..3, P #< Q, labeling([min, up, bisect], [P,Q]), writeq(P-Q), nl,
    length(Ss, 3), Ss ins 0..5, sum(Ss, #=, 7), Ss = [S1,S2,S3], S1 #< S2, S2 #< S3, label(Ss), writeq(Ss), nl,
    scalar_product([2,3], [X,Y], #=, 12), [X,Y] ins 0..6, label([X,Y]), writeq(X-Y), nl,
    length(Cs, 4), circuit(Cs), Cs = [2|_], label(Cs), writeq(Cs), nl,
    Gs = [G1,G2,G3], Gs ins 1..2, global_cardinality(Gs, [1-2, 2-1]), G1 #= 2, label(Gs), writeq(Gs), nl,
    Ds = [D1,D2,D3,D4], Ds ins 1..4, all_distinct(Ds), D1 #= 1, D2 #= 2, label(Ds), writeq(Ds), nl,
    [R1,R2,R3] ins 0..1, R1 #\/ R2 #<==> R3, R1 #= 0, R3 #= 1, label([R1,R2,R3]), writeq([R1,R2,R3]), nl,
    tuples_in([[T1,T2]], [[1,2],[2,3],[3,1]]), T1 #= 2, writeq(T1-T2), nl, halt.
%------------------------- 141 test_gate_pl_compiled_tables_refuse_a_mismatch__w
p(X) :- X = f(a, g(b, [1, 2]), 'Quoted', h(c)).
main :- p(X), writeq(X), nl, X =.. [N | Args], writeq(N), nl, length(Args, K), write(K), nl, functor(X, _, A), write(A), nl.
:- initialization(main).
%--------------------------- 142 test_gate_pl_consult_loads_the_named_file__data
:- initialization(main).
main :- X = [a,b], write(X), nl.
%------------------------ 143 test_gate_pl_consult_loads_the_named_file__missing
:- consult(no_such_file_here).
:- initialization(main).
main :- write(alive), nl.
%------------------- 144 test_gate_pl_copy_term_terminates_on_a_rational_tree__g
:- initialization(main).
term(int, 1).
term(cyclic, X) :- X = f(X).
term(pair, P) :- P = p(Q), Q = q(P).
term(list, [a,b]).
chk(N, G) :- write(N), write(': '), ( catch(G, E, (write(caught(E)), fail)) -> write(yes) ; write(no) ), nl.
main :-
  chk(self, ( X = f(X), copy_term(X, Y), Y = f(Z), Z == Y )),
  chk(self_fresh, ( X2 = f(X2), copy_term(X2, Y2), Y2 \== X2 )),
  chk(mutual, ( A = f(B), B = g(A), copy_term(A, C), C = f(D), D = g(E), E == C )),
  chk(sharing, ( S = g(S, V, V), copy_term(S, T), T = g(T1, W1, W2), T1 == T, W1 == W2, var(W1), W1 \== V )),
  chk(deep, ( L = [a, h(L), b], copy_term(L, M), M = [a, h(M2), b], M2 == M )),
  chk(nested, ( N = n(k(N), 1, N), copy_term(N, O), O = n(k(O1), 1, O2), O1 == O, O2 == O )),
  chk(findall, ( findall(T3, term(_, T3), L3), length(L3, 4), L3 = [_, F, P, _], F = f(F1), F1 == F, P = p(q(P1)), P1 == P )),
  chk(acyclic_after_copy, ( X4 = f(X4), copy_term(X4, Y4), \+ acyclic_term(Y4) )),
  chk(ground_cyclic, ( G = f(G, 1), copy_term(G, H), H = f(H1, 1), H1 == H )),
  halt.
%- 145 test_gate_pl_current_op_enumerates_newest_first_over_the_table_of_its_call__w
main :- ( op(444, fy, baz), op(444, fy, quux), current_op(444, fy, Op), write(Op), op(0, fy, quux), fail ; true ), nl,
        ( op(445, fy, a1), op(445, fy, a2), op(445, fy, a3), current_op(445, fy, O2), write(O2), op(0, fy, a1), fail ; true ), nl.
:- initialization(main).
%- 146 test_gate_pl_cyclic_terms_every_walker_terminates_and_writes_as_swipl_does__w_cyc2
:- dynamic(p/1).
main :-
    X1 = f(X1, X1), term_variables(X1, V1), length(V1, N1), write(N1), nl,
    X2 = f(X2, Y2), term_variables(X2, V2), ( V2 == [Y2] -> write(tv2) ; write(notv2) ), nl,
    X3 = f(X3), ( ground(X3) -> write(g3) ; write(ng3) ), X4 = f(X4, _), ( ground(X4) -> write(g4) ; write(ng4) ), nl,
    X5 = f(X5), ( subsumes_term(f(_), f(X5)) -> write(s5) ; write(ns5) ), ( subsumes_term(f(X5), f(_)) -> write(s5b) ; write(ns5b) ), ( subsumes_term(X5, X5) -> write(s5c) ; write(ns5c) ), nl,
    L6 = [A6, B6, C6|L6], numbervars(L6, 0, N6), print(N6-A6-B6-C6), nl,
    X7 = f(X7), numbervars(X7, 0, N7), write(N7), nl,
    L8 = [_|L8], catch(length(L8, _), error(E8, _), true), ( E8 = type_error(list, _) -> write(lerr8) ; write(lnoerr8) ), nl,
    length(L9, 3), length(L9, N9), write(N9), length([a, b|T9], 4), length(T9, M9), write(M9), nl,
    L10 = [c-3, a-1|L10], catch(keysort(L10, _), error(E10, _), true), ( E10 = type_error(list, _) -> write(kerr10) ; write(knoerr10) ), nl,
    L11 = [3, 1|L11], catch(msort(L11, _), error(E11, _), true), ( E11 = type_error(list, _) -> write(merr11) ; write(mnoerr11) ), nl,
    L12 = [a|L12], catch(_ =.. [f|L12], error(E12, _), true), ( E12 = type_error(list, _) -> write(uerr12) ; write(unoerr12) ), nl,
    X13 = f(X13), catch(assertz(p(X13)), error(E13, _), true), write(E13), nl,
    X14 = f(X14), print(X14), nl, writeq(g(X14, 'A b')), nl,
    X15 = f(X15, Y15), Y15 = g(Y15), print(X15), nl,
    X16 = f(Y16, X16), Y16 = g(Y16), print(X16), nl,
    X17 = f(X17), print([X17, X17]), nl, print(-(X17)), nl,
    X18 = -(X18), print(X18), nl,
    X19 = [a|X19], format("~w ~q ~p~n", [X19, X19, X19]),
    X20 = f(X20), with_output_to(string(S20), print(X20)), string_length(S20, N20), write(N20), nl,
    sort([V21], V21), keysort([W21-W21], W21), msort([Z21], Z21), write(ok21), nl,
    compare(O22, 1152921504606846976, 1152921504606846977), write(O22), sort([9007199254740993, 9007199254740992], L22), write(L22), nl.
:- initialization((main, halt)).
%- 147 test_gate_pl_cyclic_terms_unify_compare_copy_and_survive_a_collection_as_swipl_does__w_cyc
dag(0, a) :- !.
dag(N, f(T, T)) :- N1 is N - 1, dag(N1, T).
churn(0) :- !.
churn(N) :- _ = g(N, [a, b, c], foo(bar)), N1 is N - 1, churn(N1).
main :-
    X1 = f(X1), ( X1 == X1 -> write(eq1) ; write(neq1) ), nl,
    X2 = f(X2), Y2 = f(Y2), ( X2 == Y2 -> write(eq2) ; write(neq2) ), nl,
    X3 = f(X3), Y3 = f(Y3), ( X3 = Y3 -> write(unif3) ; write(nounif3) ), nl,
    X4 = f(X4), Y4 = f(f(Y4)), ( X4 = Y4 -> write(unif4) ; write(nounif4) ), nl,
    X5 = f(X5), Y5 = f(f(Y5)), ( X5 == Y5 -> write(eq5) ; write(neq5) ), nl,
    X6 = f(X6), Y6 = f(Y6), compare(O6, X6, Y6), write(O6), nl,
    X7 = s(X7, _), Y7 = s(Y7, _), ( X7 @< Y7 -> write(lt7) ; write(nlt7) ), nl,
    X8 = s(_, X8), Y8 = s(_, Y8), ( X8 @< Y8 -> write(lt8) ; write(nlt8) ), ( X8 == Y8 -> write(eq8) ; write(neq8) ), nl,
    X9 = [0, 1|X9], Y9 = [0, 2|Y9], compare(O9, a(1, X9), a(1, Y9)), write(O9), nl,
    L10 = [1, 2, 3|L10], M10 = [1, 2, 3, 1, 2, 3|M10], ( L10 == M10 -> write(eq10) ; write(neq10) ), ( L10 = M10 -> write(unif10) ; write(nounif10) ), nl,
    L11 = [1, 2, 3|L11], M11 = [A11, B11, C11|M11], unify_with_occurs_check(L11, M11), write(A11-B11-C11), nl,
    X12 = f(X12), copy_term(X12, Z12), ( Z12 == X12 -> write(copyeq12) ; write(copyneq12) ), ( acyclic_term(Z12) -> write(acyc12) ; write(cyc12) ), nl,
    L13 = [_, _, _|L13], copy_term(L13, V13), V13 = [_, _, _|T13], ( V13 == T13 -> write(yes13) ; write(no13) ), nl,
    X14 = f(X14), copy_term(foo(X14, Y14), foo(Z14, Y14)), ( Z14 == X14 -> write(yes14) ; write(no14) ), nl,
    copy_term(demoen(X15, X15), demoen(Y15, f(Y15))), ( acyclic_term(Y15) -> write(acyc15) ; write(cyc15) ), nl,
    X16 = f(X16), findall(X16, true, [F16]), ( F16 == X16 -> write(found16) ; write(nf16) ), nl,
    X17 = f(X17), catch(throw(X17), B17, true), ( B17 = f(_) -> write(caught17) ; write(other17) ), ( B17 == X17 -> write(eq17) ; write(neq17) ), nl,
    X18 = f(X18, Y18), Y18 = g(X18), Z18 = f(Z18, W18), W18 = g(Z18), ( X18 == Z18 -> write(eq18) ; write(neq18) ), ( X18 = Z18 -> write(unif18) ; write(nounif18) ), nl,
    X19 = f(X19, a), Y19 = f(Y19, b), ( X19 = Y19 -> write(unif19) ; write(nounif19) ), compare(O19, X19, Y19), write(O19), nl,
    dag(40, D1), dag(40, D2), ( D1 == D2 -> write(dageq) ; write(dagneq) ), ( D1 = D2 -> write(dagunif) ; write(dagnounif) ), compare(O20, D1, D2), write(O20), nl,
    X21 = f(X21), churn(3000), X21 = f(f(Q21)), ( Q21 == X21 -> write(survived21) ; write(lost21) ), nl,
    X22 = f(X22, Y22), copy_term(X22-Y22, C22), C22 = (P22-R22), ( var(R22), R22 \== Y22 -> write(fresh22) ; write(stale22) ), arg(1, P22, P22b), ( P22b == P22 -> write(cyc22) ; write(acyc22) ), nl,
    write_term(X1, [max_depth(3)]), nl.
:- initialization((main, halt)).
%------------ 148 test_gate_pl_date_builtins_and_library_date_answer_as_swipl__w
:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = E), writeq(N-R), nl.
main :- t(sdt_utc, (stamp_date_time(1165591784, D, 'UTC'), writeq(D), nl)), t(sdt_local, (stamp_date_time(1165591784, D2, local), writeq(D2), nl)),
  t(sdt_off, (stamp_date_time(0, D3, 0), writeq(D3), nl)), t(sdt_off2, (stamp_date_time(0, D4, 3600), writeq(D4), nl)),
  t(sdt_frac, (stamp_date_time(100000.25, D5, 'UTC'), writeq(D5), nl)), t(sdt_neg, (stamp_date_time(-7506086400, D6, 'UTC'), writeq(D6), nl)),
  t(dts9, (date_time_stamp(date(2006,12,8,17,29,44,-7200,-,-), S1), writeq(S1), nl)), t(dts_tz, (date_time_stamp(date(1970,1,1,0,0,0,-3600,-,-), S2), writeq(S2), nl)),
  t(dts3, (date_time_stamp(date(2006,12,8), S3), writeq(S3), nl)), t(dts_norm, (date_time_stamp(date(2006,13,40,25,61,61,0,-,-), S4), writeq(S4), nl)),
  t(dts_local, (date_time_stamp(date(2006,12,8,0,0,0,-,-,-), S5), writeq(S5), nl)), t(dts_float, (date_time_stamp(date(2006,12,8,0,0,1.5,0,-,-), S6), writeq(S6), nl)),
  t(ft1, (format_time(atom(A1), '%Y-%m-%d', -7506086400), writeq(A1), nl)), t(ft2, (format_time(atom(A2), '%FT%T%z %Z %a %b %e %j %u %w %H:%M:%S %3f %f %s', 1165591784.123456), writeq(A2), nl)),
  t(ft3, (format_time(string(A3), '%3f', -100000.9), writeq(A3), nl)), t(ft4, (format_time(atom(A4), '%FT%T%:z', date(2006,12,8,17,29,44,-7200,-,-)), writeq(A4), nl)),
  t(ft5, (format_time(codes(A5), '%d', date(2006,12,8)), writeq(A5), nl)), t(ft6, (format_time(atom(A6), '%A %B %p %I %y %C %G %V %U %W %D %R %r %c', 1165591784), writeq(A6), nl)),
  t(ft7, (format_time(atom(A7), '%+', 0), writeq(A7), nl)), t(ft8, (format_time(atom(A8), '%%|%n|%t|%k|%l|%P|%h', 0), writeq(A8), nl)),
  t(pt1, (parse_time('2006-12-08T17:29:44+02:00', iso_8601, T1), writeq(T1), nl)), t(pt2, (parse_time('20061208T172944+0200', iso_8601, T2), writeq(T2), nl)),
  t(pt3, (parse_time('2006-W49-5', iso_8601, T3), writeq(T3), nl)), t(pt4, (parse_time('2006-342', iso_8601, T4), writeq(T4), nl)), t(pt5, (parse_time('2006-12', iso_8601, T5), writeq(T5), nl)),
  t(pt_rfc, (parse_time('Fri, 08 Dec 2006 15:29:44 GMT', rfc_1123, T6), writeq(T6), nl)), t(pt_any, (parse_time('2006-12-08T15:29Z', T7), writeq(T7), nl)),
  t(dow, (day_of_the_week(date(2006,12,8), W), writeq(W), nl)), t(doy, (day_of_the_year(date(2006,12,8), Yd), writeq(Yd), nl)), t(dtv, (date_time_value(month, date(2006,12,8,0,0,0,0,-,-), Mo), writeq(Mo), nl)).
%------------ 149 test_gate_pl_debug_0_and_the_swi_debug_flag_answer_as_swipl__w
:- use_module(library(lists)).
:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = E), writeq(N-R), nl.
main :- current_prolog_flag(debug, D0), writeq(default(D0)), nl, t(debug0, debug), current_prolog_flag(debug, D1), writeq(after_debug(D1)), nl,
  t(nodebug0, nodebug), current_prolog_flag(debug, D2), writeq(after_nodebug(D2)), nl, t(set_true, set_prolog_flag(debug, true)), t(set_on, set_prolog_flag(debug, on)), t(set_false, set_prolog_flag(debug, false)).
%- 150 test_gate_pl_det_declarations_and_the_dollar_guard_report_their_culprit_as_swipl__v1
:- use_module(library(lists)).
:- initialization(main).
:- det((p1/1, np/1, q/0)).
p1(1).
p1(2).
p1(2).
np(X) :- np1(X).
np1(X) :- np2(X).
np2(1).
np2(2).
q.
q.
nd(X) :- nd2(X).
nd2(X) :- nd3(X).
nd3(1).
nd3(2).
nd3(2).
ga(X) :- $, nd3(X).
gb(X) :- $, true, nd3(X).
gc(X) :- $, nd3(X), true.

ge(X) :- $, nd(X).
gcall :- $, call(nd3(_)).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, C), R = err(E, C)), \+ \+ ( numbervars(N-R, 0, _), write_term(N-R, [quoted(true), numbervars(true)]), nl ).
main :- t(p1_det, p1(1)), t(p1_nondet, p1(2)), t(p1_fail, p1(3)), t(np_nondet, np(_)), t(np_fail, np(3)), t(np_det, np(1)), t(q, q),
    t(ga, ga(2)), t(ga_fail, ga(3)), t(gb, gb(2)), t(gc, gc(2)), t(ge, ge(2)), t(ge_fail, ge(3)), t(ge_det, ge(1)), t(gcall, gcall),
    set_prolog_flag(debug, true),
    t(dbg_np, np(_)), t(dbg_ge, ge(2)), t(dbg_p1, p1(2)).
%---- 151 test_gate_pl_dict_methods_defined_with_colon_equals_answer_as_swipl__w
:- module(tm, [go/0]).
_.test_na() := 1.
D.test_aa() := D.a.
D.test_a2() := X :- X is D.a^2.
D.plus(N) := X :- X is D.a + N.
other:_.test_na() := 7.
go :- writeq(na-tm{}.test_na()), nl, writeq(aa-tm{a:2}.test_aa()), nl, writeq(a2-tm{a:3}.test_a2()), nl,
    writeq(plus-tm{a:2}.plus(5)), nl, writeq(other_module-other{}.test_na()), nl,
    D = tm{a:4}, X = D.test_aa(), writeq(bound_dict-X), nl,
    writeq(key_not_method-tm{test_na:k}.test_na), nl.
:- initialization(go).
%---------- 152 test_gate_pl_directives_run_in_place_in_source_order_as_swipl__w
:- use_module(library(plunit)).
:- writeq(d1), nl.
:- nb_setval(k, 1).
:- nb_getval(k, V), writeq(nb_setval_in_place-V), nl.
:- prolog_load_context(module, M), writeq(before_unit-M), nl.
:- begin_tests(u).
:- prolog_load_context(module, M), writeq(in_unit-M), nl.
:- end_tests(u).
:- prolog_load_context(module, M), writeq(after_unit-M), nl.
:- begin_tests(v, []).
:- prolog_load_context(module, M), writeq(in_unit_with_options-M), nl.
:- end_tests(v).
:- writeq(d2), nl.
:- initialization((writeq(init), nl)).
%- 153 test_gate_pl_directory_files_agc_file_property_and_max_path_length_answer_as_swipl__w
:- module(w, []).
:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = E), ( atom(R), atom_length(R, L), L > 60 -> sub_atom(R, 0, 20, _, R1) ; R1 = R ), writeq(N-R1), nl.
seg(N, S) :- length(L, N), maplist(=(a), L), atom_chars(S, L).
magic_pred_123.
in_dir(F) :- file_directory_name(F, D), file_base_name(F, B), directory_files(D, Fs), memberchk(B, Fs).
main :- t(dirfiles_missing, directory_files(magic_nosuch_dir_9, _)),
    t(dirfiles_not_a_dir, directory_files('w.pl', _)),
    t(agc_counts, (statistics(agc, A0), garbage_collect_atoms, statistics(agc, A1), A1 > A0)),
    t(pp_file_direct, (once(predicate_property(_:magic_pred_123, file(F1))), file_base_name(F1, B1), B1 == 'w.pl', in_dir(F1))),
    G = predicate_property(M:magic_pred_123, file(F2)), t(pp_file_called, (call(G), nonvar(M), file_base_name(F2, 'w.pl'), in_dir(F2))),
    t(pp_order, findall(P, (predicate_property(magic_pred_123, P), memberchk(P, [static, file(_), defined])), [static, file(_), defined])),
    seg(4095, S5), seg(4096, S6), seg(40000, S40), atomic_list_concat([S40, abc], /, P40),
    t(fbn_4095, file_base_name(S5, _)), t(fbn_4096, file_base_name(S6, _)),
    t(fdn_4096_seg, (file_directory_name(S6, D6), D6 == '.')), t(fdn_40000_dir, file_directory_name(P40, _)),
    t(afn_4095, absolute_file_name(S5, _, [access(read), file_errors(fail)])), t(afn_4096, absolute_file_name(S6, _, [access(read)])),
    t(fdn_abc, (file_directory_name(abc, D), D == '.')), t(fbn_slash, (file_base_name('aaa/', B), B == aaa)).
%- 154 test_gate_pl_dynamic_first_argument_index_answers_as_swipl_and_a_keyed_call_costs_the_same_at_either_end_of_the_table__gcs
:- dynamic g/2.
fill(N) :- forall(between(1, N, I), (J is I * 3, assertz(g(I, J)))).
chk(N) :- forall(between(1, N, I), (J is I * 3, ( clause(g(I, X), true) -> true ; X = none ), ( ( X == J ; X == none, I mod 2 =:= 0 ) -> true ; write(bad(I, X)), nl ))).
drop(N) :- forall(between(1, N, I), ( I mod 2 =:= 0 -> retract(g(I, _)) ; true )).
:- fill(600), chk(600), drop(600), chk(600), forall(between(601, 700, I), assertz(g(I, I))), findall(K, clause(g(K, _), true), L), length(L, Len), write(Len), nl.
%- 155 test_gate_pl_dynamic_first_argument_index_answers_as_swipl_and_a_keyed_call_costs_the_same_at_either_end_of_the_table__ix
:- dynamic t/2, u/1, v/2, w/1.
show(G) :- ( findall(G, G, L) -> \+ \+ ( numbervars(L, 0, _), write(L) ) ; write(none) ), nl.
fill :- forall(between(1, 40, I), (J is I * I, assertz(t(I, J)))).
:- fill.
:- show(clause(t(7, X), B)).
:- show(retract(t(7, X))).
:- show(clause(t(7, X), B)).
:- show(retract(t(99, X))).
:- assertz(t(7, a)), assertz(t(7, b)), assertz(t(8, c)).
:- show(clause(t(7, X), true)).
:- show(clause(t(8, X), true)).
:- asserta(t(7, first)).
:- show(clause(t(7, X), true)).
:- show(clause(t(X, 49), true)).
:- show(clause(t(X, Y), true)).
:- assertz((t(3, Z) :- Z = body)).
:- show(clause(t(3, X), B)).
:- show(retract((t(3, X) :- B))).
:- show(clause(t(3, X), B)).
:- assertz(t(1.5, flt)), format(string(S0), '~w', [str]), assertz(t(S0, s)), assertz(t(f(1), c1)), assertz(t(f(1, 2), c2)), assertz(t(-5, neg)), assertz(t(123456789012345678901234567890, big)), assertz(t('1', atomone)), assertz(t(1, intone)).
:- show(clause(t(1.5, X), true)).
:- format(string(S1), '~w', [str]), show(clause(t(S1, X), true)).
:- show(clause(t(f(1), X), true)).
:- show(clause(t(f(_), X), true)).
:- show(clause(t(f(1, 2), X), true)).
:- show(clause(t(f(_, _), X), true)).
:- show(clause(t(-5, X), true)).
:- show(clause(t(123456789012345678901234567890, X), true)).
:- show(clause(t('1', X), true)).
:- show(clause(t(1, X), true)).
:- show(clause(t(2.5, X), true)).
:- show(clause(t(zzz, X), true)).
:- forall(retract(t(5, X)), (assertz(t(5, again)), write(r(X)), nl)).
:- show(clause(t(5, X), true)).
:- show(retract(t(9, _))).
:- show(retract(t(1, X))).
:- show(clause(t(1, X), true)).
:- assertz(t(_, anyclause)).
:- show(clause(t(10, X), true)).
:- show(clause(t(f(1), X), true)).
:- show(retract(t(10, X))).
:- show(retract(t(10, X))).
:- forall(between(1, 30, I), (format(atom(A), 'k~w', [I]), assertz(u(A)))).
:- show(clause(u(k7), true)).
:- show(retract(u(k7))).
:- show(clause(u(k7), true)).
:- show(retract(u(k30))).
:- show(clause(u(X), true)).
:- forall(between(1, 12, I), (J is I mod 3, assertz(v(J, I)))).
:- show(clause(v(0, X), true)).
:- show(clause(v(1, X), true)).
:- show(clause(v(2, X), true)).
:- show(retract(v(1, 4))).
:- show(clause(v(1, X), true)).
:- show(retract(v(1, X))).
:- show(clause(v(1, X), true)).
:- assertz(w(1)), assertz(w(2)), asserta(w(0)).
:- forall(between(3, 20, I), assertz(w(I))).
:- show(clause(w(0), true)).
:- show(retract(w(15))).
:- show(clause(w(15), true)).
:- show(clause(w(X), true)).
:- abolish(w/1).
:- catch(show(clause(w(1), true)), error(E, _), (write(E), nl)).
:- show(retract(t(zzz, _))).
:- retractall(t(8, _)).
:- show(clause(t(8, X), true)).
:- show(clause(t(9, X), true)).
:- retractall(u(k3)).
:- show(clause(u(k3), true)).
:- show(clause(u(k4), true)).
:- retractall(t(f(1), _)).
:- show(clause(t(f(1), X), true)).
:- show(clause(t(f(1, 2), X), true)).
:- retractall(t(nokey, _)).
:- retractall(t(1.5, _)).
:- show(clause(t(1.5, X), true)).
:- retractall(v(_, 3)).
:- show(clause(v(0, X), true)).
:- retractall(v(_, _)).
:- show(clause(v(2, X), true)).
:- assertz(v(2, again)).
:- show(clause(v(2, X), true)).
%- 156 test_gate_pl_every_choice_leaving_builtin_keeps_its_callers_retaining_as_swipl__nd
:- dynamic(fact/1).
:- dynamic(r/1).
:- dynamic(fd/1).
:- dynamic(sol/2).
fact(1). fact(2). fact(3).
r(a). r(b). r(c).
fd(1).
ab(a) --> [].
ab(b) --> [].
p1(X) :- between(1, 3, X).
p2(X) :- nb_setval(k, 0), repeat, nb_getval(k, K), X is K + 1, nb_setval(k, X), ( X >= 3 -> ! ; true ).
p3(B-S) :- sub_atom(abc, B, 1, _, S).
p4(I-E) :- nth0(I, [a,b,c], E).
p5(I-E) :- nth1(I, [a,b,c], E).
p6(X) :- clause(fact(X), true).
p7(X) :- retract(r(X)).
p8(P-T) :- current_op(P, T, -).
p9(A) :- current_predicate(fact/A).
p10(X) :- member(X, [a,b,c]).
p11(X-R) :- select(X, [a,b,c], R).
p12(X+Y) :- append(X, Y, [1,2]).
p13(X+Y) :- atom_concat(X, Y, abc).
p14(N) :- length(_, N), ( N >= 2 -> ! ; true ).
p15(Y-L) :- bagof(X, member(X-Y, [1-a,2-b,3-a]), L).
p16(Y-L) :- setof(X, member(X-Y, [2-a,1-b,1-a]), L).
p17(X) :- call(member(X, [x,y,z])).
p18(X) :- catch(member(X, [p,q]), _, true).
p19(X) :- phrase(ab(X), []).
p20(X) :- fd(X).
p21(X) :- catch(X = c, _, true).
p22(X) :- ( true *-> X = s ; X = none ).
q1(X) :- p1(X).
q2(X) :- p2(X).
q3(X) :- p3(X).
q4(X) :- p4(X).
q5(X) :- p5(X).
q6(X) :- p6(X).
q7(X) :- p7(X).
q8(X) :- p8(X).
q9(X) :- p9(X).
q10(X) :- p10(X).
q11(X) :- p11(X).
q12(X) :- p12(X).
q13(X) :- p13(X).
q14(X) :- p14(X).
q15(X) :- p15(X).
q16(X) :- p16(X).
q17(X) :- p17(X).
q18(X) :- p18(X).
q19(X) :- p19(X).
q20(X) :- p20(X).
q21(X) :- p21(X).
q22(X) :- p22(X).
run(K, G, X) :- ( call(G), assertz(sol(K, X)), fail ; true ), findall(Y, sol(K, Y), L), msort(L, S), writeq(K-S), nl.
:- initialization(main).
main :- assertz(fd(2)),
    run(1, q1(X1), X1), run(2, q2(X2), X2), run(3, q3(X3), X3), run(4, q4(X4), X4), run(5, q5(X5), X5),
    run(6, q6(X6), X6), run(7, q7(X7), X7), run(8, q8(X8), X8), run(9, q9(X9), X9), run(10, q10(X10), X10),
    run(11, q11(X11), X11), run(12, q12(X12), X12), run(13, q13(X13), X13), run(14, q14(X14), X14), run(15, q15(X15), X15),
    run(16, q16(X16), X16), run(17, q17(X17), X17), run(18, q18(X18), X18), run(19, q19(X19), X19), run(20, q20(X20), X20),
    run(21, q21(X21), X21), run(22, q22(X22), X22).
%- 157 test_gate_pl_exists_source_answers_a_library_the_prelude_holds_and_a_file_that_exists_as_swipl__ex
:- initialization(main).
main :-
    ( exists_source(library(clpr)) -> writeln(clpr-yes) ; writeln(clpr-no) ),
    ( exists_source(library(lists)) -> writeln(lists-yes) ; writeln(lists-no) ),
    ( exists_source(library(no_such_library_zz)) -> writeln(nosuch-yes) ; writeln(nosuch-no) ),
    ( exists_source('ex.pl') -> writeln(self_with_ext-yes) ; writeln(self_with_ext-no) ),
    ( exists_source(ex) -> writeln(self_without_ext-yes) ; writeln(self_without_ext-no) ),
    ( exists_source(no_such_file_zz) -> writeln(missing-yes) ; writeln(missing-no) ),
    catch(( exists_source(_) -> writeln(unbound-yes) ; writeln(unbound-no) ), error(instantiation_error, _), writeln(unbound-instantiation_error)),
    halt.
%---------- 158 test_gate_pl_findall_4_serves_a_bound_tail_and_an_unbound_one__w
:- initialization(main).
run(G) :- call(G).
runc(G) :- catch(G,_,true).
main :- findall(X,(X=1;X=2),[A,B,3],T), write(unbound_tail(A,B,T)), nl,
        U = [9], findall(Y,(Y=1;Y=2),S,U), write(bound_tail(S)), nl,
        findall(Z,(Z=1;Z=2),S2,[3]), write(literal_tail(S2)), nl,
        findall(_,fail,S3,[7]), write(no_solutions(S3)), nl,
        findall(V,(V=1;V=2),S4,T4), write(open_tail(S4,T4)), nl,
        call((findall(W,(W=1;W=2),S5,[3]), write(static_meta(S5)), nl)),
        U2 = [9], run((findall(P,(P=1;P=2),S6,U2), write(dyn_call(S6)), nl)),
        U3 = [9], runc((findall(Q,(Q=1;Q=2),S7,U3), write(dyn_catch(S7)), nl)),
        U4 = [9], G4 = (findall(R,(R=1;R=2),S8,U4), write(dyn_var(S8)), nl), call(G4),
        U5 = [9], run((findall(N,(N=1;N=2),[1,2|U5],T5), write(dyn_unbound(T5)), nl)).
%- 159 test_gate_pl_first_argument_indexing_survives_the_wake_up_lowering_as_swipl__w
:- use_module(library(clpfd)).
len([], 0).
len([_|T], N) :- len(T, M), N is M+1.
t(G) :- call_cleanup(G, Det = true), ( Det == true -> D = det ; D = nondet ), write(G-D), nl.
main :- X #= 1+1, write(X), nl, t(len([], _)), t(len([a], _)), t(len([a,b,c], _)).
:- initialization(main).
%------------ 160 test_gate_pl_format_column_fill_is_a_character_not_a_byte__asc
:- initialization(main).
main :-	format('~`-t~10|~w~n', [end]), format('~w~t~10|~w~n', [ab, cd]),
	format('~t~w~10|~n', [right]), format('~w~t~8|~w~t~16|~w~n', [a,b,c]), halt.
%------------- 161 test_gate_pl_format_column_fill_is_a_character_not_a_byte__fm
:- initialization(main).
main :-	format('~8594t~8|', []), nl,
	format('~`-t~10|~w~n', [end]),
	format('~w~t~10|~w~n', [ab, cd]),
	format('~t~w~10|~n', [right]),
	format('~w~t~8|~w~t~16|~w~n', [a,b,c]),
	halt.
%- 162 test_gate_pl_format_tilde_at_runs_its_goal_inserts_its_output_and_fails_or_throws_as_swipl__w
:- use_module(library(lists)).
:- initialization(main).
t(G) :- catch(( call(G) -> R = succeeded ; R = failed ), E, ( E = error(F, _) -> R = raised(F) ; R = threw(E) )), write(' => '), write(R), nl.
main :-
    t(format('a~@b', [fail])),
    t(format('a~@b', [throw(oops)])),
    t(format('a~@b', [(write(x), fail)])),
    t(format('a~@b', [(write(x), throw(oops))])),
    t(format('a~@b~@c', [write(1), write(2)])),
    t(format('~a~t~@~20|~a', [ab, write(mid), z])),
    t(format('~t~@~10|', [write(right)])),
    t(format(atom(A), 'p~@q', [write(zz)])), write(A), nl,
    t(format(atom(_), 'p~@q', [fail])),
    t(format('~@', [_])),
    t(format('~@', [3])),
    t(format('~@', [(member(Y,[1,2]), write(Y))])), nl,
    t(format('~@~@', [write(a), nofunc_here])),
    t(format('~@ ~w ~@~n', [write(1), two, write(3)])),
    t(format('~@~n', [format('~a-~a', [in, ner])])),
    t(format('~@', [format('~@', [fail])])),
    with_output_to(string(S), format('x~@y', [write(1)])), write(S), nl,
    halt.
%- 163 test_gate_pl_format_writes_the_text_it_produced_before_an_argument_count_error_as_swipl_and_gprolog__scc
t(G) :- catch(G, E, (nl, write(caught), nl)), nl, write('--'), nl.
:- initialization(main).
main :- t(format("abc", [1])), t(format("a~wb~wc", [x])), t(format("~w", [a, b])), t(format("x~w~n~w", [a])), t(format("%3.0d", [5])), halt.
%- 164 test_gate_pl_gnu_all_solutions_dec10_io_for_and_name_answer_as_gprolog__g
:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
o(G) :- write('<'), catch(( G -> R = true ; R = fail ), E, ( E = error(F, _) -> R = error(F) ; R = ball(E) )), write('> '), writeq(R), nl.
main :-
  t(bagof(A1, member(A1,[c,a,b,a]), _)), t(bagof(A2, member(A2-_,[1-a,2-b,3-a]), _)), t(bagof(A3, B3^member(A3-B3,[1-a,2-b,3-a]), _)),
  t(setof(A4, member(A4,[c,a,b,a]), _)), t(setof(A5, member(A5-_,[2-a,1-b,3-a,2-a]), _)), t(setof(A6, member(A6,[f(b),1,a,2.0,_]), _)),
  t(bagof(_, true, foo)), t(bagof(_, _, _)), t(findall(A7, member(A7,[1,2]), _, _)),
  t(for(x,1,2)), t(for(_,1,_)), t(for(_,a,2)), t(for(X8,1,3)),
  t(name(_,_)), t(name(f(x),_)), t(name(_,"12")),
  o(put(_)), o(put(a)), o(tab(1+1)), o(tab(foo)), o(tab(_)), o(tab(2.5)),
  o(get(a)), o(get(-2)), o(skip(foo)),
  o(tell(user)), t(telling(_)), o(see(user)), t(seeing(_)), t(tell(_)), t(see(_)),
  catch((open(user, read, S9), close(S9), write(user_file_created)), _, write(no_user_file)), nl, X8 = X8, halt.
%- 165 test_gate_pl_gnu_consult_reconsults_listing_and_load_answer_as_gprolog__g
:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
w(F, Ls) :- open(F, write, S), forall(member(L, Ls), (write(S, L), nl(S))), close(S).
main :- w('c1.pl', [':- dynamic(cq/1).', 'cq(1).', 'cq(X) :- X = two ; X = three.']), w('c2.pl', ['cs(N, M) :- M is N * N.']),
  t((consult(c1), consult('c1.pl'), cq(_))), t((consult([c1, 'c2.pl']), cs(3, _))), t(consult(c0)), t(consult([abc, 1])), t(consult([])),
  t(load(c0)), t(load('c0.wbc')), t(load(_)), t(load(3)),
  assertz(ld(1, foo)), listing(cq/1), listing(cs), listing(ld/2), t(listing(nosuch/1)), t(listing(3/1)), t(listing(foo/(-1))), t(listing(f(x))).
%------- 166 test_gate_pl_gnu_expand_term_and_phrase_translate_dcg_as_gprolog__w
:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(R, 0, _), writeq(R), nl ).
main :- t(expand_term((a --> [x], b), _)), t(expand_term((a --> b, {c}, [d]), _)), t(expand_term((a, [p] --> b), _)), t(expand_term((a --> \+ b), _)),
  t(expand_term((a --> b ; []), _)), t(expand_term((a --> [x], !, [y]), _)), t(expand_term((a --> 3), _)), t(expand_term((a, q --> b), _)),
  t(phrase(3, [a])), t(phrase(([a], [b]), [a, b, c], _)), t(phrase((\+ [b], [a]), [a], [])).
%---- 167 test_gate_pl_gnu_get_print_stream_inside_portray_answers_as_gprolog__w
:- initialization(main).
o(G) :- write('<'), catch(( G -> R = true ; R = fail ), E, ( E = error(F, _) -> R = error(F) ; R = ball(E) )), write('> '), writeq(R), nl.
portray(secret(_)) :- get_print_stream(S), write(S, '**hidden**').
portray(where) :- get_print_stream(S), ( stream_property(S, alias(user_output)) -> write(S, user_output) ; write(S, other) ).
main :- o(print([secret(1), open, secret(2)])), o(print(g(secret(x), where))), o(print(where)), o(print(user_output, secret(1))),
  o(print(user_output, f('$VAR'(25), where))),
  o((get_print_stream(S), stream_property(S, alias(user_output)))),
  o(get_print_stream(foo)), o(get_print_stream(3)), o((get_print_stream(S2), get_print_stream(S2))).
%- 168 test_gate_pl_gnu_global_variables_answer_as_gprolog_and_b_setval_links_as_swipl__b
:- initialization(main).
main :-
    b_setval(v, f(X)), X = 1, b_getval(v, Y), writeq(a(Y)), nl,
    b_setval(u, Z), b_getval(u, Z2), Z = 5, writeq(b(Z2)), nl,
    nb_setval(q, 0), ( b_setval(q, g(A)), A = 3, b_getval(q, Q1), writeq(c(Q1)), nl, fail ; true ), b_getval(q, Q2), writeq(d(Q2)), nl,
    nb_setval(r, 1), ( b_setval(r, 2), b_getval(r, R1), writeq(e(R1)), nl, fail ; true ), b_getval(r, R2), writeq(f(R2)), nl,
    W = W, b_setval(w, W), b_getval(w, W2), W = 6, writeq(g(W2)), nl,
    b_setval(x, V), b_getval(x, V2), V2 = 7, writeq(h(V)), nl,
    K = k, b_setval(K, T), T = 8, b_getval(K, T2), writeq(i(T2)), nl,
    halt.
%----- 169 test_gate_pl_gnu_leash_spy_and_the_debugger_mode_answer_as_gprolog__g
:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
r(G) :- catch(G, E, true), nodebug, r2(G, E).
r2(G, E) :- var(E), !, \+ \+ ( numbervars(G, 0, _), writeq(G), write(' => true'), nl ).
r2(G, error(F, _)) :- !, \+ \+ ( numbervars(G-F, 0, _), writeq(G), write(' => '), writeq(error(F)), nl ).
r2(G, B) :- \+ \+ ( numbervars(G-B, 0, _), writeq(G), write(' => '), writeq(ball(B)), nl ).
d_foo(1).
d_foo(_, _).
d_bar(_, _).
dz(_, _, _).
dz.
dz(_, _).
dz(_).
qa(_).
qb(_).
qc(_).
main :- t(leash([exception, call])), t(debugging), t(leash(half)), r(spy(d_foo/0-3)), t(debugging), r(spy([d_foo/1, d_bar/2])), r(spy(nonesuch)), r(spy(nonesuch/1-2)),
  r(spy(d_bar/9)), r(nospy(d_bar)), r(nospy([d_foo/2, nonesuch/1])), t(debugging), r(spypoint_condition(nonesuch(_), call, true)), t(spypoint_condition(3, call, true)),
  t(spy(d_foo/(-1))), t(spy(3/1)), t(spy(_/1)), t(spy(d_foo/_)), t(spy(d_foo/_-2)), set_prolog_flag(unknown, fail), t(debugging), set_prolog_flag(unknown, warning), t(debugging),
  set_prolog_flag(unknown, error), r(nospyall), r(nospyall), t(debugging), r(debug), r(notrace), t(leash(_)), t(leash([call|bogus])),
  r(spy(dz)), r(spy([qc/1, qa/1, qb/1])), t(debugging), r(spy(dz/1-2)).
%------- 170 test_gate_pl_gnu_linedit_prompt_and_completion_answer_as_gprolog__g
:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
k(qzvfour).
main :- t(get_linedit_prompt(_)), t(set_linedit_prompt('qzv> ')), t(get_linedit_prompt(_)), t(get_linedit_prompt(x)), t(set_linedit_prompt(_)), t(set_linedit_prompt(1)), t(get_linedit_prompt(1)),
  t(set_linedit_prompt('')), t(get_linedit_prompt(_)),
  t(add_linedit_completion(qzvone)), t(add_linedit_completion('QzvTwo')), t(add_linedit_completion('qzv3')), t(add_linedit_completion('qzv x')), t(add_linedit_completion('qzv-y')),
  t(add_linedit_completion('')), t(add_linedit_completion(_)), t(add_linedit_completion(f(x))), t(add_linedit_completion(qzvone)),
  t(find_linedit_completion(qzv, _)), t(find_linedit_completion('Qzv', _)), t(find_linedit_completion(qzvo, _)), t(find_linedit_completion(qzvone, qzvone)), t(find_linedit_completion(qzvf, _)),
  t(find_linedit_completion(qzvnone, _)), t(find_linedit_completion(_, _)), t(find_linedit_completion(1, _)), t(find_linedit_completion(qzv, 1)).
%----- 171 test_gate_pl_gnu_popen_exec_wait_and_create_pipe_answer_as_gprolog__g
:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
all(S, Cs) :- get_char(S, C), ( C == end_of_file -> Cs = [] ; Cs = [C|R], all(S, R) ).
pr(Cmd, T) :- popen(Cmd, read, S), all(S, Cs), close(S), atom_chars(T, Cs).
pw(T) :- popen('cat > pw.txt', write, S), write(S, T), close(S), open('pw.txt', read, I), all(I, Cs), close(I), atom_chars(Back, Cs), write(Back), nl.
ex(Cmd, In, Out, Err, St) :- exec(Cmd, I, O, E, P), write(I, In), close(I), all(O, Oc), close(O), all(E, Ec), close(E), wait(P, St), atom_chars(Out, Oc), atom_chars(Err, Ec).
cp(T, B) :- create_pipe(R, W), write(W, T), close(W), all(R, Cs), close(R), atom_chars(B, Cs).
main :- t(pr('echo one; echo two', _)), pw(written_through_popen), t(ex('tr a-z A-Z; echo oops >&2; exit 3', hello, _, _, _)), t(ex('exit 0', '', _, _, _)), t(cp(piped, _)),
  t(popen(_, read, _)), t(popen(true, sideways, _)), t(popen(true, 3, _)), t(popen(3, read, _)), t(exec(_, _, _, _, _)), t(wait(_, _)), t(wait(x, _)).
%- 172 test_gate_pl_gnu_predicate_property_and_current_predicate_answer_as_gprolog__g
:- initialization((main, g)).
:- dynamic(pd/1).
:- multifile(pm/1).
pd(1).
pm(a).
ps(X, Y) :- Y is X + 1.
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
main :- t(current_predicate(ps/2)), t(current_predicate(4)),
  t(predicate_property(ps(_,_), static)), t(predicate_property(pd(_), dynamic)), t(predicate_property(ps(_,_), dynamic)), t(predicate_property(atom_length(_,_), built_in)),
  t(predicate_property(nosuch(_), dynamic)), t(predicate_property(4, dynamic)).
g :- t(predicate_property(ps(_,_), user)), t(predicate_property(ps(_,_), private)), t(predicate_property(pd(_), public)), t(predicate_property(pm(_), multifile)),
  t(predicate_property(ps(_,_), monofile)), t(predicate_property(ps(_,_), prolog_line(_))), t(predicate_property(pd(_), prolog_line(_))), t(predicate_property(atom_length(_,_), native_code)),
  t(predicate_property(atom_length(_,_), static)), t(predicate_property(append(_,_,_), built_in)), t(predicate_property(call(_), control_construct)), t(predicate_property((_,_), control_construct)),
  t(predicate_property(ps(_,_), bogus)), t(predicate_property(ps(_,_), 3)).
%- 173 test_gate_pl_gnu_predicate_property_and_current_predicate_answer_as_gprolog__s
:- use_module(library(lists)).
:- initialization(main).
:- dynamic(pd/1).
pd(1).
ps(X, Y) :- Y is X + 1.
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
main :- t(current_predicate(ps/2)), t(current_predicate(foo/bar)), t(current_predicate(foo/(-1))), t(current_predicate(3/1)), t(current_predicate(4)),
  t(predicate_property(ps(_,_), static)), t(predicate_property(pd(_), dynamic)), t(predicate_property(ps(_,_), dynamic)), t(predicate_property(atom_length(_,_), built_in)),
  t(predicate_property(nosuch(_), dynamic)), t(predicate_property(4, dynamic)).
%- 174 test_gate_pl_gnu_read_raises_gprologs_syntax_error_at_gprologs_position_and_recovers_as_gprolog__g
:- initialization(main).
rd(S) :- catch(read(S, T), error(F, _), T = err(F)), writeq(T), nl, ( T == end_of_file -> true ; rd(S) ).
main :- open('syn.txt', write, W),
  write(W, 'bad( .\nok(1).\nfoo bar.\nok(2).\nf(a b).\nok(3).\n[1 a].\nok(4).\n[1|2 a].\nok(5).\n(a b).\nok(6).\n{a b}.\nok(7).\nf(a,).\nok(8).\n[a,].\nok(9).\nX = .\nok(10).\n'),
  write(W, '- = x.\nok(11).\n) .\nok(12).\n[a|].\nok(13).\nf(- ).\nok(14).\n  g(h(1, [2, 3 | t]), {x , y}) :- ( a ; b ) -> c , d .\nok(15).\nf(a\n  b).\nok(16).\n'),
  write(W, 'X = [1,2|3, 4].\nok(17).\na :- b :- c.\nok(18).\n- 1 + .\nok(19).\nf(a) g.\nok(20).\n'),
  close(W), open('syn.txt', read, S), rd(S), close(S),
  open('syn2.txt', write, W2), write(W2, 'f(a, \'unterminated\nok(21).\nlast(x'), close(W2), open('syn2.txt', read, S2), rd(S2), close(S2),
  ( syntax_error_info(F, L, C, M) -> writeq(info(F, L, C, M)) ; write(noinfo) ), nl,
  open('syn.txt', read, S3), ( read_term(S3, T3, [syntax_error(fail)]) -> writeq(T3) ; write(failed) ), nl, read_term(S3, T4, []), writeq(T4), nl, close(S3).
%-- 175 test_gate_pl_gnu_read_term_from_text_validates_its_options_as_gprolog__w
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true),
        (   var(E) -> R = L ;   E = error(F, _) -> R = error(F) ;   R = ball(E) ),
        \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
:- initialization(main).
main :- t(read_term_from_atom('a.', _, [nope])),
  t(read_term_from_atom('f(X, Y, X).', _, [variable_names(_)])),
  t(read_term_from_chars([h,'(','.'], _, [syntax_error(fail)])),
  t(read_term_from_chars([h,'(','.'], _, [syntax_error(bad)])),
  t(read_term_from_codes("k(a).", _, foo)),
  t(read_term_from_codes("k(a).", _, [])).
%--------------- 176 test_gate_pl_gnu_read_token_from_text_answers_as_gprolog__w
t(A) :- catch((read_token_from_atom(A, T) -> R = T ; R = no), error(E, _), R = err(E)), writeq(A-R), nl.
:- initialization(main).
main :- forall(member(A, ['foo(bar)', 'X', '_', '_Var', '123 abc', '3.25', '1.0e10', '0x1F', '0''a', '"str"', '`bq`', '''q a''', '', '   ', '( x', ')', '[', ']', '{', '}', ',', '|', '.', 'a.b', '+ 1', '=..', '- 5', '-5', '% c\nx', '/* c */ y', 'foo bar', '"a\\nb"', '1.', '1.e', 'Abc_1']), t(A)),
  catch(read_token_from_atom(_, _), error(E, _), (writeq(E), nl)),
  catch(read_token_from_atom(f(x), _), error(E2, _), (writeq(E2), nl)),
  read_token_from_codes("3.25", C1), writeq(C1), nl, read_token_from_chars([',', a], C2), writeq(C2), nl.
%- 177 test_gate_pl_gnu_set_bip_name_current_bip_name_and_syntax_error_info_answer_as_gprolog__g
:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
main :- t(syntax_error_info(_, _, _, _)),
  t((set_bip_name(foo, 2), current_bip_name(_, _))), t((set_bip_name(bar, 0), current_bip_name(bar, _))), t((set_bip_name(foo, 2), current_bip_name(foo, 3))),
  t((set_bip_name(wide, 300), current_bip_name(_, _))), t(((set_bip_name(kept, 1), fail ; true), current_bip_name(_, _))),
  t(set_bip_name(_, 1)), t(set_bip_name(foo, _)), t(set_bip_name(1, _)), t(set_bip_name(foo, a)), t(set_bip_name(foo, 2.0)),
  t((set_bip_name(foo, 2), current_bip_name(1, _))), t((set_bip_name(foo, 2), current_bip_name(_, a))),
  t(syntax_error_info(3, _, _, _)), t(syntax_error_info(_, a, _, _)), t(syntax_error_info(_, _, b, _)), t(syntax_error_info(_, _, _, 4)).
%----------------------------- 178 test_gate_pl_gnu_sockets_answer_as_gprolog__g
:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
p(N, G) :- catch(( G -> R = true ; R = false ), E, ( E = error(F, _) -> R = error(F) ; R = ball(E) )), write(N), write(' => '), writeq(R), nl.
line(S, A) :- get_char(S, C), line(C, S, Cs), atom_chars(A, Cs).
line(end_of_file, _, []) :- !.
line('\n', _, []) :- !.
line(C, S, [C|Cs]) :- get_char(S, C1), line(C1, S, Cs).
inet(Up, Down, Who) :- socket('AF_INET', Srv), socket_bind(Srv, 'AF_INET'(_, P)), socket_listen(Srv, 2),
  socket('AF_INET', Cli), socket_connect(Cli, 'AF_INET'(localhost, P), CIn, COut), socket_accept(Srv, Who, SIn, SOut),
  write(COut, up_inet), nl(COut), flush_output(COut), line(SIn, Up), write(SOut, down_inet), nl(SOut), flush_output(SOut), line(CIn, Down),
  close(COut), close(CIn), close(SOut), close(SIn), socket_close(Srv).
unix(Up) :- Path = 'skt_w.sock', socket('AF_UNIX', Srv), socket_bind(Srv, 'AF_UNIX'(Path)), socket_listen(Srv, 1), socket('AF_UNIX', Cli),
  socket_connect(Cli, 'AF_UNIX'(Path), _, COut), socket_accept(Srv, SIn, _), write(COut, 'hello unix'), nl(COut), flush_output(COut), line(SIn, Up),
  close(COut), close(SIn), socket_close(Srv).
main :- t(inet(_, _, _)), t(unix(_)), t(socket(1, _)), t(socket('AF_INET', x)), t(socket_close(1)), t(socket_close(-4)),
  p(bind_type_errors, ( socket('AF_INET', S1), catch(socket_bind(S1, 'AF_INET'(3, _)), error(E1, _), true), catch(socket_bind(S1, 'AF_INET'(_, x)), error(E2, _), true),
    catch(socket_bind(S1, 'AF_UNIX'(9)), error(E3, _), true), catch(socket_bind(S1, f(a, b, c)), error(E4, _), true), socket_close(S1), write([E1, E2, E3, E4]), nl )),
  t(socket_bind(x, 'AF_UNIX'(a))), t(socket_listen(1, a)), t(socket_listen(a, 1)), t(socket_accept(_, _, _)), t(socket_accept(3, a, _)), t(socket_accept(3, _, b, _)),
  t(socket_connect(_, 'AF_UNIX'(a), _, _)), t(socket_connect(3, _, _, _)), t(socket_connect(3, nonsense, _, _)), t(socket_connect(3, 'AF_UNIX'(a), x, _)),
  t(hostname_address(localhost, '127.0.0.1')), t(hostname_address(localhost, x)), t(hostname_address(localhost, 12)), t(hostname_address('no-such-host.invalid', _)).
%- 179 test_gate_pl_gnu_statistics_stacks_and_format_errors_answer_as_gprolog__w
t(G) :- catch((G -> R = ok ; R = no), error(E, _), R = err(E)), writeq(R), nl.
o(G) :- write('<'), catch(( G -> R = true ; R = fail ), error(F, _), R = error(F)), write('> '), writeq(R), nl.
:- initialization(main).
main :- t(\+ \+ (statistics(local_stack, [A, B]), integer(A), integer(B), A >= 0, B >= 0)),
  t(\+ \+ (statistics(global_stack, [A, B]), integer(A), integer(B), A >= 0, B >= 0)),
  t(\+ \+ (statistics(trail_stack, [A, B]), integer(A), integer(B), A >= 0, B >= 0)),
  t(\+ \+ (statistics(cstr_stack, [A, B]), integer(A), integer(B), A >= 0, B >= 0)),
  o(format('~a', [])), o(format('x~a ~a', [y])), o(format('~y', [x])), o(format('ab~y', [x])), o(format('~c', [-1])),
  o(format('~a', [1])), o(format('p~w~', [x])).
%- 180 test_gate_pl_gnu_stream_type_eof_buffering_positions_and_seek_answer_as_gprolog__g
:- initialization(main).
sp(A, P) :- current_alias(S, A), stream_property(S, P).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
main :- open('a.txt', write, W), write(W, 'abcd\nxy\nz\n'), close(W), open('b.bin', write, WB, [type(binary)]), put_byte(WB, 1), put_byte(WB, 2), put_byte(WB, 3), put_byte(WB, 4), close(WB),
  open('a.txt', read, _, [alias(r)]), open('a.txt', read, _, [alias(t)]), open('b.bin', read, _, [type(binary), alias(b)]), open('o.txt', write, _, [alias(w), buffering(none)]),
  open('a.txt', read, _, [alias(np), reposition(false), eof_action(error)]),
  t(sp(r, buffering(_))), t(sp(w, buffering(_))), t(set_stream_buffering(w, line)), t(sp(w, buffering(_))), t(set_stream_buffering(w, x)), t(set_stream_buffering(w, _)),
  t(set_stream_type(t, binary)), t(sp(t, type(_))), t(set_stream_type(t, text)), t(set_stream_type(t, foo)), t(set_stream_type(t, _)), t(get_char(r, _)), t(set_stream_type(r, binary)), t(set_stream_type(r, text)),
  t(set_stream_eof_action(w, error)), t(set_stream_eof_action(r, x)), t(set_stream_eof_action(r, _)), t(set_stream_eof_action(nosuch, error)),
  t(stream_line_column(r, _, _)), t(set_stream_line_column(r, 2, 2)), t(stream_line_column(r, _, _)), t(get_char(r, _)), t(set_stream_line_column(r, 3, 5)), t(stream_line_column(r, _, _)),
  t(set_stream_line_column(r, 0, 1)), t(set_stream_line_column(r, a, 1)), t(set_stream_line_column(np, 1, 1)), t(set_stream_line_column(b, 1, 1)), t(stream_line_column(b, _, _)), t(stream_line_column(r, x, _)),
  t((stream_position(r, P), get_char(r, _C1), set_stream_position(r, P), get_char(r, _C2))), t((stream_position(r, P2), P2 = '$stream_position'(_, _, _, _))), t(stream_position(r, foo)), t(stream_position(r, '$stream_position'(a, 1, 1, 1))),
  t((stream_position(np, P3), set_stream_position(np, P3))),
  t(seek(b, bof, 2, _)), t((seek(b, current, 1, _N1), get_byte(b, _Y1))), t(seek(b, eof, -1, _)), t(seek(b, bof, 1, 2)), t(seek(b, middle, 0, _)), t(seek(b, 1, 0, _)), t(seek(b, bof, a, _)), t(seek(r, bof, 0, _)),
  t(seek(np, bof, 0, _)), t(seek(b, bof, 0, x)),
  t(set_stream_eof_action(r, error)), set_stream_line_column(r, 3, 1), t((get_char(r, _Z1), get_char(r, _Z2))), t(at_end_of_stream(r)), t(sp(r, end_of_stream(_))), t(get_char(r, _)), t(get_char(r, _)),
  t(open('a.txt', read, _, [buffering(huge)])).
%-------------- 181 test_gate_pl_gnu_terms_to_and_from_text_answer_as_gprolog__w
:- initialization(main).
t(N, G) :- ( catch(G, E, (write(N-caught(E)), nl)) -> true ; write(N-failed), nl ).
main :- T = f('A b', [1,2], "s", -(1), 1+2*3, 'x'),
    t(w_atom, (write_to_atom(A1, T), writeq(A1), nl)), t(q_atom, (writeq_to_atom(A2, T), writeq(A2), nl)), t(c_atom, (write_canonical_to_atom(A3, T), writeq(A3), nl)),
    t(d_atom, (display_to_atom(A4, T), writeq(A4), nl)), t(p_atom, (print_to_atom(A5, T), writeq(A5), nl)),
    t(w_codes, (write_to_codes(C1, g(x)), writeq(C1), nl)), t(q_chars, (writeq_to_chars(C2, g('Y')), writeq(C2), nl)),
    t(wt_atom, (write_term_to_atom(A6, h('Q', [a]), [quoted(true)]), writeq(A6), nl)), t(wt_codes, (write_term_to_codes(C3, h(1), []), writeq(C3), nl)),
    t(f_codes, (format_to_codes(C4, "~w+~a", [x, y]), writeq(C4), nl)), t(f_chars, (format_to_chars(C5, "~d", [42]), writeq(C5), nl)),
    t(r_atom, (read_from_atom('foo(X, bar). ', R1), R1 = foo(V1, B1), var(V1), writeq(B1), nl)), t(r_codes, (read_from_codes("k(1, 2).", R2), writeq(R2), nl)), t(r_chars, (atom_chars('z.', Zs), read_from_chars(Zs, R3), writeq(R3), nl)),
    t(numatom1, (number_atom(42, NA), writeq(NA), nl)), t(numatom2, (number_atom(N2, '3.5'), writeq(N2), nl)),
    t(lu1, (lower_upper(a, U1), writeq(U1), nl)), t(lu2, (lower_upper(L2, 'B'), writeq(L2), nl)), t(lu3, (lower_upper(0'c, U3), writeq(U3), nl)), t(lu4, (lower_upper('1', U4), writeq(U4), nl)),
    t(newatom, (new_atom(NA1), new_atom(NA2), (NA1 \== NA2 -> write(distinct) ; write(same)), nl)), t(newatom2, (new_atom(pre_, NB), atom_concat(pre_, _, NB), write(prefixed), nl)).
%- 182 test_gate_pl_gnu_text_output_and_read_from_text_check_their_arguments_as_gprolog__w
t(G) :- catch((G -> R = G ; R = no), error(E, _), R = err(E)), writeq(R), nl.
:- initialization(main).
main :- t(write_to_atom(f(x), a)), t(write_to_atom(abc, a)), t(writeq_to_atom(1, a)), t(write_to_codes(foo, a)),
  t(write_to_codes([0'a|x], a)), t(write_to_chars(f(y), a)), t(format_to_atom(1, '~w', [x])), t(write_term_to_atom(g(1), a, [])),
  t(write_to_codes(_, f(a))), t(write_term_to_codes(x, a, [])), t(print_to_chars([a|_], b)), t(read_from_atom(_, _)),
  t(read_from_atom('', _)), t(read_from_atom('   ', _)), t(read_from_codes([], _)), t(read_from_chars([], _)),
  t(read_from_codes(_, _)), t(read_from_chars('', _)).
%- 183 test_gate_pl_gnu_unget_get_key_and_the_implicit_stream_culprit_answer_as_gprolog__g
:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
main :- open('a.txt', write, W), write(W, 'ab\nxyz\nqr\n'), close(W), open('b.bin', write, WB, [type(binary)]), put_byte(WB, 7), put_byte(WB, 8), close(WB),
  open('a.txt', read, _, [alias(u), eof_action(error)]),
  t(unget_char(u, z)), t((get_char(u, A), get_char(u, B))), t(unget_code(u, 0'y)), t(get_code(u, _)), t(unget_char(u, ab)), t(unget_char(u, end_of_file)), t(unget_char(u, 1)),
  t(unget_char(u, _)), t(unget_code(u, a)), t(unget_code(u, -3)), t(unget_code(u, 0)), t(unget_code(u, 256)), t(unget_byte(u, 1)),
  t((get_char(u, C1), get_char(u, C2), get_char(u, C3), get_char(u, C4), get_char(u, C5))), t(get_key(u, _)), t(get_key_no_echo(u, _)), t(get_key(u, _)),
  t(peek_code(u, _)), t(get_char(u, _)), close(u),
  open('b.bin', read, _, [type(binary), alias(r)]), t(unget_byte(r, 9)), t((get_byte(r, X1), get_byte(r, X2))), t(unget_byte(r, 256)), t(unget_byte(r, a)), t(unget_byte(r, _)),
  t(unget_char(r, a)), t(get_char(r, _)), t(get_key(r, _)), t(get_key(r, a)),
  set_input(r), t(get_char(_)), t(unget_char(a)), t(get_code(_)), t(peek_char(_)), t(get_key(_)), t(get_key_no_echo(_)), set_input(user_input), close(r),
  open('a.txt', read, I), set_input(I), t(get_byte(_)), t(unget_byte(5)), t(unget_char(_)), t(unget_code(a)), t(get_key(_)), t(get_key(a)), t(unget_char(q)), t(get_key_no_echo(_)), t(get_key(_)),
  t(get_key(_)), set_input(user_input), close(I),
  t(get_key(_, _)), t(get_key_no_echo(nosuch, _)), t(get_key(user_output, _)), t(unget_char(nosuch, a)), t(unget_code(_, 97)).
%- 184 test_gate_pl_goal_expansion_reaches_meta_arguments_and_asserted_bodies_ending_in_true_answer_as_swipl__w1
:- initialization(main).
:- dynamic user:hook/1.
:- set_module(base(user)).
:- '$clausable'(foo/2).
foo --> [].
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = err(E)), writeq(N-R), nl.
main :- t(direct_def, current_predicate(foo//0)), t(direct_undef, current_predicate(no_a//0)), t(called, call(current_predicate(foo//0))), t(var_arity, (current_predicate(foo//A), writeq(A), nl)),
  t(neg, \+ current_predicate(no_a//0)), G = current_predicate(no_a//0), t(meta_undef, G), t(enumerate, (current_predicate(foo//N0), writeq(N0), nl)),
  t(dyn_mpi, current_predicate(hook/1)), t(clausable, '$clausable'(foo/2)).
%- 185 test_gate_pl_goal_expansion_reaches_meta_arguments_and_asserted_bodies_ending_in_true_answer_as_swipl__w2
:- module(w2, [main/0]).
:- multifile user:term_expansion/2, user:goal_expansion/2.
:- dynamic user:term_expansion/2, user:goal_expansion/2.
:- discontiguous goal_expansion/2.
term_expansion(make_dcg, (a --> "")).
goal_expansion(g_b, g_c).
make_dcg.
g_c.
e_not :- not(g_b).
goal_expansion(foo, bar).
:- meta_predicate run(0).
test_foo_bar :- run(foo).
bar.
run(Goal) :- Goal.
goal_expansion(onetime(X), (X->true)).
one(X) :- ( onetime(X=1) ; X = 2 ).
:- dynamic da/1, db/1, dc/1.
main :- ( e_not -> writeq(e_not-yes) ; writeq(e_not-no) ), nl,
    ( test_foo_bar -> writeq(foo-yes) ; writeq(foo-no) ), nl,
    findall(X, one(X), L), writeq(one-L), nl,
    ( clause(a(L0, L1), B), B == (L0=L1) -> writeq(dcg-yes) ; writeq(dcg-no) ), nl,
    assertz((da(X1) :- ((X1=1->true), true ; X1=2))), assertz((db(X2) :- ((X2=1;X2=3), true ; X2=2))), assertz((dc(X3) :- (X3=1, true ; X3=2))),
    findall(Y1, da(Y1), L1a), writeq(da-L1a), nl, findall(Y2, db(Y2), L2a), writeq(db-L2a), nl, findall(Y3, dc(Y3), L3a), writeq(dc-L3a), nl.
:- initialization(main).
%--------------------------------------------------- 186 test_gate_pl_gz5a__neg1
:- initialization(main).
t3(A,B,C) :- A = B, B = C.
main :- t3(a,X,Y), write(X), write(Y), nl.
%--------------------------------------------------- 187 test_gate_pl_gz5a__neg2
:- initialization(main).
q(X) :- X = f(a).
main :- q(Z), write(Z), nl.
%--------------------------------------------------- 188 test_gate_pl_gz5b__neg1
:- initialization(main).
t3(A,B,C) :- A = B, B = C.
main :- t3(a,X,Y), write(X), write(Y), nl.
%--------------------------------------------------- 189 test_gate_pl_gz5b__neg2
:- initialization(main).
f(X) :- Y is X + 1, write(Y), nl.
g(Z) :- f(Z).
main :- g(1).
%--------------------------------------------------- 190 test_gate_pl_gz5c__neg1
:- initialization(main).
f(a).
f(b).
main :- f(Q), !, write(Q), nl.
%--------------------------------------------------- 191 test_gate_pl_gz5c__neg2
:- initialization(main).
m(X,[X|_]).
m(X,[_|T]) :- m(X,T).
main :- m(Q,[a,b]), write(Q), nl, fail ; true.
%--------------------------------------------------- 192 test_gate_pl_gz5c__neg3
:- initialization(main).
c5(a). c5(b). c5(c). c5(d). c5(e).
main :- c5(Q), write(Q), nl, fail ; true.
%---------------------------------------------------- 193 test_gate_pl_gz6__neg1
:- initialization(main).
f(a).
f(b).
main :- f(Q), !, write(Q), nl.
%---------------------------------------------------- 194 test_gate_pl_gz6__neg2
:- initialization(main).
p(a).
p(b).
main :- p(X), !, write(X), nl, fail ; true.
%-------------------------------------------------- 195 test_gate_pl_gz6b__bfail
:- initialization(main).
p(a).
q(z).
main :- ( p(X), write(X), nl, fail ; true ), q(w), write(never), nl.
%--------------------------------------------------- 196 test_gate_pl_gz6b__neg1
:- initialization(main).
p(a).
p(b).
main :- ( p(X), write(X), nl ; true ), write(done), nl.
%--------------------------------------------------- 197 test_gate_pl_gz6b__neg2
:- initialization(main).
p(a).
main :- write(start), nl, ( p(X), write(X), nl, fail ; true ).
%- 198 test_gate_pl_ieee754_float_flags_special_values_and_number_order_answer_as_swipl__w
:- module(w, []).
:- initialization(main).
e(N, X) :- catch((Y is X, R = Y), error(E, _), R = err(E)), writeq(N-R), nl.
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = err(E)), writeq(N-R), nl.
main :- e(default_sign_nan, sign(nan)), e(default_log0, log(0.0)), e(default_pow_zero_neg, 0.0 ** -1), e(default_acos2, acos(2)),
    t(underflow_flag, (current_prolog_flag(float_underflow, U), U == ignore, set_prolog_flag(float_underflow, error), set_prolog_flag(float_underflow, U))),
    t(rounding_flag, (current_prolog_flag(float_rounding, R0), R0 == to_nearest, set_prolog_flag(float_rounding, to_zero), current_prolog_flag(float_rounding, to_zero), set_prolog_flag(float_rounding, R0))),
    t(unknown_flag_fails, \+ current_prolog_flag(no_such_flag_x, _)), t(tagged, (current_prolog_flag(max_tagged_integer, M), integer(M), M > 0)),
    t(float_max, (current_prolog_flag(float_max, FM), FM =:= 1.7976931348623157e308)), t(flags_enumerate, (findall(F, current_prolog_flag(F, _), Fs), memberchk(float_rounding, Fs), memberchk(bounded, Fs))),
    forall(member(F-V, [float_overflow-infinity, float_zero_div-infinity, float_undefined-nan]), set_prolog_flag(F, V)),
    forall(member(N-X, [sign_nan-sign(nan), ceiling_inf-ceiling(inf), floor_nan-floor(nan), round_ninf-round(-inf), truncate_inf-truncate(inf), log0-log(0.0), log10_m0-log10(-0.0),
        atanh1-atanh(1.0), atan2_00-atan2(0.0,0.0), atan2_m0m0-atan2(-0.0,-0.0), pow_inf_0-(inf**0.0), pow_nan_0-(nan**0.0), pow_0_neg-(0.0** -1), div_int_0-(1/0), div_rat_0-(-1r2/0),
        ffp_m0-float_fractional_part(-0.0), ffp_inf-float_fractional_part(inf), ffp_minf-float_fractional_part(-inf), copysign_0_nan-copysign(0.0,nan), copysign_nan-copysign(nan,-0.0), erf1-erf(1.0),
        max_m0_0-max(-0.0,0), max_m0_p0-max(-0.0,0.0), min_0_m0-min(0,-0.0), root3_neg-(-8.0**1r3), root3_neg_sq-(-8.0**2r3), root_even_neg-(-4.0**3r2), rt_up-roundtoward(1/3, to_positive),
        rt_down-roundtoward(1/3, to_negative), rt_neg_root_up-roundtoward(-2.0**1r3, to_positive), rt_small_root_up-roundtoward(0.0002**1r3, to_positive),
        big_below_overflow_down-roundtoward(float(2^1024-1), to_negative), big_overflow_down-roundtoward(float(2^1024), to_negative), neg_big_overflow_up-roundtoward(float(-(2^1024)), to_positive)]), e(N, X)),
    X1 is -0.0, I is inf, NI is -inf, NN is nan, msort([I, 0.0, X1, NI, NN, 0, -1], L1), writeq(msort-L1), nl,
    findall(O, (member(A-B, [NN-0.0, X1-0.0, X1-0, 0.0-0, 0-0.0]), compare(O, A, B)), Os), writeq(compare-Os), nl,
    t(sort_bound_nan, sort([1.0Inf, 0.0, -0.0, -1.0Inf, 1.5NaN], [1.5NaN, -1.0Inf, -0.0, 0.0, 1.0Inf])), t(sort_bound_zero_sign, sort([0.0], [-0.0])),
    findall(C, (member(Z0, [1.0, 0.0, -0.0, inf, nan, -inf, 1.0e-310]), Z is Z0, float_class(Z, C)), Cs), writeq(float_class-Cs), nl, t(float_class_int, float_class(1, _)),
    t(bounded_ints, bounded_number(0, 10, 1)), t(bounded_rat_out, \+ bounded_number(0, 1r2, 1)), t(bounded_int_fill, (bounded_number(L2, H2, -1), [L2, H2] == [-2, 0])),
    t(bounded_float_fill, (bounded_number(L3, H3, -1.0), [L3, H3] == [-1.0000000000000002, -0.9999999999999999])), t(bounded_inf, \+ bounded_number(_, _, I)), t(bounded_nan, \+ bounded_number(_, _, NN)),
    writeq(spacing-(a - X1)), nl.
%----- 199 test_gate_pl_ieee_float_flags_and_ceil_lgamma_powm_answer_as_swipl__f
:- initialization(main).
r(N, G) :- catch((G -> true ; write(false)), error(E, _), writeq(E)), write(' '), write(N), nl.
main :-
  r(1, (X1 is ceil(2.5), writeq(X1))),
  r(2, (X2 is lgamma(3.0), Y2 is round(X2*1000), writeq(Y2))),
  r(3, (X3 is lgamma(0.0), writeq(X3))),
  r(4, (X4 is powm(2, 10, 1000), writeq(X4))),
  r(5, (X5 is powm(3, 200, 1000007), writeq(X5))),
  r(6, (X6 is powm(12345678901234567890, 3, 1000000007), writeq(X6))),
  r(7, (X7 is powm(2, -1, 7), writeq(X7))),
  r(8, (X8 is powm(2, 10, 0), writeq(X8))),
  r(9, (X9 is powm(2.0, 10, 7), writeq(X9))),
  r(10, (X10 is 0.0/0.0, writeq(X10))),
  r(11, (X11 is 1/0.0, writeq(X11))),
  r(12, (X12 is 10.0**400, writeq(X12))),
  r(13, (X13 is 2+inf, writeq(X13))),
  r(14, (X14 is inf, Y14 is nan, Z14 is -inf, writeq(X14), write(' '), print(Y14), write(' '), write(Z14))),
  r(15, (set_prolog_flag(float_zero_div, infinity), X15 is 1/0.0, writeq(X15))),
  r(16, (X16 is -1/0.0, writeq(X16))),
  r(17, (X17 is 1/0, writeq(X17))),
  r(18, (X18 is 0.0/0.0, writeq(X18))),
  r(19, (set_prolog_flag(float_undefined, nan), X19 is 0.0/0.0, writeq(X19))),
  r(20, (X20 is sqrt(-1.0), writeq(X20))),
  r(21, (X21 is asin(2.0), writeq(X21))),
  r(22, (set_prolog_flag(float_overflow, infinity), X22 is 10.0**400, writeq(X22))),
  r(23, (X23 is exp(1000), writeq(X23))),
  r(24, (current_prolog_flag(float_overflow, V24), current_prolog_flag(float_zero_div, W24), current_prolog_flag(float_undefined, U24), writeq(V24/W24/U24))),
  halt.
%- 200 test_gate_pl_if_3_is_no_predicate_in_any_dialect_as_swipl_and_gprolog_answer__own
:- initialization(main).
if(a, b, c).
main :-
    ( if(a, b, c) -> write(ok(u)) ; write(bad(u)) ), nl,
    ( if(x, y, z) -> write(bad(v)) ; write(ok(v)) ), nl,
    G = if(a, b, c), ( call(G) -> write(ok(w)) ; write(bad(w)) ), nl,
    halt.
%- 201 test_gate_pl_if_3_is_no_predicate_in_any_dialect_as_swipl_and_gprolog_answer__plain
:- initialization(main).
main :-
    catch(( if(true, true, true), write(called) ), error(E1, _), write(raised(E1))), nl,
    G = if(fail, true, true),
    catch(( call(G), write(called) ), error(E2, _), write(raised(E2))), nl,
    ( predicate_property(if(_, _, _), _) -> write(has_property) ; write(no_property) ), nl,
    halt.
%------- 202 test_gate_pl_integer_division_floors_and_int64_overflow_promotes__w
:- initialization(main).
ov(G) :- catch((V is G, write(V)), error(evaluation_error(int_overflow), _), write(int_overflow)), nl.
main :- A is -10 // 3, B is -10 mod 3, C is -10 rem 3, D is -10 div 3, write([A,B,C,D]), nl,
    ov(-9223372036854775808 // -1), ov(-9223372036854775808 mod -1), ov(abs(-9223372036854775808)), ov(-(-9223372036854775808)), halt.
%- 203 test_gate_pl_ir_delete_all_invalidates_every_bb_idx_and_a_colliding_static_call_answers_as_the_oracle__w
:- dynamic t/1.
p(1). p(2). p(3).
q(X, Y) :- p(X), Y is X * 10.
r(X) :- member(X, [a, b]).
s(X) :- t(X), X \== a.
:- assertz((t(Z) :- q(X, Z), X > 1)), findall(Z, t(Z), L), write(L), nl.
:- assertz((t(Z) :- r(Z))), findall(Z, s(Z), L), write(L), nl.
:- clause(q(_, _), B), numbervars(B, 0, _), print(B), nl.
:- retract((t(Z) :- q(_, Z), _)), findall(Z, t(Z), L), write(L), nl.
:- assertz(t(9)), findall(Z, s(Z), L), write(L), nl.
%- 204 test_gate_pl_iso_rung3_current_predicate_generator_and_halt_type_checks__enum
p1. p2. p3(_).
:- dynamic(dq/1).
:- multifile(mf/2).
q :- \+ current_predicate(nope/7), \+ current_predicate(assertz/1), \+ current_predicate(current_predicate/1).
:- initialization(main).
main :-
    findall(N, current_op(_, _, N), Ops), length(Ops, LO), ( LO > 20 -> write(ops_ok) ; write(ops_short(LO)) ), nl,
    findall(N/A, current_predicate(N/A), Ps),
    ( memberchk(p1/0, Ps), memberchk(p2/0, Ps), memberchk(p3/1, Ps), memberchk(q/0, Ps), memberchk(dq/1, Ps), memberchk(mf/2, Ps) -> write(statics_ok) ; write(statics_missing(Ps)) ), nl,
    ( current_predicate(p3/X), X == 1 -> write(arity_ok) ; write(arity_bad) ), nl,
    ( q -> write(builtins_hidden) ; write(builtins_leak) ), nl,
    assertz(rt_new(1)), ( current_predicate(rt_new/1) -> write(runtime_ok) ; write(runtime_missing) ), nl,
    retractall(rt_new(_)), ( current_predicate(rt_new/1) -> write(retracted_still_current) ; write(retracted_gone) ), nl,
    abolish(rt_new/1), ( current_predicate(rt_new/1) -> write(abolished_still_current) ; write(abolished_gone) ), nl,
    catch(current_predicate(4), error(E1, _), (write(E1), nl)),
    catch(current_predicate(0/dog), error(E2, _), (write(E2), nl)),
    catch(current_predicate(f/ -1), error(E3, _), (write(E3), nl)),
    S = zz/2, ( current_predicate(S) -> write(var_spec_bad) ; write(var_spec_ok) ), nl,
    catch(halt(a), error(E4, _), (write(E4), nl)),
    catch(halt(_), error(E5, _), (write(E5), nl)).
memberchk(X, [Y|T]) :- ( X == Y -> true ; memberchk(X, T) ).
%- 205 test_gate_pl_iso_rung3_current_predicate_generator_and_halt_type_checks__ret0
:- initialization(main).
combo :- write(a), (write(x) ; write(y)), write(b).
main :- combo, nl.
%- 206 test_gate_pl_iso_rung4_run_time_meta_call_of_builtins_through_compiled_wrappers__reach
:- initialization(main).
t(G) :- ( catch(call(G), E, (write(caught(E)), nl, fail)) -> write(ok(G)), nl ; write(failed(G)), nl ).
main :-
    G1 = current_op(_,xfx,is), t(G1),
    G2 = between(1,3,_), t(G2),
    G3 = current_predicate(main/0), t(G3),
    G4 = atom_length(abc,_), t(G4),
    G5 = call(true), t(G5),
    G6 = (X = 1, X == 1), t(G6),
    G7 = findall(Y, member(Y,[a,b]), L), t(G7), write(L), nl,
    G8 = sub_atom(abc,_,1,_,b), t(G8),
    G9 = atom_codes(_, [0'h, 0'i]), t(G9),
    halt.
member(X,[X|_]). member(X,[_|T]) :- member(X,T).
%- 207 test_gate_pl_iso_rung4_run_time_meta_call_of_builtins_through_compiled_wrappers__redo
:- initialization(main).
main :-
    G1 = between(1,3,X), findall(X, call(G1), L1), write(L1), nl,
    G2 = between(1,3,Y), findall(Y, G2, L2), write(L2), nl,
    G3 = member(Z,[a,b,c]), ( call(G3), write(Z), nl, Z == b -> true ; true ),
    G4 = between(1), findall(W, call(G4, 2, W), L4), write(L4), nl,
    G5 = foo(1), catch(call(G5), error(E5,_), (write(E5), nl)),
    catch(call(G5), error(E6,_), (write(E6), nl)),
    G7 = !, ( call(G7) -> write(cut_true) ; write(cut_false) ), nl,
    G8 = (member(Q,[1,2,3]), Q > 1), findall(Q, G8, L8), write(L8), nl,
    G9 = atom_codes(A9, [0'h,0'i]), call(G9), write(A9), nl,
    G10 = current_op(P, xfx, is), findall(P, G10, L10), write(L10), nl,
    G11 = sub_atom(hello, B, 2, _, Sub), findall(B-Sub, G11, L11), write(L11), nl,
    G12 = (X12 = 1 ; X12 = 2), findall(X12, G12, L12), write(L12), nl,
    G13 = catch(throw(oops), oops, true), ( call(G13) -> write(catch_ok) ; write(catch_bad) ), nl,
    G14 = nl, call(G14),
    G15 = fail, ( call(G15) -> write(bad) ; write(fail_ok) ), nl,
    G16 = forall(member(F,[1,2]), F > 0), ( call(G16) -> write(forall_ok) ; write(forall_bad) ), nl,
    G17 = (\+ member(9,[1,2])), ( call(G17) -> write(neg_ok) ; write(neg_bad) ), nl,
    G18 = 3, catch(call(G18), error(E18,_), (write(E18), nl)),
    halt.
member(X,[X|_]). member(X,[_|T]) :- member(X,T).
%- 208 test_gate_pl_iso_rung4_run_time_meta_call_of_builtins_through_compiled_wrappers__unk
:- initialization(main).
main :- set_prolog_flag(unknown, fail), G = nothere(1,2), ( call(G) -> write(bad) ; write(unknown_fail_ok) ), nl, ( call(G) -> write(bad) ; write(unknown_fail_ok) ), nl, halt.
%- 209 test_gate_pl_iso_rung5_body_conversion_of_a_run_time_goal_list_guard_and_declared_empty_predicates__conv
:- initialization(main).
:- dynamic(emp/1).
:- multifile(fenix/1).
:- discontiguous(scattered/2).
one(1).
chk(N, G, Want) :- catch((call(G) -> R = yes ; R = no), error(E, _), R = E), ( R == Want -> write(ok(N)) ; write(bad(N, R)) ), nl.
lit_conj(One) :- catch((call((fail, One)) -> R = yes ; R = no), error(E, _), R = E), ( R == type_error(callable, (fail, 1)) -> write(ok(n)) ; write(bad(n, R)) ), nl.
lit_disj(One) :- catch((call((One ; true)) -> R = yes ; R = no), error(E, _), R = E), ( R == type_error(callable, (1 ; true)) -> write(ok(o)) ; write(bad(o, R)) ), nl.
lit_nested_unbound :- ( call((fail, _)) -> write(bad(p)) ; write(ok(p)) ), nl.
main :-
    one(One),
    chk(a, (fail, One), type_error(callable, (fail, 1))),
    chk(b, (write(3), One), type_error(callable, (write(3), 1))),
    chk(c, (One ; true), type_error(callable, (1 ; true))),
    chk(d, (fail, _), no),
    G1 = (true -> One ; true), chk(e, G1, type_error(callable, (true -> 1 ; true))),
    G2 = (fail, 1), chk(f, G2, type_error(callable, (fail, 1))),
    chk(g, emp(1), no), chk(h, fenix(_), no), chk(i, scattered(_, _), no),
    chk(j, findall(_, (write(never), nl), 12), type_error(list, 12)),
    chk(k, findall(_, true, [a|b]), type_error(list, [a|b])),
    chk(l, findall(X, member(X, [1,2]), [1|T]), yes), write(T), nl,
    chk(m, foobar(_), existence_error(procedure, foobar/1)),
    lit_conj(One), lit_disj(One), lit_nested_unbound,
    halt.
member(X,[X|_]). member(X,[_|T]) :- member(X,T).
%- 210 test_gate_pl_iso_rung7_a_cut_inside_a_findall_bagof_setof_goal_has_its_own_barrier__cut
:- initialization(main).
member(M,[M|_]).
member(M,[_|T]) :- member(M,T).
q(a). q(b).
opaque :- findall(X, ((X=1;X=2), !), _), fail.
opaque :- write(outer_alive), nl.
main :-
    findall(X1, ((X1=1;X1=2), (true -> !)), A), write(a(A)), nl,
    findall(X2, ((X2=1;X2=2), (true *-> !)), B), write(b(B)), nl,
    findall(X3, ((X3=1;X3=2), (true;!)), C), write(c(C)), nl,
    findall(X4, ((X4=1;X4=2), (!;true)), D), write(d(D)), nl,
    findall(X5, ((X5=1;X5=2), (fail;!)), E), write(e(E)), nl,
    findall(X6, ((X6=1;X6=2), !), F), write(f(F)), nl,
    findall(X7, (member(X7,[1,2,3]), !), G), write(g(G)), nl,
    findall(X8, ((X8=1;X8=2), \+ \+ !), H), write(h(H)), nl,
    bagof(X9, ((X9=1;X9=2), (fail;!)), I), write(i(I)), nl,
    setof(XA, ((XA=2;XA=1), (fail;!)), J), write(j(J)), nl,
    bagof(XB-Y, (q(Y), (XB=1;XB=2), (fail;!)), K), write(k(K)), nl,
    opaque,
    halt.
%- 211 test_gate_pl_iso_rung8_an_unbounded_integer_literal_reads_writes_and_computes__big
:- initialization(main).
main :-
    X = 123456789012345678901234567890, write(a(X)), nl,
    ( integer(X) -> write(b(yes)) ; write(b(no)) ), nl,
    Y is 123456789012345678901234567890 + 1, write(c(Y)), nl,
    Z is 123456789012345678901234567890 * 3, write(d(Z)), nl,
    S is 123456789012345678901234567891 - 1, write(e(S)), nl,
    N is -(123456789012345678901234567890), write(f(N)), nl,
    ( 123456789012345678901234567890 > 999999999999999999 -> write(g(yes)) ; write(g(no)) ), nl,
    ( X == 123456789012345678901234567890 -> write(h(yes)) ; write(h(no)) ), nl,
    ( X = 123456789012345678901234567890 -> write(i(yes)) ; write(i(no)) ), nl,
    Q is 123456789012345678901234567890 // 3, write(j(Q)), nl,
    ( current_prolog_flag(bounded, B) -> write(k(B)) ; write(k(noflag)) ), nl,
    ( 7 =:= 7 -> write(l(yes)) ; write(l(no)) ), nl,
    M is 2 + 3, write(m(M)), nl,
    halt.
%- 212 test_gate_pl_iso_rung9_a_backtrackable_recursion_reaches_the_depth_the_oracle_reaches__cp
:- initialization(main).
q(a). q(b).
p(0) :- !.
p(N) :- N > 0, q(_), N1 is N - 1, p(N1).
main :- ( p(100000) -> write(cp_ok) ; write(cp_no) ), nl.
%- 213 test_gate_pl_iso_rung9_a_backtrackable_recursion_reaches_the_depth_the_oracle_reaches__det
:- initialization(main).
p(0) :- !.
p(N) :- N > 0, N1 is N - 1, p(N1).
main :- ( p(200000) -> write(det_ok) ; write(det_no) ), nl.
%- 214 test_gate_pl_iso_rung9_a_backtrackable_recursion_reaches_the_depth_the_oracle_reaches__tak
:- initialization(main).
tak(X,Y,Z,A) :- X =< Y, Z = A.
tak(X,Y,Z,A) :- X > Y, X1 is X-1, tak(X1,Y,Z,A1), Y1 is Y-1, tak(Y1,Z,X,A2),
                Z1 is Z-1, tak(Z1,X,Y,A3), tak(A1,A2,A3,A).
main :- ( tak(18,12,6,A) -> write(tak(A)) ; write(tak_no) ), nl.
%--------- 215 test_gate_pl_library_record_and_dcg_data_terms_answer_as_swipl__w
:- use_module(library(record)).
:- record foo(x:integer).
:- record bar(x:foo).
:- record zot(x).
:- record point(x:integer=0, y:integer=0).
:- prolog_load_context(module, M), writeq(load_module-M), nl.
:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = E), writeq(N-R), nl.
d1(C) --> { C = (RF=[H|RF1]), H = h, RF1 = [] }.
d2(C) --> { C = (a ; x, RF=[H|RF1], f(RF, H, RF1)) }.
d3(f(X=Y)) --> [X], { Y = 2 }.
main :- t(dcg_data_eq, (phrase(d1(C1), []), C1 = (_ = [h]))), t(dcg_data_eq_in_or, (phrase(d2(C2), []), C2 = (a ; x, R = [Hd|T], f(R0, H0, T0)), R == R0, Hd == H0, T == T0)),
    t(dcg_head_eq, (phrase(d3(T3), [1]), T3 == f(1=2))),
    t(make, (make_foo([x(10)], F), F == foo(10))), t(make_typed_record_field, (make_foo([x(10)], F2), make_bar([x(F2)], B), is_bar(B))),
    t(default, (default_foo(D), D = foo(V), var(V))), t(is_unbound_field, (default_foo(D2), is_foo(D2))), t(untyped, (make_zot([], Z), Z = zot(V2), var(V2), is_zot(Z))),
    t(access, (make_point([y(2), x(1)], P), point_x(P, X), point_y(P, Y), X-Y == 1-2)), t(defaults, (make_point([y(2)], P2), P2 == point(0,2))),
    t(type_error, make_point([x(1), y(foo)], _)), t(inst_error, make_point([x(1), y(_)], _)), t(unknown_field, make_point([x(1), z(3)], _)),
    t(rest, (make_point([z(123), y(0), y(10), x(1)], P3, Rest), P3-Rest == point(1,10)-[z(123)])),
    t(set, (set_x_of_point(5, point(1,2), P4), P4 == point(5,2))), t(setarg, (P5 = point(1,2), set_y_of_point(7, P5), P5 == point(1,7))),
    t(data, findall(N-Vv, point_data(N, point(3,4), Vv), [x-3, y-4])), t(current_record, (current_record(point, Mm:Tt), Mm:Tt == user:point(x:integer=0,y:integer=0))),
    t(strip_plain, (strip_module(foo, M1, P1), M1-P1 == user-foo)), t(strip_nested, (strip_module(a:b:c, M2, Pp2), M2-Pp2 == b-c)),
    t(strip_var_module, (strip_module(Q:f, M3, P6), M3 == user, P6 == Q:f)).
%- 216 test_gate_pl_maplist_include_and_exclude_exit_deterministically_and_fast_term_io_round_trips_as_swipl__w
d(G) :- setup_call_cleanup(true, G, F = c), ( F == c -> R = det ; R = nondet ), functor(G, N, A), writeq(N/A-R), nl.
term(0). term(-1). term(X) :- X is 1<<62. term(X) :- X is pi. term(''). term(aap).
term(A) :- numlist(1, 1100, L), atom_codes(A, L). term(S) :- numlist(1, 1100, L), atom_codes(A, L), atom_string(A, S).
term([]). term(f(1, f(2))). term(f(X, Y, X, Y)). term(X) :- X = f(X). term(L) :- numlist(-1000, 1000, L).
rc(In, T, R0, R) :- fast_read(In, T2), ( T =@= T2 -> R = R0 ; R = bad ).
main :- d(maplist(atom, [a, b])), d(maplist(=, [a], _)), d(maplist([X, Y, Z]>>(Z = X-Y), [1], [2], _)), d(maplist([A, B, C, E]>>(E = A-B-C), [1], [2], [3], _)),
        d(include(atom, [a, 1], _)), d(exclude(atom, [a, 1], _)),
        findall(T, term(T), Ts),
        ( forall(member(T, Ts), ( fast_term_serialized(T, S), fast_term_serialized(T1, S), T =@= T1 )) -> writeq(serialize-ok) ; writeq(serialize-bad) ), nl,
        setup_call_cleanup(tmp_file_stream(binary, F, Out), maplist(fast_write(Out), Ts), close(Out)),
        setup_call_cleanup(open(F, read, In, [type(binary)]), foldl(rc(In), Ts, ok, R), close(In)), delete_file(F), writeq(sequence-R), nl,
        open_null_stream(Nul), set_stream(Nul, encoding(octet)), catch(fast_write(Nul, a(V, V, Nul)), error(Er, _), true), close(Nul), ( Er = permission_error(P, K, _) -> writeq(P-K) ; writeq(no_error) ), nl,
        halt.
:- initialization(main).
%----------------- 217 test_gate_pl_max_arity_is_the_functor_tables_int_bound__w
:- initialization(main).
t(N, G) :- write(N), write(': '), catch((G -> true ; write(failed)), error(E, _), (write(caught(E)))), nl.
main :-
    t(flag, (current_prolog_flag(max_arity, A), write(A))),
    t(enum, (current_prolog_flag(F, V), F == max_arity, write(F-V))),
    t(functor2000, (functor(T, f, 2000), arg(2000, T, X), (var(X) -> write(ok) ; write(no)))),
    t(univ3000, (numlist(1, 3000, L), T3 =.. [g|L], functor(T3, _, N3), arg(3000, T3, Y), write(N3/Y))),
    t(functor5000_univ, (functor(T5, h, 5000), T5 =.. [_|As], length(As, N5), write(N5))),
    t(copy_term4000, (functor(T6, k, 4000), copy_term(T6, T7), functor(T7, _, N7), write(N7))),
    t(functor_max_plus_1, (current_prolog_flag(max_arity, M), M1 is M + 1, functor(_, foo, M1))),
    t(functor_bignum, functor(_, f, 100000000000000000000)),
    t(abolish_max_plus_1, (current_prolog_flag(max_arity, M2), M3 is M2 + 1, abolish(foo/M3))),
    t(set_flag, set_prolog_flag(max_arity, 40)),
    t(abolish2000, (abolish(foo/2000), write(ok))),
    halt.
%------------------- 218 test_gate_pl_max_integer_is_not_an_evaluable_functor__w
:- initialization(main).
t(N, G) :- catch(( G -> write(N-answered) ; write(N-failed) ), error(type_error(evaluable, F/A), _),
                 write(N-type_error(F/A))), nl.
main :- t(control, (_ is foo)), t(maxi, (_ is max_integer)), t(mini, (_ is min_integer)).
%------ 219 test_gate_pl_max_integer_min_integer_absent_when_bounded_is_false__w
:- initialization(main).
chk(F) :- catch(( current_prolog_flag(F, V) -> write(present(F, V)) ; write(absent(F)) ), E,
                ( E = error(domain_error(prolog_flag, F), _) -> write(absent(F)) ; write(bad(F, E)) )), nl.
main :- ( current_prolog_flag(bounded, B) -> write(bounded(B)) ; write(bounded(missing)) ), nl,
        chk(max_integer), chk(min_integer).
%---------------- 220 test_gate_pl_meta_call_reaches_control_constructs__bi_atom
:- initialization(main).
main :- X = atom(foo), call(X), write(yes), nl.
%---------------- 221 test_gate_pl_meta_call_reaches_control_constructs__bi_fail
:- initialization(main).
main :- ( X = fail, call(X) ; write(elsepath) ), nl.
%--------------- 222 test_gate_pl_meta_call_reaches_control_constructs__bi_write
:- initialization(main).
main :- X = write(bi), call(X), nl.
%--- 223 test_gate_pl_moded_tabling_and_the_semi_naive_leader_answer_as_swipl__g
:- initialization(main).
:- table path(index, index, first).
path(X, Y, N) :- path(X, Z, N1), edge(Z, Y), N is N1 + 1.
path(X, Y, 1) :- edge(X, Y).
edge(a, b). edge(b, a).
:- table conn(_, _, min).
conn(X, Y, 1) :- c(X, Y).
conn(X, Y, N) :- conn(X, Z, N1), c(Z, Y), N is N1 + 1.
:- table connx(_, _, max).
connx(X, Y, 1) :- c(X, Y).
connx(X, Y, N) :- connx(X, Z, N1), c(Z, Y), N is N1 + 1.
c(ams, sch). c(ams, haa). c(sch, lei). c(haa, lei). c(ams, lei).
:- table train(_, _, lattice(shortest/3)).
train(X, Y, [X, Y]) :- c(X, Y).
train(X, Y, P) :- train(X, Z, P0), c(Z, Y), append(P0, [Y], P).
shortest(P1, P2, P) :- length(P1, L1), length(P2, L2), ( L1 < L2 -> P = P1 ; P = P2 ).
:- table t1(+, +, max).
t1(L, L2, V) :- member(V1, L), member(V2, L2), V is V1 + V2.
:- table p2(lattice(orp/3)), s2(lattice(ors/3)).
orp(A, B, A+B).
ors(A, B, A-B).
p2(A) :- s2(A).
s2(1). s2(2).
:- table adv(_, _, lattice(plus/3)), r11(_, _, _, lattice(plus/3)).
adv(A, B, 1) :- proj(C, A), proj(C, B), A \== B, r11(A, B, C, _).
r11(A, B, C, 1) :- pub(D, A, C), pub(D, B, C).
proj(p1, h). proj(p1, b). proj(p2, h). proj(p2, b).
pub(x1, h, p1). pub(x1, b, p1). pub(x2, h, p1). pub(x2, b, p1). pub(x3, h, p2). pub(x3, b, p2).
:- table opa(_, _, lattice(or/3)), oe(_, _, lattice(or/3)).
opa(X, X, one).
opa(X, Y, C) :- oe(X, Z, A), opa(Z, Y, B), and(A, B, C).
opa(A, B, zero) :- nonvar(A), nonvar(B).
oe(a, b, e(a, b)). oe(b, e, e(b, e)). oe(a, e, e(a, e)).
oe(A, B, zero) :- nonvar(A), nonvar(B).
or(zero, B, B) :- !.
or(B, zero, B) :- !.
or(one, one, one) :- !.
or(A, A, A) :- !.
or(A, B, or(A, B)).
and(zero, _, _) :- !, fail.
and(_, zero, _) :- !, fail.
and(one, B, B) :- !.
and(B, one, B) :- !.
and(A, A, A) :- !.
and(A, B, and(A, B)).
:- table big(_, po('>'/2)).
big(k, 3). big(k, 9). big(k, 4).
:- table tot(_, sum).
tot(k, 3). tot(k, 9). tot(k, 4).
:- table two(_, min, max).
two(k, 5, 1). two(k, 2, 7). two(k, 8, 3).
:- table lst(_, last).
lst(k, x). lst(k, y). lst(k, z).
:- table bas/2.
bas --> "b".
bas --> bas, "a".
:- table d/1, e/1.
d(X) :- e(Y), Y < 3000, X is Y + 1.
d(0).
e(X) :- d(Y), Y < 3000, X is Y + 1.
e(0).
s(T, G) :- findall(T, G, L), msort(L, S), writeq(S), nl.
main :-
  s(t(X, Y, L), path(X, Y, L)),
  conn(ams, lei, N), writeq(N), nl, connx(ams, lei, M), writeq(M), nl,
  train(ams, lei, P), writeq(P), nl,
  L1 = [1, 2, 3, 5, 98, 3, 103, 4, 4, 21], t1(L1, L1, Max), writeq(Max), nl,
  s(A, p2(A)), s(Q, adv(h, b, Q)),
  ( opa(a, e, T), member(T, [or(e(a, e), and(e(a, b), e(b, e))), or(and(e(a, b), e(b, e)), e(a, e))]) -> writeq(or_join_ok) ; writeq(or_join_bad) ), nl,
  s(K-V, big(K, V)), s(K2-V2, tot(K2, V2)), s(K3-Mn-Mx, two(K3, Mn, Mx)), s(K4-V4, lst(K4, V4)),
  catch((conn(ams, sch, 3) -> writeq(y) ; writeq(n)), error(Er, _), writeq(caught(Er))), nl,
  length(As, 1000), maplist(=(0'a), As), findall(R, bas([0'b|As], R), Rs), length(Rs, NR), writeq(bas(NR)), nl,
  ( d(3000) -> writeq(deep_yes) ; writeq(deep_no) ), nl,
  abolish_all_tables, conn(ams, lei, N2), writeq(N2), nl,
  halt.
%------------------------------ 224 test_gate_pl_module_rule_answers_as_swipl__g
:- module(m, [pub/1]).
:- initialization(main).
:- dynamic cnt/1.
pub(X) :- priv(X).
priv(1).
priv2(X, f(X)).
cm(M) :- context_module(M).
bump :- retract(cnt(N)), N1 is N + 1, assertz(cnt(N1)).
reflect :- clause(priv2(_, _), B), B == true.
main :- pub(X), writeq(X), nl, priv(Y), writeq(Y), nl, maplist(priv2, [a,b], L), writeq(L), nl,
        cm(M), writeq(M), nl, m:priv(Z), writeq(Z), nl, M2 = m, M2:priv(W), writeq(W), nl,
        assertz(cnt(0)), bump, bump, cnt(C), writeq(C), nl, findall(Q, priv(Q), Qs), writeq(Qs), nl,
        ( current_predicate(priv/1) -> writeq(cp_yes) ; writeq(cp_no) ), nl,
        G = cm(K), call(G), writeq(K), nl, ( reflect -> writeq(clause_yes) ; writeq(clause_no) ), nl,
        forall(member(V, [1]), priv(V)), writeq(forall_ok), nl, halt.
%--- 225 test_gate_pl_monitor_dynamic_and_asserted_predicates_are_no_events__dyn
:- dynamic(counter/1).
counter(0).
st(X) :- X = 1.
main :- counter(C), write(C), nl, assertz(made(7)), made(M), write(M), nl, st(S), write(S), nl,
        G = (1 == 1), call(G), write(G), nl.
:- initialization(main).
%---------------- 226 test_gate_pl_multifile_initialization_runs_every_file__one
one :- write(one_ran), nl.
:- initialization(one).
%---------------- 227 test_gate_pl_multifile_initialization_runs_every_file__two
two :- write(two_ran), nl.
:- initialization(two).
%----------------- 228 test_gate_pl_nb_linkarg_links_without_copying_as_swipl__w
:- initialization(main).
main :- T = f(_), V = g(X), nb_linkarg(1, T, V), X = 1, arg(1, T, A), writeq(linked(A)), nl,
  T2 = f(_), V2 = g(Y), nb_setarg(1, T2, V2), Y = 1, arg(1, T2, A2), ( A2 = g(Z), var(Z) -> writeq(setarg_copied) ; writeq(setarg_shared(A2)) ), nl,
  T3 = f(a), ( nb_linkarg(1, T3, v), fail ; true ), arg(1, T3, A3), writeq(survives(A3)), nl,
  T4 = f(a), ( setarg(1, T4, v), fail ; true ), arg(1, T4, A4), writeq(setarg_undone(A4)), nl,
  ( nb_linkarg(0, f(a), x) -> writeq(zero_yes) ; writeq(zero_no) ), nl, catch(nb_linkarg(x, f(a), y), error(E2, _), true), writeq(bad(E2)), nl.
%-------------------------------------- 229 test_gate_pl_no_synthetic_main__decl
:- initialization(main).
main :- write(ran_main), nl.
%------------------- 230 test_gate_pl_numbervars_4_scans_its_options_as_swipl__w
:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = err(E)), writeq(N-R), nl.
main :- t(sing, (numbervars(x(_,X,X), 0, E1, [singletons(true)]), writeq(E1), nl)),
 t(impl, (numbervars(x(_,X2,X2), 0, E2, [singletons]), writeq(E2), nl)),
 t(none, (numbervars(x(_,X3,X3), 0, E3, [unlikely(true)]), writeq(E3), nl)),
 t(bad42, numbervars(x(_,Y,Y), 0, _, [singletons(42)])),
 t(badopt, numbervars(x(_,Y1,Y1), 0, _, [f(a,b)])),
 t(badflt, numbervars(x(_,Y2,Y2), 0, _, [1.3])),
 t(inst1, numbervars(x(_,Y3,Y3), 0, _, [_])),
 t(inst2, numbervars(x(_,Y4,Y4), 0, _, [singletons(true)|_])),
 t(tail1, numbervars(x(_,Y5,Y5), 0, _, [singletons(true)|1])),
 t(dict, (numbervars(x(_,Z,Z), 0, E4, _{singletons:true}), writeq(E4), nl)),
 t(dict42, numbervars(x(_,Z1,Z1), 0, _, _{singletons:42})),
 t(dictno, (numbervars(x(_,Z2,Z2), 0, E5, _{unlikely:true}), writeq(E5), nl)),
 t(attvar_bad, numbervars(f(_), 0, _, [attvar(zzz)])),
 t(functor_name, (numbervars(f(A), 5, E7, [functor_name(v)]), writeq(f(A)-E7), nl)),
 t(functor_name_bad, numbervars(f(_), 5, _, [functor_name(1)])),
 t(bool_yes, numbervars(f(_), 0, _, [singletons(yes)])),
 t(bool_on, (numbervars(f(A7,A7,_), 0, E8, [singletons(on)]), print(f(A7)-E8), nl)),
 t(false, (numbervars(f(_,_), 0, E9, [singletons(false)]), print(E9), nl)),
 t(false_then_implicit, (numbervars(f(_,_), 0, E10, [singletons(false), singletons]), print(E10), nl)),
 t(true_then_false, (numbervars(f(_,_), 0, E11, [singletons(true), singletons(false)]), print(E11), nl)),
 t(not_a_list, numbervars(f(_), 0, _, foo)),
 t(start_bad, numbervars(f(_), a, _, [])).
%--------- 231 test_gate_pl_open_a_file_it_may_not_open_is_a_permission_error__w
t(N, F, M) :- catch((open(F, M, S), close(S), R = ok), error(E, _), R = E), write('@ '), write(N), write(' '), writeq(R), nl.
:- initialization(main).
main :- t(noread, nr, read), t(nowrite, nw, write), t(noappend, nw, append), t(rootwrite, '/no_write_permission', write),
    t(missing_dir, 'no/such/dir/x', write), t(missing_file, nosuchfile, read).
%- 232 test_gate_pl_phrase_of_a_non_callable_body_is_a_callable_type_error_as_both_oracles__w
:- initialization(main).
main :- forall(member(G, [phrase(27, [], []), phrase(27, []), phrase(1.5, [], [])]), (catch((call(G) -> R = yes ; R = no), error(E, _), R = E), writeq(R), nl)), halt.
%---------- 233 test_gate_pl_pipe_2_and_open_null_stream_1_answer_as_swipl__null
:- initialization(main).
main :-
    open_null_stream(S),
    write(S, hello), nl(S),
    format(S, "~w~n", [x]),
    put_char(S, a),
    ( is_stream(S) -> write(is_stream) ; write(not_stream) ), nl,
    ( stream_property(S, mode(M)) -> write(M) ; write(nomode) ), nl,
    ( stream_property(S, output) -> write(output) ; write(not_output) ), nl,
    flush_output(S),
    close(S),
    catch(write(S, y), error(Err, _), true),
    ( nonvar(Err) -> Err =.. [Fn|_], write(Fn) ; write(no_error) ), nl,
    halt.
%---------- 234 test_gate_pl_pipe_2_and_open_null_stream_1_answer_as_swipl__pipe
:- initialization(main).
main :-
    pipe(In, Out),
    write(Out, hello), nl(Out), flush_output(Out),
    get_code(In, A), get_code(In, B), get_code(In, C), get_code(In, D), get_code(In, E), get_code(In, F),
    write([A,B,C,D,E,F]), nl,
    write(Out, xy), close(Out),
    get_code(In, G), get_code(In, H), get_code(In, I),
    write([G,H,I]), nl,
    close(In),
    pipe(I2, O2),
    ( is_stream(I2), is_stream(O2) -> write(both_streams) ; write(not_streams) ), nl,
    ( stream_property(I2, mode(M1)) -> write(M1) ; write(nomode) ), nl,
    ( stream_property(O2, mode(M2)) -> write(M2) ; write(nomode) ), nl,
    close(O2), close(I2),
    catch(write(O2, x), error(Err, _), true),
    ( nonvar(Err) -> Err =.. [Fn|_], write(Fn) ; write(no_error) ), nl,
    halt.
%------------------------------- 235 test_gate_pl_port_trace_oracle_diff__CANARY
color(red).
color(green).
color(blue).
:- initialization(main).
main :- color(C), write(C), nl, fail ; true.
%----- 236 test_gate_pl_portray_reaches_every_subterm_of_print_and_write_term__w
portray(Atom) :- atom(Atom), Atom \== [], write(Atom), write(Atom).
portray(Float) :- float(Float), Integer is truncate(Float), write(Integer).
main :- print(a(foo, b(c(foo, 3.14)))), nl, print([x, 2.5]), nl, current_output(S), print(S, f(bar)), nl,
        write_term(g(baz, 1.5), [portray(true)]), nl, write_term(S, h(qux), [portray(true), numbervars(true)]), nl,
        write_term(k(foo), [quoted(true)]), nl,
        ( predicate_property(portray(_), dynamic) -> write(dynamic) ; write(not_dynamic) ), nl,
        ( predicate_property(portray(_), multifile) -> write(multifile) ; write(not_multifile) ), nl.
:- initialization(main).
%------------------------------------- 237 test_gate_pl_prelude_libs_cost__apply
:- initialization(main).
main :- list_to_rbtree([k1-v1, k2-v2], T), rb_insert(T, k0, v0, T2), rb_keys(T2, Ks), write(Ks), nl.
%------------------------------------ 238 test_gate_pl_prelude_libs_cost__native
:- initialization(main).
main :- aggregate_all(count, member(_, [a, b]), C), aggregate_all(sum(X), member(X, [1, 2]), S), write(C-S), nl.
%----------------------------------- 239 test_gate_pl_prelude_libs_cost__nothing
:- initialization(main).
main :- append([a], [b], L), member(X, L), write(X), nl, length(L, N), write(N), nl.
%----- 240 test_gate_pl_print_1_honours_portray_and_costs_nothing_without_it__fc
:- initialization(main).
portray(x) :- numlist(1, 20000, L), sum_list(L, S), S > 0, write(xx).
main :- T = f(x, g(x, h(x)), k(x, x), x), format("~p~n", [T]), format("~p ~w ~p~n", [g(x), x, f(x, x)]),
        L = [x, f(x), x], format("~p~n", [L]), length(L, N), write(N), nl.
%----- 241 test_gate_pl_print_1_honours_portray_and_costs_nothing_without_it__fn
:- initialization(main).
portray(p(X)) :- format("<~p>", [X]).
portray(x) :- numlist(1, 5000, L), length(L, _), write(ex).
main :- format("~p~n", [f(p(x), p(g(x, p(x))), x)]), format("~p|~p~n", [p(p(x)), q(x)]).
%----- 242 test_gate_pl_print_1_honours_portray_and_costs_nothing_without_it__fp
:- dynamic(portray/1).
portray(Atom) :- atom(Atom), write(Atom), write(Atom).
portray(Float) :- float(Float), Integer is truncate(Float), write(Integer).
:- initialization(main).
main :- format("[~p]~n", [3.14]), format("[~p]~n", [foo]), format("[~p]~n", [a(foo)]),
	format("[~p]~n", [a(foo,b(c(foo,3.14)))]), format("[~p]~n", [[foo,3.14]]), format("[~p]~n", [1+foo]), halt.
%- 243 test_gate_pl_print_1_honours_portray_and_costs_nothing_without_it__noportray
:- initialization(main).
main :- print(42), nl, print(foo), nl, print(a(b)), nl, print([1,2]), nl.
%- 244 test_gate_pl_print_1_honours_portray_and_costs_nothing_without_it__ownprint
portray(A) :- atom(A), write(A), write(A).
print(X) :- write(mine(X)).
:- initialization(main).
main :- print(foo), nl, halt.
%- 245 test_gate_pl_print_1_honours_portray_and_costs_nothing_without_it__portray
portray(A) :- atom(A), write(A), write(A).
portray(F) :- float(F), I is truncate(F), write(I).
:- initialization(main).
main :- print(42), nl, print(3.14), nl, print(foo), nl, halt.
%-- 246 test_gate_pl_print_1_honours_portray_and_costs_nothing_without_it__slope
:- dynamic(portray/1).
portray(x) :- write(one).
portray(x) :- write(two).
loop(0) :- !.
loop(N) :- format("~p", [f(x,x,x,x,x)]), nl, M is N-1, loop(M).
:- initialization(main).
main :- loop(LOOPS), write(done), nl, halt.
%---- 247 test_gate_pl_print_1_honours_portray_and_costs_nothing_without_it__thr
:- dynamic(portray/1).
portray(_) :- throw(portray_fired).
:- initialization(main).
main :- catch(print(baz(3)), E, (write(caught_print(E)), nl)),
	catch(format("~p", [qux(4)]), E2, (write(caught_format(E2)), nl)), halt.
%- 248 test_gate_pl_print_1_honours_portray_and_costs_nothing_without_it__yesportray
portray(A) :- atom(A), write(A), write(A).
:- initialization(main).
main :- print(42), nl, print(foo), nl, print(a(b)), nl, print([1,2]), nl.
%----------- 249 test_gate_pl_raising_directive_does_not_abort_the_load__failing
a :- write(before), nl.
:- fail.
b :- write(after), nl.
:- initialization(main).
main :- a, b.
%------------- 250 test_gate_pl_raising_directive_does_not_abort_the_load__raise
a :- write(before), nl.
:- no_such_directive(x).
b :- write(after), nl.
:- initialization(main).
main :- a, b.
%----------------------- 251 test_gate_pl_random_permutation_answers_as_swipl__w
:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = err(E)), writeq(N-R), nl.
main :- t(same_elements, (numlist(1, 50, L), random_permutation(L, P), msort(P, L))),
  t(length, (random_permutation([a,b,c,d], P2), length(P2, 4))),
  t(reverse_direction, (random_permutation(Q, [x,y,z]), msort(Q, [x,y,z]))),
  t(empty, random_permutation([], [])),
  t(duplicates_kept, (random_permutation([a,a,b], P3), msort(P3, [a,a,b]))),
  t(both_unbound, random_permutation(_, _)),
  t(not_a_list, random_permutation(foo, _)).
%------ 252 test_gate_pl_readutil_and_the_file_name_builtins_answer_as_swipl__w2
:- use_module(library(lists)).
t(N, G) :- catch((G -> true ; (write(N-no), nl)), E, (write(N-ex), write(' '), print_message(silent, E), E = error(F, _), writeq(F), nl)).
:- initialization(main).
main :- t(rs5a, (open('rs.txt', read, S), read_string(S, "\n", " ", Sep, Str), read_string(S, "\n", " ", Sep2, Str2), read_string(S, "\n", " ", Sep3, Str3), close(S), writeq([Sep-Str, Sep2-Str2, Sep3-Str3]), nl)),
  t(rs3, (open('rs.txt', read, S3), read_string(S3, L, Str4), close(S3), writeq(L-Str4), nl)),
  t(abs3, (absolute_file_name('rs.txt', P, [access(read)]), atom(P), write(abs3-ok), nl)),
  t(abs3_old_order, (absolute_file_name('rs.txt', [access(read)], P2), atom(P2), write(old_ok), nl)),
  t(abs3_ext, (absolute_file_name(rs, P3, [extensions([txt]), access(read)]), file_base_name(P3, B3), writeq(B3), nl)),
  t(abs3_unknown_opt, (absolute_file_name('rs.txt', P4, [encoding(utf8), tail(_)]), atom(P4), write(unknown_ok), nl)),
  t(abs3_missing, absolute_file_name(nosuch, _, [access(read)])),
  t(abs3_missing_fail, absolute_file_name(nosuch, _, [access(read), file_errors(fail)])),
  t(access_file_r, (access_file('rs.txt', read), write(af_ok), nl)), t(access_file_missing, access_file(nosuch, read)), t(access_file_none, (access_file(nosuch, none), write(none_ok), nl)),
  t(access_file_write_new, (access_file(newfile, write), write(w_ok), nl)),
  t(open_unknown_opt, (open('rs.txt', read, S9, [tail(_), foo(bar)]), close(S9), write(open_ok), nl)).
%------ 253 test_gate_pl_readutil_and_the_file_name_builtins_answer_as_swipl__w3
:- use_module(library(lists)).
:- initialization(main).
p(X) :- writeq(X), write(' ').
main :- forall(member(P, ['a/b/c.pl', 'c.pl', '/c', '/', 'a/b/', '', 'a//b', '.hidden', 'a.b/c']), ( file_base_name(P, B), file_directory_name(P, D), p(P), p(B), p(D), nl )),
  forall(member(N, ['a/b.pl', 'b', 'a.b/c', 'x.tar.gz', '.hidden', 'a/b.']), ( file_name_extension(B2, E2, N), p(N), p(B2), p(E2), nl )),
  forall(member(B-E, [foo-pl, foo-'.pl', 'foo.pl'-pl, foo-'', 'a/b'-txt]), ( file_name_extension(B, E, N3), p(N3), nl )),
  ( file_name_extension(foo, pl, 'foo.pl') -> p(check_yes) ; p(check_no) ), ( file_name_extension(B4, pl, 'foo.pl') -> p(B4) ; p(b4_no) ), ( file_name_extension(_, txt, 'foo.pl') -> p(b5) ; p(b5_no) ), nl.
%- 254 test_gate_pl_retract_body_variable_is_call_and_the_gnu_dialect_raises_as_gprolog__g
:- dynamic(pv/1).
:- dynamic(pw/1).
:- dynamic(ds/1).
sp(1).
sp(2).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true),
        (   var(E) -> R = L ;   E = error(F, _) -> R = error(F) ;   R = ball(E) ),
        \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
:- initialization(main).
main :- assertz((pv(G) :- G)), assertz((pw(W) :- (W = 1 ; W = 2), \+ W = 3)), assertz(ds(1)), assertz(ds(2)),
  t(retract((pv(_) :- _))),
  t(retract((pw(_) :- 3))),
  t(retract((ds(_) :- true))),
  t(clause(sp(_), _)),
  t(clause(ds(_), _)),
  t(retract(sp(1))).
%- 255 test_gate_pl_retract_logical_view_flags_gensym_and_swi_atom_concat_answer_as_swipl__a
:- dynamic foo/1, insect/1, icopy/1.
:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = E), writeq(N-R), nl.
main :- t(retract_fact, (assert(foo(1)), retract(foo(X0)), X0 == 1)), retractall(foo(_)),
    G1 = retract((foo(X1) :- true)), t(retract_fact_as_rule, (assert(foo(1)), call(G1), X1 == 1)), retractall(foo(_)),
    G2 = retract((foo(1) :- B2)), t(retract_open_body, (assert((foo(A2) :- bar(A2))), call(G2), B2 == bar(1))), retractall(foo(_)),
    G3 = retract((foo(1) :- bar(2))), t(retract_body_mismatch, (assert((foo(A3) :- bar(A3))), \+ call(G3))), retractall(foo(_)),
    t(retract_var_module_head, (assert((foo(1) :- bar(a))), context_module(M), G4 = retract((M:foo(X4) :- bar(A4))), call(G4), X4-A4 == 1-a)), retractall(foo(_)),
    t(retract_qualified_clause, (assert((foo(1) :- bar(a))), M5 = user, G5 = retract(M5:(foo(X5) :- bar(_))), call(G5), X5 == 1)), retractall(foo(_)),
    t(update_view_inner_retract, (assertz(insect(ant)), assertz(insect(bee)), ( retract(insect(I)), assertz(icopy(I)), retract(insect(bee)), fail ; findall(J, retract(icopy(J)), L) ), L == [ant,bee])),
    t(update_view_retract_ahead, (assertz(insect(a)), assertz(insect(b)), assertz(insect(c)), findall(X, (retract(insect(X)), (X == a -> retract(insect(c)) ; true)), L2), L2 == [a,b,c])),
    t(retract_var, retract(_)),
    t(flag_count, (flag(k, O, O+1), flag(k, O1, O1*10), get_flag(k, V), [O, O1, V] == [0, 1, 10])),
    t(flag_atom_value, (flag(j, _, foo), get_flag(j, J1), J1 == foo)), t(flag_compound_key, (flag(f(1), A, 5), get_flag(f(1), B), A-B == 0-5)),
    t(set_flag, (set_flag(k, 3), get_flag(k, K), K == 3)), t(flag_old_mismatch_keeps, (\+ flag(k, 99, 1), get_flag(k, K2), K2 == 3)),
    t(get_flag_unset, (get_flag(nosuch, U), U == 0)), t(with_mutex_once, findall(Y, with_mutex(m, member(Y, [1,2])), [1])),
    t(gensym, (gensym(a, S1), gensym(a, S2), gensym(b, S3), [S1,S2,S3] == [a1,a2,b1])), t(reset_gensym_1, (reset_gensym(a), gensym(a, S4), S4 == a1)),
    t(reset_gensym_0, (reset_gensym, gensym(b, S5), S5 == b1)).
%- 256 test_gate_pl_retract_logical_view_flags_gensym_and_swi_atom_concat_answer_as_swipl__b
:- module(b, []).
:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = E), writeq(N-R), nl.
main :- t(int_right, (atom_concat(a, 1, X), X == a1)), t(float_left, (atom_concat(1.5, b, Y), Y == '1.5b')), G = atom_concat(a, 2, Z), t(called, (call(G), Z == a2)),
    t(split_number, (findall(P+Q, atom_concat(P, Q, 12), L), L == [''+'12', '1'+'2', '12'+''])), t(compound_whole, atom_concat(_, _, f(x))), t(compound_part, atom_concat(a, f(1), _)),
    t(plain_atoms, (atom_concat(X5, b, ab), X5 == a)).
%- 257 test_gate_pl_reverse_ends_on_a_partial_list_and_duplicate_term_copies_a_bound_cell_as_swipl__z
:- use_module(library(nb_set)).
t(G) :- catch((G -> true ; write(no)), error(E, _), writeq(E)), nl.
dpc(K, C) :- G =.. [duplicate_term, K, C], call(G).
main :-
    t((findall(Y, reverse(Y, [a,b]), L1), writeq(L1))),
    t((findall(Z-W, limit(3, reverse(Z, W)), L2), numbervars(L2, 0, _), writeq(L2))),
    t((findall(R, reverse([1,2,3], R), L3), writeq(L3))),
    t((X4 = [a|T4], findall(X4-T4, reverse(X4, [p,q,r]), L4), numbervars(L4, 0, _), writeq(L4))),
    t((findall(P, reverse([1,2|P], [z,y,x]), L5), writeq(L5))),
    t((findall(Q, reverse(Q, []), L6), writeq(L6))),
    t((reverse([a,b|_], [c]) -> write(yes) ; write(no))),
    t((H = h(none), K = v(E), ( member(E, [9, 10]), duplicate_term(K, C), nb_linkarg(1, H, C), fail ; arg(1, H, R8), writeq(direct(R8)) ))),
    t((H9 = h(none), K9 = v(E9), ( member(E9, [9, 10]), dpc(K9, C9), nb_linkarg(1, H9, C9), fail ; arg(1, H9, R9), writeq(call_n(R9)) ))),
    t((K1 = v(E1), empty_nb_set(S1), findall(E1, (between(0, 60, E1), add_nb_set(K1, S1, true)), L10), length(L10, N10), writeq(prebuilt_key_set(N10)))),
    t((findall(E2, limit(40, distinct(E2, (between(0, 200, N2), E2 is N2 // 3))), L11), length(L11, N11), last(L11, La), writeq(distinct(N11, La)))),
    t((findall(E3, distinct(v(E3), (between(0, 60, E3))), L12), length(L12, N12), writeq(distinct_compound(N12)))).
:- initialization((main, halt)).
%---------------------- 258 test_gate_pl_rungs_is_clean_at_the_tiny_arena__probe
:- initialization(main).
mk(0,[]) :- !.
mk(N,[N|T]) :- M is N-1, mk(M,T).
main :- mk(2000,L), length(L,X), write(X), nl.
%- 259 test_gate_pl_select_dict_the_dict_operators_and_destructive_dict_assignment_answer_as_swipl__w
:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = err(E)), writeq(N-R), nl.
kv(D, T-P) :- dict_pairs(D, T0, P), ( var(T0) -> T = var ; T = T0 ).
main :- t(get5, (get_dict(k1, a{k1:v1}, V, D, v2), V == v1, D == a{k1:v2})),
  t(get5_list, (get_dict(k1, [k1:v1], V2, D2, v2), V2 == v1, kv(D2, var-[k1-v2]))),
  t(get5_mismatch, get_dict(k1, a{k1:v1}, v2, _, v2)),
  t(select_tag_mismatch, select_dict(b{k1:v1}, a{k1:v1}, _)),
  t(select_var_tag, (select_dict(T{k1:Y}, a{k1:v1, k2:v2}, R2), T == a, Y == v1, kv(R2, var-[k2-v2]))),
  t(select_list, (select_dict([x(1)], [x(1),z(3)], R3), kv(R3, var-[z-3]))),
  t(sub, (T2{k1:Z} :< a{k1:v1, k2:v2}, T2 == a, Z == v1)),
  t(sub_missing, a{x:_} :< a{y:2}),
  t(join, (T3{k1:W, k2:W2} >:< a{k1:v1, k3:v3}, T3 == a, W == v1, var(W2))),
  t(join_clash, a{k1:v1} >:< a{k1:v2}),
  t(bset, (DD = a{k1:v1}, b_set_dict(k1, DD, v2), DD == a{k1:v2})),
  t(bset_undone, (DD2 = a{k1:v1}, (b_set_dict(k1, DD2, v2), fail ; true), DD2 == a{k1:v1})),
  t(nbset_kept, (DD3 = a{k1:v1}, (nb_set_dict(k1, DD3, v2), fail ; true), DD3 == a{k1:v2})),
  t(bset_missing, (DD4 = a{k1:v1}, b_set_dict(k9, DD4, v2))),
  t(dict_key, dict_pairs(_, a, ["k1"-v1])).
%- 260 test_gate_pl_set_locale_publishes_its_properties_and_the_colon_directives_of_format_group_by_them_as_swipl__w
:- initialization(main).
fwl(Out, Fmt, Args, Props) :- current_locale(Old), locale_create(Tmp, Old, Props), setup_call_cleanup(set_locale(Tmp), format(Out, Fmt, Args), set_locale(Old)).
t(Fmt, Args, Props) :- ( catch(fwl(atom(A), Fmt, Args, Props), E, (writeq(ex(E)), nl, fail)) -> atom_codes(A, Cs), writeq(Cs) ; writeq(failed) ), nl.
main :-
    t('~:d', [123456789], [grouping([2,2])]),
    t('~2:d', [123456789], [grouping([2,2])]),
    t('~:d', [123456789], [grouping([2,2,repeat(3)])]),
    t('~2:d', [123456789], [decimal_point(','), thousands_sep('.')]),
    t('~2:d', [123456789], [decimal_point(','), thousands_sep(' ')]),
    t('~2:d', [123456789], [decimal_point(','), thousands_sep('. ')]),
    t('~2:f', [1234567.89], [decimal_point(','), thousands_sep(' ')]),
    t('~2:f', [1234567.89], [decimal_point(','), thousands_sep('. ')]),
    t('~:d', [-1234567], [thousands_sep(' ')]),
    t('~:d', [1234567], [grouping([3]), thousands_sep(',')]),
    current_locale(L), writeq(L), nl,
    format(atom(A), '~:d', [1234567]), writeq(A), nl,
    format(atom(B), '~D', [1234567]), writeq(B), nl,
    halt.
%- 261 test_gate_pl_set_stream_encodings_pure_input_and_format_s_answer_as_swipl__w1
:- use_module(library(lists)).
:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = E), writeq(N-R), nl.
rt(Enc, Codes) :- atom_concat(f_, Enc, F), open(F, write, O, [encoding(Enc)]), format(O, '~s', [Codes]), close(O), open(F, read, I, [encoding(Enc)]), read_stream_codes(I, Back), close(I),
    open(F, read, B, [type(binary)]), read_bytes(B, Bytes), close(B), length(Bytes, NB), writeq(Enc-NB-(Back == Codes)), nl.
read_stream_codes(S, L) :- get_code(S, C), ( C == -1 -> L = [] ; L = [C|T], read_stream_codes(S, T) ).
read_bytes(S, L) :- get_byte(S, C), ( C == -1 -> L = [] ; L = [C|T], read_bytes(S, T) ).
main :- open(a, write, S), t(alias, (set_stream(S, alias(myout)), write(myout, hi), nl(myout))), t(tty, set_stream(user_output, tty(false))), t(buffer_size, set_stream(S, buffer_size(25))),
    t(buffer, set_stream(S, buffer(line))), t(eof_action, set_stream(S, eof_action(reset))), t(bad_prop, set_stream(S, foo(bar))), t(bad_eof, set_stream(S, eof_action(nope))), t(unbound, set_stream(S, _)),
    t(record_position, set_stream(S, record_position(true))), t(newline, set_stream(S, newline(posix))), close(S),
    open(a, read, R), t(read_back, (read_stream_codes(R, Cs), atom_codes(A, Cs), A == 'hi\n')), close(R),
    rt(octet, [104, 233, 255]), rt(iso_latin_1, [104, 233, 255]), rt(ascii, [104, 105]), rt(wchar_t, [104, 0x1F600]), rt(utf16le, [104, 0x1F600]), rt(utf8, [104, 0x1F600]),
    open(b, write, W), format(W, '~s', [[0x41]]), set_stream(W, encoding(utf16be)), format(W, '~s', [[0x42]]), close(W), open(b, read, BB, [type(binary)]), read_bytes(BB, BBy), close(BB), writeq(switch(BBy)), nl.
%- 262 test_gate_pl_set_stream_encodings_pure_input_and_format_s_answer_as_swipl__w2
:- use_module(library(lists)).
:- initialization(main).
main :- format("~s|~n", [[104,233,255]]), format("~s|~n", [[104,128512]]), atom_codes(A, [104,233,128512]), format("~w|~n", [A]), open(o8, write, O), format(O, "~s", [[104,233,128512]]), close(O),
  open(o8, read, I, [type(binary)]), get_byte(I, B1), get_byte(I, B2), get_byte(I, B3), close(I), writeq([B1,B2,B3]), nl.
%- 263 test_gate_pl_set_stream_encodings_pure_input_and_format_s_answer_as_swipl__w3
:- use_module(library(pure_input)).
:- initialization(main).
rt(Enc, List) :- tmp_file(x, F), open(F, write, O, [encoding(Enc)]), format(O, '~s', [List]), close(O),
   open(F, read, In, [encoding(Enc), bom(false)]), set_stream(In, buffer_size(25)), stream_to_lazy_list(In, Lazy), ( List = Lazy -> R = ok ; R = bad ), close(In),
   open(F, read, I2, [encoding(Enc), bom(false)]), rd(I2, Back), close(I2), length(Back, NB), ( Back = [B1|_] -> true ; B1 = none ), writeq(Enc-R-NB-B1), nl.
rd(S, L) :- get_code(S, C), ( C == -1 -> L = [] ; L = [C|T], rd(S, T) ).
main :- forall(member(E, [ascii, octet, iso_latin_1, utf8, utf16be, utf16le, wchar_t]), rt(E, [104, 105, 106])).
%- 264 test_gate_pl_set_stream_encodings_pure_input_and_format_s_answer_as_swipl__w4
:- use_module(library(pio)).
:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), E, R = E), writeq(N-R), nl.
main :- t(tmp, (tmp_file(plunit_pio, T), atom(T))), tmp_file(x, F), open(F, write, O), format(O, '~s', ["aba"]), close(O),
  t(open_read, (open(F, read, S), close(S))), t(lazy, (open(F, read, S2), stream_to_lazy_list(S2, L), L = [A|_], writeq(A), nl, close(S2))), t(pff, phrase_from_file("aba", F)), t(pff_fail, phrase_from_file("abc", F)).
%-------------- 265 test_gate_pl_set_stream_position_round_trips_and_refuses__sp
:- initialization(main).
p(N, G) :- ( catch(G, E, (write(N-ball(E)), nl)) -> true ; write(N-failed), nl ).
main :-
	p(binary_roundtrip, ( open('terms.pl', read, S1, [type(binary), reposition(true)]),
		stream_property(S1, position(P1)), get_byte(S1, B1), get_byte(S1, _),
		set_stream_position(S1, P1), get_byte(S1, B3), write(same(B1 == B3)), nl, close(S1) )),
	p(instantiation, ( open('terms.pl', read, S2, [reposition(true)]), set_stream_position(S2, _) )),
	p(domain, ( open('terms.pl', read, S3, [reposition(true)]), set_stream_position(S3, foo) )),
	p(permission, ( open('terms.pl', read, S4, [reposition(false)]),
		stream_property(S4, position(P4)), set_stream_position(S4, P4) )),
	p(no_such_stream, set_stream_position(no_such_alias, foo)),
	halt.
%----------------------------------- 266 test_gate_pl_sort_4_answers_as_swipl__g
:- initialization(main).
t(G) :- catch((G -> write(yes(G)) ; write(no)), E, write(E)), nl.
main :-
  t(sort(0,@>,[a-1,b-2,a-3,c-0],_)),
  t(sort(1,@>,[a-1,b-2,a-3,c-0],_)),
  t(sort(1,@<,[a-1,b-2,a-3,c-0],_)),
  t(sort(1,@>=,[a-1,b-2,a-3,c-0],_)),
  t(sort(2,@=<,[a-1,b-2,a-3,c-0],_)),
  t(sort(0,@<,[],_)),
  t(sort(_,@<,[a],_)),
  t(sort(0,_,[a],_)),
  t(sort(0,foo,[a],_)),
  t(sort(a,@<,[a],_)),
  t(sort(-1,@<,[a],_)),
  t(sort(1,@<,[a],_)),
  t(sort(3,@<,[f(a)],_)),
  t(sort(0,@<,[a|_],_)),
  t(sort(0,@<,[a|b],_)),
  t(sort(0,@<,foo,_)),
  t(sort(0,@<,[b,a],[a|_])),
  t(sort(0,@<,[b,a],foo)),
  t(sort(1,@<,[f(X),f(_),f(X)],_)),
  t(sort(a,@<,[f(x)],_)),
  t(sort(1.0,@<,[f(x)],_)),
  t(sort(0,@<,[],_)),
  t(sort(a,@<,[],_)),
  t(sort(a,foo,[],_)),
  t(sort(-1,foo,[],_)),
  t(sort(0,foo,foo,_)),
  t(sort(-1,@<,foo,_)),
  t(sort(1,@<,[f(x)|_],_)),
  t(sort(1,@<,[a|_],_)),
  t(sort(0,@<,[b,a],[a,b|c])),
  t(sort(0,@<,[a],foo)),
  t(sort(1,@<,[f(_)],_)),
  t(sort(1,@<,[_],_)),
  t(sort(0,@=<,[1,1.0,1],_)),
  t(sort(0,@<,[1,1.0,1],_)),
  t(sort([1,1], @=<, [c(t(1),x),b(t(2),x),a(t(2),x),a(t(3),x)], _)),
  t(sort([1,2],@<,[a(b(1,2)),a(b(3,0))],_)),
  t(sort([],@<,[b,a],_)),
  t(sort([0],@<,[b,a],_)),
  t(sort([1,0],@<,[f(b),f(a)],_)),
  t(sort([a],@<,[f(b)],_)),
  t(sort([1,a],@<,[f(b)],_)),
  t(sort([1|_],@<,[f(b)],_)),
  t(sort([1|x],@<,[f(b)],_)),
  t(sort([_],@<,[f(b)],_)),
  t(sort([1,2],@<,[f(b)],_)),
  t(sort([1,2],@<,[f(g(b))],_)),
  t(sort([1,1],@<,[f(_)],_)),
  t(sort([-1],@<,[f(b)],_)),
  t(sort(a(1),@<,[1],_)),
  t(sort(0,1,[1],_)),
  t(sort(0,f(x),[1],_)),
  t(sort(0,@<,[],_)),
  t(sort(0,1,[],_)),
  t(sort([1],@<,[],_)),
  t(sort([1],@<,[c(1),a(1)],_)),
  t(sort(1,@<,[f(1)|_],_)),
  t(sort([1.0],@<,[f(b)],_)),
  t(sort([f(x)],@<,[f(b)],_)),
  t(sort([],@<,[f(b),f(a)],_)),
  t(sort([],@<,[_],_)),
  t(sort([_],@<,[],_)),
  t(sort([1,_],@<,[f(g(1))],_)),
  t(sort([0],foo,[],_)),
  t(sort([1.0],foo,[],_)),
  t(sort(1,@<,[f(1),f(2)|foo],_)),
  t(sort([2],@>=,[f(1,b),f(2,a),f(3,b)],_)),
  t(sort(0, @<, [1,2,2,3], _)),
  t(sort(0, @=<, [1,2,2,3], _)),
  t(sort(0, @>, [1,2,2,3], _)),
  t(sort(0, @>=, [1,2,2,3], _)),
  t(sort(1, @<, [a(1),a(2),a(2),a(3)], _)),
  t(sort(1, @<, [c(1),a(2),a(2),a(3)], _)),
  t(sort(1, @=<, [c(1),b(2),a(2),a(3)], _)),
  t(sort([1], @=<, [c(1),b(2),a(2),a(3)], _)),
  t(sort([1,1], @<, [c(t(1),x),b(t(2),x),a(t(2),x),a(t(3),x)], _)),
  t(sort(a(1), @<, [1,2,2,3], _)),
  t(sort(0, 1, [1,2,2,3], _)),
  t(sort(2, @<, [a(1)], _)),
  t(sort(a, @<, [a(1), a(2)], _)),
  halt.
%--------------------------------- 267 test_gate_pl_ssu_rules_answer_as_swipl__w
:- initialization(main).
p(X), X > 0 => writeq(pos(X)), nl.
p(0) => writeq(zero), nl.
p(_) => writeq(neg), nl.
q(f(Y)) => writeq(qf(Y)), nl.
r(X, Y) => Y = got(X).
s(a) => fail.
s(_) => writeq(s_other), nl.
t(G) :- catch((call(G) -> true ; (writeq(failed(G)), nl)), error(E, _), (writeq(caught(E)), nl)).
main :- t(p(3)), t(p(0)), t(p(-2)), t(p(_)), t(q(f(1))), t((q(V), writeq(after(V)), nl)), t(q(g)), t((r(1, R), writeq(R), nl)), t(s(a)), t(s(b)), t((s(Z), writeq(unbound_after(Z)), nl)).
%--------------------------- 268 test_gate_pl_stream_arg_errors_are_catchable__c
:- initialization(main).
main :- catch(($goal), error(E, _), (write(caught(E)), nl)), write(alive), nl, halt.
%- 269 test_gate_pl_stream_property_of_a_bound_stream_or_a_named_alias_is_deterministic__s
:- use_module(library(lists)).
:- initialization(main).
d(P, G) :- copy_term(G, G1), call_cleanup(G1, D = det), ( var(D) -> R = nondet ; R = D ), !, \+ \+ ( numbervars(P, 0, _), writeq(P-R) ), nl.
d(P, _) :- \+ \+ ( numbervars(P, 0, _), writeq(P-fail) ), nl.
main :- open('sp.txt', write, S), set_stream(S, alias(aa)),
  forall(member(P, [position(_), alias(_), file_name(_), mode(_), output, eof_action(_), reposition(_), type(_), encoding(_), buffer(_), input, mode(read)]), d(P, stream_property(S, P))),
  d(user_output, stream_property(user_output, alias(_))), d(any, stream_property(S, _)), d(unbound_stream, stream_property(_, alias(aa))), close(S).
%- 270 test_gate_pl_stream_property_sees_the_standard_streams_before_any_file_operation__sp
:- initialization(main).
main :- ( stream_property(S, alias(user_input)), stream_property(S, mode(M)) -> R1 = M ; R1 = none ),
	( stream_property(T, alias(user_input)), stream_property(T, input) -> R2 = input ; R2 = none ),
	( stream_property(U, alias(user_input)), stream_property(U, type(Y)) -> R3 = Y ; R3 = none ),
	write(R1), nl, write(R2), nl, write(R3), nl, halt.
%-- 271 test_gate_pl_sub_atom_with_two_bound_numbers_computes_its_one_slice__big
:- initialization(main).
main :- length(L, 200000), maplist(=(0'a), L), atom_codes(B, L), sub_atom(B, 100000, 1, A, C), write(C/A), nl.
%-- 272 test_gate_pl_sub_atom_with_two_bound_numbers_computes_its_one_slice__pat
:- initialization(main).
e(G) :- findall(G, G, R), write(R), nl.
main :- e(sub_atom(abc, B, L, A, S)), e(sub_atom(abc, 1, L, A, S)), e(sub_atom(abc, B, 2, A, S)), e(sub_atom(abc, B, L, 1, S)),
        e(sub_atom(abc, 1, 1, A, S)), e(sub_atom(abc, 0, L, 1, S)), e(sub_atom(abc, B, 1, 0, S)), e(sub_atom(abc, 1, 1, 1, S)),
        e(sub_atom(aaa, B, L, A, aa)), e(sub_atom(abcab, B, L, A, ab)), e(sub_atom(abc, B, L, A, '')), e(sub_atom(abc, 2, L, A, c)),
        e(sub_atom(abc, 1, L, A, c)), e(sub_atom(abc, 4, L, A, S)), e(sub_atom(abc, B, 4, A, S)), e(sub_atom(abc, B, L, 7, S)),
        e(sub_atom('', B, L, A, S)), e(sub_atom('héllo', 1, 3, A, S)), e(sub_atom('héllo', B, L, A, 'll')), e(sub_atom('héllo', B, 2, 0, S)),
        e(sub_atom(abc, 0, 3, 0, abc)), e(sub_atom(abc, 0, 3, 0, abd)).
%- 273 test_gate_pl_swi_a_meta_argument_qualification_collapses_a_chain_as_swipl_does__z
:- meta_predicate m(:, -).
m(X, X).
w(G) :- m(G, X), writeq(X), nl.
open_kept :- m(m1:Y, X), X = m1:Y1, ( Y1 == Y -> writeln(open_inner_kept) ; writeln(open_inner_lost) ).
var_kept(G, Tag) :- m(G, X), X = V:x, ( var(V) -> format("~w: var qualifier kept~n", [Tag]) ; format("~w: var qualifier lost~n", [Tag]) ).
main :- w(x), w(m1:x), w(m2:m1:x), w(m2:m3:m1:x), w(m2:42:x), w(42:x), w(m2:f(a):x), w(m2:m3:f(a):x), w(m2:1:2:x), w(1:2:x), w(1:m3:x), w(m2:42:m3:x),
    w(m2:(42:x)), w(m2:[a]:x), w(m2:[]:x), w(m2:1.5:x), w(m2:f(1):m3:x), open_kept, var_kept(m2:_:x, one), var_kept(m2:m3:_:x, two), var_kept(_:x, three).
:- initialization(main).
%- 274 test_gate_pl_swi_an_unreachable_engine_is_reclaimed_after_a_collection_and_a_held_one_survives_as_swipl__ew
:- use_module(library(lists)).
:- use_module(library(aggregate)).
:- initialization(main).
:- dynamic held/1.
n(N) :- aggregate_all(count, current_engine(_), N).
settle(Target) :- ( between(1, 40, _), garbage_collect_atoms, garbage_collect, n(N), N =< Target -> true ; true ).
plain :- engine_create(x, true, _).
parked :- engine_create(X, between(1, 3, X), E), engine_next(E, _).
selfref :- engine_create(X, (engine_self(E), engine_yield(E-X), true), H), engine_next(H, _).
hold :- engine_create(X, between(1, 5, X), E), assertz(held(E)).
verdict(Name, Goal, Base) :- forall(between(1, 100, _), Goal), settle(Base + 25), n(N), D is N - Base,
    ( D =< 25 -> V = reclaimed ; D >= 50 -> V = kept ; V = partial ), format('~w: ~w~n', [Name, V]).
main :-
    n(B0), verdict(plain, plain, B0),
    n(B1), verdict(parked, parked, B1),
    n(B2), verdict(selfref, selfref, B2),
    hold, settle(0), held(H), engine_next(H, V1), engine_next(H, V2), format('held: ~w ~w~n', [V1, V2]),
    engine_create(Xa, between(1, 3, Xa), L1), engine_create(Xb, between(10, 13, Xb), L2), settle(0),
    findall(E, current_engine(E), Es), ( memberchk(L1, Es), memberchk(L2, Es) -> writeln(live_listed) ; writeln(live_missing) ),
    engine_next(L1, A1), engine_next(L2, A2), format('live_answer: ~w ~w~n', [A1, A2]),
    engine_destroy(L1), engine_destroy(L2), writeln(done).
%- 275 test_gate_pl_swi_an_unreachable_engine_is_reclaimed_after_a_collection_and_a_held_one_survives_as_swipl__ewb
:- use_module(library(lists)).
:- initialization(main).
:- dynamic held/1.
hold :- engine_create(X, between(1, 5, X), E), assertz(held(E)).
churn :- engine_create(X, between(1, 3, X), E), engine_next(E, _).
main :- hold, forall(between(1, 6, _), churn), garbage_collect, garbage_collect,
    held(H), engine_next(H, V1), engine_next(H, V2), format('held: ~w ~w~n', [V1, V2]),
    findall(E, current_engine(E), Es), ( memberchk(H, Es) -> writeln(held_listed) ; writeln(held_missing) ),
    garbage_collect, engine_next(H, V3), format('later: ~w~n', [V3]), engine_destroy(H), writeln(done).
%- 276 test_gate_pl_swi_apply_macros_expands_a_loaded_units_phrase_goals_at_lowering_and_a_run_time_phrase_checks_its_lists_as_swipl__w
:- use_module(library(lists)).
:- use_module(library(apply_macros), []).
show(T) :- \+ \+ ( numbervars(T, 0, _), write_term(T, [numbervars(true), quoted(true), ignore_ops(true)]), nl ).
x(L, G) :- t(L, ( G, show(G) )).
t(L, G) :- catch(( call(G) -> R = ok ; R = failed ), E, ( E = error(F, _) -> R = raised(F) ; R = threw(E) )), write(L), write(': '), print(R), nl.
:- initialization(main).
foo([x|T], T).
s_list :- phrase([], a).
s_nt_bad :- phrase(foo, a).
s_nt_ok :- phrase(foo, [x]).
s_str :- phrase("ab", [a,b]).
s_terms :- phrase([a,b], [a,b]).
s_terms_bad :- phrase([a,b], c).
s_conj_bad :- phrase((foo, foo), a).
s_conj_ok :- phrase((foo, [y]), [x,y]).
s_alt_bad :- phrase(([x] ; [y]), a).
s_alt_ok :- phrase(([x] ; [y]), [y]).
s_ite_bad :- phrase(([x] -> [y] ; [z]), a).
s_curly_bad :- phrase({true}, a).
s_curly_ok :- phrase({true}, []).
s_cut_bad :- phrase(!, a).
s_conj3_rest_bad :- phrase((foo, foo), [x,x], b).
s_conj3_ok :- phrase((foo, foo), [x,x], R), R == [].
digits([D|T]) --> [D], { code_type(D, digit) }, digits(T).
digits([]) --> [].
main :-
    t(eg_nt, ( expand_goal(phrase(a, L1), G1), show(G1) )),
    t(eg_nt3, ( expand_goal(phrase(a, L2, R2), G2), show(G2) )),
    t(eg_args, ( expand_goal(phrase(spec(_, []), S3), G3), show(G3) )),
    t(eg_var_nt, ( expand_goal(phrase(V4, V4), G4), show(G4) )),
    t(eg_var_nt3, ( expand_goal(phrase(V5, V5, V5), G5), show(G5) )),
    t(eg_plain_goal, ( expand_goal(quoniam, G6), show(G6) )),
    t(eg_nil, ( expand_goal(phrase([], L7), G7), show(G7) )),
    t(eg_list, ( expand_goal(phrase([a,b], L8, R8), G8), show(G8) )),
    t(eg_string, ( expand_goal(phrase("ab", L9, R9), G9), show(G9) )),
    t(eg_partial, ( expand_goal(phrase([a|T10], L10), G10), show(G10) )),
    t(eg_conj, ( expand_goal(phrase((a, b), L11), G11), show(G11) )),
    t(eg_alt, ( expand_goal(phrase((a ; b), L12), G12), show(G12) )),
    t(eg_curly, ( expand_goal(phrase({x}, L13), G13), show(G13) )),
    t(eg_qualified, ( expand_goal(phrase(m:foo, L14), G14), show(G14) )),
    t(eg_inside_conj, ( expand_goal((phrase(a, L15), true), G15), show(G15) )),
    t(eg_inside_findall, ( expand_goal(findall(X16, phrase(a, X16), _), G16), show(G16) )),
    t(et_clause, ( expand_term((p17 :- phrase(b, [1])), R17), show(R17) )),
    t(et_clause2, ( expand_term((alleq(Xs1) :- phrase(spec(Xs2, []), Xs1), alleq(Xs2)), R18), show(R18) )),
    t(et_control_clause, ( expand_term((p19(X19) :- phrase((a, b), X19)), R19), show(R19) )),
    t(s_list, s_list), t(s_nt_bad, s_nt_bad), t(s_nt_ok, s_nt_ok), t(s_str, s_str), t(s_terms, s_terms), t(s_terms_bad, s_terms_bad),
    t(s_conj_bad, s_conj_bad), t(s_conj_ok, s_conj_ok), t(s_alt_bad, s_alt_bad), t(s_alt_ok, s_alt_ok), t(s_ite_bad, s_ite_bad),
    t(s_curly_bad, s_curly_bad), t(s_curly_ok, s_curly_ok), t(s_cut_bad, s_cut_bad), t(s_conj3_rest_bad, s_conj3_rest_bad), t(s_conj3_ok, s_conj3_ok),
    t(dyn_list, ( G = phrase([],a), call(G) )),
    t(dyn_list3, ( G3 = phrase([],a,[]), call(G3) )),
    t(dyn_partial, ( G2 = phrase([], [a|b]), call(G2) )),
    t(dyn_rest, ( G4 = phrase([], [], a), call(G4) )),
    t(dyn_rest_partial, ( G5 = phrase([], [], [a|b]), call(G5) )),
    t(dyn_var, ( G6 = phrase([], _), call(G6) )),
    t(dyn_string, ( G7 = phrase([], "abc"), call(G7) )),
    t(dyn_nt, ( G8 = phrase(foo, a), call(G8) )),
    t(dyn_nt_ok, ( G9 = phrase(foo, [x]), call(G9) )),
    t(dyn_nt_rest_bad, ( G10 = phrase(foo, [x], b), call(G10) )),
    t(dyn_control, ( G11 = phrase((foo, foo), a), call(G11) )),
    t(dyn_control_ok, ( G12 = phrase(([x]; [y]), [y]), call(G12) )),
    t(dyn_digits, ( G13 = phrase(digits(Ds), `12`), call(G13), Ds == `12` )),
    t(dyn_built, ( Name = phrase, G14 =.. [Name, [], a], call(G14) )),
    t(dyn_findall, ( G15 = phrase([], a), findall(x, G15, _) )),
    t(dyn_once, ( G16 = phrase([], a), once(G16) )),
    t(dyn_unbound_rule, ( G17 = phrase(_, a), call(G17) )),
    t(dyn_unbound_rule_ok, ( G18 = phrase(_, []), call(G18) )),
    t(dyn_noncallable, ( G19 = phrase(27, []), call(G19) )),
    halt.
%- 277 test_gate_pl_swi_builtins_current_op_apply_nth_backcomp_signals_argv_and_a_catcher_that_half_unifies_answer_as_the_oracles__w
:- use_module(library(lists)).
:- initialization(main).
t(T, G) :- catch((call(G) -> \+ \+ (numbervars(T, 0, _), writeq(T)) ; writeq(no)), error(E, _), \+ \+ (numbervars(E, 0, _), writeq(caught(E)))), nl.
nd(G, D) :- setup_call_cleanup(true, G, Det = true), ( Det == true -> D = det ; D = nondet ).
main :-
    t(yes, current_op(_, _, 1)), t(yes, current_op(_, 1, _)), t(yes, current_op(_, xxx, _)), t(yes, current_op(x, _, _)), t(yes, current_op(1.2, _, _)),
    t(yes, current_op(1201, _, _)), t(yes, current_op(-1, _, _)), t(yes, current_op(_, f(x), _)), t(yes, current_op(_, _, f(x))), t(yes, current_op(_, [], _)),
    t(yes, apply(1, [a, b])), t(yes, apply(foo, [])), t(R3, (apply(atom_length, [abc, R3]))), t(yes, apply(_, [a])),
    t(yes, nth0(-1, [a], _)), t(yes, nth0(a, [a], _)), t(yes, nth0(1.0, [a, b], _)), t(E4, nth0(1, [a, b, c], E4)), t(E5, nth1(2, [a, b, c], E5)),
    t(yes, nth1(0, [a], _)), t(yes, nth1(a, [a], _)), t(yes, nth0(5, [a], _)), t(L6, findall(I-E6, nth0(I, [a, b], E6), L6)), t(L7, findall(I7, nth1(I7, [a, b, a], a), L7)),
    t(D8, nd(nth0(1, [a, b, c], _), D8)), t(D9, nd(nth1(2, [a, b, c], _), D9)), t(D10, nd(nth0(_, [a, b, c], b), D10)),
    t(S11, sformat(S11, '~w-~w', [a, b])), t(S12, sformat(S12, 'plain')),
    t(O13-N13, (on_signal(int, O13, handler), on_signal(int, N13, default))), t(O14, (on_signal(usr1, _, h1), on_signal(usr1, O14, h2))),
    t(V15, (nb_linkval(k15, v15), nb_getval(k15, V15))),
    t(yes, ansi_format([bold], 'x~w~n', [y])),
    t(R16, catch_with_backtrace(throw(oops), oops, R16 = caught)), t(R17, catch_with_backtrace(R17 = fine, _, true)),
    t(A18, (current_prolog_flag(argv, A18))),
    t(yes, current_prolog_flag(no_such_flag_x, _)).
%- 278 test_gate_pl_swi_copy_term_3_projects_freeze_when_and_clpfd_constraints_as_residual_goals_as_swipl__w
:- use_module(library(lists)).
:- use_module(library(when)).
:- use_module(library(clpfd)).
:- initialization(main).
t(L, G) :- catch(( call(G) -> R = ok ; R = failed ), E, ( E = error(F, _) -> R = raised(F) ; R = threw(E) )), write(L), write(': '), write(R), nl.
show(Gs) :- \+ \+ ( numbervars(Gs, 0, _), write_term(Gs, [numbervars(true), quoted(true), ignore_ops(true)]), nl ).
cp(Term) :- copy_term(Term, Copy, Gs), show(Copy-Gs).
main :-
    t(no_attvars, cp(f(_, a, _))),
    t(freeze_one, ( freeze(A, true), cp(A) )),
    t(freeze_two, ( freeze(B, write(x)), freeze(B, write(y)), cp(B) )),
    t(freeze_two_vars, ( freeze(C1, true), freeze(C2, true), cp(f(C1, C2)) )),
    t(freeze_bound, ( freeze(D, true), D = 1, cp(D) )),
    t(when_ground, ( when(ground(E), true), cp(E) )),
    t(when_nonvar, ( when(nonvar(F), true), cp(F) )),
    t(when_determined, ( when(?=(G1, G2), true), cp(f(G1, G2)) )),
    t(when_conj, ( when((nonvar(H1), ground(H2)), true), cp(f(H1, H2)) )),
    t(when_disj, ( when((nonvar(I1) ; ground(I2)), true), cp(f(I1, I2)) )),
    t(when_nested1, ( when(ground(J1) ; (ground(J2), ground(J3)), true), cp(f(J1, J2, J3)) )),
    t(when_nested2, ( when(ground(K1) ; ((ground(K2), ground(K3)), ground(K4)), true), cp(f(K1, K2, K3, K4)) )),
    t(when_nested3, ( when(ground(L1) ; (((ground(L2), ground(L3)), ground(L4)), ground(L5)), true), cp(f(L1, L2, L3, L4, L5)) )),
    t(when_partly_bound, ( when((ground(M1), ground(M2)), true), M1 = 1, cp(f(M1, M2)) )),
    t(when_fired, ( when(ground(N), true), N = 1, cp(N) )),
    t(when_twice, ( when(nonvar(O), true), when(ground(O), true), cp(O) )),
    t(when_with_goal_var, ( when(ground(P), q(P, Z)), cp(f(P, Z)) )),
    t(freeze_and_when, ( freeze(Q, true), when(ground(Q), true), cp(Q) )),
    t(clpfd_dom, ( R #> 3, R #< 8, cp(R) )),
    t(clpfd_two, ( S #= T + U, T in 0..5, U in 0..5, cp(f(S, T, U)) )),
    t(clpfd_neq, ( V #\= W, V in 1..3, cp(f(V, W)) )),
    t(put_attr_plain, ( put_attr(X1, foo, bar), cp(X1) )),
    t(two_attr_modules, ( put_attr(X3, foo, 1), put_attr(X3, bar, 2), freeze(X3, true), cp(X3) )),
    t(var_only_in_goal, ( freeze(Y1, true), cp(g(Y1, Y1)) )),
    halt.
%- 279 test_gate_pl_swi_create_prolog_flag_types_its_flag_and_current_prolog_flag_5_reports_value_access_and_type_as_swipl__w
:- use_module(library(lists)).
:- initialization(main).
st(N) :- ( '$current_prolog_flag'(N, V, S, A, T) -> ( var(S) -> Sc = open ; Sc = bound ), write(' ['), writeq(V), write(' '), write(A), write(' '), writeq(T), write(' '), write(Sc), write(']') ; write(' [no flag]') ).
t(L, G) :- write(L), write(':'), catch(( call(G) -> R = ok ; R = failed ), E, ( E = error(F, _) -> R = raised(F) ; R = threw(E) )), write(' '), writeq(R), nl.
c(L, N, V, O) :- t(L, create_prolog_flag(N, V, O)), ( atom(N) -> write('   '), write(N), st(N), nl ; true ).
s(L, N, V) :- t(L, set_prolog_flag(N, V)), write('   '), write(N), st(N), nl.
main :-
    c(new_int, f1, 42, []),
    c(new_atom, f2, abc, []),
    c(new_float, f3, 1.5, []),
    c(new_true, f4, true, []),
    c(new_term, f5, g(x), []),
    c(new_term_declared, f6, g(x), [type(term)]),
    c(new_int_as_float, f7, 1, [type(float)]),
    c(new_on_declared_boolean, f8, on, [type(boolean)]),
    c(new_on_derived, f9, on, []),
    c(new_off_declared, f10, off, [type(boolean)]),
    c(new_int_declared_term, f11, 1, [type(term)]),
    c(new_string, f12, "str", []),
    c(new_list, f13, [a,b], [type(term)]),
    c(new_nil, f14, [], []),
    c(new_read_only, f15, 5, [access(read_only)]),
    s(set_read_only, f15, 6),
    c(new_read_write, f16, 1, [access(read_write)]),
    c(bad_atom_int, f17, 42, [type(atom)]),
    c(bad_bool_atom, f18, abc, [type(boolean)]),
    c(bad_int_atom, f19, abc, [type(integer)]),
    c(bad_int_float, f20, 1.5, [type(integer)]),
    c(bad_atom_string, f21, "str", [type(atom)]),
    c(bad_type_name, f22, true, [type(foo)]),
    c(bad_type_oneof, f23, a, [type(oneof([a,b]))]),
    c(bad_access, f24, 1, [access(foo)]),
    c(bad_keep, f25, 1, [keep(maybe)]),
    c(unbound_name, _, 1, []),
    c(unbound_value, f26, _, []),
    c(unbound_options, f27, 1, _),
    c(unbound_type, f28, 1, [type(_)]),
    c(compound_name, g(x), 1, []),
    c(options_not_list, f29, 1, foo),
    c(unknown_option, f30, 1, [bogus(1)]),
    c(type_twice, f31, 1, [type(integer),type(atom)]),
    c(int_flag, g1, 1, [type(integer)]), s(int_flag_set_atom, g1, abc), s(int_flag_set_int, g1, 7), s(int_flag_set_float, g1, 1.5),
    c(atom_flag, g2, abc, [type(atom)]), s(atom_flag_set_int, g2, 3), s(atom_flag_set_atom, g2, def),
    c(bool_flag, g3, true, [type(boolean)]), s(bool_flag_set_off, g3, off), s(bool_flag_set_maybe, g3, maybe), s(bool_flag_set_true, g3, true),
    c(float_flag, g4, 1.0, [type(float)]), s(float_flag_set_float, g4, 2.5), s(float_flag_set_atom, g4, x),
    c(term_flag, g5, 1, [type(term)]), s(term_flag_set_term, g5, h(y)), s(term_flag_set_atom, g5, z),
    s(implicit_on, h1, on), s(implicit_int, h2, 42), s(implicit_atom, h3, foo), s(implicit_term, h4, f(x)),
    s(implicit_int_set_atom, h2, abc), s(implicit_int_set_int, h2, 43),
    s(implicit_bool_set_off, h1, off),
    s(pre_true, k1, true), c(keep_true_existing, k1, false, [type(boolean),keep(true)]),
    s(pre_true2, k2, true), c(keep_false_existing, k2, false, [type(boolean)]),
    c(recreate_atom, k3, a, [type(atom)]), c(recreate_keep, k3, b, [type(atom),keep(true)]), c(recreate_same, k3, c, [type(atom)]),
    c(recreate_other_type, k4, a, [type(atom)]), c(recreate_int, k4, 1, [type(integer)]),
    c(recreate_wrong_default_type, k5, a, [type(atom)]), c(recreate_default_int, k5, 5, []),
    c(recreate_int_as_float, k6, 1, [type(integer)]), c(recreate_float_over_int, k6, 2.5, [type(float)]),
    c(recreate_read_only, k7, 1, [access(read_only)]), c(recreate_over_read_only, k7, 2, []),
    c(recreate_read_only_keep, k7, 3, [keep(true)]),
    s(pre_atom, m1, aapje), c(keep_atom_to_int, m1, 42, [type(integer),keep(true)]),
    s(pre_int, m2, 42), c(keep_int_to_atom, m2, abc, [type(atom),keep(true)]),
    s(pre_bool, m3, true), c(keep_bool_to_term, m3, default, [type(term),keep(true)]),
    s(pre_int2, m4, 42), c(keep_int_to_float, m4, 0.1, [type(float),keep(true)]),
    t(meta_bounded, true), write('   bounded'), st(bounded), nl,
    write('   occurs_check'), st(occurs_check), nl,
    write('   unknown'), st(unknown), nl,
    write('   debug'), st(debug), nl,
    write('   iso'), st(iso), nl,
    write('   prefer_rationals'), st(prefer_rationals), nl,
    write('   no_such_flag_anywhere'), st(no_such_flag_anywhere), nl,
    t(meta_nonatom_name, '$current_prolog_flag'(3, _, _, _, _)),
    halt.
%--------------------- 280 test_gate_pl_swi_determinism_marks_answer_as_swipl__w
:- initialization(main).
p.
q(1).
q(2).
r :- fail.
boom :- throw(mine).
a1(X) :- q(X), $, true.
a2(X) :- q(X), $, fail.
a3 :- $, q(_), true.
a4 :- $, q(_), !.
a5 :- $, \+ fail.
a6 :- $, call(q(_)).
a7 :- $, findall(X, q(X), _).
a8 :- $, throw(mine).
a9(X) :- q(X), $p, X >= 2.
a10(X) :- $q(X), true.
a11 :- $boom.
a12(X) :- $r, X = 1.
rdet(0) => true.
rdet(N) => $p, $, N1 is N - 1, rdet(N1).
t(G) :- catch((G -> writeq(yes(G)) ; writeq(no(G))), error(E, _), writeq(caught(E))), nl.
t2(G) :- catch((G -> writeq(yes(G)) ; writeq(no(G))), B, writeq(ball(B))), nl.
main :- t(a1(_)), t(a2(_)), t(a3), t(a4), t(a5), t(a6), t(a7), t2(a8), t(a9(_)), t(a10(_)), t2(a11), t(a12(_)),
  t($q(_)), t($r), t($p), t((X0 = 2, $q(X0))), t(rdet(500000)),
  writeq(($p, $)), nl, writeq(f($, $a, '$'(a, b), ($) - a)), nl, writeq($ (1 + 2)), nl,
  ( current_op(P, T, $) -> writeq(op(P, T)) ; writeq(no_op) ), nl.
%- 281 test_gate_pl_swi_dialect_format_s_does_not_pad_and_listing_prints_a_dynamic_predicate_as_swipl__w
:- use_module(library(lists)).
t1 :- format("[~4s]~n", ["new"]), format("[~4s]~n", ["world"]), format("[~s]~n", ["abc"]), format("[~a~t~8|]~n", [ab]).
t2 :- assertz(p(1)), assertz(p(2)), listing(p/1).
t3 :- assertz(q(0)), assertz(q(a)), assertz(q("s")), listing(q/1).
:- initialization((t1, t2, t3, halt)).
%---------------- 282 test_gate_pl_swi_file_and_text_builtins_answer_as_swipl__w
:- use_module(library(lists)).
:- initialization(main).
t(R, G) :- catch((findall(R, G, L), \+ \+ (numbervars(L, 0, _), writeq(L))), error(E, _), \+ \+ (numbervars(E, 0, _), writeq(caught(E)))), nl.
main :-
    t(B1-E1, file_name_extension(B1, E1, 'foo.pl')),
    t(B2, file_name_extension(B2, '', 'foo.pl')),
    t(B3, file_name_extension(B3, '', 'foo')),
    t(B4, file_name_extension(B4, '.', 'foo.')),
    t(S1, text_to_string(abc, S1)), t(S2, text_to_string("x", S2)), t(S3, text_to_string([0'a], S3)), t(S4, text_to_string([a, b], S4)), t(S5, text_to_string([], S5)),
    t(S6, text_to_string(12, S6)), t(S7, text_to_string(_, S7)),
    t(x, exists_file('/etc/hostname_that_is_not_there')), t(x, exists_directory('/tmp')), t(x, exists_directory('/nonexistent/zz')), t(x, exists_file(_)),
    t(ok, (tmp_file(swb, F), open(F, write, S), write(S, hello), close(S), exists_file(F), \+ exists_directory(F), size_file(F, 5), time_file(F, T), float(T), same_file(F, F), delete_file(F), \+ exists_file(F))),
    t(x, size_file('/nonexistent/zz', _)),
    t(ok, (working_directory(O, O), sub_atom(O, _, 1, 0, /))),
    t(New, (working_directory(Old, '/tmp'), working_directory(New, Old), New == '/tmp/')),
    t(x, working_directory(_, '/nonexistent/zz')),
    t(ok, (setenv(swb_x, hello), getenv(swb_x, V), V == hello, unsetenv(swb_x), \+ getenv(swb_x, _))),
    t(P1, directory_file_path(a, b, P1)), t(P2, directory_file_path('a/', b, P2)), t(P3, directory_file_path('.', b, P3)), t(P4, directory_file_path(a, '/b', P4)),
    t(D5-F5, directory_file_path(D5, F5, 'a/b')), t(F6, directory_file_path(a, F6, 'a/b')), t(D7, directory_file_path(D7, b, 'a/b')),
    t(L8, (open_string("hello(world). foo.", S8), read(S8, T1), read(S8, T2), read(S8, T3), close(S8), L8 = [T1, T2, T3])),
    t(C9, (open_string(abc, S9), get_char(S9, C9), close(S9))),
    t(ok, (tmp_file(swbd, D), make_directory_path(D), exists_directory(D), delete_directory(D))),
    t(ok, (tmp_file(swbd2, D2), atom_concat(D2, '/a/b', DD), make_directory_path(DD), exists_directory(DD), atom_concat(D2, '/a', DA), delete_directory(DD), delete_directory(DA), delete_directory(D2))).
%- 283 test_gate_pl_swi_libraries_hashtable_nb_set_solution_sequences_csv_terms_random_answer_as_swipl__w
:- set_prolog_flag(double_quotes, string).
:- initialization(main).
t(T, G) :- catch((call(G) -> \+ \+ (numbervars(T, 0, _), writeq(T)) ; writeq(no)), error(E, _), \+ \+ (numbervars(E, 0, _), writeq(caught(E)))), nl.
main :-
    t(r(N, V, S), (ht_new(H0), ht_put(H0, a, 1), ht_put(H0, b, 2), ht_put(H0, a, 3), ht_size(H0, N), ht_get(H0, a, V), ht_pairs(H0, Ps), msort(Ps, S))),
    t(r(Old, Sz), (ht_new(H1), ht_put_new(H1, k, 1), \+ ht_put_new(H1, k, 2), ht_del(H1, k, Old), ht_size(H1, Sz))),
    t(r(N2, KL, V2), (ht_new(H2), forall(between(1, 40, I), ht_put(H2, I, f(I))), ht_size(H2, N2), ht_keys(H2, Ks), length(Ks, KL), ht_get(H2, 7, V2))),
    t(r(O3, N3), (ht_new(H3), ht_put(H3, x, 1), ht_update(H3, x, O3, 9), ht_get(H3, x, N3))),
    t(r(New, Sz0, L0), (empty_nb_set(S0), add_nb_set(a, S0), add_nb_set(b, S0), add_nb_set(a, S0, New), size_nb_set(S0, Sz0), nb_set_to_list(S0, L0))),
    t(L1, (empty_nb_set(S1), forall(member(E, [c, a, b, a, c]), add_nb_set(E, S1)), nb_set_to_list(S1, L1))),
    t(L2, findall(X1, distinct(X1, member(X1, [a, b, a, c, b])), L2)),
    t(L3, findall(X2-Y2, distinct(X2, member(X2-Y2, [a-1, b-2, a-3])), L3)),
    t(L4, findall(X3, order_by([asc(X3)], member(X3, [c, a, b])), L4)),
    t(L5, findall(X4, order_by([desc(X4)], member(X4, [c, a, b])), L5)),
    t(L6, findall(X5-Y5, order_by([asc(X5), desc(Y5)], member(X5-Y5, [b-1, a-1, a-2, b-3])), L6)),
    t(L7, findall(X6, limit(2, member(X6, [a, b, c, d])), L7)),
    t(L8, findall(X7, offset(2, member(X7, [a, b, c, d])), L8)),
    t(L9, findall(N8-X8, call_nth(member(X8, [a, b, c]), N8), L9)),
    t(X9, call_nth(member(X9, [a, b, c]), 2)),
    t(L11, findall(K-L10, group_by(K, V10, member(K-V10, [a-1, b-2, a-3]), L10), L11)),
    t(L12, findall(X11, reduced(member(X11, [a, b, a])), L12)),
    t(Rows, phrase(csv(Rows), `a,b,c\n1,2,3\n`)),
    t(Rows2, phrase(csv(Rows2), `a,"b c",3\n`)),
    t(Rows3, phrase(csv(Rows3, [separator(0';)]), `a;b\n1;2\n`)),
    t(Rows4, phrase(csv(Rows4, [functor(r), convert(false)]), `x,1\n`)),
    t(Rows5, phrase(csv(Rows5, [strip(true)]), ` a , b \n`)),
    t(A6, (phrase(csv([row(a, 'b c'), row(1, 'x,y')]), Cs), atom_codes(A6, Cs))),
    t(Sk-Sub, term_factorized(f(g(a), g(a)), Sk, Sub)),
    t(Sk2-Sub2, term_factorized(h(X12, X12, k), Sk2, Sub2)),
    t(yes, variant(f(_, a), f(_, a))), t(yes, variant(f(A13, A13), f(_, _))),
    t(yes, subsumes(f(_, b), f(a, b))), t(yes, subsumes(f(a, b), f(_, b))),
    t(G, term_subsumer(f(a, b), f(c, b), G)),
    t(T14, mapargs([X14, Y14]>>(Y14 is X14 * 2), f(1, 2, 3), T14)),
    t(T15, mapsubterms([X15, Y15]>>(integer(X15), Y15 is X15 + 1), f(1, g(2), a), T15)),
    t(S18, foldsubterms([X16, S16, S17]>>(integer(X16), S17 is S16 + X16), f(1, g(2), a), 0, S18)),
    t(F19/A19, (same_functor(f(a, b), T19), functor(T19, F19, A19))),
    t(Sz20, term_size(f(a, g(b)), Sz20)),
    t(yes, maybe(1, 1)), t(yes, maybe(0, 5)), t(yes, maybe(1.0)), t(yes, maybe(0.0)),
    t(M, random_member(M, [z])),
    t(E22-R22, random_select(E22, [a], R22)),
    t(S23, (randseq(3, 3, S22), msort(S22, S23))),
    t(S24, randset(3, 3, S24)),
    t(D25, (duplicate_term(f(g(a), B25, B25), D25))),
    t(T26-C26, (T26 = f(g(a)), duplicate_term(T26, C26), arg(1, C26, G26), setarg(1, G26, b))),
    t(N30-A30-Ty30, functor(foo, N30, A30, Ty30)), t(N31-A31-Ty31, functor(f(x), N31, A31, Ty31)), t(N32-A32-Ty32, functor(1, N32, A32, Ty32)),
    t(Ty33, functor("s", _, _, Ty33)), t(yes, functor(foo, _, _, callable)), t(yes, functor(f(x), _, _, callable)), t(yes, functor(foo, _, _, atomic)),
    t(yes, functor(foo, _, _, compound)), t(yes, functor(f(x), _, _, atom)), t(yes, functor(1, _, _, callable)),
    t(T34, functor(T34, f, 2, compound)), t(T35, functor(T35, f, 0, atom)), t(T36, functor(T36, f, 2, callable)), t(T37, functor(T37, f, 0, callable)),
    t(T38, functor(T38, 1, 0, atomic)), t(T39, functor(T39, f, 0, atomic)), t(T40, functor(T40, f, 2, atom)), t(T41, functor(T41, f, 2, atomic)),
    t(T42, functor(T42, f, 2, _)), t(T43, functor(T43, f, 0, _)), t(T44, functor(T44, 1, 0, _)), t(T45, functor(T45, f(x), 0, _)), t(T46, functor(T46, _, 2, compound)),
    t(T47, functor(T47, f, a, compound)), t(T48, functor(T48, f, 2, bad)), t(T49, functor(T49, "s", 0, _)), t(T50, functor(T50, 1, 2, compound)),
    t(S51, term_size(a, S51)), t(S52, term_size(1, S52)), t(S53, term_size(_, S53)), t(S54, term_size(1.5, S54)), t(S55, term_size("abc", S55)), t(S56, term_size("abcdefghij", S56)),
    t(S57, term_size([a,b,c], S57)), t(S58, term_size(f(X58,X58), S58)), t(S59, term_size(100000000000000000000, S59)), t(S60, term_size(f(1.5, "abc"), S60)),
    t(S61, term_size('', S61)), t(S62, term_size(99999999999999999999999999999999999999999999999999, S62)), t(S63, term_size(f(Y63, Z63, Y63, Z63), S63)),
    t(S64, term_size(1152921504606846976, S64)), t(S65, term_size(4611686018427387904, S65)), t(S66, term_size(-9223372036854775807, S66)),
    t(S67, term_size("abcdefg", S67)), t(S68, term_size("abcdefgh", S68)), t(S69, term_size(g(f(a, b), "x", 2.5), S69)).
%----------------------- 284 test_gate_pl_swi_library_modules_answer_as_swipl__w
:- set_prolog_flag(double_quotes, string).
:- initialization(main).
t(G) :- catch((call(G) -> \+ \+ (numbervars(G, 0, _), writeq(G)) ; writeq(no)), error(E, _), \+ \+ (numbervars(E, 0, _), writeq(caught(E)))), nl.
p(X) :- X > 1.
c(X, Y) :- X > 1, Y is X * 10.
age(peter, 7). age(mary, 9). age(john, 7).
add3(A, B, C, S0, S) :- S is S0 + A + B + C.
agg_count(C) :- aggregate_all(count, member(_, [a,b,c]), C).
agg_sum(S) :- aggregate_all(sum(Q), member(Q, [1,2,3]), S).
agg_max(M) :- aggregate_all(max(R), member(R, [3,9,2]), M).
agg_bag(B) :- aggregate_all(bag(Z), member(Z, [c,a,c]), B).
agg_set(S) :- aggregate_all(set(Z), member(Z, [c,a,c]), S).
main :-
    t(partition(p, [1,2,3], _, _)), t(partition([X,O]>>compare(O,X,2), [1,2,3], _, _, _)), t(convlist(c, [1,2,3], _)),
    t(foldl([E,A0,A]>>(A is A0+E), [1,2,3], 0, _)), t(foldl([E1,E2,B0,B]>>(B is B0+E1*E2), [1,2], [3,4], 0, _)),
    t(foldl(add3, [1,4], [2,5], [3,6], 0, _)), t(scanl([S,S0,S1]>>(S1 is S0+S), [1,2,3], 0, _)),
    t(must_be(integer, a)), t(must_be(positive_integer, 0)), t(must_be(nonneg, 3)), t(must_be(list(integer), [1,a])),
    t(must_be(oneof([a,b]), c)), t(must_be(boolean, x)), t(must_be(between(1,3), 5)), t(must_be(chars, [a,b])),
    t(must_be(text, f(x))), t(must_be(rational, 1)), t(must_be(atom, _)), t(must_be(no_such_type, 1)),
    t(is_of_type(list(atom), [a,b])), t(type_error(integer, a)), t(domain_error(positive, -1)),
    t(pairs_keys_values(_, [a,b], [1,2])), t(pairs_keys([a-1,b-2], _)), t(pairs_values([a-1,b-2], _)),
    t(transpose_pairs([a-1,b-2], _)), t(map_list_to_pairs(atom_length, [ab,c], _)),
    t((list_to_heap([3-c,1-a,2-b], H), get_from_heap(H, _, _, H1), heap_size(H1, _), heap_to_list(H1, _))),
    t((empty_heap(E0), add_to_heap(E0, 5, x, E1), add_to_heap(E1, 2, y, E2), min_of_heap(E2, _, _))),
    t(aggregate(count, Y^age(Y, _), _)), t(aggregate(sum(G), N^age(N, G), _)), t(aggregate(bag(N2), age(N2, 7), _)),
    t(aggregate(max(G2, N3), age(N3, G2), _)), t(aggregate(count, N4, age(N4, _), _)),
    t(aggregate_all(term(count, bag(V)), between(1, 3, V), _)), t(aggregate_all(r(max(M)), member(M, [3,9,2]), _)),
    t(agg_count(_)), t(agg_sum(_)), t(agg_max(_)), t(agg_bag(_)), t(agg_set(_)), t(aggregate_all(count, member(_, [a,b]), _)),
    t(aggregate_all(count, K, member(K, [a,b,a]), _)),
    t(string_lines(_, ["a", "b"])), t(string_lines("x\ny\n", _)), t(dedent_lines("  a\n   b", _, [])),
    t(indent_lines("> ", "a\nb", _)),
    t((list_to_rbtree([k1-v1, k2-v2], T), rb_insert(T, k0, v0, T2), rb_keys(T2, _), rb_lookup(k2, _, T2), rb_size(T2, _), rb_visit(T2, _))),
    t((rb_new(E), rb_insert_new(E, a, 1, E1), \+ rb_insert_new(E1, a, 2, _), rb_update(E1, a, 9, E2), rb_visit(E2, _), rb_delete(E2, a, E3), rb_empty(E3))),
    t((ord_list_to_rbtree([a-1, b-2, c-3], RT), rb_min(RT, _, _), rb_max(RT, _, _), rb_next(RT, a, _, _), rb_fold([_-V, A0, A]>>(A is A0+V), RT, 0, _))),
    t((list_to_assoc([a-1, b-2], As), put_assoc(c, As, 3, As2), assoc_to_list(As2, _), assoc_to_keys(As2, _), get_assoc(b, As2, _), max_assoc(As2, _, _))),
    t((empty_assoc(EA), \+ get_assoc(x, EA, _), pairs_keys_values(PKV, [z, y], [1, 2]), list_to_assoc(PKV, A3), del_assoc(z, A3, _, A4), assoc_to_values(A4, _))),
    t(ord_union([a, c], [b, d], _)), t(ord_subtract([a, b, c], [b], _)), t(ord_intersection([a, b, c], [b, c, d], _, _)),
    t(ord_memberchk(b, [a, b, c])), t(ord_subset([a, c], [a, b, c])), t(list_to_ord_set([c, a, b, a], _)), t(ord_union([[a], [c, b], [d]], _)),
    t(option(depth(_), [depth(3), width(4)])), t(option(missing(_), [depth(3)], dflt)), t(select_option(width(_), [depth(3), width(4)], _)),
    t(merge_options([a(1)], [a(2), b(3)], _)), t(option(a(_), [a=1])),
    t(append([[1], [2, 3], []], _)), t(select(b, [a, b, c], x, _)), t(selectchk(a, [a, b, a], _)), t(nextto(_, _, [1, 2, 3])),
    t(nth0(1, [a, b, c], _, _)), t(nth1(_, [a, b, c], c, _)), t(same_length([1, 2], _)), t(clumped([a, a, b, a], _)),
    t(max_member(_, [3, 1, 4])), t(min_member(_, [3, 1, 4])), t(max_member(@=<, _, [b, c, a])), t(is_set([a, b])), t(proper_length([a, b], _)),
    t(foreach(member(X, [1, 2]), X > 0)), t(foreach(member(X, [1, 2]), X > 1)), t(string_code(_, "ab", 0'b)), t(string_code(a, "ab", _)).
%- 285 test_gate_pl_swi_program_space_module_property_and_the_limit_errors_as_swipl__z
:- use_module(library(lists)).
sz(M, S) :- module_property(M, program_size(S)).
c(N, G) :- ( catch(G, E, (( E = error(F, _) -> true ; F = E ), format("~w: error ~q~n", [N, F]), fail)) -> format("~w: yes~n", [N]) ; format("~w: no~n", [N]) ).
t_too_low :- set_module(user:program_space(1000)).
t_retract :- set_module(psl:program_space(0)), dynamic(psl:test/0), sz(psl, S0), assertz(psl:test), retract(psl:test), sz(psl, S), S == S0.
t_abolish :- set_module(psl:program_space(0)), sz(psl, S0), assertz(psl:test), abolish(psl:test/0), sz(psl, S), S == S0.
t_assert :- set_module(psl:program_space(1000)), module_property(psl, program_space(Sp)), Sp == 1000, assertz(psl:test).
t_overflow :- abolish(psl:test/0), set_module(psl:program_space(1000)), forall(between(1, 100, X), assertz(psl:test(X))).
t_repeat :- abolish(psl:test/1), set_module(psl:program_space(100000)), sz(psl, S0), forall(between(1, 100, _), (forall(between(1, 100, X), assertz(psl:test(X))), retractall(psl:test(_)), sz(psl, S), S0 == S)).
t_called :- assertz(qm:t2(1)), qm:t2(1), \+ qm:t2(2).
t_user_untouched :- sz(user, S0), assertz(qm:t3(1)), sz(user, S), S == S0.
t_user_assert :- assertz(user:t9(1)), t9(1).
t_inner_module :- assertz(qm:qm2:t7(1)), qm2:t7(1).
t_asserta_order :- assertz(qm:t8(2)), asserta(qm:t8(1)), findall(X, qm:t8(X), L), L == [1, 2].
t_rule :- assertz((qm:t15(X) :- X > 1)), qm:t15(2), \+ qm:t15(0).
t_retract_binds :- assertz(qm:t14(a, b)), retract(qm:t14(X, Y)), X == a, Y == b.
t_meta_assertz :- G = assertz(qm:t6(1)), call(G), qm:t6(1).
t_meta_dynamic :- G = dynamic(qm:t10/1), call(G), \+ qm:t10(_).
t_meta_retract :- assertz(qm:t11(1)), G = retract(qm:t11(X)), call(G), X == 1, \+ qm:t11(_).
t_meta_retractall :- assertz(qm:t12(1)), G = retractall(qm:t12(_)), call(G), \+ qm:t12(_).
t_meta_abolish :- assertz(qm:t13(1)), G = abolish(qm:t13/1), call(G), \+ catch(qm:t13(_), _, fail).
t_var_module :- M = qm, assertz(M:t16(1)), M:t16(1).
t_ground_assertz :- set_module(gfz:program_space(1000)), forall(between(1, 200, _), assertz(gfz:g(1))).
t_ground_asserta :- set_module(gfa:program_space(1000)), forall(between(1, 200, _), asserta(gfa:g(1))).
t_ground_rule :- set_module(gfr:program_space(1000)), forall(between(1, 200, _), assertz((gfr:g(1) :- true))).
t_ground_meta :- set_module(gfk:program_space(1000)), G = assertz(gfk:g(1)), forall(between(1, 200, _), call(G)).
t_ground_other_limit :- set_module(gfo:program_space(1000000)), forall(between(1, 200, _), assertz(gfq:g(1))), gfq:g(1).
t_ground_under_limit :- set_module(gfu:program_space(1000000)), forall(between(1, 200, _), assertz(gfu:g(1))), gfu:g(1).
t_ground_user :- sz(user, S0), N is S0 + 1000, set_module(user:program_space(N)), forall(between(1, 200, _), assertz(ugf(1))).
:- initialization((c(too_low, t_too_low), c(retract, t_retract), c(abolish, t_abolish), c(assert, t_assert), c(overflow, t_overflow), c(repeat, t_repeat),
   c(called, t_called), c(user_untouched, t_user_untouched), c(user_assert, t_user_assert), c(inner_module, t_inner_module), c(asserta_order, t_asserta_order),
   c(rule, t_rule), c(retract_binds, t_retract_binds), c(meta_assertz, t_meta_assertz), c(meta_dynamic, t_meta_dynamic), c(meta_retract, t_meta_retract),
   c(meta_retractall, t_meta_retractall), c(meta_abolish, t_meta_abolish), c(var_module, t_var_module),
   c(ground_assertz, t_ground_assertz), c(ground_asserta, t_ground_asserta), c(ground_rule, t_ground_rule), c(ground_meta, t_ground_meta),
   c(ground_other_limit, t_ground_other_limit), c(ground_under_limit, t_ground_under_limit), c(ground_user, t_ground_user))).
%- 286 test_gate_pl_swi_source_text_raw_newlines_unicode_symbols_bang_compound_and_dcg_var_body_answer_as_swipl__w
:- use_module(library(lists)).
:- initialization(main).
t(T, G) :- catch((call(G) -> \+ \+ (numbervars(T, 0, _), writeq(T)) ; writeq(no)), error(E, _), \+ \+ (numbervars(E, 0, _), writeq(caught(E)))), nl.
chess(♔, ♕).
chess(Q, K) :- Q = K.
bang(!(A), r(A)) :- !.
bang(X, X).
dcgv(St) --> St.
sym(X) :- X = ♔, true.
nbsp(A, B) :- A = foo, B = bar.
main :-
    t(X1, X1 = "ab
cd"),
    t(X2, X2 = 'ef
gh'),
    t(X3, X3 = `ij
kl`),
    t(L4, (L4 = "line1
line2", atom_length(L4, _))),
    t(S, (sym(S))),
    t(N, (X5 = ♔ , atom_length(X5, N))),
    t(r(A,B), nbsp(A, B)),
    t(R, bang(!(3), R)),
    t(R2, bang(!, R2)),
    t(R3, (dcgv([a], [a|T3], T3), R3 = ok)),
    t(R4, (dcgv(foo, S4, []), R4 = S4)),
    t(r(Q,K), chess(Q, K)),
    t(Len, (atom_codes('♔♕', Cs), length(Cs, Len))),
    t(Ts, (findall(X, member(X, [♔, '♕♖', a]), Ts))).
foo --> [x].
%- 287 test_gate_pl_swi_statistics_answers_globalused_localused_trailused_and_stack_shifts_as_swipl__w
:- initialization(main).
k(L, G) :- catch(( call(G) -> R = true ; R = false ), error(E, _), ( E = domain_error(K, _) -> R = domain_error(K) ; R = E )), format("~w => ~w~n", [L, R]).
det_freeze_loop(N, T) :- ( succ(N2, N) -> freeze(X, true), X = a, det_freeze_loop(N2, T) ; garbage_collect, statistics(trailused, T) ).
main :-
    k(globalused_int, ( statistics(globalused, G), integer(G), G > 0 )),
    k(localused_int, ( statistics(localused, L), integer(L), L >= 0 )),
    k(trailused_int, ( statistics(trailused, T), integer(T), T >= 0 )),
    k(stack_shifts_three, ( statistics(stack_shifts, [A, B, C]), integer(A), integer(B), integer(C) )),
    k(globalused_grows, ( garbage_collect, statistics(globalused, G0), length(Big, 5000), statistics(globalused, G1), G1 > G0, Big = [] )),
    k(globalused_after_gc_shrinks, ( length(Big2, 20000), Big2 = [_|_], garbage_collect, statistics(globalused, G2), garbage_collect, statistics(globalused, G3), G3 =< G2 )),
    k(unbound_key, statistics(_, _)),
    k(unknown_key, statistics(nokey_zz, _)),
    k(det_freeze_no_space, ( garbage_collect, statistics(trailused, T0), det_freeze_loop(1000, T1), TD is T1 - T0, TD < 100 )),
    k(throw_gc, ( statistics(stack_shifts, [S0, _, _]), ( between(1, 10000, _), catch(throw(foo), _, true), fail ; true ), statistics(stack_shifts, [S1, _, _]), S0 == S1 )),
    k(runtime_still_pair, ( statistics(runtime, [R1, R2]), integer(R1), integer(R2) )),
    k(global_stack_still_pair, ( statistics(global_stack, [U, F]), integer(U), integer(F) )),
    k(cputime_still_number, ( statistics(cputime, CT), number(CT) )).
%- 288 test_gate_pl_swi_user_display_overrides_the_builtin_difference_list_sinks_and_bagof_of_a_runtime_goal_sorts_its_groups_answer_as_swipl__w
:- use_module(library(lists)).
:- use_module(library(dcg/basics)).
:- use_module(library(solution_sequences)).
:- initialization(main).
display(G) :- write(user(G)), nl.
concat_atom(L, R) :- atomic_list_concat(L, '-', R).
t(T, G) :- catch((call(G) -> \+ \+ (numbervars(T, 0, _), writeq(T)) ; writeq(no)), error(E, _), \+ \+ (numbervars(E, 0, _), writeq(caught(E)))), nl.
grp(S, L) :- group_by(S, Lf, (member(N, [12, 127, 7, 28, 42, 5, 113]), divmod(N, 10, S, Lf)), L).
main :-
    display([a, b]),
    maplist([R]>>display(R), [[c], [d]]),
    t(A, concat_atom([x, y, z], A)),
    t(Cs-T, (format(codes(Cs, T), "~w-~a", [12, x]), T = [0'!])),
    t(Hs, (format(chars(Hs, T2), "~d", [345]), T2 = [z])),
    t(C1, (with_output_to(codes(C1, T3), write(abc)), T3 = [])),
    t(C2, (with_output_to(chars(C2, T4), (write(a), write(b))), T4 = [c])),
    t(D1, phrase(integer(12), D1)),
    t(D2, (phrase(integer(345), D2, [0'x]))),
    t(Gs, findall(S-L, grp(S, L), Gs)),
    t(Bs, findall(S-L, (G = (member(N, [12, 127, 7, 28, 42, 5, 113]), divmod(N, 10, S, Lf)), E =.. [v, N], bagof(Lf, E^G, L)), Bs)),
    t(Ss, findall(S-L, (G = (member(N, [12, 127, 7, 28, 42, 5, 113, 7]), divmod(N, 10, S, Lf)), setof(Lf, N^G, L)), Ss)).
%-------------------------- 289 test_gate_pl_tabling_phase_1_answers_as_swipl__g
:- initialization(main).
:- table path/2.
edge(a, b). edge(b, c). edge(c, a). edge(c, d).
path(X, Y) :- path(X, Z), edge(Z, Y).
path(X, Y) :- edge(X, Y).
:- table fib/2.
fib(0, 0). fib(1, 1).
fib(N, F) :- N > 1, A is N-1, B is N-2, fib(A, FA), fib(B, FB), F is FA+FB.
:- table even/1, odd/1.
even(0).
even(N) :- odd(M), M < 10, N is M+1.
odd(N) :- even(M), M < 10, N is M+1.
:- table conn/2.
conn(X, Y) :- conn(Y, X).
conn(X, Y) :- link(X, Y).
conn(X, Z) :- conn(X, Y), conn(Y, Z).
link(1, 2). link(2, 3). link(4, 4).
:- table b/2.
b(X, Y) :- b(X, Z), b(Z, Y).
b(X, Y) :- e(X, Y).
e(1, 2). e(2, 3).
:- table nv/1.
nv(f(_)).
nv(f(a)).
nv(g(X, X)).
:- table z/0.
z :- z.
z.
:- table boom/1.
boom(X) :- X = 1 ; throw(oops).
:- dynamic(cnt/1).
cnt(0).
:- table counted/1.
counted(X) :- retract(cnt(N)), N1 is N+1, assertz(cnt(N1)), member(X, [p, q]).
s(T, G) :- findall(T, G, L), msort(L, S), writeq(S), nl.
main :-
  s(X-Y, path(X, Y)), ( path(d, _) -> writeq(yes) ; writeq(no) ), nl,
  fib(200, F), writeq(F), nl, fib(30, F30), writeq(F30), nl,
  s(E, even(E)), s(O, odd(O)),
  s(P-Q, conn(P, Q)), s(P2, conn(4, P2)),
  s(B1-B2, b(B1, B2)), s(B3, b(1, B3)),
  findall(V, nv(V), NV), length(NV, NVn), writeq(NVn), nl,
  ( z -> writeq(z_yes) ; writeq(z_no) ), nl,
  catch(s(W, boom(W)), Ex, (writeq(caught(Ex)), nl)),
  s(K, counted(K)), s(K2, counted(K2)), cnt(C1), writeq(evals(C1)), nl,
  abolish_all_tables, s(K3, counted(K3)), cnt(C2), writeq(evals(C2)), nl,
  s(X4-Y4, path(X4, Y4)),
  halt.
%- 290 test_gate_pl_telling_inside_a_captured_output_returns_the_capture_stream_and_tell_reselects_it_as_swipl__w
:- use_module(library(lists)).
t1 :- telling(X), writeln(inside1), tell(X), writeln(inside2).
t2 :- telling(Y), ( Y == user -> write(user) ; write(stream) ).
t3 :- telling(X), tell(X), write(a), tell(X), write(b).
main :- with_output_to(string(S), t1), write(captured(S)), nl,
        with_output_to(string(S3), t2), write(kind(S3)), nl,
        with_output_to(string(S4), t3), write(retold(S4)), nl,
        telling(Z), write(outside(Z)), nl, writeln(after).
:- initialization((main, halt)).
%---------------------- 291 test_gate_pl_text_and_quoted_tokens_read_as_swipl__g
:- set_prolog_flag(double_quotes, codes).
w1("é€a😀").
:- set_prolog_flag(double_quotes, chars).
w2("é€a").
:- set_prolog_flag(double_quotes, codes).
q --> "é", "b".
:- set_prolog_flag(double_quotes, string).
s1("A").
s2("é").
s3("z").
:- initialization(main).
main :-
  w1(A), write(A), nl, w2(B), write(B), nl, phrase(q, C), write(C), nl, X = `é€`, write(X), nl,
  s1(S1), V1 is S1 + 0, write(V1), nl, ( 66 >= S1 -> write(yes) ; write(no) ), nl,
  s2(S2), V2 is S2 * 2, write(V2), nl, s3(S3), ( S3 =:= 0'z -> write(eq) ; write(ne) ), nl,
  catch((W is a + 0, write(W)), error(E, _), write(E)), nl,
  atom_length('a	b', N1), write(N1), nl,
  atom_codes(A2, "p	q"), atom_length(A2, N2), write(N2), nl,
  atom_codes(A3, `r	s`), atom_length(A3, N3), write(N3), nl,
  halt.
%- 292 test_gate_pl_the_c_unifier_binds_the_plain_variable_to_the_attributed_one__w
:- use_module(library(assoc)).
:- initialization(main).
s(N, G) :- ( catch(G, error(E, _), (writeq(N-E), nl, fail)) -> writeq(N-ok) ; writeq(N-failed) ), nl.
m(t(K,V,B,L,R), Out) => Out = t(K,V,B,L,R).
m2(X, Out) => Out = X.
m3(t(_,V,_,_,_), O) => O = V.
m4(f(X, X), O) => O = X.
m5(A, B), A == B => true.
m5(_, _) => fail.
main :- put_attr(Y, value, 1), T = t(1,Y,<,t,t),
    s(uwoc_fresh_left, (unify_with_occurs_check(V1, Y), V1 == Y)), s(uwoc_fresh_right, (unify_with_occurs_check(Y, V2), V2 == Y)),
    s(uwoc_in_compound, (unify_with_occurs_check(f(V3), f(Y)), V3 == Y)), s(uwoc_compound_right, (unify_with_occurs_check(f(Y), f(V4)), V4 == Y)),
    s(subsumes_compound, subsumes_term(t(_,_,_,_,_), T)), s(subsumes_arg, subsumes_term(f(_), f(Y))), s(subsumes_bare, subsumes_term(_, Y)),
    s(ssu_compound, m(T, _)), s(ssu_bare, m2(T, _)), s(ssu_value, (m3(T, O3), O3 == Y)), s(ssu_repeated, (put_attr(Y2, value, 2), m4(f(Y2, Y2), _))), s(ssu_guard, m5(Y, Y)),
    s(assoc_put_get, (empty_assoc(E0), put_assoc(1, E0, Y, A1), put_assoc(2, A1, Y3, A2), get_assoc(1, A2, Z), Z == Y, get_assoc(2, A2, Z3), Z3 == Y3)),
    s(two_attributed, (put_attr(P, value, 3), put_attr(Q, other, 4), P = Q)),
    s(plain_eq, (f(V5) = f(Y), V5 == Y)), halt.
%- 293 test_gate_pl_the_clause_reader_leaves_the_body_as_written_and_lower_places_it__w
a :- write(a).
b :- write(b).
c :- write(c).
d :- write(d), nl.
p(X) :- ( X > 1 -> a ; b ), c, d.
q(_) :- a, ( b, c ), d.
r(X) :- a, \+ X = 3, ( X = 1 *-> d ; write(g), nl ).
main :- p(2), p(0), q(0), r(1), r(2), ( r(3) -> true ; write(no), nl ).
:- initialization(main).
%----------------------------- 294 test_gate_pl_the_colon_operator_is_600_xfy__w
main :- ( current_op(P, T, :) -> write(op(P, T)) ; write(none) ), nl, X = (a:b+c), write_canonical(X), nl, Y = (a:b:c), write_canonical(Y), nl.
:- initialization(main).
%------------------- 295 test_gate_pl_the_debug_topic_family_answers_as_swipl__g
:- initialization(main).
t(G) :- catch((G -> write(yes) ; write(no)), error(E, _), write(E)), nl.
main :-
  debug(t, 'hi ~w', [1]), write(a), nl,
  t(debugging(t)),
  debug(t), t(debugging(t)),
  debug(t, 'shown ~w', [2]),
  debug(u(_)), t(debugging(u(x))),
  nodebug(t), t(debugging(t)),
  nodebug, t(debugging(u(x))),
  t(debug(t, 'x', [])),
  t(assertion(true)),
  halt.
%- 296 test_gate_pl_the_generator_road_takes_the_emitted_context_from_the_veneer_not_live_registers__w
:- dynamic(portray/1).
portray(F) :- float(F), I is truncate(F), write(I).
main :- format("~p", [3.14]), nl, format("~p~n", [f(2.5, x)]), X = 7.9, format("~p-~w~n", [X, X]).
:- initialization(main).
%--------- 297 test_gate_pl_the_gnu_file_and_os_builtins_answer_as_gnu_prolog__w
:- initialization(main).
t(G) :- catch((call(G) -> write(yes) ; write(no)), E, (copy_term(E, C), numbervars(C, 0, _), write(caught(C)))), nl.
main :-
    t(environ('SCRIP_GATE_ENV', v1)), t(environ('SCRIP_GATE_ENV', v2)), t(environ(nosuch_gate_var_xyz, _)),
    t((environ(N, v1_unique_gate_value), N == 'SCRIP_GATE_UNIQ')), t((findall(K, environ(K, _), Ks), length(Ks, L), L > 2)),
    t(environ(1, _)), t(environ(_, 1)),
    t((working_directory(W), atom(W), sub_atom(W, _, _, 0, '/gate_cwd'))), t(working_directory(1)),
    t(make_directory(wdir)), t(make_directory(wdir)), t(make_directory(_)), t(make_directory(1)),
    t(file_exists(wdir)), t(file_exists(nosuch)), t(file_exists(_)), t(file_exists(1)),
    t(file_property(wdir, type(directory))), t(file_property(wdir, type(regular))), t(file_property(wdir, permission(search))),
    t(file_property(nosuch, type(_))), t(file_property(_, type(_))), t(file_property(1, type(_))), t(file_property(wdir, foo(_))),
    t((findall(Q, (file_property(wdir, P), functor(P, Q, _)), Qs), write(Qs), write(' '))),
    t((file_property(wdir, last_modification(M)), M = dt(Y, _, _, _, _, _), integer(Y))),
    t(change_directory(wdir)), open('f.txt', write, S), write(S, hello), close(S), t(change_directory('..')),
    t(change_directory(nosuch)), t(change_directory(_)), t(change_directory(1)),
    t(file_property('wdir/f.txt', size(5))), t(file_property('wdir/f.txt', type(regular))), t(file_property('wdir/f.txt', permission(execute))),
    t((file_property('wdir/f.txt', real_file_name(RF)), sub_atom(RF, _, _, 0, '/gate_cwd/wdir/f.txt'))),
    t((directory_files(wdir, Fs), msort(Fs, SF), write(SF), write(' '))), t(directory_files(nosuch, _)), t(directory_files(_, _)), t(directory_files(1, _)),
    t(delete_file('wdir/f.txt')), t(file_exists('wdir/f.txt')), t(delete_file('wdir/f.txt')), t(delete_file(wdir)), t(delete_file(_)),
    forall(member(T, [a, b, foo, bar, f(a), [a], 1, 0, -1, 2.5, [], f(foo), g(1,2), [a,b], foo(bar), 1.5, 'hello world']),
           (term_hash(T, H), writeq(T), write(' '), write(H), nl)),
    t((term_hash(f(_), H2), var(H2))), t(term_hash(a, foo)),
    t((prolog_pid(Pid), integer(Pid), Pid > 0)), t(prolog_pid(foo)).
%- 298 test_gate_pl_the_iso_flag_makes_reads_strict_and_integer_division_a_float__w
r(Text) :- open('isog.txt', write, W), write(W, Text), close(W), open('isog.txt', read, S),
    catch((read(S, T), write(read(T))), error(E, _), (functor(E, F, _), write(F))), close(S), nl.
d :- X is 4 / 2, Y is 7 / 2, Z is 4 // 2, write(X/Y/Z), nl.
main :- d, r('f(a:-b). '), set_prolog_flag(iso, true), current_prolog_flag(iso, V), write(V), nl, d,
        r('f(a:-b). '), r('f(:-b). '), r('[a:-b]. '), r('f((a:-b)). '), r('a :- b. '), r('f(a,-). '), set_prolog_flag(iso, false), d.
:- initialization(main).
%------- 299 test_gate_pl_the_press_and_chat80_dec10_surface_answers_as_swipl__g
:- set_prolog_flag(double_quotes, codes).
:- initialization(main).
:- public natnum/1.
:- mode(natnum(+)).
:- dynamic(seen/1).
natnum(0).
seen(a).
for(0, _Goal) :- !.
for(N, Goal) :- N > 0, call(Goal), M is N-1, for(M, Goal), !.
main :-
  abolish(seen, 1), ( catch(seen(_), _, fail) -> write(still) ; write(gone) ), nl,
  put("("), put([0'x]), put(0')), nl,
  X is [0'a] + 1, write(X), nl,
  recordz(k, val(1), _), recordz(k, val(2), R2), recorda(k, val(0), _),
  findall(V, recorded(k, val(V), _), L1), write(L1), nl,
  erase(R2), findall(V, recorded(k, val(V)), L2), write(L2), nl,
  recorda(f(x, y), two), ( recorded(f(_, _), T) -> write(T) ; write(none) ), nl,
  log(2.718281828459045, Lg), write(Lg), nl, acos(0.5, Ac), write(Ac), nl, sqrt(16, Sq), write(Sq), nl,
  ( otherwise -> write(otherwise) ; true ), nl,
  natnum(N0), write(N0), nl,
  prompt(Old, 'Q: '), prompt(Mid, Old), write(Mid), nl, prompt1('P: '), style_check(-singleton),
  statistics(runtime, [T0, _]), statistics(walltime, [W0, _]), statistics(cputime, C),
  ( integer(T0), integer(W0), number(C) -> write(stats_ok) ; write(stats_bad) ), nl,
  assertz((h :- for(2, (write(q), nl)))), h,
  halt.
%----- 300 test_gate_pl_the_query_neck_reads_as_an_atom_and_a_prefix_operator__w
main :- X = [(?-), (:-)], writeq(X), nl, Y = (?- p(1)), writeq(Y), nl, Y = '?-'(A), writeq(A), nl.
:- initialization(main).
%- 301 test_gate_pl_the_reclaim_report_names_every_erased_fragment_and_its_holders__w1
:- initialization(main).
:- dynamic(pi/3).
loop(0) :- !.
loop(N) :- ( retract((pi(a, 1, M) :- _)) -> true ; M = 0 ), M1 is M + 1, assertz((pi(a, 1, M1) :- true, true)), N1 is N - 1, loop(N1).
main :- loop(200), pi(a, 1, V), write(V), nl, halt.
%- 302 test_gate_pl_the_reclaim_report_names_every_erased_fragment_and_its_holders__w2
:- initialization(main).
:- dynamic(p/1).
main :- assertz((p(X) :- retract((p(_) :- _)), Y = done, X = Y)), p(A), write(self(A)), nl, halt.
%- 303 test_gate_pl_the_reclaim_report_names_every_erased_fragment_and_its_holders__w3
:- initialization(main).
:- dynamic(q/1).
:- dynamic(s/1).
r(X) :- q(X).
main :- assertz((s(X) :- member(X, [1, 2, 3]), X > 0)), assertz((q(X) :- s(Y), X = f(Y))), r(B), B == f(1), retract((s(_) :- _)), write(kept(B)), nl, halt.
%- 304 test_gate_pl_the_standard_output_streams_report_mode_append_in_the_iso_default_and_write_in_the_swi_dialect__iso
:- use_module(library(lists)).
:- initialization(main).
main :-
    forall(member(A, [user_input, user_output, user_error]),
           ( stream_property(S, alias(A)), stream_property(S, mode(M)), write(A-M), nl )),
    current_output(C), stream_property(C, mode(CM)), write(current_output-CM), nl,
    open('appended.txt', append, F), stream_property(F, mode(FM)), write(file-FM), nl, close(F),
    halt.
%- 305 test_gate_pl_the_swi_list_constructor_is_the_bar_bracket_functor_as_swipl__z
:- use_module(library(lists)).
t(G) :- catch((G -> true ; write(no)), error(E, _), writeq(E)), nl.
p('[|]'(H, _), H).
build([], []).
build([X|Xs], R) :- build(Xs, R0), R =.. ['[|]', X, R0].
main :-
    t((X1 = '[|]'(1, []), writeq(X1))),
    t((Y2 =.. ['[|]', 1, []], writeq(Y2))),
    t((functor([a], N3, A3), writeq(N3/A3))),
    t(('[|]'(H4, T4) = [a,b], writeq(H4-T4))),
    t((functor(W5, '[|]', 2), W5 = [_|_], write(list))),
    t(([a,b] =.. L6, writeq(L6))),
    t((compound_name_arity([a], N7, A7), writeq(N7/A7))),
    t((compound_name_arguments([a,b], N8, As8), writeq(N8-As8))),
    t((build([1,2,3], R9), writeq(R9))),
    t(('[|]'(1, '[|]'(2, [])) == [1,2] -> write(yes) ; write(no))),
    t((length('[|]'(1, '[|]'(2, [])), L10), writeq(L10))),
    t((p([a,b], H11), writeq(H11))),
    t((findall(Z, member(Z, '[|]'(x, '[|]'(y, []))), L12), writeq(L12))).
:- initialization((main, halt)).
%---------------- 306 test_gate_pl_tries_and_table_inspection_answer_as_swipl__g
:- initialization(main).
r(G) :- ( catch(G, error(F, _), (( atom(F) -> writeq(ex(F)) ; functor(F, N, _), arg(1, F, A), writeq(ex(N, A)) ), nl, fail)) -> writeq(yes) ; writeq(no) ), nl.
:- table a/2.
a(X, Y) :- a(X, Z), e(Z, Y).
a(X, Y) :- e(X, Y).
e(1, 2). e(2, 3).
cnt(T, N) :- findall(x, trie_gen(T, _, _), L), length(L, N).
main :-
  trie_new(T),
  r(trie_insert(T, b, 1)), r(trie_insert(T, b, 1)), r(trie_insert(T, b, 2)),
  r(trie_update(T, b, 3)), trie_lookup(T, b, Vb), writeq(Vb), nl,
  r(trie_insert(T, f(X, Y, X), v(Y))), r(trie_lookup(T, f(_, _, _), _)), r(trie_lookup(T, f(Q, _, Q), _)),
  trie_lookup(T, f(Q1, R1, Q1), Vf), ( Vf = v(W1), var(W1), W1 \== R1 -> writeq(fresh_value) ; writeq(bound_value) ), nl,
  r(trie_insert(T, [1, 2, 3], z)), r(trie_insert(T, 1.0, x)), r(trie_insert(T, 1, y)), trie_lookup(T, 1, V1), writeq(V1), nl,
  r(trie_insert(T, g(h(i(j)), [k|l]), deep)), r(trie_lookup(T, g(h(i(j)), [k|l]), _)), r(trie_lookup(T, g(h(i(j)), [k]), _)),
  cnt(T, N0), writeq(N0), nl,
  findall(K, (trie_gen(T, K, _), ground(K)), G0), msort(G0, G1), writeq(G1), nl,
  r(trie_gen(T, f(a, _, a), _)), r(trie_gen(T, f(a, _, b), _)),
  r(trie_delete(T, b, Vd)), writeq(Vd), nl, r(trie_delete(T, b, _)),
  cnt(T, N1), writeq(N1), nl,
  trie_insert(T, c, 9, Node), trie_term(Node, Tm), writeq(Tm), nl,
  length(Big, 2000), r(trie_insert(T, big(Big), long)), r(trie_lookup(T, big(Big), _)), length(Big2, 2000), r(trie_lookup(T, big(Big2), _)),
  trie_destroy(T), r(trie_gen(T, _, _)), r(trie_insert(T, a, b)), r(trie_insert(foo, a, b)), r(trie_gen(_, _, _)),
  findall(P-Q2, a(P, Q2), _), ( a(2, _) -> true ; true ), ( a(3, _) -> true ; true ),
  findall(V, current_table(V, _), Vs), length(Vs, NT), writeq(tables(NT)), nl,
  '$tbl_local_variant_table'(VT), cnt(VT, NV), writeq(variants(NV)), nl,
  current_table(a(_, _), AT), '$tbl_table_status'(AT, S, Wr, Sk), writeq(S), nl,
  findall(G, (trie_gen(AT, Sk, _), Wr = _:G), Ws), msort(Ws, Ws1), writeq(Ws1), nl,
  current_table(a(3, _), A3), cnt(A3, N3), writeq(empty_table(N3)), nl,
  r(current_table(a(4, _), _)),
  abolish_all_tables, findall(V, current_table(V, _), V2), length(V2, NT2), writeq(tables(NT2)), nl,
  findall(P-Q3, a(P, Q3), L3), msort(L3, L4), writeq(L4), nl,
  halt.
%----------------------- 307 test_gate_pl_two_variables_compare_one_way_only__vo
:- initialization(main).
tot(A, B, T) :- ( A @< B -> X = lt ; X = ge ), ( B @< A -> Y = lt ; Y = ge ), ( X \== Y -> T = total ; T = both(X) ).
anti(O1, O2, R) :- ( O1 == (<), O2 == (>) -> R = antisymmetric ; O1 == (>), O2 == (<) -> R = antisymmetric ; R = same_both_ways ).
main :- A = f(_), B = f(_), tot(A, B, T1), write(T1), nl,
        C = g(_, _), C = g(P, Q), tot(C, g(Q, P), T2), write(T2), nl,
        D = h(_), compare(O1, D, h(_)), E = h(_), compare(O2, h(_), E), anti(O1, O2, R), write(R), nl,
        findall(W, bagof(t, (U = W ; V = W ; Z = W), _), Ws), length(Ws, N), write(N), nl,
        L = [_, _, _], sort(L, SL), length(SL, NL), write(NL), nl.
%------------- 308 test_gate_pl_variant_sha1_and_variant_hash_answer_as_swipl__w
:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), (functor(E, F, A), R = F/A-E)), ( R = (type_error/2-type_error(K, _)) -> R2 = type_error(K) ; R2 = R ), writeq(N-R2), nl.
main :- t(hex40, (variant_sha1(this_is_an_atom, H), atom_length(H, 40), atom_codes(H, Cs), forall(member(C, Cs), (code_type(C, digit) ; (C >= 0'a, C =< 0'f))))),
    t(renaming, (variant_sha1(x(A), H1), variant_sha1(x(B), H2), H1 == H2)),
    t(not_variant, (variant_sha1(x(C, C), H3), variant_sha1(x(C, D), H4), H3 \== H4)),
    t(shared, (S = x(E), variant_sha1(x(S, S), H5), variant_sha1(x(x(E), x(E)), H6), H5 == H6)),
    t(float, (variant_sha1(1.0, H7), variant_sha1(2.0, H7))),
    t(cyclic, (Y = a(Y), variant_sha1(Y, _))),
    t(attvar, (dif(X, 3), variant_sha1(X, _))),
    t(holds_attvar, (dif(X2, 3), variant_sha1(x(a(X2)), _))),
    t(hash_attvar_plain, (freeze(Q, true), variant_hash(x(P, P), V1), variant_hash(x(Q, Q), V2), V1 == V2)), halt.
%--------------------------- 309 test_gate_pl_wildcard_match_answers_as_swipl__g
:- initialization(main).
c(N, G, Want) :- catch((G -> R = true ; R = fail), error(E, _), R = err(E)), ( ok(Want, R) -> V = pass ; V = diverge ), write(N-V-R), nl.
ok(true, true). ok(fail, fail). ok(err(syn), err(syntax_error(_))). ok(err(code), err(type_error(character_code, 1114112))).
main :-
  c(1, wildcard_match('', ''), true),
  c(2, wildcard_match('', 'a'), fail),
  c(3, wildcard_match('a', ''), fail),
  c(4, wildcard_match('a?', 'aX'), true),
  c(5, wildcard_match('a[xyz]', 'ax'), true),
  c(6, wildcard_match('a[xy\\]]', 'a]'), true),
  c(7, wildcard_match('a\\', 'a\\'), true),
  c(8, wildcard_match('a\\a', 'aa'), true),
  c(9, wildcard_match('a\\[a', 'a[a'), true),
  c(10, wildcard_match('a[x-z]b', 'ayb'), true),
  c(11, wildcard_match('a[x-]b', 'axb'), true),
  c(12, wildcard_match('a[-x]b', 'axb'), true),
  c(13, wildcard_match('a{[-x],c}b', 'acb'), true),
  c(14, wildcard_match('a{[-x],c,}b', 'ab'), true),
  c(15, wildcard_match('a{[x-z],c,}b', 'ayb'), true),
  c(16, wildcard_match([65], 'A'), true),
  c(17, wildcard_match('a[Ѐ-ѐ]b', 'aХb'), true),
  c(18, wildcard_match(a, 'A', [case_sensitive(false)]), true),
  c(19, wildcard_match(a, 'A', [case_sensitive(true)]), fail),
  c(20, wildcard_match('A', a, [case_sensitive(false)]), true),
  c(21, wildcard_match('A', a, [case_sensitive(true)]), fail),
  c(22, wildcard_match(a, 'A'), fail),
  c(23, wildcard_match([0x110000], 'A'), err(code)),
  c(24, wildcard_match('se{xx', 'A'), err(syn)),
  c(25, wildcard_match('se{xx\\', 'A'), err(syn)),
  c(26, wildcard_match('se{xxр', 'A'), err(syn)),
  c(27, wildcard_match('se{xx[z', 'A'), err(syn)),
  c(28, wildcard_match('se[xy', 'A'), err(syn)),
  c(29, wildcard_match('se[xy\\', 'A'), err(syn)),
  halt.
%- 310 test_gate_pl_write_term_reads_a_bare_boolean_option_atom_as_option_true_in_the_swi_and_xsb_dialects__plain
:- initialization(main).
main :-
    catch(( write_term('a b', [quoted]), write(wrote) ), error(E, _), write(raised(E))), nl,
    write_term('a b', [quoted(true)]), nl,
    halt.
%- 311 test_gate_pl_write_term_reads_a_bare_boolean_option_atom_as_option_true_in_the_swi_and_xsb_dialects__swi
:- use_module(library(lists)).
:- initialization(main).
main :-
    write_term('a b', [quoted]), nl,
    write_term([a,b], [ignore_ops]), nl,
    write_term('$VAR'(0), [numbervars]), nl,
    write_term('$VAR'(27), [numbervars]), nl,
    write_term(f(a, 'B c', 1+2), [quoted, ignore_ops]), nl,
    write_term(f('A b', g(x)), [quoted(true), max_depth(3)]), nl,
    write_term('a b', [quoted(false)]), nl,
    halt.
%- 312 test_gate_pl_write_term_reads_a_bare_boolean_option_atom_as_option_true_in_the_swi_and_xsb_dialects__xsb
:- op(1050, fy, import). :- op(1100, fx, export). :- op(1040, xfx, from). :- op(1100, fy, index). :- compiler_options([]). :- use_module(library(lists)).
:- initialization(main).
main :-
    write_term('a b', [quoted]), nl,
    write_term('$VAR'(0), [numbervars]), nl,
    halt.
%---- 313 test_gate_pl_write_term_variable_names_take_unicode_uppercase_names__w
:- initialization(main).
t(N) :- catch((write_term(f(V), [variable_names([N=V])]), nl), error(E, _), (writeq(ex(E)), nl)).
main :- t('Γβα'), t('_x'), t('Ab'), t(ab), t('Ölçü'), t('ǅx').
%--- 314 test_gate_pl_writef_dcg_basics_and_clpfd_goal_terms_answer_as_swipl__w1
:- use_module(library(dcg/basics)).
:- use_module(library(clpfd)).
:- initialization(main).
main :- writef('a %w b %w\n', [x, f(y)]), writef("s=%s\n", [[104,105]]), writef('%d|%3r|%3l|\n', [42, ab, cd]), writef('plain\\l'),
    phrase((blanks, integer(N), blanks, digits(Ds), eos), `  42 007`), atom_codes(A, Ds), writef('%w %w\n', [N, A]),
    [P, Q] ins 1..2, C in 1..3, all_distinct([P, Q, C]), fd_dom(C, Dom), writef('%w\n', [Dom]), halt.
%--- 315 test_gate_pl_writef_dcg_basics_and_clpfd_goal_terms_answer_as_swipl__w2
:- use_module(library(dcg/basics)).
:- initialization(main).
t(N, G) :- ( catch(G, E, (writeq(N-E), nl)) -> true ; writeq(N-failed), nl ).
r(S, R) --> string_without(`,`, S), [0',], remainder(R).
main :- t(rule, (phrase(r(S, R), `ab,cd`), writeq(S-R), nl)),
    t(phrase3, (phrase(string_without(`,`, S2), `ab`, R2), writeq(S2-R2), nl)),
    t(conj_string, (phrase((string_without(`,`, S3), ",", remainder(R3)), `ab,cd`), writeq(S3-R3), nl)),
    t(string_body, (phrase("lit", `lit`), writeq(lit), nl)),
    t(list_body, (phrase([0'a], `a`), writeq(ok), nl)),
    t(xint, (phrase(xinteger(X), `ff`), writeq(X), nl)), halt.
%--- 316 test_gate_pl_writef_dcg_basics_and_clpfd_goal_terms_answer_as_swipl__w3
:- use_module(library(dcg/basics), [string//1]).
:- initialization(main).
seq(E, [X|Xs]) --> call(E, X), ( ",", !, seq(E, Xs) ; { Xs = [] } ).
main :- ( phrase(seq(string, L), `ab,cd`) -> findall(A, (member(C, L), atom_codes(A, C)), As), writeq(As) ; writeq(failed) ), nl, halt.
%- 317 test_gate_pl_writeq_brackets_a_declaration_atom_as_swipl_in_the_iso_default_and_as_gprolog_in_the_gnu_dialect__iso
:- initialization(main).
main :- forall(member(A, [public, dynamic, discontiguous, initialization, module, multifile, meta_predicate, table, not]),
               ((X =.. [',', A, 4], Y =.. [-, A], writeq(X-Y)), nl)), halt.
%- 318 test_gate_pl_xsb_builtins_term_size_number_digits_is_acyclic_do_all_answer_as_xsb__s
:- use_module(library(lists)).
main :- term_size(a(1,2,3), S), write(S), nl, term_size(f(a), S2), write(S2), nl, term_size([a,b], S3), write(S3), nl, term_size(f(_), S4), write(S4), nl,
    term_to_atom(f(a,'B c',1+2), A1), write(A1), nl, term_to_atom(T, 'g(h,Z,1+2)'), T = g(H, _, E), write(H), nl, write(E), nl.
:- initialization((main, halt)).
%------------------------- 319 test_gate_prolog_commit_tidy_is_incremental__tidy
:- initialization(main).
main :- N = 100000, length(L, N), ( true ; fail ), bind_all(L), commits(N), write(done), nl.
bind_all([]).
bind_all([X|Xs]) :- X = 1, bind_all(Xs).
commits(0) :- !.
commits(N) :- ( N > 0 -> true ; fail ), N1 is N - 1, commits(N1).
%---------------------- 320 test_gate_prolog_commit_tidy_is_incremental__tidysem
:- initialization(main).
main :- length(L, 2000), fill(L, 0), findall(S, (member(K, [1,2,3]), step(L, K, S)), Ss), writeq(Ss), nl,
        length(M, 300), ( bindmix(M, 1), commits(300), sum_vars(M, S1), S1 > 1000000 -> write(impossible) ; write(backtracked) ), nl,
        ( catch(( length(C, 50), fill(C, 7), commits(50), throw(ball(C)) ), ball(C2), (sum_vars(C2, SC), write(SC))) ), nl,
        g_loop(0, 3000, 0, R), write(R), nl.
fill([], _).
fill([X|Xs], N) :- X = N, N1 is N + 1, fill(Xs, N1).
step(L, K, S) :- bindmix(L, K), commits(500), sum_vars(L, S).
bindmix([], _).
bindmix([X|Xs], K) :- ( var(X) -> X = K ; true ), bindmix(Xs, K).
sum_vars([], 0).
sum_vars([X|Xs], S) :- sum_vars(Xs, S0), ( var(X) -> S is S0 ; S is S0 + X ).
commits(0) :- !.
commits(N) :- ( N > 0 -> true ; fail ), N1 is N - 1, commits(N1).
g_loop(I, N, Acc, R) :- ( I >= N -> R = Acc ; b_setval(k, I), ( I mod 2 =:= 0 -> b_getval(k, V) ; V = 0 ), Acc1 is Acc + V, I1 is I + 1, g_loop(I1, N, Acc1, R) ).
%---------------------------------- 321 test_gate_prolog_entrypoint_ruling__both
:- write(fromdir), nl.
main :- write(frommain), nl.
%-------------------------------- 322 test_gate_prolog_entrypoint_ruling__nomain
:- write(direct), nl.
%------------------------------- 323 test_gate_prolog_entrypoint_ruling__withdir
:- initialization(main).
main :- write(hello), nl.
%- 324 test_gate_raku_a_pinned_generator_graph_runs_no_prolog_trail_code_in_its_to_box__c
:- initialization(main).
p(X, Y) :- between(1, 4, X), Y = f(X), X >= 3.
q(L) :- findall(X-Y, p(X, Y), L).
main :- q(L), write(L), nl, ( p(A, B), A > 3 -> write(A-B) ; write(none) ), nl, halt.
%----------------------------- 325 test_gate_regen_demo_refused_marker__compiles
:- initialization(main).
main :- write(hello), nl.
%------------------------------ 326 test_gate_regen_demo_refused_marker__refuser
:- initialization(main).
main :- findall(X, member(X,[1,2]), L), write(L), nl.
%----------------------------- 327 test_gate_regen_demo_refused_marker__refuser2
:- initialization(main).
main :- nb_setval(k, 1), write(ok), nl.
%----- 328 test_gate_scrip_environment_is_scanned_once_not_read_once_per_knob__c
:- initialization(main).
main :- write(done), nl.
%----- 329 test_gate_scrip_environment_is_scanned_once_not_read_once_per_knob__s
:- initialization(main).
main :- setenv('SCRIP_GC_EXERCISE', '1'), write(done), nl.
%---- 330 test_gate_the_code_pool_refuses_loudly_at_its_cap_never_a_wild_jump__l
:- initialization(main).
:- dynamic(pi/3).
loop(N) :- N > 6000, !.
loop(N) :- assertz((pi(a, 1, N) :- N >= 0)), N1 is N + 1, loop(N1).
main :- loop(1), pi(a, 1, 1), write(done), nl, halt.
%--- 331 test_gate_xsb_refs_are_cut_from_xsb_and_graded_ignoring_white_space__cr
:- initialization((write(x), put_code(13), nl, write(y), nl, halt)).
%- 332 test_gate_xsb_refs_are_cut_from_xsb_and_graded_ignoring_white_space__ft_tests_helper
h(5).

% DRIVER (appended by the vendoring, R-700): fixture
:- initialization((write(driver_ran), nl)).
%- 333 test_gate_xsb_refs_are_cut_from_xsb_and_graded_ignoring_white_space__ft_tests_t_sorted
:- initialization((write(c), nl, write(a), nl, write(b), nl)).
%- 334 test_gate_xsb_refs_are_cut_from_xsb_and_graded_ignoring_white_space__ft_tests_t_stale
:- initialization((write(new), nl)).
%- 335 test_gate_xsb_refs_are_cut_from_xsb_and_graded_ignoring_white_space__ft_tests_t_tok
:- initialization((write('p06:q'), nl)).
%- 336 test_gate_xsb_refs_are_cut_from_xsb_and_graded_ignoring_white_space__ft_tests_t_ws
:- initialization((write('p06:p'), nl)).
%- 337 test_gate_xsb_refs_are_cut_from_xsb_and_graded_ignoring_white_space__once
:- initialization((write(hi), nl, halt)).
