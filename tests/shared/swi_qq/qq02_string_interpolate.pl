:- use_module(library(strings)).
main :- To = world, A = {|string(To)||hello {To}|}, writeq(A), nl,
        catch(( _ = {|string(To)||hello {ToX}|}, writeln(no_error) ), error(E, _), (writeq(E), nl)).
:- initialization(main).
