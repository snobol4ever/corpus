:- dynamic(foo/1).
:- dynamic(bar/1). :- dynamic(baz/2).
:- dynamic((qux/1, quux/1)).
:- multifile(m1/1).
foo(1).
bar(2).
baz(3, 4).
qux(5).
quux(6).
:- initialization(main).
main :-
    forall(member(T, [dynamic/1, discontiguous/1, multifile/1, module_transparent/1, meta_predicate/1, use_module/1,
                      ensure_loaded/1, table/1, thread_local/1, public/1, record/1, mode/1]),
           (T = N/A, write(N), write(' '), write(A), nl)),
    X = f(use_module/1), X = f(N1/A1), write(N1-A1), nl,
    Y = g(a, ensure_loaded/1), arg(2, Y, Z), functor(Z, F, Ar), write(F/Ar), nl,
    E = (dynamic = 1), E = (L = R), write(L), write(' '), write(R), nl,
    P = [table, record, mode], length(P, Len), write(Len), nl,
    foo(A2), bar(B2), baz(C2, D2), qux(E2), quux(F2), write([A2, B2, C2, D2, E2, F2]), nl,
    ( catch(m1(_), Err2, (write(caught(Err2)), nl)) -> true ; write(m1_fails), nl ).
