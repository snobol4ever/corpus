chk(N, A, B) :- P is A * B, Q is A * (B - 1), ( P - Q =:= A -> T1 = ok ; T1 = bad ), S is (A + B) * (A + B), R is A*A + 2*A*B + B*B, ( S =:= R -> T2 = ok ; T2 = bad ), write(N-T1-T2), nl.
main :- forall(member(E, [31, 64, 65, 300, 1023, 2500]), ( A is 3^E + 12345, B is 7^(E // 2 + 3) - 1, C is A * B, write(C), nl, D is -(A) * A, write(D), nl )),
        forall(member(K, [40, 200, 1500, 9000, 30000]), ( A is 3^(K*20) + 7, B is 5^(K*13) - 11, chk(K, A, B), C is 2^(K*32) - 1, chk(ones(K), C, C) )).
:- initialization(main).
