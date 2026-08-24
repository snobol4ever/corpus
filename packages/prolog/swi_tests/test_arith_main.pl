/* test_arith_main.pl — wrapper: calls test_arith/0 as main/0 */
:- include('test_arith.pl').
main :- test_arith.
