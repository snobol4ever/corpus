:- compiler_options([xpp_on]).
#include "standard.h"

?- 
        banner:set_banner_control(quietload,1),
        banner:set_banner_control(nofeedback,1),
        banner:set_banner_control(nobanner,1).
?-
        [optcompile].
test :- 
        banner:set_banner_control(quietload,1),
        banner:set_banner_control(nofeedback,1),
        banner:set_banner_control(nobanner,1),
        file_io:file_reopen(temp1,w,STDWARN,_),
        compile(progr),
	file_io:file_close(STDWARN),
	open(file(temp1),read,Port1),
	open(file(temp),append,Port2),
	file_io:copyIOport(Port1,Port2),
	close(Port1),
	close(Port2).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/preproc-opt/test.sh runs ../gentest.sh preproc_test "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
