:- use_module(library(time)).
:- initialization(main, main).
run(Secs, Msg) :- catch(call_with_time_limit(Secs, (repeat, fail)), _, writeln(Msg)).
main :-
    run(0.1, alarm1), run(0.1, alarm2),
    catch(call_with_time_limit(0, true), E0, true), print(zero-E0), nl,
    catch(call_with_time_limit(0.2, sleep(1)), E1, true), print(E1), nl,
    writeln(end), halt.
