:- use_module(library(process)).
:- initialization(main, main).
main :-
    catch(process_create(echo, [x], [stdout(pipe(_, [bogus(1)]))]), error(F1, _), true), print(F1), nl,
    catch(process_create(path(echo), [x], [stdout(pipe(_, [bogus(1)]))]), error(F2, _), true), print(F2), nl,
    catch(process_create(path(echo), [x], [stdout(pipe(_, [type(weird)]))]), error(F3, _), true), print(F3), nl,
    catch(process_create(path(nosuchexe_xyz_scrip), [], []), error(F4, _), true), print(F4), nl,
    catch(process_create('/no/such/exe', [], []), error(F5, _), true), print(F5), nl,
    process_create(path(echo), ['hello from pipe'], [stdout(pipe(O)), process(P)]),
    read_line_to_string(O, L), close(O), process_wait(P, S), print(L-S), nl,
    process_create(path(sh), ['-c', 'exit 3'], [process(P2)]), process_wait(P2, S2), print(S2), nl,
    process_create(path(sh), ['-c', 'kill -9 $$'], [process(P3)]), process_wait(P3, S3), print(S3), nl,
    process_create(path(echo), [quiet], [stdout(null)]), writeln(detached_default_waited),
    halt.
