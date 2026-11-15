% drive.pl -- the driver of the PrologSwiBench suite (ours; the programs of the SWI-Prolog benchmark suite are read in place and never changed).
% Consulted AFTER one program. Every program of the suite defines top/0 and runs nothing by itself (the suite's own run.pl calls top in a timed loop),
% so the one query is OURS: top. NAME.in holds it as two terms, q('top.', MAX). and then the goal. The driver prints ?- top., then yes when it
% succeeds, no when it fails, raised(FORMAL) for an error, after whatever the program itself printed. The text below the header is the
% ProCovington driver's, unchanged.

:- dynamic(slx_n/1).

% Written without infix or prefix operators but :- and the comma (and the list bar), so a code file that redeclares one ('->' at 600 xfx in 9.1.1) cannot change how this file reads.

slx_drive :- catch(prompt(_, ''), _, true), slx_loop.

slx_loop :- read_term(user_input, H, []), slx_step(H).

slx_step(end_of_file) :- !.
slx_step(q(Text, Max)) :- !, read_term(user_input, G, [variable_names(Bs)]), slx_one(Text, Max, G, Bs), slx_loop.
slx_step(_) :- slx_loop.

slx_one(Text, Max, G, Bs) :- write('?- '), write(Text), nl,
    retractall(slx_n(_)), assertz(slx_n(0)),
    catch(slx_run(G, Bs, Max, R), E, slx_ball(E, R)),
    slx_end(R).

slx_run(G, Bs, Max, more) :- call(G), slx_show(Bs), slx_bump(N), >=(N, Max), !.
slx_run(_, _, _, no) :- slx_n(0), !.
slx_run(_, _, _, done).

slx_bump(N) :- retract(slx_n(M)), is(N, +(M, 1)), assertz(slx_n(N)).

slx_show(Bs) :- slx_sep, slx_answer(Bs).

slx_sep :- slx_n(0), !.
slx_sep :- write(';'), nl.

slx_answer([]) :- !, write(yes), nl.
slx_answer(Bs) :- \+(\+(slx_named(Bs))).

slx_named(Bs) :- numbervars(Bs, 0, _), slx_bind(Bs).

slx_bind([]).
slx_bind([=(N, V)|T]) :- write(N), write(' = '), write_term(V, [quoted(true), numbervars(true)]), nl, slx_bind(T).

slx_ball(error(F, _), raised(F)) :- !.
slx_ball(E, raised(E)).

slx_end(more) :- write('...'), nl.
slx_end(no) :- write(no), nl.
slx_end(done).
slx_end(raised(F)) :- \+(\+(slx_raised(F))).

slx_raised(F) :- numbervars(F, 0, _), write_term(raised(F), [quoted(true), numbervars(true)]), nl.

:- slx_drive.

:- halt.
