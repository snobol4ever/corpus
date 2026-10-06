% inst_codif_driver.pl -- grades GNU Prolog's Pl2Wam/inst_codif.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is inst_codif.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% inst_codif.pl is the pl2wam pass that codes each WAM instruction's effect on the registers for reg_alloc.pl: c(R1, R2) copy,
% r(R) read, w(R) write; a temporary is an unbound variable, an argument register an integer. alias_stop_instruction/1 names
% the instructions that stop alias propagation. The driver feeds it one instruction of each class codif/2 lists.
:- include('inst_codif.pl').
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
    t(alias_stop_instruction(call(app/3))),
    t(alias_stop_instruction(execute(lists:append/3))),
    t(alias_stop_instruction(call_c('Pl_Fct_Inc', [jump], []))),
    t(alias_stop_instruction(call_c('Pl_Fct_Inc', [use_x_args], [x(0)]))),
    t(alias_stop_instruction(call_c('Pl_Fct_Inc', [fast_call, x(0)], [x(0)]))),
    t(alias_stop_instruction(get_atom(a, 0))),
    t(alias_stop_instruction(_)),
    t(codification(get_variable(x(_), 0), _)),
    t(codification(get_value(x(3), 1), _)),
    t(codification(get_variable(y(0), 2), _)),
    t(codification(get_value(y(1), 0), _)),
    t(codification(get_atom(red, 0), _)),
    t(codification(get_integer(42, 1), _)),
    t(codification(get_float(1.5, 2), _)),
    t(codification(get_nil(0), _)),
    t(codification(get_list(1), _)),
    t(codification(get_structure(f/2, 0), _)),
    t(codification(put_variable(x(_), 1), _)),
    t(codification(put_void(2), _)),
    t(codification(put_value(x(4), 0), _)),
    t(codification(put_variable(y(1), 0), _)),
    t(codification(put_value(y(0), 1), _)),
    t(codification(put_unsafe_value(y(2), 0), _)),
    t(codification(put_atom(a, 1), _)),
    t(codification(put_integer(7, 0), _)),
    t(codification(put_float(2.5, 1), _)),
    t(codification(put_nil(2), _)),
    t(codification(put_list(0), _)),
    t(codification(put_structure(g/1, 3), _)),
    t(codification(put_meta_term(user, 2, 0), _)),
    t(codification(math_load_value(x(1), 2), _)),
    t(codification(math_load_value(y(0), 2), _)),
    t(codification(math_fast_load_value(x(3), 0), _)),
    t(codification(math_fast_load_value(y(1), 0), _)),
    t(codification(unify_variable(x(5)), _)),
    t(codification(unify_value(x(5)), _)),
    t(codification(unify_local_value(x(6)), _)),
    t(codification(call(app/3), _)),
    t(codification(call(lists:append/3), _)),
    t(codification(execute(halt/0), _)),
    t(codification(execute(len/2), _)),
    t(codification(get_current_choice(x(7)), _)),
    t(codification(cut(x(7)), _)),
    t(codification(soft_cut(x(7)), _)),
    t(codification(call_c('Pl_Fct_Inc', [fast_call, x(0)], [x(0)]), _)),
    t(codification(call_c('Pl_Set_Bip_Name_Untagged_2', [by_value], [is, 2]), _)),
    t(codification(call_c('Pl_Fct_Add', [fast_call, x(2)], [x(0), x(1)]), _)),
    t(codification(foreign_call_c(my_fct, integer, [0, 1], 0), _)),
    t(codification(allocate(2), _)),
    t(codification(proceed, _)),
    t(codification(get_nil(0), [r(0)])),
    t(codification(get_nil(0), [w(0)])),
    t(codification(get_nil(0), [])),
    t(codif(get_list(3), _)),
    t(codif(deallocate, _)),
    t(lst_r_for_call_execute(0, 3, [r(0), r(1), r(2)])),
    t(lst_r_for_call_execute(2, 2, [])),
    t(lst_r_for_call_execute(1, 3, [r(1), r(2)])),
    t(lst_r_for_call_execute(0, 2, [r(0)])),
    t(lst_r_for_call_execute(a, 3, _)),
    t(lst_rw_for_foreign_c_call([1, 2], [end], _)),
    t(lst_rw_for_foreign_c_call([], [], _)),
    t(lst_rw_for_c_call([x(1), a, x(2)], [], _)),
    t(lst_rw_for_c_call([7, 'f'/2], [w(9)], _)),
    t(lst_rw_for_c_call([], [w(0)], [])),
    true.
