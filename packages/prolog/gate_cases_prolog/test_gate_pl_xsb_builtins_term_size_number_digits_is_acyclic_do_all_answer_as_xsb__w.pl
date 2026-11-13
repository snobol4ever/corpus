:- import term_to_atom/2, term_to_atom/3, term_to_codes/2, term_to_codes/3 from string.
:- import append/3 from basics as myappend/3.
:- op(1150, fx, do_all).
p(1,a). p(2,b). p(1,c).
sz(I, T) :- term_size(T, S), write(sz(I, S)), nl.
nd(N) :- number_digits(N, L), write(digits(L)), nl, number_digits(M, L), write(back(M)), nl.
ne(L) :- ( catch(number_digits(_, L), error(E, _), (write(caught(E)), nl, fail)) -> write(ok), nl ; write(no), nl ).
pr(X, Y) :- write(X), write(' '), write(Y), nl.
main1 :- sz(1,a), sz(2,1), sz(3,1.5), sz(4,_), sz(5,f(a)), sz(6,f(_)), sz(7,f(1.5)), sz(8,[]), sz(9,[a]), sz(10,[a,b]), sz(11,[1.5]), sz(12,f(a,b)), sz(13,f(f(a))), sz(14,[a,1,_,f(a),1.1]),
    nd(-23), nd(0.0), nd(23), nd(1.5), ne([1,a]), ne([1,'.']), ne([]), ne([10]), ne(foo), ne([5,'.',0,0,'F']),
    ( is_acyclic(f(a,[b])) -> write(acyclic), nl ; write(cyclic), nl ),
    do_all(p(X,_), (write(X), nl)), do_all(p(9,Y), if_none(write(Y), (write(none), nl))), do_all(p(X1,_), if_none(write(X1), write(none))), nl,
    ( do_all (p(X2,Y2), pr(X2,Y2)) ), write(done), nl.
tt(I, T) :- term_to_atom(T, A), write(tt(I)), write(' '), write(A), nl.
to(I, T, O) :- term_to_atom(T, A, O), write(to(I)), write(' '), write(A), nl.
tc(I, T) :- term_to_codes(T, C), write(tc(I)), write(' '), write(C), nl.
er(I, G) :- ( catch(G, error(E, _), (write(er(I)), write(' '), write(E), nl)) -> true ; write(er(I)), write(' failed'), nl ).
main2 :- tt(1, f(X,Y,X,'a b',[1,2.5],'$VAR'(3),-(1),1+2)), tt(2, [a|b]), tt(3, []), tt(4, 'A b'), tt(6, a:b), tt(7, {a}), tt(8, f(_,_,_)), tt(9, [a,[b,c],d]), tt(10, 1.0e10), tt(11, -3), tt(13, "str"), tt(14, 'don''t'), tt(15, (a:-b,c)), tt(16, f(g(h(_)))), tt(17, '$VAR'(_)),
    to(1, 'A b', [quoted(true)]), to(2, f('A b',[x,'Y'],'it''s','[]',[]), [quoted(true), ignore_ops(true)]), to(3, '$VAR'(27), [numbervars(true)]), to(4, f('$VAR'(1),'$VAR'(30)), [numbervars(true)]), to(5, f('$VAR'(1)), []), to(6, f('$VAR'(1)), [quoted(true)]), to(7, [a,b], [ignore_ops(true)]), to(8, [a,b], [ignore_ops(canonical)]), to(9, 'hello', [quoted(true)]), to(10, 'Hello', [quoted(false)]),
    tc(1, f(a,_)), tc(2, [a|b]), tc(3, abc),
    er(1, term_to_atom(f, _, [bad(1)])), er(2, term_to_atom(f, _, [quoted(maybe)])), er(3, term_to_atom(f, _, _)), er(4, term_to_atom(f, _, foo)),
    write(done), nl.
ia :- myappend([a],[b,c],L), write(ia(L)), nl, ( catch(myappend(x,y,_), _, fail) -> write(ia_bad) ; write(ia_ok) ), nl.
main :- main1, main2, ia.
