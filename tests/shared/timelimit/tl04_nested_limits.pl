:- use_module(library(time)).
:- initialization(main, main).
main :-
    catch(call_with_time_limit(30.0, ( catch(call_with_time_limit(0.3, (repeat, fail)), Inner, true), print(inner-Inner), nl )), Outer, true),
    ( var(Outer) -> writeln(outer_unfired) ; print(outer-Outer), nl ),
    catch(call_with_time_limit(0.3, catch(call_with_time_limit(30.0, (repeat, fail)), Inner2, (print(inner2-Inner2), nl, throw(Inner2)))), Outer2, true),
    print(outer2-Outer2), nl,
    halt.
