% dec10io_driver.pl -- grades GNU Prolog's BipsPl/dec10io.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% dec10io_driver beside it). gprolog's answer is dec10io.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% The Edinburgh (DEC-10) I/O: put/tab print on user_output under o/1; tell/append ... told write /tmp/gnu_drv_dec10io_1.txt
% inside one o/1 goal (so the redirection ends before o/1 prints), then see ... seen reads it back with get0/get/skip.
% seeing/telling are graded as the alias user, or by property (the file name is given, never printed); character codes
% are plain integers. get/1 and skip/1 are never called where they would meet end of file (GNU's loop there never ends).
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

main :-
    t(seeing(_)),
    t(telling(_)),
    o(put(104)),
    o(put(_)),
    o(put(a)),
    o(tab(3)),
    o(tab(1+1)),
    o(tab(foo)),
    o(tab(_)),
    o(tell(user)),
    t(telling(_)),
    o(see(user)),
    t(seeing(_)),
    t(tell(_)),
    t(see(_)),
    catch(delete_file('/tmp/gnu_drv_dec10io_9.txt'), _, true),
    t(see('/tmp/gnu_drv_dec10io_9.txt')),
    o((tell('/tmp/gnu_drv_dec10io_1.txt'), put(97), tab(2), put(98), nl, telling('/tmp/gnu_drv_dec10io_1.txt'), told)),
    t(telling(_)),
    o((append('/tmp/gnu_drv_dec10io_1.txt'), put(99), telling('/tmp/gnu_drv_dec10io_1.txt'), told)),
    t(append(_)),
    o(see('/tmp/gnu_drv_dec10io_1.txt')),
    o(seeing('/tmp/gnu_drv_dec10io_1.txt')),
    t(get0(_)),
    t(get(_)),
    t(get0(_)),
    t(get0(122)),
    t(get0(_)),
    o(seen),
    t(seeing(_)),
    o((see('/tmp/gnu_drv_dec10io_1.txt'), skip(32), get(C), seen, put(C))),
    t(get(-2)),
    t(get(a)),
    t(skip(foo)),
    catch(delete_file('/tmp/gnu_drv_dec10io_1.txt'), _, true),
    true.
