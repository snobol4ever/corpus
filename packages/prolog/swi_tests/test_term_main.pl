/* test_term_main.pl — wrapper: calls test_term/0 as main/0 */
:- include('test_term.pl').
main :- test_term.
