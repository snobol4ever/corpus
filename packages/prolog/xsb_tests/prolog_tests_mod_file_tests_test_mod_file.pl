
test :- shell('rm -f *.xwam'),fail.

test :- write('Testing explicit mod (filename): '),my_writeln(modp>>modp_file:p(_,_)),fail.
test :- Mod = (modp>>modp_file),(do_all Mod:p(X,Y), writeln(p(X,Y))), fail.

test :- write('Testing explicit mod: (with absolute path'),
	my_writeln(modq>>'AbsFN':q(_,_)),fail.
test :- expand_filename('./modq_file',AbsFN),Mod = (modq>>AbsFN),(do_all Mod:q(X,Y), writeln(q(X,Y))), fail.

test :- write('Testing explicit mod: (with relative path)'),my_writeln(modr>>'../../prolog_tests/mod_file_tests/modr_file':r(_,_)),fail.
test :- Mod = (modr>>'../../prolog_tests/mod_file_tests/modr_file'),(do_all Mod:r(X,Y), writeln(r(X,Y))), fail.

test :- write('testing exp: parmods '),my_writeln(parent(mother_us,father):out(_X,_Y)),fail.
test :- parent(mother_us>>mother_us_file,father>>father_file)>>parent_file:out(X,Y),my_writeln(par(X,Y)),fail.

test :- write('testing exp: parent '),my_writeln(parent(mother_us>>mother_us_file,father>>father_file)>>parent_file:out(_X,_Y)),fail.
test :- Mod=parent(mother_us>>mother_us_file,father>>father_file)>>parent_file, Mod:out(X,Y),my_writeln(par(X,Y)),fail.

test :- write('testing ext: parmodtst '),my_writeln(parmodtst(basics)>>'ABSFN.P':p(_A,_B,[a,b])),fail.
test :- expand_filename('./parmodtst_file.P',AbsFN),Mod = parmodtst(basics)>>AbsFN, Mod:p(A,B,[a,b]),my_writeln(p(A,B,[a,b])),fail.


:- import numbervars/1 from num_vars.
my_writeln(Term) :-
	(do_all
	 numbervars(Term),
	 writeln(Term)
	).

my_writeq(Term) :-
	(do_all
	 numbervars(Term),
	 writeq(Term)
	).


% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh test_mod_file "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
