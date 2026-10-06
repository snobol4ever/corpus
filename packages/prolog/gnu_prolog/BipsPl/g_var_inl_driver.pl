% g_var_inl_driver.pl -- grades GNU Prolog's BipsPl/g_var_inl.pl through the predicates it defines (Lon via the ceo, CEO-1523:
% every Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is g_var_inl.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents (8.21); an error prints as its ISO formal term only.
% Global variables are state: the calls run in order on names of this driver's own (gdrv_*), and a read after a call shows
% what the call left behind once t/1's findall backtracked (g_assign/2 is kept, g_assignb/2 and g_link/2 are undone).
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
    t(g_read(gdrv_fresh, _)),
    t(g_assign(gdrv_a, f(x, [1, 2]))),
    t(g_read(gdrv_a, _)),
    t(g_read(gdrv_a, g(_))),
    t(g_read(_, _)),
    t(g_read(3, _)),
    t(g_assign(gdrv_a-2-1, z)),
    t(g_read(gdrv_a, _)),
    t(g_read(gdrv_a-1, _)),
    t(g_read(gdrv_a-3, _)),
    t(g_assign(_, 1)),
    t(g_assignb(gdrv_b, 7)),
    t(g_read(gdrv_b, _)),
    t((g_assignb(gdrv_b, 7), g_read(gdrv_b, _))),
    t(g_assignb(gdrv_a-1, y)),
    t(g_assignb(f(1, 2.5), y)),
    t((g_assign(gdrv_c, f(X)), X = 12, g_read(gdrv_c, _))),
    t((g_link(gdrv_d, f(X)), X = 12, g_read(gdrv_d, _))),
    t(g_read(gdrv_d, _)),
    t(g_link(_, a)),
    t(g_assign(gdrv_w, g_array(3))),
    t(g_read(gdrv_w, _)),
    t((g_assign(gdrv_w(0), 16), g_assign(gdrv_w(2), 64), g_read(gdrv_w, _))),
    t(g_read(gdrv_w(1), _)),
    t(g_read(gdrv_w(3), _)),
    t(g_array_size(gdrv_w, _)),
    t(g_array_size(gdrv_a, _)),
    t(g_array_size(gdrv_w, foo)),
    t(g_assign(gdrv_w, g_array_extend(5))),
    t(g_read(gdrv_w, _)),
    t(g_assign(gdrv_k, g_array(2, g_array([a, b])))),
    t(g_read(gdrv_k, _)),
    t(g_array_size(gdrv_k(1), _)),
    t(g_read(gdrv_k(1, 0), _)),
    t((g_assign(gdrv_au, g_array_auto(2)), g_assign(gdrv_au(4), x), g_read(gdrv_au(4), _))),
    t(g_assign(gdrv_n, 10)),
    t(g_inc(gdrv_n)),
    t(g_read(gdrv_n, _)),
    t(g_inc(gdrv_n, _)),
    t(g_inco(gdrv_n, _)),
    t(g_inc(gdrv_n, _, _)),
    t(g_dec(gdrv_n)),
    t(g_dec(gdrv_n, _)),
    t(g_deco(gdrv_n, _)),
    t(g_dec(gdrv_n, _, _)),
    t(g_inc(gdrv_n, 99)),
    t(g_read(gdrv_n, _)),
    t(g_inc(gdrv_a)),
    t(g_dec(gdrv_w)),
    t(g_inc(gdrv_n, foo)),
    t(g_deco(gdrv_n, bar)),
    t(g_dec(_)),
    t(g_assign(gdrv_bits, 0)),
    t(g_set_bit(gdrv_bits, 3)),
    t(g_read(gdrv_bits, _)),
    t(g_test_set_bit(gdrv_bits, 3)),
    t(g_test_set_bit(gdrv_bits, 2)),
    t(g_test_reset_bit(gdrv_bits, 2)),
    t(g_test_reset_bit(gdrv_bits, 3)),
    t(g_reset_bit(gdrv_bits, 3)),
    t(g_read(gdrv_bits, _)),
    t(g_set_bit(gdrv_bits, _)),
    t(g_reset_bit(gdrv_bits, a)),
    t(g_test_set_bit(gdrv_bits, -1)),
    t(g_test_reset_bit(gdrv_a, 1)),
    true.
