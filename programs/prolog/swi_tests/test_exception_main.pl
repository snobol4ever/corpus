/* test_exception_main.pl — wrapper: calls test_exception/0 as main/0 */
:- include('test_exception.pl').
main :- test_exception.
