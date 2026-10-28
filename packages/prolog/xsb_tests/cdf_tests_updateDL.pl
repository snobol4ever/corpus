:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- [altcdf].
:- [test_utils].

:- import load_intensional_rules/1,load_extensional_facts/1 from cdf_io.

:- import retractallDLRule/3 from cdf_init_cdf.
:- import allAttr/3, hasAttr/3, classHasAttr/3, minAttr/4, maxAttr/4, 
	 coversAttr/3,isa/2 from cdf_init_cdf.

loadrules:- 
	load_extensional_facts(dl_testdir),
	load_intensional_rules(dl_testdir).
%	load_dyn('type0_testdir/initialization_file.P').

testreturns:- 
	loadrules,
	testisas_1,nl,
	testisas_2.

testisas_1:- 
	% o14 o15
	test_display(isa(X,cid(exists,test))),
	% o15
	test_display(isa(X,cid('(exists,all)',test))),
	% o16
	test_display(isa(X,cid('exists(exists)',test))).

testisas_2:- 
	retractallDLRule(cid(exists,test),
	                        exists(rid(r2,test),cid(c12,test)),dl_testdir),
	% o14 o15
	test_display(isa(X,cid(exists,test))),
	% o15
	test_display(isa(X,cid('(exists,all)',test))),
	% o16
	test_display(isa(X,cid('exists(exists)',test))).


% DRIVER (appended by the vendoring, CEO-700): XSB cdf_tests/test.sh runs gentest.sh updateDL "testreturns."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((testreturns))).
end_of_file.

testisas:- 
	% c13, c12, c11, o11, o14, o15
	test_display(isa(X,cid(c13,test))),
	% c12, c11, o11, o15
	test_display(isa(X,cid(c12,test))).

