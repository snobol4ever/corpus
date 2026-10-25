:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import psc_get_incr/2,term_psc/2,term_new_mod/3 from machine.
:- import sk_not/1 from tables.
:- ensure_loaded(not_exists_test_mod).
:- import numbervars/1 from num_vars.
:- import check_callable/3,xsb_error_get_tag/2 from error_handler.
   
test:-
    tables:not_exists(tabi(foo),Incr),check(Incr,1,tabi(foo)),
    tables:not_exists(tni(foo),Incr1),check(Incr1,0,tni(foo)),
    tables:not_exists((p(X),q(X)),Incr2),check(Incr2,0,(p(X),q(X))),
    tables:not_exists(not_exists_test_mod:mod_i(foo),Incr3),
    check(Incr3,1,not_exists_test_mod:mod_i(foo)),
    tables:not_exists(not_exists_test_mod:mod_ni(foo),Incr4),
    check(Incr4,0,not_exists_test_mod:mod_ni(foo)),
    catch(tables:not_exists(_X1,_Incr5),E1,
	  (xsb_error_get_tag(E1,Tag1),numbervars(Tag1),writeln(caught(mne(testvar),Tag1)))),
    catch(tables:not_exists(7,_Incr6),E2,(xsb_error_get_tag(E2,Tag2),writeln(caught(mne(testvar),Tag2)))).

check(Ret,Correct,Goal):-
    numbervars(Goal),
    (Ret == Correct ->
        writeln(passed(Goal))
      ; writeln(failed(Goal))).

mne(Call,Incr):-
    check_callable(Call,mne,2),
    (Call = M:Goal -> term_new_mod(M,Goal,NewGoal) ; Call = NewGoal),
    term_psc(NewGoal,Psc),
    ( (psc_get_incr(Psc,Incr),Incr == 1) ->
        incr_sk_not(NewGoal)
    ;   Incr = 0,sk_not(NewGoal) ).

incr_sk_not(Goal) :-
        (incr_tabled_call(Goal), fail
	 ;
	 tnot(incr_tabled_call(Goal))
        ). 

:- table incr_tabled_call/1 as variant, incremental.
incr_tabled_call(X) :- call(X).

     
:- table tni/1.
tni(a).

:- table tabi/1 as incremental.
tabi(a).

p(a).
q(b).




% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh not_exists_test "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
