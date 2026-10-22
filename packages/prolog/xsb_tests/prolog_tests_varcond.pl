:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- compiler_options([xpp_on]).
#include "extensions_xsb.h"

test :- q(_,Y), writeln(res(Y)), fail.
test :- (C=125 ; C=107 ; C=96 ; C=95 ; C=93 ; C=66 ; C=62 ; C=49 ; C=22),
	 vcc(ascii_identifier, C), writeln(yes(C)), fail.
%test :- shell(['rm varcond', XSB_OBJ_EXTENSION_ATOM]),
%	fmt_write('varcond%s removed', arg(XSB_OBJ_EXTENSION_ATOM)).

q(A,B) :-
   ((var(A); A==a) ->
        B = b
   ;
        B = c
   ).

% tests hold registers and compilation of arithmetic conditions.
vcc(ascii_identifier, Code) :-
                once((
                        48 =< Code, Code =< 57
                ;       65 =< Code, Code =< 90
                ;       Code =:= 95
                ;       97 =< Code, Code =< 122
                )).


% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh varcond "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
