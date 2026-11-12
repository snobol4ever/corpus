:- initialization(main).
rd(S) :- catch(read(S, T), error(F, _), T = err(F)), writeq(T), nl, ( T == end_of_file -> true ; rd(S) ).
main :- open('syn.txt', write, W),
  write(W, 'bad( .\nok(1).\nfoo bar.\nok(2).\nf(a b).\nok(3).\n[1 a].\nok(4).\n[1|2 a].\nok(5).\n(a b).\nok(6).\n{a b}.\nok(7).\nf(a,).\nok(8).\n[a,].\nok(9).\nX = .\nok(10).\n'),
  write(W, '- = x.\nok(11).\n) .\nok(12).\n[a|].\nok(13).\nf(- ).\nok(14).\n  g(h(1, [2, 3 | t]), {x , y}) :- ( a ; b ) -> c , d .\nok(15).\nf(a\n  b).\nok(16).\n'),
  write(W, 'X = [1,2|3, 4].\nok(17).\na :- b :- c.\nok(18).\n- 1 + .\nok(19).\nf(a) g.\nok(20).\n'),
  close(W), open('syn.txt', read, S), rd(S), close(S),
  open('syn2.txt', write, W2), write(W2, 'f(a, \'unterminated\nok(21).\nlast(x'), close(W2), open('syn2.txt', read, S2), rd(S2), close(S2),
  ( syntax_error_info(F, L, C, M) -> writeq(info(F, L, C, M)) ; write(noinfo) ), nl,
  open('syn.txt', read, S3), ( read_term(S3, T3, [syntax_error(fail)]) -> writeq(T3) ; write(failed) ), nl, read_term(S3, T4, []), writeq(T4), nl, close(S3).
