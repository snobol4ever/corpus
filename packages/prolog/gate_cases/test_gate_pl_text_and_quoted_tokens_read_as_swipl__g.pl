:- set_prolog_flag(double_quotes, codes).
w1("é€a😀").
:- set_prolog_flag(double_quotes, chars).
w2("é€a").
:- set_prolog_flag(double_quotes, codes).
q --> "é", "b".
:- set_prolog_flag(double_quotes, string).
s1("A").
s2("é").
s3("z").
:- initialization(main).
main :-
  w1(A), write(A), nl, w2(B), write(B), nl, phrase(q, C), write(C), nl, X = `é€`, write(X), nl,
  s1(S1), V1 is S1 + 0, write(V1), nl, ( 66 >= S1 -> write(yes) ; write(no) ), nl,
  s2(S2), V2 is S2 * 2, write(V2), nl, s3(S3), ( S3 =:= 0'z -> write(eq) ; write(ne) ), nl,
  catch((W is a + 0, write(W)), error(E, _), write(E)), nl,
  atom_length('a	b', N1), write(N1), nl,
  atom_codes(A2, "p	q"), atom_length(A2, N2), write(N2), nl,
  atom_codes(A3, `r	s`), atom_length(A3, N3), write(N3), nl,
  halt.
