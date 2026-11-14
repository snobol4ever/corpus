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
