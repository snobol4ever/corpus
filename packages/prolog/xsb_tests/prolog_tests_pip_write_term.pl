% Tests for write_term/2 options based on PIP 0105 (temp-sandbox/0105-write-options.md)
% and the ISO test harness in temp-sandbox/test_harness_iso.pl.
%

test:- 
     write_term('a b',[quoted]),nl,
     write_term([a,b],[ignore_ops]),nl,
     write_term(a+b,[portable(true)]),nl,
     write_term('$VAR'(0),[numbervars]),nl,
     write_term('$VAR'(27),[numbervars]),nl,
     write_term('$VAR'(foo),[numbervars]),nl,
     write_term(f(g(h(a))),[max_depth(2)]),nl,
     write_term(a*b,[priority(200)]),nl,
     write_term(255,[integer_base(hex),integer_prefix(true)]),nl,
     write_term(255,[integer_base(hex),integer_prefix(false)]),nl,
     write_term(255,[integer_base(2),integer_prefix(true)]).
     

%fixme write_term(a,[fullstop])
%    should_output a. .

%fixme write_term(a,[fullstop,nl])
%    should_output a.\n.

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh pip_write_term "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
