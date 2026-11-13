:- use_module(library(readutil)).
:- initialization(main).
main :- open('ru.txt', read, S), read_line_to_codes(S, L1), read_line_to_string(S, L2), read_line_to_codes(S, L3, T3), T3 = [], read_line_to_string(S, L4), read_line_to_string(S, L5), read_line_to_codes(S, L6), close(S),
    atom_codes(A1, L1), writeq([A1, L2, L3, L4, L5, L6]), nl,
    read_file_to_codes('ru.txt', C, []), length(C, N), writeq(N), nl, read_file_to_codes('ru.txt', C2, [tail(Tl)]), Tl = [0'z], last(C2, X), writeq(X), nl,
    read_file_to_string('ru.txt', Str, []), string_length(Str, SL), writeq(SL), nl, read_file_to_terms('terms.pl', Ts, []), writeq(Ts), nl,
    open('ru.txt', read, S2), read_stream_to_codes(S2, C3), close(S2), length(C3, N3), writeq(N3), nl,
    catch(read_file_to_codes(nosuch, _, []), error(E, _), (writeq(E), nl)).
