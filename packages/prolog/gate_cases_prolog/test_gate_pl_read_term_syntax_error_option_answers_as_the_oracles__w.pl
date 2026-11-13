:- initialization(main).
w('bad.txt', syntax_error(error)).
w('bad.txt', syntax_error(fail)).
w('bad.txt', syntax_error(warning)).
w('bad.txt', syntax_error(quiet)).
w('bad.txt', syntax_error(_)).
w('bad.txt', variable_names(_)).
w('good.txt', syntax_error(fail)).
w('eof.txt', syntax_error(fail)).
w('eof.txt', syntax_error(error)).
w('bad.txt', syntax_errors(error)).
w('bad.txt', syntax_errors(fail)).
w('bad.txt', syntax_errors(quiet)).
w('bad.txt', syntax_errors(dec10)).
w('good.txt', syntax_errors(dec10)).
w('eof.txt', syntax_errors(dec10)).
w('eof.txt', syntax_errors(fail)).
main :- w(F, O), open(F, read, R), r1(R, O), r2(R), close(R), write('--'), nl, fail.
main.
r1(R, O) :- catch((read_term(R, T, [O]) -> (write('T:'), writeq(T)) ; write('F')), E, cls(E)), nl.
r2(R) :- catch((read_term(R, T, []), write('T:'), writeq(T)), E, cls(E)), nl.
cls(error(syntax_error(_), _)) :- !, write('E').
cls(error(domain_error(read_option, _), _)) :- !, write('D').
cls(error(instantiation_error, _)) :- !, write('I').
cls(E) :- write(other(E)).
