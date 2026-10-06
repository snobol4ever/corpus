% consult_driver.pl -- grades GNU Prolog's BipsPl/consult.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is consult.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% The driver writes two small source files under /tmp with ISO open/write/close, consults them (consult/1, the list form
% '.'/2, a list of files, a reconsult that replaces rather than appends) and calls what they define in the same graded goal.
% listing/1 prints several lines, so c/1 below sends its output to a /tmp file (ISO set_output/1) and prints the text back
% as one quoted atom; it lists the consulted predicates (their "% file:" header is the fixed /tmp path) and a predicate
% asserted at run time. load/1 is driven on its documented errors only: a success needs a byte-code file made by pl2wam,
% which a driver of ISO built-ins cannot produce.
% NOT DRIVEN: listing/0 -- it prints every predicate of the program, the driver's own under its location-dependent path
% NOT DRIVEN: consult/2 -- absent from gprolog 1.4.5, the grading oracle (existence_error(procedure,consult/2))
% NOT DRIVEN: write_default_include_file/1 -- absent from gprolog 1.4.5 (existence_error(procedure,write_default_include_file/1))
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

% c(G): for an output goal whose text spans lines (listing/1): G runs with the current output sent to a /tmp file, then
% G => Result-Text, where Text is everything G printed, read back with get_char/2 and written as one quoted atom.
c(G) :- Tmp = '/tmp/gnu_drv_consult_3.txt',
        current_output(Old), open(Tmp, write, S), set_output(S),
        catch(( G -> R = true ; R = fail ), E, ( E = error(F, _) -> R = error(F) ; R = ball(E) )),
        set_output(Old), close(S),
        open(Tmp, read, In), c_chars(In, Cs), close(In), atom_chars(Text, Cs),
        writeq(G), write(' => '), writeq(R-Text), nl.

c_chars(In, Cs) :- get_char(In, Ch), ( Ch == end_of_file -> Cs = [] ; Cs = [Ch|Rest], c_chars(In, Rest) ).

main :-
    open('/tmp/gnu_drv_consult_1.pl', write, S1),
    write(S1, ':- dynamic(cq/1).'), nl(S1),
    write(S1, 'cq(1).'), nl(S1),
    write(S1, 'cq(X) :- X = two ; X = three.'), nl(S1),
    write(S1, 'cr(a, b).'), nl(S1),
    write(S1, 'cr(X, Y) :- cq(X), Y = X.'), nl(S1),
    close(S1),
    open('/tmp/gnu_drv_consult_2.pl', write, S2),
    write(S2, 'cs(N, M) :- M is N * N.'), nl(S2),
    close(S2),
    t(consult('/tmp/gnu_drv_consult_1.pl')),
    t((consult('/tmp/gnu_drv_consult_1.pl'), cq(_))),
    t((consult('/tmp/gnu_drv_consult_1.pl'), cr(_, _))),
    t(['/tmp/gnu_drv_consult_2.pl']),
    t((['/tmp/gnu_drv_consult_2.pl'], cs(7, _))),
    t((consult(['/tmp/gnu_drv_consult_1.pl', '/tmp/gnu_drv_consult_2.pl']), cs(3, _))),
    t(consult('/tmp/gnu_drv_consult_0')),
    t(consult('/tmp/gnu_drv_consult_0.pl')),
    t(consult(_)),
    t(consult(3)),
    t(consult([3])),
    t(load('/tmp/gnu_drv_consult_0')),
    t(load('/tmp/gnu_drv_consult_0.wbc')),
    t(load(_)),
    t(load(3)),
    assertz(ld(1, foo)),
    assertz((ld(X, Y) :- X > 1, atom_length(Y, X))),
    c(listing(cq/1)),
    c(listing(cr)),
    c(listing(cs/2)),
    c(listing(ld/2)),
    t(listing(nosuch/1)),
    t(listing(_)),
    t(listing(3)),
    t(listing(foo/bar)),
    catch(delete_file('/tmp/gnu_drv_consult_1.pl'), _, true),
    catch(delete_file('/tmp/gnu_drv_consult_2.pl'), _, true),
    catch(delete_file('/tmp/gnu_drv_consult_3.txt'), _, true),
    true.
