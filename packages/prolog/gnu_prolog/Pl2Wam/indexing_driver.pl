% indexing_driver.pl -- grades GNU Prolog's Pl2Wam/indexing.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is indexing.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% indexing.pl is the pl2wam pass that wraps a predicate's compiled clauses, a list [cl(Ad, FirstArg, WamCl), ...] with FirstArg
% one of var, atm(A), int(N), lst, stc(F, N), in try_me_else / switch_on_term / switch_on_atom ... indexing code. The driver
% calls the pass on small clause lists covering each case of look_for_var/5 (11, 12, 13, 14 and 2). Clause labels Ad are given
% as integers wherever group_by_keys/2's sort/1 compares them, so no answer depends on the standing order of variables.
% group_by_keys/2 sorts in place with GNU's keysort/1 and sort/1 (manual 8.20.15): the answer shows its first argument sorted.
% NOT DRIVEN: indexing/2 -- it reads the current predicate through cur_pred/2 (pl2wam.pl, whose :- initialization(go) aborts
%   with "no input file" when included) and test_pred_flag/3 (read_file.pl); its body indexing1/4 + allocate_labels/3 is driven
%   here, and indexing/2 itself is graded by all_driver.pl through the whole compiler.
:- include('indexing.pl').
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
    t(look_for_var([], _, _, _, _)),
    t(look_for_var([cl(1, var, [proceed])], _, _, _, _)),
    t(look_for_var([cl(1, var, [proceed]), cl(2, atm(a), [proceed])], _, _, _, _)),
    t(look_for_var([cl(1, atm(a), [proceed]), cl(2, var, [proceed])], _, _, _, _)),
    t(look_for_var([cl(1, atm(a), [proceed]), cl(2, var, [proceed]), cl(3, int(5), [proceed])], _, _, _, _)),
    t(look_for_var([cl(1, lst, [proceed]), cl(2, stc(f, 1), [proceed])], _, _, _, _)),
    t(look_for_var([cl(1, atm(a), [proceed])], 14, _, _, _)),
    t(split([cl(1, atm(b), x), cl(2, int(3), y), cl(3, lst, z), cl(4, stc(f, 2), w), cl(5, atm(b), v)], _, _, _, _)),
    t(split([], _, _, _, _)),
    t(split([cl(1, var, x)], _, _, _, _)),
    t(split1([cl(1, atm(b), x), cl(2, atm(a), y)], _, _, _, _)),
    t(split2(int(9), 4, [], [], [], [], _, _, _, _)),
    t(split2(var, 4, [], [], [], [], _, _, _, _)),
    t(group_by_keys([b-1, a-2, b-3], _)),
    t(group_by_keys([c-3, a-1, b-2], _)),
    t(group_by_keys([], _)),
    t(group_by_keys(_, _)),
    t(group_by_keys([a], _)),
    t(group_by_keys1([a-1, a-2, b-3], _)),
    t(group_by_keys1([], [])),
    t(group_by_keys2([a-1, a-2, b-3], a, _, _)),
    t(group_by_keys2([b-3], a, _, _)),
    t(gen_switch([], switch_on_atom, _, next, _)),
    t(gen_switch([[5]=a], switch_on_atom, _, next, _)),
    t(gen_switch([[1]=a, [2, 3]=b], switch_on_atom, _, next, _)),
    t(gen_switch([[1]=f/1, [2]=g/2], switch_on_structure, _, next, _)),
    t(create_switch_list([[1]=a, [2]=b], _, next, _)),
    t(create_switch_list([], _, next, _)),
    t(gen_list([], _, next, _)),
    t(gen_list([7], _, next, _)),
    t(gen_list([1, 2, 3], _, next, _)),
    t(gen_list1([4, 5], next, _)),
    t(gen_list1([], next, _)),
    t(gen_insts([cl(1, atm(a), [proceed])], _, _)),
    t(gen_insts([cl(1, atm(a), [proceed]), cl(2, atm(b), [fail]), cl(3, lst, [proceed])], _, _)),
    t(gen_insts1([cl(4, var, [proceed])], _, _)),
    t(gen_insts([], _, _)),
    t(allocate_labels([label(_), get_nil(0), [label(_), proceed], label(_)], 1, _)),
    t(allocate_labels([], 5, _)),
    t(allocate_labels([proceed, [[label(_)]]], 3, _)),
    t(mk_indexing(14, [], cl(1, var, [proceed]), [], f, _)),
    t(mk_indexing(14, [], cl(1, var, [proceed]), [], t, _)),
    t(mk_indexing(2, [cl(1, atm(a), [get_atom(a, 0), proceed])], _, [], f, _)),
    t(indexing1([cl(1, atm(a), [get_atom(a, 0), proceed])], f, _, _)),
    t(indexing1([cl(1, atm(red), [get_atom(red, 0), proceed]), cl(2, atm(green), [get_atom(green, 0), proceed]),
                 cl(3, atm(blue), [get_atom(blue, 0), proceed])], f, _, _)),
    t(indexing1([cl(1, atm([]), [get_nil(0), proceed]), cl(2, lst, [get_list(0), execute(app/3)])], f, _, _)),
    t(indexing1([cl(1, var, [proceed])], f, _, _)),
    t(indexing1([cl(1, var, [proceed]), cl(2, atm(a), [get_atom(a, 0), proceed])], f, _, _)),
    t(indexing1([cl(1, atm(a), [get_atom(a, 0), proceed]), cl(2, var, [proceed])], f, _, _)),
    t(indexing1([cl(1, atm(a), [get_atom(a, 0)]), cl(2, var, [proceed]), cl(3, int(5), [get_integer(5, 0)]),
                 cl(4, int(6), [get_integer(6, 0)])], f, _, _)),
    t(indexing1([cl(1, stc(f, 1), [w1]), cl(2, int(1), [w2]), cl(3, stc(f, 1), [w3]), cl(4, int(2), [w4]),
                 cl(5, stc(g, 2), [w5]), cl(6, lst, [w6]), cl(7, lst, [w7])], f, _, _)),
    t(indexing1(foo, f, _, _)),
    t((indexing1([cl(_, atm(a), [get_atom(a, 0), proceed]), cl(_, lst, [get_list(0), proceed])], f, _, [_|W]),
       allocate_labels(W, 1, _))),
    t((indexing1([cl(_, var, [proceed]), cl(_, int(0), [get_integer(0, 0), proceed]), cl(_, var, [fail])], f, _, [_|W]),
       allocate_labels(W, 1, _))),
    true.
