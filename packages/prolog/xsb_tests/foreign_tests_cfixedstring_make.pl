:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%% This compiles the examples below on Unix and Windows
:- import concat_atom/2 from string.
:- import compile_windows_c_to_exe/1 from foreign.
:- import copy/2, rm/1 from shell.


test:- \+ windows_os,
	xsb_configuration(compiler_flags,CFLAGS),
	xsb_configuration(loader_flags,LDFLAGS),
	xsb_configuration(config_dir,CONFDIR),
	xsb_configuration(emudir,Emudir),
	xsb_configuration(compiler,Compiler),
	str_cat(CONFDIR, '/saved.o/', ObjDir),
	compile('edb.P'),
	shell([Compiler, ' -c ', ' -I', Emudir, ' -I', CONFDIR, ' ', CFLAGS, ' cfixedstring.c ']),
	cwd(CWD),
	shell([Compiler, CFLAGS,' -o ', CWD,'/cfixedstring.exe ',
	       ObjDir, 'xsb.o ', ' cfixedstring.o ', LDFLAGS]),
	xsb_configuration(install_dir,InstallDir),
	shell([CWD,'/cfixedstring.exe ', InstallDir,' > temp1']),
	told,
	shell('cat temp1 >> temp'),
	shell('rm temp1').
test :- windows_os,
    compile_windows_c_to_exe(cfixedstring),
    xsb_configuration(install_dir,InstallDir),
    shell(['cfixedstring.exe ',InstallDir,' > temp1']),
    told,
    copy(temp1,temp),
    rm(temp1).

% DRIVER (appended by the vendoring, CEO-700): XSB foreign_tests/test.sh runs gentest.sh cfixedstring_make "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
