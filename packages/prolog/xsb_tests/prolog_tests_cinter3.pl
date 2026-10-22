:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
/* test of high-level C interface */
:- (windows_os
    ->	   (xsb_configuration(word_size,'64')
	    ->	   shell('bash -c "./make_cinter3_w64.bat"')
	    ;	   shell('bash -c "./make_cinter3.bat"')
	    )
    ; true
   ).

:- [second_foreign].
:- import paddints/3,paddfloats/3,pswapints/4,psort/2,plcsort/2
          from second_foreign.
:- import context_paddints/3,context_paddfloats/3,context_pswapints/4,context_psort/2,context_plcsort/2
          from second_foreign.

test :- paddints(3,4,Z), writeln(paddints(3,4,Z)), fail.
test :- paddfloats(3.5,4.5,Z), writeln(paddfloats(3.5,4.5,Z)), fail.
test :- pswapints(3,4,Z,W), writeln(pswapints(3,4,Z,W)), fail.
test :- psort(qwerty,Z), writeln(psort(qwerty,Z)), fail.
test :- plcsort("qwerty",Z), writeln(plcsort("qwerty",Z)), fail.

test :- context_paddints(3,4,Z), writeln(context_paddints(3,4,Z)), fail.
test :- context_paddfloats(3.5,4.5,Z), writeln(context_paddfloats(3.5,4.5,Z)), fail.
test :- context_pswapints(3,4,Z,W), writeln(context_pswapints(3,4,Z,W)), fail.
test :- context_psort(qwerty,Z), writeln(context_psort(qwerty,Z)), fail.
test :- context_plcsort("qwerty",Z), writeln(context_plcsort("qwerty",Z)), fail.
test.


% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh (commented out there) runs gentest.sh cinter3 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
