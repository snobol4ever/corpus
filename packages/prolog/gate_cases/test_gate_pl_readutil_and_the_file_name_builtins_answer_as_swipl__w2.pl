:- use_module(library(lists)).
t(N, G) :- catch((G -> true ; (write(N-no), nl)), E, (write(N-ex), write(' '), print_message(silent, E), E = error(F, _), writeq(F), nl)).
:- initialization(main).
main :- t(rs5a, (open('rs.txt', read, S), read_string(S, "\n", " ", Sep, Str), read_string(S, "\n", " ", Sep2, Str2), read_string(S, "\n", " ", Sep3, Str3), close(S), writeq([Sep-Str, Sep2-Str2, Sep3-Str3]), nl)),
  t(rs3, (open('rs.txt', read, S3), read_string(S3, L, Str4), close(S3), writeq(L-Str4), nl)),
  t(abs3, (absolute_file_name('rs.txt', P, [access(read)]), atom(P), write(abs3-ok), nl)),
  t(abs3_old_order, (absolute_file_name('rs.txt', [access(read)], P2), atom(P2), write(old_ok), nl)),
  t(abs3_ext, (absolute_file_name(rs, P3, [extensions([txt]), access(read)]), file_base_name(P3, B3), writeq(B3), nl)),
  t(abs3_unknown_opt, (absolute_file_name('rs.txt', P4, [encoding(utf8), tail(_)]), atom(P4), write(unknown_ok), nl)),
  t(abs3_missing, absolute_file_name(nosuch, _, [access(read)])),
  t(abs3_missing_fail, absolute_file_name(nosuch, _, [access(read), file_errors(fail)])),
  t(access_file_r, (access_file('rs.txt', read), write(af_ok), nl)), t(access_file_missing, access_file(nosuch, read)), t(access_file_none, (access_file(nosuch, none), write(none_ok), nl)),
  t(access_file_write_new, (access_file(newfile, write), write(w_ok), nl)),
  t(open_unknown_opt, (open('rs.txt', read, S9, [tail(_), foo(bar)]), close(S9), write(open_ok), nl)).
