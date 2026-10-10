printTableRow(Angle) :- compassangle(Index, Name, _, Angle),
                        write(Index), write('    '),
                        write(Name), write('   '),
                        write(Angle).

printTable([X|Xs]) :- printTableRow(X), nl, printTable(Xs),!.
printTable([]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block's printTable/1 is the entry and calls compassangle/4 of box-the-compass-1, so the driver takes that block over (CEO-1613) and prints the table of the task's 33 headings, the call box-the-compass-3's transcript shows.
:- include('box-the-compass-1.pl').
:- initialization(printTable([0.0, 16.87, 16.88, 33.75, 50.62, 50.63, 67.5, 84.37, 84.38, 101.25, 118.12, 118.13, 135.0, 151.87, 151.88, 168.75, 185.62, 185.63, 202.5, 219.37, 219.38, 236.25, 253.12, 253.13, 270.0, 286.87, 286.88, 303.75, 320.62, 320.63, 337.5, 354.37, 354.38])).
