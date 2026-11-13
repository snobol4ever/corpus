:- use_module(library(pio)).
:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), E, R = E), writeq(N-R), nl.
main :- t(tmp, (tmp_file(plunit_pio, T), atom(T))), tmp_file(x, F), open(F, write, O), format(O, '~s', ["aba"]), close(O),
  t(open_read, (open(F, read, S), close(S))), t(lazy, (open(F, read, S2), stream_to_lazy_list(S2, L), L = [A|_], writeq(A), nl, close(S2))), t(pff, phrase_from_file("aba", F)), t(pff_fail, phrase_from_file("abc", F)).
