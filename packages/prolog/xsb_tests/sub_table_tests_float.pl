
% TLS in anticipation of compiler option decls in file.
:- compile(float1,[spec_off]),[float1].

% DRIVER (appended by the vendoring, CEO-700): XSB sub_table_tests/stest.sh runs sgentest.sh float "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
