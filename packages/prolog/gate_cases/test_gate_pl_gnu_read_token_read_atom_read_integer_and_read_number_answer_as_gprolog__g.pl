:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
toks(S, Ts) :- catch(read_token(S, T), error(F, _), T = err(F)), ( T == punct(end_of_file) -> Ts = [T] ; Ts = [T|R], toks(S, R) ).
main :- open('tok.txt', write, W), write(W, 'f(X_1, _, "s\\x41\\t", `bq`, [a|B], {c}) :- 0''a + 0''\\n - 0b101 * 0o17 / 0xff, 12.5e3 =.. 1.e5; 12.e, ''it''''s'' ! a.b +-* /* c */ % c\n.x ''bad\\q'' 0x 7 ''open\n'),
  close(W), open('tok.txt', read, S), toks(S, Ts), close(S), forall(member(T, Ts), (writeq(T), nl)),
  open('num.txt', write, W2), write(W2, 'hello ''quoted atom'' 42 -17 3.5 0''a abc 7 "dq" - x'), close(W2), open('num.txt', read, R, [alias(rn)]),
  t(read_atom(rn, _)), t(read_atom(rn, _)), t(read_integer(rn, _)), t(read_integer(rn, _)), t(read_number(rn, _)), t(read_number(rn, _)), t(read_integer(rn, _)),
  t(read_atom(rn, 7)), t(read_atom(rn, _)), t(read_integer(rn, _)), t(read_atom(rn, _)), t(read_number(rn, _)), t(read_number(rn, _)), t(syntax_error_info(_, _, _, _)), close(R),
  t(read_atom(nosuch, _)), t(read_number(_, _)), t(read_integer(user_output, _)), t(read_number(user_input, a)), t(read_integer(user_input, 1.5)), t(read_token(_)).
