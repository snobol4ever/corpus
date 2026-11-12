:- begin_tests(hangu).
test(a) :- true.
test(b) :- loop.
loop :- loop.
:- end_tests(hangu).
