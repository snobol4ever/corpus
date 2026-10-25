:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- [altcdf].
:- [test_utils].

:- import load_intensional_rules/1,load_extensional_facts/1 from cdf_io.

:- import update_all_components/2 from cdf_comps_noshare.
:- import load_component/3 from cdf_comps_share.
:- import retractallExtTerm/1 from cdf_init_cdf.
:- import allAttr/3, hasAttr/3, classHasAttr/3, minAttr/4, maxAttr/4, 
	 coversAttr/3,isa/2 from cdf_init_cdf.

loadrules:- 
	load_extensional_facts(dl_testdir),
	load_intensional_rules(dl_testdir).
%	load_dyn('type0_testdir/initialization_file.P').

testreturns:- 
	loadrules,
	testisas.

testisas:- 
	test_display(isa(X,cid(exists,test))),
	test_display(isa(X,cid('(exists,all)',test))),
	test_display(isa(X,cid('exists(exists)',test))).


end_of_file.

testisas:- 
	% c13, c12, c11, o11, o14, o15
	test_display(isa(X,cid(c13,test))),
	% c12, c11, o11, o15
	test_display(isa(X,cid(c12,test))).

% DRIVER (appended by the vendoring, CEO-700): XSB cdf_tests/test.sh runs gentest.sh dlQuery "testreturns."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((testreturns))).
