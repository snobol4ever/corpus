:- use_module(library(plunit)).
:- begin_tests(dot_in_body).
test(get) :- X = _{k:1}.k, writeq(get-X), nl.
test(put) :- D = _{a:1}.put(b, 2), get_dict(b, D, V), writeq(put-V), nl.
test(raise, error(_)) :- X = [a(x):1, b:2].a, writeq(never(X)), nl.
test(after) :- writeq(after-ran), nl.
test(nested) :- D = _{p:_{q:7}}, X = D.p.q, writeq(nested-X), nl.
:- end_tests(dot_in_body).
