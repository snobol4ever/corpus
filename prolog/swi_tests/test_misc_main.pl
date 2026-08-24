/* test_misc_main.pl — wrapper: calls test_misc/0 as main/0 */
:- include('test_misc.pl').
main :- test_misc.
