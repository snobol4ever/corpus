:- use_module(library(time)).
:- initialization(main, main).
loop :- loop.
count(N) :- N1 is N + 1, count(N1).
main :-
    catch(call_with_time_limit(0.3, (repeat, fail)), E1, true), print(repeat_fail-E1), nl,
    catch(call_with_time_limit(0.3, loop), E2, true), print(recursion-E2), nl,
    catch(call_with_time_limit(0.3, count(0)), E3, true), print(arith_recursion-E3), nl,
    catch(call_with_time_limit(0.3, (between(1, inf, _), fail)), E4, true), print(between_inf-E4), nl,
    halt.
