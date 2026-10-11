%-----------------------------------------------------------------------
%  The classical stalemate game.  For the query ?- win(X) <- Cond. it
%  should produce the answers:
%
%		X = a	Cond = [\+win(a)]
%		X = b	Cond = []
%-----------------------------------------------------------------------

:- export test/0, win/1.
:- import member/2 from basics.

:- auto_table.

win(X) :- move(X,Y), tnot(win(Y)).

move(a,a).
move(a,b).
move(b,c).

%-----------------------------------------------------------------------

test :- win(X), write('Call succeeds: '), writeln(win(X)), fail.
test :- member(X, [a,b,c]), write('Result: '), write(X),
	( win(X) ->  
		( tnot(win(X)) -> 
			writeln(' is neither a winning nor a loosing position')
		; writeln(' is a winning position')
		)
	; writeln(' is a loosing position')
	), fail.
test.

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh simpl_win "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
