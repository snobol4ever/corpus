t(A) :- catch((read_token_from_atom(A, T) -> R = T ; R = no), error(E, _), R = err(E)), writeq(A-R), nl.
:- initialization(main).
main :- forall(member(A, ['foo(bar)', 'X', '_', '_Var', '123 abc', '3.25', '1.0e10', '0x1F', '0''a', '"str"', '`bq`', '''q a''', '', '   ', '( x', ')', '[', ']', '{', '}', ',', '|', '.', 'a.b', '+ 1', '=..', '- 5', '-5', '% c\nx', '/* c */ y', 'foo bar', '"a\\nb"', '1.', '1.e', 'Abc_1']), t(A)),
  catch(read_token_from_atom(_, _), error(E, _), (writeq(E), nl)),
  catch(read_token_from_atom(f(x), _), error(E2, _), (writeq(E2), nl)),
  read_token_from_codes("3.25", C1), writeq(C1), nl, read_token_from_chars([',', a], C2), writeq(C2), nl.
