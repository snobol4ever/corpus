:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- export mymember/2,test/0.
:- export my_min_ed_dis/3.

:- import member/2 from basics as mymember/2.

:- import min_ed_dis/3 from xeddis as my_min_ed_dis/3.

test:- 
	mymember(X,[a,b,c]),writeln(mymember(X)),fail.
test:- my_min_ed_dis(cat,hat,X),writeln(my_med(X)),fail.
test.

% DRIVER (appended by the vendoring, CEO-700): XSB foreign_tests/test.sh runs gentest.sh test_importas "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
