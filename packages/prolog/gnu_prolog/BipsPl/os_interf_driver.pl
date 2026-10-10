% os_interf_driver.pl -- grades GNU Prolog's BipsPl/os_interf.pl through the built-ins it defines: files and directories
% (make_directory/1, file_exists/1, file_property/2, file_permission/2, copy_file/2, rename_file/2, directory_files/2,
% delete_file/1, unlink/1, delete_directory/1, working_directory/1, change_directory/1), commands and processes (shell/1,2,
% system/1,2, spawn/2,3, popen/3, exec/4,5, wait/2, create_pipe/2, send_signal/2, prolog_pid/1, sleep/1), names (temporary_name/2,
% temporary_file/3) and the host (date_time/1, host_name/1, os_version/1, architecture/1) (Lon via the ceo, CEO-1312 and
% CEO-1523: every Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by
% its driver, NAME_driver beside it). gprolog's answer is os_interf.pl's own code; SCRIP is graded three-way against it (m3 = m4
% = gprolog). The files live under one fixed directory, /tmp/gnu_drv_os_interf, made and removed by the driver. Whatever is
% the machine's or the moment's own -- a pid, the host, the clock, the working directory, a stream's number, the order a
% directory lists in -- is checked by property only or printed sorted, so the ref holds on any run. fork_prolog/1 and select/5
% are not called: a forked image would print the rest of the run twice.
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

d('/tmp/gnu_drv_os_interf').
f(N, P) :- d(D), atom_concat(D, '/', D1), atom_concat(D1, N, P).

put_file(N, Text) :- f(N, P), open(P, write, S), write(S, Text), close(S).
file_text(N, Text) :- f(N, P), open(P, read, S), read_all(S, Cs), close(S), atom_codes(Text, Cs).
read_all(S, Cs) :- get_code(S, C), ( C =:= -1 -> Cs = [] ; Cs = [C|Cs1], read_all(S, Cs1) ).
sorted_files(L) :- d(D), directory_files(D, L0), msort(L0, L).
popen_text(Cmd, Text) :- popen(Cmd, read, S), read_all(S, Cs), close(S), atom_codes(Text, Cs).
exec_status(Cmd, Out, Status) :- exec(Cmd, I, O, E, Pid), close(I), read_all(O, Cs), close(O), close(E), wait(Pid, Status),
        atom_codes(Out, Cs).
pipe_echo(Text, Back) :- create_pipe(R, W), write(W, Text), nl(W), close(W), read_all(R, Cs), close(R), atom_codes(Back, Cs).

