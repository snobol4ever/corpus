:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%% This compiles the examples below on Unix and Windows
:- import compile_windows_c_to_exe/1 from foreign.
:- import copy/2, rm/1 from shell.

test:- \+ windows_os,
        xsb_configuration(compiler_flags,CFLAGS),
	xsb_configuration(loader_flags,LDFLAGS),
	xsb_configuration(config_dir,CONFDIR),
	xsb_configuration(emudir,Emudir),
	xsb_configuration(compiler,Compiler),
	str_cat(CONFDIR, '/saved.o/', ObjDir),
%	[clpr],
	shell([Compiler, ' -c ', ' -I', Emudir, ' -I', CONFDIR, ' ', CFLAGS, ' cvarconstr.c ']),
	shell([Compiler, CFLAGS,' -o ', './cvarconstr.exe ',
	       ObjDir, 'xsb.o ', ' cvarconstr.o ', LDFLAGS]),
	xsb_configuration(install_dir,InstallDir),
	cwd(CWD),
%	shell([CWD,'/cvarconstr.exe ', InstallDir]).
	shell([CWD,'/cvarconstr.exe ', InstallDir,' > temp1']),
	told,
	shell('cat temp1 >> temp'),
	shell('rm temp1').
test :- windows_os,
	xsb_configuration(install_dir,InstallDir),
	compile_windows_c_to_exe(cvarconstr),
	shell(['cvarconstr.exe ',InstallDir,' > temp1']),
	writeln(userout,completed_cvarstring),
	told,
	copy(temp1,temp),
	rm(temp1).

% DRIVER (appended by the vendoring, CEO-700): XSB foreign_tests/test.sh runs gentest.sh cvarconstr_make "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
