/* test_list_main.pl — wrapper: calls test_list/0 as main/0 */
:- include('test_list.pl').
main :- test_list.
