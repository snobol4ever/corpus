:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

%% Make sure the package is recompiled
:- [perlmatch].
:- import bulk_match/3, get_match_result/2, try_match/2,
	  next_match/0, perl_substitute/3 from perlmatch.

t1 :- try_match('First 11.22 ; next: 3.4', 'm/(\d+)\.?(\d*)/g'),
      get_match_result(1,X1),
      get_match_result(2,X2),
      writeln(X1),
      writeln(X2),
      get_match_result(prematch,Y1),
      get_match_result(postmatch,Y2),
      get_match_result(match,Y3),
      writeln([Y1,Y2,Y3]),
      (get_match_result(3,_X3); writeln(end)).

t2 :- bulk_match('First 11.22 ; next: 3.4', 'm/(\d+)\.?(\d*)/g', Lst),
      bulk_match('First 11.22 ; next: 3.4', 'm/\d+\.?\d*/g', Lst2),
      writeln([Lst,Lst2]).

t3 :- perl_substitute('this is fun', 's/(this) (is)(.*)/\2 \1\3?/', Str),
      writeln(Str).


test :- t1, next_match, get_match_result(1,X),
	get_match_result(2,XX),
	writeln([X,XX]),
	(get_match_result(3,X); writeln(end2)),
	t2,t3.

% DRIVER (appended by the vendoring, CEO-700): XSB regmatch_tests/test.sh (commented out there) runs gentest.sh perltest "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
