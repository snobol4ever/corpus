:- use_module(library(lists)).
:- table tt/1.
tt(1).
tt(2).
:- initialization(main).
in(M, G) :- M:G.
main :- load_files(m1:'at.P', [dialect(xsb)]), in(m1, a1(V1)), write(V1), nl,
        load_files(m2:'mc.P', [dialect(xsb)]), in(m2, t(V2)), write(V2), nl,
        load_files(m3:'im.P', [dialect(xsb)]), findall(Y, in(m3, w3(Y)), L3), msort(L3, S3), write(S3), nl,
        load_files(m4:'dl.P', [dialect(xsb)]), findall(N, in(m4, n(N)), L4), msort(L4, S4), write(S4), nl,
        load_files(m6:'lt.P', [dialect(xsb)]), findall(R7, in(m6, lp(a, R7)), L7), write(L7), nl,
        load_files(m5:'ab.P', [dialect(xsb)]), in(m5, c1(C6)), write(C6), nl,
        tt(_), '$tbl_trienode'(R),
        findall(A, ( current_table(M5:V5, T), subsumes_term(user:tt(_), M5:V5), '$tbl_table_status'(T, _, user:A, Sk), trie_gen(T, Sk, R) ), L5), msort(L5, S5), write(S5), nl,
        halt.
