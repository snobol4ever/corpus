:- use_module(library(dcg/basics)).
:- initialization(main).
t(N, G) :- ( catch(G, E, (writeq(N-E), nl)) -> true ; writeq(N-failed), nl ).
r(S, R) --> string_without(`,`, S), [0',], remainder(R).
main :- t(rule, (phrase(r(S, R), `ab,cd`), writeq(S-R), nl)),
    t(phrase3, (phrase(string_without(`,`, S2), `ab`, R2), writeq(S2-R2), nl)),
    t(conj_string, (phrase((string_without(`,`, S3), ",", remainder(R3)), `ab,cd`), writeq(S3-R3), nl)),
    t(string_body, (phrase("lit", `lit`), writeq(lit), nl)),
    t(list_body, (phrase([0'a], `a`), writeq(ok), nl)),
    t(xint, (phrase(xinteger(X), `ff`), writeq(X), nl)), halt.
