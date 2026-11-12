t(E) :- X is E, write(X), ( integer(X) -> write(' int') ; write(' float') ), nl.
main :- t(4/2), t(7/2), t(-6/3), t(0/5), t(6/(-3)), t(4.0/2), t(9//2), t(9 mod 4), t(-9 rem 4), t(truncate(7/2)).
