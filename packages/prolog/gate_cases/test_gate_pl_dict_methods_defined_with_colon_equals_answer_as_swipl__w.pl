:- module(tm, [go/0]).
_.test_na() := 1.
D.test_aa() := D.a.
D.test_a2() := X :- X is D.a^2.
D.plus(N) := X :- X is D.a + N.
other:_.test_na() := 7.
go :- writeq(na-tm{}.test_na()), nl, writeq(aa-tm{a:2}.test_aa()), nl, writeq(a2-tm{a:3}.test_a2()), nl,
    writeq(plus-tm{a:2}.plus(5)), nl, writeq(other_module-other{}.test_na()), nl,
    D = tm{a:4}, X = D.test_aa(), writeq(bound_dict-X), nl,
    writeq(key_not_method-tm{test_na:k}.test_na), nl.
:- initialization(go).
