:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
all(S, Cs) :- get_char(S, C), ( C == end_of_file -> Cs = [] ; Cs = [C|R], all(S, R) ).
pr(Cmd, T) :- popen(Cmd, read, S), all(S, Cs), close(S), atom_chars(T, Cs).
pw(T) :- popen('cat > pw.txt', write, S), write(S, T), close(S), open('pw.txt', read, I), all(I, Cs), close(I), atom_chars(Back, Cs), write(Back), nl.
ex(Cmd, In, Out, Err, St) :- exec(Cmd, I, O, E, P), write(I, In), close(I), all(O, Oc), close(O), all(E, Ec), close(E), wait(P, St), atom_chars(Out, Oc), atom_chars(Err, Ec).
cp(T, B) :- create_pipe(R, W), write(W, T), close(W), all(R, Cs), close(R), atom_chars(B, Cs).
main :- t(pr('echo one; echo two', _)), pw(written_through_popen), t(ex('tr a-z A-Z; echo oops >&2; exit 3', hello, _, _, _)), t(ex('exit 0', '', _, _, _)), t(cp(piped, _)),
  t(popen(_, read, _)), t(popen(true, sideways, _)), t(popen(true, 3, _)), t(popen(3, read, _)), t(exec(_, _, _, _, _)), t(wait(_, _)), t(wait(x, _)).
