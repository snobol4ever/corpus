:- begin_tests(al).
p(1). p(2).
q(1,a). q(2,b).
test(unify, all(X = [1,2])) :- p(X).
test(pair, all(A-B = [1-a,2-b])) :- q(A,B).
test(ident, all(X == [1,2])) :- p(X).
test(variant, all(X =@= [f(_),f(_)])) :- p(_), X = f(_).
test(arith, all(X =:= [1.0,2.0])) :- p(X).
test(wrong, all(X = [1])) :- p(X).
test(after) :- true.
test(bare_ident, X == 2) :- X = 2.
test(bare_wrong, X == 2) :- X = 1.
test(bare_arith, X =:= 2.0) :- X = 2.
test(bare_unify, X = f(_)) :- X = f(1).
test(bare_variant, X =@= f(_)) :- X = f(_).
test(listed_wrong, [X == 3]) :- X = 1.
:- end_tests(al).
