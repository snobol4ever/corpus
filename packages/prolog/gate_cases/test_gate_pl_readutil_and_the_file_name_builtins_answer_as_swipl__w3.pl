:- use_module(library(lists)).
:- initialization(main).
p(X) :- writeq(X), write(' ').
main :- forall(member(P, ['a/b/c.pl', 'c.pl', '/c', '/', 'a/b/', '', 'a//b', '.hidden', 'a.b/c']), ( file_base_name(P, B), file_directory_name(P, D), p(P), p(B), p(D), nl )),
  forall(member(N, ['a/b.pl', 'b', 'a.b/c', 'x.tar.gz', '.hidden', 'a/b.']), ( file_name_extension(B2, E2, N), p(N), p(B2), p(E2), nl )),
  forall(member(B-E, [foo-pl, foo-'.pl', 'foo.pl'-pl, foo-'', 'a/b'-txt]), ( file_name_extension(B, E, N3), p(N3), nl )),
  ( file_name_extension(foo, pl, 'foo.pl') -> p(check_yes) ; p(check_no) ), ( file_name_extension(B4, pl, 'foo.pl') -> p(B4) ; p(b4_no) ), ( file_name_extension(_, txt, 'foo.pl') -> p(b5) ; p(b5_no) ), nl.
