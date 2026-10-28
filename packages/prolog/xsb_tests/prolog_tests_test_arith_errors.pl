:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import numbervars/1 from num_vars.

% Dont print out goals for instantiation errors.
% ------ addintfastuni ------
% unary functions
test:- catch(_X is atan(_N),E,(E= error(instantiation_error,_),writeln(atan_instantiation_error))),fail. 
test:- writeln('------------'),fail.
test:- catch(_X is atan(foo),E,(E= error(Tag,context(context(Msg,Goal),_)),writeln(error(Tag,context(Msg,Goal))))),fail.
test:- writeln('------------'),fail.
test:- catch(_X is atan(foo(1)),E,(E= error(Tag,context(context(Msg,Goal),_)),writeln(error(Tag,context(Msg,Goal))))),fail.
% bnnary functions
test:- writeln('------------'),fail.
test:- catch(_X is '/\\'(1.0, _Y),E,(E= error(instantiation_error,_),writeln('/\\ instantiation error 1'))),fail.
test:- writeln('------------'),fail.
test:- catch(_X is '/\\'(_X,1.0),E,(E= error(instantiation_error,_),writeln('/\\ instantiation error 1'))),fail.
test:- writeln('------------'),fail.
test:- catch(_X is '/\\'(foo, 2),E,(E= error(Tag,context(context(Msg,Goal),_)),writeln(error(Tag,context(Msg,Goal))))),fail.
test:- writeln('------------'),fail.
test:- catch(_X is '/\\'(2,foo),E,(E= error(Tag,context(context(Msg,Goal),_)),writeln(error(Tag,context(Msg,Goal))))),fail.
test:- writeln('------------'),fail.
test:- catch(_X is '/\\'(1.0, 2),E,(E= error(Tag,context(context(Msg,Goal),_)),writeln(error(Tag,context(Msg,Goal))))),fail.
test:- writeln('------------'),fail.
test:- catch(_X is '/\\'(2, 1.0),E,(E= error(Tag,context(context(Msg,Goal),_)),writeln(error(Tag,context(Msg,Goal))))),fail.
test:- writeln('=========================================================================================='),fail.
%test:- catch(_X is 1 >< X,E,(E= error(Tag,context(context(Msg,Goal),_)),writeln(error(Tag,context(Msg,Goal))))),fail.
%test:- writeln('------------'),fail.
%test:- catch((X = _Y,_X is 1 >< X),E,(E= error(Tag,context(context(Msg,Goal),_)),writeln(error(Tag,context(Msg,Goal))))),fail.
%test:- writeln('------------'),fail.

% ------ arithmetic_abort ------
%test:- catch(txor1(_X,1.0),E,(E= error(Tag,context(context(Msg,Goal),_)),writeln(error(Tag,context(Msg,Goal))))),fail.
test:- catch(txor1(_X,1.0),E,(E= error(instantiation_error,context(context(_Msg,_Goal),_)),writeln('txor instantiation error 1'))),fail.
test:- writeln('------------'),fail.
%test:- catch(txor1(1.0,_X),E,(E= error(Tag,context(context(Msg,Goal),_)),writeln(error(Tag,context(Msg,Goal))))),fail.
test:- catch(txor1(1.0,_X),E,(E= error(instantiation_error,context(context(_Msg,_Goal),_)),writeln('txor instantiation error 2'))),fail.
test:- writeln('------------'),fail.
test:- catch(txor1(a,1),E,(E= error(Tag,context(context(Msg,Goal),_)),writeln(error(Tag,context(Msg,Goal))))),fail.
test:- writeln('------------'),fail.
test:- catch(txor1(1,a),E,(E= error(Tag,context(context(Msg,Goal),_)),writeln(error(Tag,context(Msg,Goal))))),fail.
test:- writeln('------------'),fail.
test:- catch(txor1(1.0,1),E,(E= error(Tag,context(context(Msg,Goal),_)),writeln(error(Tag,context(Msg,Goal))))),fail.
test:- writeln('------------'),fail.
test:- catch(txor1(1,1.0),E,(E= error(Tag,context(context(Msg,Goal),_)),writeln(error(Tag,context(Msg,Goal))))),fail.
test:- writeln('=========================================================================================='),fail.

% unifunc_call tests
test:- catch(tatan(_X),error(instantiation_error,context(_C,_B)),writeln(tatan_error(instantiation_error))),fail.
test:- writeln('------------'),fail.
test:- catch(tatan(a),E,(E= error(Tag,context(context(Msg,Goal),_)),writeln(tatan_error(Tag,context(Msg,Goal))))),fail.
test:- writeln('------------'),fail.
test:- catch(tatan(foo(1)),E,(E= error(Tag,context(context(Msg,Goal),_)),writeln(tatan_error(Tag,context(Msg,Goal))))),fail.
test:- writeln('------------'),fail.

test:- catch(tbitneg(_X),error(instantiation_error,context(_C,_B)),writeln(bitneg_error(instantiation_error))),fail.
test:- catch(tbitneg(foo),E,(E= error(Tag,context(context(Msg,Goal),_)),writeln(bitneg_error(Tag,context(Msg,Goal))))),fail.
test:- catch(tbitneg(1.618),E,(E= error(Tag,context(context(Msg,Goal),_)),writeln(bitneg_error(Tag,context(Msg,Goal))))),fail.
test:- writeln('------------'),fail.

test:- catch(tsqrt(-1),E,(E= error(Tag,context(_Msg,_)),writeln(sqrt_error(Tag)))),fail.

test:- catch(tlog(0,_),E,(E= error(Tag,context(_Msg,_)),writeln(log_error(Tag)))),fail.

test:- catch(_X is aaa,E,(E= error(Tag,context(_Msg,_)),writeln(atom_error(Tag)))),fail.

test.

tsqrt(X):- _X is sqrt(X).

tlog(X,Y):- Y is log(X).

txor1(X,Y):- _Z is X >< Y.

tatan(X):- _Z is atan(X).
tasin(X):- _X is asin(X).


tbitneg(X):- _Z is \X.

   tatom(X):- _Z is X.

p(_).

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh test_arith_errors "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
end_of_file.
test:- catch(Y is X mod 3,error(E1,_E2),writeln(caught(E1))),fail.

