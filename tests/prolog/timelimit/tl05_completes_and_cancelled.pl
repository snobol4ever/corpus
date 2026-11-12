:- use_module(library(time)).
:- initialization(main, main).
main :-
    catch(call_with_time_limit(30.0, X is 1 + 1), E1, true), ( var(E1) -> print(ok(X)) ; print(E1) ), nl,
    ( \+ catch(call_with_time_limit(30.0, fail), _, true) -> writeln(fails) ; writeln(wrong) ),
    catch(call_with_time_limit(0.2, true), E2, true), ( var(E2) -> writeln(done) ; print(E2), nl ),
    sleep(0.5),
    catch(call_with_time_limit(30.0, ( between(1, 200000, _), fail ; true )), E3, true), ( var(E3) -> writeln(no_stale_alarm) ; print(E3), nl ),
    halt.
