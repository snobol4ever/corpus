
:- compiler_options([xpp_on]).

#include "flag_defs_xsb.h"

:- import
        banner_control/1,
        set_banner_control/2
   from banner.


:- set_banner_control(quietload,1),
        set_banner_control(noprompt,1).

test :-
        [minizinc],
        [examples].

% DRIVER (appended by the vendoring, CEO-700): XSB minizinc/test.sh runs gentest.sh mzn_examples "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
