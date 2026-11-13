:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
o(G) :- write('<'), catch(( G -> R = true ; R = fail ), E, ( E = error(F, _) -> R = error(F) ; R = ball(E) )), write('> '), writeq(R), nl.
main :-
  t(bagof(A1, member(A1,[c,a,b,a]), _)), t(bagof(A2, member(A2-_,[1-a,2-b,3-a]), _)), t(bagof(A3, B3^member(A3-B3,[1-a,2-b,3-a]), _)),
  t(setof(A4, member(A4,[c,a,b,a]), _)), t(setof(A5, member(A5-_,[2-a,1-b,3-a,2-a]), _)), t(setof(A6, member(A6,[f(b),1,a,2.0,_]), _)),
  t(bagof(_, true, foo)), t(bagof(_, _, _)), t(findall(A7, member(A7,[1,2]), _, _)),
  t(for(x,1,2)), t(for(_,1,_)), t(for(_,a,2)), t(for(X8,1,3)),
  t(name(_,_)), t(name(f(x),_)), t(name(_,"12")),
  o(put(_)), o(put(a)), o(tab(1+1)), o(tab(foo)), o(tab(_)), o(tab(2.5)),
  o(get(a)), o(get(-2)), o(skip(foo)),
  o(tell(user)), t(telling(_)), o(see(user)), t(seeing(_)), t(tell(_)), t(see(_)),
  catch((open(user, read, S9), close(S9), write(user_file_created)), _, write(no_user_file)), nl, X8 = X8, halt.
