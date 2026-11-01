% csr_comment_data.pl -- DATA for csr_comment_positions.pl (not a witness): comments inside terms.
a(X) :- b(X).
c(Y) :- /* in */ d(Y), e(/* two */ Y).
f(1,
  % a line comment
  2).
