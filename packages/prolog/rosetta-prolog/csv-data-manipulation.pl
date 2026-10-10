test :- augment('test.csv', 'test.out.csv').

% augment( +InFileName, +OutFileName)
augment(InFile, OutFile)  :-
   open(OutFile, write, OutStream),
   ( ( csv_read_file_row(InFile, Row, [line(Line)]),
       % Row is of the form row( Item1, Item2, ....).
       addrow(Row, Out),
       csv_write_stream(OutStream, [Out], []),
       fail
     )
   ; close(OutStream)
   ).

% If the first item in a row is an integer, then append the sum;
% otherwise append 'SUM':
addrow( Term, NewTerm ) :-
   Term =.. [F | List],
   List = [X|_],
   (integer(X) -> sum_list(List, Sum) ; Sum = 'SUM'),
   append(List, [Sum], NewList),
   NewTerm =.. [F | NewList].

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): the coo's test/0 reads test.csv, which neither the task nor this package ships; the driver gives the solution's own addrow/2 the task's five CSV rows and prints each augmented row comma-joined (csv_write_stream/3 would end every line with a carriage return).
:- initialization(forall(member(Row, [row('C1', 'C2', 'C3', 'C4', 'C5'), row(1, 5, 9, 13, 17), row(2, 6, 10, 14, 18), row(3, 7, 11, 15, 19), row(4, 8, 12, 16, 20)]), (addrow(Row, Out), Out =.. [_|Fields], atomic_list_concat(Fields, ',', Line), writeln(Line)))).
