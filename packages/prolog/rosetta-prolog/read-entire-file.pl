:- initialization(main).

main :-
    current_prolog_flag(argv, [File|_]),
    read_file_to_string(File, String, []).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): main/0 reads the file named by its first argument into a string and prints nothing (the task asks for no output); read-entire-file.argv names /dev/stdin and read-entire-file.in holds a short text, and the driver reports whether main/0 succeeded.
:- initialization((main -> writeln('main/0 read the file named on its command line into a string') ; writeln('main/0 failed'))).
