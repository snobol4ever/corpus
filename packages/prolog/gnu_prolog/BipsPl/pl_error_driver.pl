% pl_error_driver.pl -- grades GNU Prolog's BipsPl/pl_error.pl through the predicates it defines (Lon via the ceo, CEO-1523:
% every Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is pl_error.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents (8.22.3, 8.22.4, 8.14.4); an error prints as its ISO
% formal term only. current_bip_name/2 is read only right after set_bip_name/2 in the same goal (any built-in called between
% them may set the name itself). syntax_error_info/4 is read after an ISO read/2 hit a syntax error in a file this driver
% writes, /tmp/gnu_drv_pl_error_1.txt, removed at the end.
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

bad_read :-
    Path = '/tmp/gnu_drv_pl_error_1.txt',
    open(Path, write, W), write(W, 'ok(1).'), nl(W), write(W, 'foo(a b).'), nl(W), close(W),
    open(Path, read, R), catch((read(R, _), read(R, _)), _, true), close(R).

main :-
    t((set_bip_name(foo, 2), current_bip_name(_, _))),
    t((set_bip_name(bar, 0), current_bip_name(bar, _))),
    t((set_bip_name(foo, 2), current_bip_name(foo, 3))),
    t(set_bip_name(_, 1)),
    t(set_bip_name(foo, _)),
    t(set_bip_name(1, 1)),
    t(set_bip_name(foo, a)),
    t((set_bip_name(foo, 2), current_bip_name(1, _))),
    t((set_bip_name(foo, 2), current_bip_name(_, a))),
    ( catch(bad_read, _, true) -> true ; true ),
    t(syntax_error_info(_, _, _, _)),
    t(syntax_error_info(_, 2, _, _)),
    t(syntax_error_info(_, 1, _, _)),
    t(syntax_error_info(3, _, _, _)),
    t(syntax_error_info(_, a, _, _)),
    t(syntax_error_info(_, _, b, _)),
    t(syntax_error_info(_, _, _, 4)),
    catch(delete_file('/tmp/gnu_drv_pl_error_1.txt'), _, true),
    true.
