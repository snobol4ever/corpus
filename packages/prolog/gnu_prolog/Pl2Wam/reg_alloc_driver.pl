% reg_alloc_driver.pl -- grades GNU Prolog's Pl2Wam/reg_alloc.pl (pass 4 of the Prolog-to-WAM compiler, register allocation:
% each temporary x(T) of a clause's WAM code is given a register number) by allocating the registers of small WAM clauses and
% printing the code it rewrote, the greatest register used, and its set primitives (Lon via the ceo, CEO-1312 and CEO-1523:
% every Prolog source file of the GNU package is graded through a driver; CEO-700: a library is graded by its driver, NAME_driver
% beside it). reg_alloc.pl calls codification/2 and alias_stop_instruction/1 from its own package's inst_codif.pl, so both are
% included, and it reads the compiler's reg_opt flag through g_read/2, which the driver sets with g_assign/2 first. Each call
% prints every solution or the formal error term it raises; gprolog's answer is the ref (m3 = m4 = gprolog).
:- include('reg_alloc.pl').
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

main :-
    t(set_add([], c, _)),
    t(set_add([a, b], c, _)),
    t(set_add([a, b], b, _)),
    t(set_delete([a, b, c], b, _)),
    t(set_delete([a], z, _)),
    t(set_elt([a, b], b)),
    t(set_elt([a, b], z)),
    t(set_inter([a, b, c], [b, c, d], _)),
    t(set_union([a, b], [b, c], _)),
    t(set_diff([a, b, c], [b], _)),
    t(g_assign(reg_opt, 1)),
    t(g_read(reg_opt, _)),
    t(allocate_registers([], _)),
    t(allocate_registers([get_variable(x(_), 0), get_variable(x(_), 1), proceed], _)),
    t((I = [get_variable(x(A), 0), get_variable(x(B), 1), put_value(x(B), 0), put_value(x(A), 1), execute(q/2)],
       allocate_registers(I, _))),
    t((I = [get_variable(x(A), 0), put_value(x(A), 1), put_atom(a, 0), execute(r/2)], allocate_registers(I, _))),
    t((I = [get_list(0), unify_variable(x(A)), unify_variable(x(B)), put_value(x(B), 0), put_value(x(A), 1), execute(s/2)],
       allocate_registers(I, _))),
    t((I = [get_variable(y(0), 0), put_variable(x(A), 0), call(t/1), put_value(y(0), 0), execute(u/1)],
       allocate_registers(I, _))),
    t((I = [get_structure(f/2, 0), unify_variable(x(A)), unify_variable(x(B)), get_value(x(A), 1), put_value(x(B), 0),
            execute(v/1)], allocate_registers(I, _))),
    t((I = [get_variable(x(A), 2), get_variable(x(B), 0), put_value(x(B), 2), put_value(x(A), 0), execute(w/3)],
       allocate_registers(I))),
    t((I = [get_variable(x(A), 0), get_variable(x(B), 1), put_value(x(B), 0), put_value(x(A), 1), execute(q/2)],
       aliases(I, [], _))),
    t(g_assign(reg_opt, 0)),
    t((I = [get_variable(x(A), 0), get_variable(x(B), 1), put_value(x(B), 0), put_value(x(A), 1), execute(q/2)],
       allocate_registers(I, _))),
    t((I = [get_list(0), unify_variable(x(A)), unify_variable(x(B)), put_value(x(B), 0), put_value(x(A), 1), execute(s/2)],
       allocate_registers(I, _))),
    true.
