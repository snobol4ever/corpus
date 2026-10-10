non_empty_file('.').
non_empty_file('..').

empty_dir(Dir) :-
	directory_files(Dir, Files),
	maplist(non_empty_file, Files).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines empty_dir/1 and never calls it; the driver tests a freshly made temporary directory and / (its path is not printed, it holds the pid).
:- initialization((tmp_file(empty, Dir), make_directory(Dir), (empty_dir(Dir) -> E1 = empty ; E1 = 'not empty'), delete_directory(Dir), format("a new directory: ~w~n", [E1]), (empty_dir('/') -> E2 = empty ; E2 = 'not empty'), format("/: ~w~n", [E2]))).
