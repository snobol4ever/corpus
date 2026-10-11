go :- ['Driver'], drtc(multidown,'Data/cycles').

% DRIVER (appended by the vendoring, CEO-700): XSB sub_tests/test.sh runs gentest.sh drtc7 "go."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((go))).
