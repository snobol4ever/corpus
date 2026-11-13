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
