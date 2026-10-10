test_correct :-
    TestCases = [123, 12345, 1234567, 987654321, 10001, -10001, -123, -100, 100, -12345],
    foreach( ( member(TestCase, TestCases),
               middle_3_digits(TestCase, Result) ),
            format('Middle 3 digits of ~w ~30|: ~w~n', [TestCase, Result])
          ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block's test_correct/0 is the entry and calls middle_3_digits/2 of middle-three-digits-1, so the driver takes that block over (CEO-1613), runs test_correct/0 on the task's ten good numbers and prints the task's seven bad ones in its format, each as the domain_error it raises.
:- include('middle-three-digits-1.pl').
:- initialization((test_correct, forall(member(N, [1, 2, -1, -10, 2002, -2002, 0]), catch((middle_3_digits(N, R), format('Middle 3 digits of ~w ~30|: ~w~n', [N, R])), error(E, _), format('Middle 3 digits of ~w ~30|: ~w~n', [N, E]))))).
