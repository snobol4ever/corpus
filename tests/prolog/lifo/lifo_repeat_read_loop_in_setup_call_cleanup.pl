% minimal witness: FATAL x86_zop on origin 49e8b05e1 (LIFO slice 1a), none on its parent. xsb_builtins.pl's load_dyn/1 and its helpers, copied.
ld_path(F, F).
ld_read(S) :- repeat, read_term(S, T, []), ( T == end_of_file -> ! ; ld_one(T), fail ).
ld_one((:- G)) :- !, ( catch(G, _, true) -> true ; true ).
ld_one(C) :- assertz(C).
load_dyn(File) :- ld_path(File, Path), setup_call_cleanup(open(Path, read, S), ld_read(S), close(S)).
:- initialization((catch(load_dyn('/nonexistent'), _, true), halt)).
