:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

% ISO
test:- X = 0b110,writeln(iso_number_base(110,b,X)),fail.
test:- X = 0o110,writeln(iso_number_base(110,o,X)),fail.
test:- X = 0x110,writeln(iso_number_base(110,x,X)),fail.
% Non-ISO
test:- X = 2'110,writeln(number_base(110,2,X)),fail.
test:- X = 3'110,writeln(number_base(110,3,X)),fail.
test:- X = 4'110,writeln(number_base(110,4,X)),fail.
test:- X = 5'110,writeln(number_base(110,5,X)),fail.
test:- X = 6'110,writeln(number_base(110,6,X)),fail.
test:- X = 7'110,writeln(number_base(110,7,X)),fail.
test:- X = 8'110,writeln(number_base(110,8,X)),fail.
test:- X = 9'110,writeln(number_base(110,9,X)),fail.
test:- X = 10'110,writeln(number_base(110,10,X)),fail.
test:- X = 11'110,writeln(number_base(110,11,X)),fail.
test:- X = 12'110,writeln(number_base(110,12,X)),fail.
test:- X = 13'110,writeln(number_base(110,13,X)),fail.
test:- X = 14'110,writeln(number_base(110,14,X)),fail.
test:- X = 15'110,writeln(number_base(110,15,X)),fail.
test:- X = 16'110,writeln(number_base(110,16,X)),fail.
test:- X = 17'110,writeln(number_base(110,17,X)),fail.
test:- X = 18'110,writeln(number_base(110,18,X)),fail.
test:- X = 19'110,writeln(number_base(110,19,X)),fail.
test:- X = 20'110,writeln(number_base(110,20,X)),fail.
test:- X = 21'110,writeln(number_base(110,21,X)),fail.
test:- X = 22'110,writeln(number_base(110,22,X)),fail.
test:- X = 23'110,writeln(number_base(110,23,X)),fail.
test:- X = 24'110,writeln(number_base(110,24,X)),fail.
test:- X = 25'110,writeln(number_base(110,25,X)),fail.
test:- X = 26'110,writeln(number_base(110,26,X)),fail.
test:- X = 27'110,writeln(number_base(110,27,X)),fail.
test:- X = 28'110,writeln(number_base(110,28,X)),fail.
test:- X = 29'110,writeln(number_base(110,29,X)),fail.
test:- X = 30'110,writeln(number_base(110,30,X)),fail.
test:- X = 31'110,writeln(number_base(110,31,X)),fail.
test:- X = 32'110,writeln(number_base(110,32,X)),fail.
test:- X = 33'110,writeln(number_base(110,33,X)),fail.
test:- X = 34'110,writeln(number_base(110,34,X)),fail.
test:- X = 35'110,writeln(number_base(110,35,X)),fail.
test:- X = 36'110,writeln(number_base(110,36,X)),fail.
test:- X = 16'1FA4, writeln(number_base('1FA4',16,X)),fail.
test:- X = -12'A0, writeln(number_base('-12''A0',12,X)),fail.
%

test.

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh test_read_integer "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
