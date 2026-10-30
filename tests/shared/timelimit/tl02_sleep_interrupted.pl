:- use_module(library(time)).
:- initialization(main, main).
main :-
    get_time(T0),
    catch(call_with_time_limit(0.3, sleep(5)), E, true),
    get_time(T1), D is T1 - T0,
    print(E), nl,
    ( D < 2.0 -> writeln(quick) ; writeln(slow) ),
    halt.