main :-
    t(shell('rm -rf /tmp/gnu_drv_os_interf', _)),
    t(file_exists('/tmp/gnu_drv_os_interf')),
    t(make_directory('/tmp/gnu_drv_os_interf')),
    t(file_exists('/tmp/gnu_drv_os_interf')),
    t(file_property('/tmp/gnu_drv_os_interf', type(_))),
    t(make_directory('/tmp/gnu_drv_os_interf')),
    t(make_directory(_)),
    t(make_directory(42)),
    t(put_file('a.txt', 'hello world')),
    t(file_exists('/tmp/gnu_drv_os_interf/a.txt')),
    t(file_exists('/tmp/gnu_drv_os_interf/nope.txt')),
    t(file_property('/tmp/gnu_drv_os_interf/a.txt', size(_))),
    t(file_property('/tmp/gnu_drv_os_interf/a.txt', type(_))),
    t(file_property('/tmp/gnu_drv_os_interf/a.txt', absolute_file_name(_))),
    t(file_property('/tmp/gnu_drv_os_interf/a.txt', real_file_name(_))),
    t(file_property('/tmp/gnu_drv_os_interf/nope.txt', size(_))),
    t(file_property('/tmp/gnu_drv_os_interf/a.txt', no_such_property(_))),
    p(file_property_last_modification_is_a_dt_term, file_property('/tmp/gnu_drv_os_interf/a.txt', last_modification(dt(_, _, _, _, _, _)))),
    t(file_permission('/tmp/gnu_drv_os_interf/a.txt', read)),
    t(file_permission('/tmp/gnu_drv_os_interf/a.txt', [read, write])),
    t(file_permission('/tmp/gnu_drv_os_interf/a.txt', execute)),
    t(file_permission('/tmp/gnu_drv_os_interf/a.txt', search)),
    t(file_permission('/tmp/gnu_drv_os_interf/a.txt', bogus)),
    t(copy_file('/tmp/gnu_drv_os_interf/a.txt', '/tmp/gnu_drv_os_interf/b.txt')),
    t(file_text('b.txt', _)),
    t(copy_file('/tmp/gnu_drv_os_interf/nope.txt', '/tmp/gnu_drv_os_interf/c.txt')),
    t(rename_file('/tmp/gnu_drv_os_interf/b.txt', '/tmp/gnu_drv_os_interf/c.txt')),
    t(file_exists('/tmp/gnu_drv_os_interf/b.txt')),
    t(file_text('c.txt', _)),
    t(rename_file('/tmp/gnu_drv_os_interf/b.txt', '/tmp/gnu_drv_os_interf/d.txt')),
    t(make_directory('/tmp/gnu_drv_os_interf/sub')),
    t(sorted_files(_)),
    t(delete_directory('/tmp/gnu_drv_os_interf')),
    t(delete_file('/tmp/gnu_drv_os_interf/c.txt')),
    t(delete_file('/tmp/gnu_drv_os_interf/c.txt')),
    t(unlink('/tmp/gnu_drv_os_interf/c.txt')),
    t(unlink('/tmp/gnu_drv_os_interf/a.txt')),
    t(delete_directory('/tmp/gnu_drv_os_interf/sub')),
    t(sorted_files(_)),
    t(directory_files('/tmp/gnu_drv_os_interf/nope', _)),
    p(working_directory_is_absolute, (working_directory(W0), sub_atom(W0, 0, 1, _, '/'))),
    p(change_directory_moves_the_working_directory,
      (working_directory(W1), change_directory('/tmp/gnu_drv_os_interf'), working_directory(W2),
       change_directory(W1), working_directory(W3), W3 == W1, sub_atom(W2, _, _, 0, gnu_drv_os_interf))),
    t(change_directory('/tmp/gnu_drv_os_interf/nope')),
    t(change_directory(_)),
    t(shell('exit 0', _)),
    t(shell('exit 3', _)),
    t(shell('true')),
    t(shell('false')),
    t(system('exit 2', _)),
    t(system('true')),
    t(spawn('/bin/sh', ['-c', 'exit 5'], _)),
    t(spawn('/bin/true', [])),
    t(spawn('/bin/false', [])),
    t(spawn(_, [])),
    t(popen_text('echo hello from popen', _)),
    t(popen_text('printf "a\\nb\\n"', _)),
    t(popen(_, read, _)),
    t(popen('true', sideways, _)),
    t(exec_status('echo out; exit 4', _, _)),
    t(exec_status('exit 0', _, _)),
    t(pipe_echo(through_the_pipe, _)),
    p(prolog_pid_is_a_positive_integer, (prolog_pid(P), integer(P), P > 0)),
    p(send_signal_0_to_self_succeeds, (prolog_pid(P1), send_signal(P1, 0))),
    t(send_signal(_, 0)),
    t(sleep(0)),
    t(sleep(0.01)),
    t(sleep(-1)),
    t(sleep(_)),
    p(temporary_name_keeps_the_prefix, (temporary_name('/tmp/gnu_drvXXXXXX', T1), atom(T1), sub_atom(T1, 0, _, _, '/tmp/gnu_drv'))),
    p(temporary_file_names_a_path_under_the_directory_with_the_prefix_cut_to_five,
      (temporary_file('/tmp', gnu_drv_tf, T2), atom(T2), sub_atom(T2, 0, _, _, '/tmp/gnu_d'), \+ sub_atom(T2, 0, _, _, '/tmp/gnu_dr'))),
    p(date_time_is_a_dt_term_this_century, (date_time(dt(Y, Mo, Dy, H, Mi, S)), integer(Y), Y > 2000, integer(Mo), integer(Dy),
       integer(H), integer(Mi), integer(S))),
    p(host_name_is_an_atom, (host_name(Hn), atom(Hn))),
    p(os_version_is_an_atom, (os_version(Ov), atom(Ov))),
    p(architecture_is_an_atom, (architecture(Ar), atom(Ar))),
    t(delete_directory('/tmp/gnu_drv_os_interf')),
    t(file_exists('/tmp/gnu_drv_os_interf')),
    true.
