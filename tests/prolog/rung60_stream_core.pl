%---------------------------------------------------------- 1 rung60_stream_core
:- initialization(main).
main :-
    current_output(CO), write(CO), nl,
    current_input(CI), write(CI), nl,
    ( catch(set_output(foo), error(existence_error(stream,_),_), write(setout_existence)) ), nl,
    ( catch(current_output(a), error(domain_error(stream,_),_), write(curout_domain)) ), nl,
    ( catch(set_output(_), error(instantiation_error,_), write(setout_inst)) ), nl,
    ( catch(set_output(123), error(domain_error(stream_or_alias,_),_), write(setout_domain)) ), nl,
    ( catch(set_output(user_input), error(permission_error(output,stream,_),_), write(setout_perm)) ), nl,
    ( catch(set_input(user_output), error(permission_error(input,stream,_),_), write(setin_perm)) ), nl,
    write(user_error, this_goes_to_stderr), nl(user_error),
    ( flush_output -> write(flushed0) ; write(flush0_fail) ), nl,
    ( flush_output(user_output) -> write(flushed1) ; write(flush1_fail) ), nl,
    write(done), nl.
