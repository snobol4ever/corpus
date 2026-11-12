r(Text) :- open('isog.txt', write, W), write(W, Text), close(W), open('isog.txt', read, S),
    catch((read(S, T), write(read(T))), error(E, _), (functor(E, F, _), write(F))), close(S), nl.
d :- X is 4 / 2, Y is 7 / 2, Z is 4 // 2, write(X/Y/Z), nl.
main :- d, r('f(a:-b). '), set_prolog_flag(iso, true), current_prolog_flag(iso, V), write(V), nl, d,
        r('f(a:-b). '), r('f(:-b). '), r('[a:-b]. '), r('f((a:-b)). '), r('a :- b. '), r('f(a,-). '), set_prolog_flag(iso, false), d.
:- initialization(main).
