:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%% This compiles the examples below on Unix

test:- \+ windows_os,
	xsb_configuration(compiler_flags,CFLAGS),
	xsb_configuration(loader_flags,LDFLAGS),
	xsb_configuration(config_dir,CONFDIR),
	xsb_configuration(emudir,Emudir),
	xsb_configuration(compiler,Compiler),
	str_cat(CONFDIR, '/saved.o/', ObjDir),
	compile('edb.P'),
	shell([Compiler, ' -c ', ' -I', Emudir, ' -I', CONFDIR, ' ', CFLAGS, ' cregs.c ']),
	shell([Compiler, CFLAGS,' -o ', './cregs.exe ',
	       ObjDir, 'xsb.o ', ' cregs.o ', LDFLAGS]),
	xsb_configuration(install_dir,InstallDir),
	cwd(CWD),
	shell([CWD,'/cregs.exe ', InstallDir,' > temp1']),
	told,
	shell('cat temp1 >> temp'),
	shell('rm temp1').
test :- windows_os,
	xsb_configuration(install_dir,InstallDir),
	xsb_configuration(config_dir,CONFDIR),
	shell(['cl.exe /nologo /MT /W3 /GX /O2 /I "',CONFDIR,'" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D XSB_DLL /c cregs.c']),
	shell(['link.exe xsb.lib /nologo /machine:I386 /libpath:"',CONFDIR,'\\bin" /out:"cregs.exe" cregs.obj']),
	shell(['cregs.exe ',InstallDir,' > temp1']),
	told,
	shell('cat temp1 >> temp'),
	shell('rm temp1').

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh (commented out there) runs gentest.sh cregs_make "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
