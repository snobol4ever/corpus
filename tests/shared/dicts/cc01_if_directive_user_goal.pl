:- initialization(main, main).
can(X) :- X > 1.
can_code(Code) :-
    catch(setup_call_cleanup(open_null_stream(S), ( set_stream(S, encoding(text)), put_code(S, Code) ), close(S)), error(_, _), fail).
:- if(can(2)).
p(yes).
:- else.
p(no).
:- endif.
:- if(can(0)).
q(if).
:- elif(can(5)).
q(elif).
:- else.
q(else).
:- endif.
:- if(can_code(0'a)).
r(ascii).
:- endif.
:- if(can(0)).
never(1).
:- endif.
main :-
    p(P), writeq(p(P)), nl,
    q(Q), writeq(q(Q)), nl,
    r(R), writeq(r(R)), nl,
    ( catch(never(_), error(existence_error(procedure, PI), _), (writeq(absent(PI)), nl, fail)) -> writeln(never_present) ; true ).
