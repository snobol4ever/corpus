% drive.pl -- the driver of the suite aoc2015_prolog (PrologAoc2017's, which is the ProCovington driver's, unchanged in its code; ours).
% Consulted AFTER one program. Each day of the suite (dayN.pl) defines part1/1 and part2/1 and runs nothing by itself (its README asks them at
% the top level: swipl day1.pl, then part1(Answer).), so the queries are OURS: part1(X). and part2(X). NAME.in holds each as two terms,
% q('GOAL', MAX). and then the goal. The driver prints ?- GOAL, then the answer, yes, no or raised(FORMAL), after whatever the program printed.
% The text below the header is the ProCovington driver's, unchanged.

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
