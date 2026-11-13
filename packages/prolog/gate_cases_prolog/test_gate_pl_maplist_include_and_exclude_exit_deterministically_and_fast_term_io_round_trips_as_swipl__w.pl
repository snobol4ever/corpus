d(G) :- setup_call_cleanup(true, G, F = c), ( F == c -> R = det ; R = nondet ), functor(G, N, A), writeq(N/A-R), nl.
term(0). term(-1). term(X) :- X is 1<<62. term(X) :- X is pi. term(''). term(aap).
term(A) :- numlist(1, 1100, L), atom_codes(A, L). term(S) :- numlist(1, 1100, L), atom_codes(A, L), atom_string(A, S).
term([]). term(f(1, f(2))). term(f(X, Y, X, Y)). term(X) :- X = f(X). term(L) :- numlist(-1000, 1000, L).
rc(In, T, R0, R) :- fast_read(In, T2), ( T =@= T2 -> R = R0 ; R = bad ).
main :- d(maplist(atom, [a, b])), d(maplist(=, [a], _)), d(maplist([X, Y, Z]>>(Z = X-Y), [1], [2], _)), d(maplist([A, B, C, E]>>(E = A-B-C), [1], [2], [3], _)),
        d(include(atom, [a, 1], _)), d(exclude(atom, [a, 1], _)),
        findall(T, term(T), Ts),
        ( forall(member(T, Ts), ( fast_term_serialized(T, S), fast_term_serialized(T1, S), T =@= T1 )) -> writeq(serialize-ok) ; writeq(serialize-bad) ), nl,
        setup_call_cleanup(tmp_file_stream(binary, F, Out), maplist(fast_write(Out), Ts), close(Out)),
        setup_call_cleanup(open(F, read, In, [type(binary)]), foldl(rc(In), Ts, ok, R), close(In)), delete_file(F), writeq(sequence-R), nl,
        open_null_stream(Nul), set_stream(Nul, encoding(octet)), catch(fast_write(Nul, a(V, V, Nul)), error(Er, _), true), close(Nul), ( Er = permission_error(P, K, _) -> writeq(P-K) ; writeq(no_error) ), nl,
        halt.
:- initialization(main).
