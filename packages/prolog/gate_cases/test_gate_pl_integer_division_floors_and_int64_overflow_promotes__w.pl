:- initialization(main).
ov(G) :- catch((V is G, write(V)), error(evaluation_error(int_overflow), _), write(int_overflow)), nl.
main :- A is -10 // 3, B is -10 mod 3, C is -10 rem 3, D is -10 div 3, write([A,B,C,D]), nl,
    ov(-9223372036854775808 // -1), ov(-9223372036854775808 mod -1), ov(abs(-9223372036854775808)), ov(-(-9223372036854775808)), halt.
