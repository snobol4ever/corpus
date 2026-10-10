% src_rdr_driver.pl -- grades GNU Prolog's BipsPl/src_rdr.pl, the source reader (sr_open/3, sr_read_term/4, sr_get_position/3,
% sr_get_include_list/2, sr_get_file_name/2, sr_get_size_counters/3, sr_get_error_counters/3, sr_set_error_counters/3,
% sr_current_descriptor/1, sr_new_pass/1, sr_change_options/2, sr_error_from_exception/2, sr_write_message/4,
% sr_write_error/2, sr_close/1), by reading a small source file it writes first -- an op directive, clauses, an include, a
% syntax error -- term by term and printing each term with its position, the include chain and the reader's error, then the
% counters (Lon via the ceo, CEO-1312 and CEO-1523: every Prolog source file of the GNU package is graded through a driver;
% CEO-700, CEO-1269: a library is graded by its driver, NAME_driver beside it). gprolog's answer is src_rdr.pl's own code; SCRIP
% is graded three-way against it (m3 = m4 = gprolog). The two source files live at fixed paths under /tmp, rewritten each run.
% The reader's descriptor is its own index (0 for the first open) and is printed with each call; the stream it reads is
% the process's own, so it is checked by property only. Three sessions read the same file: the default options (an include is
% treated and hidden, an op directive treated and reflected), include reflected with op killed, and include ignored.
:- initialization(main).

% t(G): every solution of G, or the formal error term G raises.
t(G) :- copy_term(G, C),
        catch(findall(C, C, L), E, true),
        (   var(E) -> R = L
        ;   E = error(F, _) -> R = error(F)
        ;   R = ball(E)
        ),
        \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).

% p(N, G): whether G holds, or the formal error term it raises, printed under the name N.
p(N, G) :- copy_term(G, C),
        catch(( C -> R = true ; R = false ), E, ( E = error(F, _) -> R = error(F) ; R = ball(E) )),
        write(N), write(' => '), writeq(R), nl.

put_text(P, Lines) :- open(P, write, S), put_lines(Lines, S), close(S).
put_lines([], _).
put_lines([L|Ls], S) :- write(S, L), nl(S), put_lines(Ls, S).

write_sources :-
    put_text('/tmp/gnu_drv_src_rdr_inc.pl', ['inc(1).', 'inc(2) :- inc(1).']),
    put_text('/tmp/gnu_drv_src_rdr.pl',
             [':- op(700, xfx, ===>).', 'a(1).', 'a(X) :- X ===> b.', ':- include(\'/tmp/gnu_drv_src_rdr_inc.pl\').',
              'c :- d(.', 'e("str", 0\'a, [1,2|T], T).', '% a comment', 'f.']).

% read_all(D, Opts): every term the reader gives, with the line span and include chain it reports, to end_of_file.
read_all(D, Opts) :-
    sr_read_term(D, T, Opts, E),
    sr_get_position(D, L1, L2),
    sr_get_include_list(D, IL),
    \+ \+ ( numbervars(T, 0, _), writeq(term(T, L1-L2, IL, E)), nl ),
    (   T == end_of_file -> true ; read_all(D, Opts) ).

session(Opts) :-
    sr_open('/tmp/gnu_drv_src_rdr.pl', D, Opts),
    p(descriptor_is_an_integer, integer(D)),
    p(current_descriptor_is_it, sr_current_descriptor(D)),
    p(stream_is_a_stream, (sr_get_stream(D, S), S = '$stream'(_))),
    t(sr_get_file_name(D, _)),
    read_all(D, []),
    t(sr_get_size_counters(D, _, _)),
    t(sr_get_error_counters(D, _, _)),
    t(sr_set_error_counters(D, 5, 7)),
    t(sr_get_error_counters(D, _, _)),
    t(sr_close(D)).

% s(N, Opts): one session under its name; an error that ends it early is printed, and the next session still runs.
s(N, Opts) :- write(N), nl,
        catch(( session(Opts) -> R = true ; R = fail ), E, ( E = error(F, _) -> R = error(F) ; R = ball(E) )),
        write(N), write(' => '), writeq(R), nl.

main :-
    write_sources,
    s(session_default, []),
    s(session_include_reflected_op_killed, [include(reflect), op(kill)]),
    s(session_include_ignored, [include(ignore)]),
    t(sr_open(_, _, [])),
    t(sr_open('/tmp/gnu_drv_src_rdr.pl', _, foo)),
    t(sr_open('/tmp/gnu_drv_src_rdr.pl', _, [bogus])),
    t(sr_open('/tmp/gnu_drv_src_rdr_nope.pl', _, [])),
    t(sr_open('/tmp/gnu_drv_src_rdr.pl', 3, [])),
    t(sr_close(_)),
    t(sr_error_from_exception(error(syntax_error(oops), foo/1), _)),
    t(sr_error_from_exception(error(type_error(integer, a), foo/1), _)),
    true.
