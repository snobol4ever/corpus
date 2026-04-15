/* test_call_main.pl — wrapper: calls test_call/0 as main/0 */
:- include('test_call.pl').
main :- test_call.
