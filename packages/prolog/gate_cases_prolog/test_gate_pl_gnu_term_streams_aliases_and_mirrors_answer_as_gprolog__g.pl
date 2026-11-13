:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
chars(S, Cs) :- get_char(S, C), ( C == end_of_file -> Cs = [] ; Cs = [C|T], chars(S, T) ).
main :- open_input_atom_stream('hello world', A), add_stream_alias(A, ta), t((chars(ta, Cs), atom_chars(X, Cs))), t(close(ta)), t(close_input_atom_stream(ta)),
  open_input_chars_stream([a, b, c], B), add_stream_alias(B, tb), t(read_term(tb, _, [])), t(close_input_codes_stream(tb)),
  open_input_codes_stream([0'f, 0'(, 0'1, 0'), 0'.], C), add_stream_alias(C, tc), t(read(tc, _)), t(close_input_chars_stream(tc)),
  open_output_atom_stream(O1), add_stream_alias(O1, o1), write(o1, foo(bar)), t(close_output_atom_stream(o1, 'foo(baz)')), t(close_output_atom_stream(o1, _)),
  open_output_chars_stream(O2), add_stream_alias(O2, o2), write(o2, ab), t(close_output_chars_stream(o2, _)),
  open_output_codes_stream(O3), add_stream_alias(O3, o3), writeq(o3, 'x y'), t(close_output_codes_stream(o3, _)),
  open_output_atom_stream(O4), add_stream_alias(O4, o4), t(close_input_atom_stream(o4)), t(close_output_atom_stream(o4, [])), t(close_output_chars_stream(o4, x)),
  t(close_output_atom_stream(o4, _)),
  t(open_input_atom_stream(_, _)), t(open_input_atom_stream(a, b)), t(open_input_chars_stream([a|_], _)), t(open_input_chars_stream([ab], _)),
  t(open_input_codes_stream([0], _)), t(open_input_codes_stream([300], _)), t(open_input_codes_stream(x, _)), t(open_output_chars_stream(z)),
  t(close_input_atom_stream(_)), t(close_input_atom_stream(nosuch)), t(close_input_atom_stream(3)), t(close_input_atom_stream(user_input)),
  open('f1.txt', write, W1), write(W1, 'xyz\n'), close(W1), open('m1.txt', write, _, [alias(mo)]), open('f1.txt', read, _, [alias(fr), mirror(mo)]),
  t(\+ \+ (current_alias(S1, fr), current_alias(M1, mo), current_mirror(S1, M1))), t((get_char(fr, Q1), get_code(fr, Q2))), t(remove_stream_mirror(fr, mo)),
  t(get_char(fr, _)), t(add_stream_mirror(fr, mo)), t(add_stream_mirror(fr, mo)), t(get_char(fr, _)), close(fr), close(mo),
  open('m1.txt', read, _, [alias(mr)]), t(chars(mr, _)), close(mr),
  open('f1.txt', read, R2), add_stream_alias(R2, r2a), t(add_stream_alias(r2a, r2a)), t(add_stream_alias(r2a, r2b)), t(add_stream_alias(r2b, r2a)), t(add_stream_alias(r2a, user_input)),
  t(findall(Al, (current_alias(S2, Al), current_alias(S2, r2a)), _)), t(get_char(r2b, _)), t(\+ \+ (current_alias(S3, r2b), current_stream(S3))), close(R2),
  t(current_alias(_, r2b)), t(get_char(r2b, _)),
  t(current_stream(x)), t(current_alias(x, _)), t(current_mirror(_, 1)), t(add_stream_alias(_, a)), t(add_stream_alias(user_input, 3)),
  t(open('f1.txt', read, _, [mirror(nosuch)])), t(open('f1.txt', read, _, [mirror(user_input)])).
