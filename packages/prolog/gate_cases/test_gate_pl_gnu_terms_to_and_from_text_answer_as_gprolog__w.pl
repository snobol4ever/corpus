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
