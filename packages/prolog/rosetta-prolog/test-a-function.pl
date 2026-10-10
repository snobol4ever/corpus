palindrome(Word) :- name(Word,List), reverse(List,List).

:- begin_tests(palindrome).

test(valid_palindrome) :- palindrome('ingirumimusnocteetconsumimurigni').
test(invalid_palindrome, [fail]) :- palindrome('this is not a palindrome').

:- end_tests(palindrome).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines palindrome/1 and a plunit unit and never runs them; the driver asks palindrome/1 of the two test words and runs the unit, printing its verdict (plunit's own report goes to stderr).
:- initialization((forall(member(W, ['ingirumimusnocteetconsumimurigni', 'this is not a palindrome']), ((palindrome(W) -> R = yes ; R = no), format("~w: ~w~n", [W, R]))), (run_tests(palindrome) -> writeln('palindrome tests: passed') ; writeln('palindrome tests: failed')))).
