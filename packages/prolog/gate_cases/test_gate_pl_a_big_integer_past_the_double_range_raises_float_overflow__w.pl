t(G) :- catch((X is G, write(X)), error(E, _), write(E)), nl.
main :- B is 7^823543, t(float(B)), t(exp(B)), t(log(B)), t(sqrt(B)), t(float(2^1023)), t(float(2^1024)), t(float(-(2^2000))), t(sign(B)), t(abs(-(2^70))), t(float(2^80)).
:- initialization(main).
