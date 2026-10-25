:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

%% Make sure the package is recompiled
:- [wildmatch].
:- import wildmatch/3, convert_string/3 from wildmatch.

t1 :- (wildmatch('abc*cde', aBCdecde,_) ->
	  writeln('Error...Abort!')
      ;  writeln('Nomtch: aBCdefgh')
      ),
      (wildmatch('abc*cde', abcDEcde,ignorecase) ->
	  writeln('Mtch: aBCdefgh, ignorecase')
      ; writeln('Error...Abort!')
      ),
      convert_string(aBCdefgh,X,tolower),
      writeln(X),
      convert_string(aBCdefgh,XX,toupper),
      writeln(XX).

test :- t1.

% DRIVER (appended by the vendoring, CEO-700): XSB regmatch_tests/test.sh runs gentest.sh wildtest "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
