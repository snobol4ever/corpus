% utils_driver.pl -- grades GNU Prolog's BipsPl/utils.pl, whose predicates are all internal ($term_to_goal/3, $check_head/1,
% $get_head_and_body/3, $check_list/1, $check_list_or_partial_list/1, $check_atom_or_atom_list/1, $check_nonvar/1,
% $get_pred_indic/3), through the public built-ins that call them, in the shapes that reach each one's branches: call/1 and
% assertz/1 turn a term into a goal ($term_to_goal), assertz/1 checks the head ($get_head_and_body, $check_head), findall/3
% takes a list or partial list, op/3 and consult/1 take an atom or a list of atoms, write_term/2, open/4 and close/2 check
% their option lists ($check_list, $check_nonvar), listing/1 reads a predicate indicator ($get_pred_indic) (Lon via the ceo,
% CEO-1312 and CEO-1523: every Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library
% is graded by its driver, NAME_driver beside it). gprolog's answer is utils.pl's own code under its callers; SCRIP is graded
% three-way against it (m3 = m4 = gprolog). Every call prints every solution or the formal error term it raises. u_h1/0 and
% u_h2/1 are made by assertz/1 at run time, never declared here, so listing/1 names their file user_input and never this
% driver's path.
:- initialization(main).

% t(G): every solution of G, or the formal error term G raises.
t(G) :- copy_term(G, C),
        catch(findall(C, C, L), E, true),
        (   var(E) -> R = L
        ;   E = error(F, _) -> R = error(F)
        ;   R = ball(E)
        ),
        \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).

% o(G): for a goal whose effect is OUTPUT -- what it printed between < and >, then true, fail or the formal error term.
o(G) :- write('<'),
        catch(( G -> R = true ; R = fail ), E, ( E = error(F, _) -> R = error(F) ; R = ball(E) )),
        write('> '), writeq(R), nl.

main :-
    t(call((X1 = 1 ; X1 = 2))),
    t(call((fail -> true ; X2 = 3))),
    t(call((true, _))),
    t(call(1)),
    t(call((true, 1))),
    t(call((1 ; true))),
    t(call((true -> 1 ; true))),
    t(assertz(_)),
    t(assertz(3)),
    t(assertz((3 :- true))),
    t(assertz((_ :- true))),
    t(assertz((u_h1 :- 4))),
    t(assertz((u_h1 :- (true, 4)))),
    t(assertz((u_h1 :- _))),
    t(clause(u_h1, _)),
    t(assertz((u_h2(Y) :- Y))),
    t(assertz((u_h2(Z) :- (Z, true ; Z)))),
    t(clause(u_h2(_), _)),
    t(findall(X3, member(X3, [a, b]), _)),
    t(findall(X4, member(X4, [a, b]), [a|_])),
    t(findall(X5, member(X5, [a, b]), foo)),
    t(findall(X6, member(X6, [a, b]), [a|foo])),
    t(op(700, xfx, [u_op1, u_op2])),
    t(current_op(_, _, u_op1)),
    t(current_op(_, _, u_op2)),
    t(op(700, xfx, u_op3)),
    t(op(700, xfx, [u_op4, 1])),
    t(op(700, xfx, _)),
    t(op(700, xfx, [_])),
    t(op(700, xfx, [u_op5|_])),
    t(op(700, xfx, foo(bar))),
    t(op(0, xfx, [u_op1, u_op2, u_op3])),
    t(current_op(_, _, u_op1)),
    o(write_term(f('A', b), [quoted(true)])),
    o(write_term(f('A', b), foo)),
    o(write_term(f('A', b), [quoted(true)|_])),
    o(write_term(f('A', b), [_])),
    o(write_term(f('A', b), [quoted(_)])),
    o(write_term(f('A', b), [quoted(true)|bar])),
    t(open('/tmp/gnu_drv_utils.txt', write, _, [type(_)])),
    t(open('/tmp/gnu_drv_utils.txt', write, _, [alias(_)])),
    t(open('/tmp/gnu_drv_utils.txt', write, _, foo)),
    t(open('/tmp/gnu_drv_utils.txt', write, _, [_])),
    t(close(user_output, [force(_)])),
    t(close(user_output, foo)),
    o(listing(u_h1/0)),
    o(listing(u_h2)),
    o(listing(foo/bar)),
    o(listing(_)),
    t(consult(_)),
    t(consult([_])),
    t(consult(42)),
    t(consult([abc, 1])),
    true.
