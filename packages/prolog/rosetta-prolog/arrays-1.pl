singleassignment:-
    functor(Array,array,100), % create a term with 100 free Variables as arguments
                              % index of arguments start at 1
    arg(1 ,Array,a),          % put an a at position 1
    arg(12,Array,b),          % put an b at position 12
    arg(1 ,Array,Value1),     % get the value at position 1
    print(Value1),nl,         % will print Value1 and therefore a followed by a newline
    arg(4 ,Array,Value2),     % get the value at position 4 which is a free Variable
    print(Value2),nl.         % will print that it is a free Variable followed by a newline

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): singleassignment/0 prints arg 1 (a) and arg 4, a free variable whose printed name (_NNN) is an address; the driver captures its output and prints the free variable as _.
:- initialization((with_output_to(string(S), singleassignment), split_string(S, "\n", "", [V1, V2|_]), format("~w~n", [V1]), (sub_string(V2, 0, 1, _, "_") -> writeln('_') ; writeln(V2)))).
