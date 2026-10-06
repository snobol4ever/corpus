% format_driver.pl -- grades GNU Prolog's BipsPl/format.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% format_driver beside it). gprolog's answer is format.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% format/2,3 is output: each call runs under o/1 on user_output, one directive family per line (~a ~w ~q ~p ~k ~d ~D ~f ~e
% ~g ~s ~c ~r ~R ~i ~* ~n ~N ~~), then the documented errors. portray/1 below is the user hook ~p reaches through print/1.
% NOT DRIVEN: format/2,3 column directives ~N| ~N+ ~Nt -- gprolog 1.4.5, the reference, has none: each raises
% domain_error(format_control_sequence, ...) there (they arrived in GNU Prolog 1.5.0), so no 1.4.5 answer grades them.
:- initialization(main).

% t(G): every solution of G, or the formal error term G raises.
t(G) :- copy_term(G, C),
        catch(findall(C, C, L), E, true),
        (   var(E) -> R = L
        ;   E = error(F, _) -> R = error(F)
        ;   R = ball(E)
        ),
        \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).

% o(G): for a goal whose effect is OUTPUT -- what it printed between < and >, then true, fail or the formal error term.
o(G) :- write('<'),
        catch(( G -> R = true ; R = fail ), E, ( E = error(F, _) -> R = error(F) ; R = ball(E) )),
        write('> '), writeq(R), nl.

portray(plain(X)) :- write('#'), write(X).

main :-
    o(format('plain text', [])),
    o(format("codes ~a", [x])),
    o(format('~a and ~a', [foo, 'b c'])),
    o(format('~w ~q ~p', ['A b', 'A b', plain(1)])),
    o(format('~k', [1+'B'])),
    o(format('~d|~2d|~0d|~d', [42, 1234, 7, -1234567])),
    o(format('~3d|~3d', [5, -5])),
    o(format('~D|~2D', [1234567, 1234567])),
    o(format('~f|~2f|~0f|~f', [3.14159, 2.5, 2.5, 3])),
    o(format('~e|~3e', [1234.5, 0.00123])),
    o(format('~g|~g', [1.5, 100000000.0])),
    o(format('~s|~2s', ["abc", "abcdef"])),
    o(format('~c|~3c', [97, 122])),
    o(format('~8r|~16r|~16R|~2r|~36r', [255, 255, 255, 5, 123456])),
    o(format('~i~w', [skipped, shown])),
    o(format('~*c|~*d', [4, 42, 2, 314])),
    o(format('a~nb~2nc', [])),
    o(format('x~Ny~N', [])),
    o(format('~~ tilde', [])),
    o(format(user_output, '~w-~a', [f('X'), b])),
    o(format('~a', [])),
    o(format('~a ~a', [x])),
    o(format('~y', [x])),
    o(format('~a', [1])),
    o(format('~d', [1.5])),
    o(format('~c', [-1])),
    o(format('~a', bar)),
    o(format(_, [])),
    o(format(nosuch, 'x', [])),
    o(format(user_input, 'x', [])),
    true.
